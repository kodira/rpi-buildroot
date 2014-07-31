#!/bin/sh

TARGET="${1}"

# copy System.map
cp ${TARGET}/../build/linux-*/System.map ${TARGET}/System.map

# copy kernel
cp ${TARGET}/../images/zImage ${TARGET}/../images/boot/kernel.img

# set timezone
#ln -s ${TARGET}/usr/share/zoneinfo/Europe/Berlin ../../../../etc/localtime
# Creating relative links seems to be difficult here
cp ${TARGET}/usr/share/zoneinfo/Europe/Berlin ${TARGET}/etc/localtime

exit 0

