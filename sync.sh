#!/bin/sh

git fetch upstream

for branch in `git branch -a| tr '*' ' ' | grep remotes/upstream | grep -v HEAD | grep -v master `; do
  shortName=${branch#remotes/upstream/}
  result=$(git branch --list $shortName)
  if [ -z "$result" ]; then
    echo ">> $shortName should be created!"
    git branch --track $shortName $branch
  fi
done

for branch in $(git branch | tr '*' ' '); do
   echo "Doing branch $branch..."
   git checkout $branch
   git pull upstream $branch
done

git push -u origin --all
git push -u origin --tags
