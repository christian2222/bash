# compare files by size (byte by byte) and rename them into .double iff they are the same
checkDoubles() {
	if [ $# -lt 1 ]; then
		echo "usage: $0 dir1"
		exit 1;
	fi
	if [ -d $1 ]; then
		for fileOne in $1/*.*
		do
			for fileTwo in $1/*.*
			do
				if [ -f $fileOne -a -f $fileTwo ]; then
					if [ $fileOne != $fileTwo ]; then
						sizeOne=$(du -b "$fileOne" | cut -f1)
						sizeTwo=$(du -b "$fileTwo" | cut -f1)
						if [ $sizeOne -eq $sizeTwo ]; then
							echo "vergleiche $fileOne der Größe $sizeOne"
							echo "       mit $fileTwo der Größe $sizeTwo"
							echo ""
							cmp $fileOne $fileTwo
							result=$?
							if [ $result -eq 0 ]; then
								echo "Dateien $fileOne und"
							        echo "        $fileTwo sind identisch"
								echo ""
								newName="$fileTwo.double"
								mv -v $fileTwo $newName
							fi
						fi
					fi
				fi
			done
		done
	fi

}

saveIFS=$IFS
IFS=$(echo -en "\n\b")
timeSave=$(date)
checkDoubles $*
IFS=$saveIFS
echo "$timeSave"
