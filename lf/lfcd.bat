@echo off

rem Resolve the repository root when this script is called directly.
if not defined DOTFILES_ROOT for %%I in ("%~dp0..") do set "DOTFILES_ROOT=%%~fI"

rem Prefer a repository-local lf.exe, then look for one on PATH.
set "DOTFILES_LF_EXE=%DOTFILES_ROOT%\lf\lf.exe"
if not exist "%DOTFILES_LF_EXE%" (
    set "DOTFILES_LF_EXE="
    for /f "delims=" %%I in ('where lf.exe 2^>nul') do (
        set "DOTFILES_LF_EXE=%%I"
        goto :lf_found
    )
)

:lf_found
if not defined DOTFILES_LF_EXE (
    echo [dotfiles] lf.exe was not found. Install lf and add it to PATH.
    exit /b 1
)

rem lf prints its last working directory when it exits.
chcp 65001 >nul 2>&1
for /f "usebackq delims=" %%D in (`"%DOTFILES_LF_EXE%" -print-last-dir %*`) do cd /d "%%D"

set "DOTFILES_LF_EXE="
