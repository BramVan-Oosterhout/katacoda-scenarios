#!/bin/bash
# Prepare the assets directory
mydir=`pwd`
pushd ~/devfoswiki/core/data/Applications/NotePadApp
tar cvzf $mydir/NotePadApp.tgz --exclude='Web*' *
popd
