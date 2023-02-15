@echo off
color 5
cls
title Client - Color
echo -----------------------------------
echo -                                 -
echo -          Client Color           -
echo -       created by Hexnrik        -
echo -                                 -
echo -----------------------------------
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
cls
:menu
echo __________________________________
echo.
echo  [A] Color [B] Exit
echo.
echo __________________________________
:actions
set /p menu= Schreibe den Buchstaben deiner Wahl:
if %menu% == A goto color
if %menu% == B goto exit
color c
echo Der Buchstabe steht nicht zur Auswahl!
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
goto menu

:color
cls 
color help
pause
cls
goto menu

:exit
cls 
start main.bat
exit
