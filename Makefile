docker_build:
	sudo docker build -f Dockerfile -t techye/networking:latest .

docker_build_multiple:
	- sudo docker buildx create --name mybuilder --use
	sudo docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -f Dockerfile -t techye/networking:latest --push .

docker_run:
	sudo docker run -d -p 3500:3500 -p 5000:5000 --name net techye/networking:latest
	
# Check out netdata container: https://hub.docker.com/r/netdata/netdata
# It runs a server that logs all HW components information
