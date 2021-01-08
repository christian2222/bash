while IFS= read -r line
do
	escapedLine=$(printf '%q' "$line")
	echo " remove file $escapedLine"
	rm $escapedLine # rm -i does not work because of read
done < filesToRemove.txt
