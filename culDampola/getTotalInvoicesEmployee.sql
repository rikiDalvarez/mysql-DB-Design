
SELECT DISTINCT glass_id 
FROM invoice WHERE employee_id = 1 
AND date BETWEEN '2023-01-01' AND '2023-12-31';

SELECT DISTINCT g.glass_name 
FROM glasses g JOIN invoice i 
ON g.glass_id = i.glass_id WHERE i.employee_id = 1
AND i.date BETWEEN '2023-01-01' AND '2023-12-31';

SELECT g.glass_id, g.glass_name
FROM glasses g
WHERE g.glass_id IN (
  SELECT DISTINCT i.glass_id
  FROM invoice i
  WHERE i.employee_id = 1
  AND i.date BETWEEN '2023-01-01' AND '2023-12-31'
);


