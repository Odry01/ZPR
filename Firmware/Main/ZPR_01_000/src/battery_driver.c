/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    battery_driver.c

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

#include "battery_driver.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************

BATTERY_DRIVER_DATA battery_driverData;

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

bool BATTERY_DRIVER_Get_Task_Start_Status(void)
{
    return (battery_driverData.BATTERY_TASK_START);
}

void BATTERY_DRIVER_Set_Task_Start_Status(bool STATUS)
{
    battery_driverData.BATTERY_TASK_START = STATUS;
}

bool BATTERY_DRIVER_Get_Task_Completed_Status(void)
{
    return (battery_driverData.BATTERY_TASK_COMPLETED);
}

void BATTERY_DRIVER_Set_Task_Completed_Status(bool STATUS)
{
    battery_driverData.BATTERY_TASK_COMPLETED = STATUS;
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void BATTERY_DRIVER_Initialize(void)
{
    battery_driverData.state = BATTERY_DRIVER_STATE_INIT;
}

void BATTERY_DRIVER_Tasks(void)
{
    switch (battery_driverData.state)
    {
        case BATTERY_DRIVER_STATE_INIT:
        {
            battery_driverData.state = BATTERY_DRIVER_STATE_IDLE;
            break;
        }

        case BATTERY_DRIVER_STATE_IDLE:
        {
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