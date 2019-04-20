#!/bin/bash

recursivecopy() {
	local xy="$1"
  for d in *; do
    if [ -d $d ]; then
	echo $d
	# sleep 2 
	# Achtung: bei Rekursion 1. ten Parameter mit übergeben!!!
      (cd $d; recursivecopy "$xy")
    fi
pwd=$(pwd) # absoluten Pfad in eine Variable schreiben; ohne Leerzeichen
# echo "$pwd" # Achtung pwd != $pwd -> guteInfo
echo "Extrahieren von $pwd"
# sleep 3
for i in  *.* *; do
# *.7z *.xz *.zip *.gz *.gzip *.tgz *.bz2 *.bzip2 *.tbz2 *.tb2 *.tbz *.tar *.wim *.swm *.lzma *.rar *.cab *.arj *.z *.taz *.cpio *.rpm *.deb *.lzh *.lha *.chm *.chw *.hxs *.iso *.msi *.doc *.xls *.ppt *.dmg *.xar *.hfs *.exe *.ntfs *.fat *.vhd *.mbr *.squahfs *.cramfs *.scap *.jar
	echo extract "$i" "$xy" # nette Ausgabe; macht Programm aber langsam
	# echo mv "$i" "/media/CnMemory Software/testdata/tmp/real/Done" sinnlos, nur relative pfade verwenden
	# ändere mv zu cp, um alle gepackten Dateien in allen Ordnern zu sehen sind
	7z -y x "$i" -o"$xy" >/dev/null # 2>/dev/null sende Fehler ins "Nichts" bzw. in den Mülleimer
#	kein Löschen notwendig, da wir von einem Ordner in den nächsten extrahieren
#	echo ... extraction is done.
#	if [ -e "$i" ]
#	then 
		
#		echo Deleting "$i"...
		# rm -f "$i"
#		echo ... done
# 	else
# 		echo "no deletion"	
#	fi
	# rm "$i"
	# sleep 0.05
  done
done
}

# echo $1
yx=$1
echo $yx
# sleep 3
absPath=$(pwd)
zeita=$(date) # Zeit in eine Variable schreiben; ohne Leerzeichen
recursivecopy "$yx"
echo relative: $yx
echo absolute: $absPath
zeitb=$(date)
echo $zeita
echo $zeitb


