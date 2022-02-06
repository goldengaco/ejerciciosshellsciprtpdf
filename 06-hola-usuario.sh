#!/bin/bash


# se agrega función de ayuda 


# función de ayuda
function ayuda() {

cat << TextoAyuda
SYNOPSIS

	$0 NOMBRE_1 [NOMBRE_2] ... [NOMBRE_N]

DESCRIPCION
   Muestra "Hola NOMBRE_1, NOMBRE_2, ... NOMBRE_N!" por pantalla.

CÓDIGOS DE RETORNO
    1 Si el número de parámetros es menor que 1
    2 Si el usuario no está conectado

TextoAyuda

}

# se cuenta la cantidad de parametros
echo "numero de parámetros = $#"



# validar el número de parámetro menor o igual que 0 

if [ $# -le 0 ]; then
 echo "Hay que introducir al menos un parámetro."
 # se agrega la función de ayuda
 ayuda
 exit 1
fi


Mensaje="Hola"
PRIMERO=1

# Mientras haya parámetros

# valida si esta vacio con -n 
while [ -n "$1" ]; do

            usuario_conectado=`who | grep $1`

            if [ -z "$usuario_conectado" ]; then
                    echo "El usuario $1 no esta conectado"
                    ayuda
                    exit 2 
            fi

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

exit 0      