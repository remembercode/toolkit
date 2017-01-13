@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%~1" (
	echo Error : "%~1" doesn`t exist!
	goto :eof
)

set inputted_sha1=%~2
if exist "!inputted_sha1!" (
	for /f "delims=" %%i in (!inputted_sha1!) do (
		set inputted_sha1=%%i
		REM echo %%i
		goto read_sha1_from_file
	)
)
:read_sha1_from_file


REM get first 40 char
set inputted_sha1=!inputted_sha1:~0,40!

set /a n=0
:her
set u=!inputted_sha1:~%n%,1!
if not "!u!"=="" (
	set /a n=!n! + 1
	goto her
) else (
	if "%n%" NEQ "40" (
		echo Fail, !inputted_sha1! length is %n%, should be 40!
		goto :eof
	)
) 


set inputted_sha1=!inputted_sha1:A=a!
set inputted_sha1=!inputted_sha1:B=b!
set inputted_sha1=!inputted_sha1:C=c!
set inputted_sha1=!inputted_sha1:D=d!
set inputted_sha1=!inputted_sha1:E=e!
set inputted_sha1=!inputted_sha1:F=f!

for /f "tokens=1* skip=1 delims=" %%a in ('certutil -hashfile "%~1" sha1') do (
	set computed_sha1=%%a
	goto computed
)
:computed
set computed_sha1=!computed_sha1: =!

if "!computed_sha1!" EQU "!inputted_sha1!" (
	echo Success
) else (
	echo Computed SHA1 : !computed_sha1!
	echo Inputted SHA1 : !inputted_sha1!
	echo Fail
)
:end
goto :eof
