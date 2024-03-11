#!/bin/bash

USER=mizunno
HOST=pedgarvic.me
DIR=/var/www/pedgarvic.me/html/
SSH_KEY_PATH=~/.ssh/pedgarvic

hugo
rsync -avz --delete public/ -e "ssh -i ${SSH_KEY_PATH}" ${USER}@${HOST}:${DIR}
