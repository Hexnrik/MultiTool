@echo off
color 5
cls
title Client - Color
echo -----------------------------------
echo -                                 -
echo -         Client Shutdown         -
echo -       created by Hexnrik        -
echo -                                 -
echo -----------------------------------
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
cls
:menu
echo __________________________________
echo.
echo  [A] Shutdown [B] Abrechen
echo.
echo          [C] Exit
echo.
echo __________________________________
:actions
set /p menu= Schreibe den Buchstaben deiner Wahl:
if %menu% == A goto shutdown
if %menu% == B goto broke
if %menu% == C goto exit
color c
echo Der Buchstabe steht nicht zur Auswahl!
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
goto menu

:shutdown
cls
color a
echo Schreibe wann dein PC runterfahren soll in Sekunden!
set /P time=
cls
shutdown -s -t %time%
pause
cls
goto menu

:broke
cls
color A
shutdown -A
echo Der Shutdown wurde abgebrochen.
pause
goto menu

:exit
cls 
start main.bat
exit
