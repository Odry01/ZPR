/*******************************************************************************
  System Configuration Header

  File Name:
    configuration.h

  Summary:
    Build-time configuration header for the system defined by this project.

  Description:
    An MPLAB Project may have multiple configurations.  This file defines the
    build-time options for a single configuration.

  Remarks:
    This configuration header must not define any prototypes or data
    definitions (or include any files that do).  It only provides macro
    definitions for build-time configuration options

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

#ifndef CONFIGURATION_H
#define CONFIGURATION_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/*  This section Includes other configuration headers necessary to completely
    define this configuration.
*/

#include "user.h"
#include "device.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: System Configuration
// *****************************************************************************
// *****************************************************************************



// *****************************************************************************
// *****************************************************************************
// Section: System Service Configuration
// *****************************************************************************
// *****************************************************************************
/*----------------- WINCS Net System Service Configuration -----------------*/
#define SYS_WINCS_NET_BIND_TYPE0                SYS_WINCS_NET_BIND_REMOTE 
#define SYS_WINCS_NET_SOCK_TYPE0                SYS_WINCS_NET_SOCK_TYPE_TCP 
#define SYS_WINCS_NET_SOCK_TYPE_IPv4_0          4
#define SYS_WINCS_NET_SOCK_TYPE_IPv6_LOCAL0     0
#define SYS_WINCS_NET_SOCK_TYPE_IPv6_GLOBAL0    0
#define SYS_WINCS_NET_SOCK_SERVER_ADDR0         ""
#define SYS_WINCS_NET_SOCK_PORT0                80
#define SYS_WINCS_TLS_ENABLE0                   0
/*----------------------------------------------------------------------------*/

/* -----------------WINCS02 MQTT System Service Configuration ----------------- */

#define SYS_WINCS_MQTT_PROTO_VERSION             SYS_WINCS_MQTT_PROTO_VER_3

#define SYS_WINCS_MQTT_CLOUD_URL                 "10.0.1.31"
#define SYS_WINCS_MQTT_CLOUD_PORT                1883
#define SYS_WINCS_MQTT_CLIENT_ID                 "ZPR"
#define SYS_WINCS_MQTT_CLOUD_USER_NAME           "Admin"
#define SYS_WINCS_MQTT_PASSWORD                  "Odry@300403"
#define SYS_WINCS_MQTT_CLEAN_SESSION             true
#define SYS_WINCS_MQTT_KEEP_ALIVE_TIME           60

#define SYS_WINCS_MQTT_PUB_TOPIC_NAME            "ZPR/Sensor"
#define SYS_WINCS_MQTT_PUB_MSG                   "ZPR"
#define SYS_WINCS_MQTT_PUB_MSG_QOS_TYPE          SYS_WINCS_MQTT_QOS1
#define SYS_WINCS_MQTT_PUB_MSG_RETAIN            false
#define SYS_WINCS_MQTT_TLS_ENABLE                false
#define SYS_WINCS_MQTT_AZURE_DPS_ENABLE          false
#define SYS_WINCS_MQTT_DEBUG_LOGS                1
#define SYS_WINCS_MQTT_CallbackHandler           WINCS02_DRIVER_MQTT_Callback

/*----------------------------------------------------------------------------*/

/* TIME System Service Configuration Options */
#define SYS_TIME_INDEX_0                            (0)
#define SYS_TIME_MAX_TIMERS                         (5)
#define SYS_TIME_HW_COUNTER_WIDTH                   (16)
#define SYS_TIME_HW_COUNTER_PERIOD                  (0xFFFFU)
#define SYS_TIME_HW_COUNTER_HALF_PERIOD             (SYS_TIME_HW_COUNTER_PERIOD>>1)
#define SYS_TIME_CPU_CLOCK_FREQUENCY                (48000000)
#define SYS_TIME_COMPARE_UPDATE_EXECUTION_CYCLES    (160)

#define SYS_CONSOLE_INDEX_0                       0

/* RX buffer size has one additional element for the empty spot needed in circular buffer */
#define SYS_CONSOLE_USB_CDC_RD_BUFFER_SIZE_IDX0    1025

/* TX buffer size has one additional element for the empty spot needed in circular buffer */
#define SYS_CONSOLE_USB_CDC_WR_BUFFER_SIZE_IDX0    1025



#define SYS_DEBUG_ENABLE
#define SYS_DEBUG_GLOBAL_ERROR_LEVEL       SYS_ERROR_DEBUG
#define SYS_DEBUG_BUFFER_DMA_READY
#define SYS_DEBUG_USE_CONSOLE


#define SYS_CONSOLE_DEVICE_MAX_INSTANCES   			(1U)
#define SYS_CONSOLE_UART_MAX_INSTANCES 	   			(0U)
#define SYS_CONSOLE_USB_CDC_MAX_INSTANCES 	   		(1U)
#define SYS_CONSOLE_PRINT_BUFFER_SIZE        		(8192U)

