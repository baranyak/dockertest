#/bin/bash
cd /usr/share/docker_app/
sudo docker ps -a -q
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker load -i image_to_deploy
sudo docker run -d -p 8080:8080 docker_image
