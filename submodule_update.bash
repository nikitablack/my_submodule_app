#!/bin/bash

# pull all submodules
git submodule foreach --recursive '
    branch=$(git config -f $toplevel/.gitmodules submodule.$name.branch);
    git fetch origin &&
    git checkout $branch &&
    git pull origin $branch
'

# push all submodules
git submodule foreach --recursive '
    branch=$(git config -f $toplevel/.gitmodules submodule.$name.branch);
    if ! git diff --quiet; then
        git add . &&
        git commit -m "Update submodule $name to latest $branch" &&
        git push origin $branch
    fi
'