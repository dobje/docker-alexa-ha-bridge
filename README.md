docker-alexa-ha-bridge
========

https://github.com/bwssytems/ha-bridge
https://github.com/armzilla/amazon-echo-ha-bridge
https://registry.hub.docker.com/u/bios/docker-alexa-ha-bridge/

**Docker image to start a ha-bridge container with CentOS**

Use --net=host for functional UPnP discovery

Quickstart
----------

    docker run --name bridge -d --net=host bios/docker-alexa-ha-bridge

Options
-------
 - PORT="-Dserver.port=8080" 
 - KEY="-Dsecurity.key=Xfawer354WertSdf321234asd" 
 - IP="-Dserver.ip=192.168.1.1" 
 - CONFIG="-Dconfig.file=/home/me/data/myhabridge.config" 
 - GARDEN="-Dexec.garden=/bridge/" 
 

Example
-------
Mount backup file and define custom port

    docker run --name bridge -d --net=host \
    -v /opt/yourls:/data \
    -e PORT="-Dserver.port=8080" \
    -e KEY="-Dsecurity.key=Xfawer354WertSdf321234asd" \
    -e IP="-Dserver.ip=192.168.1.1" \
    -e GARDEN="-Dexec.garden=/bridge/" bios/docker-alexa-ha-bridge
