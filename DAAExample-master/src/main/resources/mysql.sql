drop database daaexample;
create database daaexample;
use daaexample;



CREATE TABLE `daaexample`.`users` (
	`login` varchar(100) NOT NULL,
	`password` varbinary(64) DEFAULT NULL,
	`name` varchar(50) DEFAULT NULL,
	`surname` varchar(100) DEFAULT NULL,
	PRIMARY KEY (`login`)
);

CREATE TABLE `daaexample`.`event`(
	`id` int NOT NULL AUTO_INCREMENT,
	`nameEvent` varchar(50) DEFAULT NULL,
	`dateCreate` timestamp,
	`dateInit` timestamp,
	`dateFinal` timestamp,
	`description` varchar(255) DEFAULT NULL,
	`category` enum('Literatura','Deportes','Fiesta') DEFAULT 'Fiesta',
	`place` varchar(100),
	`image` varchar(400),
	`author` varchar(100),
	PRIMARY KEY (`id`),
	FOREIGN KEY (`author`) REFERENCES users(login)
	
);


CREATE TABLE `daaexample`.`eventUser`(
	`id`int NOT NULL,
	`login` varchar(100) NOT NULL,
	PRIMARY KEY (`id`,`login`),
	FOREIGN KEY (`login`) REFERENCES users(login),
	FOREIGN KEY (`id`) REFERENCES event(id)

);


INSERT INTO `daaexample`.`users` (`login`,`password`,`name`,`surname`) VALUES ('Pablo','pablo123','Pablo','Perez');
INSERT INTO `daaexample`.`users` (`login`,`password`,`name`,`surname`) VALUES ('Maria','maria123','Maria','Garcia');
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`, `image`,`author`) VALUES ("Fiesta de Disfraces","2015-07-15 13:30:00","2015-08-15 13:30:00","2015-08-15 15:30:00","Fiesta de disfraces para celebrar el inicio de la primavera","Fiesta", "Ourense", "img/prueba1.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Club de lectura","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Hablaremos sobre algun libro, uno diferente cada semana","Literatura", "Vigo","img/prueba2.jpg","Maria");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Pachanga en Coru�a","2015-08-13 18:30:00","2015-09-13 18:30:00","2015-09-13 20:30:00","Partido de futbol entre amigos en el campo del campus de ourense","Deportes", "Coru�a","img/prueba3.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Parrillada en Vigo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Fiesta", "Vigo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Fiesta en Vigo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Fiesta", "Vigo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Fiesta en Vigo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Fiesta", "Vigo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Deportes en Vigo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Deportes", "Vigo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Fiesta en Lugo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Fiesta", "Lugo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Deportes en Lugo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Deportes", "Lugo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Literatura en Ourense","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Literatura", "Ourense","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Literatura en Coru�a","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Literatura", "Coru�a","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Literatura en Vigo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","Cada uno debe pagar 5 euros para comprar comida y bebida","Literatura", "Vigo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`event` (`nameEvent`,`dateCreate`,`dateInit`,`dateFinal`,`description`,`category`, `place`,`image`,`author`) VALUES ("Desportes en Vigo","2015-06-03 16:30:00","2015-06-03 16:30:00","2015-06-15 18:30:00","DeporteDeporteDeporteDeporteDeporteDeporte","Deportes", "Vigo","img/prueba4.jpg","Pablo");
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (1,'Pablo');
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (2,'Pablo');
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (3,'Pablo');
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (4,'Pablo');
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (2,'Maria');
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (9,'Maria');
INSERT INTO `daaexample`.`eventUser` (`id`,`login`) VALUES (10,'Maria');