#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts q: option
do
  case "${option}"
  in
    q) QUIET=${OPTARG};;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir

for f in pluginrc.xsh
do
    cp $CDIR/$f $build_dir/
done
