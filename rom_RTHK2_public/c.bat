
cls
@echo off

@echo.
@echo USAGE: c com#
@echo example: c com8, to clean the entire flash
@echo ensure your ESP module is in bootload mode, how to do that:
@echo hold RESET button, hold FLASH button, release RESET button, release FLASH button, done.

@rename the programming tool to exe for you
copy esptool_exe esptool.exe /y

@echo.
if [%1]==[] goto no_com

:clean_flash
esptool.exe -v -cp com%1 -ce -cc esp8266
@echo.
@echo finish.
goto eof


:no_com
@echo nothing is done!!!!!!
@echo need to specify com#, try again.


:eof
rem exit /B 1
