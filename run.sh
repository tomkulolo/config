#!/usr/bin/env bash

if [ -z "$URL" ]; then 
	echo "URL not set"
	exit 1
fi

if [ -z "$APP" ]; then
        echo "APP not set"
        exit 1
fi

if [ -z "$VERSION" ]; then
        echo "VERSION not set"
        exit 1
fi

if [ -z "$ENV" ]; then
        echo "ENV not set"
        exit 1
fi

if [ -z "$KEY" ]; then
        echo "KEY not set"
        exit 1
fi


echo "curl -o $KEY http://$URL/api/config/file?app=$APP&env=$ENV&version=$VERSION&key=$KEY"

curl -o $KEY "http://$URL/api/config/file?app=$APP&env=$ENV&version=$VERSION&key=$KEY"

java -jar gs-maven-0.1.0.jar

