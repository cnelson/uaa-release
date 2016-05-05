#!/bin/sh

set -ex

git config user.email 'concourse-ci@cloud.gov'

git remote add upstream $1

git fetch upstream

git merge upstream/master -m "Auto-merge by CI"

git remote -v

git show-ref master


