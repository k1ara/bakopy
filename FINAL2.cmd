echo Programa que comprime por separado, 
echo copia a servidor externo 
echo y elimina archivos backup

title BAKOPY

set PATH=%PATH%;"C:\program Files\7-zip"
:-setlocal EnableDelayedExpansion
cd prueba1
cd local
:-set %I = 0
FOR %%I IN (*.txt) DO (7z.exe a -t7z "%%~nI" "%I")
cd ..
robocopy local remoto *.7z /E /V /FP /R:2 /W:10 /TS /BYTES /
cd directorio1
del *.7z
move *.txt ..\copiados

echo FIN DEL PROGRAMA 