@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%~1" (
	echo Error : "%~1" doesn`t exist!
	goto :eof
)

set inputted_md5=%~2

if exist "!inputted_md5!" (
	for /f "delims=" %%i in (!inputted_md5!) do (
		set inputted_md5=%%i
		REM echo %%i
		goto read_md5_from_file
	)
)
:read_md5_from_file
REM echo !inputted_md5!
REM pause
REM goto :eof

set /a n=0
:her
set u=!inputted_md5:~%n%,1!
if not "!u!"=="" (
	set /a n=!n! + 1
	goto her
) else (
	if "%n%" NEQ "32" (
		echo Fail, !inputted_md5! length is %n%, should be 32!
		goto :eof
	)
) 

set inputted_md5=%inputted_md5:A=a%
set inputted_md5=%inputted_md5:B=b%
set inputted_md5=%inputted_md5:C=c%
set inputted_md5=%inputted_md5:D=d%
set inputted_md5=%inputted_md5:E=e%
set inputted_md5=%inputted_md5:F=f%

for /f "tokens=1-16 skip=1 delims= " %%a in ('certutil -hashfile "%~1" md5') do (
	REM SET md5=%%a
	SET computed_md5=%%a%%b%%c%%d%%e%%f%%g%%h%%i%%j%%k%%l%%m%%n%%o%%p
	
	if "!computed_md5!" EQU "!inputted_md5!" (
		echo Success
	) else (
		echo Computed MD5 : !computed_md5!
		echo Input    MD5 : !inputted_md5!
		echo Fail
	)
	goto end
)
:end
goto :eof