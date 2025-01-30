#!/usr/bin/env bash

# Setting up environment
echo 'Starting deployment...'

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 920373007650.dkr.ecr.us-east-1.amazonaws.com



# Creating and uploading image

docker build -t 920373007650.dkr.ecr.us-east-1.amazonaws.com/my-node-app:latest

docker push


# Cleanup

docker image rm 920373007650.dkr.ecr.us-east-1.amazonaws.com/my-node-app:latest
