#!/bin/bash

# Run with: curl -Ls https://raw.githubusercontent.com/goetzrieger/snippets/master/install-odo-oc-ocp4.sh -o /tmp/install-odo-oc-ocp4.sh && sh /tmp/install-odo-oc-ocp4.sh

# Make sure ~/bin exists and is in $PATH
echo 'Checking ~/bin is in $PATH'
mkdir -p ~/bin
case ":$PATH:" in *:$HOME/bin:*) echo "~/bin already in \$PATH";; *) PATH=$PATH:~/bin ;; esac

# get and install odo and oc
echo "Downloading and installing oc"
curl -Ls https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.2/linux/oc.tar.gz -o /tmp/oc.tar.gz && \
tar -xf /tmp/oc.tar.gz -C ~/bin/ && \
chmod +x ~/bin/oc

echo "Downloading and installing odo"
curl -Ls https://mirror.openshift.com/pub/openshift-v4/clients/odo/latest/odo-linux-amd64.tar.gz -o /tmp/odo.tar.gz && \
tar -xf /tmp/odo.tar.gz -C ~/bin/ && \
chmod +x ~/bin/odo

