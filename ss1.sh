# This is my first shell script.

#echo "Cuál es tu nombre?: "
#read NAME
#echo "Mi nombre es $NAME."


#mv $1 $2
#cat $2
#Lo siguiente es lo que ejecuto en la shell:
	#./ss1.ssh file1 file2


#echo "Cuál es el archivo que quieres cambiar?: "
#read OLD_FILE
#echo "A qué nombre quieres cambiar?: "
#read NEW_FILE
#mv $OLD_FILE $NEW_FILE
#cat $NEW_FILE


#Este ejemplo muestra como cambiar los permisos y como argumento usamos un file
#chmod 644 $1
#ls -la $1


# En la shell podemos asignar las variables:
	#set uno dos tres
	#echo $1
	#echo $2
	#echo $3
	#echo $*
	

# En la shell podemos asignar las variables:
	#set `cat file`
	#echo $*


# Renames a file.name where name is the login name of the user
#NAME=$USER
#mv $1 $1.$NAME

#NAME=$1
#set `who`
#mv $NAME $NAME.$1
#ls -l


#Ver el numero de variables establecidos
#echo $#
#echo "El numero de items en el directorio actual es $#"


# Arithmetic operations
#a=15
#b=20
#echo `expr $a + $b`
#echo `expr $a - $b`
#echo `expr $a \* $b`
#echo `expr $a / $b`
#echo `expr $a % $b`


# Operator Precedence
#a=10
#b=15
#c=2
#d=6
#OPERACION=`expr $a \* \( $b + $c \) / $d`
#echo $OPERACION


# Floating Point Aritmethic
#a=10.5
#b=3.5
#c=`echo $a + $b | bc`
#d=`echo $a - $b | bc`
#e=`echo $a \* $b | bc`
#f=`echo $a / $b | bc`
#echo $c $d $e $f


# Escape Secuences
#echo \-e "Hey World, \nwhat's up?"
#echo \-e "Hey World, \rwhat's up?"
#echo \-e "Hey World, \twhat's up?"
#echo \-e "Hey World, \b\b\b\bwhat's up?"
#echo \-e "\033[1mHey World, what's up?"


# Tput command
#tput clear
#echo \-e "Total number of rows on screen= \c"
#tput lines
#echo
#echo \-e "Total number of columns on screen= \c"
#tput cols
#tput cup 15 20
#tput bold
#echo "This should be in bold."	
#echo \-e "\033[0mBye Bye"


#if-then statement in action
#echo "Entra el source file y el target file: "
#read src dst
#if mv $src $dst
#then
	#echo "La operacion ha sido un exito."
#else
	#echo "Operacion fallida"
#fi


#if-then statement in action
#echo "Entra el source file y el target file: "
#read SOURCE TARGET
#if mv $SOURCE $TARGET
#then
	#echo "La operacion ha sido un exito."
#else
	#echo "Operacion fallida"
#fi


#Run Checks on Numbers
#echo \-e "Ingresa un numero entre 10 y 20: \c"
#read NUMERO
#if [ $NUMERO -lt 10 ]
#then
	#echo "That was under the belt partner."
#elif [ $NUMERO -gt 20 ]
#then
	#echo "That was uncool broh!"
#else
	#echo "Good job my nigga!"
#fi


#Run Checks on Files
#echo \-e "Enter a name: \c"
#read FILENAME
#if [ -f $FILENAME ] # para archivos.
#if [ -d $FILENAME ] # para directorios.
#if [ -s $FILENAME ] # para ver si el size es mayor a 0.
#if [ -w $FILENAME ] # para ver si el usuario tiene permisos de escritura.
#then
	#echo "You indeed entered a file name."
#else
	#echo "Dont't provide me crazy inputs."
#fi


# append
#echo \-e "Ingresa el file a verificar: \c"
#read FILENAME
#if [ -f $FILENAME ]
#then
	#if [ -w $FILENAME ]
	#then
		#`echo "Hola esta es la primera linea." > $FILENAME`
	#else
		#echo "No tienes permisos de escritura"
	#fi
#else
	#echo "$FILENAME no existe, pinche perro"
#fi


# Run checks on Strings
#str1="Hey You!"
#str2="What's up?"
#str3=""
#[ "$str1" == "$str2" ]
#echo $?
#[ "$str1" != "$str2" ]
#echo $?
#[ -n "$str1" ] # Para ver si el size es mayor a 0
#echo $?
#[ -z "$str3" ] # Para ver si el size es 0
#echo $?


# AND logical Operator
#echo \-e "Ingresa un numero entre 50 y 100: \c"
#read NUMERO
#if [ $NUMERO -le 100 -a $NUMERO -ge 50 ] # -a es el AND operator
#then
	#echo "Estas dentro de los limites."
#else
	#echo "Estas fuera de los limites"
#fi


# Contando el numero de caracteres
#echo \-e "Ingresa un caracter: \c"
#read VAR
#if [ `echo $VAR | wc -c` -eq 2 ]
#then
	#echo "You entered a character."
#else
	#echo "Invalid input."
#fi


# OR operator
#echo \-e "Enter a lowercase character: \c"
#read VAR
#if [ `echo $VAR | wc -c` -eq 2 ]
#then
	#if [ $VAR = a -o $VAR = e -o $VAR = i -o $VAR = o -o $VAR = u ]
	#then
		#echo "You entered a vowel."
	#else
		#echo "You didn't entered a vowel."
	#fi
#else
	#echo "Invalid input."
#fi


# Case statement
#echo \-e "Enter a character: \c"
#read VAR
#case $VAR in
	#[a-z])
		#echo "You entered a lowercase alphabet."
		#;;
	#[A-Z])
		#echo "You entered an uppercase alphabet."
		#;;
	#[0-9])
		#echo "You entered a digit."
		#;;
	#?)
		#echo "You entered a special symbol."
		#;;
	#*)
		#echo "You entered more than one characters."
		#;;
#esac


# Another date with 'case' Statement
#echo \-e "Enter a word: \c"
#read WORD
#case $WORD in
	#[aeiou]* | [AEIOU]*)
		#echo "The word begins with a vowel."
		#;;
	#[0-9]*)
		#echo "The word begins with a digit."
		#;;
	#*[0-9])
		#echo "The word ends with a digit."
		#;;
	#???)
		#echo "You entered a three letter word."
		#;;
	#*)
		#echo "I don't know what you have entered."
#esac


# while loop in action
#COUNT=12
#while [ $COUNT -le 100 ]
#do
	#echo $COUNT
	#COUNT=`expr $COUNT + 1`
#done


# Until loop in action
#COUNT=1
#until [ $COUNT -ge 10 ]
#do
	#echo $COUNT
	#COUNT=`expr $COUNT + 1`
#done


#------------------------------------------------------------


# FOR LOOPS
#for n in {1..10}
#do
	#echo $n
	#sleep 0.5
#done
#echo "Esto esta fuera del loop."


#for file in logfiles/*
#do
	#tar -xvf $file -C "logfiles/"
#done
#echo "Esto esta fuera del loop."

