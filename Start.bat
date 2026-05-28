@echo off
mode con: lines=42 cols=136
chcp 65001
setlocal EnableDelayedExpansion
title Minicubes beta 1
color b0
mode con: lines=42 cols=136
:menu
cls
echo.
echo.
echo.
echo.
echo                                    ███    ███ ██ ███    ██ ██  ██████ ██    ██ ██████  ███████ ███████ 
echo                                    ████  ████ ██ ████   ██ ██ ██      ██    ██ ██   ██ ██      ██      
echo                                    ██ ████ ██ ██ ██ ██  ██ ██ ██      ██    ██ ██████  █████   ███████ 
echo                                    ██  ██  ██ ██ ██  ██ ██ ██ ██      ██    ██ ██   ██ ██           ██ 
echo                                    ██      ██ ██ ██   ████ ██  ██████  ██████  ██████  ███████ ███████                                                            
Batbox /g 0 23 /c 0xa2 /d "                                                                                                                                        " /g 0 24 /c 0x44 /d "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "
batbox /g 50 15 /c 0xf0 /d "     Play with minimal graphics     "
batbox /g 50 17 /c 0xf0 /d "     Play with maximum graphics     "
getinput /m 50 15 85 15    50 17 85 17  /h 90 90 /t 1000
if %errorlevel%==1 echo Batbox>sy\beta_3\systema.dll&&set GT=0&&goto :x
if %errorlevel%==2 echo.>sy\beta_3\systema.dll&&goto :x2
goto menu
:x
cls
set MAX2=134&set MIN2=1
set A2=%time%
set A2=%A2:~-1%
set /a randomik1=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=31&set MIN2=21
set A2=%time%
set A2=%A2:~-1%
set /a iron_posy=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=1&set MIN2=134
set A2=%time%
set A2=%A2:~-1%
set /a iron_posx=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=1&set MIN2=134
set A2=%time%
set A2=%A2:~-1%
set /a gold_posx=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=40&set MIN2=30
set A2=%time%
set A2=%A2:~-1%
set /a gold_posy=MIN2+(MAX2-MIN2+1) * %A2%/10

set x=%randomik1%
set y=18
set stone=0
set iron=0
set dirt=0
set grass=0
set iront=13
set gold=0
set goldt=5
:game
if %x% == -1 set /a x+=1&&goto game
if %y% == -1 set /a y+=1&&goto game
if %x% == 136 set /a x-=1&&goto game
if %y% == 41 set /a y-=1&&goto game
color 07
color b1
cls
set "text_color=0;166;37"
set "background_color=0;71;19"

  Batbox /g 0 20 /c 0xa2 /d "                                                                                                                                        " /g 0 21 /c 0x44 /d "                                                                                                                                                                                                                                                                                                                                                                                                                        " /g 0 24 /c 0x77 /d "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  " /g 1 41 /c 0xb0 /d "X: %x%" /g 10 41 /d "Y: %y%" /g 20 41 /c 0x07 /d "iron: %iron%" /g 30 41 /d "gold: %gold%" /g 40 41 /d "dirt: %dirt%" /g 60 41 /d "grass: %grass%" /g 50 41 /d "stone: %stone%"
  if %iront% gtr 1 batbox /g %iron_posx% %iron_posy% /c 0x88 /d " "&&if %x% == %iron_posx% if %y% == %iron_posy% set /a iron+=1&&set /a iront -=1
  if %goldt% gtr 1 batbox /g %gold_posx% %gold_posy% /c 0x66 /d " "&&if %x% == %gold_posx% if %y% == %gold_posy% set /a gold+=1&&set /a goldt -=1
  if %y% == 19 set /a grass+=1
  if %y% == 20 set /a dirt+=1
  if %y% == 21 set /a dirt+=1
  if %y% == 22 set /a dirt+=1
  if %y% GEQ 23 set /a stone+=1

  for /f "usebackq delims=" %%i in ("sy\beta_3\systema.dll") do (
    set "command=%%i"
    call :tttt
)
  batbox /g %x% %y% /c 0x11 /d " "
  choice /c adwseфвцыуі12304rn5gп /n
  if %errorlevel%==21 call :gt2
  if %errorlevel%==20 call :gt2
  if %errorlevel%==19 call :block5
  if %errorlevel%==18 call :mob
  if %errorlevel%==17 goto :reload
  if %errorlevel%==16 call :block4
  if %errorlevel%==15 call :block
  if %errorlevel%==14 call :block3
  if %errorlevel%==13 call :block2
  if %errorlevel%==12 call :block1
  if %errorlevel%==11 set /a y+=1
  if %errorlevel%==10 goto exit
  if %errorlevel%==9 set /a y+=1
  if %errorlevel%==8 set /a y-=1
  if %errorlevel%==7 set /a x+=1
  if %errorlevel%==6 set /a x-=1
  if %errorlevel%==5 goto exit
  if %errorlevel%==4 set /a y+=1
  if %errorlevel%==3 set /a y-=1
  if %errorlevel%==2 set /a x+=1
  if %errorlevel%==1 set /a x-=1
