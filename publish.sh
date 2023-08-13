#!/bin/bash

# Prompt the user for the new version
read -p "Enter the new version: " new_version

# Update the version in package.json
sed -i "s/\"version\": \".*\"/\"version\": \"$new_version\"/" package.json

# Commit the version update
git add package.json
git commit -m "Update version to $new_version"

# Push the changes to the repository
git push

# Publish the package
npm version "$new_version"
npm publish --access public
