# Reproductor de m煤sica realizado en lenguaje Pascal 馃専

Este programa pide al usuario que ingrese el nombre del archivo de audio que desea reproducir. 
Si el archivo existe, se reproduce con la funci贸n sndPlaySound. 
La opci贸n SND_ASYNC indica que la reproducci贸n se realizar谩 en segundo plano 
y la opci贸n SND_NODEFAULT indica que no se usar谩 ning煤n sonido predeterminado 
en caso de que el archivo no se pueda reproducir. 

La funci贸n sndPlaySound regresa True mientras se est茅 reproduciendo el archivo de audio. 

El ciclo repeat espera hasta que la reproducci贸n se complete. 

Finalmente, se muestra un mensaje de que la reproducci贸n ha terminado.

## **Agregada funci贸n de pausar** 鉁?

Se agreg贸 una variable estado para indicar si la reproducci贸n est谩 en curso o est谩 pausada. 
La funci贸n KeyPressed se utiliza para verificar si se ha presionado una tecla, 
y la funci贸n ReadKey se usa para leer la tecla presionada. 
Si se presiona la tecla "p", la reproducci贸n se pausa o reanuda seg煤n sea el caso.
