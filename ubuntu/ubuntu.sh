#! /bin/bash

#----UBUNTU------

#config
tag="1.0"
netw="ansible-swarm"

docker stop ubuntu
docker rm ubuntu

#docker build -t ubuntu:${tag} ubuntu
docker run --name="ubuntu" -d -p 2020:22 -p 27017:27017 --network=${netw} ubuntu:${tag}
