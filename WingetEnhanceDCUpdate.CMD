:: Copyright (c) 2022, Bing
:: All rights reserved.
::
:: Redistribution and use in source and binary forms, with or without
:: modification, are permitted provided that the following conditions are met:
::
:: 1. Redistributions of source code must retain the above copyright
::    notice, this list of conditions and the following disclaimer.
::
:: 2. Redistributions in binary form must reproduce the above copyright
::    notice, this list of conditions and the following disclaimer in the
::    documentation and/or other materials provided with the distribution.
::
:: 3. Neither the name of Bing nor the names of its contributors may be used
::    to endorse or promote products derived from this software without
::    specific prior written permission.
::
:: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
:: AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
:: IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
:: ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
:: LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
:: CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
:: SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
:: INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
:: CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
:: ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
:: POSSIBILITY OF SUCH DAMAGE.

@echo off

rem Check if winget is installed
winget --version >nul 2>&1

rem If not installed, download and install winget from GitHub using PowerShell
if %errorlevel% neq 0 (
    echo Installing winget...
    powershell -command "iwr https://aka.ms/winget-cli/latest -OutFile winget-latest.appxbundle; Add-AppxPackage -Path winget-latest.appxbundle"
)

rem Check if Discord is installed by looking for its folder in Local AppData
if not exist "%localappdata%\Discord" (

    rem If not installed, install Discord using winget with silent parameter
    echo Installing Discord...
    winget install Discord.Discord --silent

    rem Rename Update.exe to Updatex.exe to prevent Discord from auto-updating itself
    echo Renaming Update.exe to Updatex.exe...
    ren "%localappdata%\Discord\Update.exe" Updatex.exe

) else (

    rem If installed, update Discord using winget without location and version parameters
    echo Updating Discord...
    winget upgrade Discord.Discord

    rem Rename Update.exe to Updatex.exe to prevent Discord from auto-updating itself
    echo Renaming Update.exe to Updatex.exe...
    ren "%localappdata%\Discord\Update.exe" Updatex.exe

)

echo Done.
