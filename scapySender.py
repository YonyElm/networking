#! /usr/bin/python3
from scapy.all import *
import time
import os

givenDestIp = os.environ.get("SCAPY_IP", "0.0.0.0")
givenPort = os.environ.get("SCAPY_PORT", 3500)

layer3 = IP(dst=givenDestIp)
layer4 = UDP(dport=int(givenPort))
payload = Raw(load="abc")

while (True):
    send(layer3/layer4/payload)
    time.sleep(1)