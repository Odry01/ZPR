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
WINCS02_PAYLOAD_DATA wincs02_payloadData;
SYS_WINCS_WIFI_PARAM_t WIFI_CONFIG;
SYS_WINCS_NET_SOCKET_t SOCKET_CONFIG;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void WINCS02_DRIVER_WIFI_Callback(SYS_WINCS_WIFI_EVENT_t EVENT, SYS_WINCS_WIFI_HANDLE_t WIFI_HANDLE)
{
    switch (EVENT)
    {
        case SYS_WINCS_WIFI_CONNECTED:
        {
            wincs02_driverData.WIFI_CONNECT_STATUS = true;
            break;
        }

        case SYS_WINCS_WIFI_DISCONNECTED:
        {
            wincs02_driverData.WIFI_CONNECT_STATUS = false;
            wincs02_driverData.IPV4_ADDRESS_ASSIGN_STATUS = false;
            wincs02_driverData.TCP_CONNECT_STATUS = false;
            break;
        }

        case SYS_WINCS_WIFI_DHCP_IPV4_COMPLETE:
        {
            wincs02_driverData.IPV4_ADDRESS_ASSIGN_STATUS = true;
            break;
        }

        case SYS_WINCS_WIFI_CONNECT_FAILED:
        {
            wincs02_driverData.WIFI_CONNECT_STATUS = false;
            break;
        }

        case SYS_WINCS_WIFI_ERROR:
        {
            wincs02_driverData.WIFI_CONNECT_STATUS = false;
            wincs02_driverData.IPV4_ADDRESS_ASSIGN_STATUS = false;
            wincs02_driverData.TCP_CONNECT_STATUS = false;
            break;
        }

        default:
        {
            break;
        }
    }
    SYS_CONSOLE_PRINT("%d\r\n",EVENT);
}

