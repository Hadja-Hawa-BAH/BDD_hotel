-- 1 - Afficher la liste des hôtels : Le résultat doit faire apparaître le nom de l’hôtel et la ville
select "name", city from hotel;

-- 2 - Afficher la ville de résidence de Mr White : Le résultat doit faire apparaître le nom, le prénom, 
-- et l'adresse du client
select first_name, last_name, address, city from client 
where last_name like 'White';

-- 3 - Afficher la liste des stations dont l’altitude < 1000 : Le résultat doit faire apparaître le nom de 
-- la station et l'altitude
select "name", altitude  from station  
where altitude < 1000;

-- 4 - Afficher la liste des chambres ayant une capacité > 1 : Le résultat doit faire apparaître le 
-- numéro de la chambre ainsi que la capacité
select number, capacity from room r 
where capacity  > 1;

-- 5 - Afficher les clients n’habitant pas à Londres : Le résultat doit faire apparaître le nom du client 
-- et la ville
select last_name, city from client c 
where city != 'Londres';

-- 6 - Afficher la liste des hôtels située sur la ville de Bretou et possédant une catégorie > 3 : Le 
-- résultat doit faire apparaître le nom de l'hôtel, ville et la catégorie
select name, category, city from hotel 
where city like 'Bretou' and category >3;

-- 7 - Afficher la liste des hôtels avec leur station : Le résultat doit faire apparaître le nom de la 
-- station, le nom de l’hôtel, la catégorie, la ville)
select s.name, h.name, h.category, h.city from hotel h
join station s on s.id = h.station_id; 

-- 8 - Afficher la liste des chambres et leur hôtel : Le résultat doit faire apparaître le nom de l’hôtel, la 
-- catégorie, la ville, le numéro de la chambre)
select h.name, h.category, h.city,  r.number from hotel h 
join room r on h.id = r.hotel_id;

-- 9 - Afficher la liste des chambres de plus d'une place dans des hôtels situés sur la ville de 
-- Bretou : Le résultat doit faire apparaître le nom de l’hôtel, la catégorie, la ville, le numéro de la 
-- chambre et sa capacité)
select h.name, h.category, h.city, r.number, r.capacity from hotel h 
join room r on h.id = r.hotel_id
where capacity > 1 and city = 'Bretou';

-- 10 - Afficher la liste des réservations avec le nom des clients : Le résultat doit faire apparaître le 
-- nom du client, le nom de l’hôtel, la date de réservation
select c.last_name, h.name, b.booking_date from hotel h
join room r on r.hotel_id = h.id 
join booking b on b.room_id = r.id 
join client c on c.id = b.client_id;

-- 11 - Afficher la liste des chambres avec le nom de l’hôtel et le nom de la station : Le résultat doit 
-- faire apparaître le nom de la station, le nom de l’hôtel, le numéro de la chambre et sa capacité)
select s.name, h.name, r."number", r.capacity from hotel h
join room r on r.hotel_id = h.id 
join station s on s.id = h.station_id;

-- 12 - Afficher les réservations avec le nom du client et le nom de l’hôtel : Le résultat doit faire 
-- apparaître le nom du client, le nom de l’hôtel, la date de début du séjour et la durée du séjour
select c.last_name, h.name, b.stay_start_date, (b.stay_end_date - b.stay_start_date) as duree from hotel h
join room r on r.hotel_id = h.id 
join booking b on b.room_id = r.id 
join client c on c.id = b.client_id;

-- 13 - Compter le nombre d’hôtel par station
select count(*) from hotel h;

-- 14 - Compter le nombre de chambre par station
select count(r.number) from hotel h 
join room r on r.hotel_id = h.id 
join station s on s.id = h.station_id ;

-- 15 - Compter le nombre de chambre par station ayant une capacité > 1
select count(r.number) from hotel h 
join room r on r.hotel_id = h.id 
join station s on s.id = h.station_id
where r.capacity > 1;

-- 16 - Afficher la liste des hôtels pour lesquels Mr Squire a effectué une réservation
select c.last_name, r.hotel_id, h.name, b.booking_date from hotel h 
join room r on r.hotel_id = h.id 
join booking b on b.room_id =r.id 
join client c on c.id = b.client_id
where last_name = 'Squire';

-- 17 - Afficher la durée moyenne des réservations par station
select avg(b.stay_end_date - b.stay_start_date) as duree_moyenne, s."name" from hotel h 
join station s on s.id = h.station_id 
join room r on r.hotel_id = h.id 
join booking b on b.room_id =r.id 
join client c on c.id = b.client_id
group by s."name" ;