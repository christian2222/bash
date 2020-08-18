for fileOne in *.mp4
do
	baseName=$(basename "$fileOne" .mp4) # "$fileOne" quotes are necessary because of special chars in it
	echo "input: " $fileOne
	echo "var: " $baseName
	echo "target: " $baseName".mp3"
	# rename the file for conversion
	cp "$fileOne" "tmp.mp4"
	# ffmpeg problem with specialchars like whitespaces and '-'
	# ffmpeg -i \"$fileOne\" "$baseName..mp3"
	ffmpeg -i "tmp.mp4" "tmp.mp3"
	# rename it back
	mv "tmp.mp3" "$baseName".mp3""
done
rm "tmp.mp4"
