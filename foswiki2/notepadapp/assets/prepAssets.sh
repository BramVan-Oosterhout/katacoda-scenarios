#!/bin/bash
# Prepare the assets directory
mydir=`pwd`
pushd ~/devfoswiki/core/data/Applications
tar cvzf $mydir/NotePadApp.tgz  NotePadApp/*
popd
