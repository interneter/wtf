@echo off
setlocal EnableDelayedExpansion

set LF=^


call :hexprint "0x20" space
call :hexprint "0x09" tab
	
set "key=abcdef"
set "plaintext=abcdef abcdef"

call :KSA %key%
set i=0
set j=0

set strterm=___ENDOFSTRING___
set tmp=%plaintext%%strterm%
set encrypted=

:loop
	set char=%tmp:~0,1%
	
	call :PRGA
	call :ord "%char%"
	for %%h in (!k!) do (for %%r in (!code!) do (set /a "res=%%h^%%r") )
	call :tohex !res!
	call :strlen !PREFIX!!HEXSTR!
	if !len! EQU 1 (set encrypted=!encrypted!0!PREFIX!!HEXSTR!) ELSE (set encrypted=!encrypted!!PREFIX!!HEXSTR!)
	set tmp=%tmp:~1%
if not "%tmp%" == "%strterm%" goto loop
echo !encrypted!
goto:eof

:KSA
	set "str=%~1"
	call :strlen %~1
	
	set j=0
	call :initarr
	for /l %%i in (0,1,255) do @(
		set /a keyindex = %%i %% !len!
		for %%z in (!keyindex!) do (call :ord "!str:~%%z,1!")
		
		set si=!arr%%i!
		set /A j=!j!+!si!+!code!
		set /A j=!j! %% 256
		
		set tempswap=!arr%%i!
		for %%z in (!j!) do (
			for %%h in (arr%%i) do (set %%h=!arr%%z!)
			for %%h in (arr%%z) do (set %%h=!tempswap!)
		)
	)
goto:eof

:PRGA
	set /A i=!i! + 1
	set /A i=!i! %% 256
	for %%h in (!i!) do (set /A j=!j! + !arr%%h!)
	set /A j=!j! %% 256
	
	for %%a in (!i!) do (
		set tempswap=!arr%%a!
		for %%z in (!j!) do (
			for %%h in (arr%%a) do (set %%h=!arr%%z!)
			for %%h in (arr%%z) do (set %%h=!tempswap!)
			set /A k=!arr%%z! + !arr%%a!
			set /A k=!k! %% 256
			for %%h in (!k!) do (set k=!arr%%h!)
		)
	)
goto:eof

:ord
	set code=0
	set quotationmark="
	
	set input=%1
	set target=%input:~1,1%
	
	if !quotationmark! == !target! set code=34 & goto:eof
	if "%~1" == "%space%" set code=32 & goto:eof
	if "%~1" == "%tab%" set code=9 & goto:eof
	 
	for /L %%i in (32, 1, 126) do (
		cmd /c exit /b %%i
		set Chr=^!=ExitCodeAscii!
		if [^!Chr!] EQU [^!target!] set code=%%i & goto:eof
	)
goto:eof

:hexPrint  string  [rtnVar]
  for /f eol^=^%LF%%LF%^ delims^= %%A in (
    'forfiles /p "%~dp0." /m "%~nx0" /c "cmd /c echo(%~1"'
  ) do if "%~2" neq "" (set %~2=%%A) else echo(%%A
goto:eof

:initarr
	for /l %%x in (0,1,255) do (set arr%%x=%%x)
goto:eof

:strlen
	set #=%~1
	set length=0
	:stringLengthLoop
	if defined # (set #=%#:~1%&set /A length += 1&goto stringLengthLoop)
	set "len=%length%"
goto:eof

:tohex
	set LOOKUP=0123456789abcdef 
	set HEXSTR=
	set PREFIX=
	if "%1"=="" goto :EOF
	set /a A=%* || exit /b 1
	if !A! LSS 0 set /a A=0xfffffff + !A! + 1 & set PREFIX=f
	:loophex
	set /a B=!A! %% 16 & set /a A=!A! / 16
	set HEXSTR=!LOOKUP:~%B%,1!%HEXSTR%
	if %A% GTR 0 goto :loophex
goto :EOF