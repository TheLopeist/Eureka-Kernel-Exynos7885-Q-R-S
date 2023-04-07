#!/bin/bash

git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"

sudo apt update 
sudo apt install -y git libcurl14-ssl-dev

curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -

git add .
git commit -m "sync KernelSU [`date`]"
git push
