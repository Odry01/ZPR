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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/i2c/src/drv_i2c.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/pm/plib_pm.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/rtc/plib_rtc_timer.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/default/peripheral/tc/plib_tc3.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/dma/sys_dma.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/mcp9808_driver.c ../src/wincs02_driver.c ../src/rtc_driver.c ../src/console_driver.c ../src/timer_driver.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/158385033/drv_i2c.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/829342769/plib_pm.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ${OBJECTDIR}/_ext/1360937237/console_driver.o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/158385033/drv_i2c.o.d ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/829342769/plib_pm.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/14461671/sys_dma.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o.d ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d ${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d ${OBJECTDIR}/_ext/1360937237/console_driver.o.d ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/158385033/drv_i2c.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/829342769/plib_pm.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ${OBJECTDIR}/_ext/1360937237/console_driver.o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/default/driver/i2c/src/drv_i2c.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/pm/plib_pm.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/rtc/plib_rtc_timer.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/default/peripheral/tc/plib_tc3.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/dma/sys_dma.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../src/mcp9808_driver.c ../src/wincs02_driver.c ../src/rtc_driver.c ../src/console_driver.c ../src/timer_driver.c ../src/main.c ../src/app.c

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
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/flags/default/433ad28ac53b73385f4460a2eed9adbf171a3ee8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c  .generated_files/flags/default/84b0fcb7312468b03c95f0f89b5c25299a3ba525 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c  .generated_files/flags/default/a20bd43c6d0455cbc155f6f37353eb3a138a2590 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmds.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c  .generated_files/flags/default/b86df388a4a092c6caa9b7dce3a2f3a11d480524 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c  .generated_files/flags/default/a49be0a93666c538f7c7508dea3fea8ac8f89212 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_dev.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c  .generated_files/flags/default/b3bb4673dd64e6a1fcaece002cea7fc949df3ca2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_dev.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c  .generated_files/flags/default/d770e7ca4ad5045f41baef9e2dcaa9077424a360 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_tables.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c  .generated_files/flags/default/9ccd82c3e92fe4e259018fb60b8da8dc21a33eba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_tables.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_socket.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c  .generated_files/flags/default/6c1015952fc5aec93c69c1caea0d0b50bcd746b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_socket.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc.c  .generated_files/flags/default/168b29889a22370f33b31f2ac66df6fd4d8d425 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c  .generated_files/flags/default/6869620e1a4e1c3e0812df52892315b20fb68879 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c  .generated_files/flags/default/37aecd2c704a8caaa0d0c47bc47ddfbcc737b407 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c  .generated_files/flags/default/6d6ebe9dfe1f86cd15ca9b76fb40b4723f97245f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c  .generated_files/flags/default/3e447695ef262cfbbc58f9c659ed5b0ea964e8b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c  .generated_files/flags/default/12e49298da5db3daa30ea40afb23689b1ded94fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c  .generated_files/flags/default/7a802f7fd37d206d56369848b6c1c3bb713cb0c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c  .generated_files/flags/default/48ea793b49c0c21254e1cf6eb55437472a5ef3a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c  .generated_files/flags/default/c162e477b8407a88a4579301be377c35cbcb2efa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c  .generated_files/flags/default/2e1a834f448ae7327918dec670c079a2368d23e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c  .generated_files/flags/default/b90cc4e39dc3d1147509d3115cfa2c8ccf8bb728 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c  .generated_files/flags/default/b12d4ca85e55574a1faca199331110919567feb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c  .generated_files/flags/default/d155b46037164b4b5091bf70f79b1d6a12451023 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c  .generated_files/flags/default/7fea3666801d3d66e896fd64e8e23aadf013b7e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c  .generated_files/flags/default/e816fbe313a69526028b3920be86f93bd3ec1ac2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c  .generated_files/flags/default/899537fa04e74318b6e58496efa571927015b995 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c  .generated_files/flags/default/aa34fb16b336a60b6aad9a7391408e62c89614d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c  .generated_files/flags/default/da8df6a8e2b393b094e979cb08a13c1de92aeea4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c  .generated_files/flags/default/9907e1e9b46a4cd84f12f81b373e554a488c819d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c  .generated_files/flags/default/102f764c24af4cc2c199692a97e3ac2363232079 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c  .generated_files/flags/default/7fc7881508cdfa55ded9e8c2697e48464106d7f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c  .generated_files/flags/default/c699fff6ac4e40f06d87ffcef3c42eb9bdf09048 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c  .generated_files/flags/default/750aad88d48fa7608d23cb54bfc9290a74829765 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/57b8e277f3759ffe99d9341810b8c7bb0dc9b8bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/a92d2a545c3df3d0bf5f2378ec75b446c81afc46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/baf61eb29d122d6393c6720ce8be0a64193ae84f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/f710dea437c3220f6818650201375b8695dbe373 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/bd35efaab34a6678cf4dee7aefe283e1c86b39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342769/plib_pm.o: ../src/config/default/peripheral/pm/plib_pm.c  .generated_files/flags/default/17d1331291feab5d5b8ce011d0a552b78f00a539 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342769" 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/829342769/plib_pm.o.d" -o ${OBJECTDIR}/_ext/829342769/plib_pm.o ../src/config/default/peripheral/pm/plib_pm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/303ad34b8ef74a7743ce1919335624d8b85689e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o: ../src/config/default/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/default/f1f6310b6cec8438836a5c24a60215e0d872f02d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ../src/config/default/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/default/f6ad50252fa274e21b33d942a2c0a604d208e640 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c  .generated_files/flags/default/549151b04b1687ba140857b8be57e4b9bae415e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/default/d99e66d13ce68b61aefc9b24a993dcf8767efece .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/flags/default/ae0213bfe7ada72d9f17b7b884dd254a22ff739b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/b1e4478d522d3d7264234a60c831b133ef5503e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/39337fc577d498ed34a0aa0f2b10c2ecf9ea4673 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/28e08a21d03243c2d663b9c3266e86176563cbb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/flags/default/9719fc2ee1aaca86b066b0e4ab57c46c3deea88e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/4929717930879b6e7d155293082e8a9f881ba4ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/flags/default/d9adc8da82811cd6fa39dbceb3e5e6f3f1a9a82f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/a5b2425134249dd7c737eaae3702c20b28c6f07b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/c132e5e9dcff18e9c4b4ba57c24d6e80a677750 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/38a9c732085044860272926fba58647b10fead6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/7e18ca2ac3547690675e67dd23caace49cc205b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/4928134d0607694ac04b92acd3fdd34f3db6b304 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/da2f143d0cbecc865b99acf28be1b83f3635d88a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/3687b6bb8c7a30afef9a10fac091ac8aaec29ae5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o: ../src/mcp9808_driver.c  .generated_files/flags/default/e40f306ff3dd0c2dc3415617ce9449a3f649b482 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o ../src/mcp9808_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/wincs02_driver.o: ../src/wincs02_driver.c  .generated_files/flags/default/3a0ea6352fd31de255722520efa93b8c9f9ff9ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ../src/wincs02_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rtc_driver.o: ../src/rtc_driver.c  .generated_files/flags/default/28c5a480c2d4923065ee0154f8492ad1e6f528fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ../src/rtc_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/console_driver.o: ../src/console_driver.c  .generated_files/flags/default/5ec01936a3aced33eec84952b2faf12c8cb0f64f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/console_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/console_driver.o ../src/console_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/timer_driver.o: ../src/timer_driver.c  .generated_files/flags/default/ce9ca81b60189e58088d23f35feba300e2ef7b6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ../src/timer_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4e74e79bf8a9fcd4336488dff602ab3e530255d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/2c3624208fc28b91508a930a89c5299fe8eb5b97 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/flags/default/5a7a31d97c089cd3287107931c5190409cf98e70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c  .generated_files/flags/default/52a246ebe9a8df9fd134a1e50445d613ec9aa0cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_spi.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o: ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c  .generated_files/flags/default/ecc33d4c4b3ffba0b026b29b98fc97ac16e64823 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/622324608" 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o.d" -o ${OBJECTDIR}/_ext/622324608/wdrv_winc_eint.o ../src/config/default/driver/wifi/wincs02/dev/wdrv_winc_eint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmds.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c  .generated_files/flags/default/9781963a6b6bf5f93f2c21f9efa2691598559d19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmds.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmds.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmds.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmds.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c  .generated_files/flags/default/f6fd07d24cd2a5e340c103443d216b3cf7d8488d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_cmd_req.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_cmd_req.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_dev.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c  .generated_files/flags/default/9616df47b3612866f6ba4c9cedc315add8052d62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_dev.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_dev.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_dev.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_dev.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c  .generated_files/flags/default/6946a99bce01fcf0f8042753d2daae768f715f08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_sdio_drv.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_sdio_drv.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_tables.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c  .generated_files/flags/default/366d2590c728cc4d4081615fc919c1e557c2718 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_tables.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_tables.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_tables.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_tables.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1857064221/winc_socket.o: ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c  .generated_files/flags/default/96f6a5c88af021f616b8196446da8b438721b406 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857064221" 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857064221/winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1857064221/winc_socket.o.d" -o ${OBJECTDIR}/_ext/1857064221/winc_socket.o ../src/config/default/driver/wifi/wincs02/nc_driver/winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc.c  .generated_files/flags/default/30831acf7d9ae4c0e9dff26254bc7eb4ab6f05e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c  .generated_files/flags/default/f7a572887720d6bff8b32c0d07606427a9a6214 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_assoc.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_assoc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c  .generated_files/flags/default/e2380fe39597293babf2f7b284922820b0fb24d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_authctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_authctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c  .generated_files/flags/default/e1dcb56cd3827f8fc9b24cc1ca571d4bc7fa8188 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssctx.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssctx.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c  .generated_files/flags/default/9c1c549efa7f8d3762b33b56ccefc26a45c47982 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_bssfind.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_bssfind.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c  .generated_files/flags/default/58f42b446c6b5e7a334719f5b179904a5a276c2e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dns.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dns.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c  .generated_files/flags/default/980ce6b0f622c41c63400921e61aa1695b6db33e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_dhcps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_dhcps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c  .generated_files/flags/default/2d7a0b07c6bd17b43cb8680af7fe9c713d13e4f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_extcrypto.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_extcrypto.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c  .generated_files/flags/default/511e729605ee804c0ec522fb943facd3a44d12b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_file.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_file.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c  .generated_files/flags/default/d74500a43a634f8cc0eb8ddb7898bb828ce45b0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_mqtt.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_mqtt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c  .generated_files/flags/default/cf82307c7aaf9b51a50e58cb9c8f2df48c64b249 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_netif.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_netif.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c  .generated_files/flags/default/ff14fcd551e15864d5d615b99f90821393ffda09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_ota.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_ota.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c  .generated_files/flags/default/e2442aba1497d2ba8098876fc4a49c7df9b23aad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_pps.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_pps.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c  .generated_files/flags/default/ce6a50f61541a1a000990c74578efda42a4fee40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_nvm.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_nvm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c  .generated_files/flags/default/43ad3c262e278571301e55cf01d2530305d1b30c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_prov.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_prov.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c  .generated_files/flags/default/dfc38d91815dea6a0e9567da6347cc691691e058 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sntp.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sntp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c  .generated_files/flags/default/c1ef64dfd43ed6429b4de241b50f26ea4e0d4e2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_socket.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_socket.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c  .generated_files/flags/default/4e74a45efb5dbe68bcfbe9cb9a47f45539d5a230 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_softap.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_softap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c  .generated_files/flags/default/be0e41221f04b91cc6c71dd03833b36dac6cd284 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_sta.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_sta.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c  .generated_files/flags/default/17bb343c708ed67f638974474a1d6070fb3a76df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_systime.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_systime.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c  .generated_files/flags/default/2ccdc3120dd44aee0723551bb3a61143f9c5d17d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_tls.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_tls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c  .generated_files/flags/default/617bff5d84505088a854b36e2861298a70440115 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_utils.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o: ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c  .generated_files/flags/default/d265b80f7115225943a93797b18ce751396037ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1706628858" 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o.d" -o ${OBJECTDIR}/_ext/1706628858/wdrv_winc_wifi.o ../src/config/default/driver/wifi/wincs02/wdrv_winc_wifi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/6b42c6eb22b9d4a1bcf7d9beb47cab4ae2ab968e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/c35bc4aa0a56f5017360f6b4228ce8706a0956c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/af4cd176964dfaba132f356799046efe323138a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/2cbe2b7f959c1bd8c824e9c20bf5f26d625447b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/beb120f45c59768282f23d6d655f92008c6b2bfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342769/plib_pm.o: ../src/config/default/peripheral/pm/plib_pm.c  .generated_files/flags/default/4f8bdc40ea7c80e7d43dfbe254ff96d2b3edc8df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342769" 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342769/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/829342769/plib_pm.o.d" -o ${OBJECTDIR}/_ext/829342769/plib_pm.o ../src/config/default/peripheral/pm/plib_pm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/b67f49c27f4c433012f1184339fb55a7984d12d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o: ../src/config/default/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/default/5b585a79c201da1f7ed6e93f004d36fe19a4e5b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ../src/config/default/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c  .generated_files/flags/default/7567610b0bf6f90fce35356525c4548175f059a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom3_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom3_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c  .generated_files/flags/default/2b1a8e924d69120848b054e72806779512ffa7c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom0_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom0_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/default/6687ba5d427285ad0757cacb4a407abbc3a3d398 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom5_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829342655/plib_tc3.o: ../src/config/default/peripheral/tc/plib_tc3.c  .generated_files/flags/default/6f0970b22c9b3fcbde88da2a003a2615e352a5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc3.o ../src/config/default/peripheral/tc/plib_tc3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/b444d19fe7381a58a085dd26b69f4062f2d89252 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/flags/default/8288b53ef195d94c68d6e32b58a225fb87ce7cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/flags/default/c35c5480a2664d3b304e98f67cc11e66e2ac5477 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/flags/default/e9cfdb17a06f65af24fa2273094768b6b392566 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/f8756bed6860c531fd1a5ad3432aa53c3a85c6b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/flags/default/2c5cae7997d24d396be60f92dea1720aa2c7d81a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/ffe1858a4fb378a6ebecf738e55d65d5cfd7df44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/2b9e19006c77ee6cf42e768d328448ee51099ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/8b3c5f87f7bb09685b0f7ac68a60272a54cb9676 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/7d2d48d7c87a434c35a6d4af1d03f782c1044b42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/99f6f7259b5f93ad6d8b29f65a0a8355794e6621 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/b85e1e7e703e0979514233f776286acb811c0bae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/adbd56ac734aff4f97f2719c3a6f36bb985335e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o: ../src/mcp9808_driver.c  .generated_files/flags/default/67264da902695c232006e74edc182eb4eef216c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/mcp9808_driver.o ../src/mcp9808_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/wincs02_driver.o: ../src/wincs02_driver.c  .generated_files/flags/default/602bbcbef061234abed985c38d04ad0178b653db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/wincs02_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/wincs02_driver.o ../src/wincs02_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rtc_driver.o: ../src/rtc_driver.c  .generated_files/flags/default/d9397c71c32b3a43ce7930bdce984b83b52ed380 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rtc_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rtc_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/rtc_driver.o ../src/rtc_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/console_driver.o: ../src/console_driver.c  .generated_files/flags/default/aebc2956af518840d5db304ea6ee6700fbc27434 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/console_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/console_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/console_driver.o ../src/console_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/timer_driver.o: ../src/timer_driver.c  .generated_files/flags/default/8077303d4c6b6b4ad4a9048ff44fae271c4f4fc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timer_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/timer_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/timer_driver.o ../src/timer_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/f98c1270f7449b3dbebb351608396d25d82439e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/120284c2e3c43149cc65b7564f2cb3994273a895 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O2 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/driver/wifi/wincs02/include/" -I"../src/config/default/driver/wifi/wincs02/include/dev" -I"../src/config/default/driver/wifi/wincs02/include/nc_driver" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/MQTT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
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
