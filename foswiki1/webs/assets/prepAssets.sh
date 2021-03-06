#!/bin/bash
# Prepare the assets directory
mydir=`pwd`
pushd ~/devfoswiki/core/data/KatacodaCourses/Foswiki1/Webs
tar cvzf $mydir/SolutionWebs.tgz \
         --exclude "*,pfv*" \
         --exclude "*.lock*" \
         --exclude "*.changes*" Solutions*
popd
