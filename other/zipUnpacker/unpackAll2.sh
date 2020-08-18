#!/bin/bash
((mi = 50))
echo $mi
((dbefore = date))
cd /media/CnMemory Software/testdata/tmp # absoluter Pfad, auf dem alle relativen aufbauen
echo Working directory:
pwd
sleep 2
mkdir Extracted
mkdir Extracted/0
echo Starting copying process. This may take a while. Please wait...
# cp *.* Extracted/0 # nicht alles; zu entpackende Dateien; achte auf alle Formate!
cp *.sh Extracted
cd Extracted
echo ...copying done. Starting extraction. Please wait...
for i in {1..26}; do 
	echo ------------------------------
	echo Runde $i :
	((mi = $i - 1)) #Rechnen durch doppelteKlammer erzwingen

	mkdir $i # Verzechnisse werden nur angelegt, wenn Daten reingeschrieben werden
	# entpacke von Verzeichnis $mi ins Verzeichnis $i
	cd $mi
	.././relativeUnpackTo.sh ../$i
	cd ..
	# pwd
	# sleep 1
done
((dafter = date))
echo $dbefore
echo $dafter
echo ...everthings done!




