# Reproductor de música realizado en lenguaje Pascal 🌟

Este programa pide al usuario que ingrese el nombre del archivo de audio que desea reproducir. 
Si el archivo existe, se reproduce con la función sndPlaySound. 
La opción SND_ASYNC indica que la reproducción se realizará en segundo plano 
y la opción SND_NODEFAULT indica que no se usará ningún sonido predeterminado 
en caso de que el archivo no se pueda reproducir. 

La función sndPlaySound regresa True mientras se esté reproduciendo el archivo de audio. 

El ciclo repeat espera hasta que la reproducción se complete. 

Finalmente, se muestra un mensaje de que la reproducción ha terminado.

## **Agregada función de pausar** ✨

Se agregó una variable estado para indicar si la reproducción está en curso o está pausada. 
La función KeyPressed se utiliza para verificar si se ha presionado una tecla, 
y la función ReadKey se usa para leer la tecla presionada. 
Si se presiona la tecla "p", la reproducción se pausa o reanuda según sea el caso.
