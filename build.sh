#!/bin/sh
cd assets
test -e files && echo "\nBuilding files.tar\n------------------" && cd files && tar cvf ../files.tar --exclude .DS_Store * && cd ..
test -e templates && echo "\nBuilding templates.tar\n----------------------" && cd templates && tar cvf ../templates.tar * && cd ..


echo "\nBuilding de.stomt.feedback archive"
for i in `seq 1 de.stomt.feedback`;
do
                printf "-"
done
printf "\n"
tar --exclude=acptemplates --exclude=files --exclude=templates --exclude=nbproject --exclude=README* --exclude=.gitignore --exclude=*.tar.gz --exclude=LICENSE* --exclude=c --exclude=z --exclude=v -czvf ../de.stomt.feedback.tar.gz *

test -e files.tar && rm files.tar
test -e templates.tar && rm templates.tar

exit 0
