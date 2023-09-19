USE culdampolla;

SELECT DISTINCT p.name
FROM provider p
JOIN glasses g ON p.provider_id = g.provider_id
JOIN invoice i ON g.glass_id = i.glass_id;
