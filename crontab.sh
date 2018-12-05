#!/bin/bash
# 7	6	*	*	*
#curl http://builds.kolmafia.us/KoLmafia-${KM_VERSION}.jar -o KoLmafia-latest.jar
#curl http://builds.kolmafia.us/job/Kolmafia/lastSuccessfulBuild/artifact/dist/KoLmafia-${KM_VERSION}.jar -o KoLmafia-latest.jar
cd ~/.kolmafia ;
git pull master -p
export KM_VERSION=$(svn log -r HEAD -l 1  http://svn.code.sf.net/p/kolmafia/code/ | egrep '^r' | cut -d' ' -f1 | tr -d '[:alpha:]')
curl https://ci.kolmafia.us/job/Kolmafia/lastSuccessfulBuild/artifact/dist/KoLmafia-${KM_VERSION}.jar  -o ~/.kolmafia/KoLmafia-latest.jar && \
git commit -a -m "updated jar ${KM_VERSION}" && \
git push
