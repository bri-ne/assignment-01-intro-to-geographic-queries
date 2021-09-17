/*
  Which station is furthest from Meyerson Hall?

  Your query should return only one line, and only gives the station id, station
  name, and distance from Meyerson Hall.

  RESULT:  Station 3153; Thompson & Palmer, Adaire School; 7283.799 m 
*/

-- Enter your SQL query here
WITH sdist as (
SELECT  id, name, (the_geom <-> ST_SETSRID(ST_MAKEPOINT(-75.1923, 39.9520), 4326)::geometry) * 111139 as distance_to_meyerson
FROM stations
)
SELECT *
FROM sdist
ORDER BY distance_to_meyerson DESC
LIMIT 1