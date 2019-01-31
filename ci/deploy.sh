#!/bin/bash

export env=$1
CLASS_NAME="com.example.firstci.MyFirstCIExample"

if [[ ${env} = "dev" ]|| [ ${env} = "staging" ] || [ ${env} = "prod" ]]; then 
    java -cp /home/travis/.m2/*.jar ${CLASS_NAME}
else 
    echo "Invalid Environment"
	exit 1
fi