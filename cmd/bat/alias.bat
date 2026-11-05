@echo off

rem Allow this file to be called directly, outside cmdsetup.bat.
if not defined DOTFILES_ROOT for %%I in ("%~dp0..\..") do set "DOTFILES_ROOT=%%~fI"

if not exist "%DOTFILES_ROOT%\README.md" (
    echo [dotfiles] Could not find the repository root: "%DOTFILES_ROOT%"
    exit /b 1
)

rem Load the Visual Studio C++ environment on demand.
if exist "%DOTFILES_ROOT%\cmd\bat\vcvars.bat" (
    doskey vc=call "%DOTFILES_ROOT%\cmd\bat\vcvars.bat"
) else (
    echo [dotfiles] vcvars.bat not found. The 'vc' alias was not loaded.
)

rem Use eza when installed; otherwise use CMD's built-in dir.
where eza >nul 2>&1
if errorlevel 1 (
    doskey ls=dir $*
    doskey ll=dir /a $*
    echo [dotfiles] eza was not found. 'ls' and 'll' will use 'dir'.
) else (
    doskey ls=eza $*
    doskey ll=eza -lah $*
)

rem Register lf only when the integration script and executable exist.
if exist "%DOTFILES_ROOT%\lf\lfcd.bat" (
    if exist "%DOTFILES_ROOT%\lf\lf.exe" (
        doskey lf=call "%DOTFILES_ROOT%\lf\lfcd.bat" $*
    ) else (
        where lf.exe >nul 2>&1
        if errorlevel 1 (
            echo [dotfiles] lf.exe was not found. The 'lf' alias was not loaded.
        ) else (
            doskey lf=call "%DOTFILES_ROOT%\lf\lfcd.bat" $*
        )
    )
) else (
    echo [dotfiles] lfcd.bat was not found. The 'lf' alias was not loaded.
)

doskey clear=cls
doskey alias=doskey /macros
doskey rm=del $*
