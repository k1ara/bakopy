:-copiar archivos a destino remoto
:-mover archivos a carpeta distinta
:-borrar carpeta local

cd prueba1

robocopy directorio1 directorio2 *.txt /E /V /FP /R:2 /W:10 /TS /BYTES

cd directorio1

del *.txt

