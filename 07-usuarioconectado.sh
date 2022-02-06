#!/bin/bash

function ayuda() {

cat << Info_ayuda
SYNOPSIS
$0 usuario 

Descripción 
    que es lo que hace 
    muestra un si, el usuario esta conectado y no si el usuario no esta conectado

Codigo de retorno
    1 si el número de parámetros es distinto de 1

Info_ayuda
}


# validar que se haya puesto un parametro

if [ $# -ne 1 ]; then 
    echo -e "\nTienes que agregar un parametro al script $0 \n"
    ayuda
    exit 1
fi 

# comando simple 
#ubicacionActual=`pwd`


# comando con variable 
#infokernel=$(uname -a)



## validar usuario conectado
 usuario_conectado=`who | grep -w $1 | awk '{print $1}'`

            if [ -z "$usuario_conectado" ]; then
                    echo "NO"
            else 
                    echo "SI" 
            fi

