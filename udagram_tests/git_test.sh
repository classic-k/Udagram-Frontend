#!/bin/bash
#@ TODO notes
Verify dev, staging, and master exist
verify working on feature branch or similar
verify cannot push to staging or master (protected branches)

brs=(dev staging main)
m1=fatal: A branch named '$brs[1]' already exists.
m2=fatal: A branch named '$brs[2]' already exists.
m3=fatal: A branch named '$brs[3]' already exists.
if [[ "$(git checkout -b $br[1])" != "$m1" ]]; then
    echo "$m1"
    exit 1
fi
if [[ "$(git checkout -b $br[2])" != "$m2" ]]; then
    echo "$m2"
    exit 1
fi
if [[ "$(git checkout -b $br[3])" != "$m3" ]]; then
    echo "$m3"
    exit 1
fi
if [[ "$(git status -b $br[2])" != "$m2" ]]; then
    echo "$m2"
    exit 1
fi