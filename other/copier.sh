#!/bin/bash

((foo = 1))

ls -l v"$foo"

echo v$foo

for i in {1..743}; do
	cd recup_dir."$i"
	# echo "verschiebe Verzeichnis $i"
	ls -l
	# mv * ../All
	# mv *.* ../All
	# pwd
	cd ..
	# rmdir recup_dir."$i"
	# read -p "press Enter"
done

