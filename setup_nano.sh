#!/bin/bash

#**********************************************************************************************************************
# nano syntax highlighting
# see http://askubuntu.com/questions/90013/how-do-i-enable-syntax-highlighting-in-nano
#**********************************************************************************************************************

# put the syntax highligting file in place for using nano to edit ino files (same as C syntax)
sudo cp ino.nanorc /usr/share/nano/ino.nanorc

# make sure nano uses it:

echo "include /usr/share/nano/ino.nanorc" >>  ~/.nanorc

