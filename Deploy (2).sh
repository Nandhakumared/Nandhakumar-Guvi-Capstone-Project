#!/bin/bash

docker pull nandhakumarvs/dev:dev

docker images

docker run -d -p 80:80 --name app nandhakumarvs/dev:dev
