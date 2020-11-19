#! /bin/bash
# set -x 
SOURCEDIR=/media/jordan/recordings
BACKUPDIR=/media/nas/backup/nocmig
DESTDIR=/home/jordan/Music/nocmig/output
DESTDIR2=/home/jordan/Music/nocmig/output-loud
lastdate="20000101"

mkdir -p $DESTDIR

for f in $SOURCEDIR/*.wav
do
  # basename format: YYYYMMDD-HHMMSS (last file modification)
  stamp=`stat -c "%y" $f |cut -c -19 |sed 's/[-:]//g' |sed 's/ /-/g'`
  d=`echo $stamp | cut -c1-8`
  t=`echo $stamp | cut -c10-13`
  dawn=`~/.virtualenvs/nocmig/bin/python /home/jordan/bin/sun.py $d dawn`
  dusk=`~/.virtualenvs/nocmig/bin/python /home/jordan/bin/sun.py $d dusk`
  echo Checking against dawn: $dawn and dusk: $dusk
  if [ $t -gt $dawn ] && [ $t -lt $dusk ]; then
      continue
  fi
  if [ $d -gt $lastdate ]; then
      lastdate=$d
  fi
  out=$DESTDIR/$stamp

  # lossless compress for retention
  f2=${out}.flac
  # flac --best $f -o $f2
  sox $f -t wav - remix 1  | flac - --best -o - > $f2

  # high-level spectrogram for reviewing presence / absence of birds
  sox $f2 -n channels 1 rate 22k spectrogram -o ${out}-sm.png -m -l -x1600 -z81
  # detailed spectrogram for bird id
  sox $f2 -n channels 1 rate 22k spectrogram -o ${out}-lg.png -m -l -x4800 -z81
  # even more detailed spectrogram 
  # sox $f2 -n channels 1 rate 22k spectrogram -o ${out}-xl.png -m -l -x9600 -Y1028 -z85
done

# rename output folder and create a zip file of the whole night's recordings
parentdir=`dirname $DESTDIR`
if [ -d $parentdir/$lastdate ]; then
    echo "Destination directory exists"
else
    mv $DESTDIR $parentdir/$lastdate
    # zip -r -0 $parentdir/${lastdate}.zip $parentdir/$lastdate/*
    # cp $parentdir/${lastdate}.zip $BACKUPDIR
    # rsync -av -A --no-perms --timeout=600 -zp --block-size=131072 $parentdir/$lastdate $BACKUPDIR -P
    # rclone copy $parentdir/$lastdate rob63jordan:docs/@archive/2019/nocmig/$lastdate -P
fi
