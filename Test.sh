#!/bin/sh

#  Test.sh
#  
#
#  Created by Makoto Inoue on 4/3/14.
#

trap 'kill $!; exit' INT

#Check if the USB to Serial Hardware is connected
if grep 'cu.usbserial' /dev > /dev/null 2>&1; then
    echo "USB to Serial Ready"
else
    echo "Did not find USB to Serial Device! Exiting..."
fi

echo "Initializing ZX-400 Connection..."
#Initialize the ZX-400HA connection via USB Serial.
#Since the default setting works, no need for stty command
echo "ADDR 1" > /dev/cu.usbserial
#read -r line < /dev/cu.usbserial
#echo $line

#echo "*IDN?" > /dev/cu.usbserial
#read -r line < /dev/cu.usbserial
#echo $line


