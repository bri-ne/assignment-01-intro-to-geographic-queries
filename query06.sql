/*
  How many trips were shorter than 10 minutes?
  RESULT: 12687
*/

-- Enter your SQL query here
with durationlist AS (
  SELECT duration
  FROM indego_trips_2020_q2
  UNION ALL
  SELECT duration
  FROM indego_trips_2019_q2
  )
Select count(*)
FROM durationlist
WHERE duration < 10.0
