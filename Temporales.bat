@echo off
TITLE LIMPIADOR DE TEMPORALES SEARS
MODE con:cols=90 lines=40 



:inicio
				SET var=0
cls
color 0B
echo.
echo.
echo.
echo. 				Limpiador de temporales SEARS
echo.
echo.
echo __________________________________________________________________________________________
echo.
echo  				%DATE% ^| %TIME% 
echo.
echo __________________________________________________________________________________________
echo.
echo  				1   Limpiador de temporales  				 
echo.				        
echo. 				      		     
echo.
echo 				6    Salir
echo.
echo.				       
echo.	
echo.				       
echo.	
echo __________________________________________________________________________________________
echo.
echo.
echo.
echo.
echo.

SET /p var= ^> Seleccione la opcion [1] para limpiar y [6] para salir : 

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="6" goto salir

::Mensaje de error, validaci�n cuando se selecciona una opci�n fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
    echo.
    echo. Has elegido la opcion No. 1
    echo.
    echo.
    echo.

	cd /D %temp%
	for /d %%D in (*) do rd /s /q "%%D"
	del /f /q *
	del /s /f /q C:\Windows\Temp\*.*
	

	del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
		
   
    goto:inicio


:salir
    @cls&exit