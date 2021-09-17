/*
  How many stations are within 1km of Meyerson Hall?
  REsULT: 10 stations
*/

-- Enter your SQL query here
WITH sdist as (
SELECT cartodb_id, id, addressstreet, (the_geom <-> ST_SETSRID(ST_MAKEPOINT(-75.1923, 39.9520), 4326)::geometry) * 111139 as distance_to_meyerson
FROM stations
)
SELECT COUNT(*)
FROM sdist
WHERE distance_to_meyerson <= 1000
