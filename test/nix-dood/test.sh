#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "greeting" [ $(cat /home/code/greeting.txt | grep dev) ]

# Report result
reportResults
