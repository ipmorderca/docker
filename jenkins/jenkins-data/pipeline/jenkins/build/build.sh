#!/bin/bash

#kopiowania jar do katalogu build
cp -f java-app/target/*.jar jenkins/build/

echo " BUdowanie obrazu dockera "

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache

