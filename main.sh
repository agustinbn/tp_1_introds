#! /bin/bash

FILENAME="archivo"
DIRECTORIO="./EPNro1"
DIRECTORIO_ENTRADA="$DIRECTORIO/entrada"
DIRECTORIO_SALIDA="$DIRECTORIO/salida"
DIRECTORIO_PROCESADO="$DIRECTORIO/procesado"

crear_entorno() {
  mkdir -p $DIRECTORIO_ENTRADA $DIRECTORIO_SALIDA $DIRECTORIO_PROCESADO
}

correr_proceso() {
	bash $DIRECTORIO/consolidar.sh &
}

mostrar_notas_altas() {
	if [ -f "$DIRECTORIO_SALIDA/$FILENAME.txt" ]; then
		cat "$DIRECTORIO_SALIDA/$FILENAME.txt" | sort -k 5 -n -r | head -n 10
	else
		echo "El archivo $FILENAME.txt no existe en el directorio $DIRECTORIO_SALIDA"
	fi
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
    2) correr_proceso ;;
		4) mostrar_notas_altas ;;
    6) exit 0 ;;
    *) echo "Opción no válida" ;;
  esac
}

while true; do
  menu
done