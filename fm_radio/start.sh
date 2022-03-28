#!/bin/sh
echo "wren" > ./morse_data.txt
while true; do 
    # pkill pi_fm_adv
    find . -name 'morse_data.txt' | entr -r  "cwwav -f $MORSE_CODE_TONE_FREQ -w $MORSE_CODE_SPEED -o /usr/src/app/PiFmAdv/src/public/hello_world.wav /usr/src/app/PiFmAdv/src/public/morse_data.txt"
done
