#!/bin/bash

# echo Hello

# for i in $( ls ); do
# 	echo item:$i
# done

for i in {1..10}; do
	echo "Welcome $i times"
done

for i in *.7z *.xz *.zip *.gz *.gzip *.tgz *.bz2 *.bzip2 *.tbz2 *.tb2 *.tbz *.tar *.wim *.swm *.lzma *.rar *.cab *.arj *.z *.taz *.cpio *.rpm *.deb *.lzh *.lha *.chm *.chw *.hxs *.iso *.msi *.doc *.xls *.ppt *.dmg *.xar *.hfs *.exe *.ntfs *.fat *.vhd *.mbr *.squahfs *.cramfs *.scap *.jar ; do
# 	echo $i
	ls $i
	7z -y x $i -o$1  # option -r bringt nichts
done