goto game
:block
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
  set line=%%a
  echo !line! /g %x% %y% /c 0xb1 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof
:block1
if not %grass% GEQ 1 goto :eof
set /a grass -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
  set "line=%%a"
  color 07
echo !line! /g %x% %y% /c 0xa2 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof
:block2
if not %dirt% GEQ 1 goto :eof
set /a dirt -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
  set "line=%%a"
  color 07
  echo !line! /g %x% %y% /c 0x44 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof
:block3
if not %iron% GEQ 1 goto :eof
set /a iron -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
  set "line=%%a"
  echo !line! /g %x% %y% /c 0x88 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof
:block4
if not %gold% GEQ 1 goto :eof
set /a gold -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
  set line=%%a
  echo !line! /g %x% %y% /c 0x66 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof
:block5
if not %stone% GEQ 1 goto :eof
set /a stone -=1
for /f "tokens=* delims=" %%a in (sy\beta_3\systema.dll) do (
  set line=%%a
echo !line! /g %x% %y% /c 0x77 /d " ">>file_new.txt)
move /y file_new.txt sy\beta_3\systema.dll >nul
goto :eof
:mob
set mob=1
goto :eof
:reload
cls
mode con: lines=41 cols=135
color 07
color b1
mode con: lines=42 cols=136
cls
goto game
:gt2
if %GT% == 0 goto :eof
set GT=2
goto :EOF
:tttt
!command!
goto :EOF
:exit
goto game
exit




:x2
cls

set MAX2=31&set MIN2=25
set A2=%time%
set A2=%A2:~-1%
set /a iron_posy=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=1&set MIN2=116
set A2=%time%
set A2=%A2:~-1%
set /a iron_posx=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=1&set MIN2=116
set A2=%time%
set A2=%A2:~-1%
set /a gold_posx=MIN2+(MAX2-MIN2+1) * %A2%/10

set MAX2=40&set MIN2=32
set A2=%time%
set A2=%A2:~-1%
set /a gold_posy=MIN2+(MAX2-MIN2+1) * %A2%/10

set /a iron_posy1=iron_posy*12
set /a iron_posx1=iron_posx*8
set /a gold_posy1=gold_posy*12
set /a gold_posx1=gold_posx*8

set stone=0
set iron=0
set dirt=0
set grass=0
set iront=13
set gold=0
set goldt=5

