#!/usr/bin/env bash
set -e
REPO_URL="https://github.com/unkown741852963/federated-innovation-hub.git"
git init
git add .
git commit -m "Initial commit: Federated Innovation Hub prototype" || echo "Nothing to commit"
git remote remove origin 2>/dev/null || true
git remote add origin $REPO_URL
git branch -M main
echo "Now pushing to $REPO_URL"
git push -u origin main
chmod +x push_to_github.sh
./push_to_github.sh
