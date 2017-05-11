#!/bin/bash
#try to get the table structure
export TIGER_HOME=/mnt/ftp2.census.gov/geo/tiger/TIGER2016
export SHP_HOME=/mnt/gis/shp
export GEOJSON_HOME=/mnt/gis/geojson
export DB_RAW=gis_raw
export DB=gis

for DATASET in `ls $SHP_HOME`
do 
    echo "Processing dataset: " $DATASET
    for DATASET_FILE in `ls $SHP_HOME/$DATASET/*.shp`
    do
        echo "Processing file: " $DATASET_FILE
        GEOFILE=$(basename $DATASET_FILE)
        GEOFILE="${GEOFILE%.*}"
        HQL=$GEOJSON_HOME/$DATASET.hql
        cat<<EOF>$HQL
        --generated from $GEOFILE.shp

        --set some properties 
        SET mapreduce.reduce.memory.mb=8092;
        SET mapreduce.reduce.java.opts='-Xmx8092';
        SET mapreduce.map.memory.mb=8092;
        SET mapreduce.map.java.opts='-Xmx8092M';
        -- set mapreduce.input.fileinputformat.split.minsize=2048000;
        set hive.input.format=org.apache.hadoop.hive.ql.io.HiveInputFormat;

        DROP TABLE IF EXISTS ${DB_RAW}.${DATASET}_RAW;

        CREATE EXTERNAL TABLE ${DB_RAW}.${DATASET}_RAW(
EOF
        ogrinfo -al -so "$DATASET_FILE"|tail -n +14>$HQL.struct
        cat $HQL.struct|sed "s/\:.*$/ string,/g"|sed "s/^/        /g">>$HQL
        cat<<EOF>>$HQL
        geometry binary)
        ROW FORMAT SERDE 'com.esri.hadoop.hive.serde.GeoJsonSerDe'
        STORED AS INPUTFORMAT 'com.esri.json.hadoop.EnclosedGeoJsonInputFormat'
        OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
        LOCATION '/user/geojson/${DATASET}'; 

        --no need to load the data since we created an external table but the below can be used if required
        --LOAD DATA INPATH '/user/geojson/${DATASET}' OVERWRITE INTO TABLE ${DATASET}_RAW;

       --create a parquet table to remove the dependency from geojson serde and improve performance

        DROP TABLE IF EXISTS ${DB}.${DATASET};

        CREATE TABLE ${DB}.${DATASET} STORED AS PARQUET AS
        SELECT 
EOF
        cat $HQL.struct|sed "s/\:.*$/,/g"|sed "s/^/        /g">>$HQL
        cat<<EOF>>$HQL
        ST_BinGeometry(0.01,(geometry)) grid_arr,
        geometry geometry
        from ${DB_RAW}.${DATASET}_RAW;
EOF
        cat<<EOF>>$HQL 

        --create a parquet table and keep the geometry as geojson so non-geometrical columns can be queried from impala

        DROP TABLE IF EXISTS ${DB}.${DATASET}_IMPALA;

        CREATE TABLE ${DB}.${DATASET}_IMPALA STORED AS PARQUET AS
        SELECT 
EOF
        cat $HQL.struct|sed "s/\:.*$/,/g"|sed "s/^/        /g">>$HQL
        cat<<EOF>>$HQL
        grid_arr,
        ST_AsGeoJSON(geometry) geometry_geojson
        from ${DATASET};
EOF
        #process just one file from each folder (assume the struct is same for all)
        rm -rf /tmp/$GEOFILE
        rm -rf ${HQL}.struct
        break

    done
done
