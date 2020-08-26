# compares two directories and searches first directory for double files in second directory (-> speed up from quadratic to linear running time)
checkParams() {
	if [ $# -lt 2 ]; then
		echo "usage: $0 dir1 dir2"
		exit 1;
	fi
	if [[ "$1" == "$2" ]]; then
		echo "WARNING; compare the same directory. $1 with $2."
		echo "Script was made for diretories with different names!"
		exit 1;
	fi
	if [ -d $1 -a -d $2 ]; then
		#$listOne = 'ls $1`
		#$listTwo = `ls $2`
#		echo $listOne
		for fileOne in $1/*
		do
			let schleifen=schleifen+1
			fileTwo="$2/$(basename $fileOne)"
				# echo "'$fileOne'	basis	'$fileTwo'"
				baseOne=$(basename "$fileOne")
				baseTwo=$(basename "$fileTwo")
				# echo "$baseOne     $baseTwo"
				# basenames equal and $fileTwo exists and is readable
				if [ $baseOne = $baseTwo -a -r $fileTwo ]; then
					echo "vergleiche $fileOne mit $fileTwo"
					# show file comparsion by pv delayed by 5 seconds
					pv -D 5 "$fileOne" | cmp "$fileTwo"
					result=$?
					if [ -d $fileOne -a -d $fileTwo ]; then
						echo "gleiche Verzeichnisse"
						echo "~> Rekursion auf $fileOne und $fileTwo"
						let rekursionen=rekursionen+1
						checkParams "$fileOne" "$fileTwo"
					fi
					if [ -f $fileOne -a -f $fileTwo -a $baseOne = $baseTwo ]; then
						# -f heisst reguläre Datei
						# echo $result
						if [ $result -eq 0 ]; then
							echo "Dateien sind gleich"
							let gleiche=gleiche+1
							newName="$fileTwo.double"
							mv -v $fileTwo $newName
						fi
						if [ $result -eq 1 ]; then
							echo "ungleiche Dateien"
							let ungleiche=ungleiche+1
						fi
						if [ $result -gt 1 ]; then
							echo "keine Aussage machbar"
						fi
					fi
				fi
				#verglichen=$[ gleiche + ungleiche ]
				#echo "$verglichen Dateien verglichen"
				echo "$gleiche gleiche Dateien"
				echo "$ungleiche ungleiche Dateien"
				echo "$rekursionen Rekursionen"
				echo "$schleifen Schleifen"
#			echo "$fileOne"
		done
		echo "------------"
#		for fileTwo in $2/*
#		do
#			echo "$fileTwo"
#		done

		# echo "zwei verzechnisse"
	else
		echo "gebe 2 Verzeichnisse an"
		exit 1
	fi
}



# main program
saveIFS=$IFS
IFS=$(echo -en "\n\b")
timeSave=$(date)
gleiche=0
ungleiche=0
verglichen=0
rekursionen=0
schleifen=0
checkParams $*
IFS=$saveIFS
echo "$timeSave"
date


