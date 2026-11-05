# Windows CMD setup

These scripts restore the Windows CMD helpers that were present before the GNU Stow migration. They are Windows-only files and are not part of a GNU Stow package.

## Start CMD with the setup

Run CMD with this batch file as its startup command:

```cmd
cmd.exe /k "C:\path\to\dotfiles\cmd\bat\cmdsetup.bat"
```

Replace the example path with the location of your dotfiles clone. The batch files resolve the repository root relative to their own location; they do not depend on a particular Windows username.

## Commands

| Command | Behaviour |
| --- | --- |
| `ls` | `eza` when installed; otherwise `dir` |
| `ll` | `eza -lah` when installed; otherwise `dir /a` |
| `lf` | Runs lf with directory-change integration, when `lf.exe` is available |
| `vc` | Loads the Visual Studio x64 C++ build environment |
| `clear` | Clears the CMD screen |
| `alias` | Lists the active DOSKEY macros |
| `rm` | Deletes files using `del` |

## Optional dependencies

- **eza:** If it is not on PATH, `ls` and `ll` fall back to `dir`.
- **lf:** Install `lf.exe` and add it to PATH, or place it at `lf\lf.exe` in this repository. If it is unavailable, the `lf` alias is not registered.
- **Visual Studio C++ tools:** `vcvars.bat` uses `vswhere.exe` to find an installation containing the x64 C++ tools. It also checks standard Visual Studio 18 and 2022 installation paths.

Missing optional tools are reported during startup. They do not prevent CMD from opening.
