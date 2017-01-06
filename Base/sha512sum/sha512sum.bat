@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

if not exist "%~1" (
	echo Error : "%~1" doesn`t exist!
	goto :eof
)

set inputted_sha512=%~2
if exist "!inputted_sha512!" (
	for /f "delims=" %%i in (!inputted_sha512!) do (
		set inputted_sha512=%%i
		REM echo %%i
		goto read_sha512_from_file
	)
)
:read_sha512_from_file

set inputted_sha512=!inputted_sha512:A=a!
set inputted_sha512=!inputted_sha512:B=b!
set inputted_sha512=!inputted_sha512:C=c!
set inputted_sha512=!inputted_sha512:D=d!
set inputted_sha512=!inputted_sha512:E=e!
set inputted_sha512=!inputted_sha512:F=f!

for /f "tokens=1* skip=1 delims=" %%a in ('certutil -hashfile "%~1" sha512') do (
	set computed_sha512=%%a
	goto computed
)
:computed
set computed_sha512=!computed_sha512: =!

if "!computed_sha512!" EQU "!inputted_sha512!" (
	echo Success
) else (
	echo Computed SHA512 : !computed_sha512!
	echo Inputted SHA512 : !inputted_sha512!
	echo Fail
)

:end
goto :eof
