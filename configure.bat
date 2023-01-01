::----------------------------------------------------------------------------------::
::  ____  _       _    __                      
:: |  _ \| | __ _| |_ / _| ___  _ __ _ __ ___  
:: | |_) | |/ _` | __| |_ / _ \| '__| '_ ` _ \ 
:: |  __/| | (_| | |_|  _| (_) | |  | | | | | |
:: |_|   |_|\__,_|\__|_|  \___/|_|  |_| |_| |_|
::
:: Name .........: configure.bat
:: Project ......: Part of the Platform SDK Project
:: Description ..: Main Configuration Entry Point
:: Project URL ..: https://github.com/jitblu/platform.sdk
:: Usage ........: Run this file directly, or from the Windows Start Menu
::
:: Author .......: opensource team <opensource@jitblu.com>
:: Copyright ....: Copyright (C) 2009-2022 JitBlu, Inc.
:: License ......: Apache v2.0
::
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::      http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.
::-----------------------------------------------------------------------------------::

@echo off
Title Platform Development Environment Setup
cls

:: import base properties
call scripts/conf/x.properties.bat

:: except arguments from the commandline
For %%A In (%*) Do (

    :: invoke the help command
    If "%%A"=="help" (
        goto :help
    )
)

:: main menu
:menu
    cls
    color 80

    date /t
    echo  ================================== 
    echo  *----------JitBlu, Inc.----------*
    echo  ================================== 
    echo  Computer: %computername%        
    echo  ================================== 
    echo  User: %username% 
    echo  ==================================                   
    echo           %PLATFORM_PROJECT%:
    echo           version %PLATFORM_VERSION%
    echo      %PLATFORM_COPYRIGHT%
    echo  ==================================
    echo * 1. Build ALL                     * 
    echo * 2. Download Archives             *
    echo * 3. Extract and Layout            *
    echo * 4. Build IDE Packages            *
    echo * 5. Build Language Addons         * 
    echo * 6. Build SDK Addons              * 
    echo * 7. Package Binaries              * 
    echo * 8. Clean Solution                *
    echo * 9. Exit Configuration            *
    echo  ==================================

:: except menu options
set /p option=  Choose an option: 
    echo *                                                            *
    if %option% equ 1 goto buildAll
    if %option% equ 2 goto buildDownloads
    if %option% equ 3 goto buildLayout
    if %option% equ 4 goto buildIDE
    if %option% equ 5 goto buildLanguage
    if %option% equ 6 goto buildSDK
    if %option% equ 7 goto buildBinaries
    if %option% equ 8 goto buildClean
    if %option% equ 9 exit /b 0
    if %option% GEQ 10 goto error


:buildAll
cls
date /t
echo ==================================
echo *            Build ALL           *
echo ==================================

pause
goto menu

:buildDownloads
cls
date /t
echo ==================================
echo *       Download Archives        *
echo ==================================

echo Downloading Required Archives

:: import url properties
call scripts/conf/x.url.bat

:: rmdir /s /q downloads 2> nul
mkdir downloads 2> nul

:: ### Free B4X Downloads #########################################################################

IF EXIST "%DOWNLOADS%/%FILE_B4J%" (
    echo B4J Already Downloaded Skipping...
) ELSE (
    echo Downloading B4J
    %CURL% -k %URL_B4J% --output %DOWNLOADS%/%FILE_B4J%
)

IF EXIST "%DOWNLOADS%/%FILE_B4A%" (
    echo B4A Already Downloaded Skipping...
) ELSE (
    echo Downloading B4A
    %CURL% -k %URL_B4A% --output %DOWNLOADS%/%FILE_B4A%
)

IF EXIST "%DOWNLOADS%/%FILE_B4R%" (
    echo B4R Already Downloaded Skipping...
) ELSE (
    echo Downloading B4R
    %CURL% -k %URL_B4R% --output %DOWNLOADS%/%FILE_B4R%
)

:: ### Paid B4X Downloads #########################################################################

IF EXIST "%DOWNLOADS%/%FILE_B4I%" (
    echo B4I Already Downloaded Skipping...
) ELSE (
    echo Downloading B4I
    %CURL% -k %URL_B4I% --output %DOWNLOADS%/%FILE_B4I%
)

IF EXIST "%DOWNLOADS%/%FILE_MACB%" (
    echo B4I Build Server Already Downloaded Skipping...
) ELSE (
    echo Downloading B4I Build Server
    %CURL% -k %URL_MACB% --output %DOWNLOADS%/%FILE_MACB%
)

:: ### SDK Downloads ##############################################################################

IF EXIST "%DOWNLOADS%/%FILE_JDK%" (
    echo JDK Already Downloaded Skipping...
) ELSE (
    echo Downloading Java Development Kit
    %CURL% -k %URL_JDK% --output %DOWNLOADS%/%FILE_JDK%
)

IF EXIST "%DOWNLOADS%/%FILE_ASDK%" (
    echo Android SDK Already Downloaded Skipping...
) ELSE (
    echo Downloading Android SDK
    %CURL% -k %URL_ASDK% --output %DOWNLOADS%/%FILE_ASDK%
)

IF EXIST "%DOWNLOADS%/%FILE_ARES%" (
    echo Android Resources Already Downloaded Skipping...
) ELSE (
    echo Downloading Android SDK Resources
    %CURL% -k %URL_ARES% --output %DOWNLOADS%/%FILE_ARES%
)

IF EXIST "%DOWNLOADS%/%FILE_AIDE%" (
    echo Arduino IDE Already Downloaded Skipping...
) ELSE (
    echo Downloading Arduino IDE
    %CURL% -k %URL_AIDE% --output %DOWNLOADS%/%FILE_AIDE%
)

pause
goto menu

:buildLayout
cls
date /t
echo ==================================
echo *      Extract and Layout        *
echo ==================================

pause
goto menu

:buildIDE
cls
date /t
echo ==================================
echo *      Build IDE Packages        *
echo ==================================

pause
goto menu

:buildLanguage
cls
date /t
echo ==================================
echo *     Build Language Addons      *
echo ==================================

pause
goto menu

:buildSDK
cls
date /t
echo ==================================
echo *        Build SDK Addons        *
echo ==================================

pause
goto menu

:buildBinaries
cls
date /t
echo ==================================
echo *        Package Binaries        *
echo ==================================

pause
goto menu

:buildClean
cls
date /t
echo ==================================
echo *        Clean Solution          *
echo ==================================

echo Cleaning Solution

echo Removing Downloads Folder
rmdir /s /q downloads 2> nul

pause
goto menu

:: help menu invoked from commandline
:help

:: import help screen
call scripts/conf/x.help.bat
exit /b 0

:: error banner "displayed when selecting wrong option"
:error
    color 0C
    echo ERROR--------------ERROR--------------ERROR--------------ERROR
    echo ==============================================================
    echo * Invalid Option! Please choose another option from the menu *
    echo ==============================================================
    echo ERROR--------------ERROR--------------ERROR--------------ERROR
    echo *                                                            *
    pause
    goto menu