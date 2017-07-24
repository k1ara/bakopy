echo Programa que comprime por separado, 
echo copia a servidor externo 
echo y elimina archivos backup

pause

cd prueba1
cd directorio1
FOR %I IN (*.txt) DO 7z a -t7z “%~nI” “%I”
cd ..
robocopy directorio1 directorio2 *.txt /E /V /FP /R:2 /W:10 /TS /BYTES
cd directorio1
del *.7z
cd ..
move *.txt EXTRACCION

echo FIN DEL PROGRAMA 

pause