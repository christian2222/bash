#!/bin/bash
for file in *.tar
do
	echo ""
	echo "Extracting $file ..."
	# pv "$file" | tar -x --ignore-failed-read --totals
	pv "$file" | tar -x --totals
	result=$?
	if [ $result -eq 0 ]; then
		echo "File $file successfully extracted."
	fi
	echo ""
done
