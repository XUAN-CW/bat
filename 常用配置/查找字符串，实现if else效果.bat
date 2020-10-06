@echo off  
set str1=sxming.
echo %str1%|findstr "^sx" >nul  
if %errorlevel% equ 0 (  
echo ok  
) else (  
echo not ok  
)  
pause