#!/bin/bash
#load the data in hadoop
export TIGER_HOME=/mnt/ftp2.census.gov/geo/tiger/TIGER2016
export SHP_HOME=/mnt/gis/shp
export GEOJSON_HOME=/mnt/gis/geojson

hadoop fs -rm -r -skipTrash /user/geojson
time hdfs dfs -put $GEOJSON_HOME /user
hadoop fs -chmod -R 770 /user/geojson
hadoop fs -chown -R hive:hive /user/geojson/

