# Lab Separating build

```shell
docker built -t largeapp . 
docker images 
# check image size
docker run --name large -d largeapp
docker exec -it large /bin/bash
ls -lsh
ldd hello
```