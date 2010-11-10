#!/bin/bash

# Checks if I need to install Plymouth for X11
( aptitude search plymouth-x11 | grep ^i ) || \
	sudo aptitude install plymouth-x11

# Theme showcase!
sudo plymouthd
sudo plymouth --show-splash
sudo plymouth --ask-for-password
for ((I=0; I<5; I++)); do 
    sudo plymouth --update=test$I
    sleep 1
done
sudo plymouth quit
