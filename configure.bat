@Echo Off
IF EXIST %~dp0\bin\make.exe (GOTO makeinstalled) ELSE (GOTO installmake)

:installmake

:makeinstalled
%~dp0bin\make.exe %*