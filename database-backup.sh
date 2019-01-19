#!/bin/bash
export PGUSER=davidchuka
export PGDATABASE=davidchuka
export PGHOST=127.0.0.1
export PGPASSWORD=davidchukasupersecret
TIMESTAMP=%d-%m-%Y-%T
DELDATE=`date --date="-7 day" +${TIMESTAMP}`
DateTimeStamp=$(date +${TIMESTAMP})
HHOME=/home/davidchuka
if [ "$2" != "" ]; then
	BackupFileName=$2
else
	BackupFileName=davidchuka_backup.sql.gz
fi
DROPBOX_UPLOADER=${HHOME}/dropbox_uploader.sh
TIMESTAMPED_BACKUPFILE=${DateTimeStamp}_${BackupFileName}
BACKUP_DIR=${HHOME}/backups
# Backup database from docker container
/usr/bin/pg_dump --host=localhost -U davidchuka davidchuka | gzip -c  > ${BACKUP_DIR}/${TIMESTAMPED_BACKUPFILE} 2>&1

# Upload to dropbox
${HHOME}/dropbox_uploader.sh upload ${BACKUP_DIR}/${TIMESTAMPED_BACKUPFILE} .

rm -rf ${BACKUP_DIR}/${TIMESTAMPED_BACKUPFILE}