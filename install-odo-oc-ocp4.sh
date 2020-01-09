#!/bin/bash

mkdir -p ~/bin
case ":$PATH:" in *:$HOME/bin:*) echo "~/bin already in $PATH;; *) PATH=$PATH:~/bin ;; esac


curl -L https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.2/linux/oc.tar.gz -o /tmp/oc.tar.gz && \
tar -xf /tmp/oc.tar.gz -C ~/bin/ && \
chmod +x ~/bin/oc

curl -L https://mirror.openshift.com/pub/openshift-v4/clients/odo/latest/odo-linux-amd64.tar.gz -o /tmp/odo.tar.gz && \
tar -xf /tmp/odo.tar.gz -C ~/bin/ && \
chmod +x ~/bin/odo

