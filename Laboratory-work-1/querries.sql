SELECT p.name  as position, d.name, d.surname FROM div_position
JOIN positions AS p USING (id_position)
JOIN divers AS d USING (id_diver) 
ORDER BY (position);  

SELECT p.name  as position, count(d.name) as num FROM div_position
JOIN positions AS p USING (id_position)
JOIN divers AS d USING (id_diver) 
GROUP BY (position);

SELECT p.name  as position, count(d.name) as num FROM div_position
JOIN positions AS p USING (id_position)
JOIN divers AS d USING (id_diver) 
GROUP BY (position) 
HAVING (count(d.name) > 1);
