#!/bin/bash
docker stop frontend || true
docker rm frontend || true
