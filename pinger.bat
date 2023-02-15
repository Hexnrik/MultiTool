@echo off
color 5
cls
title Client - Domain Pinger
echo -----------------------------------
echo -                                 -
echo -      Client Domain Pinger       -
echo -       created by Hexnrik        -
echo -                                 -
echo -----------------------------------
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
cls
:menu
echo __________________________________
echo.
echo  [A] Domain Pinger [B] Exit
echo.
echo __________________________________
:actions
set /p menu= Schreibe den Buchstaben deiner Wahl:
if %menu% == A goto ping
if %menu% == B goto exit
color c
echo Der Buchstabe steht nicht zur Auswahl!
echo Einfach einmal Enter oder eine andere Beliebige Taste Drücken.
pause
goto menu

:ping
cls
color a
echo Schreibe eine Domain / IP die du AnPingen willst!
set /P DomainIP=
cls
ping %DomainIP%
pause
cls
goto menu

:exit
cls 
start main.bat
exit
