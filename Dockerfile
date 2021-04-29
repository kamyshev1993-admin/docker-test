FROM ubuntu:focal
MAINTAINER Zulu Enterprise Container Images <azul-zulu-images@microsoft.com>
RUN apt-get -qq update && \
    apt-get -qq -y --no-install-recommends install gnupg software-properties-common && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 && \
    apt-add-repository "deb http://repos.azul.com/azure-only/zulu/apt stable main" && \
    apt-get -qq update && \
    apt-get -qq -y dist-upgrade && \
    apt-get -qq -y --no-install-recommends install zulu-11-azure-jre=11.45+27* && \
    apt-get -qq -y purge gnupg software-properties-common && \
    apt -y autoremove --purge && \
    rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME=/usr/lib/jvm/zre-11-azure-amd64

COPY ./target/spring-boot-0.0.1-SNAPSHOT.jar /home
ADD ./src/main/resources/application.properties /home/config/application.properties
WORKDIR /home
CMD ["java","-jar", "/home/spring-boot-0.0.1-SNAPSHOT.jar"]
