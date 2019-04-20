# uses ffmpeg to rip a dvd to transportstreams
ripDvd() {
	if [ $# -lt 2 ]; then
		echo "usage: $0 dvdDir outputDir"
		exit 1;
	fi
	forTen=( 0 1 2 3 4 5 6 7 8 9 )
	for i in ${forTen[@]}
	do
		ripName="$1/VTS_01_$i.VOB"
		echo $ripName
		if [ -f $ripName ]; then
			ffmpeg -i $ripName -c copy "$2/output$i.ts"
		fi
	done
}

# main program
saveIFS=$IFS
IFS=$(echo -en "\n\b")
timeSave=$(date)
ripDvd $*
IFS=$saveIFS
echo "$timeSave"
date
