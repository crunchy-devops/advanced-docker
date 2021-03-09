# Lab minimal-image

```shell
docker build -t hello_build .
docker run --name hello hello_build /bin/true
docker cp hello:/hi hi
docker rm hello
docker rmi hello_build
mkdir -p new_folder
mv hi new_folder
cd new_folder

vi Dockerfile 
# Add these lines
FROM scratch 
ADD hi /hi
CMD ["/hi"]

docker build -t hello_small .
docker run --name hello hello_small




```