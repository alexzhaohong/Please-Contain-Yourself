docker build -t colorserver .
docker run -d -p 8080:8080 colorserver
docker run -d -p 1000:8080 -v /Users/karen8/Documents/GitHub/Please-Contain-Yourself/4-Containerized_Development_With_Volumes/:/src/app --name psychic_container colorserver
docker run -d -p 2000:8080 -v $(pwd):/src/app --name psychic_container2 colorserver
docker logs psychic_container