-- Script à compléter
-- Plusieurs tables sont à ajouter, vous pouvez vous servir du modèle logique de données pour les retrouver

-- Attention : 
-- Pour les noms de table ou de colonne vous ne pourrez pas utiliser les mots-clefs utilisé par le langage SQL
-- Voici un liste des mots clefs interdits : https://www.postgresql.org/docs/current/sql-keywords-appendix.html
-- si toutefois vous souhaitez utiliser un mot clef considéré interdit vous pouvez utiliser des guillemets.

-- Ne pas oublier les contraintes d'intégrités suivantes :
-- * contraintes de clefs étrangères 
-- * contraintes de clefs primaires
-- * contraintes de domaine  (ou type)


CREATE TABLE station (
	id SERIAL PRIMARY KEY,
	"name" VARCHAR(50) NOT NULL,
	altitude INT
);

INSERT INTO station (id, "name", altitude) VALUES (1, 'La Montagne', 2500);
INSERT INTO station (id, "name", altitude) VALUES (2, 'Le Sud', 200);
INSERT INTO station (id, "name", altitude) VALUES (3, 'La Plage', 10);

CREATE TABLE hotel (
	id 			SERIAL primary KEY,
	station_id 		INT NOT NULL,
	"name" 		VARCHAR(50) NOT NULL,
	category 	INT NOT NULL,
	address		VARCHAR(50) NOT NULL,
	city 		VARCHAR(50) NOT NULL, 
	FOREIGN KEY (station_id) REFERENCES station(id)
);
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (1, 1, 'Le Magnifique', 3, 'rue du bas', 'Pralo');
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (2, 1, 'Hotel du haut', 1, 'rue du haut', 'Pralo');
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (3, 2, 'Le Narval', 3, 'place de la liberation', 'Vonten');
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (4, 2, 'Les Pissenlis', 4, 'place du 14 juillet', 'Bretou');
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (5, 2, 'RR Hotel', 5, 'place du bas', 'Bretou');
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (6, 2, 'La Brique', 2, 'place du haut', 'Bretou');
INSERT INTO hotel (id, station_id, name, category, address, city) VALUES (7, 3, 'Le Beau Rivage', 3, 'place du centre', 'Toras');


