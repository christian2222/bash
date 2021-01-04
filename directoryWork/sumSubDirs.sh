for directory in ./*/
do
	echo "$directory has the following elemebts"
	fdupes -rSm $directory
	echo "*****"
done
