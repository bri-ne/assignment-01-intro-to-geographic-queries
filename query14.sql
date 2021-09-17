/*
  Which station is closest to Meyerson Hall?

  Your query should return only one line, and only gives the station id, station
  name, and distance from Meyerson Hall.
  REUSLT:  Station 3208, 34th & Spruce, 198.63 m
*/

-- Enter your SQL query here
WITH sdist as (
SELECT  id, name, (the_geom <-> ST_SETSRID(ST_MAKEPOINT(-75.1923, 39.9520), 4326)::geometry) * 111139 as distance_to_meyerson
FROM stations
)
SELECT *
FROM sdist
ORDER BY distance_to_meyerson ASC
LIMIT 1
