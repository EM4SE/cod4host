#!/bin/bash

echo "Script by Sathira Sri Sathsara (SaM)"

# Update the system and install dependencies
sudo dpkg --add-architecture i386
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get install unzip -y

# Create server directory
cd /home
sudo mkdir servers
cd /home/servers

# Download COD4X Linux server files from Archive.org
sudo wget https://archive.org/download/cod4_linux_server_files_201501/cod4_linux_server_files.zip

# Unzip and clean up
sudo unzip cod4_linux_server_files.zip
sudo rm cod4_linux_server_files.zip
cd /home/servers/cod4x-linux-server

# Start the server
sudo chmod 777 *
sudo screen -S cod4x-server ./start.sh

echo "Server Started Enjoy <3 [SaM]"
