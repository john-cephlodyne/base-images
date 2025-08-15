#!/bin/bash

# build and scan images for local development
dockerfiles=("base" "node-builder" "go-builder")

for file in "${dockerfiles[@]}"
do
   img="base-repo-$file"
   dockerfile="Dockerfile-$file"
   docker build -t $img -f $dockerfile .
done