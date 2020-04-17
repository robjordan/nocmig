#! /bin/bash
# set -x 
SOURCEDIR=/media/jordan/Verbatim
DESTDIR=/home/jordan/Music/nocmig/output
DESTDIR2=/home/jordan/Music/nocmig/output-loud

mkdir -p $DESTDIR
# mkdir -p $DESTDIR2

for f in $SOURCEDIR/*.wav
do
  # basename format: YYYYMMDD-HHMMSS (last file modification)
  stamp=`stat -c "%y" $f |cut -c -19 |sed 's/[-:]//g' |sed 's/ /-/g'`
  out=$DESTDIR/$stamp
  outloud=$DESTDIR2/$stamp
  # lossless compress for retention
  f2=${out}.flac
  flac --best $f -o $f2
#  # experimental - normalise to 0dB
#  f3=${outloud}.flac
#  sox $f -t wav - gain -n | flac --best -f - -o $f3
  # high-level spectrogram for reviewing presence / absence of birds
  sox $f2 -n channels 1 rate 20k spectrogram -o ${out}-sm.png -m -l -x1600 -z90
  # detailed spectrogram for bird id
  sox $f2 -n channels 1 rate 22k spectrogram -o ${out}-lg.png -m -l -x4800 -z90
done

