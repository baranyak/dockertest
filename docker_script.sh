#/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker load -i image_to_deploy
docker run -d -p 8080:8080 image_to_deploy
