#!/bin/bash
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com
docker pull $AWS_ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com/backend-ecr:latest
docker run -d --name backend -p 5000:5000 backend-ecr:latest
