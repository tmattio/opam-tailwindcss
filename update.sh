#!/bin/sh

command -v curl 2>&1 >/dev/null || exit
command -v jq 2>&1 >/dev/null || exit
command -v git 2>&1 >/dev/null || exit

url="https://github.com/tailwindlabs/tailwindcss/releases/latest/download"

cd bin || exit
curl -LO "${url}/tailwindcss-linux-arm64"
curl -LO "${url}/tailwindcss-linux-x64"
curl -LO "${url}/tailwindcss-macos-arm64"
curl -LO "${url}/tailwindcss-macos-x64"
curl -LO "${url}/tailwindcss-windows-arm64.exe"
curl -LO "${url}/tailwindcss-windows-x64.exe"
cd .. || exit

tag_name=$(curl -s https://api.github.com/repos/tailwindlabs/tailwindcss/releases/latest | jq -r .tag_name)

curl -L "https://raw.githubusercontent.com/tailwindlabs/tailwindcss/$tag_name/CHANGELOG.md" -o CHANGES.md

git add bin/
git commit --amend --no-edit

git add CHANGES.md
git commit -m "Upgrade to tailwind $tag_name"

git reset --hard @~2
git cherry-pick ORIG_HEAD~0
git cherry-pick ORIG_HEAD~1
