FILENAME="archivo"

while true 
do
  if ls entrada/*.txt >/dev/null 2>&1; then
      cat entrada/*.txt >> "salida/$FILENAME.txt"
      mv entrada/*.txt procesado/
      echo "Archivos procesados a las $(date)"
  fi
  
  sleep 2
done