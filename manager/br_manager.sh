#! /bin/bash

#----UBUNTU------

#config
tag="1.0"
netw="ansible-swarm"

docker stop manager
docker rm manager

docker build -t manager:${tag} manager
docker run --name="manager" -d -p 2020:22 --network=${netw} manager:${tag}
