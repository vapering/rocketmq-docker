FROM openjdk:8u242-jre

RUN curl http://mirrors.ocf.berkeley.edu/apache/rocketmq/4.6.0/rocketmq-all-4.6.0-bin-release.zip -o rocketmq-all-4.6.0-bin-release.zip

RUN unzip rocketmq-all-4.6.0-bin-release.zip

RUN ls -l
RUN pwd


# ENTRYPOINT 