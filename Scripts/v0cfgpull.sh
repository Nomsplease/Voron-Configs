#!/bin/bash
defaultOutput=../Voron0.035/
echo "Pulling V0 Configs.."
scriptDir=`realpath $0`
dir=`dirname $scriptDir`
cd $dir
scp voron0:/home/pi/printer.cfg $defaultOutput/printer.cfg
