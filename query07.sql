/*
  How many trips started on one day and ended in the next?
  RESULT: 4782 
*/

-- Enter your SQL query here
WITH daytbl as (
  SELECT trip_id, start_time, end_time, EXTRACT(DAY FROM start_time) as start_time_day, EXTRACT (DAY FROM end_time) as end_time_day
FROM public.indego_trips_2019_q2
UNION ALL 
SELECT trip_id, start_time, end_time, EXTRACT(DAY FROM start_time::date) as start_time_day, EXTRACT (DAY FROM end_time::date) as end_time_day
 FROM indego_trips_2020_q2
  )
SELECT count (*)
FROM daytbl
WHERE start_time_day != end_time_day