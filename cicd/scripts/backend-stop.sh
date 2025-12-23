#!/bin/bash
docker stop backend || true
docker rm backend || true