void WINCS02_DRIVER_SOCKET_Callback(uint32_t SOCKET, SYS_WINCS_NET_SOCK_EVENT_t EVENT, SYS_WINCS_NET_HANDLE_t NET_HANDLE)
{
    switch (EVENT)
    {
        case SYS_WINCS_NET_SOCK_EVENT_CONNECTED:
        {
            wincs02_driverData.TCP_CONNECT_STATUS = true;
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_DISCONNECTED:
        {
            wincs02_driverData.TCP_CONNECT_STATUS = false;
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_SEND_COMPLETE:
        {
            wincs02_driverData.DATA_TRANSFER_COMPLETE_STATUS = true;
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_ERROR:
        {
            wincs02_driverData.TCP_CONNECT_STATUS = false;
            break;
        }

        case SYS_WINCS_NET_SOCK_EVENT_CLOSED:
        {
            wincs02_driverData.TCP_CONNECT_STATUS = false;
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
    //    WIFI_CONFIG.mode = SYS_WINCS_WIFI_DEVMODE;
    //    WIFI_CONFIG.ssid = SYS_WINCS_WIFI_STA_SSID;
    //    WIFI_CONFIG.passphrase = SYS_WINCS_WIFI_STA_PWD;
    //    WIFI_CONFIG.security = SYS_WINCS_WIFI_STA_SECURITY;
    //    WIFI_CONFIG.autoConnect = SYS_WINCS_WIFI_STA_AUTOCONNECT;
    WIFI_CONFIG.mode = SYS_WINCS_WIFI_MODE_STA;
    WIFI_CONFIG.ssid = "Mat_net";
    WIFI_CONFIG.passphrase = "OK0130@july0720";
    WIFI_CONFIG.security = SYS_WINCS_WIFI_SECURITY_WPA2;
    WIFI_CONFIG.autoConnect = true;
    WIFI_CONFIG.channel = 0;
}

void WINCS02_DRIVER_NET_Config(void)
{
    SOCKET_CONFIG.bindType = SYS_WINCS_NET_BIND_TYPE0;
    SOCKET_CONFIG.sockType = SYS_WINCS_NET_SOCK_TYPE0;
    SOCKET_CONFIG.sockPort = SYS_WINCS_NET_SOCK_PORT0;
    SOCKET_CONFIG.sockAddr = SYS_WINCS_NET_SOCK_SERVER_ADDR0;
    SOCKET_CONFIG.tlsEnable = SYS_WINCS_TLS_ENABLE0;
    SOCKET_CONFIG.ipType = SYS_WINCS_NET_SOCK_TYPE_IPv4_0;
}

void WINCS02_DRIVER_Set_App_Data(uint32_t MCU_SN_0, uint32_t MCU_SN_1, uint32_t MCU_SN_2, uint32_t MCU_SN_3, float FW_VERSION)
{
    wincs02_payloadData.MCU_SN_0 = MCU_SN_0;
    wincs02_payloadData.MCU_SN_1 = MCU_SN_1;
    wincs02_payloadData.MCU_SN_2 = MCU_SN_2;
    wincs02_payloadData.MCU_SN_3 = MCU_SN_3;
    wincs02_payloadData.FW_VERSION = FW_VERSION;
}

void WINCS02_DRIVER_Set_Battery_Data(uint8_t CHARGER_STATUS, float BATTERY_VOLTAGE)
{
    wincs02_payloadData.CHARGER_STATUS = CHARGER_STATUS;
    wincs02_payloadData.BATTERY_VOLTAGE = BATTERY_VOLTAGE;
}

void WINCS02_DRIVER_Set_BMP585_Data(float CELSIUS_TEMPERATURE, float PA_PRESSURE)
{
    wincs02_payloadData.CELSIUS_TEMPERATURE = CELSIUS_TEMPERATURE;
    wincs02_payloadData.PA_PRESSURE = PA_PRESSURE;
}

void WINCS02_DRIVER_Set_Message_Payload(void)
{
    sprintf
            (
             wincs02_driverData.PAYLOAD_BUFFER,
             "{\"MCU SN\":[%u,%u,%u,%u],\"FIRMWARE VERSION\":%.2f,\"CHARGER STATUS\":%u,\"BATTERY VOLTAGE\":%.2f,\"TEMPERATURE\":%.2f,\"PRESSURE\":%.2f}",
             wincs02_payloadData.MCU_SN_0, wincs02_payloadData.MCU_SN_1, wincs02_payloadData.MCU_SN_2, wincs02_payloadData.MCU_SN_3, wincs02_payloadData.FW_VERSION, wincs02_payloadData.CHARGER_STATUS, wincs02_payloadData.BATTERY_VOLTAGE, wincs02_payloadData.CELSIUS_TEMPERATURE, wincs02_payloadData.PA_PRESSURE
             );
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void WINCS02_DRIVER_Initialize(void)
{
    wincs02_driverData.state = WINCS02_DRIVER_STATE_INIT;
    wincs02_driverData.WINCS02_HANDLE = DRV_HANDLE_INVALID;
}

void WINCS02_DRIVER_Tasks(void)
{
    switch (wincs02_driverData.state)
    {
        case WINCS02_DRIVER_STATE_INIT:
        {
            WINCS02_DRIVER_WIFI_Config();
            WINCS02_DRIVER_NET_Config();
            SYS_CONSOLE_MESSAGE("APP_STATE_INIT\r\n");
            wincs02_driverData.state = WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS;
            break;
        }

        case WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_GET_DRV_STATUS, &wincs02_driverData.WINCS02_STATUS) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_BOOT;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_BOOT:
        {
            if (wincs02_driverData.WINCS02_STATUS == SYS_STATUS_READY)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WAIT_FOR_BOOT\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_OPEN_DRIVER;
            }
            else
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WAIT_FOR_BOOT\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_OPEN_DRIVER:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_OPEN_DRIVER, &wincs02_driverData.WINCS02_HANDLE) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_OPEN_DRIVER\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER;
            }
            else
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_OPEN_DRIVER\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_ERROR;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_SET_CALLBACK, WINCS02_DRIVER_WIFI_Callback) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_SOCKET_CALLBACK_REGISTER;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_SOCKET_CALLBACK_REGISTER:
        {
            if (SYS_WINCS_NET_SockSrvCtrl(SYS_WINCS_NET_SOCK_SET_CALLBACK, WINCS02_DRIVER_SOCKET_Callback) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_SOCKET_CALLBACK_REGISTER\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WIFI_CFG;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WIFI_CFG:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_SET_PARAMS, &WIFI_CONFIG) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WIFI_CFG\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_IPV4;
            }
//            else
//            {
//                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WIFI_CFG\r\n");
//                wincs02_driverData.state = WINCS02_DRIVER_STATE_ERROR;
//            }
            break;
        }
        
        case WINCS02_DRIVER_STATE_WIFI_CONNECT:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_STA_CONNECT, 0) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WIFI_CONNECT\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_IPV4;
            }
            else
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WIFI_CONNECT\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_ERROR;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_IPV4:
        {
            if (wincs02_driverData.IPV4_ADDRESS_ASSIGN_STATUS == true)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WAIT_FOR_IPV4\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_TCP_CLIENT_CONNECT;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_TCP_CLIENT_CONNECT:
        {
            if (SYS_WINCS_NET_SockSrvCtrl(SYS_WINCS_NET_SOCK_TCP_OPEN, &SOCKET_CONFIG) == SYS_WINCS_PASS)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_TCP_CLIENT_CONNECT\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_TCP_CONNECT;
            }
            else
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_ERROR;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_TCP_CONNECT:
        {
            if (wincs02_driverData.TCP_CONNECT_STATUS == true)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_WAIT_FOR_TCP_CONNECT\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_IDLE;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_IDLE:
        {
            if (WINCS02_DRIVER_Get_Task_Start_Status() == true)
            {
                SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_IDLE\r\n");
                wincs02_driverData.state = WINCS02_DRIVER_STATE_EXIT_POWER_SAVE_MODE;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_EXIT_POWER_SAVE_MODE:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_ENABLE_POWERSAVE_MODE, false) == SYS_WINCS_PASS)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_SET_MESSAGE_PAYLOAD;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_SET_MESSAGE_PAYLOAD:
        {
            WINCS02_DRIVER_Set_Message_Payload();
            wincs02_driverData.state = WINCS02_DRIVER_STATE_SEND_MESSAGE_PAYLOAD;
            break;
        }

        case WINCS02_DRIVER_STATE_SEND_MESSAGE_PAYLOAD:
        {
            SYS_WINCS_NET_TcpSockWrite(wincs02_driverData.clientSocket, strlen(wincs02_driverData.PAYLOAD_BUFFER), (uint8_t*) wincs02_driverData.PAYLOAD_BUFFER);
            wincs02_driverData.state = WINCS02_DRIVER_STATE_WAIT_FOR_SEND_MESSAGE_PAYLOAD;
            break;
        }

        case WINCS02_DRIVER_STATE_WAIT_FOR_SEND_MESSAGE_PAYLOAD:
        {
            if (wincs02_driverData.DATA_TRANSFER_COMPLETE_STATUS == true)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_ENTER_POWER_SAVE_MODE;
            }
        }

        case WINCS02_DRIVER_STATE_ENTER_POWER_SAVE_MODE:
        {
            if (SYS_WINCS_WIFI_SrvCtrl(SYS_WINCS_WIFI_ENABLE_POWERSAVE_MODE, true) == SYS_WINCS_PASS)
            {
                WINCS02_DRIVER_Set_Task_Completed_Status(true);
                wincs02_driverData.state = WINCS02_DRIVER_STATE_IDLE;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_ERROR:
        {
            APP_Set_SPI_Error_Status(true);
            TIMER_DRIVER_Start_Error_TMR();
            WINCS02_DRIVER_Set_Task_Completed_Status(true);
            SYS_CONSOLE_MESSAGE("WINCS02_DRIVER_STATE_ERROR\r\n");
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