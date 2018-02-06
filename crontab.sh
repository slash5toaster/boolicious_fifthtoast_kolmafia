#!/bin/bash
# 7	6	*	*	*
cd ~/.kolmafia ;
git pull master -p
KM_VERSION=$(svn log -r HEAD -l 1  http://svn.code.sf.net/p/kolmafia/code/ | egrep '^r' | cut -d' ' -f1 | tr -d '[:alpha:]')
curl http://builds.kolmafia.us/KoLmafia-${KM_VERSION}.jar -o KoLmafia-latest.jar
git commit -a -m "updated jar $KM_VERSION
git push
