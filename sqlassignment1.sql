#Brian Weinfeld
#Assignment 1

#1. Answer: 4983 miles -- JFK to HNL
SELECT distance, origin, dest

FROM flights

ORDER BY distance 
DESC
LIMIT 1;

#2. Answer: 4 types of engines, 1: OTTER DHC-3, 2: Numerous 777, 3: A330-223, 4: 747
SELECT 
DISTINCT engines

FROM planes

ORDER BY engines;

SELECT 
DISTINCT model, engines, seats
FROM planes
WHERE engines = 1 #Substitute 2, 3 or 4 in future queries
ORDER BY engines, seats DESC;

#3. Answer: 336776
SELECT COUNT(*)

FROM flights


#4. Answer: Many
SELECT carrier, COUNT(*)

FROM flights

GROUP BY carrier;

#5. Answer: Many
SELECT carrier,

COUNT(*) AS 'Total'

FROM flights

GROUP BY carrier

ORDER BY Total DESC; 

#6. Answer: Many
SELECT carrier,

COUNT(*) AS 'Total'

FROM flights

GROUP BY carrier

ORDER BY Total DESC

LIMIT 5;

#7. Answer: Many
SELECT carrier,

COUNT(*) AS 'Total'

FROM flights

WHERE distance > 1000

GROUP BY carrier

ORDER BY Total DESC

LIMIT 5;

#8. Find the average daily temperature at EWR for each day of the year sorted by date.
SELECT 

CAST(CONCAT(year,'-',month,'-',day) AS DATE) AS 'Date',

ROUND(AVG(temp), 2) AS 'Average Daily Temperature'

FROM weather

WHERE origin = 'EWR'

GROUP BY Date

HAVING Date IS NOT NULL

ORDER BY Date;
