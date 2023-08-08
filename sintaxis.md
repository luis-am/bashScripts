Para verificar si una variable está vacía o contiene caracteres, para esto se hace uso del switch '-n'.

	VARIABLE=luisam

	if [ -n $VARIABLE ]; then
		echo "La variable tiene caracteres y es '$VARIABLE'."
	else
		echo "La variable está vacía."
	fi

---

Para verificar si un folder existe, se hace uso del parámetro '-d'.

	if [ -d "/home/luisam/bashScripts/folder" ]; then
		echo "Este folder existe."
	else
		echo "Este folder no existe."
	fi

---

Para verificar si un archivo existe, se hace uso del parámetro '-f'.

	archivo="/home/luisam/file"
	
	if [ -f $archivo ]; then
		echo "El archivo $archivo existe."
	fi
