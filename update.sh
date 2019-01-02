#!/bin/bash

#variables
KM_ROOT=~/.kolmafia
KM_BUILD_URL=https://ci.kolmafia.us/job/Kolmafia/lastSuccessfulBuild/artifact/dist/

export KM_VERSION=$(svn log -r HEAD -l 1 \
                    http://svn.code.sf.net/p/kolmafia/code/ | \
                    egrep '^r' | cut -d' ' -f1 | tr -d '[:alpha:]') || exit 44

#--------------------------------------------------
cd $KM_ROOT/
git pull --all -p

if [[ $(cat $KM_ROOT/km_version) == $KM_VERSION ]]; then
  echo "no update required"
else
  curl $KM_BUILD_URL/KoLmafia-${KM_VERSION}.jar \
       -o $KM_ROOT/KoLmafia-latest.jar
  if [[ $(git status --porcelain --untracked-files=no | wc -l) -gt 0 ]] ; then
    git add KoLmafia-latest.jar
    git commit -m "Update to $KM_VERSION" KoLmafia-latest.jar km_version 
    echo $KM_VERSION | tee $KM_ROOT/km_version
  fi
fi
