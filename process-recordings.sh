#! /bin/bash
set -x 
SOURCEDIR=/media/jordan/Verbatim
DESTDIR=/home/jordan/Music/nocmig/output
DESTDIR2=/home/jordan/Music/nocmig/output-loud
lastdate="20000101"

mkdir -p $DESTDIR

for f in $SOURCEDIR/*.wav
do
  # basename format: YYYYMMDD-HHMMSS (last file modification)
  stamp=`stat -c "%y" $f |cut -c -19 |sed 's/[-:]//g' |sed 's/ /-/g'`
  d=`echo $stamp | cut -c1-8`
  if [ $d -gt $lastdate ]; then
      lastdate=$d
  fi
  out=$DESTDIR/$stamp

  # lossless compress for retention
  f2=${out}.flac
  flac --best $f -o $f2

  # high-level spectrogram for reviewing presence / absence of birds
  sox $f2 -n channels 1 rate 20k spectrogram -o ${out}-sm.png -m -l -x1600 -z90
  # detailed spectrogram for bird id
  sox $f2 -n channels 1 rate 22k spectrogram -o ${out}-lg.png -m -l -x4800 -z90
done

# rename output folder and create a zip file of the whole night's recordings
parentdir=`dirname $DESTDIR`
if [ -d $parentdir/$lastdate ]; then
    echo "Destination directory exists"
else
    mv $DESTDIR $parentdir/$lastdate
    zip -r $parentdir/${lastdate}.zip $parentdir/$lastdate/*
fi
