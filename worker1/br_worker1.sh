#! /bin/bash

#-----FEDORA-------

#config
tag="1.0"
netw="ansible-swarm"

docker stop worker1
docker rm worker1

docker build -t worker1:${tag} worker1
docker run --name="worker1" -dit -p 2020:2020 --network=${netw} -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN  worker1:${tag}