-- Tables à insérer ici
CREATE TABLE room (
	id SERIAL PRIMARY KEY,
	hotel_id INT NOT NULL,
	"number" VARCHAR(50) NOT NULL,
	capacity INT NOT NULL,
	"type" INT NOT NULL,
	FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 1, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 1, 3, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 1, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 1, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 1, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 1, 3, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 1, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 1, 7, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 1, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 2, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 2, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 2, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 2, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 2, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 2, 3, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 2, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 2, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 2, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 3, 3, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 3, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 3, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 3, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 3, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 3, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 3, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 3, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 3, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 4, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 4, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 4, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 4, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 4, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 4, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 4, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 4, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 4, 3, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 5, 3, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 5, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 5, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 5, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 5, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 5, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 5, 2, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 5, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 5, 4, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 6, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('001', 7, 1, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('002', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('003', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('101', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('102', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('103', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('201', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('202', 7, 5, 1);
INSERT INTO room ("number", hotel_id, capacity, "type") VALUES ('203', 7, 5, 1);

CREATE TABLE client (
	id SERIAL primary key,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	address VARCHAR (80) NOT NULL,
	city VARCHAR (50) NOT NULL
);

INSERT INTO client (last_name, first_name, address, city) VALUES ('Doe', 'John', '', 'LA');
INSERT INTO client (last_name, first_name, address, city) VALUES ('Homme', 'Josh', '', 'Palm Desert');
INSERT INTO client (last_name, first_name, address, city) VALUES ('Paul', 'Weller', '', 'Londres');
INSERT INTO client (last_name, first_name, address, city) VALUES ('White', 'Jack', '', 'Detroit');
INSERT INTO client (last_name, first_name, address, city) VALUES ('Claypool', 'Les', '', 'San Francisco');
INSERT INTO client (last_name, first_name, address, city) VALUES ('Squire', 'Chris', '', 'Londres');
INSERT INTO client (last_name, first_name, address, city) VALUES ('Wood', 'Ronnie', '', 'Londres');

CREATE TABLE booking (
	id SERIAL PRIMARY KEY,
	room_id INT NOT NULL,
	client_id INT NOT NULL,
	booking_date date,
	stay_start_date date,
	stay_end_date date,
	price decimal (10,2) NOT NULL,
	deposit decimal (10,2) NOT NULL,
	FOREIGN KEY (room_id) REFERENCES room(id),
	FOREIGN KEY (client_id) REFERENCES client(id)
);

INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (1, 1, '2022-01-10', '2022-07-01', '2022-07-15', 2400, 800);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (2, 2, '2022-01-10', '2022-07-01', '2022-07-15', 3400, 100);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (1, 3, '2022-01-10', '2022-07-01', '2022-07-15', 400, 50);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (2, 4, '2022-01-10', '2022-07-01', '2022-07-15', 7200, 1800);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (3, 5, '2022-01-10', '2022-07-01', '2022-07-15', 1400, 450);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (4, 6, '2022-01-10', '2022-07-01', '2022-07-15', 2400, 780);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (4, 6, '2022-01-10', '2022-07-01', '2022-07-15', 500, 80);
INSERT INTO booking (room_id, client_id, booking_date, stay_start_date, stay_end_date, price, deposit) VALUES (4, 1, '2022-01-10', '2022-07-01', '2022-07-15', 40, 0);

CREATE OR REPLACE VIEW hotel_station
AS
SELECT h.id AS hotel_id,
h.station_id,
h.name as "Hotel name",
h.category,
h.address,
h.city,
s.name AS "Station name",
s.altitude
FROM hotel h
JOIN station s ON h.station_id = s.id;

-- création vue 1
create OR REPLACE VIEW reservation_client
AS
SELECT 
c.first_name,
c.last_name,
b.booking_date
FROM hotel h
JOIN room r ON r.hotel_id = h.id
JOIN booking b ON b.room_id = r.id
JOIN client c ON c.id = b.client_id;

-- création vue 2
CREATE OR REPLACE VIEW reservation_client
AS
SELECT h.id AS hotel_id,
h.station_id,
h.name as "Hotel name",
h.category,
h.address as hotel_adresse,
h.city,
b.id,
b.room_id,
b.client_id,
b.booking_date,
b.stay_start_date,
b.stay_end_date,
b.price,
b.deposit,
c.first_name,
c.last_name,
c.address as client_adresse,
c.city as city_adresse
FROM hotel h
JOIN room r ON r.hotel_id = h.id
JOIN booking b ON b.room_id = r.id
JOIN client c ON c.id = b.client_id;

-- ou
CREATE OR REPLACE VIEW reservation_client
AS
SELECT 
c.first_name,
c.last_name,
h.name as "Hotel name",
b.booking_date
FROM hotel h
JOIN room r ON r.hotel_id = h.id
JOIN booking b ON b.room_id = r.id
JOIN client c ON c.id = b.client_id;

-- création vue 3
CREATE OR REPLACE VIEW hotel_room_station
AS
SELECT h.id AS hotel_id,
h.station_id,
h.name as "Hotel name",
h.category,
h.address as hotel_adresse,
h.city,
r.id as room_id,
r.hotel_id as hotel_room,
r.number,
r.capacity,
r.type,
s.id,
s.name,
s.altitude
FROM hotel h
JOIN room r ON r.hotel_id = h.id
JOIN station s ON s.id = h.station_id;
-- ou

CREATE OR REPLACE VIEW hotel_room_station
AS
SELECT 
r.id as room_id,
h.name as "Hotel name",
s.name
FROM hotel h
JOIN room r ON r.hotel_id = h.id
JOIN station s ON s.id = h.station_id;
drop view hotel_room_station;



