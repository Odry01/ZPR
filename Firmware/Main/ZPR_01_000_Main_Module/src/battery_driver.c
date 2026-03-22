/*******************************************************************************
  MPLAB Harmony Application Source File

  Author:
    Odry01

  File Name:
    battery_driver.c

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

#include "battery_driver.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************

BATTERY_DRIVER_DATA battery_driverData;

BATTERY_GAUGE_DATA battery_gaugeData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void BATTERY_DRIVER_ADC_Callback(ADC_STATUS STATUS, uintptr_t CONTEXT)
{
    if ((STATUS & ADC_STATUS_RESRDY) == true)
    {
        battery_driverData.ADC_RESULT_READY = true;
    }
}

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

void BATTERY_DRIVER_Calculation_Voltage(uint16_t ADC_VALUE)
{
    battery_gaugeData.B_VOLTAGE = ((ADC_VALUE / ADC_RESOLUTION) * ADC_VREF) * DIVIDER_RATIO;
}

void BATTERY_DRIVER_Print_Data(SYS_CONSOLE_HANDLE CONSOLE_HANDLE)
{
    SYS_CONSOLE_Print
            (
             CONSOLE_HANDLE,
             "Battery voltage: %.2f V\r\n",
             battery_gaugeData.B_VOLTAGE
             );
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void BATTERY_DRIVER_Initialize(void)
{
    battery_driverData.state = BATTERY_DRIVER_STATE_INIT;
    ADC_CallbackRegister(BATTERY_DRIVER_ADC_Callback, 0);
}

void BATTERY_DRIVER_Tasks(void)
{
    switch (battery_driverData.state)
    {
        case BATTERY_DRIVER_STATE_INIT:
        {
            ADC_Enable();
            battery_driverData.state = BATTERY_DRIVER_STATE_IDLE;
            break;
        }

        case BATTERY_DRIVER_STATE_IDLE:
        {
            if (BATTERY_DRIVER_Get_Task_Start_Status() == true)
            {
                battery_driverData.state = BATTERY_DRIVER_STATE_START_MEASUREMENT;
            }
            break;
        }

        case BATTERY_DRIVER_STATE_START_MEASUREMENT:
        {
            ADC_ConversionStart();
            battery_driverData.state = BATTERY_DRIVER_STATE_WAIT_FOR_MEASUREMENT;
            break;
        }

        case BATTERY_DRIVER_STATE_WAIT_FOR_MEASUREMENT:
        {
            if (battery_driverData.ADC_RESULT_READY == true)
            {
                battery_driverData.state = BATTERY_DRIVER_STATE_GET_RESULT;
            }
            break;
        }

        case BATTERY_DRIVER_STATE_GET_RESULT:
        {
            battery_gaugeData.ADC_VALUE = ADC_ConversionResultGet();
            battery_driverData.state = BATTERY_DRIVER_STATE_CALCULATION_VOLTAGE;
            break;
        }

        case BATTERY_DRIVER_STATE_CALCULATION_VOLTAGE:
        {
            BATTERY_DRIVER_Calculation_Voltage(battery_gaugeData.ADC_VALUE);
            battery_driverData.state = BATTERY_DRIVER_STATE_STORE_DATA;
            break;
        }

        case BATTERY_DRIVER_STATE_STORE_DATA:
        {
            //            WINCS02_DRIVER_Set_Battery_Data(battery_gaugeData.B_VOLTAGE);
            battery_driverData.state = BATTERY_DRIVER_STATE_IDLE;
            BATTERY_DRIVER_Set_Task_Completed_Status(true);
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