color a
cls
set MAX2=134&set MIN2=1
set A2=%time%
set A2=%A2:~-1%
set /a randomik1=MIN2+(MAX2-MIN2+1) * %A2%/10
set MAX2=40&set MIN2=1
set A2=%time%
set A2=%A2:~-1%
set /a randomik2=MIN2+(MAX2-MIN2+1) * %A2%/10
set /a randomik111=randomik1*8
set x=480
set y=240
:game1
cls
color 07
color b1
insertbmp /p:"Temp\dirt_sys.bmp" /x:0 /y:252 /z:0
set /a y2=y/12
set /a x2=x/8
if %x% == -8 set /a x+=8&&goto game1
if %y% == -12 set /a y+=12&&goto game1
if %x% == 952 set /a x-=8&&goto game1
if %y% == 474 set /a y-=12&&goto game1
if %y2% == 21 set /a grass+=1
if %y2% == 22 set /a dirt+=1
if %y2% == 23 set /a dirt+=1
if %y2% == 24 set /a dirt+=1
if %y2% GEQ 25 set /a stone+=1
  if %iront% gtr 1 insertbmp /p:"Temp\iron.bmp" /x:%iron_posx1% /y:%iron_posy1% /z:0&&if %x% == %iron_posx1% if %y% == %iron_posy1% set /a iron+=1&&set /a iront -=1
  if %goldt% gtr 1 insertbmp /p:"Temp\gold.bmp" /x:%gold_posx1% /y:%gold_posy1% /z:0&&if %x% == %gold_posx1% if %y% == %gold_posy1% set /a gold+=1&&set /a goldt -=1
  Batbox /g 1 41 /c 0xb0 /d "X: %x2%" /g 10 41 /d "Y: %y2%" /g 20 41 /c 0x07 /d "iron: %iron%" /g 30 41 /d "gold: %gold%" /g 40 41 /d "dirt: %dirt%" /g 60 41 /d "grass: %grass%" /g 50 41 /d "stone: %stone%"
  for /f "usebackq delims=" %%i in ("sy\beta_3\systema.dll") do (set command=%%i&&!command!)
  insertbmp /p:"Temp\player.bmp" /x:%x% /y:%y% /z:0
  choice /c adwseфвцыуі123450 /n
  if %errorlevel%==11 set /a y+=12
  if %errorlevel%==10 goto game1
  if %errorlevel%==9 set /a y+=12
  if %errorlevel%==8 set /a y-=12
  if %errorlevel%==7 set /a x+=8
  if %errorlevel%==6 set /a x-=8
  if %errorlevel%==5 goto game1
  if %errorlevel%==4 set /a y+=12
  if %errorlevel%==3 set /a y-=12
  if %errorlevel%==2 set /a x+=8
  if %errorlevel%==1 set /a x-=8
  if %errorlevel%==12 call :block111
  if %errorlevel%==13 call :block222
  if %errorlevel%==14 call :block333
  if %errorlevel%==15 call :block444
  if %errorlevel%==16 call :block555
  if %errorlevel%==17 call :block000
goto game1
:block111
if not %grass% GEQ 1 goto :eof
set /a grass-=1
echo.insertbmp /p:"Temp\grass.bmp" /x:%x% /y:%y% /z:0>>sy\beta_3\systema.dll
goto :eof
:block222
if not %dirt% GEQ 1 goto :eof
set /a dirt-=1
echo.insertbmp /p:"Temp\dirt.bmp" /x:%x% /y:%y% /z:0>>sy\beta_3\systema.dll
goto :eof
:block333
if not %iron% GEQ 1 goto :eof
set /a iron-=1
echo.insertbmp /p:"Temp\iron_block.bmp" /x:%x% /y:%y% /z:0>>sy\beta_3\systema.dll
goto :eof
:block444
if not %gold% GEQ 1 goto :eof
set /a gold-=1
echo.insertbmp /p:"Temp\golden_block.bmp" /x:%x% /y:%y% /z:0>>sy\beta_3\systema.dll
goto :eof
:block555
if not %stone% GEQ 1 goto :eof
set /a stone-=1
echo.insertbmp /p:"Temp\stone.bmp" /x:%x% /y:%y% /z:0>>sy\beta_3\systema.dll
goto :eof
:block000
echo.insertbmp /p:"Temp\void.bmp" /x:%x% /y:%y% /z:0>>sy\beta_3\systema.dll
goto :eof