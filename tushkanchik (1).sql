-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 04:52 PM
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
-- Database: `tushkanchik`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `newsText` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `imgLink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `newsText`, `date`, `imgLink`) VALUES
(144, 'Хряки населяют Землю', 'В новостях ходят легенды о хряках', '2021-10-11', '1509912679188826352.jpg'),
(145, '12', ' 23', '2021-10-11', 'images.jpg'),
(146, '214', ' 213', '2021-10-11', 'Fail_stamp.jpg'),
(147, 'Опасное животное бегает по полям', ' ', '2021-10-11', '1385162891_kot-kasatka.jpg');

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
(9, 'coffe1', '$2y$10$jdQYQvCzTUXDVE5KZ9dlwO.Qlc2tcrrULNZEZHMnFXRXsitXv1T8W');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
