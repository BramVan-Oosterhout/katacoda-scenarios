!#/bin/bash
sleep 5
echo -n "Install/configure Foswiki "
while [ -e foswiki.conf ]
do
echo -n "+"
sleep 1
done
echo " done."