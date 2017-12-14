# python_ha_app
Simple Python HA APP with docker terraform and GCE


Output of app should be like:
```
Python Dockerized APP
CONTAINER ID: e410468623b9
HOSTNAME: localhost
```
```
Python Dockerized APP
CONTAINER ID: b5c2058ec515
HOSTNAME: localhost
```

# How to deploy it

In terraform directory please create json.key file based on json key from Compute Engine default service account

key.json_example is a example

change directory to terraform and execute:
```
cd terraform && terraform init && terraform apply
```

then run ansible deploy in root project directory
```
./ansible_run.sh
```


## TL;TR
  Notes.md
