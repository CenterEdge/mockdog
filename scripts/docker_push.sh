#!/bin/bash
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD";
docker tag centeredge/mockdog:${TRAVIS_BUILD_NUMBER} centeredge/mockdog:${TRAVIS_TAG};
docker tag centeredge/mockdog:${TRAVIS_BUILD_NUMBER} centeredge/mockdog:latest;
docker push centeredge/mockdog:${TRAVIS_TAG};
docker push centeredge/mockdog:latest;
