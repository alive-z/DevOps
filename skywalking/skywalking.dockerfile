FROM centos:7

LABEL username=""

WORKDIR /app

RUN yum install -y wget && \
    yum install -y java-1.8.0-openjdk

ADD http://mirrors.hust.edu.cn/apache/incubator/skywalking/6.0.0-GA/apache-skywalking-apm-incubating-6.0.0-GA.tar.gz /app

RUN tar -xf apache-skywalking-apm-incubating-6.0.0-GA.tar.gz && \
    mv apache-skywalking-apm-incubating skywalking

RUN ls /app

#copy文件
COPY application.yml /app/skywalking/config/application.yml

WORKDIR /app/skywalking/bin

USER root

RUN  echo "tail -f /dev/null" >> /app/skywalking/bin/startup.sh

CMD ["/bin/sh","-c","/app/skywalking/bin/startup.sh" ]