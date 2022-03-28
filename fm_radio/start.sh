
#!/bin/sh
# pkill -l pi_fm_adv
while true; do 
    # pkill -l pi_fm_adv
    # pkill /usr/src/app/PiFmAdv/src/pi_fm_adv
    exec find . -name 'hello_world.wav' |  entr -r /usr/src/app/PiFmAdv/src/pi_fm_adv --freq $RADIO_STATION_FREQ --mpx 30 --gpio $GPIO_PIN --wait 0 --audio /public/hello_world.wav
done
