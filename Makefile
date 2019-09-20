docker_build:
	sudo docker build -f Dockerfile -t techye/networking:latest .

docker_run:
	sudo docker run -d -p 3500:3500 -p 5000:5000 --name net techye/networking:latest