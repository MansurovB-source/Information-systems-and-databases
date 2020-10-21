insert into divers(name, surname, patronymic, contacts, salary) values('Oleg', 'Olegov', 'Olegovich', '89006594523', 250000);
insert into divers(name, surname, patronymic, contacts, salary) values('Ivan', 'Ivanov', 'Ivanovich', '89235699987', 100000);
insert into divers(name, surname, patronymic, contacts, salary) values('Anton', 'Antonov', 'Antonovich', '89005569987', 150000);
insert into divers(name, surname, patronymic, contacts, salary) values('Oleg2', 'Olegov', 'Olegovich', '89006594523', 250000);
insert into divers(name, surname, patronymic, contacts, salary) values('Ivan2', 'Ivanov', 'Ivanovich', '89235699987', 100000);
insert into divers(name, surname, patronymic, contacts, salary) values('Anton2', 'Antonov', 'Antonovich', '89005569987', 150000);
insert into divers(name, surname, patronymic, contacts, salary) values('Oleg3', 'Olegov', 'Olegovich', '89006594523', 250000);
insert into divers(name, surname, patronymic, contacts, salary) values('Ivan3', 'Ivanov', 'Ivanovich', '89235699987', 100000);
insert into divers(name, surname, patronymic, contacts, salary) values('Anton3', 'Antonov', 'Antonovich', '89005569987', 150000);

insert into positions(name) values('admiral');
insert into positions(name) values('kontra - admiral');
insert into positions(name) values('kapitan');
insert into positions(name) values('kapitan - 2');
insert into positions(name) values('kapitan - leytenant');
insert into positions(name) values('st - leytenant');
insert into positions(name) values('leytenant');
insert into positions(name) values('ml - leytenant');

insert into div_position(id_position, id_diver) values(1, 1);
insert into div_position(id_position, id_diver) values(2, 2);
insert into div_position(id_position, id_diver) values(3, 3);
insert into div_position(id_position, id_diver) values(4, 4);
insert into div_position(id_position, id_diver) values(2, 4);
insert into div_position(id_position, id_diver) values(5, 5);
insert into div_position(id_position, id_diver) values(6, 6);
insert into div_position(id_position, id_diver) values(2, 7);
insert into div_position(id_position, id_diver) values(7, 8);
insert into div_position(id_position, id_diver) values(8, 9);


insert into ships(model, name, fuel, depth) values('mk256', 'galka', '500', 8000);
insert into ships(model, name, fuel, depth) values('mkr255', 'lastochka', '750', 10000);
insert into ships(model, name, fuel, depth) values('str569', 'volk', '1000', 11000);
insert into ships(model, name, fuel, depth) values('int555', 'akula', '1200', 12000);

insert into teams(id_ship, crew) values('mk256', 3);
insert into teams(id_ship, crew) values('mkr255', 3);
insert into teams(id_ship, crew) values('str569', 3);

insert into team_mem(id_team, id_diver) values(1, 1);
insert into team_mem(id_team, id_diver) values(1, 2);
insert into team_mem(id_team, id_diver) values(1, 3);
insert into team_mem(id_team, id_diver) values(2, 4);
insert into team_mem(id_team, id_diver) values(2, 5);
insert into team_mem(id_team, id_diver) values(2, 6);
insert into team_mem(id_team, id_diver) values(3, 7);
insert into team_mem(id_team, id_diver) values(3, 8);
insert into team_mem(id_team, id_diver) values(3, 9);

insert into locations(name) values('Pacific Ocean');
insert into locations(name) values('Atlantic Ocean');
insert into locations(name) values('Indian Ocean');
insert into locations(name) values('Asia');
insert into locations(name) values('North America');
insert into locations(name) values('South AMerica');

insert into places(name, altitude, id_location) values('Crystal spring', -7500, 2);
insert into places(name, altitude, id_location) values('Ismoili Somoni', -7495, 4);
insert into places(name, altitude, id_location) values('Marian', -11023, 1);

insert into coordinates(X, Y, Z, id_place) values(255, 789, 333, 1);
insert into coordinates(X, Y, Z, id_place) values(999, 444, 222, 2);
insert into coordinates(X, Y, Z, id_place) values(999, 333, 111, 3); 

insert into divings(id_place, depth, d_time) values(1, 7230, '2000-08-15 04:05:06');
insert into divings(id_place, depth, d_time) values(1, 7500, '2000-09-15 04:05:06');
insert into divings(id_place, depth, d_time) values(2, 7000, '2000-10-1 04:05:06');
insert into divings(id_place, depth, d_time) values(3, 10000, '2000-10-15 04:05:06');

insert into divs_team(id_diving, id_team) values(1, 1);
insert into divs_team(id_diving, id_team) values(1, 2);
insert into divs_team(id_diving, id_team) values(2, 1);
insert into divs_team(id_diving, id_team) values(2, 2);
insert into divs_team(id_diving, id_team) values(3, 3);

insert into monsters(name, size, id_place) values('Kraken', 125000, 1);
insert into monsters(name, size, id_place) values('Megaladon', 10000, 1);
insert into monsters(name, size, id_place) values('Poseydon', 12500, 2);
insert into monsters(name, size, id_place) values('Dunkleosteus', 12500, 3);

insert into eyes(color, size, id_monster) values('red', 5, 1);
insert into eyes(color, size, id_monster) values('blue', 7, 1);
insert into eyes(color, size, id_monster) values('red', 5, 2);
insert into eyes(color, size, id_monster) values('green', 5, 2);
insert into eyes(color, size, id_monster) values('yellow', 2, 3);
insert into eyes(color, size, id_monster) values('brown', 2, 3);
insert into eyes(color, size, id_monster) values('black', 1, 4); // 9
insert into eyes(color, size, id_monster) values('brown', 1, 4); // 10

insert into attacks(id_place, a_time) values(1, '2000-08-15 15:05:06');
insert into attacks(id_place, a_time) values(1, '2000-09-15 10:05:06');
insert into attacks(id_place, a_time) values(3, '2000-10-15 17:05:06');

insert into monst_attack_on_team(id_attack, id_team, id_monster) values(1, 1, 1);
insert into monst_attack_on_team(id_attack, id_team, id_monster) values(2, 2, 2);
insert into monst_attack_on_team(id_attack, id_team, id_monster) values(3, 3, 3);
