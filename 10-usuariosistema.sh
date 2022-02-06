#!/bin/bash


# se agrega función de ayuda 


# función de ayuda
function ayuda() {

cat << TextoAyuda
SYNOPSIS

    $0 NOMBRE_USUARIO

DESCRIPCION 
    REGRESA UNO DE LOS DOS  SIGUIENTES MENSAJE 
        SI  Si el usuario existe en el sistema operativo
        NO  Si el usuarno no existen en el sistema operativo

CÓDIGOS DE RETORNO
    1 si el numero del parametro es distinto de uno 


TextoAyuda

}



if [ $# -ne 1 ]; then 
    echo "El número del parametro debe ser igual a 1"
    ayuda
    exit 1 
fi

ESTA_EN_SISTEMA=`grep -E ^$1: /etc/passwd`

if [ -z "$ESTA_EN_SISTEMA" ]; then
        echo "NO"
else
        echo "SI"
fi