#!/bin/bash
#@ TODO notes
#Verify dev, staging, and master exist
#verify working on feature branch or similar
#verify cannot push to staging or master (protected branches)

brs1=dev
brs2=staging
brs3=main
m1="fatal: a branch named '$brs1' already exists"
m2="fatal: a branch named '$brs2' already exists"
m3="fatal: a branch named '$brs3' already exists"
if [[ "$(git checkout -b $brs1 2>&1)" != "$m1" ]]; then
    echo "inv $m1"
    exit 1
fi
if [[ "$(git checkout -b $brs2 2>&1)" != "$m2" ]]; then
    echo "inv2 $m2"
    exit 1
fi
if [[ "$(git checkout -b $brs3 2>&1)" != "$m3" ]]; then
    echo "inv3 $m3"
    exit 1
fi
cbr=$(${GITHUB_REF#refs/heads/})
echo $cbr
#echo "##[set-output name=branch;]$(echo ${GITHUB_REF#refs/heads/})"
