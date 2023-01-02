#!/bin/bash
defaultOutput=../Voron2.049/
echo "Pulling V2.049 Configs.."
scriptDir=`realpath $0`
dir=`dirname $scriptDir`
cd $dir
rsync -avhP pi@voron2:/home/pi/klipper_config/ $defaultOutput/