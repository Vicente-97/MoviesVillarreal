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

INSERT INTO `category` (`id`, `genres`, `description_category`) VALUES
(1, 'Adventure|Animation|Children|Comedy', 'nulla pede ullamcorper'),
(2, 'Adventure|Thriller', 'at nibh in'),
(3, 'Adventure', 'ornare imperdiet sapien'),
(4, 'Crime|Thriller', 'viverra dapibus nulla'),
(5, 'Drama|Romance', 'consequat in consequat'),
(6, 'Drama', 'elementum pellentesque quisque'),
(7, 'Crime|Drama', 'amet consectetuer adipiscing'),
(8, 'Drama', 'mauris viverra diam'),
(9, 'Drama', 'dapibus augue vel'),
(10, 'Comedy|Fantasy', 'porta volutpat quam'),
(11, 'Drama', 'nec molestie sed'),
(12, 'Drama|Mystery|Thriller', 'quam sollicitudin vitae'),
(13, 'Action|Adventure|Animation|Children', 'quis orci eget'),
(14, 'Comedy', 'sem praesent id'),
(15, 'Drama', 'nisi at nibh'),
(16, 'Action|Adventure|Drama|Fantasy|IMAX', 'ultrices posuere cubilia'),
(17, 'Comedy', 'vulputate luctus cum'),
(18, 'Action|Comedy', 'eu massa donec'),
(19, 'Action|Drama', 'elit proin interdum'),
(20, 'Animation', 'sed interdum venenatis');

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

