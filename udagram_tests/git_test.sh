#!/bin/bash
#@ TODO notes

# Verify dev, staging and main exist
bs="$(git branch -a)"

dv=$(echo "$bs" | grep -o 'dev' -m 1)

st=$(echo "$bs" | grep -o 'staging' -m 1)

ms=$(echo "$bs" | grep -o 'main' -m 1)

if [[ "$dv" != "dev" ]]; then
    echo "Dev branch does not exist"
    exit 1
else
echo "$dv branch exist"
fi
if [[ "$st" != "staging" ]]; then
    echo "Staging branch does not exist"
    exit 1
else
echo "$st branch exist"
fi
if [[ "$ms" != "main" ]]; then
    echo "Main branch does not exist"
    exit 1
else
echo "$ms branch exist"
fi
#Verify working on feature branch or similar
cur=$(echo "$bs" | grep '*')
cur=$(echo "$cur" | grep -o '[A-Za-z]*')
echo "Current branch: $cur"
#verify cannot push to staging or master (protected branches)
#Test staging push
git config --global user.name "classic-k"
git config --global user.email "classicconceptone@gmail.com"
git checkout staging
echo "Add updates to readme to test push" >> README.md
git add README.md
git commit -m "Test Push"
output=$(git push)
echo "$output"

git checkout main
echo "Add updates to readme to test push" >> README.md
git add README.md
git commit -m "Test Push"
output=$(git push)
echo "$output"