docker swarm init --advertise-addr 192.168.1.145
docker stack deploy --compose-file=docker-compose.yml production
