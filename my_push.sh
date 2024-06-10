#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "No commit, no message, no add and no push"
    exit 1
fi

commit_message=$1

shift 

if [ "$#" -eq 0 ]; then
    git add .
else 
    for fichiers in "$@"; do
        git add $fichiers
    done
fi

git commit -m "$commit_message"
git push origin main