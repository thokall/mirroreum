#!/bin/bash
set -e

echo "GITHUB_PAT=$GITHUB_PAT" >> ~/.Renviron

apt-get update && apt-get install -y --no-install-recommends \
	libssh-dev

# packages used in SBDI

cat pkgs-github | grep -v "#" | xargs installGithub.r --deps --update

#cat ~/.Renviron | grep -v "GITHUB_PAT" > ~/.Renviron
