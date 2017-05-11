#!/bin/bash
export TIGER_HOME=/mnt/ftp2.census.gov/geo/tiger/TIGER2016
export SHP_HOME=/mnt/gis/shp
export GEOJSON_HOME=/mnt/gis/geojson
for HQL in `ls $GEOJSON_HOME/*.hql`
do 
   echo ${HQL}
   beeline -u "jdbc:hive2://npopa-mst-2.vpc.cloudera.com:10000/gis;principal=hive/_HOST@AD.SEC.CLOUDERA.COM;ssl=true;sslTrustStore=/opt/cloudera/security/jks/truststore.jks;trustStorePassword=cloudera" -f ${HQL}
done

