#!/bin/bash

export KM_VERSION=$(svn log -r HEAD -l 1  http://svn.code.sf.net/p/kolmafia/code/ | \
                    egrep '^r' | cut -d' ' -f1 | tr -d '[:alpha:]') || exit 44
curl https://ci.kolmafia.us/job/Kolmafia/lastSuccessfulBuild/artifact/dist/KoLmafia-${KM_VERSION}.jar \
     -o ~/.kolmafia/KoLmafia-latest.jar
cd ~/.kolmafia/
if [[ git status --porcelain --untracked-files=no ]]; then
  git add KoLmafia-latest.jar
  git commit -m "Update to $KM_VERSION"
fi
