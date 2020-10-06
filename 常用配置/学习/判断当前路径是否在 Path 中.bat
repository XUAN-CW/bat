@echo off 
set EXISTS_FLAG=false
echo %Path%|find "%~dp0">nul&&set EXISTS_FLAG=true
if "%EXISTS_FLAG%"=="true" (
	echo true
) else (
	echo false
)
@cmd /k