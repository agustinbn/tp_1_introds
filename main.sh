#! /bin/bash

DIRECTORIO="./EPNro1"
DIRECTORIO_ENTRADA="$DIRECTORIO/entrada"
DIRECTORIO_SALIDA="$DIRECTORIO/salida"
DIRECTORIO_PROCESADO="$DIRECTORIO/procesado"
SALIDA=false

export FILENAME="datos-estudiantes"


crear_entorno() {
  mkdir -p $DIRECTORIO_ENTRADA $DIRECTORIO_SALIDA $DIRECTORIO_PROCESADO
}

menu() {
  echo "┌─────────────────────────────────────┐"
  echo "│                MENU                 │"
  echo "├─────────────────────────────────────┤"
  echo "│ 1 - Crear entorno                   │"
  echo "│ 2 - Correr proceso                  │"
  echo "│ 3 - Listado de alumnos              │"
  echo "│ 4 - Mostrar las 10 notas mas altas  │"
  echo "│ 5 - Buscar alumno por padron        │"
  echo "│ 6 - Salir                           │"
  echo "└─────────────────────────────────────┘"
  echo -n "Selecione una opcion: "
  read x
  case $x in
    1) crear_entorno ;;
    2) ./EPNro1/consolidar.sh & ;;
    3);;
    4);;
    5);;
    6)  SALIDA=true;;
    *) echo "Opción no válida" ;;
  esac
}
until [ "$SALIDA" = "true" ]; do
  menu
done