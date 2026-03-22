/*******************************************************************************
  MPLAB Harmony Application Source File

  Author:
    Odry01

  File Name:
    app.c

  Status:
    Finished
 
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

#include "app.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************

APP_DATA appData;

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

bool APP_Get_I2C_Error_Status(void)
{
    return (appData.I2C_ERROR);
}

void APP_Set_I2C_Error_Status(bool STATUS)
{
    appData.I2C_ERROR = STATUS;
}

bool APP_Get_SPI_Error_Status(void)
{
    return (appData.SPI_ERROR);
}

void APP_Set_SPI_Error_Status(bool STATUS)
{
    appData.SPI_ERROR = STATUS;
}

void APP_Get_MCU_Serial_Number(void)
{
    uint32_t *MCU_SN_ADDRESS_0 = (uint32_t *) 0x0080A00C;
    appData.MCU_SN_0 = *MCU_SN_ADDRESS_0;
    uint32_t *MCU_SN_ADDRESS_1 = (uint32_t *) 0x0080A040;
    appData.MCU_SN_1 = *MCU_SN_ADDRESS_1;
    uint32_t *MCU_SN_ADDRESS_2 = (uint32_t *) 0x0080A044;
    appData.MCU_SN_2 = *MCU_SN_ADDRESS_2;
    uint32_t *MCU_SN_ADDRESS_3 = (uint32_t *) 0x0080A048;
    appData.MCU_SN_3 = *MCU_SN_ADDRESS_3;
}

void APP_Print_Data(SYS_CONSOLE_HANDLE CONSOLE_HANDLE)
{
    SYS_CONSOLE_Print
            (
             CONSOLE_HANDLE,
             "MCU serial number: %8lX%8lX%8lX%8lX\r\n"
             "FW version: %.2f\r\n",
             appData.MCU_SN_0, appData.MCU_SN_1, appData.MCU_SN_2, appData.MCU_SN_3,
             appData.FW_VERSION
             );
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void APP_Initialize(void)
{
    appData.state = APP_STATE_INIT;
    appData.FW_VERSION = FIRMWARE_VERSION;
}

void APP_Tasks(void)
{
    switch (appData.state)
    {
        case APP_STATE_INIT:
        {
            APP_Get_MCU_Serial_Number();
            appData.state = APP_STATE_IDLE;
            break;
        }

        case APP_STATE_IDLE:
        {
            if (RTC_DRIVER_Get_Alarm_Status() == true)
            {
                RTC_DRIVER_Set_Alarm_Status(false);
                appData.state = APP_STATE_ENABLE_WDT;
            }
            break;
        }

        case APP_STATE_ENABLE_WDT:
        {
            WDT_Enable();
            appData.state = APP_STATE_RSTC_DRIVER_OPERATION;
            break;
        }

        case APP_STATE_RSTC_DRIVER_OPERATION:
        {
            RSTC_DRIVER_Set_Task_Start_Status(true);
            appData.state = APP_STATE_WAIT_FOR_FINISH_RSTC_DRIVER_OPERATION;
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_RSTC_DRIVER_OPERATION:
        {
            if (RSTC_DRIVER_Get_Task_Completed_Status() == true)
            {
                RSTC_DRIVER_Set_Task_Start_Status(false);
                RSTC_DRIVER_Set_Task_Completed_Status(false);
                WDT_Clear();
                appData.state = APP_STATE_RTC_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_RTC_DRIVER_OPERATION:
        {
            RTC_DRIVER_Set_Task_Start_Status(true);
            appData.state = APP_STATE_WAIT_FOR_FINISH_RTC_DRIVER_OPERATION;
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_RTC_DRIVER_OPERATION:
        {
            if (RTC_DRIVER_Get_Task_Completed_Status() == true)
            {
                RTC_DRIVER_Set_Task_Start_Status(false);
                RTC_DRIVER_Set_Task_Completed_Status(false);
                WDT_Clear();
                appData.state = APP_STATE_BATTERY_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_BATTERY_DRIVER_OPERATION:
        {
            BATTERY_DRIVER_Set_Task_Start_Status(true);
            appData.state = APP_STATE_WAIT_FOR_FINISH_BATTERY_DRIVER_OPERATION;
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_BATTERY_DRIVER_OPERATION:
        {
            if (BATTERY_DRIVER_Get_Task_Completed_Status() == true)
            {
                BATTERY_DRIVER_Set_Task_Start_Status(false);
                BATTERY_DRIVER_Set_Task_Completed_Status(false);
                WDT_Clear();
                appData.state = APP_STATE_BMP585_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_BMP585_DRIVER_OPERATION:
        {
            if (APP_Get_I2C_Error_Status() == false)
            {
                BMP585_DRIVER_Set_Task_Start_Status(true);
                WDT_Clear();
                appData.state = APP_STATE_WAIT_FOR_FINISH_BMP585_DRIVER_OPERATION;
            }
            else
            {
                WDT_Clear();
                appData.state = APP_STATE_WINCS02_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_BMP585_DRIVER_OPERATION:
        {
            if (BMP585_DRIVER_Get_Task_Completed_Status() == true)
            {
                BMP585_DRIVER_Set_Task_Start_Status(false);
                BMP585_DRIVER_Set_Task_Completed_Status(false);
                WDT_Clear();
                appData.state = APP_STATE_WINCS02_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_WINCS02_DRIVER_OPERATION:
        {
            if (APP_Get_SPI_Error_Status() == false)
            {
                WINCS02_DRIVER_Set_Task_Start_Status(true);
                WDT_Clear();
                appData.state = APP_STATE_WAIT_FOR_FINISH_WINCS02_DRIVER_OPERATION;
            }
            else
            {
                WDT_Clear();
                appData.state = APP_STATE_CONSOLE_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_WINCS02_DRIVER_OPERATION:
        {
            if (WINCS02_DRIVER_Get_Task_Completed_Status() == true)
            {
                WINCS02_DRIVER_Set_Task_Start_Status(false);
                WINCS02_DRIVER_Set_Task_Completed_Status(false);
                WDT_Clear();
                appData.state = APP_STATE_CONSOLE_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_CONSOLE_DRIVER_OPERATION:
        {
            CONSOLE_DRIVER_Set_Task_Start_Status(true);
            WDT_Clear();
            appData.state = APP_STATE_WAIT_FOR_FINISH_CONSOLE_DRIVER_OPERATION;
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_CONSOLE_DRIVER_OPERATION:
        {
            if (CONSOLE_DRIVER_Get_Task_Completed_Status() == true)
            {
                CONSOLE_DRIVER_Set_Task_Start_Status(false);
                CONSOLE_DRIVER_Set_Task_Completed_Status(false);
                WDT_Clear();
                appData.state = APP_STATE_DISABLE_WDT;
            }
            break;
        }

        case APP_STATE_DISABLE_WDT:
        {
            WDT_Disable();
            appData.state = APP_STATE_ENTER_TO_STANDBY_MODE;
            break;
        }

        case APP_STATE_ENTER_TO_STANDBY_MODE:
        {
            PM_StandbyModeEnter();
            appData.state = APP_STATE_IDLE;
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