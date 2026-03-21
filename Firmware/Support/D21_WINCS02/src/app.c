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



// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void APP_Initialize(void)
{
    appData.state = APP_STATE_INIT;
}

void APP_Tasks(void)
{
    switch (appData.state)
    {
        case APP_STATE_INIT:
        {
            appData.state = APP_STATE_START_MAIN_TMR;
            break;
        }

        case APP_STATE_START_MAIN_TMR:
        {
            TIMER_DRIVER_Start_Main_TMR();
            appData.state = APP_STATE_IDLE;
            break;
        }

        case APP_STATE_IDLE:
        {
            if (TIMER_DRIVER_Get_Main_TMR_Status() == true)
            {
                TIMER_DRIVER_Set_Main_TMR_Status(false);
                RTC_DRIVER_Get_System_Time();
                RTC_DRIVER_Print_Data();
                appData.state = APP_STATE_WINCS02_DRIVER_OPERATION;
            }
            break;
        }

        case APP_STATE_WINCS02_DRIVER_OPERATION:
        {
            WINCS02_DRIVER_Set_Task_Start_Status(true);
            appData.state = APP_STATE_WAIT_FOR_FINISH_WINCS02_DRIVER_OPERATION;
            break;
        }

        case APP_STATE_WAIT_FOR_FINISH_WINCS02_DRIVER_OPERATION:
        {
            if (WINCS02_DRIVER_Get_Task_Completed_Status() == true)
            {
                WINCS02_DRIVER_Set_Task_Start_Status(false);
                WINCS02_DRIVER_Set_Task_Completed_Status(false);
                appData.state = APP_STATE_IDLE;
            }
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