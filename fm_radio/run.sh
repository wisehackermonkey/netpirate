#!/bin/sh
pkill pi_fm_adv
find . -name 'morse_data.txt' |  entr -r cwwav -f $MORSE_CODE_TONE_FREQ -w $MORSE_CODE_SPEED -o /usr/src/app/PiFmAdv/src/public/hello_world.wav /usr/src/app/PiFmAdv/src/public/morse_data.txt &  
/usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 0 --audio /usr/src/app/PiFmAdv/src/public/hello_world.wav
pkill pi_fm_adv