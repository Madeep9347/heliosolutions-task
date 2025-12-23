#!/bin/bash
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com
docker pull $AWS_ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com/frontend-ecr:latest
docker run -d --name frontend -p 80:80 frontend-ecr:latest
