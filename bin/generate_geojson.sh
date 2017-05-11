#!/bin/bash
export TIGER_HOME=/mnt/ftp2.census.gov/geo/tiger/TIGER2016
export SHP_HOME=/mnt/gis/shp
export GEOJSON_HOME=/mnt/gis/geojson

#convert SHP to geojson

for DATASET in `ls $SHP_HOME`
do 
    echo "Processing dataset: " $DATASET
    if [ -d $GEOJSON_HOME/$DATASET ]
    then
        rm -rf $GEOJSON_HOME/$DATASET
    fi
    mkdir -p $GEOJSON_HOME/$DATASET
    for DATASET_FILE in `ls $SHP_HOME/$DATASET/*.shp`
    do

        GEOFILE=$(basename $DATASET_FILE)
        GEOFILE="${GEOFILE%.*}"
        echo "Processing file: " $DATASET_FILE "into: " $GEOJSON_HOME/$DATASET/$GEOFILE.geojson
        ogr2ogr -f GeoJSON -t_srs "WGS84" "$GEOJSON_HOME/$DATASET/$GEOFILE.geojson" $DATASET_FILE
    #break
    done

done
