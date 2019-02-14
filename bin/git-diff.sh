#!/usr/bin/env bash

if [ $1 ]; then
    git diff master origin/master $1
else
    git diff master origin/master --name-only
fi

