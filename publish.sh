#!/bin/bash
gcloud auth print-access-token | docker login -u oauth2accesstoken --password-stdin https://europe-west4-docker.pkg.dev
docker build . -t europe-west4-docker.pkg.dev/hivenote/inbest-task/inbest-task-frontend
docker push europe-west4-docker.pkg.dev/hivenote/inbest-task/inbest-task-frontend
