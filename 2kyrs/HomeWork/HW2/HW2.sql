CREATE DATABASE "Nazarov11-008"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

create table clients (Name varchar, Phone_numb varchar);

insert into clients (Name, Phone_numb) values ('Владимир', '89053314421');
insert into clients (Name, Phone_numb) values ('Георигий', '88005553535');
insert into clients (Name, Phone_numb) values ('Григорий', '89061217827');
insert into clients (Name, Phone_numb) values ('Василий', '89065553542');
insert into clients (Name, Phone_numb) values ('Евграф', '89745683214');
insert into clients (Name, Phone_numb) values ('Анатолий', '8906006007');
insert into clients (Name, Phone_numb) values ('Лилия', '89553553555');
insert into clients (Name, Phone_numb) values ('Ева', '89072552525');
insert into clients (Name, Phone_numb) values ('Владислава', '88888888888');
insert into clients (Name, Phone_numb) values ('Николай', '897777777777');

create table drivers (Name varchar, Car_number varchar, Phone_number varchar);

insert into drivers (Name, Car_number, Phone_number) values ('Вадим', 'м671уо116', '89631253648');
insert into drivers (Name, Car_number, Phone_number) values ('Михаил', 'в666ор16', '87641234312');
insert into drivers (Name, Car_number, Phone_number) values ('Угли', 'р878ст716', '84531263028');
insert into drivers (Name, Car_number, Phone_number) values ('Арсен', 'о000оо00', '89451842020');
insert into drivers (Name, Car_number, Phone_number) values ('Павел', 'х222см116', '87201482748');
insert into drivers (Name, Car_number, Phone_number) values ('Петр', 'н999ос16', '89551255215');
insert into drivers (Name, Car_number, Phone_number) values ('Нурлан', 'о666ао116', '89631296312');
insert into drivers (Name, Car_number, Phone_number) values ('Леонардо', 'м777мм16', '89635334238');
insert into drivers (Name, Car_number, Phone_number) values ('Рафаэль', 'т314оо116', '89135136238');
insert into drivers (Name, Car_number, Phone_number) values ('Данателло', 'а111аа16', '89535635238');

create table cars (Mark varchar, Numb varchar, Color varchar);

insert into cars (Mark, Numb, Color) values ('LADA Priora', 'м671уо116', 'Серый');
insert into cars (Mark, Numb, Color) values ('LADA Priora', 'в666ор16', 'Черный');
insert into cars (Mark, Numb, Color) values ('LADA 2106', 'р878ст716', 'Красный');
insert into cars (Mark, Numb, Color) values ('LADA Vesta', 'о000оо00', 'Белый');
insert into cars (Mark, Numb, Color) values ('LADA Granta', 'х222см116', 'Оранжевый');
insert into cars (Mark, Numb, Color) values ('LADA 2107', 'н999ос16', 'Вишневый');
insert into cars (Mark, Numb, Color) values ('LADA 2109', 'о666ао116', 'Зеленый');
insert into cars (Mark, Numb, Color) values ('LADA 21099', 'м777мм16', 'Болотный');
insert into cars (Mark, Numb, Color) values ('LADA 2113', 'т314оо116', 'Синий');
insert into cars (Mark, Numb, Color) values ('LADA 2114', 'а111аа16', 'Черный');

create table driver_loc (Driver varchar, district varchar);

insert into driver_loc (Driver, district) values ('Святогор', 'Приволжский');
insert into driver_loc (Driver, district) values ('Михаил', 'Вахитовский');
insert into driver_loc (Driver, district) values ('Угли', 'Авиастроительный');
insert into driver_loc (Driver, district) values ('Арсен', 'Ново-Савиновский');
insert into driver_loc (Driver, district) values ('Павел', 'Советский');
insert into driver_loc (Driver, district) values ('Петр', 'Вахитовский');
insert into driver_loc (Driver, district) values ('Нурлан', 'Московский');
insert into driver_loc (Driver, district) values ('Леонардо', 'Московский');
insert into driver_loc (Driver, district) values ('Рафаэль', 'Кировский');
insert into driver_loc (Driver, district) values ('Данателло', 'Ново-Савиновский');

create table orders (date varchar, driver varchar, client varchar);

insert into orders (date, driver, client) values ('2022-01-01', 'Вадим', 'Владислава');
insert into orders (date, driver, client) values ('2022-01-02', 'Михаил', 'Николай');
insert into orders (date, driver, client) values ('2022-01-03', 'Угли', 'Ева');
insert into orders (date, driver, client) values ('2022-01-04', 'Арсен', 'Лилия');
insert into orders (date, driver, client) values ('2022-01-05', 'Павел', 'Анатолий');
insert into orders (date, driver, client) values ('2022-01-06', 'Петр', 'Евграф');
insert into orders (date, driver, client) values ('2022-01-07', 'Нурлан', 'Василий');
insert into orders (date, driver, client) values ('2022-01-08', 'Леонардо', 'Григорий');
insert into orders (date, driver, client) values ('2022-01-09', 'Рафаэль', 'Георигий');
insert into orders (date, driver, client) values ('2022-01-09', 'Данателло', 'Владимир');