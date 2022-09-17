for directory in ./*/
do
	echo "$directory has the following elements"
	fdupes -rSm $directory
	echo "*****"
done
