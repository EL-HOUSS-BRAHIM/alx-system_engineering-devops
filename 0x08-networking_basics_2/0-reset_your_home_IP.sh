#!/bin/bash

cp /etc/hosts ~/hosts.new
echo "127.0.0.2		localhost" > ~/hosts.new
echo "8.8.8.8		facebook.com" >> ~/hosts.new
cp -f ~/hosts.new /etc/hosts
echo "IP addresses reset successfully."
