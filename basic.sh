#!/bin/bash

# java repository
# https://launchpad.net/~webupd8team/+archive/ubuntu/java
add-apt-repository ppa:webupd8team/java

add-apt-repository ppa:webupd8team/atom

add-apt-repository ppa:webupd8team/brackets

add-apt-repository ppa:webupd8team/sublime-text-3

#docker repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update

#The java installer will prompt for ok
apt-get install oracle-java8-installer

apt-get install linux-image-extra-$(uname -r) \
	linux-image-extra-virtual \
        curl \
	wget \
	git \
	nano \
	emacs \
	maven \
	python-pip \
	npm \
	scala \
	asciidoc  \
	asciidoctor \
	graphviz \
	gimp \
	eclipse-platform \
	netbeans \
	tomcat8 \
	atom \
	brackets \
	sublime-text-installer


# Docker
# https://docs.docker.com/engine/installation/linux/ubuntu/#uninstall-docker
apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
#apt-get update

sudo apt-get remove docker docker-engine
apt-get install docker-ce

#It is an old version of

