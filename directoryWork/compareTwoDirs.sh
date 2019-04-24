# create softlinks to equal files


rekuOne() {
	if [ $# -lt 2 ]; then
		echo "usage: $0 orgDir dirToLink"
		echo "$1 and  $2"
		exit 1;
	fi

	for fileOne in $1/*
	do
		firstFile=$fileOne
		#echo "1. $fileOne"
		firstBase=$(basename "$firstFile")
		firstName="${firstBase%.*}"
		firstDir=$(dirname "$firstFile")
		firstExt="${firstBase#*.}"
		firstSize=$(stat -c%s "$firstFile")
		if [ -f "$fileOne" -a -d "$2" ]; then
			echo "   2. Rekursion mit $fileOne auf Verzeichnis $1" >> log.txt
			#echo $(dirname $1)
			rekuTwo "$2"
		fi
		if [ -f "$fileOne" -a -f "$fileTwo" ]; then
			echo "zwei Dateien: $fileOne and $fileTwo" >> log.txt
		fi	
		deepOne=""
		# for((i=0; i < $laufOne; i++))
		# do
		# 	deepOne+="="
		# done
		#echo "1. $deepOne $fileOne"
		#echo "Datei $firstFile"
		#echo "Basis $firstBase"
		#echo "Name $firstName"
		#echo "Ext $firstExt"
		#echo "Size $firstSize"
		if [ -d $fileOne ]; then
			let laufOne=laufOne+1
			rekuOne "$fileOne" "$2"
			let laufOne=laufOne-1
		fi
	done
}

rekuTwo() {
	if [ $# -lt 1 ]; then
		echo "second recursion without parameter"
	fi
	for fileTwo in $1/*
	do
		secondFile=$fileTwo
		# echo "2. $fileTwo"
		secondBase=$(basename "$secondFile")
		secondDir=$(dirname "$secondFile")
		secondDir=${secondDir#*/}
		secondName="${secondBase%.*}"
		secondExt="${secondBase#*.}"
		secondSize=$(stat -c%s "$secondFile")
		echo "$firstSize $secondSize $fileOne $fileTwo" >> log.txt
		if [ -f $fileOne -a -f $fileTwo -a -f $secondFile ]; then
			if [ $firstSize = $secondSize  -a $fileOne != $fileTwo  -a $firstDir != $secondDir ]; then
				echo "Vergleiche $fileOne mit $fileTwo binär"
				cmp $fileOne $fileTwo
				result=$?
				if [ $result -eq 0 ]; then
					echo "lösche $fileTwo"
					rm $fileTwo
					echo "erzeuge Link von $fileTwo.softlink auf $fileOne" >> log.txt
					ln -sr "$fileOne" "$fileTwo.softlink"
					#echo $firstDir $secondDir
				fi
			fi
		fi
		deepTwo=""
		# for((i=0; i < $laufTwo; i++))
		# do
		# 	deepTwo+="="
		# done
		#echo "         2. $deepTwo $fileTwo"
		#echo "Datei $secondFile"
		#echo "Basis $secondBase"
		#echo "Name $secondName"
		#echo "Ext $secondExt"
		#echo "Size $secondSize"
		if [ -d $fileTwo ]; then
			let laufTwo=laufTwo+1
			rekuTwo "$fileTwo"
			let laufTwo=laufTwo-1
		fi
	done
}

saveIFS=$IFS
IFS=$(echo -en "\n\b")
timeSave=$(date)
laufOne=0
laufTwo=0
# firstFile=compareDirs.sh
# secondFile=compareDirs.sh
# firstBase=$(basename $firstFile)
# firstName="${firstBase%.*}"
# firstExt="${firstBase#*.}"
# firstSize=$(stat -c%s $firstFile)
# secondBase=$(basename $firstFile)
# secondName="${firstBase%.*}"
# secondExt="${firstBase#*.}"
# secondSize=$(stat -c%s $firstFile)
#echo "Datei $firstFile"
#echo "Basis $firstBase"
#echo "Name $firstName"
#echo "Ext $firstExt"
#echo "Size $firstSize"
echo "log-file:" > log.txt
rekuOne $*
IFS=$saveIFS
echo "$timeSave"
date

