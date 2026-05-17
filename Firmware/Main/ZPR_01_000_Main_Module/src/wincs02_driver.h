/*******************************************************************************
  MPLAB Harmony Application Header File

  Author:
    Odry01

  File Name:
    wincs02_driver.h

  Status:
    In development

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

#define PAYLOAD_BUFFER_SIZE 1024

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
    WINCS02_DRIVER_STATE_SET_REG_DOMAIN,
    WINCS02_DRIVER_STATE_WIFI_CALLBACK_REGISTER,
    WINCS02_DRIVER_STATE_SOCKET_CALLBACK_REGISTER,
    WINCS02_DRIVER_STATE_WIFI_CFG,
    WINCS02_DRIVER_STATE_WIFI_CONNECT,
    WINCS02_DRIVER_STATE_WAIT_FOR_IPV4,
    WINCS02_DRIVER_STATE_TCP_CLIENT_CONNECT,
    WINCS02_DRIVER_STATE_WAIT_FOR_TCP_CONNECT,
    WINCS02_DRIVER_STATE_CONNECTED,
    WINCS02_DRIVER_STATE_IDLE,
    WINCS02_DRIVER_STATE_EXIT_POWER_SAVE_MODE,
    WINCS02_DRIVER_STATE_SET_MESSAGE_PAYLOAD,
    WINCS02_DRIVER_STATE_SEND_MESSAGE_PAYLOAD,
    WINCS02_DRIVER_STATE_WAIT_FOR_SEND_MESSAGE_PAYLOAD,
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
    volatile bool TCP_CONNECT_STATUS;
    volatile bool DATA_TRANSFER_COMPLETE_STATUS;
    uint32_t clientSocket;
    char PAYLOAD_BUFFER[PAYLOAD_BUFFER_SIZE];
} WINCS02_DRIVER_DATA;

typedef struct
{
    uint32_t MCU_SN_0;
    uint32_t MCU_SN_1;
    uint32_t MCU_SN_2;
    uint32_t MCU_SN_3;
    float FW_VERSION;
    uint8_t CHARGER_STATUS;
    float BATTERY_VOLTAGE;
    float CELSIUS_TEMPERATURE;
    float PA_PRESSURE;
} WINCS02_PAYLOAD_DATA;

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

void WINCS02_DRIVER_Set_App_Data(uint32_t MCU_SN_0, uint32_t MCU_SN_1, uint32_t MCU_SN_2, uint32_t MCU_SN_3, float FW_VERSION);

void WINCS02_DRIVER_Set_Battery_Data(uint8_t CHARGER_STATUS, float BATTERY_VOLTAGE);

void WINCS02_DRIVER_Set_BMP585_Data(float CELSIUS_TEMPERATURE, float PA_PRESSURE);

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _WINCS02_DRIVER_H */

/*******************************************************************************
 End of File
 */