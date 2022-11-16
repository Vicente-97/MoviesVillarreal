-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 08-11-2022 a las 08:21:31
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `MoviesVillarreal`

-- EJECUTAR ESTE SCRIPT EN PHP.MYADMIN.NET , EN EL APARTADO "NUEVA". NO EJECUTAR EN UNA BASE DE DATOS YA EXISTENTE.
CREATE DATABASE MoviesVillarreal;

USE `MoviesVillarreal`;
--
CREATE USER 'villarreal'@'%' IDENTIFIED BY 'vicen';
GRANT ALL PRIVILEGES ON MoviesVillarreal.* to 'villarreal'@'%';
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `genres` varchar(50) NOT NULL,
  `description_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Volcado de datos para la tabla `category`
--


INSERT INTO category (id,genres,description_category) VALUES (1,'Horror','fringilla rhoncus mauris');
INSERT INTO category (id,genres,description_category) VALUES (2,'Drama','praesent blandit lacinia');
INSERT INTO category (id,genres,description_category) VALUES (3,'Sci-Fi','arcu libero rutrum');
INSERT INTO category (id,genres,description_category) VALUES (4,'Comedy','lectus pellentesque at');
INSERT INTO category (id,genres,description_category) VALUES (5,'Romance','sit amet eleifend');
INSERT INTO category (id,genres,description_category) VALUES (6,'Thriller','amet consectetuer adipiscing');
INSERT INTO category (id,genres,description_category) VALUES (7,'Children','placerat ante nulla');
INSERT INTO category (id,genres,description_category) VALUES (8,'Animation','mi nulla ac');
INSERT INTO category (id,genres,description_category) VALUES (9,'Action','faucibus orci luctus');
INSERT INTO category (id,genres,description_category) VALUES (10,'Documentary','ut ultrices vel');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description_movie` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Volcado de datos para la tabla `movies`
--

INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (1,'L-Shaped Room, The','diam',3.72,6);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (2,'Sahara','odio',3.49,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (3,'Himizu','donec odio',3.87,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (4,'Solaris','odio',6.13,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (5,'Daydream Nation','orci',5.26,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (6,'Siegfried','at feugiat',9.05,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (7,'Beau Brummell: This Charming Man','eu massa donec',2.27,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (8,'Burn After Reading','tellus',6.63,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (9,'Nameless Gangster (Bumchoiwaui junjaeng)','curae mauris viverra',3.85,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (10,'Our Folks (Sami swoi)','ut',2.76,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (11,'Batman: Assault on Arkham','nibh',5.84,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (12,'Persuasion','quis turpis eget',9.62,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (13,'Zero 2','ut nulla sed',1.16,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (14,'Rum Diary, The','erat',8.74,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (15,'Black Bread (Pa Negre)','amet',7.74,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (16,'Berlin Express','est donec odio',8.69,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (17,'Anything Goes','turpis a pede',3.54,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (18,'Fairly Odd Movie: Grow Up, Timmy Turner!, A','nulla neque',2.97,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (19,'Zazie dans le métro','velit eu est',2.29,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (20,'Blackout, The','scelerisque',9,3);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (21,'Ararat','nisi',8.1,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (22,'Midnight Movie','massa volutpat convallis',5.41,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (23,'Ice Station Zebra','porta volutpat',8.93,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (24,'Dante s Inferno','eget vulputate ut',7.72,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (25,'We re No Angels', 'elit',1.08,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (26,'Harry and the Hendersons','lectus aliquam',5.66,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (27,'King Solomon s Mines','suspendisse',3.87,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (28,'Puddle Cruiser','dolor quis odio',5.04,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (29,'Beetlejuice','ut',7.16,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (30,'Massacre Canyon','in faucibus orci',5.29,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (31,'Blue Crush','primis in',7.53,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (32,'Beautiful Life, A','nisl duis',8.29,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (33,'Storage','in lacus',2.46,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (34,'Oculus','morbi vel lectus',5.83,3);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (35,'Eddie Izzard: Glorious','in blandit',3.6,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (36,'Innocent Sleep, The','montes nascetur ridiculus',8.55,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (37,'Evelyn Prentice','in blandit ultrices',8.25,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (38,'Heartbeats (Les amours imaginaires)','ultrices',7.98,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (39,'42nd Street','faucibus orci',8.96,3);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (40,'Bigga Than Ben','convallis',1.8,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (41,'Pursuit of Happiness, The','ipsum primis',7.44,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (42,'Endurance: Shackleton s Legendary Antarctic Expedition, The','in sapien',9.05,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (43,'Great White Hype, The','pede malesuada in',4.8,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (44,'Perils of the Sentimental Swordsman','sapien ut nunc',8.87,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (45,'Day of the Crows, The (Le jour des corneilles)','eleifend donec ut',8.9,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (46,'Tigger Movie, The','aliquam lacus',3.5,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (47,'His Private Secretary','quisque',2.04,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (48,'Pulse','dui proin',7.36,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (49,'Chef','cum',2.18,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (50,'Monsieur Batignole','turpis donec posuere',6.43,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (51,'Beware of Mr. Baker','tortor',7.91,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (52,'Stella','sed nisl nunc',7.49,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (53,'Pitfall (Otoshiana)','quis turpis',3.14,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (54,'Revolt in the Fifth Dimension','fusce',9.91,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (55,'Branded to Kill (Koroshi no rakuin)','magna',8.1,6);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (56,'H-Man, The (Bijo to Ekitainingen)','mi in porttitor',8.98,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (57,'First Comes Love','feugiat non',8.89,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (58,'Horse Whisperer, The','hendrerit at',2.07,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (59,'Forger, The','lectus suspendisse',8.81,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (60,'Faust','purus eu magna',6.98,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (61,'Guns of Fort Petticoat, The','tincidunt ante vel',5.96,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (62,'Tarzan, the Ape Man','aliquam non',2.85,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (63,'Double Trouble','praesent',5.76,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (64,'Hearts of the West','amet diam',8.41,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (65,'Alpha and Omega 2: A Howl-iday Adventure (Alpha &amp; Omega 2)','suspendisse ornare',4.68,6);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (66,'Midnight Clear, A','libero nullam',9.49,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (67,'Rape of Europa, The','at turpis',4.24,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (68,'Double Wedding','dui vel nisl',6.51,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (69,'Shakthi: The Power','in hac',8.79,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (70,'Carman: The Champion','sodales',1.56,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (71,'Genocide (Konchû daisensô)','morbi',7.13,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (72,'Salaam Cinema','vel lectus',8.91,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (73,'100 Girls','magnis dis',8.33,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (74,'Shiver of the Vampires, The (Frisson des vampires, Le)','mauris',6.04,3);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (75,'In Between Days','sed',3.67,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (76,'Executive Action','purus',9.11,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (77,'Colt Comrades','aliquam',6.16,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (78,'Tokyo Olympiad','vestibulum aliquet',1.83,6);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (79,'Unreal Dream: The Michael Morton Story, An','sollicitudin',3.01,3);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (80,'Once Upon a Time in the Midlands','ipsum dolor',1.31,9);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (81,'Meet Me at the Fair','nisi vulputate nonummy',1.71,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (82,'Virgin Queen, The','eget eleifend luctus',8.46,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (83,'Something the Lord Made','ultricies eu',7.49,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (84,'Ballad of the Little Soldier (Ballade vom kleinen Soldaten)','amet',5.4,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (85,'Final Destination 5','posuere cubilia',9.9,6);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (86,'Kelly s Heroes','purus eu magna',8.39,7);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (87,'Hard Rain','mauris laoreet ut',7.7,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (88,'Law Abiding Citizen','ante vel',6.52,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (89,'Love Is Colder Than Death (Liebe ist kälter als der Tod)','massa quis augue',8.19,6);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (90,'Painted Veil, The','est phasellus sit',2.08,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (91,'One Life','libero',4.68,2);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (92,'Larry the Cable Guy: Health Inspector','ac lobortis',6.16,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (93,'Léon Morin, Priest (Léon Morin, prêtre)','sem',1.06,5);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (94,'Wheels on Meals (Kuai can che)','in porttitor',4.04,4);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (95,'Dom Hemingway','dis parturient montes',8.96,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (96,'Shed No Tears (Känn ingen sorg)','tellus in',8.06,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (97,'New Country, The (Det nya landet)','habitasse platea dictumst',7.14,1);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (98,'Who ll Stop the Rain','sollicitudin vitae',8.22,10);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (99,'Mezzo Forte','lectus',1.41,8);
INSERT INTO movies (id,title,description_movie,price,category_id) VALUES (100,'Snakehead Terror','faucibus',2.56,4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `cod` int(11) NOT NULL,
  `price` double NOT NULL,
  `user` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `purchase`
--


INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (1,9,'vligertwood0','1989-05-07',69,89);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (2,5,'scarine5','1993-05-27',95,17);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (3,3,'lcosgry1','1989-10-10',64,67);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (4,10,'ghebbes8','1996-06-07',54,2);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (5,10,'lanniwell9','1992-02-22',49,96);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (6,8,'scarine5','1993-02-08',40,70);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (7,3,'kwright3','1993-10-25',15,75);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (8,3,'lanniwell9','2020-04-27',89,19);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (9,1,'kwright3','1977-10-29',92,82);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (10,10,'scarine5','1997-10-06',47,43);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (11,5,'lanniwell9','1978-03-15',92,20);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (12,4,'rmacellar6','1977-01-10',83,8);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (13,3,'ilosbie2','1988-05-29',97,84);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (14,4,'rmacellar6','2022-03-01',47,20);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (15,6,'dcorse4','2016-01-14',42,64);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (16,10,'lanniwell9','2020-09-28',97,85);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (17,1,'ghebbes8','1997-08-02',11,71);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (18,8,'lcosgry1','1997-02-17',13,72);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (19,6,'vligertwood0','2003-05-27',22,66);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (20,4,'ilosbie2','1999-03-05',21,98);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (21,8,'kwright3','1981-06-09',56,69);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (22,1,'vligertwood0','2019-05-29',93,61);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (23,8,'wburroughes7','1979-05-09',2,77);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (24,5,'kwright3','2010-01-16',67,66);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (25,2,'wburroughes7','1977-08-04',90,36);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (26,5,'ilosbie2','2014-07-09',84,100);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (27,6,'rmacellar6','2003-11-12',90,100);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (28,5,'lcosgry1','2007-05-29',66,46);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (29,5,'scarine5','2012-01-16',90,12);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (30,8,'wburroughes7','1995-10-09',24,56);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (31,4,'wburroughes7','2021-03-08',44,52);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (32,9,'lanniwell9','1989-10-10',58,95);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (33,6,'rmacellar6','2014-03-26',57,57);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (34,3,'ghebbes8','1988-11-30',22,27);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (35,7,'ghebbes8','2002-07-05',41,46);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (36,6,'wburroughes7','1993-07-08',57,63);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (37,7,'ghebbes8','1987-03-24',37,61);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (38,10,'kwright3','1991-12-14',39,92);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (39,1,'dcorse4','1991-11-28',94,81);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (40,7,'lanniwell9','1988-01-07',92,83);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (41,7,'scarine5','1995-09-30',82,49);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (42,9,'kwright3','2001-10-30',11,48);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (43,10,'dcorse4','1980-08-25',92,40);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (44,9,'lcosgry1','1996-05-20',80,71);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (45,1,'ghebbes8','2010-07-30',56,2);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (46,6,'ghebbes8','1984-08-22',60,4);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (47,6,'vligertwood0','1981-09-03',37,30);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (48,9,'lcosgry1','1975-11-30',58,65);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (49,8,'lanniwell9','2010-10-19',70,4);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (50,5,'lcosgry1','1997-03-23',87,46);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (51,7,'vligertwood0','1977-02-24',65,46);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (52,5,'ilosbie2','1991-10-20',7,89);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (53,10,'dcorse4','1982-11-12',27,85);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (54,4,'wburroughes7','1981-02-03',47,69);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (55,7,'kwright3','1978-10-24',60,2);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (56,7,'rmacellar6','2012-03-24',78,98);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (57,1,'wburroughes7','1983-01-07',63,76);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (58,2,'dcorse4','2012-01-02',20,13);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (59,7,'scarine5','1976-04-09',43,7);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (60,3,'lanniwell9','2018-12-10',18,57);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (61,5,'ghebbes8','2008-10-14',79,32);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (62,2,'wburroughes7','2022-04-23',4,60);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (63,10,'lcosgry1','1999-04-01',97,81);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (64,6,'vligertwood0','2015-05-04',48,47);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (65,7,'vligertwood0','2007-01-20',41,40);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (66,10,'dcorse4','1989-08-11',76,42);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (67,3,'lanniwell9','1984-04-13',27,35);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (68,10,'rmacellar6','1983-04-06',64,37);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (69,3,'kwright3','1987-08-03',20,55);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (70,10,'vligertwood0','1991-03-19',13,93);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (71,9,'vligertwood0','2017-03-14',22,90);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (72,3,'wburroughes7','2004-09-03',100,36);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (73,4,'kwright3','1997-02-26',34,38);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (74,10,'rmacellar6','2001-01-22',9,12);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (75,6,'ilosbie2','2017-07-11',77,8);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (76,8,'vligertwood0','2006-09-06',75,34);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (77,2,'rmacellar6','2006-09-10',33,30);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (78,9,'ilosbie2','1975-12-15',69,93);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (79,1,'rmacellar6','1986-11-12',25,14);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (80,4,'lcosgry1','2016-10-27',100,35);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (81,5,'dcorse4','1983-04-25',50,6);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (82,5,'lcosgry1','2016-10-07',52,98);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (83,7,'dcorse4','1991-05-09',85,47);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (84,5,'lcosgry1','2010-08-29',84,77);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (85,2,'ghebbes8','1994-08-02',18,81);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (86,4,'ghebbes8','1987-11-18',26,19);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (87,2,'vligertwood0','1989-03-10',88,94);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (88,7,'rmacellar6','1999-06-13',82,83);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (89,7,'scarine5','1999-04-27',64,72);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (90,7,'scarine5','2018-12-05',92,10);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (91,6,'dcorse4','1986-08-21',35,28);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (92,3,'scarine5','1991-10-30',56,42);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (93,10,'kwright3','2013-10-23',63,43);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (94,9,'ghebbes8','1986-03-13',10,94);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (95,3,'rmacellar6','1989-08-14',50,57);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (96,9,'ilosbie2','2012-04-09',10,12);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (97,10,'ilosbie2','2019-10-20',76,22);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (98,1,'kwright3','2013-07-21',29,13);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (99,3,'lcosgry1','2005-03-03',94,34);
INSERT INTO purchase (cod,price,user,date,quantity,id_movie) VALUES (100,3,'lanniwell9','1985-03-14',53,32);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `admin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`username`, `password`, `first_name`, `last_name`, `date`, `gender`, `admin`) VALUES
('dcorse4', '963b082393f0e79e0ba81134d338f95b', 'Dew', 'Corse', '1999-11-06', 'Male', 1),
('ghebbes8', 'cefed397f3a144e057b59dee560f55f3', 'Georgetta', 'Hebbes', '2007-09-11', 'Female', 0),
('ilosbie2', 'ac1f04920298f9cd7742465c23ec04aa', 'Isador', 'Losbie', '1988-08-15', 'Male', 1),
('inma', 'd40dbcae0e7088fc4a7e1768cf8771da', 'inma', 'olias', '2012-11-01', 'Female', 1),
('javi', 'a14f8a540e78dae706d255750010a0f8', 'javi', 'javi', '2012-11-02', 'Male', 1),
('kwright3', 'f5c9784cbbffd7871de84ff391424492', 'Karin', 'Wright', '2012-09-17', 'Female', 0),
('lanniwell9', '6099d1e905796f5fbce425f9604fa3a2', 'Lothario', 'Anniwell', '2003-04-08', 'Bigender', 0),
('lcosgry1', '835698547ebeaa0ebb4e9c468dd02c15', 'Latia', 'Cosgry', '1993-01-13', 'Female', 0),
('rmacellar6', 'c9b4958f13936ee0ad8b860c22810ff0', 'Roana', 'Macellar', '2001-05-21', 'Female', 1),
('scarine5', '58bb3f1f545d2d3e58b294719d07838d', 'Sterne', 'Carine', '1997-05-02', 'Male', 0),
('vligertwood0', '0eb4b476b24711c2eeefc7cb14c15953', 'Valentino', 'Ligertwood', '2012-05-20', 'Male', 0),
('wburroughes7', '67951a8570c2f5db112cef9e4e8363c7', 'Wendy', 'Burroughes', '2012-06-14', 'Female', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);
  
 ALTER TABLE `category`
MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `FK_movies` (`category_id`);
  
ALTER TABLE `movies`
MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`cod`,`user`,`id_movie`),
  ADD KEY `user` (`user`),
  ADD KEY `id_movie` (`id_movie`);
  
ALTER TABLE `purchase`
MODIFY `cod` INT NOT NULL AUTO_INCREMENT;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `FK_movies` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



