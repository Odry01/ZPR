/*******************************************************************************
  MPLAB Harmony Application Header File

  Author:
    Odry01

  File Name:
    app.h

  Status:
    Finished
 
  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_Initialize" and "APP_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_STATES" definition).  Both
    are defined here for convenience.
 *******************************************************************************/

#ifndef _APP_H
#define _APP_H

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
    APP_STATE_INIT = 0,
    APP_STATE_START_MAIN_TMR,
    APP_STATE_IDLE,
    APP_STATE_RTC_DRIVER_OPERATION,
    APP_STATE_WAIT_FOR_FINISH_RTC_DRIVER_OPERATION,
    APP_STATE_WINCS02_DRIVER_OPERATION,
    APP_STATE_WAIT_FOR_FINISH_WINCS02_DRIVER_OPERATION,
} APP_STATES;

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
    APP_STATES state;

    /* Application variables */
} APP_DATA;

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

/**
    Function:
    void APP_Initialize(void)

    Summary:
    Performs one‑time initialization of all application modules and hardware
    peripherals.

    Parameters:
    None.

    Returns:
    None.

    Remarks:
    None.
 */
void APP_Initialize(void);

/**
    Function:
    void APP_Tasks(void)

    Summary:
    Executes the main application task loop; should be called repeatedly.

    Parameters:
    None.

    Returns:
    None.

    Remarks:
    None.
 */
void APP_Tasks(void);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _APP_H */

/*******************************************************************************
 End of File
 */