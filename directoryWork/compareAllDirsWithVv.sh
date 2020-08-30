for dirOne in $(ls -d */)
do
	for dirTwo in $(ls -d */)
	do
		echo vergleiche $dirOne mit $dirTwo
		./vv.sh $dirOne $dirTwo
	done
done


