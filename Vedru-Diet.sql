drop database if exists vedrudiet;
create database vedrudiet;
use vedrudiet;
create table recipe
	(
		id int not null auto_increment,
        nombre varchar(150) not null,
        tiempo varchar(150) not null,
        preparacion varchar(2000) not null,
        Primary Key (id)
	);
create table food
	(
		id int not null auto_increment,
        nombre varchar(150) not null,
        calorias varchar(150) not null,
        lipidos varchar(150),
        hidratos varchar(150),
        proteinas varchar(150),
        fibra varchar(150),
        sodio varchar(150),
        agps varchar(150),
        ags varchar(150),
        ams varchar(150),
        calcio varchar(150),
        fosforo varchar(150),
        potasio varchar(150),
        hierro varchar(150),
        fenilalanina varchar(150),
        tirosina varchar(150),
        fructosa varchar(150),
        Primary Key (id)
	);

create table recipe_foods
(
	food_id int not null,
	recipe_id int not null,
	Primary Key (food_id, recipe_id)
);

ALTER TABLE recipe_foods ADD CONSTRAINT FK_FOOD FOREIGN KEY (food_id) REFERENCES food(id);
ALTER TABLE recipe_foods ADD CONSTRAINT FK_RECIPE FOREIGN KEY (recipe_id) REFERENCES recipe(id);

CREATE TABLE menu (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(150) NOT NULL,
    DesayunoL VARCHAR(150) NOT NULL,
    DesayunoM VARCHAR(150) NOT NULL,
    DesayunoX VARCHAR(150) NOT NULL,
    DesayunoJ VARCHAR(150) NOT NULL,
    DesayunoV VARCHAR(150) NOT NULL,
    DesayunoS VARCHAR(150) NOT NULL,
    DesayunoD VARCHAR(150) NOT NULL,
    MediaL VARCHAR(150) NOT NULL,
    MediaM VARCHAR(150) NOT NULL,
    MediaX VARCHAR(150) NOT NULL,
    MediaJ VARCHAR(150) NOT NULL,
    MediaV VARCHAR(150) NOT NULL,
    MediaS VARCHAR(150) NOT NULL,
    MediaD VARCHAR(150) NOT NULL,
    AlmuerzoL VARCHAR(150) NOT NULL,
    AlmuerzoM VARCHAR(150) NOT NULL,
    AlmuerzoX VARCHAR(150) NOT NULL,
    AlmuerzoJ VARCHAR(150) NOT NULL,
    AlmuerzoV VARCHAR(150) NOT NULL,
    AlmuerzoS VARCHAR(150) NOT NULL,
    AlmuerzoD VARCHAR(150) NOT NULL,
    MeriendaL VARCHAR(150) NOT NULL,
    MeriendaM VARCHAR(150) NOT NULL,
    MeriendaX VARCHAR(150) NOT NULL,
    MeriendaJ VARCHAR(150) NOT NULL,
    MeriendaV VARCHAR(150) NOT NULL,
    MeriendaS VARCHAR(150) NOT NULL,
    MeriendaD VARCHAR(150) NOT NULL,
    CenaL VARCHAR(150) NOT NULL,
    CenaM VARCHAR(150) NOT NULL,
    CenaX VARCHAR(150) NOT NULL,
    CenaJ VARCHAR(150) NOT NULL,
    CenaV VARCHAR(150) NOT NULL,
    CenaS VARCHAR(150) NOT NULL,
    CenaD VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);