INSERT INTO `movies` (`id`, `title`, `description_movie`, `price`, `category_id`) VALUES
(1, 'Indian Summer (a.k.a. The Professor) (La prima notte di quiete)', 'duis', 2.39, 18),
(2, 'Beyond the Poseidon Adventure', 'justo lacinia eget', 1.68, 13),
(3, 'How to Eat Your Watermelon in White Company (and Enjoy It)', 'habitasse', 5.12, 19),
(4, 'Knights of Badassdom', 'phasellus', 9.29, 16),
(5, 'Dread', 'aenean sit', 3.02, 17),
(6, 'Emperor s New Groove 2: Kronk s New Groove, The', 'sapien cursus vestibulum', 4.81, 4),
(7, 'The Dancer', 'viverra eget congue', 1.04, 17),
(8, 'Zebraman', 'ipsum ac tellus', 2.79, 14),
(9, 'Night of the Living Dead 3D', 'dolor sit', 2.74, 11),
(10, 'Star Wars: Episode I - The Phantom Menace', 'pede ullamcorper', 4.59, 17),
(11, 'Bela Kiss: Prologue', 'erat nulla', 8.16, 13),
(12, 'Seven Beauties (Pasqualino Settebellezze)', 'ac enim', 6.89, 5),
(13, 'Night Walker, The', 'volutpat sapien', 3.3, 13),
(14, 'Pekko ja unissakävelijä', 'id nulla ultrices', 4.31, 20),
(15, 'Trick', 'integer', 3.94, 19),
(16, 'Wise Guys', 'dolor sit amet', 8.13, 3),
(17, 'Great Mouse Detective, The', 'at dolor', 3.45, 7),
(18, 'Partners: The Movie II (Aibô: Gekijô-ban II)', 'at', 5.07, 8),
(19, 'End of Suburbia: Oil Depletion and the Collapse of the American Dream', 'iaculis', 1.26, 1),
(20, 'Serbian Film, A (Srpski film)', 'viverra pede ac', 1.7, 8),
(21, 'The Face Behind the Mask', 'turpis enim blandit', 3.58, 10),
(22, 'Five Easy Pieces', 'semper est', 6.65, 18),
(23, 'The Diary of Preston Plummer', 'varius integer ac', 8.36, 4),
(24, 'Detective Dee and the Mystery of the Phantom Flame (Di Renjie)', 'turpis', 2.14, 7),
(25, 'Son of Monte Cristo, The', 'lorem', 6.05, 18),
(26, 'Boy Eats Girl', 'faucibus orci', 2.04, 14),
(27, 'Santa Claus', 'convallis duis', 7.61, 12),
(28, 'We ll Never Have Paris', 'vestibulum', 5.01, 3),
(29, 'Bon Voyage, Charlie Brown and Don t Come Back!', 'vestibulum', 3.94, 2),
(30, 'Talent Given Us, The', 'dolor sit', 1.37, 19),
(31, 'Changeling', 'ut', 1.73, 13),
(32, 'Rock the Boat', 'consequat', 1.62, 14),
(33, 'High Art', 'quam', 3.58, 10),
(34, 'Koti-ikävä', 'volutpat eleifend donec', 5.26, 4),
(35, 'Auschwitz: The Nazis and the Final Solution', 'velit nec nisi', 9.54, 3),
(36, 'Foodfight!', 'orci', 8.64, 15),
(37, 'Crips and Bloods: Made in America', 'justo', 4.68, 10),
(38, 'Thursday', 'eget rutrum at', 6.58, 19),
(39, 'Back to the Future Part III', 'diam nam', 7.21, 19),
(40, 'Boys Next Door, The', 'etiam', 4.14, 20),
(41, 'Cambridge Spies', 'donec', 6.81, 3),
(42, 'Fjorton suger', 'vulputate vitae nisl', 9.95, 5),
(43, 'Report, The (Gozaresh)', 'luctus et ultrices', 7.46, 18),
(44, 'Yolki', 'lacus', 6.56, 6),
(45, 'Twenty-Four Eyes (Nijûshi no hitomi)', 'vulputate', 8.19, 18),
(46, 'Source Family, The', 'mauris non ligula', 5.39, 18),
(47, 'Perfume', 'accumsan', 1.72, 10),
(48, 'Long Voyage Home, The', 'in libero', 4.16, 15),
(49, 'Arthur Christmas', 'est et tempus', 3.57, 16),
(50, 'Kaboom', 'proin', 1.92, 14),
(51, 'Dragonslayer', 'consequat lectus in', 8.84, 15),
(52, 'Homesman, The', 'eget vulputate ut', 6.5, 4),
(53, 'Mr. Wonderful', 'augue', 8.21, 6),
(54, 'Arsène Lupin', 'nisl venenatis', 2.28, 14),
(55, 'Chill Factor', 'ante ipsum', 7.64, 11),
(56, 'Flodder', 'donec vitae', 2.43, 1),
(57, 'Peter Ibbetson', 'mollis molestie', 6.04, 13),
(58, 'Spy(ies) (Espion(s))', 'sapien cursus', 6.76, 1),
(59, 'The Blue Room', 'dapibus', 5.65, 10),
(60, 'Zatoichi s Flashing Sword (Zatôichi abare tako) (Zatôichi 7)', 'maecenas leo', 4.35, 2),
(61, 'C.R.A.Z.Y.', 'nisi nam ultrices', 2.32, 3),
(62, 'Wrestler, The (Painija)', 'ultrices posuere', 3.26, 3),
(63, 'Foodfightt!', 'velit', 7.23, 19),
(64, 'Unthinkable', 'sit', 9.54, 13),
(65, 'I Love You Too (Ik ook Van Jou)', 'ligula suspendisse', 6.15, 2),
(66, 'Village Barbershop, The', 'nascetur ridiculus', 1.49, 6),
(67, 'How to Train Your Dragon', 'consequat dui', 9.01, 20),
(68, 'Knockaround Guys', 'rutrum rutrum', 8.41, 7),
(69, 'Pancho, the Millionaire Dog', 'suscipit a', 1.58, 16),
(70, 'All This, and Heaven Too', 'velit id pretium', 4.05, 1),
(71, 'Alien Space Avenger', 'amet sem', 2.64, 3),
(72, 'Going Clear: Scientology and the Prison of Belief', 'vestibulum', 9.55, 13),
(73, 'Planet B-Boy', 'metus', 8.24, 1),
(74, 'House Is Black, The', 'nisl venenatis', 1.96, 18),
(75, 'Laws of Gravity', 'lorem', 9.67, 13),
(76, 'Clown, The', 'vulputate elementum', 8.12, 14),
(77, 'Wanderlust', 'orci luctus et', 5.03, 7),
(78, 'Runaway', 'magnis dis', 4.95, 6),
(79, 'Cat People', 'donec', 5.71, 9),
(80, 'Movie Movie', 'praesent lectus vestibulum', 8.42, 15),
(81, 'Ju-on: The Curse 2', 'mauris vulputate elementum', 6.75, 17),
(82, '101 Dalmatians II: Patch s London Adventure', 'ullamcorper', 9.63, 2),
(83, 'Splendor', 'magna bibendum imperdiet', 5.1, 12),
(84, 'Children s Hour, The', 'erat', 9.71, 1),
(85, 'Above and Beyond', 'ligula vehicula consequat', 7.74, 16),
(86, 'Big City Blues', 'maecenas', 3, 20),
(87, 'Dom Hemingway', 'turpis', 9.37, 5),
(88, 'Rewrite, The', 'dignissim vestibulum vestibulum', 5.8, 9),
(89, 'Fame', 'mauris vulputate', 3.22, 15),
(90, 'No Good Deed (a.k.a. The House on Turk Street)', 'sagittis dui', 4.42, 1),
(91, 'Echoes of the Rainbow (Sui yuet san tau)', 'etiam pretium', 4.8, 16),
(92, 'Samaritan Girl (Samaria)', 'nisi nam', 5.11, 16),
(93, 'Post Grad', 'congue', 9.36, 19),
(94, 'Hi, Mom!', 'amet consectetuer', 5.03, 13),
(95, 'Gregory Go Boom', 'in quis', 5.66, 9),
(96, 'Árido Movie', 'rutrum at', 8.38, 5),
(97, 'Chiedimi se sono felice', 'vulputate ut ultrices', 2.64, 8),
(98, 'Frankenhooker', 'elementum eu', 8.59, 13),
(99, 'Sergeant Körmy and the Underwater Vehicles (Vääpeli Körmy ja vetenalaiset vehkeet)', 'ridiculus', 2.84, 5),
(100, 'Trailer Park Jesus', 'ac lobortis vel', 9.36, 1);

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

