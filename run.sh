#!/bin/bash

HOST=$(hostname | cut -d'.' -f1 | tr '[:upper:]' '[:lower:]')
GITREMOTE=github

case $HOST in
  #"lua" )
       #echo $HOST
       #JAVABIN=/usr/local/jdk1.7.0_01/jre/bin/java
       #;;
#  "ussf319388" )
#       echo $HOST
#       JAVABIN=/usr/lib/jvm/java-6-openjdk/jre/bin/java
#       ;;
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
#svn cleanup
#svn up  --password 1aK8U30UMO
#svn commit -m $(date +%F-%H%M)  --password 1aK8U30UMO
git fetch --all 
git commit -a -m  $(date +%F-%H%M)
$JAVABIN -jar ~/.kolmafia/KoLmafia-latest.jar 

pushd sessions
git add *$(date -u +%Y%m%d)*
git add *$(date +%Y%m%d)*
popd

# add sessions
pushd chats
git add *$(date -u +%Y%m%d)*
git add *$(date +%Y%m%d)*
popd

#svn up --password 1aK8U30UMO 
#svn commit -m $(date +%F-%H%M) --password 1aK8U30UMO
git commit -a -m  $(date +%F-%H%M)
#git push $GITREMOTE
popd
