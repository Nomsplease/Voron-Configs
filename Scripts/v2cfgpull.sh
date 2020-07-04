#!/bin/bash
defaultOutput=../Voron2.049/
echo "Pulling V2.049 Configs.."
scriptDir=`realpath $0`
dir=`dirname $scriptDir`
cd $dir
scp voron2:/home/pi/printer.cfg $defaultOutput/printer.cfg
