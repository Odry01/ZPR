#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/pm/plib_pm.c ../src/main.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/peripheral/dmac/plib_dmac.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c ../src/config/default/usb_device_init_data.c ../src/config/default/usb/src/usb_device.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/supc/plib_supc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/rstc/plib_rstc.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/usb/src/usb_device_cdc.c ../src/config/default/usb/src/usb_device_cdc_acm.c ../src/config/default/system/console/src/sys_console_usb_cdc.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/dma/sys_dma.c ../src/app.c ../src/config/default/tasks.c ../src/battery_driver.c ../src/console_driver.c ../src/timer_driver.c ../src/rstc_driver.c ../src/wincs02_driver.c ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c ../src/config/default/system/sys_wincs_system_service.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/829342769/plib_pm.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/1865616679/plib_supc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1865585090/plib_rstc.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/battery_driver.o ${OBJECTDIR}/_ext/1360937237/console_driver.o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ${OBJECTDIR}/_ext/1360937237/rstc_driver.o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/829342769/plib_pm.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d ${OBJECTDIR}/_ext/308758920/usb_device.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/1865616679/plib_supc.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1865585090/plib_rstc.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/14461671/sys_dma.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/battery_driver.o.d ${OBJECTDIR}/_ext/1360937237/console_driver.o.d ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d ${OBJECTDIR}/_ext/1360937237/rstc_driver.o.d ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/829342769/plib_pm.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/1865616679/plib_supc.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1865585090/plib_rstc.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/battery_driver.o ${OBJECTDIR}/_ext/1360937237/console_driver.o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ${OBJECTDIR}/_ext/1360937237/rstc_driver.o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/pm/plib_pm.c ../src/main.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/peripheral/dmac/plib_dmac.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c ../src/config/default/usb_device_init_data.c ../src/config/default/usb/src/usb_device.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/supc/plib_supc.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/rstc/plib_rstc.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/usb/src/usb_device_cdc.c ../src/config/default/usb/src/usb_device_cdc_acm.c ../src/config/default/system/console/src/sys_console_usb_cdc.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/dma/sys_dma.c ../src/app.c ../src/config/default/tasks.c ../src/battery_driver.c ../src/console_driver.c ../src/timer_driver.c ../src/rstc_driver.c ../src/wincs02_driver.c ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c ../src/config/default/system/sys_wincs_system_service.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32CM2532LE00048
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\PIC32CM2532LE00048.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/2fb05b831903aa6a58b958194efe090a1e6d4a1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/default/29fe21e7deb8f6f86502228dcc0456bf245458d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/9727b62cc06014bee702406ad75ac5db1ed0cb23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342769/plib_pm.o: ../src/config/default/peripheral/pm/plib_pm.c  .generated_files/flags/default/5a3c4d9506d9b2e21d587bbe2ec0a2470b44016c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342769" 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/829342769/plib_pm.o.d" -o ${OBJECTDIR}/_ext/829342769/plib_pm.o ../src/config/default/peripheral/pm/plib_pm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/227b7ea216d2d8a60d38d45a8f036925dffee53f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/8c37f09f745bfe265a401d7501de3be3cdb6fb06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/19bfa2ac062ea1cab229661c805d2378ed144ee6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/93be6f78e01b110632a0ac4c72642c37d99cae9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/bd346e0b9015a10be496e64dd8d8a0fd7c74554f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/82ddae8d9adb0a323942b31cb95178325c936166 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/d5d1a5b5ed3d2288c9055597da4e71ca346f7cd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/318dd31195b6c0fd9b8250d0bfab87a399239cca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/b80d692e0ebbbec284759233c7701fc9673df20e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865161661/plib_dmac.o: ../src/config/default/peripheral/dmac/plib_dmac.c  .generated_files/flags/default/17946bee3cf71df238c722b81982caa28af0f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865161661" 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ../src/config/default/peripheral/dmac/plib_dmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/88a549e8e0403701ab8ed08a756825def728d145 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/a0db387035053179bd148baf3bdf5ddf5ba5ed06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc.c  .generated_files/flags/default/3526063cf31c2b7e660fe6abe140ea22e266abf5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c  .generated_files/flags/default/279ce5c41bb5493aea691d0edc2c4f2c6a1e82e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c  .generated_files/flags/default/10b882537eb4c857781c0327c2239a6181133ef7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c  .generated_files/flags/default/9167b3d27f814171ec934bc80b4e52d55fd72b1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c  .generated_files/flags/default/bcaabc351f962afdee273d4326d96d3a2d249b7e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c  .generated_files/flags/default/8b0d94e9ce1c1d6f4cc9f80ad87411208e87ed8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c  .generated_files/flags/default/52b89537fce62c68266e5dd6c4706a00a9d5a1df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c  .generated_files/flags/default/7265dd9528d92519dfdd5870d616660d80673273 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c  .generated_files/flags/default/b35f524c994e13d63d9229a85069c110bcf6cda3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c  .generated_files/flags/default/577549e9ca9b4141b98ca403f833c94a24cd5ae3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c  .generated_files/flags/default/94d4e1f774c73e11fda4f98d98242ba6c0a2237c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c  .generated_files/flags/default/dd0567fc91dbb95e85c328db02bcf4fee0425397 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c  .generated_files/flags/default/8273e5308961474b7adc90c335241da7ee0d3f71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c  .generated_files/flags/default/bb89dad5e83b80f01f3cf395ba99479d0a97b6c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c  .generated_files/flags/default/cc3459accc38c182cd33ab43bc895fca765b57b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c  .generated_files/flags/default/b05cd81bf5090fb4e07c7b1c1d43b6c9f4f8f379 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c  .generated_files/flags/default/e438653f09d64839571cdba96d67af0332578a35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c  .generated_files/flags/default/bc7b2c40fec028b144ff36ddb230a722c6bab87d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c  .generated_files/flags/default/1399553515e893cdf86cc211e2885ef0605be8e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c  .generated_files/flags/default/64072e456245c07b723e7ecd5aa86d80b5ba820 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c  .generated_files/flags/default/f87460a0f59a286aa30d5020be118182bc45a86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c  .generated_files/flags/default/cde3bac699952fb4632be99305ed2239360e4d3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c  .generated_files/flags/default/90878350760326a2c66e6d231309af957fdd2b84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c  .generated_files/flags/default/8104261d62cba9de87acaeceb7d8353d95d99f6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmds.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c  .generated_files/flags/default/6741fdf52b6f69f1690c6b91aa7d723743ae40cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c  .generated_files/flags/default/28b027e873c1650493e6c5f78319ac101425011e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_dev.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c  .generated_files/flags/default/fd6f3b20ba9609d71513bf9a26d5b15b87d84b21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_dev.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c  .generated_files/flags/default/da7e8c7d55da5140820c2c1adb510e1d082fbfd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_socket.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c  .generated_files/flags/default/e2b20aa1193fec9db725c88cd4e19236937f0e73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_socket.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_tables.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c  .generated_files/flags/default/8b43bb7cb16bc31d8a3a7a7a3aa075782dbc49a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_tables.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c  .generated_files/flags/default/9bc7be62dd2cfe3c2fc8a0cd24bc3d145efb27ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/9be6bf189adeb91eae5d74e00c06778f93b5004c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/8b30519335e834ea4b79b00edff98dff9e52b6b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/d88f7d6aa4a9fa41f9f600fb6a2029d526ed43ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865616679/plib_supc.o: ../src/config/default/peripheral/supc/plib_supc.c  .generated_files/flags/default/b7a5d3bc132a70a9052b0eaa1a6f2babec91e11c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865616679" 
	@${RM} ${OBJECTDIR}/_ext/1865616679/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865616679/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865616679/plib_supc.o.d" -o ${OBJECTDIR}/_ext/1865616679/plib_supc.o ../src/config/default/peripheral/supc/plib_supc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/722411758a0172abba7a8c65bc7204243060068c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865585090/plib_rstc.o: ../src/config/default/peripheral/rstc/plib_rstc.c  .generated_files/flags/default/a5e2ce8aa767aee701c375e6fe2ff0106f25e2c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865585090" 
	@${RM} ${OBJECTDIR}/_ext/1865585090/plib_rstc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865585090/plib_rstc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865585090/plib_rstc.o.d" -o ${OBJECTDIR}/_ext/1865585090/plib_rstc.o ../src/config/default/peripheral/rstc/plib_rstc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/9b6f97eb5671dbac60a3f344fbc573fda2556132 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/default/7dcca07ec2e8b0867627e1e5e07c2bc0d07fd6dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/default/fcf1fc671b76da1bdc38caa107cdb352730cc4b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/1b76bbf3cea678cfb72ad1e7c0d7735401ece344 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc.o: ../src/config/default/usb/src/usb_device_cdc.c  .generated_files/flags/default/70344bd7307051de8db929b08857008f6d3d3e60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ../src/config/default/usb/src/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o: ../src/config/default/usb/src/usb_device_cdc_acm.c  .generated_files/flags/default/49c336315dedd0c3c7668a96327ffbc92df03857 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ../src/config/default/usb/src/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o: ../src/config/default/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/default/cd7390a6094e5fa026308bd36c714b91a5c64963 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ../src/config/default/system/console/src/sys_console_usb_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/5474f85fae24a33b63faf56adadc2c39d8bfccda .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/flags/default/aa6ae6e28b29efe70298f7cb17974d7b19f8d69a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/343e6ab2be189ecb662555ed06985c5da1f6589d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/c3a1516d3cfbd8ab8c53e5da9bf2835999411845 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/battery_driver.o: ../src/battery_driver.c  .generated_files/flags/default/102193118e5228236a3edf120c7e0d7b2b2267f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/battery_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/battery_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/battery_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/battery_driver.o ../src/battery_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/console_driver.o: ../src/console_driver.c  .generated_files/flags/default/b6ae4c397f8247d78f18213f1e4e168250f8ab08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/console_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/console_driver.o ../src/console_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/timer_driver.o: ../src/timer_driver.c  .generated_files/flags/default/fe5dfdd83fbad971f671d006b9bcd2092c1b1bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ../src/timer_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rstc_driver.o: ../src/rstc_driver.c  .generated_files/flags/default/36000bcd5c099102f4e89c7c328effa28a5bc3c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rstc_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rstc_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rstc_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/rstc_driver.o ../src/rstc_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/wincs02_driver.o: ../src/wincs02_driver.c  .generated_files/flags/default/a41a6649cc1860cd3ca1ce4dac3c865af7e05498 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ../src/wincs02_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o: ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c  .generated_files/flags/default/5761fe27e2cc9cbb05f15e11c9cf38e276723ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/634868841" 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d" -o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o: ../src/config/default/system/sys_wincs_system_service.c  .generated_files/flags/default/9f22c322a79859698ea3d88bafa735b257027554 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o ../src/config/default/system/sys_wincs_system_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/4aed18f6e909e787030801083784c6f4679fbaaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/default/5d9d4b181f0bc323de444a1c5196b7c7d6045e9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/144254224046cfbd73f6934f0497c30b12db1357 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342769/plib_pm.o: ../src/config/default/peripheral/pm/plib_pm.c  .generated_files/flags/default/f59614fed8bb16dc406949183881835273fe73b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342769" 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/829342769/plib_pm.o.d" -o ${OBJECTDIR}/_ext/829342769/plib_pm.o ../src/config/default/peripheral/pm/plib_pm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/f3984d913e82515155eee24cf97951e23ea0e66f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/366269a2383db68b8227e15e7bf440b2a581eec3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/c0f7db1666785860688fcb7a1490f4bd0464161f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/64fd516abdd576cc4855d918c2338ed403b94d44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/a288aca0becdad42e7feb91fa997610abbb7036e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/d392d1abadfb567e4b8b3fc41ac689ba65ecb148 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/8692c9024e98dfb64e8c6039bdb3ffd96e8b57a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/a773af240667cd838b3ee202a217a01622f009e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/2c8a7f27dca6b54b28a41341d0d665553d35b3ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865161661/plib_dmac.o: ../src/config/default/peripheral/dmac/plib_dmac.c  .generated_files/flags/default/b0e435927ed8c9c645f682c368a370d4e6f6cd29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865161661" 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ../src/config/default/peripheral/dmac/plib_dmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/eb3aeb34c9da415a4ffcf48a795329201f311fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/ac242526f6484d19a36b611e6fd9c114921bf6b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc.c  .generated_files/flags/default/f1bf08eb7eff2130ab97b01912c908e81e61aaa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c  .generated_files/flags/default/94e8bc76777bddc9ce2715c91b5b9860137e9ce5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c  .generated_files/flags/default/42be0f2fb65b7be85f8fd19b4124be907ed0fd0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c  .generated_files/flags/default/8c3e29ae2274e38d800bb0ddeb263a216a52328 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c  .generated_files/flags/default/c04d672db0cfa2fd9a02e9dacc4eedfccd5cb6b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c  .generated_files/flags/default/876817f18b8ae4717e4172c283a8a8047af8ed95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c  .generated_files/flags/default/8bbe710b7eebfbfa280b02786790fc8adbb6dd85 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c  .generated_files/flags/default/45f80cbd9ccaaef41f0f69bf920a906b5fba0123 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c  .generated_files/flags/default/86014c89b3c722c9e0c89e1216282bd9ed7c88d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c  .generated_files/flags/default/38d91e55ff966933711a8cf8b2d14b1d032fb9ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c  .generated_files/flags/default/2ee60ce9def458411bfe2df172a8a9ab6eb8eca2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c  .generated_files/flags/default/3b8b108f453001fc85ab76ccf2c7d59d25c25221 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c  .generated_files/flags/default/97fb141b4ff0d543e09f927c9bd75206904a69bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c  .generated_files/flags/default/3888654468d67245ce43d15b6f93d45ef7a08868 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c  .generated_files/flags/default/3719ba2f90ff2b0ed65e7fcd18a3b95637d0105c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c  .generated_files/flags/default/302427d66cf85e500fd0592ed657693c69b0d429 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c  .generated_files/flags/default/744b12da1d692c0b8f1f3ba3d44c688a2fe2b834 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c  .generated_files/flags/default/6d2bd7f224be36e5ad20e3046da45ecf406f76f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c  .generated_files/flags/default/263f4accdbccd024b0a43a62e8b9c0a4096236a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c  .generated_files/flags/default/41468a422d59e71b0ec090f0044fd69b475ae8af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c  .generated_files/flags/default/db8137348b17d05f81b38e2b52a480d4bc50d979 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c  .generated_files/flags/default/3b71388a006b044d13b48240e1316d5cedc50c0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c  .generated_files/flags/default/5acf4eb2aea952e66aa02a309bc17cfaa614f7bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c  .generated_files/flags/default/2928d59ddc57042da8c9af83ba428b8563a3d09e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmds.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c  .generated_files/flags/default/dfc4c94f6fd670ae484a32f095294d6a9ccf244a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c  .generated_files/flags/default/a41a67f0ba90b0c18d96f17612b7efb368908741 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_dev.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c  .generated_files/flags/default/9dcf338067221490845a057b45a21b60edafba25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_dev.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c  .generated_files/flags/default/ea352200089b6c234f7fd19d0e1e5bbce4b45a16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_socket.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c  .generated_files/flags/default/aceca2de055286489532128a3af8ef750031dbae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_socket.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_tables.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c  .generated_files/flags/default/4388336d44e8ccc35d4751819ffe990f7d862fa8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_tables.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c  .generated_files/flags/default/8f892cd36dae93b730a21bdfc1d7b5d30d7cf70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/6039035e762faa8f9a9e833ada3af200d0822970 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/3c4b1d35bfcdd74538553ec67b95e44f06e3f08b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/5f52b4985ed2f602a594f2624728b73897d050fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865616679/plib_supc.o: ../src/config/default/peripheral/supc/plib_supc.c  .generated_files/flags/default/7825b2484a25d40b3134336d3428a296b276c094 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865616679" 
	@${RM} ${OBJECTDIR}/_ext/1865616679/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865616679/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865616679/plib_supc.o.d" -o ${OBJECTDIR}/_ext/1865616679/plib_supc.o ../src/config/default/peripheral/supc/plib_supc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/a124ce108f4a163f7280ca07198ccc64baa84c61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865585090/plib_rstc.o: ../src/config/default/peripheral/rstc/plib_rstc.c  .generated_files/flags/default/e2c2ff28cbba90835676fb93186e3656a55fbecf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865585090" 
	@${RM} ${OBJECTDIR}/_ext/1865585090/plib_rstc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865585090/plib_rstc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1865585090/plib_rstc.o.d" -o ${OBJECTDIR}/_ext/1865585090/plib_rstc.o ../src/config/default/peripheral/rstc/plib_rstc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/d4aad02a2d232126c8ddd077f29c1e6aafe1c89f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/default/209a5745cc5b1d7483844c4bd9dde345041f70c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/default/a6e8a4acbf0b0af85d54b30ce5924876c98b27c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/89ded4b145c738a9ad3782cb2612cb5e76d3a448 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc.o: ../src/config/default/usb/src/usb_device_cdc.c  .generated_files/flags/default/70bf2eab48a0977a67b680b2fabe6e676b1725c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc.o ../src/config/default/usb/src/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o: ../src/config/default/usb/src/usb_device_cdc_acm.c  .generated_files/flags/default/f7311411dc435eaf71109eebee2a88d2f478dafc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_cdc_acm.o ../src/config/default/usb/src/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o: ../src/config/default/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/default/6274b402111a006c319dd703a441435341ca20db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_usb_cdc.o ../src/config/default/system/console/src/sys_console_usb_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/82facebffdff28eef1faa9dafdab9f2de7a9716 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/flags/default/45cfd0af445a4b761f5f77d6fb0988dbd4ae2bf8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/89315ca56aca4dd4a2d2ec61a5b312373dcb8138 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/34c1cbb5f503b1367e7a246434981a445a447a27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/battery_driver.o: ../src/battery_driver.c  .generated_files/flags/default/643995a6b99fdb299f3310d6eb6b49a6d170669c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/battery_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/battery_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/battery_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/battery_driver.o ../src/battery_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/console_driver.o: ../src/console_driver.c  .generated_files/flags/default/a1ceee931393b770ed569edef0cfa062f86eaa9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/console_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/console_driver.o ../src/console_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/timer_driver.o: ../src/timer_driver.c  .generated_files/flags/default/1477b19ee6f4ca40b9ac55bc62c65b6b7a58d6ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ../src/timer_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rstc_driver.o: ../src/rstc_driver.c  .generated_files/flags/default/31a18eaaf5dbc7e4750dccc7a0cdfa73d4bc698c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rstc_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rstc_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rstc_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/rstc_driver.o ../src/rstc_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/wincs02_driver.o: ../src/wincs02_driver.c  .generated_files/flags/default/d4026e6d78f95262ead39b50650d86917e9c9a53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ../src/wincs02_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o: ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c  .generated_files/flags/default/2740af827d1cfc372da008ab5948a54a669089d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/634868841" 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d" -o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o: ../src/config/default/system/sys_wincs_system_service.c  .generated_files/flags/default/dff90cb5f148e76435ce21f4599b23f743f31dbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM2532LE00048_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o ../src/config/default/system/sys_wincs_system_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/PIC32CM2532LE00048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/PIC32CM2532LE00048.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/SERVER_MODULE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
