#!/bin/bash
mydir=`pwd`
pushd ~/devfoswiki/core/data/KatacodaCourses/Foswiki1/Macros
tar cvzf $mydir/SolutionMacros.tgz \
         --exclude "*,pfv*" \
         --wildcards \
         Solutions/Step*
popd