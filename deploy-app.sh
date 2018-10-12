#! /usr/bin/env bash

gcloud compute instances create --boot-disk-size=10GB \
 --image=ubuntu-1604-xenial-v20170815a \
 --image-project=ubuntu-os-cloud \
 --machine-type=g1-small \
 --tags puma-server \
 --restart-on-failure \
 --zone=europe-west1-b reddit-app \
 --metadata-from-file startup-script=deploy.sh

