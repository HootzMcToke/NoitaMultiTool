:: Variables - File Main
::
::
echo off
mode con:cols=80 lines=50
setlocal EnableDelayedExpansion
setlocal enableextensions
set title=                ∫  Noita Tool by HootzMcToke Version 3.0  ∫
set LAST=                ∫      Build time %~t0     ∫
title %title%
::
::
:: Variables - Menu Box Parts
::
::
SET SELECT=		∫         Select an option below          ∫
SET BOXTOP=		…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª
SET BOXMID=		ÃÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ
SET BOXBOT=		»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº

SET BKSELECT=		∫       Noita Game Data Backup Tool       ∫
::
::
:: Variables - Options for Menus (They need to be above the logo and menu box)
::
::
set MM=^
                ∫             1. Backup a save            ∫                     ^
                ∫             2. Restore a save           ∫                     ^
                ∫             3. Delete saves             ∫                     ^
                ∫             4. Seed Editor              ∫                     ^
                ∫             5. Play game                ∫                     ^
                ∫             6. Quit                     ∫
::
::
set BKM=^
                ∫           1. Backup to Slot 1          ∫                  ^
                ∫           2. Backup to Slot 2          ∫                  ^
                ∫           3. Backup to Slot 3          ∫                  ^
                ∫           4. Overwrite All             ∫                  ^
                ∫           5. Play Game                 ∫                  ^
                ∫           6. Main Menu                 ∫                  ^
                ∫           7. Quit                      ∫
::
::
set BKR=^
                    ∫          1. Restore From Slot 1        ∫                  ^
                    ∫          2. Restore From Slot 2        ∫                  ^
                    ∫          3. Restore From Slot 3        ∫                  ^
                    ∫          4. Play Game                  ∫                  ^
                    ∫          5. Main Menu                  ∫                  ^
                    ∫          6. Quit                       ∫
::
::
:: Variables -- Logo
::
::
set logo=^

 [31m    ∞≤     ≤≤∞            [33m                [31m       [33m               [31m               ^
 [31m   ≤≤≤≤≤≤  ≤≤≤≤≤≤         [33m                [31m       [33m               [31m               ^
 [31m ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤       [33m                [31m  ≤≤≤≤ [33m      ≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤≤≤  ≤≤≤≤≤≤≤≤     [33m                [31m ≤≤≤≤≤ [33m    ≤≤≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤      ≤≤≤≤≤≤≤≤   [33m                [31m   ≤≤≤≤[33m   ≤≤≤≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤≤[33m                [31m    ≤[33m     ≤≤≤≤≤≤      [31m               ^
 [31m ≤≤≤≤≤≤≤≤         ≤≤≤≤≤≤≤∞[33m                [31m    ∞ [33m≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤±[31m              ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m         ≤      [31m   ≤  [33m≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ [31m      ≤        ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m     ≤≤≤≤≤≤     [31m ≤≤≤≤  [33m   ≤≤≤≤≤≤  [31m       ≤≤≤≤≤≤≤     ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤≤≤≤≤≤≤≤   [31m≤≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m     ≤≤≤≤≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m   ≤≤≤≤  ≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤   ≤≤≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m  ≤≤≤≤    ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤    ≤≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m ≤≤≤≤     ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤    ≤≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤     ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤    ≤≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤     ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤     ≤≤≤≤≤[31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤≤    ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤     ≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m≤≤≤≤≤≤≤   ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m≤≤≤≤≤≤≤≤  ≤≤≤≤≤ [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m ≤≤≤≤≤≤  ≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m∞≤≤≤≤≤≤≤≤≤≤≤±   [31m ≤≤≤≤≤≤[33m   ≤≤≤≤≤≤  [31m  ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤        ≤≤≤≤≤≤≤≤ [33m   ≤≤≤≤≤≤≤≤     [31m≤≤≤≤≤≤≤[33m  ≤≤≤≤≤≤≤  [31m    ≤≤≤≤≤ ≤≤≤≤≤≤≤  ^
 [31m ≤≤≤≤≤≤≤≤≤≤      ≤≤≤≤≤≤≤≤ [33m       ≤≤       [31m≤≤≤≤≤≤≤≤[33m ≤≤≤≤≤≤≤≤ [31m     ≤     ≤≤≤≤≤≤  ^
 [31m               ≤≤≤≤≤≤     [33m                [31m       [33m            [31m
::
::
:: Sections
::
::
:MainMenu
cls
ECHO !logo!
echo.
ECHO [43m‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !MM!
ECHO !BOXBOT!

pause


:BKMAIN
cls
ECHO !logo!
echo.
ECHO [43m‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !BKSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !BKM!
ECHO !BOXBOT!

pause




