#! /bin/bash

DIRECTORIO="./EPNro1"
DIRECTORIO_ENTRADA="$DIRECTORIO/entrada"
DIRECTORIO_SALIDA="$DIRECTORIO/salida"
DIRECTORIO_PROCESADO="$DIRECTORIO/procesado"
CONSOLIDAR= '
FILENAME="archivo"

cat entrada/*.txt >> salida/$FILENAME.txt
mv entrada/*.txt procesado/'

export FILENAME="datos-estudiantes"


crear_entorno() {
  mkdir -p $DIRECTORIO $DIRECTORIO_ENTRADA $DIRECTORIO_SALIDA $DIRECTORIO_PROCESADO
  touch $DIRECTORIO
  cat $CONSOLIDAR > $DIRECTORIO/consolidar.sh
}

menu() {
  echo "Seleccione una opción:"
  echo "1) Crear entorno"
  echo "2) Correr proceso"
  echo "3) mostrar listado de alumnos ordenados por numero de padon"
  echo "4) Mostrar las 10 notas mas altas"
  echo "5) Alumno por padron"
  echo "6) Salir"
  read x
  case $x in
    1) crear_entorno ;;
    2) consolidar.sh ;;
    3)  ;;
    *) echo "Opción no válida" ;;
  esac
}


crear_entorno
