@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%~1" (
	echo Error : "%~1" doesn`t exist!
	goto :eof
)

set inputted_sha384=%~2
if exist "!inputted_sha384!" (
	for /f "delims=" %%i in (!inputted_sha384!) do (
		set inputted_sha384=%%i
		REM echo %%i
		goto read_sha384_from_file
	)
)
:read_sha384_from_file
REM get first 96 char
set inputted_sha384=!inputted_sha384:~0,96!

set inputted_sha384=!inputted_sha384:A=a!
set inputted_sha384=!inputted_sha384:B=b!
set inputted_sha384=!inputted_sha384:C=c!
set inputted_sha384=!inputted_sha384:D=d!
set inputted_sha384=!inputted_sha384:E=e!
set inputted_sha384=!inputted_sha384:F=f!

for /f "tokens=1* skip=1 delims=" %%a in ('certutil -hashfile "%~1" sha384') do (
	set computed_sha384=%%a
	goto computed
)
:computed
set computed_sha384=!computed_sha384: =!

if "!computed_sha384!" EQU "!inputted_sha384!" (
	echo Success
) else (
	echo Computed SHA384 : !computed_sha384!
	echo Inputted SHA384 : !inputted_sha384!
	echo Fail
)

:end
goto :eof
