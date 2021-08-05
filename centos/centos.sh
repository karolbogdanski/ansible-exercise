#! /bin/bash

#-----CENTOS-------

#config
tag="1.0"
netw="ansible-swarm"

docker stop centos
docker rm centos

docker build -t centos:${tag} centos
docker run --name="centos1" -dit -p 2020:22 -p 27017:27017 --network=${netw} -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN  centos:${tag}
docker run --name="centos2" -dit -p 2021:22 -p 27018:27017 --network=${netw} -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN  centos:${tag}
docker run --name="centos3" -dit -p 2022:22 -p 27019:27017 --network=${netw} -v /sys/fs/cgroup/:/sys/fs/cgroup:ro --cap-add SYS_ADMIN --cap-add NET_ADMIN  centos:${tag}
