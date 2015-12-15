#!/bin/bash
echo -e "Build language: node"
echo -e ""
echo -e "Operating System Details"
echo -e "------------------------"
lsb_release -a
echo -e "Linux Version"
echo -e "-------------"
echo -e 
uname -r
echo -e "GCC Version"
echo -e "-------------"
gcc --version | grep "gcc"
echo -e "Docker Version"
echo -e "--------------"
sudo docker version

exit 0
