-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 06:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` double NOT NULL DEFAULT 300,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `number`, `date`, `amount`, `currency_id`) VALUES
(1, '200-00001111-20', '06.06.2020.', 640, 2),
(2, '200-00001112-20', '06.06.2020.', -47.4, 2),
(3, '200-00001113-20', '06.06.2020.', 284.1, 2),
(4, '200-00001114-20', '06.06.2020.', 259, 2),
(6, '200-00001116-20', '06.06.2020.', 315, 2),
(7, '200-00001117-20', '06.06.2020.', 320, 2),
(8, '200-00001118-20', '06.06.2020.', 300, 2),
(9, '200-00001119-20', '06.06.2020.', 300, 2),
(10, '200-00001120-20', '06.06.2020.', 300, 2),
(11, '200-00001121-20', '06.06.2020.', 300, 2),
(12, '200-00001122-20', '06.06.2020.', 300, 2),
(13, '200-00001123-20', '06.06.2020.', 300, 1),
(14, '200-00001124-20', '06.06.2020.', 300, 1),
(15, '200-00001125-20', '06.06.2020.', 300, 1),
(16, '200-00001126-20', '06.06.2020.', 300, 1),
(17, '200-00001127-20', '06.06.2020.', 96, 3),
(18, '200-00001128-20', '06.06.2020.', 300, 3),
(19, '200-00001129-20', '06.06.2020.', 500, 3),
(20, '200-00001130-20', '06.06.2020.', 300, 3);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `cur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `cur`) VALUES
(1, 'RSD'),
(2, 'EUR'),
(3, 'USD'),
(4, 'CHF');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `sender_id`, `recipient_id`, `amount`, `date`) VALUES
(9, 2, 1, 10, '2020-06-06'),
(10, 2, 3, 15, '2020-06-06'),
(11, 2, 4, 5, '2020-06-06'),
(13, 2, 6, 5, '2020-06-06'),
(14, 2, 7, 5, '2020-06-06'),
(15, 3, 1, 10, '2020-06-06'),
(16, 3, 2, 10, '2020-06-06'),
(17, 3, 4, 5, '2020-06-06'),
(19, 3, 6, 5, '2020-06-06'),
(20, 3, 7, 10, '2020-06-06'),
(21, 4, 1, 10, '2020-06-06'),
(22, 4, 2, 20, '2020-06-06'),
(23, 4, 3, 5, '2020-06-06'),
(25, 4, 6, 5, '2020-06-06'),
(26, 4, 7, 5, '2020-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `account_id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `password`, `mail`, `account_id`, `phone`, `admin`) VALUES
(1, 'Mila', 'Dujovic', '202cb962ac59075b964b07152d234b70', 'miladujovic@gmail.com', 1, '0643255866', 1),
(2, 'Jovan', 'Jovanovic', '202cb962ac59075b964b07152d234b70', 'jovanjovanovic@yahoo.com', 2, '0623169478', 0),
(3, 'Milos', 'Milovanovic', '202cb962ac59075b964b07152d234b70', 'milosmilovanovic@gmail.com', 3, '0653488445', 0),
(4, 'Jovana', 'Miletic', '202cb962ac59075b964b07152d234b70', 'jovanamiletic@gmail.com', 4, '0664545889', 0),
(6, 'Predrag', 'Djordjevic', '202cb962ac59075b964b07152d234b70', 'predragdj@hotmail.com', 6, '0635556887', 0),
(7, 'Ivana', 'Milosevic', '202cb962ac59075b964b07152d234b70', 'ivanamil@gmail.com', 7, '0691256887', 0),
(8, 'Luka', 'Boskovic', '202cb962ac59075b964b07152d234b70', 'lukaboskovic@yahoo.com', 8, '0602827996', 0),
(9, 'Luka', 'Jovanovic', '202cb962ac59075b964b07152d234b70', 'lukajovanovic@hotmail.com', 9, '0643598658', 0),
(10, 'Milica', 'Petrovic', '202cb962ac59075b964b07152d234b70', 'milicap@gmail.com', 10, '0614757657', 0),
(11, 'Boris', 'Ivanovic', '202cb962ac59075b964b07152d234b70', 'borisiv@hotmail.com', 11, '0668921116', 0),
(12, 'Marija', 'Mitrovic', '202cb962ac59075b964b07152d234b70', 'marijam@yahoo.com', 12, '0669833365', 0),
(13, 'Milica', 'Milosevic', '202cb962ac59075b964b07152d234b70', 'milicamilosevic@gmail.com', 13, '0698589541', 0),
(14, 'Lazar', 'Lazarevic', '202cb962ac59075b964b07152d234b70', 'lazarlazar@yahoo.com', 14, '0657733255', 0),
(15, 'Igor', 'Popovic', '202cb962ac59075b964b07152d234b70', 'igorpopovic@gmail.com', 15, '0649832519', 0),
(16, 'Aleksandra', 'Popovic', '202cb962ac59075b964b07152d234b70', 'alekspopovic@yahoo.com', 16, '0642356565', 0),
(17, 'Nevena', 'Bogdanovic', '202cb962ac59075b964b07152d234b70', 'nevenabogdanovic@gmail.com', 17, '0652255639', 0),
(18, 'Jovan', 'Peric', '202cb962ac59075b964b07152d234b70', 'jovanperic@hotmail.com', 18, '0698523645', 0),
(19, 'Marija', 'Petrovic', '202cb962ac59075b964b07152d234b70', 'marijap@hotmail.com', 19, '0611125896', 0),
(20, 'Ivana', 'Ivanovic', '202cb962ac59075b964b07152d234b70', 'ivanaiv@yahoo.com', 20, '0615898568', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `valuta_id` (`currency_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
