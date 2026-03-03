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
#include <time.h>
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
    // State to print startup message
    WINCS02_DRIVER_STATE_PRINT = -1,

    // Initial state of the application
    WINCS02_DRIVER_STATE_INIT = 0,

    WINCS02_DRIVER_STATE_GET_DRIVER_STATUS,

    // State to open the Wi-Fi driver
    WINCS02_DRIVER_STATE_OPEN_DRIVER,

    // State to register callbacks
    WINCS02_DRIVER_STATE_CALLBACK_REGISTER,
            
    // State to set the regulatory domain for Wi-Fi
    WINCS02_DRIVER_STATE_SET_REG_DOMAIN,

    // State to configure Wi-Fi parameters
    WINCS02_DRIVER_STATE_WIFI_CFG,

    // State to initiate Wi-Fi connection
    WINCS02_DRIVER_STATE_WIFI_CONNECT,

    // State to wait for IP address assignment
    WINCS02_DRIVER_STATE_WAIT_FOR_IPV4,
            
    WINCS02_DRIVER_STATE_WAIT_FOR_IPV6_LOCAL,

    WINCS02_DRIVER_STATE_WAIT_FOR_IPV6_GLOBAL,

    // State to wait for SNTP time sync
    WINCS02_DRIVER_STATE_SET_SNTP,

    // State to wait for SNTP time sync
    WINCS02_DRIVER_STATE_WAIT_FOR_SNTP,
            
    WINCS02_DRIVER_STATE_GET_SNTP_TIME,
            
    WINCS02_DRIVER_STATE_MQTT_CFG,

    // State to configure and connect to MQTT
    WINCS02_DRIVER_STATE_MQTT_CONNECT,

    // State to wait for MQTT connection
    WINCS02_DRIVER_STATE_WAIT_FOR_MQTT_CONNECT,

    // Idle state - waiting for tasks
    WINCS02_DRIVER_STATE_IDLE,
            
    WINCS02_DRIVER_STATE_SET_MQTT_PUBLISH_PAYLOAD,

    // State to publish MQTT message
    WINCS02_DRIVER_STATE_MQTT_PUBLISH,

    // State to wait for publish completion
    WINCS02_DRIVER_STATE_WAIT_FOR_PUBLISH,

    // Error state
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