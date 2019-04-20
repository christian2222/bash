# set the input field separator
IFS=$'\n'

for dir in $(ls -d ../*/); do
		cd $dir
		pwd
		# cd ../hdd\ 1.0tb

		cp /media/xy/hdd\ 1.0tb/important*.tar .
done

