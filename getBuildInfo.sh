#!/bin/bash

# The MIT License (MIT)
#
# Copyright (c) 2015 Joseph W Becher
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

echo -e "Build language: node"
echo -e ""
echo -e "\nOperating System Details"
echo -e "------------------------"
lsb_release -a
echo -e "\nLinux Version"
echo -e "-------------"
echo -e 
uname -r
echo -e "\nMaven Version"
echo -e "-------------"
maven --version
echo -e "\nGCC Version"
echo -e "-------------"
gcc --version | grep "gcc"
echo -e "\nDocker Version"
echo -e "--------------"
docker version 2>> /dev/null
echo -e "\nPre-installed Ruby versions"
echo -e "---------------------------"
ruby --version
echo -e "\nPre-installed Node.js version"
echo -e "------------------------------"
node --version
echo -e "\nPre-installed Redis version"
echo -e "----------------------------"
redis-cli INFO server | grep "redis_version" | grep "version"
echo -e "\nriak version"
echo -e "------------"
riak version
echo -e "\nMongoDB version"
echo -e "---------------"
mongod --version | grep "db version"
echo -e "\ncouchDB version"
echo -e "---------------"
curl -s http://127.0.0.1:5984/ | grep -m 1 -Po '"version":.*?[^\\]",' | grep -m 1 "version"
echo -e "\nNeo4j version"
echo -e "-------------"
sudo apt-cache policy neo4j 2>> /dev/null | grep "Installed"
echo -e "\nRabbitMQ Version"
echo -e "--------------"
sudo apt-cache policy rabbitmq-server 2>> /dev/null | grep "Installed"
echo -e "\nElasticSearch Version"
echo -e "--------------"
sudo apt-cache policy elasticsearch 2>> /dev/null | grep "Installed"
echo -e "\nSphinx Version"
echo -e "---------------------"
searchd --help | grep "^Sphinx" | grep "Sphinx"
echo -e "\nFirefox Version" | grep "Firefox"
echo -e "---------------"
firefox --version 2>> /dev/null
echo -e "\nant Version"
echo -e "--------------"
ant -version
echo -e "\nmvn version"
echo -e "--------------"
mvn --version

exit 0
