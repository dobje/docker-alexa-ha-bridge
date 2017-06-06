# Centos ha-bridge
# -Dserver.port=80
# -Dsecurity.key=

FROM centos:centos7
MAINTAINER Tobias Sgoff

RUN yum -y install java-1.8.0-openjdk wget unzip
RUN mkdir /data/ && cd $_ && \
    UR="https://github.com/bwssytems/ha-bridge" ; \
    LV=`curl -s $UR/releases/latest |cut -d'v' -f2|cut -d'"' -f1` ; \
    wget $UR/releases/download/v${LV}/ha-bridge-${LV}.jar -Oha-bridge.jar

CMD ["java","-jar","/data/ha-bridge.jar"]
