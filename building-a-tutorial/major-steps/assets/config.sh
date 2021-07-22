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
git config --clobal user.email "$email"
#
# Configure the credential helper so you can push without credentials
#
git config --global credential.helper store
#
# Clone your repositry from the Preamble
#
git clone http://$gituser:$pat@git.com/$gituser/my-example.git katacoda-tutorial
#
# Commands to reset the repo
#
# git log --oneline
# git reset <sha1>