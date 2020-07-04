#!/bin/bash
v0ScriptPath=`realpath v0cfgpull.sh`
v2ScriptPath=`realpath v2cfgpull.sh`
echo $v0ScriptPath
ln -s $v0ScriptPath $HOME/bin/v0cfgpull
echo $v2ScriptPath
ln -s $v2ScriptPath $HOME/bin/v2cfgpull
