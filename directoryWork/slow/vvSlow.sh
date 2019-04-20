# slow version of vv, without speedup but compares all files
checkParams() {
	if [ $# -lt 2 ]; then
		echo "usage: $0 dir1 dir2"
		exit 1;
	fi

	if [ -d $1 -a -d $2 ]; then
		#$listOne = 'ls $1`
		#$listTwo = `ls $2`
#		echo $listOne
		for fileOne in $1/*
		do
			for fileTwo in $2/*
			do
				baseOne=$(basename "$fileOne")
				baseTwo=$(basename "$fileTwo")
				# echo "$baseOne     $baseTwo"
				if [ $baseOne = $baseTwo ]; then
					echo "vergleiche $fileOne mit $fileTwo"
					# show file comparsion by pv delayed by 5 seconds
					pv -D 5 "$fileOne" | cmp "$fileTwo"
					result=$?
					if [ -d $fileOne -a -d $fileTwo ]; then
						echo "gleiche Verzeichnisse"
						echo "~> Rekursion auf $fileOne und $fileTwo"
						checkParams "$fileOne" "$fileTwo"
					fi
					if [ -f $fileOne -a -f $fileTwo -a $baseOne = $baseTwo ]; then
						# -f heisst reguläre Datei
						# echo $result
						if [ $result -eq 0 ]; then
							echo "Dateien sind gleich"
							newName="$fileTwo.double"
							mv -v $fileTwo $newName
						fi
						if [ $result -eq 1 ]; then
							echo "ungleiche Dateien"
						fi
						if [ $result -gt 1 ]; then
							echo "keine Aussage machbar"
						fi
					fi
				fi
			done
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
checkParams $*
IFS=$saveIFS
echo "$timeSave"
date


