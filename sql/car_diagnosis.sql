-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 01:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_diagnosis`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(30) NOT NULL,
  `f1` int(1) NOT NULL,
  `f2` int(1) NOT NULL,
  `f3` int(1) NOT NULL,
  `f4` int(1) NOT NULL,
  `f5` int(1) NOT NULL,
  `f6` int(1) NOT NULL,
  `f7` int(1) NOT NULL,
  `f8` int(1) NOT NULL,
  `result` text NOT NULL,
  `advice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `result`, `advice`, `date`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 'It\'s not your new battery. It is your alternator', 'Replace the alternator, or sometimes you might only have to replace the connections', '2021-03-03 12:56:36'),
(2, 0, 1, 0, 0, 0, 0, 0, 0, 'You\'ve hit a hump/pothole large enough to shake some parts loose', 'Locate the sound source. Buy some sound deadening adhesive (If you are a miser, you can go for a chewing gum for small applications). Apply it to places yourself, only if you can put back the parts you pull out.', '2021-03-03 12:57:39'),
(3, 0, 0, 1, 0, 0, 0, 0, 0, 'Coolant or Engine oil is leaking into the combustion chamber, due to a faulty gasket.', 'You can\'t fix it! Call the service guys, and ensure that you don\'t run the engine too much.', '2021-03-03 12:58:37'),
(4, 0, 0, 0, 1, 0, 0, 0, 0, 'Unbalanced wheel, probably due to some rough road action. In worst cases, it\'s a faulty steering rack.', 'Balance the wheel. Do wheel alignment too for your inner satisfaction.', '2021-03-03 13:35:17'),
(5, 0, 0, 0, 0, 1, 0, 0, 0, 'The serpentine belt (or fan belt as you may have heard), is slipping.', 'Buy a belt recommended for that engine; Can be replaced by loosening either the alternator or the tensioner.', '2021-03-03 13:36:37'),
(6, 0, 0, 0, 0, 0, 1, 0, 0, 'Low coolant level, coolant leakage or a faulty thermostat (Device that controls the flow of coolant from the radiator to the engine)', 'Use a temporary sealant which can withstand high temperatures, to close leaks (while the engine is cold); buy some coolant and fill it in the car. If nothing works, call the mechanic.', '2021-03-03 13:40:03'),
(7, 0, 0, 0, 0, 0, 0, 1, 0, 'Faulty spark plugs.', 'Unless the engine is placed too far for you to access, you can replace the old plugs, using deep socket wrenches.', '2021-03-03 13:44:42'),
(8, 0, 0, 0, 0, 0, 0, 0, 1, 'Brake pads are faded, or there is a lot of brake dust on the discs/drums.', 'Replacing the brake pads might sound easy, but it needs the right tooling.', '2021-03-03 13:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `role`, `date_created`) VALUES
(1, 'Oche', 'a@a.com', '123456', 1, '2021-03-03 14:55:36'),
(2, 'Caro', 'c@c.com', '123456', 3, '2021-03-03 15:12:50'),
(3, 'Dickson', 'd@d.com', '123456', 3, '2021-03-04 11:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `diagnosis_id` int(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `user_id`, `diagnosis_id`, `date`) VALUES
(1, 1, 1, '2021-03-14 19:59:54'),
(2, 2, 1, '2021-04-14 18:34:27'),
(3, 2, 2, '2021-04-14 18:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom '),
(4, 'Anambra '),
(5, 'Bauchi'),
(6, 'Bayelsa '),
(7, 'Benue '),
(8, 'Borno '),
(9, 'Cross River '),
(10, 'Delta '),
(11, 'Ebonyi '),
(12, 'Edo '),
(13, 'Ekiti '),
(14, 'Enugu '),
(15, 'FCT'),
(16, 'Gombe '),
(17, 'Imo '),
(18, 'Jigawa '),
(19, 'Kaduna '),
(20, 'Kano '),
(21, 'Katsina '),
(22, 'Kebbi '),
(23, 'Kogi '),
(24, 'Kwara '),
(25, 'Lagos '),
(26, 'Nasarawa '),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau '),
(33, 'Rivers '),
(34, 'Sokoto '),
(35, 'Taraba '),
(36, 'Yobe '),
(37, 'Zamfara ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `gender`, `date`) VALUES
(1, 'Caro', 'c@c.com', '08136473738', 'Ghana', '123456', 'FEMALE', '2021-03-03 15:12:50'),
(2, 'Dickson', 'd@d.com', '08136473738', 'Texas,London', '123456', 'MALE', '2021-03-04 11:53:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
