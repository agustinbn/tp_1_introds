FILENAME="alumnos"
DIRECTORIO="./EPNro1"
DIRECTORIO_ENTRADA="$DIRECTORIO/entrada"
DIRECTORIO_SALIDA="$DIRECTORIO/salida"
DIRECTORIO_PROCESADO="$DIRECTORIO/procesado"

while true; do
  if [ -n "$(ls $DIRECTORIO_ENTRADA/*.txt 2>/dev/null | head -n 1)" ]; then
		cat $DIRECTORIO_ENTRADA/*.txt >> "$DIRECTORIO_SALIDA/$FILENAME.txt"
		mv $DIRECTORIO_ENTRADA/*.txt $DIRECTORIO_PROCESADO/
  fi
  
  sleep 5
done