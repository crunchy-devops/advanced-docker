# Optimize Docker images

## Reducing deployment time by using a corporate registry
```shell
docker login
# enter username and password
docker build -t systemdevformations/largeapp .
# check size
docker images
time docker push systemdevformations/largeapp
```
## Use a registry
```shell
docker run -d -p 5000:5000 --name registry registry:2
docker image tag systemdevformations/largeapp localhost:5000/largeapp
time docker push localhost:5000/largeapp
docker rmi -f systemdevformations/largeapp
docker rmi -f localhost:5000/largeapp
time docker pull systemdevformations/largeapp
docker rmi -f systemdevformations/largeapp
time docker pull localhost:5000/largeapp
```

## Use registry mirrors
Reduce the image build time
```
sudo vi /etc/docker/daemon.json 
# add
{ 
  "registry-mirrors": [
     "http://127.0.0.1:5000"
    ]
}
systemctl daemon-reload
systemctl restart docker.service
docker run --network=host -d \
-e PROXY_REMOTEURL=https://registry-1.docker.io \
registry:2
time docker build -t mirror -f dockerfile-mirror .
```

## Manage linux layer
```
time docker build -t mirror -f dockerfile-use-layer .

```






```