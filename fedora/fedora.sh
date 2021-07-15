#! /bin/bash

#-----FEDORA-------

#config
tag="1.0"
netw="ansible-swarm"

docker stop fedora
docker rm fedora

docker build -t fedora:${tag} fedora
docker run --name="fedora" -dit -p 2021:22 --network=${netw} -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN  fedora:${tag}
