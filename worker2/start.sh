#UNLEASH THE SWARM

tag="1.0"


docker build -t manager:${tag} ./manager
docker build -t worker1:${tag} ./worker1
docker build -t worker2:${tag} ./worker2

docker network