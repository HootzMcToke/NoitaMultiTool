@ECHO off
:welcome
cls
@ECHO off
echo                                   浜様様様様様様様様様様様様様様様様様様様融
echo                                   �            Noita Save Tool             �
echo                                   �             by HootzMcToke             �
echo                                   �         The time is currently:         �
echo                                   �		%time%		   �
echo                                   �         Please select an option        �
echo                                   麺様様様様様様様様様様様様様様様様様様様郵
echo                                   �            1. Backup a Save            �
echo                                   �            2. Restore a Save           �
echo                                   �            3. Delete Saves             �
echo                                   �            4. Play Game                �
echo                                   �            5. Quit                     �
echo                                   藩様様様様様様様様様様様様様様様様様様様夕
@ECHO OFF
:welcome
CHOICE /N /C:12345 /M ""%1
IF ERRORLEVEL ==5 GOTO quit
IF ERRORLEVEL ==4 GOTO playnoita
IF ERRORLEVEL ==3 GOTO savetool
IF ERRORLEVEL ==2 GOTO restoresave
IF ERRORLEVEL ==1 GOTO backupsave

:backupsave
@ECHO off
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\"
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\save00" /s /i /E /q /y
Xcopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save_shared" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\save_shared" /s /i /E /q /y
@ECHO Backup Complete
GOTO startgame

:restoresave
@ECHO OFF
Xcopy /q/y/E "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup\*" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\"
@ECHO Backup save restored!
GOTO startgame

:savetool
CHOICE /N /C ABCM /M "Would you like to (C)Remove Current Save (B)Remove Backup Save (A)ll (M)ain Menu:"%1
IF ERRORLEVEL 4 GOTO welcome
IF ERRORLEVEL 3 GOTO removecurrent
IF ERRORLEVEL 2 GOTO removebackup
IF ERRORLEVEL 1 GOTO removeall
GOTO savetool

:removecurrent
ECHO Removing current save
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save_shared"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
@ECHO Removal Complete
goto savetool

:removebackup
ECHO Removing backup save 
rmdir /q/s ""%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup"
@ECHO Removal Complete
goto savetool

:removeall
ECHO Removing all saves 
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\SaveBackup"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save_shared"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00"
@ECHO Removal Complete
goto savetool

:startGame
CHOICE /N /C YNM /M "Do you wish to start Noita? [Y/N]:"%1
IF ERRORLEVEL 3 GOTO welcome
IF ERRORLEVEL 2 GOTO quit
IF ERRORLEVEL 1 GOTO playnoita

:playnoita
ECHO Launching Noita 
start steam://rungameid/881100
@ECHO OFF
GOTO GameMonitor


:GameMonitor
@echo off
SETLOCAL EnableExtensions

set EXE=noita.exe

FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound

goto ProcessNotFound

:ProcessFound
echo %EXE% is running
goto GameMonitor
:ProcessNotFound
echo %EXE% is not running
goto welcome


:quit
ECHO See you soon!
pause 
EXIT 

//References and Sources 
//https://stackoverflow.com/questions/34977487/batch-menu-outlines-and-design
//https://superuser.com/questions/1360821/how-to-center-a-text-in-a-batch-output
//https://stackoverflow.com/questions/162291/how-to-check-if-a-process-is-running-via-a-batch-script
//https://en.wikipedia.org/wiki/Box-drawing_character
//https://stackoverflow.com/questions/8177695/how-to-wait-for-a-process-to-terminate-to-execute-another-process-in-batch-file/8197920
//https://stackoverflow.com/questions/5837418/how-do-you-get-the-string-length-in-a-batch-file/5841587
//https://steamcommunity.com/sharedfiles/filedetails/?id=1889553978
//https://stackoverflow.com/questions/12572718/how-to-change-text-color-of-cmd-with-windows-batch-script-every-1-second