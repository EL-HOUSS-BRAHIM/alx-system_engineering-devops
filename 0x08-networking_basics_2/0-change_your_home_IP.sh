#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (sudo)." 
  exit 1
fi

echo "172.0.0.2 localhost" >> /etc/hosts
echo "8.8.8.8 facebook.com" >> /etc/hosts
echo "IP addresses set successfully."
