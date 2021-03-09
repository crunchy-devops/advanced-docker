# Lab pipework adding static IP address to a container
````shell
sudo wget -O /usr/local/bin/pipework https://raw.githubusercontent.com/jpetazzo/pipework/master/pipework
sudo chmod +x /usr/local/bin/pipework
docker run -i -t --name c1 ubuntu:latest /bin/bash
docker run -i -t --name c2 ubuntu:latest /bin/bash
sudo /usr/local/bin/pipework brpipe c1 192.168.1.1/24
docker start c1
docker start c2
sudo /usr/local/bin/pipework brpipe c1 192.168.1.1/24
sudo /usr/local/bin/pipework brpipe c2 192.168.1.2/24