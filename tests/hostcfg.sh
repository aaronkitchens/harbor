#!/bin/bash
IP=`ip addr s eth0 |grep "inet "|awk '{print $2}' |awk -F "/" '{print $1}'`
#echo $IP
sed "s/reg.mydomain.com/$IP/" -i Deploy/harbor.cfg
cat Deploy/harbor.cfg
