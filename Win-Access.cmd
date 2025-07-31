@echo off
title Win Access V0.2
color 0a
:START
    cls
    echo !! The developer is not responsible for any damage caused by the use of this program !!
    echo !! USE AT OWN RISK !!
    echo .
    echo 1.ACCEPT    2.EXIT
    choice /C 12 /M "Enter your choice:"

    IF ERRORLEVEL 2 GOTO EXIT
    IF ERRORLEVEL 1 GOTO STARTUP

:STARTUP
    cls
    echo SELECT OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.WINDOWS ACTIVATOR
    echo 2.WINDOWS UTILITY
    echo 3.POWER MENU
    echo 4.CREDITS
    echo 5.EXIT
    echo .
    echo -------------------------
    choice /C 1234 /M "Enter your choice:"

    IF ERRORLEVEL 5 GOTO EXIT
    IF ERRORLEVEL 4 GOTO CREDITS
    IF ERRORLEVEL 3 GOTO POWERMENU
    IF ERRORLEVEL 2 GOTO WINDOWSUTILITY
    IF ERRORLEVEL 1	GOTO WINDOWSACTIVATOR

:WINDOWSACTIVATOR
    cls
    echo SELECT OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.ACTIVATE WINDOWS USING LICENSE
    echo 2.ACTIVATE WINDOWS FOR FREE
    echo 3.DEACTIVATE WINDOWS
    echo 4.GET BACK
    echo .
    echo -------------------------
    choice /C 1234 /M "Enter your choice:"

    IF ERRORLEVEL 4 GOTO STARTUP
    IF ERRORLEVEL 3 GOTO WINDOWSDEACTIVATOR
    IF ERRORLEVEL 2 GOTO WINDOWSSELECTOR
    IF ERRORLEVEL 1 GOTO WINDOWSACTIVATORMYLICENSE

:WINDOWSUTILITY
    cls
    echo SELECT OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.SYSTEM
    echo 2.NETWORK
    echo 3.GET BACK
    echo .
    echo -------------------------
    choice /C 123 /M "Enter your choice:"

    IF ERRORLEVEL 3 GOTO STARTUP
    IF ERRORLEVEL 2 GOTO WINDOWSUTILITYNET
    IF ERRORLEVEL 1 GOTO WINDOWSUTILITYSYS

:WINDOWSUTILITYSYS
    cls
    echo SELECT OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.SHOW MY WINDOWS LICENSE AND WINDOWS VERSION
    echo 2.SHOW MEMORY INFORMATIONS
    echo 3.SHOW BIOS INFORMATIONS
    echo 4.SHOW VM STATUS
    echo 5.SHOW SYSTEM REGISTRATION INFORMATIONS
    echo 6.GET BACK
    echo .
    echo -------------------------
    choice /C 123456 /M "Enter your choice:"

    IF ERRORLEVEL 6 GOTO WINDOWSUTILITY
    IF ERRORLEVEL 5 GOTO SYSUTILITY5
    IF ERRORLEVEL 4 GOTO SYSUTILITY4
    IF ERRORLEVEL 3 GOTO SYSUTILITY3
    IF ERRORLEVEL 2 GOTO SYSUTILITY2
    IF ERRORLEVEL 1	GOTO SYSUTILITY1

:SYSUTILITY1
    cls
    echo YOUR WINDOWS KEY:
    wmic path softwarelicensingservice get OA3xOriginalProductKey
    echo Your WINDOWS:
    systeminfo | findstr /B /C:"OS Version" /B /C:"OS Name" /B /C:"System Type" /B /C:"Product ID" /B /C:"Host Name"
    pause
    GOTO UTILITYEND

:SYSUTILITY2
    cls
    echo YOUR MEMORY INFORMATIONS:
    systeminfo | findstr /B /C:"Total Physical Memory" /B /C:"Avaliable Physical Memory" /B /C:"Virtual Memory: Max Size" /B /C:"Virtual Memory: Available" /B /C:"Virtual Memory: In Use"
    pause
    GOTO UTILITYEND

:SYSUTILITY3
    cls
    echo BIOS:
    systeminfo | findstr /B /C:"BIOS Version"
    pause
    GOTO UTILITYEND

