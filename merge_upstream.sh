#!/bin/sh

ls

ls ..

ls -al ../*

set -e

git remote add upstream $1

git fetch upstream

git merge upstream/master

git remote -v

git show-ref master


