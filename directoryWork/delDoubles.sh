# delete all .double files produced by [compareDirs.sh] or [compareFilesBySize.sh]
saveIFS=$IFS
IFS=$(echo -en "\n\b")
# breche mit Meldung ab falls zuwenig Parameter
if [ $# -lt 1 ]; then
	echo "usage: $0 directory"
	exit 1
fi
# lösche alle .double Dateien in $2
find $1 -name "*.double" -delete
# lösche leere Verzeichnisse rekursiv beginnend bei den Blättern
find $1 -type d -empty -delete
IFS=$saveIFS

