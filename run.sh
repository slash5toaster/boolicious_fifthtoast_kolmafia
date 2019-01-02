#!/bin/bash

#added comment for testing

HOST=$(hostname | cut -d'.' -f1 | tr '[:upper:]' '[:lower:]')
GITREMOTE=github

case $HOST in
  #"lua" )
       #echo $HOST
       #JAVABIN=/usr/local/jdk1.7.0_01/jre/bin/java
       #;;
  * )
       echo $HOST "using default java "
       if [ -e $(which java) ] ;then
         JAVABIN=$(which java)
       fi
       ;;
esac

pushd ~/.kolmafia/
git fetch --all -p
git commit -a -m  $(date +%F-%H%M)
$JAVABIN -jar ~/.kolmafia/KoLmafia-latest.jar
git push

pushd sessions
git add *$(date -u +%Y%m%d)*
git add *$(date +%Y%m%d)*
popd

# add sessions
pushd chats
git add *$(date -u +%Y%m%d)*
git add *$(date +%Y%m%d)*
popd

git commit -a -m  $(date +%F-%H%M)
popd
