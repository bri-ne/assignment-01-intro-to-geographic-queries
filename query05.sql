/*
  What is the longest duration trip?
  RESULT: 1440 minutes 
*/

-- Enter your SQL query here
with durationlist AS (
  SELECT duration
  FROM indego_trips_2020_q2
  UNION ALL
  SELECT duration
  FROM indego_trips_2019_q2
  )
Select MAX(duration)
FROM durationlist
