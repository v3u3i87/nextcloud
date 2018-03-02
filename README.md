# nextcloud

## 添加执行权限
chmod +x test.sh
## 开始执行
./test.sh

#配置镜像虚拟网络
docker create network nextcloud

#参考配置yml,本地网桥

````
networks:
  default:
    driver: bridge
````

#参考

````

https://www.jianshu.com/p/d01ec782f3c2
https://www.centos.bz/2017/09/nginx%E9%85%8D%E5%90%88docker%E5%AE%89%E8%A3%85nextcloud%EF%BC%88%E8%B6%85%E7%AE%80%E6%98%93%EF%BC%89%E6%8A%9B%E5%BC%83owncloud/#%E5%AE%89%E8%A3%85letsencrypt
http://blog.csdn.net/feinifi/article/details/78413034
http://blog.csdn.net/wanghailong041/article/details/52162275
````


#docker 命令行



#清理所有正在运行的容器,并且删除所有容器
docker kill $(docker ps -a -q) && docker rm `docker ps -a -q` 

##列出所有镜像(images)
docker images           
##列出正在运行的容器(containers)
docker ps               
##列出所有的容器
docker ps -a            
##下载centos镜像
docker pull centos      
##查看容器内部运行程序
docker top <container>  

#容器

## 停止一个正在运行的容器，<container>可以是容器ID或名称
docker stop <container>                  
## 启动一个已经停止的容器
docker start <container>                 
## 重启容器
docker restart <container>               
## 删除容器
docker rm <container>                    
## 运行容器并做http端口转发
docker run -i -t -p :80 LAMP /bin/bash   
## 进入ubuntu类容器的bash
docker exec -it <container> /bin/bash    
## 进入alpine类容器的sh
docker exec -it <container> /bin/sh      

## 删除所有已经停止的容器
docker rm `docker ps -a -q`              

````text
FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm %i  # windows系统，用上面的命令会出错：unknown shorthand flag: 'a' in -a 
````

## 杀死所有正在运行的容器
````text
docker kill $(docker ps -a -q)
````         



#提交/导出

## 建立映像文件 
````text
–rm 选项是告诉Docker，在构建完成后删除临时的Container，Dockerfile的每一行指令都会创建一个临时的Container，一般这些临时生成的Container是不需要的
````

docker build --rm=true -t hjue/lamp .  

## 提交你的变更，并且把容器保存成镜像，命名为mynewimage，3a09b2588478为容器的ID
docker commit 3a09b2588478 mynewimage   

## 把 mynewimage 镜像保存成 tar 文件
docker save mynewimage | bzip2 -9 -c> /home/save.tar.bz2  

## 加载 mynewimage 镜像
bzip2 -d -c < /home/save.tar.bz2 | docker load            

## 导出Image
docker export <CONTAINER ID> > /home/export.tar

## 导入Image镜像
cat /home/export.tar | sudo docker import - mynewimage    



#镜像
## 运行centos镜像
docker run -i -t centos /bin/bash          
## 运行centos-lamp镜像
docker run -d -p 80:80 hjue/centos-lamp    
## 删除镜像
docker rmi [image-id]                      
## 删除所有镜像
docker rmi $(docker images -q)             



#私有资料
http://www.jianshu.com/p/cbda14efe897

#Dockerfile指令详解
http://seanlook.com/2014/11/17/dockerfile-introduction/


#私有仓库安装
http://467754239.blog.51cto.com/4878013/1638770

#命令
http://dockone.io/article/102



