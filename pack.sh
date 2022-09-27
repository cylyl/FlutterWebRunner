#!/bin/bash

if [ $# -eq 0 ]
  then
    echo " bash pack.sh <flutter web project path> "
fi

flutter_prj=$1
echo $flutter_prj

cur_dir=`pwd`

cd $flutter_prj
flutter build web --release

cd $cur_dir

cp -r $flutter_prj/build/web/*  src/main/resources/static/

mvn package
