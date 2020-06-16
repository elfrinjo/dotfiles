#!/bin/sh -e

## Take a screenshot and create a lockscreen
rm -f /tmp/screen_locked.png
scrot /tmp/screen_locked.png
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png
#convert /tmp/screen_locked.png -swirl 360 -paint 1 /tmp/screen_locked.png

## Lock the gnome-keyring
#test -x ~/.bin/lock-keyring && ~/.bin/lock-keyring

## Lock screen displaying this image.
i3lock --show-failed-attempts --image=/tmp/screen_locked.png

## Turn the screen off after a delay.
sleep 300; pgrep i3lock && xset dpms force off
