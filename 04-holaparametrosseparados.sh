#!/bin/bash
echo "numero de parámetros = $#"
# validar el número de parámetro menor o igual que 0 

if [ $# -le 0 ]; then
 echo "Hay que introducir al menos un parámetro."
 exit 1
fi

Mensaje="Hola"
PRIMERO=1

# Mientras haya parámetros

# valida si esta vacio con -n 
while [ -n "$1" ]; do
        # valida si es igual con -eq
      if [ $PRIMERO -eq 1 ] ; then 
            MENSAJE="$MENSAJE $1"
            PRIMERO=0
      else
            MENSAJE="$MENSAJE $1"
      fi

      #pasamos al siguiente parámetro
      shift
done

# Imprime la salida por pantalla 
echo $MENSAJE "!!!"

