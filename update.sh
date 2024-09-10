#!/bin/sh

command -v curl >/dev/null 2>&1 || exit
command -v jq   >/dev/null 2>&1 || exit
command -v git  >/dev/null 2>&1 || exit

url='https://github.com/tailwindlabs/tailwindcss/releases/latest/download'

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

git add CHANGES.md bin
git commit -m "Upgrade to tailwind $tag_name"

url='https://github.com/tmattio/opam-tailwindcss/archive/'
sed -i.bak -e "s|${url}.*\.tar\.gz|${url}$(git rev-parse HEAD).tar.gz|g" README.md && rm -rf README.md.bak
git add README.md
git commit -m "Update README.md"
