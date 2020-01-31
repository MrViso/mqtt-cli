# Dockerized MQTT-CLI from [HiveMQ](https://github.com/hivemq/mqtt-cli)

This repository contains only a Dockerfile to deploy HiveMQ's mqtt-cli via docker. The current version uses the version 1.1.2. The base of the container is ubuntu:18.04 docker image. I did install wget and openjdk runtime to get the package of mqtt-cli, install and run it.

You may pull the image by yourself over [Docker Hub](https://hub.docker.com/r/mrviso/mqtt-cli)

```
docker image pull mrviso/mqtt-cli
```

I use this container for testing purposes with a eclipse-mosquitto broker. Therefore I use both containers in one network called `mqtt`. I do run this client mostly as container, which gets removed after stopping it. So if you would like to use it the same the following command should work well for you

```
docker container run -it --rm --net mqtt mrviso/mqtt-cli
```
