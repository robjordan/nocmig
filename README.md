Utilities to help with processing nocturnal migration recordings

process-recordings.sh: 
  Convert WAV files to FLAC, create spectrograms, rename output folder and zip

nocmig-insta.mp4:
  Short video illustrating the recording equipment

Someone asked for a description of the system. I wrote this in 2019, things may have changed since then:

![alt text](https://github.com/[username]/[reponame]/blob/[branch]/image.jpg?raw=true)

I bought the dish on ebay for £56. I think the bloke selling had a batch made because he's an enthusiast for recording cricket! They seem to work quite well and a lot less expensive than the fully commercial ones sold for birding. Obviously it needs a tripod.

I make the recording on a Raspberry Pi. I had one spare but you can buy for about £50 including  a case and an SD card. You have to be a little bit techie to work with them. Not necessarily a full-scale IT professional but there's a bit of learning if Paul's not already familiar with it. It can be powered off a USB power bank, again, I had one already, but if not something like this (£30) would be sufficient to power it for about 12 hours. I record onto a USB memory stick - one night generates about 10GB of recordings, 32GB sticks are cheap (< £10). 

I also use an audio interface which I had already for recording music, Scarlett 2i2, available for just under £100. There are cheaper alternatives, but it's working well. It provides power to the microphones, which makes them more sensitive. 

I bought a pair of mics for £120 from FEL Communications. all the bird recorders seem to recommend them. The actual mic capsules are very inexpensive (£12 each) and highly recommended for this type of project. FEL build them into nice housings with good quality cables and connectors. Currently the mics just clip onto the central post on the dish. Some people get much more fancy with housings and baffles (eg this and this)... maybe one day I'll look into this. 

I put all the electronic bits in a weatherproof box (£13) which has a nice system for bringing the cables out without letting water in.

A lot of these choices are obviously based on things I had lying around, but I guess if you were buying from scratch this set up would cost around £370.

I did the software myself, it's nothing very complicated, just a one-line script to capture the audio to files of 1 minute each. I set up a few things so the recording starts automatically when you power on the Pi. I added a little gadget to set the clock on the Pi so that the recordings have a correct timestamp.  I also run a script after copying the recorded files from memory stick to PC to compress them and produce the sonograms.

For someone starting from scratch I might recommend using Solo - it's a free software+hardware system that some people at Stirling University devised along the same lines as what I've done. They use a simpler and cheaper mono microphone & sound card system, which would save about £160 compared to what I've described. I guess it will be a bit less sensitive (one mic vs two, unpowered vs powered), but probably fine considering the cost saving.  There's a good video explaining solo here.
