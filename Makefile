docker_build:
	sudo docker build -f Dockerfile -t techye/networking:latest .

docker_run:
	sudo docker run -d -p 3500:3500 -p 5000:5000 --name net techye/networking:latest
	
# Check out netdata container: https://hub.docker.com/r/netdata/netdata
# It runs a server that logs all HW components information
