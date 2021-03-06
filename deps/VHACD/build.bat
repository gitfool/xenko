pushd ..\..\externals\bullet2-sharp-mobile\src\Windows

REM Compile vhacd
call build-vhacd-windows.bat
if %ERRORLEVEL% neq 0 GOTO :error_popd
popd

REM Create folders
mkdir x86
mkdir x64

copy ..\..\externals\bullet2-sharp-mobile\src\VHACD_Lib\VHACD\Release\*.dll x86
copy ..\..\externals\bullet2-sharp-mobile\src\VHACD_Lib\VHACD\x64\Release\*.dll x64

GOTO :end
:error_popd
popd
echo Error during compilation
EXIT /B %ERRORLEVEL%
pause
:end
