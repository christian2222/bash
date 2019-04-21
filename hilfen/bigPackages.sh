# ask for installtion of big software packages
PS3='Do you want to install Gimp and TexLive full?'
options=("y" "n")

select opt in "${options[@]}"
do
	case $opt in
		y )
			apt-get install -y texlive-full
			apt-get install -y gimp
			echo "TexLive full and Gimp are installed"
			break
			;;
		n )
			echo "ok, TexLive base was installed as default"
			break
			;;
#		*)
#			echo "sorry, can't understand: $REPLY"
#			;;
	esac
done



