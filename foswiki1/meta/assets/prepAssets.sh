#!/bin/bash
mydir=`pwd`
pushd ~/devfoswiki/core/data/KatacodaCourses/Foswiki1/Meta
tar cvzf $mydir/SolutionMeta.tgz \
         --exclude "*,pfv*" \
         --wildcards \
         Solutions/* Exercises/*
popd