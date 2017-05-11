export TIGER_HOME=/mnt/ftp2.census.gov/geo/tiger/TIGER2016
export SHP_HOME=/mnt/gis/shp
export GEOJSON_HOME=/mnt/gis/geojson

#Merge SHP files if multiple ones are found
for DATASET in `ls $TIGER_HOME`
do 
    echo "Processing dataset: " $DATASET
    if [ -d $SHP_HOME/$DATASET ]
    then
        rm -rf $SHP_HOME/$DATASET
    fi
    mkdir -p $SHP_HOME/$DATASET

    for DATASET_FILE in `ls $TIGER_HOME/$DATASET`
    do
        echo "Processing file: " $DATASET_FILE
        GEOFILE="${DATASET_FILE%.*}"
        rm -rf /tmp/$GEOFILE
        export FILE_TYPE=`echo $DATASET_FILE|cut -f3 -d "_"`
        export FILE_TYPE_SUFFIX=${FILE_TYPE:0:2}
        unzip $TIGER_HOME/$DATASET/$DATASET_FILE -d /tmp/$GEOFILE > /dev/null 2>&1
        if [[ -f  $SHP_HOME/$DATASET/${DATASET}_${FILE_TYPE_SUFFIX}.shp ]]
        then 
                ogr2ogr -f 'ESRI Shapefile' -update -append $SHP_HOME/$DATASET/${DATASET}_${FILE_TYPE_SUFFIX}.shp /tmp/$GEOFILE/$GEOFILE.shp -nln ${DATASET}_${FILE_TYPE_SUFFIX}
        else
                ogr2ogr -f 'ESRI Shapefile' $SHP_HOME/$DATASET/${DATASET}_${FILE_TYPE_SUFFIX}.shp /tmp/$GEOFILE/$GEOFILE.shp
        fi
        rm -rf /tmp/$GEOFILE
    done
done 
