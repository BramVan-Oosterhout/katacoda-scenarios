#!/bin/bash
{
echo -n "Install/configure environment "
until [ -e foswiki-running ]
do
echo -n "+"
sleep 3
done
echo " done."
} 2>/dev/null