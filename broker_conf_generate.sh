#!/bin/sh
workdir=$(dirname `readlink -f $0`)
cd $workdir

if [ -z $BROKERIP1 ] ; then
    BROKERIP1=$(ip addr|grep inet|grep -v inet6|grep -v '127.0.0.1'|awk -F '[ /]+' '{print $3}'|head -1)
fi

cat > $workdir/conf/broker.conf << EOF

listenPort = ${LISTENPORT}
brokerIP1 = ${BROKERIP1}
brokerName = ${BROKERNAME}
brokerClusterName = ${BROKERCLUSTERNAME}
brokerId = ${BROKERID}
storePathCommitLog = ${STOREPATHCOMMITLOG}
storePathConsumerQueue = ${STOREPATHCONSUMERQUEUE}
mapedFileSizeCommitLog = ${MAPEDFILESIZECOMMITLOG}
deleteWhen = ${DELETEWHEN}
fileReserverdTime = ${FILERESERVERDTIME}
brokerRole = ${BROKERROLE}
flushDiskType = ${FLUSHDISKTYPE}

# DLeger
enableDLegerCommitLog = ${ENABLEDLEGERCOMMITLOG}
dLegerGroup = ${DLEGERGROUP}
dLegerPeers = ${DLEGERPEERS}
dLegerSelfId = ${DLEGERSELFID}
sendMessageThreadPoolNums = ${SENDMESSAGETHREADPOOLNUMS}


EOF

cat $workdir/conf/broker.conf