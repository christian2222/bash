while IFS= read -r line
do
	escapedLine=$(printf '%q' "$line")
	echo " remove file $escapedLine"
	rm "$escapedLine"
done < filesTpremove.txt
