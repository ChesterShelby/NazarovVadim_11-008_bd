CREATE database hw4_hotel;
\c hw4_hotel;

CREATE TABLE hotel (
	hotel_id SERIAL PRIMARY KEY,
	hotel_name VARCHAR(255) NOT NULL,
	hotel_address VARCHAR(255) NOT NULL,
	hotel_category VARCHAR(255)
);

CREATE TABLE room (
	room_id SERIAL PRIMARY KEY,
	room_number INT,
	place_count INT,
	room_category VARCHAR(255),
	hotel_id INT CONSTRAINT UNIQUE REFERENCES hotel (hotel_id) ON DELETE CASCADE
);

CREATE TABLE guest (
	guest_id SERIAL PRIMARY KEY,
	guest_name VARCHAR(255),
	guest_documents VARCHAR(255),
	guest_contacts VARCHAR(255)
);

CREATE TABLE living (
	living_id SERIAL,
	living_period DATETIME NOT NULL,
	living_payment INT NOT NULL,
	foreign_guest_id INT REFERENCES guest (guest_id),
	foreign_room_id INT REFERENCES room (room_id)
);

CREATE TABLE position (
	position_id SERIAL PRIMARY KEY,
	position_title VARCHAR(255) NOT NULL
);

CREATE TABLE staffer (
	staffer_id SERIAL PRIMARY KEY,
	staffer_name VARCHAR(255) NOT NULL,
	staffer_salary INT NOT NULL,
	position_id INT REFERENCES position (position_id) ON DELETE SET NULL,
	hotel_id INT CONSTRAINT UNIQUE REFERENCES hotel (hotel_id) ON DELETE CASCADE
);

CREATE TABLE clean (
	clean_id SERIAL PRIMARY KEY,
	clean_time TIMESTAMP NOT NULL,
	staffer_id INT REFERENCES staffer (staffer_id),
	room_id INT REFERENCES room (room_id)
);
