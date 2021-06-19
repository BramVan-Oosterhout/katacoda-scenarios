!#/bin/bash
# Prepare the assets for the Foswiki Templates scenarios
mydir=`pwd`
pushd ~/devfoswiki/core/data/KatacodaCourses/Foswiki1/Extensions
tar cvzf $mydir/SolutionExtensions.tgz \
       --exclude "*,pfv*" \
       --exclude "Web*" \
       --wildcards \
       Solutions/*.txt 
popd