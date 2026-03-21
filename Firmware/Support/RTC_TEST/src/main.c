/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

void RTC_Alarm_Callback(RTC_TIMER32_INT_MASK INT, uintptr_t CONTEXT)
{
    if ((INT & RTC_TIMER32_INT_MASK_PER7) == RTC_TIMER32_INT_MASK_PER7)
    {
        LED_Toggle();
    }
}

int main(void)
{
    SYS_Initialize(NULL);

    RTC_Timer32CallbackRegister(RTC_Alarm_Callback, 0);

    RTC_Timer32Start();

    while (true)
    {
        SYS_Tasks();
    }
    return ( EXIT_FAILURE);
}

/*******************************************************************************
 End of File
 */