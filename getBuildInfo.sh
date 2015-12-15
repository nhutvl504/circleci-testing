#!/bin/bash
echo -e "Build language: node"
echo -e ""
echo -e "Operating System Details"
echo -e "------------------------"
echo -e "Distributor ID: \t $(grep -m 1 "NAME=" $(ls /etc/*-release) | sed 's/PRETTY_NAME=/ /' | sed 's#"# #g')"
