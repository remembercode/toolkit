@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%~1" (
	echo Error : "%~1" doesn`t exist!
	goto :eof
)

set inputted_sha256=%~2
if exist "!inputted_sha256!" (
	for /f "delims=" %%i in (!inputted_sha256!) do (
		set inputted_sha256=%%i
		REM echo %%i
		goto read_sha256_from_file
	)
)
:read_sha256_from_file
REM get first 64 char
set inputted_sha256=!inputted_sha256:~0,64!

set inputted_sha256=!inputted_sha256:A=a!
set inputted_sha256=!inputted_sha256:B=b!
set inputted_sha256=!inputted_sha256:C=c!
set inputted_sha256=!inputted_sha256:D=d!
set inputted_sha256=!inputted_sha256:E=e!
set inputted_sha256=!inputted_sha256:F=f!

for /f "tokens=1* skip=1 delims=" %%a in ('certutil -hashfile "%~1" sha256') do (
	set computed_sha256=%%a
	goto computed
)
:computed
set computed_sha256=!computed_sha256: =!

if "!computed_sha256!" EQU "!inputted_sha256!" (
	echo Success
) else (
	echo Computed SHA256 : !computed_sha256!
	echo Inputted SHA256 : !inputted_sha256!
	echo Fail
)

:end
goto :eof
