#!/bin/bash
export LC_ALL=C

if [ -n "$1" ] && [ $1 == "local" ]; then
	meteor run --settings=settings.json;
elif [ -n "$1" ] && [ $1 == "reset" ]; then
	meteor reset;
	meteor run --settings=settings.json;
elif [ -n "$1" ] && [ $1 == "server" ] && [ -n "$2" ] && [ $2 == "delete" ]; then
	meteor deploy --delete statistics.meteor.com;
	meteor deploy futbalx.meteor.com --settings=settings.json;
elif [ -n "$1" ] && [ $1 == "server" ] && [ -n "$2" ] && [ $2 == "min" ]; then
	meteor deploy --production futbalx.meteor.com --settings=settings.json;
elif [ -n "$1" ] && [ $1 == "server" ]; then
	meteor deploy futbalx.meteor.com --settings=settings.json;
elif [ -n "$1" ] && [ $1 == "mobile" ]; then
	meteor run android-device --mobile-server=futbalx.meteor.com --settings=settings.json;
elif [ -n "$1" ] && [ $1 == "mongo" ]; then
	meteor mongo;
else
	meteor run --settings=settings.json;
fi