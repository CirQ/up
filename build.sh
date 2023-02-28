#!/bin/sh

# prepare config file
token=$(uuidgen)
sed "s/####/$token/g" config_template.json > config.json

# run docker server
docker pull v2fly/v2fly-core
docker run -d --name v2-server -v $(pwd):/etc/v2ray -p 54321:54321 --restart always v2fly/v2fly-core run -c /etc/v2ray/config.json





echo $token
