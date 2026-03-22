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

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************



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
            wincs02_driverData.state = WINCS02_DRIVER_STATE_IDLE;
            break;
        }

        case WINCS02_DRIVER_STATE_IDLE:
        {
            if (WINCS02_DRIVER_Get_Task_Start_Status() == true)
            {
                wincs02_driverData.state = WINCS02_DRIVER_STATE_IDLE;
            }
            break;
        }

        case WINCS02_DRIVER_STATE_ERROR:
        {
            APP_Set_SPI_Error_Status(true);
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