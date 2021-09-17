/*
  What is the percent change in trips in Q2 2020 as compared to Q2 2019?

  Using only the table from Q2 2020 and the number calculated in the previous
  question, find the percent change of number of trips in Q2 2020 as compared
  to 2019. Remember you can do calculations in the select clause.
*/

-- Enter your SQL query here

SELECT ((count(*)-206354)*100)/206354::numeric || '%' AS percentchange
  
 FROM indego_trips_2020_q2

/* RESULT: -9.58%. When I first wrote this I had multiplied the difference in counts 
by 100 first before dividing by the 
count from 2020 because if I did it the traditional way carto told me it was 0. 
I don't know why. either way the result i have above works. 

It also would not let me cast the result as a string. 
It threw the error: "Syntax error: operator does not exist: bigint / text"
*/


/*
  Bonus: If you want to get fancier here, you can cast the result to a string
  and concatenate a '%' to the end. For example:

      (10 + 3.2)::text || '%' AS perc_change

  This uses the type casting (number to string) and string concatenation
  operator (`||`, double pipes) that's essentially a `+` for strings.
*/
