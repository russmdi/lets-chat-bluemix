#!/bin/bash

echo "running start-server.sh script"

#Extract user-provided Mongo credentials from VCAP_SERVICES
#TEMP_URI=`python scripts/extract-vcap.py user-provided 0 credentials.uri`
#if [ "$?" != "0" ]; then
#	echo "'credentials.uri' not found in 'user-provided' VCAP_SERVICES"
#	exit 1
#fi

#TEMP_PORT=`python scripts/extract-vcap.py user-provided 0 credentials.port`
#if [ "$?" != "0" ]; then
#        echo "'credentials.port' not found in 'user-provided' VCAP_SERVICES"
#        exit 1
#fi

#TEMP_USER=`python scripts/extract-vcap.py user-provided 0 credentials.user`
#if [ "$?" != "0" ]; then
#        echo "'credentials.user' not found in 'user-provided' VCAP_SERVICES"
#        exit 1
#fi

#TEMP_PASS=`python scripts/extract-vcap.py user-provided 0 credentials.password`
#if [ "$?" != "0" ]; then
#        echo "'credentials.password' not found in 'user-provided' VCAP_SERVICES"
#        exit 1
#fi

#Check for a database name passed in via --env, otherwise use default database name below
#DEFAULT_DBNAME is "lets-chat-mongo"
#export LCB_DATABASE_NAME=${LCB_DATABASE_NAME:-lets-chat-mongo}
export LCB_DATABASE_NAME=mongodb-lets-chat

# export LCB_DATABASE_URI="mongodb://${TEMP_USER}:${TEMP_PASS}@${TEMP_URI}:${TEMP_PORT}/${LCB_DATABASE_NAME}"
export LCB_DATABASE_URI="mongodb://031760db-a3b0-4536-ad94-2cf37cb77ea0:07f26653-f2e9-4e30-b38b-08c0ea1cdd08@50.23.230.151:10311/mongodb-lets-chat"

# Inserting sleep delay per recommendation via https://www.ng.bluemix.net/docs/containers/container_single_ov.html#container_single_cli
sleep 60

#Run server
echo "starting server"
npm start
