#!/bin/bash
# Prepare the assets directory
mydir=`pwd`
pushd ~/foswiki/Foswiki-2.1.2/data/Applications
tar cvzf $mydir/SolutionExample.tgz --exclude SolutionExApp/SolutionEx*.* --exclude SolutionExApp/SolutionEx*,* SolutionExApp
tar cvzf $mydir/SolutionExampleTopics.tgz SolutionExApp/Solution*
popd
pushd ~/foswiki/Foswiki-2.1.2/data/Sandbox
tar cvzf $mydir/SolutionExampleSandbox.tgz SolutionExWeb
popd
