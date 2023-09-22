#!/bin/bash

BIN_INSTALL_PATH="/usr/bin/"
CONFIG_PATH="/etc/mumble-web/"
CONFIG_FILE="config.js"
CONFIG_FILE_PATH="${CONFIG_PATH}${CONFIG_FILE}"
SERVICE_FILE_DIR="/etc/systemd/system/"
SERVICE_FILE="${SERVICE_FILE_DIR}/mumble-web.service"
INSTALL_PATH="/var/www/mumble-web/"

npm install

sudo rm -rf $INSTALL_PATH/*
sudo cp -r dist/* $INSTALL_PATH
sudo chown -R www-data:www-data $INSTALL_PATH

#sudo cp target/release/mumble-web-proxy $BIN_INSTALL_PATH

#if [ ! -e $CONFIG_FILE_PATH ]
#then
#	sudo mkdir -p $CONFIG_PATH
#	sudo cp config.toml $CONFIG_FILE_PATH
#fi

#if [ ! -e $SERVICE_FILE ]
#then
#	sudo cp mumble-web.service $SERVICE_FILE
#fi

