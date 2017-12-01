# NOTES:
(most of them use for copy paste)

## Requirements
```
sudo pip install docker, docker-compose
```

## Build Docker Image
```
docker build -t python_app:latest .
```

## Run the Docker container
```
docker run -d -p 5000:5000 python_app
```

## Kill and Delete all docker containers
```
docker kill $(docker ps -aq);docker rmi $(docker ps -aq)
```

## Delete all docker images
```
docker rmi $(docker images -q)
```


# Docker Compose run background
```
docker-compose up -d
```

```
docker-compose stop
```

```
docker-compose down --volumes
```

# Docker Swarm
## Create
```
docker swarm init
```

## Point and deploy new stack
```
docker stack deploy --compose-file=docker-compose.yml production
```



# Problems:

You are trying to run a docker container and get an error message like this:

```
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.26/containers/json?all=1: dial unix /var/run/docker.sock: connect: permission denied
```

then you should add your user to docker group:
```
sudo usermod -a -G docker $USER
```

on ubuntu user should login one more time to see changes
