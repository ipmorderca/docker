#!/bin/bash


echo "pushin image"

IMAGE="maven-project"
echo " login in "
docker login  -u ipmorderca -p $PASS
echo "taggin image"
docker tag $IMAGE:$BUILD_TAG ipmorderca/$IMAGE:$BUILD_TAG
echo "Pushing image"
docker push ipmorderca/$IMAGE:$BUILD_TAG
