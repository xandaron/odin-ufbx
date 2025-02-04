@echo off

setlocal EnableDelayedExpansion

where /Q cl.exe || (
	set __VSCMD_ARG_NO_LOGO=1
	for /f "tokens=*" %%i in ('"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe" -latest -requires Microsoft.VisualStudio.Workload.NativeDesktop -property installationPath') do set VS=%%i
	if "!VS!" equ "" (
		echo ERROR: Visual Studio installation not found
		exit /b 1
	)
	call "!VS!\VC\Auxiliary\Build\vcvarsall.bat" amd64 || exit /b 1
)

clang -c %~dp0deps/ufbx.c -o %~dp0deps/ufbx.obj -target x86_64-pc-windows-msvc -O3
lib /OUT:%~dp0ufbx/ufbx.lib %~dp0deps/ufbx.obj
del %~dp0deps/ufbx.obj