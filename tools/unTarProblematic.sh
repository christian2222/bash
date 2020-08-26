#!/bin/bash
for file in *.tar
do
	echo ""
	echo "Extracting $file ..."
	cuttedName=$( basename $file .tar) # filename without extension
	# note: use a slash to produce a directory at the end of $cuttedName
	# note: first create the directory, otherwise tar complains
	mkdir "$cuttedName"/
	 pv "$file" | tar -x --ignore-failed-read --totals --directory "$cuttedName"/
	# pv "$file" | tar -x --totals --direectory "$uncuttedName"/
	result=$?
	if [ $result -eq 0 ]; then
		echo "File $file successfully extracted."
	fi
	echo ""
done
