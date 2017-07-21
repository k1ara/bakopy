:- transformar a .7z cada archivo por separado
:- archivos del día actual
:- copiar los .rar al servidor sysnology
:- eliminar los .rar ya copiados

echo Programa que comprime por separado, 
echo copia a servidor externo 
echo y elimina archivos backup

::7z a -mx9t7z files.7z *.txt   REM cambiar mismo nombre por separado y extension

FOR %I IN (*.txt) DO 7z a -t7z “%~nI” “%I”


