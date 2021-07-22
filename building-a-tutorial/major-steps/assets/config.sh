#!/bin/bash
#
# Enter the following details to access git and GitHub
#
name="Bram van Oosterhout"      # Your name
email="bram@van-oosterhout.org" # Your email address
gituser="BramVan-Oosterhout"    # Your GitHub user name
pat=""                          # Your GitHub personal access token
#
# configure the git repository
#
git config --global user.name "$name"
git config --global user.email "$email"
#
# Configure the credential helper so you can push without credentials
#
git config --global credential.helper store
#
# Clone your repositry from the Preamble
#
git clone https://$gituser:$pat@github.com/$gituser/my-exercise.git katacoda-tutorial
#
# Commands to reset the repo
#
# git log --oneline
# git reset <sha1>