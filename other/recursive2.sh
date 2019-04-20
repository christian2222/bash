#!/bin/bash

recursivecopy() {
  for d in *; do
    if [ -d $d ]; then
	echo $d
	sleep 3 
      (cd $d; recursivecopy)
    fi
for i in *.7z *.xz *.zip *.gz *.gzip *.tgz *.bz2 *.bzip2 *.tbz2 *.tb2 *.tbz *.tar *.wim *.swm *.lzma *.rar *.cab *.arj *.z *.taz *.cpio *.rpm *.deb *.lzh *.lha *.chm *.chw *.hxs *.iso *.msi *.doc *.xls *.ppt *.dmg *.xar *.hfs *.exe *.ntfs *.fat *.vhd *.mbr *.squahfs *.cramfs *.scap *.jar ; do
	pwd
	# ls $i
	echo $i
	# cp $i /media/CnMemory Software/testdata/tmp/test1 funktioniert
	cp $i $1
	echo cp $i "$1"
	sleep 3
  done
done
}

recursivecopy


