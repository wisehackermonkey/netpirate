#!/bin/sh
# while true; do sleep 1000; done
# find . -name 'morse_data.txt' |  entr -r cwwav -f $MORSE_CODE_TONE_FREQ -w $MORSE_CODE_SPEED -o /usr/src/app/PiFmAdv/src/public/hello_world.wav /usr/src/app/PiFmAdv/src/public/morse_data.txt &  
# exec /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --wait 0 --audio /usr/src/app/PiFmAdv/src/public/hello_world.wav
# exec /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 0 --audio /usr/src/app/PiFmAdv/src/public/hello_world.wav
# /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 0 --audio /usr/src/app/PiFmAdv/src/public/hello_world.wav

while true; do 
    ls ./morse_data.txt | entr -r "cat ./morse_data.txt | cwwav -f $MORSE_CODE_TONE_FREQ -w $MORSE_CODE_SPEED -o ./hello_world.wav /dev/stdin && pkill pi_fm_adv"
    echo './hello_world.wav' |  entr -r "/usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 0 --audio ./hello_world.wav" 
done

pkill pi_fm_adv