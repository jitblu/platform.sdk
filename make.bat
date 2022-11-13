@echo off
IF EXIST %~dp0\tools\bin\make.exe (GOTO makeinstalled) ELSE (GOTO installmake)

:installmake

:makeinstalled
%~dp0\tools\bin\make.exe %*