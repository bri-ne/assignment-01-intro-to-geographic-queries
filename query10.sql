/*
  Using the station status dataset, find the distance in meters of all stations
  from Meyerson Hall.
*/

-- Enter your SQL query here
SELECT cartodb_id, id, addressstreet, (the_geom <-> ST_SETSRID(ST_MAKEPOINT(-75.1923, 39.9520), 4326)::geometry) * 111139 as distance_to_meyerson
FROM stations
