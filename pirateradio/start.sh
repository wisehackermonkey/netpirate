find . -name 'morse_data.txt' |  entr -r cwwav -f 400 -w 20 -o /usr/src/app/PiFmAdv/src/public/hello_world.wav /usr/src/app/PiFmAdv/src/public/morse_data.txt &  
/usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --wait 0 --audio /usr/src/app/PiFmAdv/src/public/hello_world.wav