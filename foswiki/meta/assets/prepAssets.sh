#!/bin/bash
## The following command does not work
#tar -C ~/foswiki/Foswiki-2.1.2/data/Sandbox -cvzf MetaData.tgz MetaDataStep*.txt
dir=`pwd`
cd ~/foswiki/Foswiki-2.1.2/data/Sandbox
tar cvzf $dir/MetaData.tgz MetaDataStep*.txt
cd $dir