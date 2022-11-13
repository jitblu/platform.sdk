    ::----------------------------------------------------------------------------------::
::  ____  _       _    __                      
:: |  _ \| | __ _| |_ / _| ___  _ __ _ __ ___  
:: | |_) | |/ _` | __| |_ / _ \| '__| '_ ` _ \ 
:: |  __/| | (_| | |_|  _| (_) | |  | | | | | |
:: |_|   |_|\__,_|\__|_|  \___/|_|  |_| |_| |_|
::
:: Name .........: x.help.bat
:: Project ......: Part of the Platform SDK Project
:: Description ..: Help Include File
:: Project URL ..: https://github.com/jitblu/platform.sdk
:: Usage ........: This file is called from the main script
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

    date /t
    echo =================================================================================
	echo This script will help you to build a portable development environment for your
    echo project. The IDE lives inside your project structure and can be duplicated
    echo and copied to different workstations or installed on a flash drive.
    echo =================================================================================
    echo --
    echo     Listing your Detected Platform
	echo =================================================================================
    echo --
	echo Usage:
	echo    Nothing - to compile with default compiler and architecture
	echo    x86     - to compile with x86 (32-bit) architecture
	echo    amd64   - to compile with amd64 (x86 64-bit) architecture
	echo    gcc     - to compile with GCC (MinGW) compiler
	echo    vs      - to compile with Visual Studio compiler
	echo    help    - prints this help message
    echo --
	echo Visit https://gitlab.com/carrierlane/platform.tms to know more about the project
    echo =================================================================================
