#! /bin/bash

DEST="/mongo_backup/$(date +%F_%R)"
mongodump -o $DEST

# Delete backups created 14 or more days ago
find /mongo_backup -mindepth 1 -ctime +14 -delete