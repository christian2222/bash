#!/bin/bash
((mi = 50))
echo $mi
((dbefore = date))
cd "/media/CnMemory Software/testdata/tmp/real" # absoluter Pfad, auf dem alle relativen aufbauen
echo Working directory:
pwd
# sleep 2
mkdir "Extracted"
mkdir "Extracted/0"
echo Starting copying process. This may take a while. Please wait...
cp *.7z *.xz *.zip *.gz *.gzip *.tgz *.bz2 *.bzip2 *.tbz2 *.tb2 *.tbz *.tar *.wim *.swm *.lzma *.rar *.cab *.arj *.z *.taz *.cpio *.rpm *.deb *.lzh *.lha *.chm *.chw *.hxs *.iso *.msi *.doc *.xls *.ppt *.dmg *.xar *.hfs *.exe *.ntfs *.fat *.vhd *.mbr *.squahfs *.cramfs *.scap *.jar "Extracted/0" # nicht alles; zu entpackende Dateien; achte auf alle Formate!
cp *.sh "Extracted"
cd "Extracted"
pwd
# sleep 3
echo ...copying done. Starting extraction. Please wait...
for i in {1..31}; do 
	echo ------------------------------
	echo Runde "$i" :
	pwd
	((mi = $i - 1)) #Rechnen durch doppelteKlammer erzwingen

	mkdir "$i" # Verzechnisse werden nur angelegt, wenn Daten reingeschrieben werden
	# entpacke von Verzeichnis $mi ins Verzeichnis $i
	baseDir=$(pwd)
	cd "$i" 
	targetDir=$(pwd)
	cd ..
	cd "$mi"
	pwd
	# sleep 5
	sourceDir=$(pwd)
	# cd .. keine Alternative: bleibe im Source-Verzechnis!
	# .././relativeUnpackTo.sh ../$i aktualisieren mit recursive.sh 
	.././recursive.sh "$targetDir"
	cd "$targetDir"
	pwd
	# ls -l
	echo target: "$targetDir"
	echo source: "$sourceDir"
	echo base: "$baseDir"
	# sleep 3
	cd ..
	# pwd
	# sleep 1
done
((dafter=date))
echo "$dbefore"
echo "$dafter"
echo ...everthings done!

#ToDo: Tipp-Ordner von 5 auf 6 Lösung: im .exe Archiv gibt es keinen Tipp Ordner



