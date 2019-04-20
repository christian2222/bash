# adds suffix to all dirs
renameDirs() {
	if [ $# -lt 1 ]; then
		echo "usage $0 addedNameToDirs"
		exit 1
	fi
	for entry in *
	do
	if [ -d $entry ]; then
		mv "$entry" "$entry$1"
	fi
	done
}


# main program
saveIFS=$IFS
IFS=$(echo -en "\n\b")
timeSave=$(date)
renameDirs $*
IFS=$saveIFS
