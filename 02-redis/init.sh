#!/bin/bash

/usr/local/bin/kubectl create ns laravel-k8s-redis
/usr/local/bin/kubectl apply -f 05-storage.yaml

# Only required if dynamic volume provisioning is not supported
/usr/local/bin/kubectl apply -f 10-persistent-volume.yaml