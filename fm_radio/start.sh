
#!/bin/sh
# pkill -l pi_fm_adv
while true; do 
    ps ax 
    ps ax |  awk '/src\/pi_fm_adv/ { print $1 }' 
    ps ax |  awk '/src\/pi_fm_adv/ { print $1 }' | pkill -
    # exec find . -name 'hello_world.wav' |  entr -r /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 1 --audio /public/hello_world.wav
    /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 1 --audio /public/hello_world.wav
    sleep 1
done
