#!/bin/bash


cd /tmp
version=15.0.2
file=vitess-${version}-a914f40.tar.gz
wget https://github.com/vitessio/vitess/releases/download/v${version}/${file}
tar -xzf ${file}
cd ${file/.tar.gz/}
sudo cp -r * /usr/local/bin/


cd "$(dirname "$0")"
/usr/local/bin/kubectl wait --for=condition=Ready apply -f  01-operator.yaml
/usr/local/bin/kubectl wait --for=condition=Ready apply -f  101_initial_cluster.yaml