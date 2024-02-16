#!/usr/bin/env bash
P=multistagetest

docker build -t $P:worst -f Dockerfile.worst .
docker build -t $P:worst-multi -f Dockerfile.worst-multi .
docker build -t $P:dummy -f Dockerfile.dummy .
docker build -t $P:simple -f Dockerfile.simple .
docker build -t $P:clever -f Dockerfile.clever .
docker build -t $P:multi -f Dockerfile.multi .

docker images --filter=reference="$P*" --format "table {{.Tag}}\t{{.Size}}"

docker rmi -f $(docker images --filter=reference="$P*" -q)
