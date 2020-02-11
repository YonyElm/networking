FROM python:3-slim

WORKDIR /app

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -qq iputils-ping net-tools apt-utils vim
RUN apt-get install -qq tcpdump tcpreplay traceroute curl speedometer nuttcp iperf3
RUN python3 -m pip install flask scapy tcconfig speedtest-cli

ADD scapySender.py /app/
ADD flaskServer.py /app/
ADD entrypoint.sh /app/

CMD "./entrypoint.sh"
