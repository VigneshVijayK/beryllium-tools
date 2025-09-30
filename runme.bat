@echo off
echo ================================
echo   Poco F1 (Beryllium) Flash Tool
echo ================================
echo.

:: Check device
fastboot getvar product 2>&1 | findstr /r /c:"^product: *beryllium"
if %errorlevel% neq 0 (
    echo Missmatching image and device
    exit /b 1
)

:: Erase and Flash commands
fastboot erase boot
fastboot flash crclist images\crclist.txt
fastboot flash sparsecrclist images\sparsecrclist.txt
fastboot flash xbl_ab images\xbl.img
fastboot flash xbl_config_ab images\xbl_config.img
fastboot flash abl_ab images\abl.img
fastboot flash tz_ab images\tz.img
fastboot flash hyp_ab images\hyp.img
fastboot flash devcfg_ab images\devcfg.img
fastboot flash storsec_ab images\storsec.img
fastboot flash bluetooth images\bluetooth.img
fastboot flash cmnlib_ab images\cmnlib.img
fastboot flash cmnlib64_ab images\cmnlib64.img
fastboot flash modem images\modem.img
fastboot flash dsp images\dsp.img
fastboot flash keymaster_ab images\keymaster.img
fastboot flash logo images\logo.img
fastboot flash misc images\misc.img
fastboot flash aop_ab images\aop.img
fastboot flash qupfw_ab images\qupfw.img
fastboot flash ImageFv images\imagefv.elf
fastboot flash vendor images\vendor.img
fastboot flash system images\system.img
fastboot flash userdata images\userdata.img
fastboot flash recovery images\recovery.img
fastboot flash cache images\cache.img
fastboot erase sec
fastboot flash cust images\cust.img
fastboot flash boot images\boot.img

:: Reboot device
fastboot reboot
echo.
echo ===== Flashing Completed =====
pause
