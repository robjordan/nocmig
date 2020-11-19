ip
ipconfig
ifconfig
ping 192.168.1.1
ping 192.168.1.255
ping 192.168.1.254
ping 127.0.0.1
ping 192.168.1.12
ping 192.168.1.254
netstat -r
ifconfig
ip link
sudo systemctl status dhcpd
sud dhcpd -n
sudo dhcpd -n
arp -a
sudo dhcpd -n
sudo systemctl status dhcpd
ip link
sync; reboot
ip link
ping 192.168.1.254
ping 192.168.1.171
ping 192.168.1.1
sudo systemctl status dhcpd
sudo dhcpd -n
passwd pi
cat /proc/asound/modules
cat /proc/asound/cards
amixer -c 1
sudo apt-get remove pulseaudio
service --status-all
sudo vi /boot/config.txt
sudo reboot now
cat /proc/asound/modules
cat /proc/asound/cards
vi ~/.asoundrc
sudo vi /usr/share/alsa/alsa.conf
sudo reboot now
cd ~/Music
mkdir ~/Music
cd ~/Music
wget -Lk http://rpf.io/lamp3 -O example_11k.mp3
wget -Lk http://www.kozco.com/tech/piano2-CoolEdit.mp3 -O pianoTest_48k.mp3
wget -Lk http://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_2mb.mp4 -O bbb_720p_2mb.mp4
wget -Lk https://raw.githubusercontent.com/mediaelement/mediaelement-files/master/big_buck_bunny.mp4 -O bbb_360_22k.mp4
aplay -l && arecord -l
speaker-test -c2 -D hw:1,0
speaker-test -c2 -D hw:1,0 --test=wav -w /usr/share/sounds/alsa/Front_Center.wav
cat /proc/asound/modules
cat ~/.asoundrc
rm ~/.asoundrc
speaker-test -c2 -D hw:1,0 --test=wav -w /usr/share/sounds/alsa/Front_Center.wav
cat > ~/.asoundrc
speaker-test -c2 -D hw:1,0 --test=wav -w /usr/share/sounds/alsa/Front_Center.wav
alsamixer
speaker-test -c2 -twav
arecord --device=hw:1,0 --format S16_LE --rate 44100 -c1 -V mono test.wav
arecord --device=hw:1,0 --format S32_LE --rate 44100 -c1 -V mono test.wav
arecord --device=hw:1,0 --format S32_LE --rate 44100 -c1 -V stereo test.wav
arecord --device=hw:1,0 --format S32_LE --rate 44100 -c1  test.wav
arecord -d 10 -f cd -t wav test.wav
ls -l
apaly test.wav
aplay test.wav
man arecord
arecord -d 10 -f cd -t wav -V stereo test.wav
aplay test.wav
arecord -d 10 -f cd -t wav -V stereo test.wav
aplay test.wav
arecord -d 30 -f cd -t wav -V stereo test.wav
aplay test.wav
arecord -d 30 -f cd -t wav -V stereo test.wav
aplay test.wav
sudo apt-get install mpg123
ls -ltr
mpg123 -v -r 44100 example_11k.mp3 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install mpg123
mpg123 -v -r 44100 example_11k.mp3 
ls -l
mpg123 -v -r 44100 pianoTest_48k.mp3 
mpg123 -v -r 48000 pianoTest_48k.mp3 
arecord -d 10
arecord -d 10 test.wav
arecord -d 10 -r 44000 test.wav
aplay test.wav
arecord -d 10 -r 44000 -c 2 -f U16 test.wav
arecord -d 10 -r 44000 -c 2 -f cd test.wav
aplay test.wav
arecord -d 30 -r 44000 -c 2 -f cd test.wav
aplay test.wav
arecord -d 30 -r 192000 -c 2 -f cd test.wav
aplay test.wav
arecord -v -c 2 -D hw:USB -B 1450 -F 10 -f S32_LE -r 44100 | aplay -D plughw:USB
sudo vi /boot/cmdline.txt 
sudo reboot now
cd ~/Music
arecord -v -c 2 -D hw:USB -B 1450 -F 10 -f S32_LE -r 44100 | aplay -D plughw:USB
arecord -d 30 -r 192000 -c 2 -f cd test.wav
arecord -d 30 -r 192000 -c 2 -f S16LE test.wav
arecord -d 30 -r 192000 -c 2 -f S32 test.wav
aplay test.wav
arecord -d 30 -r 192000 -c 2 -f S32 test.wav
aplay test.wav
arecord -d 30 -r 192000 -c 2 -f S24 test.wav
aplay test.wav
df
arecord -d 30 -r 192000 -c 2 -f S24 test.wav
aplay test.wav
arecord  -c 2 -f cd test.wav
arecord  -c 2 -f cd 
arecord  -c 2 -f cd test.wav
arecord  -c 2 -f cd --max-file-time 10 test.wav
rm test*
arecord  -c 2 -f cd  test.wav
sudo shutdown now
cd Music
arecord  -c 2 -f S24  test.wav
aplay test.wav
arecord  -c 2 -f S24  -r 44100 test.wav
aplay test.wav
arecord  -c 2 -f S24 -r 44100 --max-file-time 60 test.wav
ls -ltr
aplay test*
arecord  -c 2 -f S24 -r 44100 --max-file-time 60 test2.wav
lsusb -v
lsusb -v | egrep "^Bus|MaxPower"
usb-devices | grep 'Product=\|MxPwr'
mount
dmesg
mount
df
sudo mount /dev/sda1 /mnt
cd /mnt
df .
arecord  -c 2 -f S24 -r 44100 --max-file-time 60 test.wav
ls -ld .
sudo arecord  -c 2 -f S24 -r 44100 --max-file-time 60 test.wav
ls -ltr
cd ..
sudo shutdown now
cd Music
ls -ltr
cd Music
ls
mkdir old
mv test* old
arecord --dump-hw-params
arecord  -c 2 -f S24_3LE -r 44100 --max-file-time 60 test.wav
alsamixer
arecord  -c 2 -f S24_3LE -r 48000 --max-file-time 60 test48.wav
wget http://jackaudio.org/downloads/adevices.sh
./aedevices.sh
./adevices.sh
sh ./adevices.sh
bash ./adevices.sh
cat /boot/config.txt
ls -ltr /boot
cat /boot/cmdline.txt
cat ~/.asoundrc
cat /usr/share/alsa/alsa.conf
sudo shutdown now
ip
net
dmesg
apt-get install wireless-tools wpasupplicant
sudo apt-get install wireless-tools wpasupplicant
sudo iwconfig
sudo vi /etc/udev/rules.d/70-persistent-net.rules
sudo vi /etc/network/interfaces
cd /etc/network/interfaces.d/
ls
uname -a
cat /etc/os-release 
cd /boot
ls
sudo cat > wpa_supplicant.conf
sudo vi wpa_supplicant.conf
sudo reboot
iwconfig
netstat -r
ifconfig
mount
dmesg
df
mount
sudo mount /dev/sda1 /mnt
ls -l /mnt
mount
dmesg
ls -l /dev/disk/by-uuid/
blkid
sudo vi /etc/fstab
ls /media
ls -ld /media
sudo mkdir /media/recordings
sudo chmo 755 /media/recordings
sudo chmod 755 /media/recordings
sudo umount /mnt
sudo mount /media/recordings
ls -l /media/recordings
echo recordings > /media/recordings/hello
ls -l /media/recordings
ls -ld /media/recordings
chown pi /media/recordings
sudo chown pi /media/recordings
sudpo umount /media/recordings
sudo umount /media/recordings
sudo chown pi /media/recordings
mount
sudo mount /media/recordings
ls -ld /media/recordings
echo recordings > /media/recordings/hello
sudo chown pi /media/recordings
dmesg
sudo apt-get install ntfs-3g
sudo vi /etc/fstab
sudo umount /media/recordings 
sudo mount /media/recordings 
sudo chown pi /media/recordings
mount
sudo umount /media/recordings 
sudo vi /etc/fstab
sudo mount /media/recordings 
ls -ld /media/recordings/
echo recordings > /media/recordings/hello
ls -l /media/recordings/
sudo shutdown
sudo shutdown now
ls /media/recordings/
cat /media/recordings/hello 
sudo shutdown now
date
while true; do arecord  -c 2 -f S24_3LE -r 44100 --max-file-time 60 --max-file-time 60 --buffer-time 1000000 /media/recordings/2019-10-26.wav; done
ls -l /media/recordings/
ps aux
ps aux | grep arec
kill 501
ps aux | grep while
ps aux | grep arec
kill 8920
ps aux
kill 515
ps aux
pwd
ls
ls Music
vi start-recording.sh
chmod +x start-recording.sh 
nohup ./start-recording.sh &
tail -f nohup.out 
jobs
kill %1
jobs
ls -ltr
rm *.wav
vi start-recording.sh 
nohup ./start-recording.sh &
tail -f nohup.out 
sudo vi /lib/systemd/system/record.service
sudo chmod 644 /lib/systemd/system/recording.service
sudo chmod 644 /lib/systemd/system/record.service
sudo systemctl daemon-reload
sudo systemctl enable record.service
ps aux
service --status-all
ls -ltr
sudo reboot
ls -ltr
rm nohup.out 
service --status-all
sudo systemctl status record.service
ls -ltr /media/recordings/
sudo systemctl start record.service
sudo systemctl status record.service
ls -ltr /media/recordings/
sudo reboot
sudo systemctl status record.service
ls -ltr /var/log
ls -ltr /media/recordings/
sudo systemctl status record.service
ls -ltr /media/recordings/
sudo reboot
sudo systemctl status record.service
ls -l /media/recordings/
rm /media/recordings/*
y
ls -l /media/recordings/
sudo systemctl stop record.service
ls -l /media/recordings/
rm /media/recordings/*
ls -l /media/recordings/
sudo systemctl status record.service
ls -ltr
sudo shutdown now
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install python-smbus i2c-tools
sudo raspi-config
sudo reboot
sudo vi /etc/modules
sudo reboot
lsmod | grep i2c_
i2cdetect -y 1
sudo vi /etc/rc.local
sudo reboot
sudo hwclock -r
date
sudo hwclock -w
sudo hwclock -r
sudo shutdown now
sudo vi /boot/config.txt
sudo reboot
dmesg
vi /etc/boot.config
vi /etc/boot/config.txt
vi /boot/config.txt
sudo vi /boot/config.txt
sudo reboot
date
sudo hwclock -r
date
sudo hwclock -r
sudo shutdown -f now
sudo hwclock -r
date
sudo vi /boot/config.txt
sudo reboot
sudo shutdown -f now
sudo hwclock -r
cat /sys/class/gpio/gpio5/value
cat /sys/class/gpio/gpiochip0/ngpio 
locate monitor.py
sudo apt-get install pigpio python-pigpio python3-pigpio
sudo apt-get locate
sudo apt-get install locate
locate monitor.py
sudo shutdown -f now
sudo hwclock -r
mount
sudo vi /etc/fstab
dmesg
ls /media
mount
sudo mount /dev/sda
sudo mount /dev/sda .mnt
sudo mount /dev/sda /mnt
sudo mount /dev/sda1 /mnt
ls /mnt
dmesg
cat > /mnt/hello
sudo cat > /mnt/hello
mount
cat /etc/fstab
sudo umount /mnt
sudo vi /etc/fstab
sudo mount /media/recordings
mount
cat /etc/fstab
df
mount
sudo mount /media/recordings
mount
dmesg
parted
sudo parted
df -h
sudo umount /dev/sda1
sudo umount /dev/sda
sudo mkfs.vfat /dev/sda1
dmesg
mount
sudo umount /dev/sda1
dmesg
mount
sudo mount /dev/sda1
mount
dmesg
sudo mount /dev/sda1 /mnt
ls /mnt
echo hello > /mnt/hello
sudo echo hello > /mnt/hello
mount
dmesg
sudo umount /dev/sda1
sudo mount -o rw /dev/sda1 /mnt
mount
ls -ld /mnt
sudo echo hello > /mnt/hello
sudo touch /mnt/hello
sudo ls /mnt/hello
sudo echo hello > /mnt/hello
sudo vi /mnt/hello
sudo ls -l /mnt/hello
blkid
blkid -t TYPE=vfat -sUUID
lsusb -v
sudo blkid
sudo vi /etc/fstab
sudo umount /mnt
ls -l /media/recordings/
sudo dmesg
sudo mount
sudo mount /dev/sda1
mount
sudo mount -v /dev/sda1
mount
cd /media/recordings/
ls -l
df
sudo umount /dev/sda1
sudo mount -v /dev/sda1
echo $?
sudo mount
sudo mount | grep sda
sudo reboot
sudo mount
ls /mount/recordings
ls /media/recordings
sudo shutdown
sudo shutdown -f now
dmesg
mount
sudo blkid
sudo vi /etc/fstab
sudo mount -a
mount
sudo reboot
mount
df
sudo shutdown -f now
date
ps aux
service --status-all
cat /etc/fstab
ls -l /media/recordings
date
man stat
sudo hwclock -r
date
sudo hwclock -w
sudo hwclock -r
cat /etc/rc.local
mount
shutdown -fr now
sudo shutdown -fr now
uptime
date
mount
ls -l /media/recordings/
touch /media/recordings/test
ls -l /media/recordings/
sudo shutdown -f now
mount
dmesg
sudo vi /etc/fstab
systemctl daemon-reload
sudo mount /media/recordings
ls -l /media/recordings
mount
dmesg
sudo su -
sudo mount /media/recordings
mount
ls -l /media/recordings
touch /media/recordings/fromPi
ls -l /media/recordings
sudo reboot
mount
ls -l /media/recordings
sudo shutdown -f now
ps aux
ps aux | grep arecord
ls /etc/rc*
cat /etc/rc.local
service --status-all
crontab -e
cat ~/.profile
cat /etc/rc.local
cat .bashrc
ls -l /etc/init.d
find /etc/init.d -type f -exec grep arecord {} \;
ls /lib/systemd/system
ls -ltr /lib/systemd/system
vi /lib/systemd/system/record.service
ls -l
vi start-recording.sh 
sudo shutdown -f now
date
sudo hwclock -w
sudo hwclock -r
date
mount
sudo reboot
sudo rm -rf /var/cache/apt/*.bin
sudo rm -rf /usr/bin/apt-listchanges/*.*
sudo reboot
