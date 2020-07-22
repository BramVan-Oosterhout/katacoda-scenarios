#!/bin/bash
# Prepare the assets directory
mydir=`pwd`
pushd ~/devfoswiki/core/data/Applications
tar cvzf $mydir/NotePadApp.tgz  NotePadApp/*
tar cvzf $mydir/SolNotePadApp.tgz --exclude Web* SolNotePadApp/*
popd
pushd ~/devfoswiki/core/data/Sandbox
tar cvzf $mydir/SolNotePad.tgz SolNotePad/*
popd
