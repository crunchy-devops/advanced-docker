# lab CMD ENTRYPOINT

```shell
docker build -t test-cmd -f dockerfile-cmd . 
docker run  test-cmd sleep 5

docker build -t test-entry -f dockerfile-entrypoint . 
docker run  test-entry 

docker build -t test-final  . 
docker run  test-final 
docker run test-final 10

```

