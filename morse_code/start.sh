#!/bin/sh

while true; do 
    pkill pi_fm_adv
    sfind . -name 'hello_world.wav' |  entr -r /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 0 --audio /usr/src/app/PiFmAdv/src/public/hello_world.wav
done
