-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 03:11 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onyegov4_sbk1204`
--
CREATE DATABASE IF NOT EXISTS `onyegov4_sbk1204` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onyegov4_sbk1204`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `published` date NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `author`, `published`, `stock`) VALUES
(1, 'Прелюдия к космосу', 'Артур кларк', '1951-01-01', 3),
(2, 'Пески марса', 'Артур кларк', '1951-01-01', 3),
(3, 'Острова в небе', 'Артур Кларк', '1952-01-01', 10),
(7, 'Бессистемная отладка. Реабилитация', 'Тимофей Царенко', '2018-02-12', 999),
(39, 'Майнкрафт моя жизнь ', 'Борис Бритва', '0000-00-00', 123),
(40, 'Шорде Пьюр', 'Карл Мак', '1985-10-22', 5),
(51, 'Чумной корабль', 'Андрэ нортон', '1959-01-01', 3),
(53, 'Автор', 'Авиту.ру', '2020-11-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `borrowdate` date NOT NULL,
  `returndate` date NOT NULL,
  `returned` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`id`, `bookid`, `memberid`, `borrowdate`, `returndate`, `returned`) VALUES
(1, 1, 3, '0000-00-00', '0000-00-00', 1),
(2, 2, 3, '2020-01-01', '2020-01-01', 0),
(3, 1, 3, '2020-01-01', '2020-01-01', 1),
(4, 2, 3, '2020-11-23', '2020-11-29', 0),
(5, 51, 3, '2020-11-23', '2020-12-06', 0),
(6, 1, 4, '2020-11-23', '2020-11-27', 1),
(7, 7, 5, '2020-11-23', '2020-11-27', 0),
(8, 51, 4, '2020-11-23', '2020-11-27', 1),
(9, 39, 5, '2020-11-23', '2020-11-27', 1),
(10, 2, 4, '2020-11-23', '2020-11-26', 1),
(11, 3, 5, '2020-11-23', '2020-12-02', 1),
(12, 7, 4, '2020-11-30', '2020-12-30', 1),
(13, 7, 3, '2020-11-30', '2020-12-18', 1),
(14, 7, 3, '2020-11-30', '2020-12-18', 1),
(15, 53, 6, '2020-11-30', '2020-12-05', 1),
(16, 7, 5, '2020-11-30', '2020-12-06', 0),
(17, 53, 6, '2020-11-30', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberid`, `firstname`, `lastname`) VALUES
(3, 'Борис', 'Бритва'),
(4, 'Вася', 'Пупкин'),
(5, 'Василий ', 'Белый'),
(6, 'Авито', 'Автор');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'leonid112', '$2y$10$m6xXj0mvwqyvGDW3AJ5alOGT8i9nnQtQLQYznlesuTAPbELBam3uS'),
(2, 'teacher', '$2y$10$c/P79sZxp49l060NQXrXBu0ur6PF68EqWwvdahT4uEJ/sCs0E8u5i');

-- --------------------------------------------------------

--
-- Table structure for table `vedomost`
--

CREATE TABLE `vedomost` (
  `id` int(11) NOT NULL,
  `topic` varchar(45) NOT NULL,
  `v_date` varchar(60) NOT NULL,
  `student_group` varchar(10) NOT NULL,
  `filename` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vedomost`
--

INSERT INTO `vedomost` (`id`, `topic`, `v_date`, `student_group`, `filename`) VALUES
(5, 'Разработка и защита БД', 'Monday 14th of December 2020', 'pk1204', '1204бд4.jpg'),
(6, 'Экономика Организации', 'Monday 14th of December 2020', 'pk111', '20201214_104512.jpg'),
(7, 'ДОУ', 'Monday 14th of December 2020', 'ek1007', '1007 14 дек.jpg'),
(8, 'ДОУ', 'Monday 14th of December 2020', 'ek1007', '1007-2 14 дек.jpg'),
(9, 'ТОТО и ОТ', 'Monday 14th of December 2020', 'km1202', '1202-1 14 дек.jpg'),
(10, 'ТОТО и ОТ', 'Monday 14th of December 2020', 'km1202', '1202 14 дек.jpg'),
(19, 'Курсовая товароведение', 'Monday 14th of December 2020', 'km1305', '2020-12-14_13-38-48.png'),
(20, 'Курсовая товароведение', 'Monday 14th of December 2020', 'km1305', '2020-12-14_13-39-04.png'),
(21, 'Курсовая товароведение', 'Monday 14th of December 2020', 'km1305', '2020-12-14_13-39-24.png'),
(22, 'Курсовая товароведение', 'Monday 14th of December 2020', 'km1306', '2020-12-14_13-42-55.png'),
(23, 'Курсовая товароведение', 'Monday 14th of December 2020', 'km1306', '2020-12-14_13-43-12.png'),
(24, 'Курсовая товароведение', 'Monday 14th of December 2020', 'km1314', '2020-12-14_13-45-33.png'),
(25, 'Маркетинг', 'Monday 14th of December 2020', 'km1314', '2020-12-14_13-49-26.png'),
(30, 'web-программирование', 'Monday 14th of December 2020', 'pk1304', '1304web5.jpg'),
(32, 'Основы страхования', 'Monday 14th of December 2020', 'bd1008', '78c11bc0-ba71-4dde-8dc3-2164989ca363.jpg'),
(35, 'Основы управления лог. процессами', 'Monday 14th of December 2020', 'log1310', '2020-12-14_17-47-25.png'),
(36, 'Основы управления лог. процессами', 'Monday 14th of December 2020', 'log1310', '2020-12-14_17-47-43.png'),
(38, 'Оценка инвестиционных проектов', 'Monday 14th of December 2020', 'log1201-1', 'invest12011.jpg'),
(45, 'Финансы , денежное обращение и кредит ', 'Tuesday 15th of December 2020', 'log1310', '2 Ведомость гр 1310 Финансы  .jpg'),
(47, 'Финансы , денежное обращение и кредит ', 'Tuesday 15th of December 2020', 'log1310', '1 Ведомость  гр1310 Финансы .jpg'),
(50, 'бизнес-планирование', 'Tuesday 15th of December 2020', 'bd1308', 'bd.png'),
(51, 'Опт. проц. транспортировки', 'Tuesday 15th of December 2020', 'log1309', '1309 ТРАНСПОРТ.docx'),
(52, 'Опт. проц. транспортировки', 'Tuesday 15th of December 2020', 'log1313', '1313 Транспорт.docx'),
(53, 'Оптим. проц. транспортировки', 'Tuesday 15th of December 2020', 'log1311', '1311 ТРАНСПОРТ.docx'),
(55, 'Оптим. процессов транспортировки', 'Tuesday 15th of December 2020', 'log1312', '1312 ТРАНСПОРТ.docx'),
(56, 'Зачёт Теоретические ос товароведения', 'Tuesday 15th of December 2020', 'km1306', '1306Теоретические основы товароведения.docx'),
(58, 'Статистика', 'Tuesday 15th of December 2020', 'log1313', 'stat1313.jpg'),
(64, 'русский язык и культура речи', 'Tuesday 15th of December 2020', 'km1005', '1005 КМ.docx'),
(65, 'БЖД', 'Tuesday 15th of December 2020', 'log111', 'log111bzd.pdf'),
(66, 'БЖД', 'Tuesday 15th of December 2020', 'kmm111', 'kmm111bzd.pdf'),
(68, 'Основы предпринимательской деятельности', 'Tuesday 15th of December 2020', 'km1202', '1202 КМ+ТОВ.jpg'),
(69, 'Менеджмент ', 'Tuesday 15th of December 2020', 'log111', 'E5E05944-DFEB-4AFC-94BD-0F376A73884C.jpeg'),
(70, 'Менеджмент', 'Tuesday 15th of December 2020', 'kmm111', '6D0391AD-1972-4245-ABB9-2628C3DEE80F.jpeg'),
(71, 'Оптимизация ресурсов', 'Wednesday 16th of December 2020', 'log1309', '1309 РЕСУРСЫ.docx'),
(72, 'Оптимизация ресурсов', 'Wednesday 16th of December 2020', 'log1310', '1310 РЕСУРСЫ.docx'),
(78, 'ТРПО ПК1204', 'Wednesday 16th of December 2020', 'pk1204', 'ТРПО 1204.JPG'),
(80, 'Оценка рентабельности систем', 'Wednesday 16th of December 2020', 'log1312', '1312rentsys.pdf'),
(81, 'Технология разработки ПО', 'Wednesday 16th of December 2020', 'pk1204', '1204техразрпо.doc'),
(85, 'Психология и этика делового общения          ', 'Wednesday 16th of December 2020', 'km1005', '1005 КМ.docx'),
(86, 'Психология и этика делового общения          ', 'Wednesday 16th of December 2020', 'km1006', '1006 КМ.docx'),
(92, 'Тех средства', 'Wednesday 16th of December 2020', 'pk111', 'TSpk111.docx'),
(95, 'анализ финансово-хозяйственной деятельности', 'Wednesday 16th of December 2020', 'log1201-2', 'финхоз12012.jpeg'),
(96, 'анализ финансово-хозяйственной деятельности', 'Wednesday 16th of December 2020', 'log1201-1', 'финхоз12011.jpeg'),
(97, 'русский язык и культура речи', 'Wednesday 16th of December 2020', 'km1006', '1006.docx'),
(98, 'Аудит', 'Wednesday 16th of December 2020', 'ek1307', '_1307_Аудит.pdf'),
(100, 'Оценка инвестиционных проектов', 'Wednesday 16th of December 2020', 'log1201-2', 'оценка1201-2.pdf'),
(102, 'Финансы денежное обращение и кредит', 'Thursday 17th of December 2020', 'log1201-1', 'Финансы1201-1.jpg'),
(103, 'Метрология, стандартизация, подтверждение соо', 'Thursday 17th of December 2020', 'km1306', '1306КМ.docx'),
(104, 'Метрология, стандартизация, подтверждение соо', 'Thursday 17th of December 2020', 'km1314', '1314КМ.docx'),
(105, 'Метрология, стандартизация, подтверждение соо', 'Thursday 17th of December 2020', 'km1305', '1305КМ.docx'),
(107, 'Системное и прикладное программирование', 'Thursday 17th of December 2020', 'pk1304', 'сист и прил1304.jpg'),
(108, 'Операционные системы', 'Thursday 17th of December 2020', 'pk111', 'оперсистпк11112.jpg'),
(109, 'АФХД', 'Thursday 17th of December 2020', 'ek1307', '9A4B4A22-045D-4B43-AA46-5BEAB83B2BCD.jpeg'),
(110, 'Финансы, налоги и налогообложение', 'Thursday 17th of December 2020', 'km1305', 'финантсы 1305.docx'),
(111, 'БЖД', 'Thursday 17th of December 2020', 'ek1007', 'ЭК1007БЖД.pdf'),
(112, 'БЖД', 'Thursday 17th of December 2020', 'bd1008', 'БД1008БЖД.pdf'),
(115, 'Финансы ден.обр. и кредит', 'Friday 18th of December 2020', 'log1311', '1311фин и ден.docx'),
(116, 'Финансы ден.обр. и кредит', 'Friday 18th of December 2020', 'log1313', '1313 фин и ден.docx'),
(118, 'Документирование и сертификация', 'Friday 18th of December 2020', 'pk1304', 'докум и серт 1304.jpg'),
(119, 'Курсовая работа. Основы программирования', 'Friday 18th of December 2020', 'pk1204', 'КР1204.jpg'),
(120, 'Статистика', 'Friday 18th of December 2020', 'log1310', 'Хрусталева1310004.jpg'),
(121, 'Теор.основы товароведения', 'Friday 18th of December 2020', 'km1202', '1202теоросн.docx'),
(122, 'организация кредитной работы', 'Friday 18th of December 2020', 'bd1308', '1308крОКР.docx'),
(123, 'Финансы, налоги и налогообложение', 'Friday 18th of December 2020', 'km1306', '1306финнал.docx'),
(124, 'Финансы, налоги и налогообложение', 'Friday 18th of December 2020', 'km1314', '1314финнал.docx'),
(125, 'Основы управления логистическими процессами', 'Friday 18th of December 2020', 'log1201-2', '12012упрлог.docx'),
(126, 'внешняя эк.деятельность ком.банков', 'Friday 18th of December 2020', 'bd1308', '1308внешэконом деят.docx'),
(127, 'Экономика организации', 'Friday 18th of December 2020', 'kmm111', 'кмм111эконом.docx'),
(128, 'таможенное дело', 'Friday 18th of December 2020', 'log1309', '1309тамождел.docx'),
(129, 'Таможенное дело', 'Friday 18th of December 2020', 'log1312', '1312тамождел.docx'),
(130, 'Маркетинг', 'Saturday 19th of December 2020', 'log111', 'лог111маркетинг.docx'),
(131, 'Русский язык и культура речи', 'Saturday 19th of December 2020', 'kmm111', '111кммрусяз.docx'),
(132, 'Русский язык и культура речи', 'Saturday 19th of December 2020', 'pk111', '111пкрусяз.docx'),
(135, 'ОТ', 'Monday 21st of December 2020', 'km1006', '1006 21 дек дз.jpg'),
(136, 'ОКД КР', 'Monday 21st of December 2020', 'km1202', '1202КМ ОКД  КР 11 дек.docx'),
(137, 'Высшая математика', 'Monday 21st of December 2020', 'log111', 'Хрусталевалог111006.jpg'),
(138, 'инфоком.системы и сети', 'Monday 21st of December 2020', 'pk1204', 'киселев1204007.jpg'),
(139, 'Высшая математика', 'Monday 21st of December 2020', 'kmm111', 'хрусталевакмм111008.jpg'),
(140, 'Оптимизация процессов транспортировки', 'Monday 21st of December 2020', 'log1201-1', '12011транспорт.docx'),
(141, 'Оптимизация процессов транспортировки', 'Monday 21st of December 2020', 'log1310', '1310транспорт.docx'),
(142, 'Оценка инвестиционных проектов', 'Monday 21st of December 2020', 'log1313', '1313оценкаинвест.pdf'),
(143, 'Оценка рентабельности систем складирования', 'Monday 21st of December 2020', 'log1311', '1311оценрентсклад.pdf'),
(144, 'Основы управления логистическими процессами', 'Monday 21st of December 2020', 'log1309', '1309оценкарент.pdf'),
(145, 'Экономика организации', 'Monday 21st of December 2020', 'km1005', '1005экономорг.docx'),
(147, 'Бизнес-планирование', 'Monday 21st of December 2020', 'km1314', '1314бизнесплан.docx'),
(148, 'Финансы, денежное обращение и кредит', 'Monday 21st of December 2020', 'ek1307', '1307Финансы.jpg'),
(149, 'Русский язык и культура речи', 'Monday 21st of December 2020', 'ek1007', '1007русяз.docx'),
(150, 'Бизнес-планирование', 'Monday 21st of December 2020', 'ek1307', '1307бизнесплан.jpeg'),
(151, 'АФХД', 'Monday 21st of December 2020', 'ek1307', '1307АФХД.jpeg'),
(152, 'Организация торговли', 'Monday 21st of December 2020', 'km1005', '1005оргторг.docx'),
(153, 'Рисунок', 'Tuesday 22nd of December 2020', 'din1001', '1001 ДИН Рисунок.jpg'),
(154, 'БЖД', 'Tuesday 22nd of December 2020', 'pk111', 'пк111БЖД.pdf'),
(155, 'Налоги и налогооблажение', 'Tuesday 22nd of December 2020', 'log1201-2', 'налоги12012-1ч.jpg'),
(156, 'Налоги и налогооблажение', 'Tuesday 22nd of December 2020', 'log1201-2', 'налоги12012-2ч.jpg'),
(157, 'Таможенное дело', 'Tuesday 22nd of December 2020', 'log1310', 'томоженное дело1310.docx'),
(158, 'Информационные технологии', 'Tuesday 22nd of December 2020', 'pk1003', '1003 ПК Инф.тех..jpg'),
(159, 'Информационные технологии', 'Tuesday 22nd of December 2020', 'pk1004', '1004  ПК Инф.тех..jpg'),
(160, 'Информатика', 'Tuesday 22nd of December 2020', 'log1013', '1013 ЛОГ Информатика.jpg'),
(161, 'Системное программирование', 'Tuesday 22nd of December 2020', 'pk1303', '1303 ПК Сист.прогр..jpg'),
(162, 'Системное программирование', 'Tuesday 22nd of December 2020', 'pk1304p', '1304 ПК Системное прогр..jpg'),
(163, 'Дизайн-проект', 'Tuesday 22nd of December 2020', 'din1401', '1401 ДИН Дизайн-проект.jpg'),
(165, 'Бизнес-планирование', 'Tuesday 22nd of December 2020', 'km1202', '1202бизнесплан.docx'),
(166, 'Маркетинг', 'Tuesday 22nd of December 2020', 'km1305', '1305маркетинг.docx'),
(167, 'Маркетинг', 'Tuesday 22nd of December 2020', 'km1306', '1306маркетинг.docx'),
(168, 'Менеджмент', 'Tuesday 22nd of December 2020', 'km1006', '1006менеджмент.docx'),
(169, 'Менеджмент', 'Tuesday 22nd of December 2020', 'km1005', '1005менеджмент.docx'),
(170, 'Теория алгоритмов', 'Wednesday 23rd of December 2020', 'pk111', 'хрусталевапк111алг009.jpg'),
(171, 'История', 'Wednesday 23rd of December 2020', 'log111', 'лог111история.docx'),
(172, 'Основы философии', 'Wednesday 23rd of December 2020', 'pk111', 'пк111оснфил.docx'),
(173, 'Оптимизация ресурсов предприятия', 'Wednesday 23rd of December 2020', 'log1312', '1312оптимрес.docx'),
(174, 'Психология и этика делового общения', 'Wednesday 23rd of December 2020', 'ek1007', '1007психиэт.docx'),
(175, 'Психология и этика делового общения ', 'Wednesday 23rd of December 2020', 'bd1008', '1008пихиэт.docx'),
(176, 'Имиджелогия', 'Wednesday 23rd of December 2020', 'bd1308', '1308имидж.docx'),
(177, 'Оценка рентабельности систем складирования', 'Wednesday 23rd of December 2020', 'log1201-1', '1201оцрент.pdf'),
(178, 'Инструментальные средства', 'Wednesday 23rd of December 2020', 'pk1204', '1204инструм.docx'),
(179, 'Основы информационной безопасности', 'Wednesday 23rd of December 2020', 'pk1304', '1304инфбез.docx'),
(180, 'Экономика организации', 'Wednesday 23rd of December 2020', 'km1006', '1006экономорг1.docx'),
(181, 'Дизайн-проект', 'Wednesday 23rd of December 2020', 'din1402', '1402 ДИН Дизайн-проект.jpg'),
(182, 'анализ финансово-хозяйственной деятельности', 'Wednesday 23rd of December 2020', 'log1313', '1313анализфинхоз.jpeg'),
(183, 'анализ финансово-хозяйственной деятельности', 'Wednesday 23rd of December 2020', 'log1312', '1312анализфинхоз.jpeg'),
(184, 'Статистика', 'Wednesday 23rd of December 2020', 'log1201-2', 'хрусталева1201-2стат010.jpg'),
(185, 'Рисунок', 'Wednesday 23rd of December 2020', 'din1002', '1002 ДИН Рисунок.jpg'),
(186, 'Бухгалтерский учет', 'Wednesday 23rd of December 2020', 'log1009', '1009 ЛОГ Бух.учет.jpg'),
(187, 'Бухгалтерский учет', 'Wednesday 23rd of December 2020', 'log1010', '1010 ЛОГ Бух.учет.jpg'),
(188, 'Информатика', 'Wednesday 23rd of December 2020', 'log1011', '1011 ЛОГ Информатика.jpg'),
(189, 'Информатика', 'Wednesday 23rd of December 2020', 'log1012', '1012 ЛОГ Информатика.jpg'),
(190, 'Дизайн-проект', 'Wednesday 23rd of December 2020', 'din1301', '1301 ДИН Дизайн-проект.jpg'),
(191, 'Дизайн-проект', 'Wednesday 23rd of December 2020', 'din1302', '1302 ДИН Дизайн-проект.jpg'),
(192, 'Веб-программирование', 'Wednesday 23rd of December 2020', 'pk1403', '1403 ПК Веб-прогр..jpg'),
(193, 'Веб-программирование', 'Wednesday 23rd of December 2020', 'pk1404', '1404 ПК Веб-прогр..jpg'),
(194, 'Основы программирования', 'Wednesday 23rd of December 2020', 'pk1003', '1003 ПК Основы прогр..jpg'),
(195, 'Основы программирования', 'Wednesday 23rd of December 2020', 'pk1004', '1004 ПК Основы прогр..jpg'),
(196, 'Правовое обеспечение профессиональной деятель', 'Wednesday 23rd of December 2020', 'log1013', '1013 ЛОГ ПОПД.jpg'),
(197, 'Дизайн-проект', 'Wednesday 23rd of December 2020', 'din1303', '1303 ДИН Дизайн-проект.jpg'),
(198, 'дизайн в интерьере и экстерьере', 'Wednesday 23rd of December 2020', 'din1401', '1401 ДИН Диз в инт-экст.jpg'),
(199, 'ДОУ', 'Wednesday 23rd of December 2020', 'bd1308', '1308ДОУ.docx'),
(200, 'Прикладное программирование', 'Thursday 24th of December 2020', 'pk1204', '24-12-2020-011.jpg'),
(201, 'Статистика', 'Thursday 24th of December 2020', 'log111', '24-12-2020-013.jpg'),
(202, 'Статистика', 'Thursday 24th of December 2020', 'kmm111', '24-12-2020-012.jpg'),
(203, 'Живопись', 'Friday 25th of December 2020', 'din1001', '1001 ДИН Живопись.jpg'),
(204, 'Правовое обеспечение профессиональной деятель', 'Friday 25th of December 2020', 'log1010', '1010 ЛОГ ПОПД.jpg'),
(205, 'Правовое обеспечение профессиональной деятель', 'Friday 25th of December 2020', 'log1012', '1012 ЛОГ ПОПД.jpg'),
(206, 'Ландшафтный дизайн', 'Friday 25th of December 2020', 'din1301', '1301 ДИН Ланд диз.jpg'),
(207, 'Ландшафтный дизайн', 'Friday 25th of December 2020', 'din1302', '1302 ДИН Ланд диз.jpg'),
(208, 'Дизайн-проект', 'Friday 25th of December 2020', 'din1303', '1303 ДИН Дизайн-проект.jpg'),
(209, 'Дизайн в интерьере и экстерьере', 'Friday 25th of December 2020', 'din1402', '1402 ДИН Диз в инт и экст.jpg'),
(210, 'анализ финансово-хозяйственной деятельности', 'Friday 25th of December 2020', 'log1311', '1311финхоз.jpeg'),
(211, 'анализ финансово-хозяйственной деятельности', 'Friday 25th of December 2020', 'log1309', '1309анализфинхоз.jpeg'),
(212, 'БЖД', 'Friday 25th of December 2020', 'km1006', '1006БЖД.pdf'),
(213, 'БЖД', 'Friday 25th of December 2020', 'km1005', '1006бжд11.pdf'),
(214, 'Оценка рентабельности систем складирования', 'Friday 25th of December 2020', 'log1313', '1313оценрент.pdf'),
(215, 'Налоги и налогооблажение', 'Friday 25th of December 2020', 'log1311', '1311налоги.docx'),
(216, 'Налоги и налогооблажение', 'Friday 25th of December 2020', 'log1309', '1309налоги.jpg'),
(217, 'Таможенное дело', 'Saturday 26th of December 2020', 'log1201-1', '12011таможенное дело.docx'),
(218, 'Оценка инвестиционных проектов', 'Saturday 26th of December 2020', 'log1310', '1310оцнкаинвестпр.docx'),
(219, 'анализ финансово-хозяйственной деятельности', 'Saturday 26th of December 2020', 'km1305', '1305анализфинхоз.jpeg'),
(220, 'анализ финансово-хозяйственной деятельности', 'Saturday 26th of December 2020', 'km1306', '1306анализфинхоз.jpeg'),
(221, 'анализ финансово-хозяйственной деятельности', 'Saturday 26th of December 2020', 'km1314', '1314анализфинхоз.jpeg'),
(222, 'Основы бухгалтерского учета', 'Saturday 26th of December 2020', 'ek1007', '1007оснбухуч.docx'),
(223, 'Финансы и налоги', 'Saturday 26th of December 2020', 'km1202', '1202фининалог.docx'),
(224, 'Математика', 'Saturday 26th of December 2020', 'bd1008', '1008математика.docx'),
(226, 'Основы контроля и оценки эффективности лог.си', 'Monday 28th of December 2020', 'log1201-1', '12011оснконтр.pdf'),
(227, 'Оценка инвестиционных проектов', 'Monday 28th of December 2020', 'log1309', '1309оценинвестпр.pdf'),
(228, 'История', 'Monday 28th of December 2020', 'pk111', 'пк111 история.docx'),
(229, 'Оценка инвестиционных проектов', 'Monday 28th of December 2020', 'log1311', '1311оценинвест.docx'),
(230, 'Основы контроля и оценка эффективности ЛП', 'Monday 28th of December 2020', 'log1201-2', '12012оснконтр.docx'),
(231, 'Основы контроля и оценка эффективности ЛП', 'Monday 28th of December 2020', 'log1312', '1312оснконт.docx'),
(232, 'Бухгалтерский учет', 'Monday 28th of December 2020', 'km1005', '1005бухучет.docx'),
(233, 'Бухгалтерский учет', 'Monday 28th of December 2020', 'km1006', '1006бухучет.docx'),
(234, 'Бух.технология проведения и оформления инвент', 'Monday 28th of December 2020', 'ek1307', '1307бухтех.docx'),
(235, 'Маркетинг', 'Monday 28th of December 2020', 'ek1007', '1007маркетинг.docx'),
(236, 'Товароведение продовольственных и непродоволь', 'Monday 28th of December 2020', 'km1202', '1202товар.docx'),
(237, 'Бизнес-планирование', 'Monday 28th of December 2020', 'km1305', '1305бизнесплан.docx'),
(238, 'Бизнес-планирование', 'Monday 28th of December 2020', 'km1306', '1306бизнесплан.docx'),
(239, 'КР товароведение продовольственных и непродов', 'Monday 28th of December 2020', 'km1202', '1202курсоваятовар.docx'),
(240, 'Правовое обеспечение профессиональной деятель', 'Tuesday 29th of December 2020', 'log1009', '1009 ЛОГ ПОПД.jpg'),
(241, 'Правовое обеспечение профессиональной деятель', 'Tuesday 29th of December 2020', 'log1011', '1011 ЛОГ ПОПД.jpg'),
(242, 'Основы управления лог. процессами', 'Tuesday 29th of December 2020', 'log1201-1', '12011оснупрлогпр.pdf'),
(243, 'Живопись', 'Tuesday 29th of December 2020', 'din1002', '1002 ДИН Живопись.jpg'),
(244, 'Теория алгоритмов', 'Tuesday 29th of December 2020', 'pk1003', '1003 ПК Теория алгор.jpg'),
(245, 'Теория алгоритмов', 'Tuesday 29th of December 2020', 'pk1004', '1004 ПК Теория алгор.jpg'),
(246, 'Основы философии', 'Tuesday 29th of December 2020', 'log1009', '1009 ЛОГ Основы философ.jpg'),
(247, 'БЖД', 'Tuesday 29th of December 2020', 'log1013', '1013 ЛОГ БЖД.jpg'),
(248, 'Ландшафтный дизайн', 'Tuesday 29th of December 2020', 'din1303', '1303 ДИН Ландш диз.jpg'),
(249, 'Психология творчества', 'Tuesday 29th of December 2020', 'din1401', '1401 ДИН Психолог творч.jpg'),
(250, 'Психология творчества', 'Tuesday 29th of December 2020', 'din1402', '1402 ДИН Психолог творч.jpg'),
(251, 'Системное программирование', 'Tuesday 29th of December 2020', 'pk1403', '1403 ПК Системн програм.jpg'),
(252, 'Системное программирование', 'Tuesday 29th of December 2020', 'pk1404', '1404 ПК Системн програм.jpg'),
(253, 'Архитектура компьютерных технологий', 'Tuesday 29th of December 2020', 'pk111', 'пк111арх5.jpg'),
(254, 'Выполнение в материале', 'Tuesday 29th of December 2020', 'din1001', '1001 ДИН Вып в матер.jpg'),
(255, 'Инструментальные средства разработки ПО', 'Tuesday 29th of December 2020', 'pk1304', '1304инстр6.jpg'),
(256, 'Русский язык и культура речи', 'Tuesday 29th of December 2020', 'log1009', '1009 ЛОГ Рус яз и КР.jpg'),
(257, 'Русский язык и культура речи', 'Tuesday 29th of December 2020', 'log1012', '1012 ЛОГ Рус яз и КР.jpg'),
(258, 'КТО дизайна', 'Tuesday 29th of December 2020', 'din1301', '1301 ДИН КТО диз.jpg'),
(259, 'КТО дизайна', 'Tuesday 29th of December 2020', 'din1302', '1302 ДИН КТО диз.jpg'),
(260, 'Высшая математика', 'Tuesday 29th of December 2020', 'din1303', '1303 ДИН Высш математ.jpg'),
(261, 'Маркетинг', 'Tuesday 29th of December 2020', 'kmm111', 'кмм111маркетинг.docx'),
(262, 'Таможенное дело', 'Tuesday 29th of December 2020', 'log1201-2', '12012тамож.docx'),
(263, 'ДОУ', 'Tuesday 29th of December 2020', 'log111', 'лог111доу.docx'),
(264, 'Основы управления лог. процессами', 'Tuesday 29th of December 2020', 'log1312', '1312оснупр.docx'),
(265, 'Оптимизация ресурсов предприятия', 'Tuesday 29th of December 2020', 'log1313', '1313оптим.docx'),
(266, 'Налоги и налогооблажение', 'Tuesday 29th of December 2020', 'log1310', '1310налоги.jpg'),
(267, 'ДОУ', 'Tuesday 29th of December 2020', 'km1006', '1006доу.jpg'),
(268, 'ДОУ', 'Tuesday 29th of December 2020', 'km1005', '1005ДОУ.jpg'),
(269, 'Бухгалтерский учет', 'Tuesday 29th of December 2020', 'log111', 'лог111бухучет.docx'),
(270, 'История', 'Wednesday 30th of December 2020', 'kmm111', 'кмм111история.docx'),
(271, 'БЖД', 'Wednesday 30th of December 2020', 'log1010', '1010 ЛОГ БЖД.jpg'),
(272, 'Рисунок', 'Wednesday 30th of December 2020', 'din1303', '1303 ДИН Рисунок.jpg'),
(273, 'Основы информационной безопасности', 'Wednesday 30th of December 2020', 'pk1303', '1303 ПК Осн инф безпасн.jpg'),
(274, 'Основы информационной безопасности', 'Wednesday 30th of December 2020', 'pk1304p', '1304 ПК Осн инф безоп.jpg'),
(275, 'Основы управления качеством', 'Wednesday 30th of December 2020', 'din1401', '1401 ДИН Осн упр качеств.jpg'),
(276, 'Основы управления качеством', 'Wednesday 30th of December 2020', 'din1402', '1402 ДИН Осн упр качеств.jpg'),
(278, 'Теория вероятностей и математическая статисти', 'Wednesday 30th of December 2020', 'pk1404', '1404 ПК Теор верятн.jpg'),
(279, 'Выполнение в материале', 'Wednesday 30th of December 2020', 'din1002', '1002 ДИН Выполн в матер.jpg'),
(280, 'Операционные системы и среды', 'Wednesday 30th of December 2020', 'pk1003', '1003 ПК Операц сист.jpg'),
(281, 'Русский язык и культура речи', 'Wednesday 30th of December 2020', 'log1010', '1010 ЛОГ Рус яз и КР.jpg'),
(282, 'Основы логистики', 'Wednesday 30th of December 2020', 'log1011', '1011 ЛОГ Основ логист.jpg'),
(283, 'Русский язык и культура речи', 'Wednesday 30th of December 2020', 'log1013', '1013 ЛОГ Рус яз и КР.jpg'),
(284, 'Теория вероятностей и математическая статисти', 'Wednesday 30th of December 2020', 'pk1403', '1403 ПК Теор вероятн.jpg'),
(285, 'Пр. основы БУ', 'Wednesday 30th of December 2020', 'ek1007', '1007проснов.docx'),
(286, 'Технология составления бух.отчетности', 'Wednesday 30th of December 2020', 'ek1307', '1307техсост.docx'),
(287, 'Финансы ден.обр. и кредит', 'Wednesday 30th of December 2020', 'bd1008', '1008фин.docx'),
(288, 'организация кредитной работы', 'Wednesday 30th of December 2020', 'bd1308', '1308оргкред.docx'),
(289, 'Русский язык и культура речи', 'Wednesday 30th of December 2020', 'log111', 'лог111русяз.docx'),
(290, 'Психология и этика делового общения ', 'Wednesday 30th of December 2020', 'kmm111', 'кмм111псих.docx'),
(291, 'Статистика', 'Wednesday 30th of December 2020', 'log1311', '1311статистика014.jpg'),
(292, 'Статистика', 'Wednesday 30th of December 2020', 'log1201-1', '12011стат015.jpg'),
(293, 'Налоги и налогооблажение', 'Thursday 31st of December 2020', 'ek1307', '1307налоги.jpg'),
(294, 'Организация безналичных расчетов', 'Thursday 31st of December 2020', 'bd1008', '1008оргбезнал.jpg'),
(295, 'Оценка рентабельности систем складирования', 'Thursday 31st of December 2020', 'log1309', '1309оцнкарент.pdf'),
(296, 'Оценка рентабельности систем складирования', 'Thursday 31st of December 2020', 'log1310', '1310оценрент.pdf'),
(298, 'Системное программирование', 'Monday 11th of January 2021', 'pk1204', '1204систпрогр7.jpg'),
(299, 'Оценка рентабельности систем складирования', 'Monday 11th of January 2021', 'log1201-2', '12012оценрент.pdf'),
(300, 'Оптимизация ресурсов предприятия', 'Monday 11th of January 2021', 'log1311', '1311оптимрес.docx'),
(301, 'Оценка инвестиционных проектов', 'Monday 11th of January 2021', 'log1312', '1312оценинвестпр.docx'),
(302, 'Основы контроля и оценка эффективности ', 'Monday 11th of January 2021', 'log1313', '1313оснконтр.docx'),
(303, 'Теор.основы товароведения', 'Monday 11th of January 2021', 'km1305', '1305теороснтов.docx'),
(304, 'Теор.основы товароведения', 'Monday 11th of January 2021', 'km1314', '1314теортов.rtf'),
(305, 'Элементы высшей математики', 'Monday 11th of January 2021', 'km1005', '1005элвышмат.docx'),
(306, 'Элементы высшей математики', 'Monday 11th of January 2021', 'ek1007', '1007элвышмат2.docx'),
(307, 'Элементы высшей математики', 'Monday 11th of January 2021', 'km1006', '1006элвышмат.docx'),
(308, 'Экономика организации', 'Monday 11th of January 2021', 'log111', 'лог111экономорг.docx'),
(309, 'Операционные системы и среды', 'Monday 11th of January 2021', 'pk1004', '1004 ПК Операц сист.jpg'),
(310, 'Русский язык и культура речи', 'Tuesday 12th of January 2021', 'din1001', '1001 ДИН Рус яз и КР.jpg'),
(311, 'Русский язык и культура речи', 'Tuesday 12th of January 2021', 'din1002', '1002 ДИН Рус яз и КР.jpg'),
(312, 'ТСИ', 'Tuesday 12th of January 2021', 'pk1003', '1003 ПК ТСИ.jpg'),
(313, 'ТСИ', 'Tuesday 12th of January 2021', 'pk1004', '1004 ПК ТСИ.jpg'),
(314, 'БЖД', 'Tuesday 12th of January 2021', 'log1009', '1009 ЛОГ БЖД.jpg'),
(316, 'БЖД', 'Tuesday 12th of January 2021', 'log1011', '1011 ЛОГ БЖД.jpg'),
(317, 'БЖД', 'Tuesday 12th of January 2021', 'log1012', '1012 ЛОГ БЖД.jpg'),
(318, 'Основы философии', 'Tuesday 12th of January 2021', 'log1013', '1013 ЛОГ Основы философ.jpg'),
(319, 'Рисунок', 'Tuesday 12th of January 2021', 'din1301', '1301 ДИН Рисунок.jpg'),
(320, 'Рисунок', 'Tuesday 12th of January 2021', 'din1302', '1302 ДИН Рисунок.jpg'),
(321, 'Рисунок', 'Tuesday 12th of January 2021', 'din1303', '1303 ДИН Рисунок.jpg'),
(322, 'Основы информационной безопасности', 'Tuesday 12th of January 2021', 'pk1304p', '1303 ПК Осн инф безпасн.jpg'),
(323, 'БЖД', 'Tuesday 12th of January 2021', 'pk1003', '1003 ПК БЖД.jpg'),
(324, 'Веб-программирование', 'Tuesday 12th of January 2021', 'pk1303', '1303 ПК Веб-програм.jpg'),
(325, 'Математика', 'Tuesday 12th of January 2021', 'dn11', 'ДН-11 Математика.jpg'),
(326, 'Русский язык', 'Tuesday 12th of January 2021', 'dn12', 'ДН-12 Рус яз.jpg'),
(327, 'Основы предпринимательской деятельности', 'Tuesday 12th of January 2021', 'km11', 'КМ-11 ОПД.jpg'),
(328, 'Математика', 'Tuesday 12th of January 2021', 'ek11', 'ЭК-11 Математика.jpg'),
(329, 'БЖД', 'Tuesday 12th of January 2021', 'pk1004', '1004 ПК БЖД.jpg'),
(330, 'Русский язык и культура речи', 'Tuesday 12th of January 2021', 'log1011', '1011 ЛОГ Рус яз и КР.jpg'),
(331, 'Выполнение в материале', 'Tuesday 12th of January 2021', 'din1301', '1301 ДИН Вып в матер.jpg'),
(332, 'Выполнение в материале', 'Tuesday 12th of January 2021', 'din1302', '1302 ДИН Вып в матер.jpg'),
(333, 'Выполнение в материале', 'Tuesday 12th of January 2021', 'din1303', '1303 ДИН Вып в матер.jpg'),
(334, 'Веб-программирование', 'Tuesday 12th of January 2021', 'pk1304p', '1304 ПК Веб-програм.jpg'),
(335, 'Информатика', 'Tuesday 12th of January 2021', 'log1009', '1009 ЛОГ Информатика.jpg'),
(336, 'Информатика', 'Tuesday 12th of January 2021', 'log1010', '1010 ЛОГ Информатика.jpg'),
(338, 'Основы логистики', 'Tuesday 12th of January 2021', 'log1013', '1013 ЛОГ Основ логист.jpg'),
(339, 'Теор.основы товароведения', 'Tuesday 12th of January 2021', 'km1005', '1005теороснтов.docx'),
(340, 'Теор.основы товароведения', 'Tuesday 12th of January 2021', 'km1006', '1006теороснтов.docx'),
(341, 'Организация бухучета в банке ', 'Tuesday 12th of January 2021', 'bd1308', '1308оргбухуч.docx'),
(343, 'АФХД', 'Tuesday 12th of January 2021', 'km1202', '1202афхд1.JPG'),
(344, 'АФХД', 'Tuesday 12th of January 2021', 'km1202', '1202афхд2.JPG'),
(345, 'АФХД', 'Tuesday 12th of January 2021', 'bd1008', '1008афхд.docx'),
(346, 'Практические основы БУ имущества организации', 'Tuesday 12th of January 2021', 'ek1007', '1007практосн.docx'),
(347, 'Основы анализа бухгалтерской отчетности', 'Tuesday 12th of January 2021', 'ek1307', '1307оснанализ.docx'),
(348, 'Основы контроля и оценка эффективности ЛП', 'Tuesday 12th of January 2021', 'log1309', '1309оснконтр.docx'),
(349, 'Оптимизация ресурсов предприятия', 'Tuesday 12th of January 2021', 'log1201-1', '12011оптим.docx'),
(350, 'Основы управления лог. процессами', 'Tuesday 12th of January 2021', 'log1311', '1311оснупрлог.docx'),
(351, 'Основы управления лог. процессами', 'Tuesday 12th of January 2021', 'log111', '1313оснупр.docx'),
(352, 'Налоги и налогооблажение', 'Tuesday 12th of January 2021', 'log1312', '1312налоги.docx'),
(353, 'Высшая математика', 'Wednesday 13th of January 2021', 'pk111', 'пк111вышмат.jpg'),
(354, 'Технология разр. и защиты БД', 'Wednesday 13th of January 2021', 'pk1304', '1304БД.jpg'),
(355, 'Материаловедение', 'Wednesday 13th of January 2021', 'din1001', '1001 ДИН Материаловед.jpg'),
(356, 'Материаловедение', 'Wednesday 13th of January 2021', 'din1002', '1002 ДИН Материаловед.jpg'),
(359, 'Основы философии', 'Wednesday 13th of January 2021', 'log1011', '1011 ЛОГ Основ философ.jpg'),
(361, 'Компьютерная графика', 'Wednesday 13th of January 2021', 'din1401', '1401 ДИН Комп граф.jpg'),
(362, 'Компьютерная графика', 'Wednesday 13th of January 2021', 'din1402', '1402 ДИН Комп граф.jpg'),
(363, 'Математика', 'Wednesday 13th of January 2021', 'pk111', 'ПК-11 Математ.jpg'),
(364, 'Компьютерные сети', 'Wednesday 13th of January 2021', 'pk1003', '1003 ПК Комп сети.jpg'),
(365, 'Компьютерные сети', 'Wednesday 13th of January 2021', 'pk1004', '1004 ПК Комп сети.jpg'),
(366, 'Основы философии', 'Wednesday 13th of January 2021', 'log1012', '1012 ЛОГ Основ философ.jpg'),
(367, 'Основы философии', 'Wednesday 13th of January 2021', 'din1301', '1301 ДИН Основ философ.jpg'),
(368, 'БЖД', 'Wednesday 13th of January 2021', 'din1302', '1302 ДИН БЖД.jpg'),
(369, 'БЖД', 'Wednesday 13th of January 2021', 'din1303', '1303 ДИН БЖД.jpg'),
(370, 'Техническая разработка ПО', 'Wednesday 13th of January 2021', 'pk1303', '1303 ПК Тех разраб ПО.jpg'),
(371, 'Техническая разработка и защита БД', 'Wednesday 13th of January 2021', 'pk1304p', '1304 ПК Тех рахр и защ БД.jpg'),
(372, 'Документирование и сертификация', 'Wednesday 13th of January 2021', 'pk1403', '1403 ПК Док и серт-я.jpg'),
(373, 'Документирование и сертификация', 'Wednesday 13th of January 2021', 'pk1404', '1404 ПК Док и серт-я.jpg'),
(375, 'Русский язык', 'Wednesday 13th of January 2021', 'bd11', 'БД-11 Рус яз.jpg'),
(376, 'Математика', 'Wednesday 13th of January 2021', 'dn12', 'ДН-12 Математ.jpg'),
(377, 'Основы предпринимательской деятельности', 'Wednesday 13th of January 2021', 'km12', 'КМ-12 ОПД.jpg'),
(378, 'Математика', 'Wednesday 13th of January 2021', 'log11', 'ЛОГ-11 Математ.jpg'),
(379, 'Основы экономики', 'Wednesday 13th of January 2021', 'log12', 'ЛОГ-12 Основ эконом.jpg'),
(380, 'Русский язык', 'Wednesday 13th of January 2021', 'log13', 'ЛОГ-13 Рус яз.jpg'),
(381, 'Русский язык', 'Wednesday 13th of January 2021', 'log14', 'ЛОГ-14 Рус яз.jpg'),
(382, 'Русский язык', 'Wednesday 13th of January 2021', 'pk12', 'ПК-12 Рус яз.jpg'),
(383, 'Оптимизация процессов транспортировки', 'Wednesday 13th of January 2021', 'log1201-2', '12012оптим.pdf'),
(384, 'Основы философии', 'Wednesday 13th of January 2021', 'kmm111', 'кмм111оснфил.docx'),
(385, 'Основы философии', 'Wednesday 13th of January 2021', 'log111', 'лог111оснфил.docx'),
(386, 'Правовое обеспечение проф.деятельности', 'Wednesday 13th of January 2021', 'log111', 'лог111провобеспеч.png'),
(387, 'Логистика', 'Wednesday 13th of January 2021', 'km1305', '1305логистика.docx'),
(388, 'Логистика', 'Wednesday 13th of January 2021', 'km1306', '1306логистика.docx'),
(389, 'Логистика', 'Wednesday 13th of January 2021', 'km1314', '1314логистика.docx'),
(390, 'организация кредитной работы', 'Wednesday 13th of January 2021', 'bd1008', '1008оргкредраб.docx'),
(391, 'Бухгалтерский учет', 'Wednesday 13th of January 2021', 'kmm111', 'кмм111бухучет.docx'),
(392, 'Основы контроля и оценка эффективности ЛС', 'Thursday 14th of January 2021', 'log1311', 'лог1311оснконтр.png'),
(393, 'Финансы ден.обр. и кредит', 'Thursday 14th of January 2021', 'log1312', '1312фин.docx'),
(394, 'Финансы ден.обр. и кредит', 'Thursday 14th of January 2021', 'log1309', '1309фин.docx'),
(395, 'Организация безналичных расчетов', 'Thursday 14th of January 2021', 'bd1308', '1308оргбезнал.docx'),
(396, 'Организация коммерческой деятельности', 'Thursday 14th of January 2021', 'km1006', '1006окд.docx'),
(397, 'Организация коммерческой деятельности', 'Thursday 14th of January 2021', 'km1005', '1005окд.docx'),
(398, 'Организация расчетов с бюджетом и внеб.фондам', 'Thursday 14th of January 2021', 'ek1307', '1307расчеты.docx'),
(399, 'Бухгалтерский учет', 'Thursday 14th of January 2021', 'bd1008', '1008бухучет.docx'),
(400, 'Маркетинг', 'Friday 15th of January 2021', 'log1010', '1010 ЛОГ Маркетинг.heic'),
(401, 'Маркетинг', 'Friday 15th of January 2021', 'log1009', '1009 ЛОГ Маркетинг.heic'),
(402, 'Маркетинг', 'Friday 15th of January 2021', 'log1013', '1013 ЛОГ Маркетинг.heic'),
(403, 'Менеджмент', 'Friday 15th of January 2021', 'din1401', '1401 ДИН Менеджмент.jpg'),
(404, 'Менеджмент', 'Friday 15th of January 2021', 'din1402', '1402 ДИН Менеджмент.jpg'),
(405, 'Статистика', 'Friday 15th of January 2021', 'log1309', '1309статистика5.jpg'),
(406, 'Русский язык', 'Friday 15th of January 2021', 'dn11', 'ДН-11 Рус яз.jpg'),
(407, 'Математика', 'Friday 15th of January 2021', 'km11', 'КМ-11 Математ.jpg'),
(408, 'Дизайн-проект', 'Friday 15th of January 2021', 'din1001', '1001 ДИН Диз-проект.jpg'),
(409, 'Дизайн-проект', 'Friday 15th of January 2021', 'din1002', '1002 ДИН Диз-проект.jpg'),
(410, 'Статистика', 'Friday 15th of January 2021', 'log1011', '1011 ЛОГ Статист.jpg'),
(411, 'Бухгалтерский учет', 'Friday 15th of January 2021', 'log1013', '1013 ЛОГ Бух учет.jpg'),
(412, 'Живопись', 'Friday 15th of January 2021', 'din1303', '1303 ДИН Живопись.jpg'),
(413, 'Математика', 'Friday 15th of January 2021', 'km12', 'КМ-12 Математ.jpg'),
(414, 'Математика', 'Friday 15th of January 2021', 'log14', 'ЛОГ-14 Математ.jpg'),
(415, 'Русский язык', 'Friday 15th of January 2021', 'ek11', 'ЭК-11 Рус язык.jpg'),
(416, 'Оптимизация ресурсов предприятия', 'Friday 15th of January 2021', 'log1201-2', '12012оптимрес.pdf'),
(417, 'Налоги и налогооблажение', 'Friday 15th of January 2021', 'log1313', '1313налоги.docx'),
(418, 'Налоги и налогооблажение', 'Friday 15th of January 2021', 'log1201-1', '12011налоги.docx'),
(419, 'Основы контроля и оценка эффективности ЛС', 'Friday 15th of January 2021', 'log1310', '1310оснконтр.png'),
(420, 'Правовое обеспечение проф.деятельности', 'Friday 15th of January 2021', 'kmm111', 'кмм111правобеспеч.png'),
(421, 'Правовое обеспечение проф.деятельности', 'Friday 15th of January 2021', 'pk111', 'пк111правобеспеч.png'),
(422, 'Статистика', 'Friday 15th of January 2021', 'log1312', '1312статистика6.jpg'),
(423, 'Основы логистики', 'Friday 15th of January 2021', 'log111', 'лог111оснлог.docx'),
(424, 'Таможенное дело', 'Friday 15th of January 2021', 'log1311', 'лог1311Таможенное дело.docx'),
(425, 'Таможенное дело', 'Friday 15th of January 2021', 'log1313', 'лог1313темождело.docx'),
(426, 'Техническое оснащение торговых предприятий и ', 'Friday 15th of January 2021', 'km1006', '1006техосн.docx'),
(427, 'Техническое оснащение торговых предприятий и ', 'Friday 15th of January 2021', 'km1005', '1005техосн.docx'),
(428, 'Товароведение продовольственных и непродоволь', 'Friday 15th of January 2021', 'km1305', '1305товароведение.docx'),
(429, 'Организация коммерческой деятельности', 'Friday 15th of January 2021', 'km1202', '1202окд.docx'),
(430, 'Товароведение продовольственных и непродоволь', 'Friday 15th of January 2021', 'km1306', '1306товар.docx'),
(431, 'Товароведение продовольственных и непродоволь', 'Friday 15th of January 2021', 'km1314', '1314товар.docx'),
(432, 'Экономика организации', 'Friday 15th of January 2021', 'ek1007', '1007экономорг.JPG'),
(433, 'Курсовая работа Управление логистическими про', 'Friday 15th of January 2021', 'log1311', '1311кр1.docx'),
(434, 'Курсовая работа Оценка эффективности логистич', 'Friday 15th of January 2021', 'log1311', 'лог1311кр2.docx'),
(435, 'Курсовая работа Управление логистическими про', 'Friday 15th of January 2021', 'log1312', '1312кр3.docx'),
(436, 'Курсовая работа Оценка эффективности логистич', 'Friday 15th of January 2021', 'log1312', '1312кр4.docx'),
(437, 'Курсовая работа Управление логистическими про', 'Friday 15th of January 2021', 'log1313', '1313кр5.docx'),
(438, 'Курсовая работа Оценка эффективности логистич', 'Friday 15th of January 2021', 'log1313', '1313кр6.docx'),
(439, 'Курсовая работа Управление логистическими про', 'Friday 15th of January 2021', 'log1201-1', '12011кр7.docx'),
(440, 'Курсовая работа Оценка эффективности логистич', 'Friday 15th of January 2021', 'log1201-1', '12011кр8.docx'),
(441, 'ПМ.04', 'Monday 18th of January 2021', 'pk1003', '1003 ПК ПМ04.jpg'),
(442, 'ПМ.04', 'Monday 18th of January 2021', 'pk1004', '1004 ПК ПМ04.jpg'),
(443, 'ДОУ', 'Tuesday 19th of January 2021', 'log1009', '1009 ЛОГ ДОУ.heic'),
(444, 'ДОУ', 'Tuesday 19th of January 2021', 'log1010', '1010 ЛОГ ДОУ.heic'),
(445, 'Статистика', 'Tuesday 19th of January 2021', 'log1012', '1012 ЛОГ Статист.jpg'),
(446, 'Живопись', 'Tuesday 19th of January 2021', 'din1301', '1301 ДИН Живопись.jpg'),
(447, 'Живопись', 'Tuesday 19th of January 2021', 'din1302', '1302 ДИН Живопись.jpg'),
(448, 'Методы ТЭП', 'Tuesday 19th of January 2021', 'din1401', '1401 ДИН Методы ТЭП.jpg'),
(449, 'Методы ТЭП', 'Tuesday 19th of January 2021', 'din1402', '1402 ДИН Методы ТЭП.jpg'),
(450, 'Инструментальные средства ПО', 'Tuesday 19th of January 2021', 'pk1403', '1403 ПК Инстр средств ПО.jpg'),
(451, 'Инструментальные средства ПО', 'Tuesday 19th of January 2021', 'pk1404', '1404 ПК Инстр средств ПО.jpg'),
(452, 'История ИЗО', 'Tuesday 19th of January 2021', 'din1001', '1001 ДИН История ИЗО.jpg'),
(453, 'История ИЗО', 'Tuesday 19th of January 2021', 'din1002', '1002 ДИН История ИЗО.jpg'),
(454, 'Основы логистики', 'Tuesday 19th of January 2021', 'log1009', '1009 ЛОГ Основ логист.jpg'),
(455, 'Основы логистики', 'Tuesday 19th of January 2021', 'log1010', '1010 ЛОГ Основ логист.jpg'),
(456, 'Элементы высшей математики', 'Tuesday 19th of January 2021', 'log1011', '1011 ЛОГ Элем высш мат.jpg'),
(457, 'Элементы высшей математики', 'Tuesday 19th of January 2021', 'log1012', '1012 ЛОГ Элем высш мат.jpg'),
(458, 'Высшая математика', 'Tuesday 19th of January 2021', 'log1013', '1013 ЛОГ Высш матем.jpg'),
(459, 'ИКСИС', 'Tuesday 19th of January 2021', 'pk1303', '1303 ПК ИКСИС.jpg'),
(460, 'ИКСИС', 'Tuesday 19th of January 2021', 'pk1304p', '1304 ПК ИКСИС.jpg'),
(461, 'Математика', 'Tuesday 19th of January 2021', 'bd11', 'БД-11 Матем.jpg'),
(462, 'Рисунок', 'Tuesday 19th of January 2021', 'dn12', 'ДН-12 Рисунок.jpg'),
(463, 'Основы экономики', 'Tuesday 19th of January 2021', 'log13', 'ЛОГ-13 Основы эконом.jpg'),
(464, 'Русский язык', 'Tuesday 19th of January 2021', 'log11', 'ЛОГ-11 Рус яз.jpg'),
(465, 'Информатика', 'Tuesday 19th of January 2021', 'pk11', 'ПК-11 Информат.jpg'),
(466, 'Математика', 'Tuesday 19th of January 2021', 'pk12', 'ПК-12 Математ.jpg'),
(467, 'Русский язык и культура речи', 'Wednesday 20th of January 2021', 'pk1003', '1003 ПК Рус яз и КР.jpg'),
(468, 'Русский язык и культура речи', 'Wednesday 20th of January 2021', 'pk1004', '1004 ПК Рус яз и КР.jpg'),
(469, 'Маркетинг', 'Wednesday 20th of January 2021', 'din1301', '1301 ДИН Маркетинг.jpg'),
(470, 'Маркетинг', 'Wednesday 20th of January 2021', 'din1302', '1302 ДИН Маркетинг.jpg'),
(471, 'Маркетинг', 'Wednesday 20th of January 2021', 'din1303', '1303 ДИН Маркетинг.jpg'),
(472, 'Основы проектной графики', 'Wednesday 20th of January 2021', 'din1401', '1401 ДИН ОПГ.jpg'),
(473, 'Основы проектной графики', 'Wednesday 20th of January 2021', 'din1402', '1402 ДИН ОПГ.jpg'),
(474, 'Основы экономики', 'Wednesday 20th of January 2021', 'pk1403', '1403 ПК Основ эконом.jpg'),
(475, 'Рисунок', 'Wednesday 20th of January 2021', 'dn11', 'ДН-11 Рисунок.jpg'),
(476, 'Математика', 'Wednesday 20th of January 2021', 'log12', 'ЛОГ-12 Математика.jpg'),
(477, 'Основы экономики', 'Friday 22nd of January 2021', 'pk1404', '1404 ПК Основ эконом.jpg'),
(478, 'История дизайна', 'Friday 22nd of January 2021', 'din1001', '1001 ДИН Истор дизайн.jpg'),
(479, 'История дизайна', 'Friday 22nd of January 2021', 'din1002', '1002 ДИН Истор дизайн.jpg'),
(480, 'Статистика', 'Friday 22nd of January 2021', 'log1009', '1009 ЛОГ Статист.jpg'),
(481, 'Статистика', 'Friday 22nd of January 2021', 'log1010', '1010 ЛОГ Статист.jpg'),
(482, 'Маркетинг', 'Friday 22nd of January 2021', 'log1011', '1011 ЛОГ Маркет.heic'),
(483, 'Маркетинг', 'Friday 22nd of January 2021', 'log1012', '1012 ЛОГ Маркет.heic'),
(484, 'Статистика', 'Friday 22nd of January 2021', 'log1013', '1013 ЛОГ Статист.jpg'),
(485, 'БЖД', 'Friday 22nd of January 2021', 'din1301', '1301 ДИН БЖД.jpg'),
(486, 'Элементы математической логики', 'Friday 22nd of January 2021', 'pk1303', '1303 ПК Элем мат лог.jpg'),
(487, 'Элементы математической логики', 'Friday 22nd of January 2021', 'pk1304p', '1304 ПК лем мат лог.jpg'),
(488, 'Русский язык', 'Friday 22nd of January 2021', 'km11', 'КМ-11 Рус яз.jpg'),
(489, 'Элементы высшей математики', 'Monday 25th of January 2021', 'pk1003', '1003 ПК Элем высш мат.jpg'),
(490, 'Элементы высшей математики', 'Monday 25th of January 2021', 'pk1004', '1004 ПК Элем высш мат.jpg'),
(491, 'Элементы высшей математики', 'Monday 25th of January 2021', 'log1009', '1009 ЛОГ Элем высш мат.jpg'),
(492, 'Элементы высшей математики', 'Monday 25th of January 2021', 'log1010', '1010 ЛОГ Элем высш мат.jpg'),
(493, 'Высшая математика', 'Monday 25th of January 2021', 'din1301', '1301 ДИН Высш мат.jpg'),
(494, 'Основы философии', 'Monday 25th of January 2021', 'din1301', '1301 ДИН Основ философ.jpg'),
(495, 'КТО дизайна', 'Monday 25th of January 2021', 'din1303', '1303 ДИН КТО.jpg'),
(496, 'Основы философии', 'Monday 25th of January 2021', 'din1303', '1303 ДИН Основ философ.jpg'),
(497, 'Инструментальные средства ПО', 'Monday 25th of January 2021', 'pk1303', '1303 ПК Инстр ср-ва ПО.jpg'),
(498, 'Инструментальные средства ПО', 'Monday 25th of January 2021', 'pk1304p', '1304 ПК Инстр ср-ва ПО.jpg'),
(499, 'Стандартизация', 'Monday 25th of January 2021', 'din1401', '1401 ДИН Стандарт.jpg'),
(500, 'Ландшафтный дизайн', 'Monday 25th of January 2021', 'din1401', '1401ДИН Ландш диз.jpg'),
(501, 'Ландшафтный дизайн', 'Monday 25th of January 2021', 'din1402', '1402 ДИН Ландш диз.jpg'),
(502, 'Стандартизация', 'Monday 25th of January 2021', 'din1402', '1402 ДИН Стандарт.jpg'),
(503, 'Техническая разработка ПО', 'Monday 25th of January 2021', 'pk1403', '1403 ПК Тех разр ПО.jpg'),
(504, 'Техническая разработка ПО', 'Monday 25th of January 2021', 'pk1404', '1404 ПК Тех разр ПО.jpg'),
(505, 'Основы экономики', 'Monday 25th of January 2021', 'bd11', 'БД-11 Основ эконом.jpg'),
(506, 'Живопись', 'Monday 25th of January 2021', 'dn11', 'ДН-11 Живопись.jpg'),
(507, 'Живопись', 'Monday 25th of January 2021', 'dn12', 'ДН-12 Живопись.jpg'),
(508, 'Основы экономики', 'Monday 25th of January 2021', 'log11', 'ЛОГ-11 Основ эконом.jpg'),
(509, 'Русский язык', 'Monday 25th of January 2021', 'log12', 'ЛОГ-12 Рус яз.jpg'),
(510, 'Математика', 'Monday 25th of January 2021', 'log13', 'ЛОГ-13 Математ.jpg'),
(511, 'Основы экономики', 'Monday 25th of January 2021', 'log14', 'ЛОГ-14 Основ эконом.jpg'),
(512, 'Русский язык', 'Monday 25th of January 2021', 'pk11', 'ПК-11 Рус яз.jpg'),
(513, 'Информатика', 'Monday 25th of January 2021', 'pk12', 'ПК-12 Информатика.jpg'),
(514, 'Основы экономики', 'Monday 25th of January 2021', 'ek11', 'ЭК-11 Основ эконом.jpg'),
(515, 'ДОУ', 'Tuesday 26th of January 2021', 'log1011', '1011 ЛОГ ДОУ.jpg'),
(516, 'ДОУ', 'Tuesday 26th of January 2021', 'log1012', '1012 ЛОГ ДОУ.jpg'),
(517, 'ДОУ', 'Tuesday 26th of January 2021', 'log1013', '1013 ЛОГ ДОУ.jpg'),
(518, 'Налоги и налогооблажение', 'Tuesday 2nd of February 2021', 'z015', 'з015налоги.jpg'),
(519, 'АФХД', 'Tuesday 2nd of February 2021', 'z013', 'з013афхд.docx'),
(520, 'АФХД', 'Tuesday 2nd of February 2021', 'z015', 'з015афхд.docx'),
(521, 'Практические основы БУ имущества', 'Tuesday 2nd of February 2021', 'z013', 'з013практосн.docx'),
(522, 'Бухгалтерский учет', 'Tuesday 2nd of February 2021', 'z014', 'з014бухучет.docx'),
(523, 'Налоги и налогооблажение', 'Tuesday 2nd of February 2021', 'z013', 'з013налоги.jpg'),
(524, 'Организация расчетов с бюджетом и внеб.фондам', 'Wednesday 3rd of February 2021', 'z013', 'з013орграсч.docx'),
(525, 'Аудит', 'Wednesday 3rd of February 2021', 'z013', 'з013аудит.docx'),
(526, 'Налоги и налогооблажение', 'Wednesday 3rd of February 2021', 'z014', 'з014налоги.jpg'),
(527, 'Организация безналичных расчетов', 'Thursday 4th of February 2021', 'z012', 'з012оргбезнал.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vedomost`
--
ALTER TABLE `vedomost`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vedomost`
--
ALTER TABLE `vedomost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'tushkanchik', '{\"quick_or_custom\":\"custom\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"news\",\"users\"],\"table_structure[]\":[\"news\",\"users\"],\"table_data[]\":[\"news\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Структура таблицы @TABLE@\",\"latex_structure_continued_caption\":\"Структура таблицы @TABLE@ (продолжение)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Содержимое таблицы @TABLE@\",\"latex_data_continued_caption\":\"Содержимое таблицы @TABLE@ (продолжение)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tushkanchik\",\"table\":\"users\"},{\"db\":\"tushkanchik\",\"table\":\"news\"},{\"db\":\"users\",\"table\":\"user\"},{\"db\":\"users\",\"table\":\"news\"},{\"db\":\"onyegov4_sbk1204\",\"table\":\"users\"},{\"db\":\"onyegov4_sbk1204\",\"table\":\"members\"},{\"db\":\"onyegov4_sbk1204\",\"table\":\"borrowings\"},{\"db\":\"onyegov4_sbk1204\",\"table\":\"books\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'tushkanchik', 'news', '[]', '2021-10-22 13:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-10-27 13:10:57', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":244}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tushkanchik`
--
CREATE DATABASE IF NOT EXISTS `tushkanchik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tushkanchik`;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `newsText` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `imgLink` varchar(100) NOT NULL,
  `imgLink2` varchar(100) NOT NULL,
  `newsText2` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `newsText`, `date`, `imgLink`, `imgLink2`, `newsText2`) VALUES
(216, 'Тест', ' ', '2021-10-26', '', '', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(4, 'leo', '$2y$10$XKU7OGDGI9JCGQfDIYd84OCUSN2N3rwtkdHgxdxZMPj/mGZEX7LBe'),
(5, 'leonid112', '$2y$10$Mbj3IYsVXZLbjtkC8QUKi.elZrtAnctPjB.uLbp74ZzuG/dr9/B2u'),
(6, 'Coffe', '$2y$10$UPXnRgEKlJsqWUa.Y2lLjOZ7L5l.kteaVv/Ubb4EiY6qNJ4mOp6Ci'),
(7, 'coffecuthe', '$2y$10$61MlykGdpBhI.keGLRMHwuutQpt7ZtQUVIdddlnMh/C9d2WQpeEla'),
(8, '123', '$2y$10$lW1G0XAfQAoneeny5g84mewnEzYcY7qXpWHU8SBeYxSf8IEcEaARe'),
(9, 'coffe1', '$2y$10$jdQYQvCzTUXDVE5KZ9dlwO.Qlc2tcrrULNZEZHMnFXRXsitXv1T8W'),
(10, '121212', '$2y$10$lL3avzpz.2SGYMwSTRqlsOu0nl1Wbx5q2k9/CxAlGmKQyKdoRVk.6'),
(11, 'Boris', '$2y$10$sNycrrecoEroQF1fglTBgOQxDtxAxLV9aB.SvP.szylgSfAH4xbp2'),
(12, 'DROP TABLE', '$2y$10$zUUh6ppU.0ufC.ygf6iHG.DKKbRjQn35OW74aoUiHveFIeeQsGKwO'),
(13, 'DROP DATABASE', '$2y$10$7NKh9MOj4/l13.9IGv2ED.1drebyW30QcqVvywjYr2veGaDkh8XvW'),
(14, 'qqqqqqqq', '$2y$10$mp2sTyRlPr/cuPhq3JVWc.9WfRbRWVjFDfR56TGqpmUeysC4EeFzG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
