/*******************************************************************************
  MPLAB Harmony Application Source File

  Author:
    Odry01

  File Name:
    wincs02_driver.c

  Status:
    In development

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "wincs02_driver.h"
#include "system/wifi/sys_wincs_wifi_service.h"
#include "system/net/sys_wincs_net_service.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************

WINCS02_DRIVER_DATA wincs02_driverData;
SYS_WINCS_WIFI_PARAM_t WIFI_CONFIG;
SYS_WINCS_NET_SOCKET_t SOCKET_CONFIG;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void WINCS02_DRIVER_WIFI_Callback(SYS_WINCS_WIFI_EVENT_t event, SYS_WINCS_WIFI_HANDLE_t wifiHandle)
{
    switch (event)
    {
        case SYS_WINCS_WIFI_CONNECTED:
        {
            wincs02_driverData.apStarted = true;
            break;
        }

        case SYS_WINCS_WIFI_DISCONNECTED:
        {
            wincs02_driverData.apStarted = false;
            break;
        }

        case SYS_WINCS_WIFI_ERROR:
        {
            break;
        }

        default:
        {
            break;
        }
    }
}

void WINCS02_DRIVER_SOCKET_Callback(uint32_t socket, SYS_WINCS_NET_SOCK_EVENT_t event, SYS_WINCS_NET_HANDLE_t netHandle)
{
    switch (event)
    {
        case SYS_WINCS_NET_SOCK_EVENT_CLIENT_CONNECTED:
        {
            wincs02_driverData.clientSocket = socket;
            wincs02_driverData.clientConnected = true;
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_DISCONNECTED:
        {
            wincs02_driverData.clientConnected = false;
            SYS_WINCS_NET_SockSrvCtrl(SYS_WINCS_NET_SOCK_CLOSE, &socket);
            wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_CLIENT;
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_READ:
        {
            uint8_t rxData[512];
            int16_t rcvdLen;

            memset(rxData, 0, 512);

            // Read data from TCP socket
            rcvdLen = SYS_WINCS_NET_TcpSockRead(socket, 512 - 1, rxData);

            if (rcvdLen > 0)
            {
                // Update statistics
                wincs02_driverData.packetsReceived++;
                wincs02_driverData.bytesReceived += rcvdLen;

                // Null terminate for printing
                rxData[rcvdLen] = '\0';

                SYS_CONSOLE_PRINT("[AP] : Received (%d bytes): %s\r\n", rcvdLen, rxData);
                SYS_CONSOLE_PRINT("[AP] : Stats - Packets: %lu, Bytes: %lu\r\n",
                                  wincs02_driverData.packetsReceived, wincs02_driverData.bytesReceived);

                // Echo back to client
                SYS_WINCS_NET_TcpSockWrite(socket, rcvdLen, rxData);
            }
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_ERROR:
        {
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_CLOSED:
        {
            break;
        }

        default:
        {
            break;
        }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

bool WINCS02_DRIVER_Get_Task_Start_Status(void)
{
    return (wincs02_driverData.WINCS02_TASK_START);
}

void WINCS02_DRIVER_Set_Task_Start_Status(bool STATUS)
{
    wincs02_driverData.WINCS02_TASK_START = STATUS;
}

bool WINCS02_DRIVER_Get_Task_Completed_Status(void)
{
    return (wincs02_driverData.WINCS02_TASK_COMPLETED);
}

void WINCS02_DRIVER_Set_Task_Completed_Status(bool STATUS)
{
    wincs02_driverData.WINCS02_TASK_COMPLETED = STATUS;
}

void WINCS02_DRIVER_WIFI_Config(void)
{
    WIFI_CONFIG.mode = SYS_WINCS_WIFI_DEVMODE;
    WIFI_CONFIG.ssid = SYS_WINCS_WIFI_AP_SSID;
    WIFI_CONFIG.passphrase = SYS_WINCS_WIFI_AP_PWD;
    WIFI_CONFIG.security = SYS_WINCS_SOFT_AP_SECURITY;
    WIFI_CONFIG.channel = SYS_WINCS_WIFI_AP_CHANNEL;
}

void WINCS02_DRIVER_NET_Config(void)
{
    SOCKET_CONFIG.bindType = SYS_WINCS_NET_BIND_TYPE0;
    SOCKET_CONFIG.sockType = SYS_WINCS_NET_SOCK_TYPE0;
    SOCKET_CONFIG.sockPort = SYS_WINCS_NET_SOCK_PORT0;
    SOCKET_CONFIG.tlsEnable = SYS_WINCS_TLS_ENABLE0;
    SOCKET_CONFIG.ipType = SYS_WINCS_NET_SOCK_TYPE_IPv4_0;
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void WINCS02_DRIVER_Initialize(void)
{
    wincs02_driverData.state = WINCS02_DRIVER_STATE_INIT;
}

void WINCS02_DRIVER_Tasks(void)
{
    switch (wincs02_driverData.state)
    {
        case WINCS02_DRIVER_STATE_INIT:
        {
            WINCS02_DRIVER_WIFI_Config();
            WINCS02_DRIVER_NET_Config();
            wincs02_driverData.state = WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS;
            break;
        }

        case WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_GET_DRV_STATUS, &wincs02_driverData.WINCS02_STATUS) == SYS_WINCS_PASS)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_BOOT;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_BOOT:
        {
            if (wincs02_driverData.WINCS02_STATUS == SYS_STATUS_READY)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_OPEN_DRIVER;
            }
            else
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_OPEN_DRIVER:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_OPEN_DRIVER, &wincs02_driverData.WINCS02_HANDLE) == SYS_WINCS_PASS)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER;
            }
            else
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_ERROR;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_SET_CALLBACK, WINCS02_DRIVER_WIFI_Callback) == SYS_WINCS_PASS)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_SOCKET_CALLBACK_REGISTER;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_SOCKET_CALLBACK_REGISTER:
        {
            if (SYS_WINCS_NET_SockSrvCtrl(SYS_WINCS_NET_SOCK_SET_CALLBACK, WINCS02_DRIVER_SOCKET_Callback) == SYS_WINCS_PASS)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WIFI_CFG;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WIFI_CFG:
        {
            if (SYS_WINCS_PASS == SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_SET_PARAMS, &WIFI_CONFIG))
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_AP_START;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_AP_START:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_AP_ENABLE, NULL) == SYS_WINCS_PASS)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_AP_UP;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_AP_UP:
        {
            if (wincs02_driverData.apStarted)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_TCP_SERVER_START;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_TCP_SERVER_START:
        {
            if (SYS_WINCS_NET_SockSrvCtrl(SYS_WINCS_NET_SOCK_TCP_OPEN, &SOCKET_CONFIG) == SYS_WINCS_PASS)
            {
                wincs02_driverData.serverSocket = SOCKET_CONFIG.sockID;
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_CLIENT;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_CLIENT:
        {
            if (wincs02_driverData.clientConnected == true)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_IDLE;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_IDLE:
        {
            break;
        }

        case WINCS02_DRIVER_STATE_RECEIVE_DATA:
        {
            break;
        }

        case WINCS02_DRIVER_STATE_ERROR:
        {
            APP_Set_SPI_Error_Status(true);
            TIMER_DRIVER_Start_Error_TMR();
            WINCS02_DRIVER_Set_Task_Completed_Status(true);
            wincs02_driverData.state = WINCS02_DRIVER_STATE_IDLE;
            break;
        }

        default:
        {
            break;
        }
    }

}

/*******************************************************************************
 End of File
 */