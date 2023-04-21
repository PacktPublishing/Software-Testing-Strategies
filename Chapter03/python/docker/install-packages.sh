#!/bin/bash

# See this for more: https://pythonspeed.com/articles/system-packages-docker/

set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y upgrade
apt-get -y install --no-install-recommends vim-nox
apt-get clean
rm -rf /var/lib/apt/lists/*
