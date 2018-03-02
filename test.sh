#!/bin/bash

echo "重新开发调试.."

docker kill $(docker ps -a -q) && docker rm `docker ps -a -q`

echo "清空docker容器"

DELDIR='/'

rm -rf $DELDIR'data'
rm -rf $DELDIR'apps'
rm -rf $DELDIR'config'
rm -rf $DELDIR'db'
rm -rf $DELDIR'nextcloud'
rm -rf $DELDIR'redis'
rm -rf $DELDIR'solr'
rm -rf $DELDIR'themes'

echo "删除目录"

mkdir -p $DELDIR'data'
mkdir -p $DELDIR'apps'
mkdir -p $DELDIR'config'
mkdir -p $DELDIR'db'
mkdir -p $DELDIR'nextcloud'
mkdir -p $DELDIR'redis'
mkdir -p $DELDIR'solr'
mkdir -p $DELDIR'themes'

echo "创建目录,更新最新配置到git"

git add -A
git commit -m "test dev"
git push origin master

echo "启动docker compose"

docker-compose up