/*
  Give the five most popular starting stations between 7am and 10am in 2019.

1. 3057 (with 1791 trips)
2. 3010 (with 1054 trips)
3. 3054 (with 1053 trips)
4. 3190 (with 887 trips)
5. 3108 (with 836 trips)
*/

-- Enter your SQL query here
WITH hourtbl as (
SELECT  start_station, EXTRACT(HOUR FROM start_time) as start_time
FROM public.indego_trips_2019_q2
)
SELECT start_station,
  COUNT (start_station) AS voccurrence
FROM hourtbl
WHERE start_time BETWEEN 12 AND 15
GROUP BY start_station

ORDER BY voccurrence DESC
LIMIT 5