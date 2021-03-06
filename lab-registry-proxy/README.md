# registry and proxy
```shell
sudo mkdir /var/lib/docker-registry

sudo docker run -it -rm registry:2 \
cat /etc/docker/registry/config.yml \
> config.yml

# Add  in file
proxy:
  remoteurl: https://registry-1.docker.io

sudo cp config.yml /var/lib/docker-registry/config.yml

docker run --restart=always -p 5000:5000                         \
         --name v2-mirror -v /var/lib/docker-registry:/var/lib/registry \
         --detach registry:2 serve /var/lib/registry/config.yml
docker https
curl http://localhost:5000/v2/_catalog
sudo vi /etc/docker/daemon.json
# added in file
{
    "registry-mirrors": ["http://localhost:5000"]
}
sudo systemctl restart docker
time docker pull redis
curl http://localhost:5000/v2/_catalog
docker rmi -f redis
time docker pull redis
```