:SYSUTILITY4
    cls
    echo VM:
    systeminfo | findstr /B /C:"Hyper-V Requirements"
    pause
    GOTO UTILITYEND

:SYSUTILITY5
    cls
    echo SYSTEM REGISTRATION:
    systeminfo | findstr /B /C:"System Manufacturer" /B /C:"Logon Server" /B /C:"Domain" /B /C:"Registered Owner" /B /C:"Registered Organization" /B /C:"System Locale" /B /C:"Input Locale"
    pause
    GOTO UTILITYEND

:WINDOWSUTILITYNET
    cls
    echo SELECT OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.NETWORK CARDS
    echo 2.LOCAL IP CONFIG
    echo 3.GET BACK
    echo .
    echo -------------------------
    choice /C 123 /M "Enter your choice:"

    IF ERRORLEVEL 3 GOTO WINDOWSUTILITY
    IF ERRORLEVEL 2 GOTO WINDOWSUTILITYNET2
    IF ERRORLEVEL 1 GOTO WINDOWSUTILITYNET1

:WINDOWSUTILITYNET1
    cls
    echo YOUR INSTALLED NETWORK CARDS:
    systeminfo | findstr /B /C:"Network Card"
    pause
    GOTO UTILITYEND

:WINDOWSUTILITYNET2
    cls
    echo YOUR IP CONFIGS:
    ipconfig /all
    pause
    GOTO UTILITYEND

:WINDOWSDEACTIVATOR
    cls
    echo WINDOWS DEACTIVATOR
    echo .
    echo MAKE SURE YOU HAVE A BACKUP OF YOUR LICENSE KEY BEFORE DEACTIVATING.
    echo YOUR LICENSE KEY:
    echo .
    wmic path softwarelicensingservice get OA3xOriginalProductKey
    echo .
    echo .
    echo CONTINUE DEACTIVATION ?
    echo .
    echo 1.YES 2.NO
    echo .
    choice /C 12 /M "Enter your choice:"

    IF ERRORLEVEL 2 GOTO WINDOWSSELECTOR
    IF ERRORLEVEL 1 GOTO WINDOWSDEACTIVE

:WINDOWSDEACTIVE
    cls
    slmgr /upk
    echo DEACTIVATING WINDOWS...
    echo DELETING LICENSE KEY...
    echo DONE!
    echo YOU NEED TO RESTART YOUR PC TO APPLY CHANGES.
    pause
    GOTO RESTART

:WINDOWSACTIVATORMYLICENSE
    cls
    echo ACTIVATION USING KEY.
    echo KEY EXAMPLE: AAAA1-BBBB2-CCCC3-DDDD4-EEEE5
    echo .
    set /p INPUTWINKEY=Enter your key:
    slmgr /ipk %INPUTWINKEY%
    slmgr //b /ato
    GOTO END

:WINDOWSSELECTOR
    cls
    echo !! SELECT WINDOWS YOU HAVE INSTALLED !!
    echo !! IF YOU CHOOSE OTHER WINDOWS ACTIVATION MAY BE FAIL !!
    echo YOUR WINDOWS:
    systeminfo | findstr /B /C:"OS Version" /B /C:"OS Name"
    echo .
    echo SELECT YOUR WINDOWS:
    echo .
    echo -------------------------
    echo .
    echo 1.WINDOWS 11
    echo 2.WINDOWS 10
    echo 3.WINDOWS 8
    echo 4.WINDOWS SERVER
    echo 5.GET BACK
    echo .
    echo -------------------------
    choice /C 12345 /M "Enter your choice:"

    IF ERRORLEVEL 5 GOTO STARTUP
    IF ERRORLEVEL 4 GOTO WINDOWSSERVER
    IF ERRORLEVEL 3 GOTO WINDOWS8
    IF ERRORLEVEL 2 GOTO WINDOWS10
    IF ERRORLEVEL 1	GOTO WINDOWS11

:WINDOWS11
    cls
    echo SELECT ACTIVATION OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.WINDOWS 11 HOME
    echo 2.WINDOWS 11 PROFESSIONAL
    echo 3.WINDOWS 11 ENTERPRISE
    echo 4.GET BACK
    echo .
    echo -------------------------
    echo .

    choice /C 1234 /M "Enter your choice:"

    IF ERRORLEVEL 4 GOTO WINDOWSSELECTOR
    IF ERRORLEVEL 3 GOTO 11ENTERPRISE
    IF ERRORLEVEL 2 GOTO 11PROFESSIONAL
    IF ERRORLEVEL 1	GOTO 11HOME