#define SYS_CONSOLE_USB_CDC_READ_WRITE_BUFFER_SIZE 	(512)



// *****************************************************************************
// *****************************************************************************
// Section: Driver Configuration
// *****************************************************************************
// *****************************************************************************
/* I2C Driver Instance 0 Configuration Options */
#define DRV_I2C_INDEX_0                       0
#define DRV_I2C_CLIENTS_NUMBER_IDX0           1
#define DRV_I2C_QUEUE_SIZE_IDX0               1
#define DRV_I2C_CLOCK_SPEED_IDX0              100

/* I2C Driver Instance 1 Configuration Options */
#define DRV_I2C_INDEX_1                       1
#define DRV_I2C_CLIENTS_NUMBER_IDX1           1
#define DRV_I2C_QUEUE_SIZE_IDX1               1
#define DRV_I2C_CLOCK_SPEED_IDX1              100

/*** WiFi WINC Driver Configuration ***/
#define WDRV_WINC_EIC_SOURCE
#define WDRV_WINC_DEVICE_USE_SYS_DEBUG
#define WDRV_WINC_TASK_YIELD_TIME           0
#define WDRV_WINC_DEV_RX_BUFF_SZ            2048
#define WINC_SOCK_SLAB_ALLOC_MODE           1
#define WDRV_WINC_DEV_SOCK_SLAB_NUM         1
#define WDRV_WINC_DEV_SOCK_SLAB_SZ          1024
#define WINC_SOCK_NUM_SOCKETS               1
#define WINC_SOCK_BUF_RX_SZ                 4096
#define WINC_SOCK_BUF_TX_SZ                 4096
#define WINC_SOCK_BUF_RX_PKT_BUF_NUM        5
#define WINC_SOCK_BUF_TX_PKT_BUF_NUM        5
#define WDRV_WINC_MOD_DISABLE_SYSLOG
#define WDRV_WINC_MOD_DISABLE_HTTP

/* I2C Driver Common Configuration Options */
#define DRV_I2C_INSTANCES_NUMBER              (2U)




// *****************************************************************************
// *****************************************************************************
// Section: Middleware & Other Library Configuration
// *****************************************************************************
// *****************************************************************************
/* Number of Endpoints used */
#define DRV_USBFSV1_ENDPOINTS_NUMBER                        3U

/* The USB Device Layer will not initialize the USB Driver */
#define USB_DEVICE_DRIVER_INITIALIZE_EXPLICIT

/* Maximum device layer instances */
#define USB_DEVICE_INSTANCES_NUMBER                         1U

/* EP0 size in bytes */
#define USB_DEVICE_EP0_BUFFER_SIZE                          64U


/* Maximum instances of CDC function driver */
#define USB_DEVICE_CDC_INSTANCES_NUMBER                     1U


/* CDC Transfer Queue Size for both read and
   write. Applicable to all instances of the
   function driver */
#define USB_DEVICE_CDC_QUEUE_DEPTH_COMBINED                 3U

/*** USB Driver Configuration ***/

/* Maximum USB driver instances */
#define DRV_USBFSV1_INSTANCES_NUMBER                        1U


/* Enables Device Support */
#define DRV_USBFSV1_DEVICE_SUPPORT                          true
    
/* Disable Host Support */
#define DRV_USBFSV1_HOST_SUPPORT                            false

/* Enable usage of Dual Bank */
#define DRV_USBFSV1_DUAL_BANK_ENABLE                        false

/* Alignment for buffers that are submitted to USB Driver*/ 
#define USB_ALIGN  __ALIGNED(CACHE_LINE_SIZE)

/* WINCS02  WIFI System Service Configuration Options */

#define SYS_WINCS_WIFI_DEVMODE        		SYS_WINCS_WIFI_MODE_STA

#define SYS_WINCS_WIFI_STA_SSID				"Mat_net"
#define SYS_WINCS_WIFI_STA_PWD        		"OK0130@july0720"
#define SYS_WINCS_WIFI_STA_SECURITY			SYS_WINCS_WIFI_SECURITY_WPA2 
#define SYS_WINCS_WIFI_STA_AUTOCONNECT   	true


#define SYS_WINCS_WIFI_COUNTRYCODE          "EMEA"
#define SYS_WINCS_WIFI_DEBUG_LOGS            1
#define SYS_WINCS_POWER_SAVE_MODE            1
#define SYS_WINCS_WIFI_SNTP_ADDRESS          "162.159.200.123"


#define SYS_WINCS_WIFI_CallbackHandler	     WINCS02_DRIVER_WIFI_Callback


// *****************************************************************************
// *****************************************************************************
// Section: Application Configuration
// *****************************************************************************
// *****************************************************************************


//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif // CONFIGURATION_H
/*******************************************************************************
 End of File
*/
