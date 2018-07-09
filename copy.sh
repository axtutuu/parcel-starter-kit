#!/bin/bash

while getopts d: OPT
do
  case $OPT in
    "d" ) DIR="$OPTARG" ;;
    *   ) echo "Usage: $0 [-d DIRNAME]" 1>&2
          exit 1 ;;
  esac
done

if [ $DIR="" ]; then
  echo "Usage: $0 [-d DIRNAME]" 1>&2
  exit 1
fi
cp -r src package.json yarn.lock .gitignore  $DIR
