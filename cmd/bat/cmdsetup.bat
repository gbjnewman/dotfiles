@echo off

rem Resolve the repository root from this script's location.
for %%I in ("%~dp0..\..") do set "DOTFILES_ROOT=%%~fI"

if not exist "%DOTFILES_ROOT%\README.md" (
    echo [dotfiles] Could not find the repository root: "%DOTFILES_ROOT%"
    exit /b 1
)

rem Add the repository's bin directory once, if it exists.
if exist "%DOTFILES_ROOT%\bin\" (
    if not defined DOTFILES_BIN_ADDED (
        set "PATH=%DOTFILES_ROOT%\bin;%PATH%"
        set "DOTFILES_BIN_ADDED=1"
    )
) else (
    echo [dotfiles] Optional bin directory not found: "%DOTFILES_ROOT%\bin"
)

rem Load aliases. Missing files should not prevent CMD from starting.
if exist "%DOTFILES_ROOT%\cmd\bat\alias.bat" (
    call "%DOTFILES_ROOT%\cmd\bat\alias.bat"
) else (
    echo [dotfiles] Alias setup not found: "%DOTFILES_ROOT%\cmd\bat\alias.bat"
)
