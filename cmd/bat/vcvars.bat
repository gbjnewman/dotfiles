@echo off

rem Locate the latest Visual Studio installation with the x64 C++ tools.
rem Do not use setlocal: vcvars64.bat must modify this CMD session.
set "VSWHERE=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"

if exist "%VSWHERE%" (
    for /f "usebackq delims=" %%I in (`"%VSWHERE%" -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath`) do (
        if exist "%%I\VC\Auxiliary\Build\vcvars64.bat" (
            call "%%I\VC\Auxiliary\Build\vcvars64.bat"
            exit /b
        )
    )
)

rem Fallback for standard Visual Studio 18 and 2022 editions.
for %%V in (18 2022) do (
    for %%E in (Community Professional Enterprise BuildTools) do (
        if exist "%ProgramFiles%\Microsoft Visual Studio\%%V\%%E\VC\Auxiliary\Build\vcvars64.bat" (
            call "%ProgramFiles%\Microsoft Visual Studio\%%V\%%E\VC\Auxiliary\Build\vcvars64.bat"
            exit /b
        )
    )
)

echo [dotfiles] Visual Studio C++ x64 build tools were not found.
echo [dotfiles] Install the C++ build tools or check the Visual Studio installation.
exit /b 1
