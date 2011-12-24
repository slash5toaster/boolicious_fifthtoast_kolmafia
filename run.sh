#!/bin/bash

HOST=$(hostname -s)
case $HOST in
  "lua" )
       echo $HOST
       JAVABIN=/usr/lib/jvm/java-1.5.0-sun-1.5.0.19/bin/java
       ;;
  "ussf319388" )
       echo $HOST
       JAVABIN=/usr/lib/jvm/java-6-openjdk/jre/bin/java
       ;;
  "ussf311936" )
       echo $HOST
       JAVABIN=/usr/bin/java
       ;;
  * )
       echo $HOST "using default java "
       if [ -e $(which java) ] ;then 
         JAVABIN=$(which java)
       fi
       ;;
esac

pushd ~/.kolmafia/
svn up  --password 1aK8U30UMO
svn commit -m $(date +%F-%H%M)  --password 1aK8U30UMO
$JAVABIN -jar ~/.kolmafia/KoLmafia-14.8.jar 
svn add */*$(date -u +%y%m%d)*
svn up --password 1aK8U30UMO 
svn commit -m $(date +%F-%H%M) --password 1aK8U30UMO
popd
