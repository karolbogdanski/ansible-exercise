#! /bin/bash

#-----CENTOS-------

#config
tag="1.0"
netw="ansible-swarm"

docker stop centos
docker rm centos

docker build -t centos:${tag} centos
docker run --name="centos" -dit -p 2021:22 -p 27018:27017 --network=${netw} -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN  centos:${tag}
