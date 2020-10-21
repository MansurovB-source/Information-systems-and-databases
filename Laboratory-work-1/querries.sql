SELECT m.name monster, id_team team, s.name ship_name, p.name place, a.a_time time_of_attack FROM monst_attack_on_team AS mat 
JOIN monsters AS m USING (id_monster) 
JOIN attacks AS a USING (id_attack) 
JOIN places as p ON (a.id_place = p.id_place) 
JOIN teams AS t USING (id_team) 
JOIN ships AS s ON (t.id_ship = s.model) 
WHERE (model = 'mk256');

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
