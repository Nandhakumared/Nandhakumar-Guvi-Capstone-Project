#!/bin/bash

git clone -b Dev https://github.com/Nandhakumared/Guvi-Reactapp-CI-CD-project.git

cd /var/lib/jenkins/workspace/Demo/

ls -l Dockerfile

sh build.sh

docker tag react:app nandhakumarvs/dev:dev

docker login -u nandhakumarvs -p dckr_pat_v36pJwkiiMVAOHGOzpKFhJbM-Pg
docker push nandhakumarvs/dev:dev

if [ "$GIT_BRANCH" == "origin/master" ]; then
   
    docker tag react:app nandhakumarvs/prod:latest
    
    docker push nandhakumarvs/prod:latest
fi
