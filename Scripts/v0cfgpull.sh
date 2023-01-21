#!/bin/bash
defaultOutput=../Voron0.035/
echo "Pulling V0 Configs.."
scriptDir=`realpath $0`
dir=`dirname $scriptDir`
cd $dir
rsync -avhP --delete pi@voron0:/home/pi/klipper_config/ $defaultOutput/
