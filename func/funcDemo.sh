#!/bin/bash 

hello(){
    echo "hello world"
}

hello

ip=`ifconfig eth0`
echo $ip

a=`ps -ef|grep java| awk '{print $2}'`
for i in $a;do
	echo $i
done

exit 0