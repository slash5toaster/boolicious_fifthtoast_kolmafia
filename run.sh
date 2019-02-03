#!/bin/bash
set -x

#variables
KM_ROOT="/Users/jonesc47/Library/Application Support/KoLmafia"

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

cd "$KM_ROOT/"
git fetch --all -p
git commit -a -m  $(date +%F-%H%M)
$JAVABIN -jar "$KM_ROOT/KoLmafia-latest.jar"
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

# End of file, if this is missing the file is truncated
###################################################################################################
