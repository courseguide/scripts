#!/bin/sh

#sends both files in "backups" relative path folder

# (1) set up all the mysqldump variables
FILE=mysql_dump.sql.`date +"%Y%m%d"`
DBSERVER=127.0.0.1
DATABASE=course_guide_db
USER=rootcg
PASS=newpass123
FOLDER_ARCHIVE=public_html
FOLDER_TAR=$FOLDER_ARCHIVE".`date +%d.%m.%Y`.tar.gz"
FOLDER_TO_GO=backups

# (2) in case you run this more than once a day, remove the previous version of the file
unalias rm     2> /dev/null
rm ${FILE}     2> /dev/null
#rm ${FOLDER_ARCHIVE}   2> /dev/null

# use this command for a database server on a separate host:
#mysqldump --opt --protocol=TCP --user=${USER} --password=${PASS} --host=${DBSERVER} ${DATABASE} > ${FILE}

# use this command for a database server on localhost. add other options if need be.
mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE}

# (4) gzip the mysql database dump file
#gzip $FILE

# (5) show the user the result
echo "${FILE} was created:"
ls -l ${FILE}

#make archive
echo $FOLDER_ARCHIVE
echo $FOLDER_ARCHIVE".`date +%d.%m.%Y`.tar.gz"
#to_archive = $FOLDER_ARCHIVE

cd "$FOLDER_ARCHIVE" && tar --exclude=d888689 --exclude=devguide -zcvf ../$FOLDER_TAR . && cd ..

mv $FOLDER_ARCHIVE".`date +%d.%m.%Y`.tar.gz" $FOLDER_TO_GO
mv $FILE $FOLDER_TO_GO
