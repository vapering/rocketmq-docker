# Rocketmq-docker
rocketmq docker image

# Example

```
# run nameserver
docker run -dit --name=rocketmqnameserver --net=host rocketmq-nameserver:4.6.0

# run broker
docker run -dit --name=rocketmqbroker \
-e NAMESRVADDR="192.168.3.29:9876" \
-e BROKERNAME=test-broker-01 \
-e JAVA_OPT_EXT=" -server -Xms1g -Xmx1g -Xmn1g " \
--net=host \
rocketmq-broker:4.6.0

```

# Avaliable variable in broker
```
NAMESRVADDR=localhost:9876
LISTENPORT=10911
BROKERIP1=
BROKERNAME=
BROKERCLUSTERNAME=DefaultCluster
BROKERID=0
STOREPATHCOMMITLOG=~/store/commitlog/
STOREPATHCONSUMERQUEUE=~/store/consumequeue/
MAPEDFILESIZECOMMITLOG=1073741824
DELETEWHEN=4
FILERESERVERDTIME=72
BROKERROLE=ASYNC_MASTER
FLUSHDISKTYPE=ASYNC_FLUSH
ENABLEDLEGERCOMMITLOG=true
DLEGERGROUP=RaftNode00
DLEGERPEERS=n0-127.0.0.1:40911;n1-127.0.0.1:40912;n2-127.0.0.1:40913
DLEGERSELFID=n0
SENDMESSAGETHREADPOOLNUMS=8

```

