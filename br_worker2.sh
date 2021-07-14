#! /bin/bash

#----ALPINE----

#config
tag="1.0"
netw="ansible-swarm"


docker stop worker2
docker rm worker2

docker build -t worker2:${tag} .
docker run --name="worker2" -p 2022:2022 --network=${netw} worker2:${tag}