#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "greeting" [ $(cat /home/code/greeting.txt | grep "Welcome to your declarative, Nix-powered, dev environment setup.") ]
check "nix develop" [ $(nix flake --version | grep 'nix (Nix)') ]

# Report result
reportResults
