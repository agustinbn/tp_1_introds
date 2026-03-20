#!/bin/bash

FILENAME="alumnos"
DIRECTORIO="./EPNro1"
DIRECTORIO_ENTRADA="$DIRECTORIO/entrada"
DIRECTORIO_SALIDA="$DIRECTORIO/salida"
DIRECTORIO_PROCESADO="$DIRECTORIO/procesado"

while true ; do 
    for archivo in "$DIRECTORIO_ENTRADA"/*.txt; do
        if [ -f "$archivo" ]; then          

            cat "$archivo" >> "$DIRECTORIO_SALIDA/$FILENAME.txt"

            sort -u "$DIRECTORIO_SALIDA/$FILENAME.txt" -o "$DIRECTORIO_SALIDA/$FILENAME.txt"

            mv "$archivo" "$DIRECTORIO_PROCESADO/"

        fi

    done
    sleep 5
done