:11HOME
    echo SELECTED: WINDOWS 11 HOME
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk 	TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    slmgr /ato
    GOTO END

:11PROFESSIONAL
    echo SELECTED: WINDOWS 11 PROFESSIONAL
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    slmgr /ato
    GOTO END

:11ENTERPRISE
    echo SELECTED: WINDOWS 11 ENTERPRISE
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
    slmgr /ato
    GOTO END

:WINDOWS10
    cls
    echo SELECT ACTIVATION OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.WINDOWS 10 HOME
    echo 2.WINDOWS 10 PROFESSIONAL
    echo 3.WINDOWS 10 ENTERPRISE
    echo 4.GET BACK
    echo .
    echo -------------------------
    echo .

    choice /C 1234 /M "Enter your choice:"

    IF ERRORLEVEL 4 GOTO WINDOWSSELECTOR
    IF ERRORLEVEL 3 GOTO 10ENTERPRISE
    IF ERRORLEVEL 2 GOTO 10PROFESSIONAL
    IF ERRORLEVEL 1	GOTO 10HOME

:10HOME
    echo SELECTED: WINDOWS 10 HOME
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    slmgr /ato
    GOTO END

:10PROFESSIONAL
    echo SELECTED: WINDOWS 10 PROFESSIONAL
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    slmgr /ato
    GOTO END

:10ENTERPRISE
    echo SELECTED: WINDOWS 10 ENTERPRISE
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
    slmgr /ato
    GOTO END

:WINDOWS8
    cls
    echo SELECT ACTIVATION OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.WINDOWS 8 HOME
    echo 2.WINDOWS 8 PROFESSIONAL
    echo 3.GET BACK
    echo .
    echo -------------------------
    echo .

    choice /C 123 /M "Enter your choice:"

    IF ERRORLEVEL 3 GOTO WINDOWSSELECTOR
    IF ERRORLEVEL 2 GOTO 8PROFESSIONAL
    IF ERRORLEVEL 1	GOTO 8HOME

:8HOME
    echo SELECTED: WINDOWS 8 HOME
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk 46V6N-VCBYR-KT9KT-6Y4YF-QGJYH
    slmgr /ato
    GOTO END

:8PROFESSIONAL
    echo SELECTED: WINDOWS 8 PROFESSIONAL
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk V7C3N-3W6CM-PDKR2-KW8DQ-RJMRD
    slmgr /ato
    GOTO END

:WINDOWSSERVER
    cls
    echo SELECT ACTIVATION OPTION:
    echo .
    echo -----------------------------------
    echo .
    echo 1.WINDOWS SERVER 2016 DATACENTER
    echo 2.WINDOWS SERVER 2016 STANDARD
    echo 3.WINDOWS SERVER 2016 ESSENTIALS
    echo .
    echo -  -  -  -  -  -  -  -  -  -  -  -
    echo .
    echo 4.WINDOWS SERVER 2019 DATACENTER
    echo 5.WINDOWS SERVER 2019 STANDARD
    echo 6.WINDOWS SERVER 2019 ESSENTIALS
    echo .
    echo -  -  -  -  -  -  -  -  -  -  -  -
    echo .
    echo 7.GET BACK
    echo .
    echo -----------------------------------
    echo .

    choice /C 1234567 /M "Enter your choice:"

    IF ERRORLEVEL 7 GOTO WINDOWSSELECTOR
    IF ERRORLEVEL 6 GOTO SERVER2019ESSENTIALS
    IF ERRORLEVEL 5 GOTO SERVER2019STANDARD
    IF ERRORLEVEL 4	GOTO SERVER2019DATACENTER
    IF ERRORLEVEL 3 GOTO SERVER2016ESSENTIALS
    IF ERRORLEVEL 2 GOTO SERVER2016STANDARD
    IF ERRORLEVEL 1	GOTO SERVER2016DATACENTER

:SERVER2016DATACENTER
    echo SELECTED: WINDOWS SERVER 2016 DATACENTER
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk CB7KF-BWN84-R7R2Y-793K2-8XDDG
    slmgr /ato
    GOTO END

