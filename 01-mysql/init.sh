#!/bin/bash

/usr/local/bin/kubectl wait --for=condition=Ready apply -f  01-operator.yaml
/usr/local/bin/kubectl wait --for=condition=Ready apply -f  101_initial_cluster.yaml