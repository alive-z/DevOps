#openjdk 体积小
FROM openjdk:8-jdk-alpine

#build参数
ARG SERVICE
ARG VERSION=1.0

#配置文件
ADD bootstrap-common.yml bootstrap-common.yml
ADD bootstrap.yml bootstrap.yml

#服务jar名称
ADD btbs-eureka-1.0.jar app.jar

EXPOSE 80

ENTRYPOINT java -DLOG_DIR=/var/log/btbs/ -jar app.jar
