use gis;

create FUNCTION ST_AsBinary as 'com.esri.hadoop.hive.ST_AsBinary' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_AsGeoJSON as 'com.esri.hadoop.hive.ST_AsGeoJson' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_AsJSON as 'com.esri.hadoop.hive.ST_AsJson' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_AsText as 'com.esri.hadoop.hive.ST_AsText' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeomFromJSON as 'com.esri.hadoop.hive.ST_GeomFromJson' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeomFromGeoJSON as 'com.esri.hadoop.hive.ST_GeomFromGeoJson' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeomFromText as 'com.esri.hadoop.hive.ST_GeomFromText' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeomFromWKB as 'com.esri.hadoop.hive.ST_GeomFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_PointFromWKB as 'com.esri.hadoop.hive.ST_PointFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_LineFromWKB as 'com.esri.hadoop.hive.ST_LineFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_PolyFromWKB as 'com.esri.hadoop.hive.ST_PolyFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MPointFromWKB as 'com.esri.hadoop.hive.ST_MPointFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MLineFromWKB as 'com.esri.hadoop.hive.ST_MLineFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MPolyFromWKB as 'com.esri.hadoop.hive.ST_MPolyFromWKB' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeomCollection as 'com.esri.hadoop.hive.ST_GeomCollection' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_GeometryType as 'com.esri.hadoop.hive.ST_GeometryType' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_Point as 'com.esri.hadoop.hive.ST_Point' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_PointZ as 'com.esri.hadoop.hive.ST_PointZ' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_LineString as 'com.esri.hadoop.hive.ST_LineString' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Polygon as 'com.esri.hadoop.hive.ST_Polygon' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_MultiPoint as 'com.esri.hadoop.hive.ST_MultiPoint' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MultiLineString as 'com.esri.hadoop.hive.ST_MultiLineString' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MultiPolygon as 'com.esri.hadoop.hive.ST_MultiPolygon' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_SetSRID as 'com.esri.hadoop.hive.ST_SetSRID' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_SRID as 'com.esri.hadoop.hive.ST_SRID' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_IsEmpty as 'com.esri.hadoop.hive.ST_IsEmpty' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_IsSimple as 'com.esri.hadoop.hive.ST_IsSimple' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Dimension as 'com.esri.hadoop.hive.ST_Dimension' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_X as 'com.esri.hadoop.hive.ST_X' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Y as 'com.esri.hadoop.hive.ST_Y' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MinX as 'com.esri.hadoop.hive.ST_MinX' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MaxX as 'com.esri.hadoop.hive.ST_MaxX' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MinY as 'com.esri.hadoop.hive.ST_MinY' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MaxY as 'com.esri.hadoop.hive.ST_MaxY' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_IsClosed as 'com.esri.hadoop.hive.ST_IsClosed' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_IsRing as 'com.esri.hadoop.hive.ST_IsRing' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Length as 'com.esri.hadoop.hive.ST_Length' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeodesicLengthWGS84 as 'com.esri.hadoop.hive.ST_GeodesicLengthWGS84' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Area as 'com.esri.hadoop.hive.ST_Area' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Is3D as 'com.esri.hadoop.hive.ST_Is3D' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Z as 'com.esri.hadoop.hive.ST_Z' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MinZ as 'com.esri.hadoop.hive.ST_MinZ' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MaxZ as 'com.esri.hadoop.hive.ST_MaxZ' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_IsMeasured as 'com.esri.hadoop.hive.ST_IsMeasured' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_M as 'com.esri.hadoop.hive.ST_M' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MinM as 'com.esri.hadoop.hive.ST_MinM' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_MaxM as 'com.esri.hadoop.hive.ST_MaxM' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_CoordDim as 'com.esri.hadoop.hive.ST_CoordDim' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_NumPoints as 'com.esri.hadoop.hive.ST_NumPoints' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_PointN as 'com.esri.hadoop.hive.ST_PointN' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_StartPoint as 'com.esri.hadoop.hive.ST_StartPoint' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_EndPoint as 'com.esri.hadoop.hive.ST_EndPoint' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_ExteriorRing as 'com.esri.hadoop.hive.ST_ExteriorRing' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_NumInteriorRing as 'com.esri.hadoop.hive.ST_NumInteriorRing' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_InteriorRingN as 'com.esri.hadoop.hive.ST_InteriorRingN' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_NumGeometries as 'com.esri.hadoop.hive.ST_NumGeometries' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_GeometryN as 'com.esri.hadoop.hive.ST_GeometryN' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Centroid as 'com.esri.hadoop.hive.ST_Centroid' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_Contains as 'com.esri.hadoop.hive.ST_Contains' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Crosses as 'com.esri.hadoop.hive.ST_Crosses' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Disjoint as 'com.esri.hadoop.hive.ST_Disjoint' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_EnvIntersects as 'com.esri.hadoop.hive.ST_EnvIntersects' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Envelope as 'com.esri.hadoop.hive.ST_Envelope' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Equals as 'com.esri.hadoop.hive.ST_Equals' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Overlaps as 'com.esri.hadoop.hive.ST_Overlaps' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Intersects as 'com.esri.hadoop.hive.ST_Intersects' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Relate as 'com.esri.hadoop.hive.ST_Relate' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Touches as 'com.esri.hadoop.hive.ST_Touches' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Within as 'com.esri.hadoop.hive.ST_Within' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_Distance as 'com.esri.hadoop.hive.ST_Distance' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Boundary as 'com.esri.hadoop.hive.ST_Boundary' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Buffer as 'com.esri.hadoop.hive.ST_Buffer' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_ConvexHull as 'com.esri.hadoop.hive.ST_ConvexHull' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Intersection as 'com.esri.hadoop.hive.ST_Intersection' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Union as 'com.esri.hadoop.hive.ST_Union' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Difference as 'com.esri.hadoop.hive.ST_Difference' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_SymmetricDiff as 'com.esri.hadoop.hive.ST_SymmetricDiff' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_SymDifference as 'com.esri.hadoop.hive.ST_SymmetricDiff' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_Aggr_ConvexHull as 'com.esri.hadoop.hive.ST_Aggr_ConvexHull' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Aggr_Intersection as 'com.esri.hadoop.hive.ST_Aggr_Intersection' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_Aggr_Union as 'com.esri.hadoop.hive.ST_Aggr_Union' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';

create FUNCTION ST_Bin as 'com.esri.hadoop.hive.ST_Bin' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_BinEnvelope as 'com.esri.hadoop.hive.ST_BinEnvelope' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
create FUNCTION ST_BinGeometry as 'com.esri.hadoop.hive.ST_BinGeometry' USING JAR 'hdfs:///user/hive/aux_jars/spatial-sdk-hive-1.2.0.jar';
