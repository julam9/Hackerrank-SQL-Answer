WITH t1 AS (SELECT 
               CASE occupation 
               WHEN "Doctor" THEN Name 
               ELSE NULL 
               END AS "Doctor", 
               CASE occupation
               WHEN "Professor" THEN Name 
               ELSE NULL 
               END AS "Professor",
               CASE occupation 
               WHEN "Singer" THEN Name 
               ELSE NULL 
               END AS "Singer",
               CASE occupation 
               WHEN "Actor" THEN Name 
               ELSE NULL 
               END AS "Actor", 
               ROW_NUMBER() OVER(
                   PARTITION BY Occupation 
                   ORDER BY Name ASC) AS arranger
               FROM OCCUPATIONS )

SELECT MAX(Doctor), MAX(Professor), MAX(Singer), MAX(Actor) 
FROM t1 
GROUP BY arranger 