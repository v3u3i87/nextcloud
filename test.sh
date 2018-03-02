#!/bin/bash

echo "重新开发调试.."
docker ps

echo "清空docker容器"

docker kill $(docker ps -a -q) && docker rm `docker ps -a -q`


DELDIR=''

rm -rf data
rm -rf apps
rm -rf config
rm -rf db
rm -rf nextcloud
rm -rf redis
rm -rf solr
rm -rf themes

echo "删除目录"

mkdir -p data
mkdir -p apps
mkdir -p config
mkdir -p db
mkdir -p nextcloud
mkdir -p redis
mkdir -p solr
mkdir -p themes

echo "创建目录,更新最新配置到git"

git add -A
git commit -m "test dev"
git push origin master

echo "启动docker compose"

docker-compose up