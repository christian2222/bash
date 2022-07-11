#!/bin/bash
# ask for installtion of big software packages
PS3='Do you want to install Gimp and TexLive full?'
myOptions=("yes" " no")

select opt in ${myOptions[@]}
do
	case $opt in
		"yes" )
			apt-get install -y texlive-full
			apt-get install -y gimp
			echo "TexLive full and Gimp are installed"
			break
			;;
		"no" )
			echo "ok, TexLive base was installed as default"
			break
			;;
		*)
			echo "sorry, can't understand: $REPLY"
			echo "Please choose number 1 or 2"
			;;
	esac
done



