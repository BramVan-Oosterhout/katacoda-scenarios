#!/bin/bash
# set up the solution data for the MetaData scenario
mydir=`pwd`
pushd ~/foswiki/Foswiki-2.1.2/data/Sandbox
tar cvzf $mydir/SolutionMetaData.tgz SolutionMetaData*
popd