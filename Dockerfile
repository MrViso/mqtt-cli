FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y wget openjdk-11-jre && \
    wget https://github.com/hivemq/mqtt-cli/release/download/v1.1.2/mqtt-cli_1.1.2_all.deb && \
    apt install ./mqtt-cli_1.1.2_all.deb && \
    rm ./mqtt-cli_1.1.2_all.deb
CMD ["mqtt", "shell"]
