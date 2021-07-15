#! /bin/bash

#----ALPINE----

#config
tag="1.0"
netw="ansible-swarm"

docker stop alpine
docker rm alpine

docker build -t alpine:${tag} alpine
docker run --name="alpine" -d -p 2022:22 --network=${netw} alpine:${tag}