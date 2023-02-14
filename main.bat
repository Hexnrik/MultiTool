@echo off

:menu
title Client - Menu
cls
color 5
echo -----------------------------------
echo -                                 -
echo -          Client Menu            -
echo -       created by Hexnrik        -
echo -                                 -
echo -----------------------------------
echo.
echo.
echo _____________________________________________________________________________________
echo.
echo Willkommen %USERNAME% im Hexnrik Dashboard / Menu endscheide dich von Folgenden Tools
echo.
echo        [A] Ping Domain / IP                                 [B] See your IP
echo.
echo        [C] (%=§(%(&=$§("?(&                                 [D] Destroy your PC
echo.
echo        [F] Time / Change                                    [G] Shutdown your PC
echo.
echo        [H] Link to Hexnrik                                  [Z] Exit
echo _____________________________________________________________________________________
:actions
set /p menu= Schreibe den Buchstaben deiner Wahl:
if %menu% == A goto deaktiviert
if %menu% == B goto ip
if %menu% == C goto deaktiviert
if %menu% == D goto deaktiviert
if %menu% == F goto deaktiviert
if %menu% == G goto deaktiviert
if %menu% == H goto link
if %menu% == Z exit
color c
echo Der Buchstabe steht nicht zur Auswahl!
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
goto menu

:ip
ipconfig
echo Zurück zum Menu? Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
goto menu

:link
start https://GitHub.com/Hexnrik
cls
goto menu

:deaktiviert
cls
color a
echo -----------------------------------
echo -                                 -
echo -          Client Error           -
echo -  Diese Modul ist Deaktiviert    -
echo -                                 -
echo -----------------------------------
echo.
echo Um Weiter zu kommen drücke eine Taste!
pause
goto Menu