/*******************************************************************************
  MPLAB Harmony Application Source File

  Author:
    Odry01

  File Name:
    rtc_driver.c

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

#include "rtc_driver.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************

RTC_DRIVER_DATA rtc_driverData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void RTC_DRIVER_Compare_Callback(RTC_TIMER32_INT_MASK INT, uintptr_t CONTEXT)
{
    if ((INT & RTC_TIMER32_INT_MASK_CMP0) == RTC_TIMER32_INT_MASK_CMP0)
    {
        RTC_DRIVER_Set_Compare_Status(true);
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

bool RTC_DRIVER_Get_Task_Start_Status(void)
{
    return (rtc_driverData.RTC_TASK_START);
}

void RTC_DRIVER_Set_Task_Start_Status(bool STATUS)
{
    rtc_driverData.RTC_TASK_START = STATUS;
}

bool RTC_DRIVER_Get_Task_Completed_Status(void)
{
    return (rtc_driverData.RTC_TASK_COMPLETED);
}

void RTC_DRIVER_Set_Task_Completed_Status(bool STATUS)
{
    rtc_driverData.RTC_TASK_COMPLETED = STATUS;
}

bool RTC_DRIVER_Get_Compare_Status(void)
{
    return (rtc_driverData.RTC_COMPARE_STATUS);
}

void RTC_DRIVER_Set_Compare_Status(bool STATUS)
{
    rtc_driverData.RTC_COMPARE_STATUS = STATUS;
}

void RTC_DRIVER_Get_Time(void)
{
    rtc_driverData.TIME = RTC_Timer32CounterGet();
}

void RTC_DRIVER_Set_Time(uint32_t STEP)
{
    RTC_Timer32CompareSet(rtc_driverData.TIME + STEP);
}

void RTC_DRIVER_Print_Data(SYS_CONSOLE_HANDLE CONSOLE_HANDLE)
{
    SYS_CONSOLE_Print
            (
             CONSOLE_HANDLE,
             "Time: %ld\r\n",
             rtc_driverData.TIME
             );
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void RTC_DRIVER_Initialize(void)
{
    rtc_driverData.state = RTC_DRIVER_STATE_INIT;
    RTC_Timer32CallbackRegister(RTC_DRIVER_Compare_Callback, 0);
    RTC_Timer32Start();
}

void RTC_DRIVER_Tasks(void)
{
    switch (rtc_driverData.state)
    {
        case RTC_DRIVER_STATE_INIT:
        {
            rtc_driverData.state = RTC_DRIVER_STATE_IDLE;
            break;
        }

        case RTC_DRIVER_STATE_IDLE:
        {
            if (RTC_DRIVER_Get_Task_Start_Status() == true)
            {
                rtc_driverData.state = RTC_DRIVER_STATE_GET_TIME;
            }
            break;
        }

        case RTC_DRIVER_STATE_GET_TIME:
        {
            RTC_DRIVER_Get_Time();
            rtc_driverData.state = RTC_DRIVER_STATE_SET_NEW_COMPARE_TIME;
            break;
        }

        case RTC_DRIVER_STATE_SET_NEW_COMPARE_TIME:
        {
            RTC_DRIVER_Set_Time(0x1E);
            RTC_DRIVER_Set_Task_Completed_Status(true);
            rtc_driverData.state = RTC_DRIVER_STATE_IDLE;
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