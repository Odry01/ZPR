/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    battery_driver.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "BATTERY_DRIVER_Initialize" and "BATTERY_DRIVER_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "BATTERY_DRIVER_STATES" definition).  Both
    are defined here for convenience.
 *******************************************************************************/

#ifndef _BATTERY_DRIVER_H
#define _BATTERY_DRIVER_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include "configuration.h"
#include "definitions.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C"
{

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************

/** Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
 */

typedef enum
{
    BATTERY_DRIVER_STATE_INIT = 0,
    BATTERY_DRIVER_STATE_IDLE,
} BATTERY_DRIVER_STATES;

// *****************************************************************************

/** Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* The application's current state */
    BATTERY_DRIVER_STATES state;

    /* Driver variables */
    volatile bool BATTERY_TASK_START;
    volatile bool BATTERY_TASK_COMPLETED;
    volatile bool ADC_RESULT_ALERT;
    volatile bool ADC_WINDOW_ALERT;
    uint16_t ADC_VALUE;
} BATTERY_DRIVER_DATA;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

void BATTERY_DRIVER_Initialize(void);

void BATTERY_DRIVER_Tasks(void);

bool BATTERY_DRIVER_Get_Task_Start_Status(void);

void BATTERY_DRIVER_Set_Task_Start_Status(bool STATUS);

bool BATTERY_DRIVER_Get_Task_Completed_Status(void);

void BATTERY_DRIVER_Set_Task_Completed_Status(bool STATUS);

void BATTERY_DRIVER_Print_Data(SYS_CONSOLE_HANDLE CONSOLE_HANDLE);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _BATTERY_DRIVER_H */

/*******************************************************************************
 End of File
 */