:SERVER2016STANDARD
    echo SELECTED: WINDOWS SERVER 2016 STANDARD
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
    slmgr /ato
    GOTO END

:SERVER2016ESSENTIALS
    echo SELECTED: WINDOWS SERVER 2016 ESSENTIALS
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk JCKRF-N37P4-C2D82-9YXRT-4M63B
    slmgr /ato
    GOTO END

:SERVER2019DATACENTER
    echo SELECTED: WINDOWS SERVER 2019 DATACENTER
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk WMDGN-G9PQG-XVVXX-R3X43-63DFG
    slmgr /ato
    GOTO END

:SERVER2019STANDARD
    echo SELECTED: WINDOWS SERVER 2019 STANDARD
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk N69G4-B89J2-4G8F4-WWYCC-J464C
    slmgr /ato
    GOTO END

:SERVER2019ESSENTIALS
    echo SELECTED: WINDOWS SERVER 2019 ESSENTIALS
    echo PLESE WAIT...
    slmgr //b /upk
    slmgr //b /skms kms8.msguides.com
    slmgr //b /ipk 	WVDHN-86M7X-466P6-VHXV7-YY726
    slmgr /ato
    GOTO END

:UTILITYEND
    cls
    echo SELECT YOUR OPTION:
    echo .
    echo -------------------------
    echo .
    echo 1.GET BACK TO WINDOWS UTILITY.
    echo 2.GET BACK TO MAIN MENU
    echo 3.EXIT
    echo .
    echo -------------------------
    choice /C 123 /M "Enter your choice:"

    IF ERRORLEVEL 3 GOTO EXIT
    IF ERRORLEVEL 2 GOTO STARTUP
    IF ERRORLEVEL 1	GOTO WINDOWSUTILITY

:POWERMENU
    cls
    echo POWER MENU
    echo.
    echo -------------------------
    echo .
    echo 1.POWER OFF 
    echo 2.RESTART 
    echo 3.RESTART TO BIOS
    echo 4.CANCEL SHUTDOWN/RESTART
    echo 5.GET BACK
    echo .
    echo -------------------------
    choice /C 12345 /M "Enter your choice:"

    IF ERRORLEVEL 5 GOTO STARTUP
    IF ERRORLEVEL 4 GOTO PWRCANCEL
    IF ERRORLEVEL 3 GOTO PWRBIOSRESTART
    IF ERRORLEVEL 2 GOTO PWRRESTART 
    IF ERRORLEVEL 1 GOTO PWRPOWEROFF

:PWRCANCEL
    cls 
    shutdown -a
    GOTO POWERMENU

:PWRPOWEROFF
    cls
    shutdown /s /t 0
    echo POWERING OFF...
    GOTO POWERMENU

:PWRRESTART
    cls
    shutdown /r /t 0
    echo RESTARTING...
    GOTO POWERMENU

:PWRBIOSRESTART
    cls
    shutdown /r /fw /t 0
    echo RESTARTING TO BIOS...
    GOTO POWERMENU

:END
    cls
    echo DONE!
    timeout 5
    echo Your PC now be restarted to apply changes.
    echo It is normal that after rebooting the computer will start downloading additional files.
    echo .
    echo Restart now?
    echo .
    echo 1. YES 
    echo 2. NO
    echo .
    choice /C 12 /M "Enter your choice 1 or 2:"

    IF ERRORLEVEL 2 GOTO EXIT
    IF ERRORLEVEL 1	GOTO RESTART

:CREDITS
    cls
    echo CREDITS
    echo .
    echo This program was created by @sirpatch.
    echo You can find more of my work on my github:
    echo https://github.com/sirpatch
    echo .
    echo If this script doesn't work for You, please check this GitHub page.
    echo https://github.com/sirpatch/Win-Access
    echo .
    echo If you have any questions or suggestions, feel free to contact me.
    pause
    GOTO STARTUP

:EXIT
    cls
    echo Thanks for using my program!
    echo Program made by @sirpatch
    echo https://linktr.ee/sirpatch
    timeout 15
    cls
    echo Exiting...
    timeout 2
    exit

:RESTART
    cls
    echo RESTARTING...
    shutdown /r /t 0