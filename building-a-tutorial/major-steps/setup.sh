#!/bin/bash
until [[ -e /tmp/katacoda-tutorial.tgz ]]
do
    sleep 1
done
tar xvzf /tmp/katacoda-tutorial.tgz
