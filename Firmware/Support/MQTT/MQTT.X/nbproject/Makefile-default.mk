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
FINAL_IMAGE=${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/dmac/plib_dmac.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/rtc/plib_rtc_clock.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/dma/sys_dma.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/mqtt/src/sys_wincs_mqtt_service.c ../src/config/default/system/net/src/sys_wincs_net_service.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c ../src/config/default/system/sys_wincs_system_service.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/timer_driver.c ../src/wincs02_driver.c ../src/rtc_driver.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/14461671/sys_dma.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o.d ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d ${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/dmac/plib_dmac.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/rtc/plib_rtc_clock.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/dma/sys_dma.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/mqtt/src/sys_wincs_mqtt_service.c ../src/config/default/system/net/src/sys_wincs_net_service.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c ../src/config/default/system/sys_wincs_system_service.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/timer_driver.c ../src/wincs02_driver.c ../src/rtc_driver.c ../src/main.c ../src/app.c

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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAMD21G18A.ld"
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
${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c  .generated_files/flags/default/52493ab0c6d9eeebe451116ebd6f6370001efa1f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c  .generated_files/flags/default/9f950738f1b3b6ebd2025340bf35f2c86224dd4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmds.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c  .generated_files/flags/default/7a5acf8c576abc561996a1306fbd8cead956e224 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c  .generated_files/flags/default/bf00bab801b383c06e3b36f27c0cc3c8bfc532f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_dev.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c  .generated_files/flags/default/81b48347e5e792f34da094f8741788b2969a83f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_dev.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c  .generated_files/flags/default/ddfe529b73037b84a9eb95b21bebc0891fa34ce0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_tables.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c  .generated_files/flags/default/6e3aa821ea7c16c067778e5ecb1d53b60a387164 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_tables.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_socket.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c  .generated_files/flags/default/dd18bbdbb6dc3d786033728219962517180f6d0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_socket.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc.c  .generated_files/flags/default/2125cf38d31d392d95082411e5009939232cf89c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c  .generated_files/flags/default/1d5e19b71f02cc1e100cef4ba9824613e321eaf7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c  .generated_files/flags/default/90dc666c2a61e5e00e55f8c8437fa49bfae90fad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c  .generated_files/flags/default/29b1346e217c0f76faa47c3e1f0352fe19b2c408 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c  .generated_files/flags/default/a3f8410977c3d21b92aaec81f7d80610d4a2ee1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c  .generated_files/flags/default/421a68e46023ebe4ff0c2b3d97fd41ed5613a28c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c  .generated_files/flags/default/1aa55dff38ee30c58fc3c98a576b8ab72da5c7f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c  .generated_files/flags/default/ed5b80681fdb7b8e82c6defba21c42e2c139b6cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c  .generated_files/flags/default/9bfd4be6b9650a08b0bbf4efbf061f6cbec83025 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c  .generated_files/flags/default/d9f47ff2fb00007dfbb08201f15c4b51101641d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c  .generated_files/flags/default/81a4443874b22c6625f7a23a1a1905117aad2cff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c  .generated_files/flags/default/94963726e731732f2f8a1fea9b2c6bbbd3598424 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c  .generated_files/flags/default/8ac8f773cd1bfc59f72eb465bd8ba32190dd6ee4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c  .generated_files/flags/default/21f5b66a829c380314f9b941b89c9b3346576af6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c  .generated_files/flags/default/de59adc4c0120d307e601d2c2ce874811fee1a4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c  .generated_files/flags/default/839299c898e0fb417656ea2e172a7ba12af95e47 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c  .generated_files/flags/default/74476e233cfd3d02542a6c781e53dc96c6da9610 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c  .generated_files/flags/default/9376ec4736f2652066345c0a3d6efc74339a5c69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c  .generated_files/flags/default/790a8ed0a6370edf211f161905857f63bafb66e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c  .generated_files/flags/default/5c210e25f282af2b7672773c9a1e05278efa70a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c  .generated_files/flags/default/e31c23517b20de4a9423d10345339c5b268a1416 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c  .generated_files/flags/default/a0a466c83986b19f6e473326785ee471dc11e318 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c  .generated_files/flags/default/ca06f37c6a736999a4897e038679f3096a612fa8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/94da442adb26b7769b327ee49b78628fe4e8cf81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865161661/plib_dmac.o: ../src/config/default/peripheral/dmac/plib_dmac.c  .generated_files/flags/default/77ad159fb8dde0bafde05fca9de8a7c3639e21cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865161661" 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ../src/config/default/peripheral/dmac/plib_dmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/bbeb1645c9384b8d76be28526d0d4e3a6516ae19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/567225fae78079b2808cb8a10db4c95110716a23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/8496578603582614f37830a35e9a963ff762d633 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/633c6d1460ea373673faf25fce192ff865fc141c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/baa87f9e2ca32991c5773333dc202804682a7f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o: ../src/config/default/peripheral/rtc/plib_rtc_clock.c  .generated_files/flags/default/21ef9d1b40950e1e967dff0978fe6953dbc301b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o ../src/config/default/peripheral/rtc/plib_rtc_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c  .generated_files/flags/default/82a1262f81969efd0ad25e8373fd1248db40c167 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/default/1719859afdd19a9e371854b632f33100e22fe074 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/c12fee9d659a1c2916ac6421ac5bc8f796f74373 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/abc0a2a4d846258988b62aa963392ed94e3ea203 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/3af71458c0395d9a3aa8819269935e6c7e01f02b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/551b5c1e00ffc93943271631bd4057aa6ed5f9e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/flags/default/434c1895789a366771991478738ddc49e7f90312 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/2fa0632a620a0a580cff7dc6dbbd9722d13b0438 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o: ../src/config/default/system/mqtt/src/sys_wincs_mqtt_service.c  .generated_files/flags/default/229239c444e3e71b877f79b52b569c1ec2394e46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/692303624" 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o.d" -o ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o ../src/config/default/system/mqtt/src/sys_wincs_mqtt_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o: ../src/config/default/system/net/src/sys_wincs_net_service.c  .generated_files/flags/default/bc5a473c5e6a205946e2041378175d1df87d0722 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1766557203" 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o.d" -o ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o ../src/config/default/system/net/src/sys_wincs_net_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/3be9bc0578c2da79a312c2d95f576faafced6130 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o: ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c  .generated_files/flags/default/427d9a74f8b83108dacae2a0bc33c14f7e59a3da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/634868841" 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d" -o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o: ../src/config/default/system/sys_wincs_system_service.c  .generated_files/flags/default/d7e3802b81df82b0b6a1ac30ee8a977bbd32ca09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o ../src/config/default/system/sys_wincs_system_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/dff8dc83d6986f25ed6ccb69b2add53c3c00127f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/f04d42f099ce7419820fb7e2ef80714f927578a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/49e451c6bb32da4ab79eb4f086f7f7b4ab75880d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/6e73eced3eea7e8037fb0b51d9617cbc0f4ab91a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/9f69fead61993e293acbbe18e2f8fb0e2ca21e64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/a922dd00e0d6188c2ec71f4f56a338cf1dcd4fff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/timer_driver.o: ../src/timer_driver.c  .generated_files/flags/default/be12ec2a3e3854d92649192c30030e037004c734 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ../src/timer_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/wincs02_driver.o: ../src/wincs02_driver.c  .generated_files/flags/default/24ab5de75a2b227ad1218bd2336d83a6f54d1da7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ../src/wincs02_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rtc_driver.o: ../src/rtc_driver.c  .generated_files/flags/default/fb1aed3eee8f985e826905aaf80cd8028e0dc580 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ../src/rtc_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/72b77a7de8e3ef7dc4cee5984c7e656a99130362 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/287f7bb129c8d13a1ee4f88b7f51e92fd29f56f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c  .generated_files/flags/default/1e78a51b8fc900737ab8755c08ed79d38c6d8cd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c  .generated_files/flags/default/4d37ae32cc78d9fb2cb74c1f541bbb22377ab302 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmds.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c  .generated_files/flags/default/beab7652213d9f53d353b144a37272aca810a04f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c  .generated_files/flags/default/c89b806d0d3a0cb7beb37e85dfc65fd62be4ed3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_dev.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c  .generated_files/flags/default/b23d15fc1dfe9ba8c40dc9271de9518526a080c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_dev.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c  .generated_files/flags/default/4c0a69021be7f826a8e8b665655f8fdf8ef79e9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_tables.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c  .generated_files/flags/default/6f0facfc1883193019e7cacd03b062ac30084aeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_tables.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_socket.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c  .generated_files/flags/default/28836a80920cd2fbeeec4ba6cfe52a9e34852815 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_socket.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc.c  .generated_files/flags/default/4392e6af3882f0fd096e06ab7efaeab628da3b57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c  .generated_files/flags/default/c4a7577f6c29eef4f3381be4853c11ad38bb946a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c  .generated_files/flags/default/c783b8a844cd804e4ac3ec665b55e80216b55320 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c  .generated_files/flags/default/ad18d36083db7c874af0f3502090fcb72f9709ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c  .generated_files/flags/default/3d5bab46830190b13c707e1146b9565772d9a168 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c  .generated_files/flags/default/2ec242636a48cca8270f3fab59e81cc5cebc0178 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c  .generated_files/flags/default/9aecedd23f27518ffa934cdc122f54d12810534 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c  .generated_files/flags/default/a0ff5a676fa31797fcdbab8ecc130c53188a95d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c  .generated_files/flags/default/dfe1d0d76b045384e70d1ac06b81a8df5b56ae51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c  .generated_files/flags/default/fb10e63205d0861d471890d6f6d4f24d77b84d52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c  .generated_files/flags/default/bf388b612d5020ab37b3c103f493b31924e6b335 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c  .generated_files/flags/default/e32a7ecc4d98d23cb45dcaa917570fd67604f576 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c  .generated_files/flags/default/a2e2c96c8d37ba2292279a0de316c17cbb6fea04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c  .generated_files/flags/default/893fc699f7af8c0f3e0309b7ef79fdb4b8fc32f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c  .generated_files/flags/default/9d7c9a81a949d31546dbe48a18a433e5972d886b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c  .generated_files/flags/default/732bf9937b5feaa378e0f8a37417e8f71463b15f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c  .generated_files/flags/default/61e6c1cc8ed460e35819ae57350698c2f818f832 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c  .generated_files/flags/default/3937c54855c21b173523e58e2b015e34bd23c8d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c  .generated_files/flags/default/75ed9dc6bb6503a38b8177512cab660da663fd29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c  .generated_files/flags/default/8524354eb30666f6b36d63d6d329bc58653244d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c  .generated_files/flags/default/3765c6279d5e35785bc26215040fa94482afd64b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c  .generated_files/flags/default/5c727e2515bf0b29b855dd0d04bc7e54e4922031 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c  .generated_files/flags/default/9904586744ac804062ee1fc30659153a34485b12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/cb2f55aaaf992c8d2739719763f037f2e4ccc22b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865161661/plib_dmac.o: ../src/config/default/peripheral/dmac/plib_dmac.c  .generated_files/flags/default/1267631c8143277d2004bead1b1d148e2ff1f95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865161661" 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865161661/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865161661/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/1865161661/plib_dmac.o ../src/config/default/peripheral/dmac/plib_dmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/b87cfd5548b4fb5ce1d834d21c7320d4ce5e039b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/85656037938a4e1cc6405f918211ecab3acb1b71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/512a6b406bedd96b357651366d6c5eb3499a3531 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/818643a5b83bcdc6b978302ca909386f1eb383eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/bc6738a3a938d204d15dd5d3469995be1844ad7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o: ../src/config/default/peripheral/rtc/plib_rtc_clock.c  .generated_files/flags/default/1b4ed2c3bbd4fafb4530d6d81961ea67cea08081 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_clock.o ../src/config/default/peripheral/rtc/plib_rtc_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c  .generated_files/flags/default/5a692a5cf7db6a699cd279a1bc3395b6822bae05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/default/627fb8d22ec6c2b95aa7dfe2de05b74450591dd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/f6944d93c550e880fe33b4b0aad44ab7d2cc2b93 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/1beadc9cdf5ec7dfddcae7876a1682d817a46252 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/551d59277f1b025a095fa6d79f7a15b32cea87b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/7563a98ef7fea4185aa0ab40dd6ba9607c5548e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/flags/default/86a7d4111a3356263f6f6c0b546d428bc25d882e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/af399b19d71c4f43b589935d558de77a45b0138e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o: ../src/config/default/system/mqtt/src/sys_wincs_mqtt_service.c  .generated_files/flags/default/5e7199132203b8cf1d7fbe852a1d9ec7d6019e77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/692303624" 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o.d" -o ${OBJECTDIR}/_ext/692303624/sys_wincs_mqtt_service.o ../src/config/default/system/mqtt/src/sys_wincs_mqtt_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o: ../src/config/default/system/net/src/sys_wincs_net_service.c  .generated_files/flags/default/6e0c394f1776fafa12cc9e1533ea2f367de900b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1766557203" 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o.d" -o ${OBJECTDIR}/_ext/1766557203/sys_wincs_net_service.o ../src/config/default/system/net/src/sys_wincs_net_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/cbf72c145eb4c61e2c0b5727817efdfdcaa3fca4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o: ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c  .generated_files/flags/default/54ac1f68ef9c43d5f34ed13be8e7d3b2fa70eda0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/634868841" 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o.d" -o ${OBJECTDIR}/_ext/634868841/sys_wincs_wifi_service.o ../src/config/default/system/wifi/src/sys_wincs_wifi_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o: ../src/config/default/system/sys_wincs_system_service.c  .generated_files/flags/default/4092bec84a339e234912b3e4c4fef4519dcbd8b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_wincs_system_service.o ../src/config/default/system/sys_wincs_system_service.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/d082ac70507317c1245f1263241bbf1a3059bd7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/4fdee691a78b70629385764ac38e404d4260ce40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/87920986883c0583cf31ebfa0aebacb9d01a2e04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/ee27e576c7c1b79de1d9b0fe0e33c8c5e4db1e8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/8ae073bbffad2490e36b03dd3368b55efb63e5ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/df82ac7df15970cb18942c10189fd15da48b2d23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/timer_driver.o: ../src/timer_driver.c  .generated_files/flags/default/f4ef40cbea80bd726a3cd266b9e9f27f3fc79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ../src/timer_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/wincs02_driver.o: ../src/wincs02_driver.c  .generated_files/flags/default/d45b28d5d0f1a75b017f372848f4d10c3deab4ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ../src/wincs02_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rtc_driver.o: ../src/rtc_driver.c  .generated_files/flags/default/f3245b2a3376b894378991a403f39d49b55e02b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ../src/rtc_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/47855e7a7eb2896a6e4f7436d4a524981c62839e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/c8a95b79187cd3bea22ddedf459d27555eaff23f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8192,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
