::----------------------------------------------------------------------------------::
::  ____  _       _    __                      
:: |  _ \| | __ _| |_ / _| ___  _ __ _ __ ___  
:: | |_) | |/ _` | __| |_ / _ \| '__| '_ ` _ \ 
:: |  __/| | (_| | |_|  _| (_) | |  | | | | | |
:: |_|   |_|\__,_|\__|_|  \___/|_|  |_| |_| |_|
::
:: Name .........: x.properties.bat
:: Project ......: Part of the Platform TMS Project
:: Description ..: Properties Include File
:: Project URL ..: https://gitlab.com/carrierlane/platform.tms
:: Usage ........: Run this file directly, or from the Windows Start Menu
::
:: Author .......: p.stewart <p.stewart@carrierlane.com>
:: Copyright ....: Copyright (C) 2009-2022 Carrierlane, Inc.
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

:: ### SYSTEM #########################################################################

:: setting system path
set SYSTEM_PATH=%PATH%

:: ### PLATFORM #######################################################################

:: setting project directory
set PLATFORM_DIRECTORY=%CD%

:: setting project name from .dist.project file
set /p PLATFORM_PROJECT=< %PLATFORM_DIRECTORY%\.dist.project

:: setting project version from .dist.version file
set /p PLATFORM_VERSION=< %PLATFORM_DIRECTORY%\.dist.semver

:: setting project copyright from .dist.copyright file
set /p PLATFORM_COPYRIGHT=< %PLATFORM_DIRECTORY%\.dist.copyright

:: ### COMPILER #######################################################################

:: ### FILESYSTEM #####################################################################

:: ### COMMANDS #######################################################################