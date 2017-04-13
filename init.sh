#!/bin/sh
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   echo "Doing init branch: $branch"
   git branch --track ${branch#remotes/upstream/} $branch
done

git fetch upstream

git push -u origin --all
git push -u origin --tags
