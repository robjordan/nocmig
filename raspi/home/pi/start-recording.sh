#!/bin/bash
DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "Record service started at ${DATE}" | systemd-cat -p info
arecord  -c 2 -f S24_3LE -r 96000 --max-file-time 60 --max-file-time 60 --buffer-time 1000000 /media/recordings/`date +'%Y%m%d-%H%M'`.wav
