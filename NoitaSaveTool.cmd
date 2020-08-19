ECHO off
:welcome
cls
echo      ``.:y.  `...`                                                                  
echo   `...--/n/ ..----.`                             :-         `:                      
echo  `.---:-:y/so:------.`                         `.+s.      `.-hy                     
echo   ----:::ymd/`.-------.`                      `.--:/.   `.--:dy                     
echo   ---:::/no`    .-:-----.`                      .odmo   .--::dy                     
echo   ---:///n/       .-:::::/o+.                    +s-`   .--::ys                     
echo   --:://+n/        `-:::/smo`                     .-::::---::::::/sh-               
echo   -::://+n/       `--::::sn`         `.`        `-.+ssss---::hdsssy+`    `          
echo   -::://+n/       `---:::sn`     ``...-/      `..::    `---::dy        `.--.```     
echo   -::///+n/       `-:::::sn` ``.-s/-------.  .----:o/   ---::dy      `-:--------/:` 
echo   :://+/+n/       `-:::/:sn`.--::dy`.----:s.  ---::hd   ---:/dy    `/hds+/---::sms. 
echo   :///+/+n/       `-::://sn`---::ds  .--::/h- ---//hd   --://dy  `.+mh:` .---//ym   
echo   :///++on/       `:::://sn`--::/ds  `-:::/oy`--://hd   -:://dy `-:hd.    .--//ym   
echo   ://+++on/       `:/:///yn`-:://ds   `:://on:-::/+hd   -:://dy`-:/hh     -:://ym   
echo   :+++o+on/       `:///++yn.://++ms    -//+on:-//++hd   ://++dy.::/sh     -::/+hm   
echo   /+++o+on/       `/+++++yn.://++ms    `/++sn:://++hd   ://++dy.///+d/    -//++hm   
echo   /++ooosn/       `/++oooyn.//+ooms     :+omm-:++oohd   :++oody.//++ss`   ://+ohm   
echo   /o+ooosn/       `/++oooyn./++oohs     /ohm+ /++oodd   /++oody`/+++oh/   :++oohm   
echo   /ooosssn/       `+oossohn./++oooo/:``-sdms` :+osodd   /+ossdy -++++oo../+++oshm   
echo   /oossssm/       `+oossshn`.ossssssssydmy:   /oossdd   /+ossdy  :+ooooshm+oooshm   
echo `-osossssh/       `+oossshn`  -/osssydmy-   `-ossssyh``:ooossyy   `:oyhmh+/osssyd`  
echo  :yhhhhhhhy/      `+osssydm`     `-/yy-      :yhhhhhho.:yyhhhhyo`   .oh/` `+hhhhhs. 
echo                   `+ssydmh:                                                         
echo                   `oydmh:                                                           
echo                   `+mh:                                                             
echo                     .  
echo			ษออออออออออออออออออออออออออออออออออออออออป
echo			บ     noita save tool by hootzmctoke     บ
echo			บ         the time is currently:         บ
echo			บ		%time%		 บ
echo			บ         please select an option        บ
echo			บ         last updated - 08-18-20        บ
echo			ฬออออออออออออออออออออออออออออออออออออออออน
echo			บ            1. Backup a save            บ
echo			บ            2. Restore a save           บ
echo			บ            3. Delete saves             บ
echo			บ            4. Seed Editor              บ
echo			บ            5. Play game                บ
echo			บ            6. Quit                     บ
echo			ศออออออออออออออออออออออออออออออออออออออออผ
choice /n /c:123456 >nul
if errorlevel ==6 goto close
if errorlevel ==5 goto playnoita
if errorlevel ==4 goto seededit
if errorlevel ==3 goto savetool
if errorlevel ==2 goto restore
if errorlevel ==1 goto backupmain

:backupmain
cls
echo			ษออออออออออออออออออออออออออออออออออออออออป
echo			บ	  Noita Save Backup Tool	 บ
echo			บ	Please select option below       บ
echo			ฬออออออออออออออออออออออออออออออออออออออออน
echo			บ           1. Backup to Slot 1          บ
echo			บ           2. Backup to Slot 2          บ
echo			บ           3. Backup to Slot 3          บ
echo			บ           4. Overwrite All	         บ
echo			บ           5. Play Game                 บ
echo			บ           6. Main Menu                 บ
echo			บ           7. Quit                      บ
echo			ศออออออออออออออออออออออออออออออออออออออออผ
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO welcome
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO BALL
IF ERRORLEVEL ==3 GOTO B003
IF ERRORLEVEL ==2 GOTO B002
IF ERRORLEVEL ==1 GOTO B001
GOTO backupmain

:B001
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00A
pause
GOTO backupmain

:B002
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00B
pause
GOTO backupmain

:B003
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00C
pause
GOTO backupmain

:BALL
cls
echo Are you sure you wish to overwrite all slots with current game data?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO BALL0
IF ERRORLEVEL 1 GOTO backupmain
goto backupmain

:BALL0
cls
ECHO Overwriting all Slots with current Game Save Data
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Overwrite Complete - All Slots are based on Last Game Save!
pause 
GOTO backupmain


:restore
cls
echo			ษออออออออออออออออออออออออออออออออออออออออป
echo			บ	  Noita Save Restore Tool	 บ
echo			บ	Please select option below       บ
echo			ฬออออออออออออออออออออออออออออออออออออออออน
echo			บ          1. Restore From Slot 1        บ
echo			บ          2. Restore From Slot 2        บ
echo			บ          3. Restore From Slot 3        บ
echo			บ          4. Play Game                  บ
echo			บ          5. Main Menu                  บ
echo			บ          6. Quit                       บ
echo			ศออออออออออออออออออออออออออออออออออออออออผ
CHOICE /N /C:123456 >NUL
IF ERRORLEVEL ==6 GOTO close
IF ERRORLEVEL ==5 GOTO welcome
IF ERRORLEVEL ==4 GOTO playnoita
IF ERRORLEVEL ==3 GOTO R003
IF ERRORLEVEL ==2 GOTO R002
IF ERRORLEVEL ==1 GOTO R001

:R001
cls
ECHO Restoring Save From Slot 1
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 001 restored!
GOTO startgame
:R002
cls
ECHO Restoring Save From Slot 2
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 002 restored!
GOTO startgame
:R003
cls
ECHO Restoring Save From Slot 3
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 003 restored!
GOTO startgame

:savetool
cls
echo			ษออออออออออออออออออออออออออออออออออออออออป
echo			บ	  Noita Save Remove Tool	 บ
echo			บ	Please select option below       บ
echo			ฬออออออออออออออออออออออออออออออออออออออออน
echo			บ          1. Delete Save 001		 บ
echo			บ          2. Delete Save 002		 บ
echo			บ          3. Delete Save 003		 บ
echo			บ          4. Delete All Backups	 บ
echo			บ          5. Play Game                  บ
echo			บ          6. Main Menu                  บ
echo			บ          7. Quit                       บ
echo			ศออออออออออออออออออออออออออออออออออออออออผ
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO welcome
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO RMALL
IF ERRORLEVEL ==3 GOTO RM003
IF ERRORLEVEL ==2 GOTO RM002
IF ERRORLEVEL ==1 GOTO RM001

:RM001
cls
ECHO Clearing Save Slot 001
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
ECHO Save Slot 001 Empty!
goto savetool
:RM002
cls
ECHO Clearing Save Slot 002
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 002 Empty!
goto savetool
:RM003
cls
ECHO Clearing Save Slot 003
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 003 Empty!
goto savetool

:RMALL
cls
ECHO Clearing all backup saves (Current game is untouched)
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C"
ECHO All Slots Empty!
pause
goto savetool


:startGame
echo Do you wish to start Noita? [Y/N]:
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO welcome
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO playnoita

:playnoita
ECHO Launching Noita 
start steam://rungameid/881100
GOTO GameMonitor


:GameMonitor
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


:seededit
cls
echo			ษออออออออออออออออออออออออออออออออออออออออป
echo			บ	  Noita Seed Edit Tool	 	 บ
echo			บ	Please select option below       บ
echo			ฬออออออออออออออออออออออออออออออออออออออออน
echo			บ           1. Random Seed     	         บ
echo			บ           2. Set Seed        		 บ
echo			บ           3. See Current Seed          บ
echo			บ           4. Play Game	         บ
echo			บ           5. Main Menu                 บ
echo			บ           6. Quit                      บ
echo			ศออออออออออออออออออออออออออออออออออออออออผ
CHOICE /N /C:123456 >nul
IF ERRORLEVEL 6 GOTO close
IF ERRORLEVEL 5 GOTO welcome
IF ERRORLEVEL 4 GOTO playnoita
IF ERRORLEVEL 3 GOTO SeeSeed
IF ERRORLEVEL 2 GOTO SetSeed
IF ERRORLEVEL 1 GOTO RandomSeed

:SetSeed
::Find and Replace script allows the user to 
::define a file path, file name and a string 
::to find and replace so as to create a new file.
::
::Original file is backed up with an added extension of *.bak, in case
::the user finds the need to go back to the original.

@echo off
::Use the path from whence the script was executed as
::the Current Working Directory
set CWD=%~dp0

::***BEGIN MODIFY BLOCK***
::The variables below should be modified to the
::files to be changed and the strings to find/replace
::Include trailing backslash in _FilePath
set _FilePath=Path\To\File\
set _FileName=FileNameToModify
::_WrkFile is the file on which the script will make
::modifications.
set _WrkFile=BackupFileName
set OldStr="The string to be found and replaced, enclosed in double-quotes"
set NewStr="The new string to replace the value of OldStr, enclosed in double-quotes"
::***END MODIFY BLOCK***

::Set a variable which is used by the
::search and replace section to let us
::know if the string to be modified was
::found or not.
set _Found=Not found

SETLOCAL
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%_FilePath%%_FileName%" goto :NotFound

::If a backup file exists, delete it
if exist "%_FilePath%%_WrkFile%" (
    echo Deleting "%_FilePath%%_WrkFile%" 
    del "%_FilePath%%_WrkFile%" >nul 2>&1
    )

echo.
echo Backing up "%_FilePath%%_FileName%"...
copy "%_FilePath%%_FileName%" "%_FilePath%%_WrkFile%" /v

::Delete the original file. No worries, we got a backup.
if exist "%_FilePath%%_FileName%" del "%_FilePath%%_FileName%"
echo.
echo Searching for %OldStr% string...
echo.
for /f "usebackq tokens=*" %%a in ("%_FilePath%%_WrkFile%") do (
    set _LineChk=%%a
    if "!_LineChk!"==%OldStr% (
        SET _Found=Found 
        SET NewStr=!NewStr:^"=! 
        echo !NewStr!
        ) else (echo %%a)
        )>>"%_FilePath%%_FileName%" 2>&1

::If we didn't find the string, rename the backup file to the original file name
::Otherwise, delete the _WorkFile as we re-created the original file when the
::string was found and replaced.
if /i "!_Found!"=="Not found" (echo !_Found! && del "%_FilePath%%_FileName%" && ren "%_FilePath%%_WrkFile%" %_FileName%) else (echo !_Found! && del "%_FilePath%%_WrkFile%")
goto :welcome

:NotFound
echo.
echo File "%_FilePath%%_FileName%" missing. 
echo Cannot continue...
echo.
:: Pause script for approx. 10 seconds...
PING 127.0.0.1 -n 11 > NUL 2>&1
goto :welcome


:SeeSeed
ECHO See Seed Coming Soon
pause
goto welcome

:RandomSeed
ECHO Random Seed (Reset) Coming Soon 
pause
goto welcome

:quit
cls
echo Do you want to quit(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO welcome

:close
cls
echo See you soon! Press Any Key
timeout 3 >NUL
EXIT 

REM References and Sources 
REM https://stackoverflow.com/questions/34977487/batch-menu-outlines-and-design
REM https://superuser.com/questions/1360821/how-to-center-a-text-in-a-batch-output
REM https://stackoverflow.com/questions/162291/how-to-check-if-a-process-is-running-via-a-batch-script
REM https://en.wikipedia.org/wiki/Box-drawing_character
REM https://stackoverflow.com/questions/8177695/how-to-wait-for-a-process-to-terminate-to-execute-another-process-in-batch-file/8197920
REM https://stackoverflow.com/questions/5837418/how-do-you-get-the-string-length-in-a-batch-file/5841587
REM https://steamcommunity.com/sharedfiles/filedetails/?id=1889553978
REM https://stackoverflow.com/questions/12572718/how-to-change-text-color-of-cmd-with-windows-batch-script-every-1-second
REM http://waynes-world-it.blogspot.com
REM https://jrgraphix.net/r/Unicode/2500-257F
REM http://steve-jansen.github.io/guides/windows-batch-scripting/part-1-getting-started.html
REM https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/commands-by-server-role:welcome
REM https://superuser.com/questions/700458/looking-to-create-a-batch-file-capable-of-editing-a-line-or-word-in-a-text-fil
REM https://stackoverflow.com/questions/34090258/find-steam-games-folder
REM https://github.com/Dregu/NoitaScripts
REM https://noita-tools.herokuapp.com/