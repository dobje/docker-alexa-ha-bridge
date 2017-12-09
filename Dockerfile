# Centos ha-bridge

# Version 5.0

FROM centos:centos7
MAINTAINER Tobias Sgoff

RUN yum -y install java-1.8.0-openjdk wget unzip
RUN mkdir /bridge/ && cd $_ && \
    UR="https://github.com/bwssytems/ha-bridge" ; \
    LV=`curl -s $UR/releases/latest |cut -d'v' -f2|cut -d'"' -f1` ; \
    wget $UR/releases/download/v${LV}/ha-bridge-${LV}.jar -Oha-bridge.jar
RUN echo '#!/bin/bash' > /bridge/init.sh ; \
    echo java -jar \$PORT \$KEY \$CONFIG \$IP \$GARDEN /bridge/ha-bridge.jar >> /bridge/init.sh
RUN chmod +x /bridge/init.sh

WORKDIR /bridge
CMD ["/bridge/init.sh"]
