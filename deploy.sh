#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

rm -rf public

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`


# Go To Public folder
cd public
# Add changes to git.
git init
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git remote add origin https://github.com/ruvigroup/ruvigroup.github.io.git
git push -f origin master

# Come Back up to the Project Root
cd ..
