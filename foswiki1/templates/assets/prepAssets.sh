!#/bin/bash
# Prepare the assets for the Foswiki Templates scenarios
mydir=`pwd`
pushd ~/devfoswiki/core/data/KatacodaCourses/Foswiki1/Templates
tar cvzf $mydir/SolutionTemplates.tgz \
       --exclude "*,pfv*" \
       --exclude "Web*" \
       --wildcards \
       Exercises/*.txt Solutions/*.txt 
popd