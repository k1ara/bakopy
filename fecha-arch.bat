REM Revisa fecha de un archivo
REM y la coloca en un archivo de texto plano.

title datearch

cd prueba2

set /a variable=%%a

for /f "tokens=4 delims=;" /a in (fechahoy.txt) DO (echo >> Archivo_/a.txt)

echo FIN DEL PROGRAMA