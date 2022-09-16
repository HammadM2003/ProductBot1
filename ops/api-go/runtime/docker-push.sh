#!/usr/bin/env bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 503719304735.dkr.ecr.us-east-1.amazonaws.com
docker tag rush-api:latest 503719304735.dkr.ecr.us-east-1.amazonaws.com/rush-api:latest
docker push 503719304735.dkr.ecr.us-east-1.amazonaws.com/rush-api:latest
