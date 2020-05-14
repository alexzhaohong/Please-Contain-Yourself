# Creates a image from Dockerfile 
docker build -t nodeserver .
# Creates a container from an image
# command // -d 'detached head' background proccss 
docker run -d -p 1000:3000 --name slytherin_rulez --rm nodeserver

# Module 3 Bundle your App Into an Image
docker pull <image-name> (eg node:latest)
docker history <image-name>
docker build [-t 'tag' identifier] <image-name> <relative-path> # Creates a image from Dockerfile  
docker restart <container-name>

docker images
docker ps