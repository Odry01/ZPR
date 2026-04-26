/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    wincs02_driver.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "WINCS02_DRIVER_Initialize" and "WINCS02_DRIVER_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "WINCS02_DRIVER_STATES" definition).  Both
    are defined here for convenience.
 *******************************************************************************/

#ifndef _WINCS02_DRIVER_H
#define _WINCS02_DRIVER_H

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

// Terminal color codes for better console output
#define TERM_GREEN      "\x1B[32m"
#define TERM_RED        "\x1B[31m"
#define TERM_YELLOW     "\x1B[33m"
#define TERM_CYAN       "\x1B[36m"
#define TERM_WHITE      "\x1B[47m"
#define TERM_RESET      "\x1B[0m"
#define TERM_BG_RED     "\x1B[41m" 
#define TERM_BOLD       "\x1B[1m" 
#define TERM_UL         "\x1B[4m"

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
     WINCS02_DRIVER_STATE_INIT = 0,
    WINCS02_DRIVER_STATE_CHECK_DRIVER_STATUS,
    WINCS02_DRIVER_STATE_WAIT_FOR_BOOT,
    WINCS02_DRIVER_STATE_OPEN_DRIVER,
    WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER,
    WINCS02_DRIVER_STATE_MQTT_CALLBACK_REGISTER,
    WINCS02_DRIVER_STATE_SET_REG_DOMAIN,
    WINCS02_DRIVER_STATE_SET_SNTP_SERVER,
    WINCS02_DRIVER_STATE_WIFI_CFG,
    WINCS02_DRIVER_STATE_WAIT_FOR_IPV4,
    WINCS02_DRIVER_STATE_WAIT_FOR_IPV6_LOCAL,
    WINCS02_DRIVER_STATE_WAIT_FOR_IPV6_GLOBAL,
    WINCS02_DRIVER_STATE_GET_TIME,
    WINCS02_DRIVER_STATE_WAIT_FOR_TIME,
    WINCS02_DRIVER_STATE_MQTT_CFG,
    WINCS02_DRIVER_STATE_MQTT_CONNECT,
    WINCS02_DRIVER_STATE_WAIT_FOR_MQTT_CONNECT,
    WINCS02_DRIVER_STATE_IDLE,
    WINCS02_DRIVER_STATE_EXIT_POWER_SAVE_MODE,
    WINCS02_DRIVER_STATE_SET_MQTT_PUBLISH_PAYLOAD,
    WINCS02_DRIVER_STATE_MQTT_PUBLISH,
    WINCS02_DRIVER_STATE_WAIT_FOR_PUBLISH,
    WINCS02_DRIVER_STATE_ENTER_POWER_SAVE_MODE,
    WINCS02_DRIVER_STATE_ERROR,
} WINCS02_DRIVER_STATES;

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
    WINCS02_DRIVER_STATES state;

    /* Driver variables */
    DRV_HANDLE WINCS02_HANDLE;
    SYS_STATUS WINCS02_STATUS;
    volatile bool WINCS02_TASK_START;
    volatile bool WINCS02_TASK_COMPLETED;
    volatile bool WIFI_CONNECT_STATUS;
    volatile bool IPV4_ADDRESS_ASSIGN_STATUS;
    volatile bool IPV6_LOCAL_ADDRESS_ASSIGN_STATUS;
    volatile bool IPV6_GLOBAL_ADDRESS_ASSIGN_STATUS;
    volatile bool SNTP_UP_STATUS;
    volatile bool MQTT_CONNECT_STATUS;
    volatile bool MQTT_SUBSCRIBE_COMPLETE;
    volatile bool MQTT_PUBLISH_COMPLETE;
    volatile bool REG_DOMAIN_SET;

    char MQTT_TOPIC[64];
    char MQTT_PAYLOAD[128];
} WINCS02_DRIVER_DATA;

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

void WINCS02_DRIVER_Initialize(void);

void WINCS02_DRIVER_Tasks(void);

bool WINCS02_DRIVER_Get_Task_Start_Status(void);

void WINCS02_DRIVER_Set_Task_Start_Status(bool STATUS);

bool WINCS02_DRIVER_Get_Task_Completed_Status(void);

void WINCS02_DRIVER_Set_Task_Completed_Status(bool STATUS);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _WINCS02_DRIVER_H */

/*******************************************************************************
 End of File
 */