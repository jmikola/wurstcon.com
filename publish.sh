#!/bin/sh

sculpin generate --env=prod
if [ $? -ne 0 ]; then echo "Could not generate the site"; exit 1; fi

rsync -avz output_prod/ jmikola@jmikola.net:http/wurstcon.com
if [ $? -ne 0 ]; then echo "Could not publish the site"; exit 1; fi
