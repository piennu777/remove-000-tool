::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJieEkAAlXTcjrsSOR8
::ZQ05rAF9IBncCkqN+0xwdVsGHFbWcjrrSORKprmb
::ZQ05rAF9IAHYFVzEqQICLRZbWgHCbDvqZg==
::eg0/rx1wNQPfEVWB+kM9LVsJDAmDNWX0BLQIiA==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfMlzRvVOuLqvr9quh2MzYYI=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJHuF4AIEJ1txVAHCH2S0ELAO/O3p09iCr0ILUaJvKN/n6LGDL/YWqhW0Jdgozn86
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

title Remove 000

echo Developed by PIENNU
echo X: https://x.com/piennu_777
echo Github: https://github.com/piennu777
echo YouTube: https://www.youtube.com/@piennu_777
echo.
echo Undo what has been changed by 000.exe?
echo If you continue, you will be editing the registry, deleting files on the desktop, and deleting the entire Temp folder.
echo And the developer is not responsible for any damage caused by this tool.
echo.
choice /c yn /n /m "Are you sure you want to continue? Y/n"

if errorlevel 2 (
exit
) else (
cls

echo Developed by PIENNU
echo X: https://x.com/piennu_777
echo Github: https://github.com/piennu777
echo YouTube: https://www.youtube.com/@piennu_777
echo.
echo Start operation...
echo.

echo Deleting files in desktop.
for /r "%USERPROFILE%\Desktop" %%f in (*) do (
    findstr /i /m /c:"UR NEXT.txt" "%%f" > nul
    if !errorlevel! equ 0 (
        echo Deleting file: %%f
        del /f /q "%%f"
    )
)

echo Deleting files in Temp.
del /q /f "%temp%\*" 2>nul
for /d %%d in ("%temp%\*") do (
    rd /s /q "%%d" 2>nul
)

echo Task Kill in progress
taskkill /im runaway.exe /f

echo Deleting files in Temp.
del /q /f "%temp%\*" 2>nul
for /d %%d in ("%temp%\*") do (
    rd /s /q "%%d" 2>nul
)

echo Registry being deleted
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /f
reg add "HKEY_CLASSES_ROOT\txtfile\DefaultIcon" /ve /t REG_SZ /d "%SystemRoot%\system32\imageres.dll,-102" /f

echo OPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENME.rtf being deleted
del %USERPROFILE%\Desktop\OPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENME.rtf

echo Startup is being deleted
taskkill /im rniw.exe /f
del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\rniw.exe

echo Wallpaper is being set
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Windows\Web\Wallpaper\Windows\img0.jpg" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

shutdown /l
)
pause
