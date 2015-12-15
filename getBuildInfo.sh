#!/bin/bash
echo -e "Build language: node"
echo -e ""
echo -e "\nOperating System Details"
echo -e "------------------------"
lsb_release -a
echo -e "\nLinux Version"
echo -e "-------------"
echo -e 
uname -r
echo -e "\nGCC Version"
echo -e "-------------"
gcc --version | grep "gcc"
echo -e "\nDocker Version"
echo -e "--------------"
docker version 2>> /dev/null
echo -e "\nPre-installed Ruby versions"
echo -e "---------------------------"
ruby --version
echo -e "\nPre-installed Node.js versions"
echo -e "------------------------------"
node --version
echo -e "\nPre-installed Redis versions"
echo -e "----------------------------"
redis --version
echo -e "\nriak version"
echo -e "------------"
riak --version

exit 0
