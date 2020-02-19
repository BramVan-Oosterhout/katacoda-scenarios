#!/bin/bash
mydir=`pwd`
pushd ~/foswiki/Foswiki-2.1.2/data/Sandbox
tar cvzf $mydir/SolutionExtensions.tgz SolutionMacros*
popd