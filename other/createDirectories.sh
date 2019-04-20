find . -type -d -exec ls -d {} \; > directories.txt
sed -i 's/.//' directories.txt # delete the points at the beginning; -i changes the file itself!