INSERT INTO `purchase` (`cod`, `price`, `user`, `date`, `quantity`, `id_movie`) VALUES
(1, 1.15, 'lcosgry1', '1989-06-26', 97, 42),
(2, 4.37, 'vligertwood0', '2016-07-19', 43, 40),
(3, 1.14, 'wburroughes7', '1989-08-07', 58, 29),
(4, 5.83, 'kwright3', '1983-01-18', 89, 71),
(5, 1.95, 'rmacellar6', '2015-11-07', 94, 69),
(6, 7.17, 'wburroughes7', '1999-08-28', 83, 84),
(7, 3.89, 'ghebbes8', '1983-07-14', 71, 72),
(8, 9.38, 'vligertwood0', '1985-08-15', 1, 26),
(9, 9.99, 'wburroughes7', '1994-11-08', 28, 3),
(10, 8.38, 'lcosgry1', '1991-06-09', 35, 5),
(11, 4.06, 'kwright3', '1992-06-25', 68, 31),
(12, 7.48, 'wburroughes7', '2006-05-19', 32, 36),
(13, 7.36, 'vligertwood0', '2022-11-04', 46, 4),
(14, 3.34, 'dcorse4', '1987-02-07', 77, 89),
(15, 4.28, 'ghebbes8', '2001-12-17', 14, 30),
(16, 7.77, 'wburroughes7', '2022-05-13', 34, 28),
(17, 3.91, 'kwright3', '1994-05-17', 34, 44),
(18, 6.33, 'vligertwood0', '2003-08-11', 21, 8),
(19, 2.14, 'lanniwell9', '1989-03-10', 95, 31),
(20, 2.86, 'dcorse4', '2007-09-13', 47, 90),
(21, 1.97, 'dcorse4', '2022-02-04', 62, 59),
(22, 7.4, 'rmacellar6', '1994-11-11', 20, 76),
(23, 2.11, 'kwright3', '2000-03-10', 46, 32),
(24, 7.89, 'dcorse4', '2007-12-15', 30, 69),
(25, 7.19, 'rmacellar6', '1984-04-04', 67, 95),
(26, 4.32, 'dcorse4', '1998-12-06', 42, 97),
(27, 1.74, 'lcosgry1', '2013-11-25', 28, 35),
(28, 3.53, 'lcosgry1', '1995-01-28', 28, 46),
(29, 9.8, 'wburroughes7', '1984-08-15', 100, 87),
(30, 9.37, 'lanniwell9', '2018-06-18', 61, 93),
(31, 8.44, 'vligertwood0', '1981-12-31', 26, 89),
(32, 1.28, 'scarine5', '2006-12-30', 99, 72),
(33, 7.27, 'lcosgry1', '1999-03-20', 62, 75),
(34, 7.61, 'ghebbes8', '2014-12-15', 63, 40),
(35, 6.61, 'ghebbes8', '1997-05-16', 49, 39),
(36, 1.01, 'dcorse4', '2022-05-21', 25, 33),
(37, 8.92, 'wburroughes7', '2007-06-11', 99, 51),
(38, 5.42, 'ilosbie2', '2011-09-14', 93, 36),
(39, 9.24, 'rmacellar6', '1986-01-29', 24, 81),
(40, 1.44, 'ghebbes8', '2010-12-02', 39, 20),
(41, 8.21, 'dcorse4', '2021-05-06', 34, 94),
(42, 2.13, 'ghebbes8', '1983-09-08', 26, 87),
(43, 9.88, 'vligertwood0', '1989-11-24', 40, 7),
(44, 1.96, 'rmacellar6', '2021-04-01', 66, 17),
(45, 2.86, 'rmacellar6', '2005-10-12', 62, 71),
(46, 9.66, 'dcorse4', '2015-06-24', 90, 72),
(47, 6.33, 'vligertwood0', '1997-04-27', 55, 10),
(48, 2.85, 'vligertwood0', '2004-02-18', 48, 56),
(49, 8.62, 'wburroughes7', '2020-07-20', 19, 13),
(50, 2.07, 'rmacellar6', '1995-09-16', 3, 82),
(51, 5.1, 'vligertwood0', '2005-10-23', 67, 83),
(52, 6.26, 'wburroughes7', '1983-07-18', 33, 23),
(53, 4.16, 'dcorse4', '1988-06-23', 44, 89),
(54, 8.79, 'scarine5', '1985-07-18', 69, 2),
(55, 3.05, 'lcosgry1', '2020-04-09', 65, 90),
(56, 9.94, 'lcosgry1', '2019-10-29', 85, 59),
(57, 1.12, 'wburroughes7', '1988-06-09', 2, 94),
(58, 4.48, 'vligertwood0', '2014-12-21', 82, 13),
(59, 8.26, 'ghebbes8', '2011-11-10', 14, 17),
(60, 7.48, 'wburroughes7', '2017-02-11', 35, 91),
(61, 4.8, 'rmacellar6', '1991-12-28', 27, 71),
(62, 1.63, 'rmacellar6', '1992-12-13', 1, 88),
(63, 4.12, 'kwright3', '1992-10-11', 74, 89),
(64, 1.23, 'lanniwell9', '1987-04-10', 12, 26),
(65, 2.9, 'lanniwell9', '1999-08-30', 1, 20),
(66, 8.95, 'ghebbes8', '1999-02-28', 31, 5),
(67, 8.93, 'rmacellar6', '2005-02-25', 3, 89),
(68, 5.39, 'ilosbie2', '2002-07-02', 96, 9),
(69, 8.38, 'dcorse4', '1981-11-18', 79, 70),
(70, 5.41, 'vligertwood0', '2016-06-29', 100, 60),
(71, 1.91, 'lcosgry1', '2013-03-12', 83, 13),
(72, 9.05, 'kwright3', '1990-10-29', 24, 58),
(73, 1.87, 'vligertwood0', '2002-11-21', 1, 40),
(74, 8.16, 'kwright3', '1981-06-21', 43, 47),
(75, 2.47, 'ilosbie2', '1988-02-22', 83, 61),
(76, 8.35, 'lanniwell9', '1982-04-06', 20, 21),
(77, 1.5, 'rmacellar6', '1988-09-14', 70, 76),
(78, 4.02, 'vligertwood0', '1992-04-09', 85, 78),
(79, 9.36, 'wburroughes7', '2001-09-22', 2, 52),
(80, 2.12, 'rmacellar6', '2015-06-25', 11, 33),
(81, 2.88, 'ilosbie2', '1987-12-06', 7, 41),
(82, 2.74, 'scarine5', '2008-01-28', 47, 39),
(83, 3.26, 'wburroughes7', '2013-06-27', 40, 13),
(84, 6.71, 'ghebbes8', '2021-02-08', 23, 48),
(85, 8.71, 'ghebbes8', '1998-09-02', 59, 24),
(86, 6, 'wburroughes7', '2002-08-02', 68, 91),
(87, 9.43, 'vligertwood0', '2019-09-19', 12, 14),
(88, 6.74, 'scarine5', '1989-03-13', 75, 10),
(89, 2.45, 'rmacellar6', '1988-10-20', 86, 30),
(90, 8.48, 'vligertwood0', '2015-10-24', 74, 100),
(91, 7.84, 'ilosbie2', '1985-11-21', 61, 97),
(92, 7.84, 'scarine5', '2012-02-15', 5, 66),
(93, 9.43, 'rmacellar6', '2013-01-22', 20, 42),
(94, 8.62, 'dcorse4', '2005-11-15', 63, 30),
(95, 6.72, 'ilosbie2', '2003-11-09', 95, 9),
(96, 9.45, 'dcorse4', '1991-11-07', 74, 62),
(97, 7.99, 'ilosbie2', '1988-01-17', 53, 18),
(98, 7.8, 'lanniwell9', '2000-12-31', 22, 51),
(99, 1.44, 'scarine5', '2010-08-30', 82, 8),
(100, 1.31, 'lcosgry1', '2020-05-25', 46, 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
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



