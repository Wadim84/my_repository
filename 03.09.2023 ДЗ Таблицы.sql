CREATE TABLE groups(
id INTEGER PRIMARY KEY,
NameG VARCHAR(50) NOT NULL,
Raiting VARCHAR(10) NOT NULL,
Ñourse VARCHAR(5) NOT NULL);

INSERT INTO groups (NameG, Raiting, Ñourse) VALUES ("Group1", 30, 1), ("Group2", 60, 2), ("Group3", 50, 3);

SELECT * FROM groups WHERE Raiting <= 50;


CREATE TABLE Guns(
id INTEGER PRIMARY KEY,
NameG VARCHAR(50) NOT NULL,
Tipe VARCHAR(10) NOT NULL,
Power VARCHAR(10) NOT NULL);

INSERT INTO Guns (NameG, Tipe, Power) VALUES ("Pistol","Gun", 100), ("Rugie", "The_gun", 150), ("Avtomat","Machine_gun", 200);

SELECT * FROM Guns WHERE Power = 200;


Create table Games (
id INTEGER PRIMARY KEY,
NameGs varchar (15) not null,
Date_Time varchar (20) not null);

insert into Games values (1,"Game1", "06.09.23 10:55"), (2,"Game2", "06.09.23 11:55"), (3, "Game3", "06.09.23 13:00");

select * from Games where Date_Time = id;

