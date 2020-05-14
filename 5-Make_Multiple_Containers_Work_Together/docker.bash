docker build -t survey .
docker build -t results .
docker pull mongo:latest
docker run -d --name mongo mongo:latest
docker logs mongo
docker run -d -p 8080:8080 -v $(pwd):/src/app --name survey_container survey

docker run -d -p 3000:3000 -v $(pwd):/src/app --name results_container results
docker logs survey_container
docker network ls
docker network inspect bridge
docker rm -f survey_container results_container

