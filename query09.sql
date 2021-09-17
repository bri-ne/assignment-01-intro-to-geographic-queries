/*
  List all the passholder types and number of trips for each.

  In other words, in one query, give a list of all `passholder_type` options
  and the number of trips taken by `passholder_type`.
Day Pass: 72362
Indego30: 263249
Indego365: 56358
IndegoFlex: 852
Walk-up: 84 
NULL: 35
*/

-- Enter your SQL query here
With npass as (
  SELECT passholder_type FROM indego_trips_2020_q2
  UNION ALL
  SELECT passholder_type FROM indego_trips_2019_q2
  )
SELECT passholder_type,
   COUNT(*) 
FROM npass
GROUP BY passholder_type
