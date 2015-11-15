#!/bin/sh

for dir in `find . -maxdepth 1 -type d | egrep -v '^.$'`
do
    echo 'Compressing directory' $dir
    
    tar -zcvf ${dir}.tar.gz $dir
done

echo 'Uploading directories'
scp ./*.gz vystadial.ms.mff.cuni.cz:/var/www/download/kams
