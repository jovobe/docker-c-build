# docker-c-build
Repo for Dockerfiles to create an image to build c projects on debian:7.10 and debug them.

## Usage with docker-compose
- for OS X and Windows: be sure Your docker-machine is running and ENV variables are set
- create code folder `mkdir code`
- copy Your code into this folder
- run container `docker-compose up -d`
- connect to container `./connect.sh`
- You are now in the container: compile Your code and run executable

### Example on OS X
- setup ENV
  - `docker-machine start default`
  - `eval $(docker-machine env default)`
- create folder and copy code
  - `mkdir code`
  - `cd code`
  - `cp ../../source/* .`
  - `cd ..`
- start container and compile code
  - `docker-compose up -d`
  - `./connect.sh`
  - `make`
