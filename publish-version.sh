#!/bin/bash

# Prompt the user for the new version
read -p "Enter the new version: " new_version

# Publish the package
npm version "$new_version"
npm publish --access public

# Push the changes to the repository
git push
