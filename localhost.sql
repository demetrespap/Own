-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2020 at 10:30 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waytwota_Way2TalkDB`
--
CREATE DATABASE IF NOT EXISTS `waytwota_Way2TalkDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `waytwota_Way2TalkDB`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id_appointment` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL,
  `id_type` int(2) DEFAULT NULL,
  `id_patient` int(5) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `paid` varchar(3) DEFAULT NULL,
  `id_receipt` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id_appointment`, `date`, `time`, `id_type`, `id_patient`, `id_therapist`, `paid`, `id_receipt`) VALUES
(2, '2020-04-30', '14:00:00', 3, 1, 1, 'yes', 1),
(3, '2020-05-07', '14:00:00', 3, 1, 1, 'no', NULL),
(4, '2020-05-14', '14:00:00', 3, 1, 1, 'yes', 2),
(5, '2020-05-21', '14:00:00', 3, 1, 1, 'no', NULL),
(6, '2020-05-28', '14:00:00', 3, 1, 1, 'no', NULL),
(7, '2020-06-04', '14:00:00', 3, 1, 1, 'no', NULL),
(8, '2020-06-11', '14:00:00', 3, 1, 1, 'no', NULL),
(9, '2020-06-18', '14:00:00', 3, 1, 1, 'no', NULL),
(10, '2020-06-25', '14:00:00', 3, 1, 1, 'no', NULL),
(11, '2020-07-02', '14:00:00', 3, 1, 1, 'no', NULL),
(12, '2020-07-09', '14:00:00', 3, 1, 1, 'no', NULL),
(13, '2020-07-16', '14:00:00', 3, 1, 1, 'no', NULL),
(14, '2020-07-23', '14:00:00', 3, 1, 1, 'no', NULL),
(15, '2020-07-30', '14:00:00', 3, 1, 1, 'no', NULL),
(16, '2020-08-06', '14:00:00', 3, 1, 1, 'no', NULL),
(17, '2020-08-13', '14:00:00', 3, 1, 1, 'no', NULL),
(18, '2020-08-20', '14:00:00', 3, 1, 1, 'no', NULL),
(19, '2020-08-27', '14:00:00', 3, 1, 1, 'no', NULL),
(20, '2020-09-03', '14:00:00', 3, 1, 1, 'no', NULL),
(21, '2020-09-10', '14:00:00', 3, 1, 1, 'no', NULL),
(22, '2020-09-17', '14:00:00', 3, 1, 1, 'no', NULL),
(23, '2020-09-24', '14:00:00', 3, 1, 1, 'no', NULL),
(24, '2020-10-01', '14:00:00', 3, 1, 1, 'no', NULL),
(25, '2020-10-08', '14:00:00', 3, 1, 1, 'no', NULL),
(26, '2020-10-15', '14:00:00', 3, 1, 1, 'no', NULL),
(27, '2020-10-22', '14:00:00', 3, 1, 1, 'no', NULL),
(28, '2020-04-29', '13:45:00', 3, 2, 2, 'no', NULL),
(29, '2020-05-06', '13:45:00', 3, 2, 2, 'no', NULL),
(30, '2020-05-13', '13:45:00', 3, 2, 2, 'no', NULL),
(31, '2020-05-20', '13:45:00', 3, 2, 2, 'no', NULL),
(32, '2020-05-27', '13:45:00', 3, 2, 2, 'no', NULL),
(33, '2020-06-03', '13:45:00', 3, 2, 2, 'no', NULL),
(34, '2020-06-10', '13:45:00', 3, 2, 2, 'no', NULL),
(35, '2020-06-17', '13:45:00', 3, 2, 2, 'no', NULL),
(36, '2020-06-24', '13:45:00', 3, 2, 2, 'no', NULL),
(37, '2020-07-01', '13:45:00', 3, 2, 2, 'no', NULL),
(38, '2020-07-08', '13:45:00', 3, 2, 2, 'no', NULL),
(39, '2020-07-15', '13:45:00', 3, 2, 2, 'no', NULL),
(40, '2020-07-22', '13:45:00', 3, 2, 2, 'no', NULL),
(41, '2020-07-29', '13:45:00', 3, 2, 2, 'no', NULL),
(42, '2020-08-05', '13:45:00', 3, 2, 2, 'no', NULL),
(43, '2020-08-12', '13:45:00', 3, 2, 2, 'no', NULL),
(44, '2020-08-19', '13:45:00', 3, 2, 2, 'no', NULL),
(45, '2020-08-26', '13:45:00', 3, 2, 2, 'no', NULL),
(46, '2020-09-02', '13:45:00', 3, 2, 2, 'no', NULL),
(47, '2020-09-09', '13:45:00', 3, 2, 2, 'no', NULL),
(48, '2020-09-16', '13:45:00', 3, 2, 2, 'no', NULL),
(49, '2020-09-23', '13:45:00', 3, 2, 2, 'no', NULL),
(50, '2020-09-30', '13:45:00', 3, 2, 2, 'no', NULL),
(51, '2020-10-07', '13:45:00', 3, 2, 2, 'no', NULL),
(52, '2020-10-14', '13:45:00', 3, 2, 2, 'no', NULL),
(53, '2020-10-21', '13:45:00', 3, 2, 2, 'no', NULL),
(54, '2020-10-28', '13:45:00', 3, 2, 2, 'no', NULL),
(55, '2020-11-04', '13:45:00', 3, 2, 2, 'no', NULL),
(56, '2020-11-11', '13:45:00', 3, 2, 2, 'no', NULL),
(57, '2020-11-18', '13:45:00', 3, 2, 2, 'no', NULL),
(58, '2020-11-25', '13:45:00', 3, 2, 2, 'no', NULL),
(59, '2020-12-02', '13:45:00', 3, 2, 2, 'no', NULL),
(60, '2020-12-09', '13:45:00', 3, 2, 2, 'no', NULL),
(61, '2020-12-16', '13:45:00', 3, 2, 2, 'no', NULL),
(62, '2020-12-23', '13:45:00', 3, 2, 2, 'no', NULL),
(63, '2020-12-30', '13:45:00', 3, 2, 2, 'no', NULL),
(64, '2021-01-06', '13:45:00', 3, 2, 2, 'no', NULL),
(65, '2021-01-13', '13:45:00', 3, 2, 2, 'no', NULL),
(66, '2021-01-20', '13:45:00', 3, 2, 2, 'no', NULL),
(67, '2021-01-27', '13:45:00', 3, 2, 2, 'no', NULL),
(68, '2021-02-03', '13:45:00', 3, 2, 2, 'no', NULL),
(69, '2021-02-10', '13:45:00', 3, 2, 2, 'no', NULL),
(70, '2021-02-17', '13:45:00', 3, 2, 2, 'no', NULL),
(71, '2021-02-24', '13:45:00', 3, 2, 2, 'no', NULL),
(72, '2021-03-03', '13:45:00', 3, 2, 2, 'no', NULL),
(73, '2021-03-10', '13:45:00', 3, 2, 2, 'no', NULL),
(74, '2021-03-17', '13:45:00', 3, 2, 2, 'no', NULL),
(75, '2021-03-24', '13:45:00', 3, 2, 2, 'no', NULL),
(76, '2021-03-31', '13:45:00', 3, 2, 2, 'no', NULL),
(77, '2021-04-07', '13:45:00', 3, 2, 2, 'no', NULL),
(78, '2021-04-14', '13:45:00', 3, 2, 2, 'no', NULL),
(79, '2021-04-21', '13:45:00', 3, 2, 2, 'no', NULL),
(80, '2020-04-28', '11:30:00', 1, 1, 1, 'yes', 1),
(81, '2020-04-28', '14:00:00', 3, 2, 2, 'no', NULL),
(82, '2020-05-05', '14:00:00', 3, 2, 2, 'no', NULL),
(83, '2020-05-12', '14:00:00', 3, 2, 2, 'no', NULL),
(84, '2020-05-19', '14:00:00', 3, 2, 2, 'no', NULL),
(85, '2020-05-26', '14:00:00', 3, 2, 2, 'no', NULL),
(86, '2020-06-02', '14:00:00', 3, 2, 2, 'no', NULL),
(87, '2020-06-09', '14:00:00', 3, 2, 2, 'no', NULL),
(88, '2020-06-16', '14:00:00', 3, 2, 2, 'no', NULL),
(89, '2020-06-23', '14:00:00', 3, 2, 2, 'no', NULL),
(90, '2020-06-30', '14:00:00', 3, 2, 2, 'no', NULL),
(91, '2020-07-07', '14:00:00', 3, 2, 2, 'no', NULL),
(92, '2020-07-14', '14:00:00', 3, 2, 2, 'no', NULL),
(93, '2020-07-21', '14:00:00', 3, 2, 2, 'no', NULL),
(94, '2020-07-28', '14:00:00', 3, 2, 2, 'no', NULL),
(95, '2020-08-04', '14:00:00', 3, 2, 2, 'no', NULL),
(96, '2020-08-11', '14:00:00', 3, 2, 2, 'no', NULL),
(97, '2020-08-18', '14:00:00', 3, 2, 2, 'no', NULL),
(98, '2020-08-25', '14:00:00', 3, 2, 2, 'no', NULL),
(99, '2020-09-01', '14:00:00', 3, 2, 2, 'no', NULL),
(100, '2020-09-08', '14:00:00', 3, 2, 2, 'no', NULL),
(101, '2020-09-15', '14:00:00', 3, 2, 2, 'no', NULL),
(102, '2020-09-22', '14:00:00', 3, 2, 2, 'no', NULL),
(103, '2020-09-29', '14:00:00', 3, 2, 2, 'no', NULL),
(104, '2020-10-06', '14:00:00', 3, 2, 2, 'no', NULL),
(105, '2020-10-13', '14:00:00', 3, 2, 2, 'no', NULL),
(106, '2020-10-20', '14:00:00', 3, 2, 2, 'no', NULL),
(107, '2020-10-29', '14:00:00', 3, 1, 1, 'no', NULL),
(108, '2020-11-05', '14:00:00', 3, 1, 1, 'no', NULL),
(109, '2020-11-12', '14:00:00', 3, 1, 1, 'no', NULL),
(110, '2020-11-19', '14:00:00', 3, 1, 1, 'no', NULL),
(111, '2020-11-26', '14:00:00', 3, 1, 1, 'no', NULL),
(112, '2020-12-03', '14:00:00', 3, 1, 1, 'no', NULL),
(113, '2020-12-10', '14:00:00', 3, 1, 1, 'no', NULL),
(114, '2020-12-17', '14:00:00', 3, 1, 1, 'no', NULL),
(115, '2020-12-24', '14:00:00', 3, 1, 1, 'no', NULL),
(116, '2020-12-31', '14:00:00', 3, 1, 1, 'no', NULL),
(117, '2021-01-07', '14:00:00', 3, 1, 1, 'no', NULL),
(118, '2021-01-14', '14:00:00', 3, 1, 1, 'no', NULL),
(119, '2021-01-21', '14:00:00', 3, 1, 1, 'no', NULL),
(120, '2021-01-28', '14:00:00', 3, 1, 1, 'no', NULL),
(121, '2021-02-04', '14:00:00', 3, 1, 1, 'no', NULL),
(122, '2021-02-11', '14:00:00', 3, 1, 1, 'no', NULL),
(123, '2021-02-18', '14:00:00', 3, 1, 1, 'no', NULL),
(124, '2021-02-25', '14:00:00', 3, 1, 1, 'no', NULL),
(125, '2021-03-04', '14:00:00', 3, 1, 1, 'no', NULL),
(126, '2021-03-11', '14:00:00', 3, 1, 1, 'no', NULL),
(127, '2021-03-18', '14:00:00', 3, 1, 1, 'no', NULL),
(128, '2021-03-25', '14:00:00', 3, 1, 1, 'no', NULL),
(129, '2021-04-01', '14:00:00', 3, 1, 1, 'no', NULL),
(130, '2021-04-08', '14:00:00', 3, 1, 1, 'no', NULL),
(131, '2021-04-15', '14:00:00', 3, 1, 1, 'no', NULL),
(132, '2021-04-22', '14:00:00', 3, 1, 1, 'no', NULL),
(133, '2021-04-29', '14:00:00', 3, 1, 1, 'no', NULL),
(134, '2021-05-06', '14:00:00', 3, 1, 1, 'no', NULL),
(135, '2021-05-13', '14:00:00', 3, 1, 1, 'no', NULL),
(136, '2021-05-20', '14:00:00', 3, 1, 1, 'no', NULL),
(137, '2021-05-27', '14:00:00', 3, 1, 1, 'no', NULL),
(138, '2021-06-03', '14:00:00', 3, 1, 1, 'no', NULL),
(139, '2021-06-10', '14:00:00', 3, 1, 1, 'no', NULL),
(140, '2021-06-17', '14:00:00', 3, 1, 1, 'no', NULL),
(141, '2021-06-24', '14:00:00', 3, 1, 1, 'no', NULL),
(142, '2021-07-01', '14:00:00', 3, 1, 1, 'no', NULL),
(143, '2021-07-08', '14:00:00', 3, 1, 1, 'no', NULL),
(144, '2021-07-15', '14:00:00', 3, 1, 1, 'no', NULL),
(145, '2021-07-22', '14:00:00', 3, 1, 1, 'no', NULL),
(146, '2021-07-29', '14:00:00', 3, 1, 1, 'no', NULL),
(147, '2021-08-05', '14:00:00', 3, 1, 1, 'no', NULL),
(148, '2021-08-12', '14:00:00', 3, 1, 1, 'no', NULL),
(149, '2021-08-19', '14:00:00', 3, 1, 1, 'no', NULL),
(150, '2021-08-26', '14:00:00', 3, 1, 1, 'no', NULL),
(151, '2021-09-02', '14:00:00', 3, 1, 1, 'no', NULL),
(152, '2021-09-09', '14:00:00', 3, 1, 1, 'no', NULL),
(153, '2021-09-16', '14:00:00', 3, 1, 1, 'no', NULL),
(154, '2021-09-23', '14:00:00', 3, 1, 1, 'no', NULL),
(155, '2021-09-30', '14:00:00', 3, 1, 1, 'no', NULL),
(156, '2021-10-07', '14:00:00', 3, 1, 1, 'no', NULL),
(157, '2021-10-14', '14:00:00', 3, 1, 1, 'no', NULL),
(158, '2021-10-21', '14:00:00', 3, 1, 1, 'no', NULL),
(159, '2021-10-28', '14:00:00', 3, 1, 1, 'no', NULL),
(160, '2021-11-04', '14:00:00', 3, 1, 1, 'no', NULL),
(161, '2021-11-11', '14:00:00', 3, 1, 1, 'no', NULL),
(162, '2021-11-18', '14:00:00', 3, 1, 1, 'no', NULL),
(163, '2021-11-25', '14:00:00', 3, 1, 1, 'no', NULL),
(164, '2021-12-02', '14:00:00', 3, 1, 1, 'no', NULL),
(165, '2021-12-09', '14:00:00', 3, 1, 1, 'no', NULL),
(166, '2021-12-16', '14:00:00', 3, 1, 1, 'no', NULL),
(167, '2021-12-23', '14:00:00', 3, 1, 1, 'no', NULL),
(168, '2021-12-30', '14:00:00', 3, 1, 1, 'no', NULL),
(169, '2022-01-06', '14:00:00', 3, 1, 1, 'no', NULL),
(170, '2022-01-13', '14:00:00', 3, 1, 1, 'no', NULL),
(171, '2022-01-20', '14:00:00', 3, 1, 1, 'no', NULL),
(172, '2022-01-27', '14:00:00', 3, 1, 1, 'no', NULL),
(173, '2022-02-03', '14:00:00', 3, 1, 1, 'no', NULL),
(174, '2022-02-10', '14:00:00', 3, 1, 1, 'no', NULL),
(175, '2022-02-17', '14:00:00', 3, 1, 1, 'no', NULL),
(176, '2022-02-24', '14:00:00', 3, 1, 1, 'no', NULL),
(177, '2022-03-03', '14:00:00', 3, 1, 1, 'no', NULL),
(178, '2022-03-10', '14:00:00', 3, 1, 1, 'no', NULL),
(179, '2022-03-17', '14:00:00', 3, 1, 1, 'no', NULL),
(180, '2022-03-24', '14:00:00', 3, 1, 1, 'no', NULL),
(181, '2022-03-31', '14:00:00', 3, 1, 1, 'no', NULL),
(182, '2022-04-07', '14:00:00', 3, 1, 1, 'no', NULL),
(183, '2022-04-14', '14:00:00', 3, 1, 1, 'no', NULL),
(184, '2022-04-21', '14:00:00', 3, 1, 1, 'no', NULL),
(185, '2022-04-28', '14:00:00', 3, 1, 1, 'no', NULL),
(186, '2022-05-05', '14:00:00', 3, 1, 1, 'no', NULL),
(187, '2022-05-12', '14:00:00', 3, 1, 1, 'no', NULL),
(188, '2022-05-19', '14:00:00', 3, 1, 1, 'no', NULL),
(189, '2022-05-26', '14:00:00', 3, 1, 1, 'no', NULL),
(190, '2022-06-02', '14:00:00', 3, 1, 1, 'no', NULL),
(191, '2022-06-09', '14:00:00', 3, 1, 1, 'no', NULL),
(192, '2022-06-16', '14:00:00', 3, 1, 1, 'no', NULL),
(193, '2022-06-23', '14:00:00', 3, 1, 1, 'no', NULL),
(194, '2022-06-30', '14:00:00', 3, 1, 1, 'no', NULL),
(195, '2022-07-07', '14:00:00', 3, 1, 1, 'no', NULL),
(196, '2022-07-14', '14:00:00', 3, 1, 1, 'no', NULL),
(197, '2022-07-21', '14:00:00', 3, 1, 1, 'no', NULL),
(198, '2022-07-28', '14:00:00', 3, 1, 1, 'no', NULL),
(199, '2022-08-04', '14:00:00', 3, 1, 1, 'no', NULL),
(200, '2022-08-11', '14:00:00', 3, 1, 1, 'no', NULL),
(201, '2022-08-18', '14:00:00', 3, 1, 1, 'no', NULL),
(202, '2022-08-25', '14:00:00', 3, 1, 1, 'no', NULL),
(203, '2022-09-01', '14:00:00', 3, 1, 1, 'no', NULL),
(204, '2022-09-08', '14:00:00', 3, 1, 1, 'no', NULL),
(205, '2022-09-15', '14:00:00', 3, 1, 1, 'no', NULL),
(206, '2022-09-22', '14:00:00', 3, 1, 1, 'no', NULL),
(207, '2022-09-29', '14:00:00', 3, 1, 1, 'no', NULL),
(208, '2022-10-06', '14:00:00', 3, 1, 1, 'no', NULL),
(209, '2022-10-13', '14:00:00', 3, 1, 1, 'no', NULL),
(210, '2022-10-20', '14:00:00', 3, 1, 1, 'no', NULL),
(211, '2022-10-27', '14:00:00', 3, 1, 1, 'no', NULL),
(212, '2022-11-03', '14:00:00', 3, 1, 1, 'no', NULL),
(213, '2022-11-10', '14:00:00', 3, 1, 1, 'no', NULL),
(214, '2022-11-17', '14:00:00', 3, 1, 1, 'no', NULL),
(215, '2022-11-24', '14:00:00', 3, 1, 1, 'no', NULL),
(216, '2022-12-01', '14:00:00', 3, 1, 1, 'no', NULL),
(217, '2022-12-08', '14:00:00', 3, 1, 1, 'no', NULL),
(218, '2022-12-15', '14:00:00', 3, 1, 1, 'no', NULL),
(219, '2022-12-22', '14:00:00', 3, 1, 1, 'no', NULL),
(220, '2022-12-29', '14:00:00', 3, 1, 1, 'no', NULL),
(221, '2023-01-05', '14:00:00', 3, 1, 1, 'no', NULL),
(222, '2023-01-12', '14:00:00', 3, 1, 1, 'no', NULL),
(223, '2023-01-19', '14:00:00', 3, 1, 1, 'no', NULL),
(224, '2023-01-26', '14:00:00', 3, 1, 1, 'no', NULL),
(225, '2023-02-02', '14:00:00', 3, 1, 1, 'no', NULL),
(226, '2023-02-09', '14:00:00', 3, 1, 1, 'no', NULL),
(227, '2023-02-16', '14:00:00', 3, 1, 1, 'no', NULL),
(228, '2023-02-23', '14:00:00', 3, 1, 1, 'no', NULL),
(229, '2023-03-02', '14:00:00', 3, 1, 1, 'no', NULL),
(230, '2020-04-30', '12:00:00', 1, 2, 1, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointmentsreceipts`
--

CREATE TABLE `appointmentsreceipts` (
  `id_receipt` int(5) NOT NULL,
  `datepaid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointmentsreceipts`
--

INSERT INTO `appointmentsreceipts` (`id_receipt`, `datepaid`) VALUES
(1, '2020-04-28 14:30:02'),
(2, '2020-04-28 14:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `appointmentsreceipts_amounts`
--

CREATE TABLE `appointmentsreceipts_amounts` (
  `id_amount` int(11) NOT NULL,
  `price` double(5,2) NOT NULL,
  `id_receipt` int(11) NOT NULL,
  `type` text NOT NULL,
  `fpa` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointmentsreceipts_amounts`
--

INSERT INTO `appointmentsreceipts_amounts` (`id_amount`, `price`, `id_receipt`, `type`, `fpa`) VALUES
(1, 85.00, 1, 'ΑΠ', 17),
(2, 25.00, 1, 'ΘΠ', 17),
(3, 25.00, 2, 'ΘΠ', 17);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id_file` int(5) NOT NULL,
  `id_folders` int(5) DEFAULT NULL,
  `files` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id_file`, `id_folders`, `files`, `date`, `title`, `description`) VALUES
(1, 2, 'categories_V3.pdf', '2030-04-20 06:00:00', 'Ακουστική Μνήμη', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id_folders` int(5) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id_folders`, `title`, `id_therapist`) VALUES
(1, 'CV', 1),
(2, 'Ακουστική Μνήμη', 1);

-- --------------------------------------------------------

--
-- Table structure for table `longterm_goals`
--

CREATE TABLE `longterm_goals` (
  `id_longterm` int(5) NOT NULL,
  `longterm` text NOT NULL,
  `title` text NOT NULL,
  `id_appointment` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `longterm_goals`
--

INSERT INTO `longterm_goals` (`id_longterm`, `longterm`, `title`, `id_appointment`) VALUES
(2, 'Ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής.', 'Ενδυνάμωση των μυώv', 80),
(4, 'Ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής.', 'Ενδυνάμωση της στοματοπροσωπικής περιοχής', 81),
(5, 'Ενίσχυση της βραχύχρονης μνήμης.', 'Ενίσχυση της βραχύχρονης μνήμης.', 2),
(6, 'Ενίσχυση της μακρόχρονης μνήμης.', 'Ενίσχυση της μακρόχρονης μνήμης.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification2`
--

CREATE TABLE `notification2` (
  `id_notification` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `notification` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `whosentther` int(11) DEFAULT NULL,
  `whosentpat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification2`
--

INSERT INTO `notification2` (`id_notification`, `title`, `notification`, `date`, `whosentther`, `whosentpat`) VALUES
(1, 'Κρατάμε γερά', 'Υπομονή και επανερχόμαστε σύμφωνα με τα νέα γεγονότα του κορονοϊού. Ερχόμαστε πίσω από τις 30 Μαΐου.', '2020-04-28 08:25:51', 1, NULL),
(2, 'Ανησυχία', 'Παρατήρησα πως το περιβάλλον δεν είναι κατάλληλα σχεδιασμένο για άτομα με κινητικές δυσκολίες. Θα σας παρακαλούσα να  βρεθεί μια λύση σετικά με τους χόρους στάθμευσης.', '2020-04-28 08:35:19', NULL, 2),
(3, '21/5', 'Επανερχόμαστε!', '2020-04-30 09:16:53', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notificationsent`
--

CREATE TABLE `notificationsent` (
  `id_notificationsent` int(11) NOT NULL,
  `id_notification` int(11) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `id_patient` int(5) DEFAULT NULL,
  `read_not` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notificationsent`
--

INSERT INTO `notificationsent` (`id_notificationsent`, `id_notification`, `id_therapist`, `id_patient`, `read_not`, `deleted`) VALUES
(3, 1, 2, NULL, 1, 0),
(2, 2, 1, NULL, 1, 0),
(11, 3, NULL, 2, 1, 0),
(10, 3, NULL, 1, 0, 0),
(9, 3, 2, NULL, 0, 0),
(8, 3, 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parametres`
--

CREATE TABLE `parametres` (
  `id_parametres` int(2) NOT NULL,
  `id` int(2) NOT NULL,
  `description` varchar(50) NOT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parametres`
--

INSERT INTO `parametres` (`id_parametres`, `id`, `description`, `value`) VALUES
(2, 1, 'ΦΠΑ', 17),
(1, 3, 'Φωνολογική Διαταραχή', NULL),
(1, 2, 'Γλωσσική Διαταραχή', NULL),
(1, 1, 'Αφασία', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id_patient` int(5) NOT NULL,
  `id` int(7) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `class` varchar(5) DEFAULT NULL,
  `nameofteacher` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `other_languages` varchar(200) DEFAULT NULL,
  `isrefferedfrom` varchar(50) DEFAULT NULL,
  `reasonofrefference` varchar(50) DEFAULT NULL,
  `diagnosis` varchar(50) DEFAULT NULL,
  `id_status` int(1) DEFAULT '1',
  `id_parents` int(5) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id_patient`, `id`, `name`, `surname`, `birthday`, `birthplace`, `telephone`, `address`, `school`, `class`, `nameofteacher`, `education`, `job`, `language`, `other_languages`, `isrefferedfrom`, `reasonofrefference`, `diagnosis`, `id_status`, `id_parents`, `id_therapist`, `date_start`, `date_end`) VALUES
(1, 1, 'Δημήτρης', 'Αγαπίδης', '1987-04-27', 'Παραλίμνι', '99998877', 'Σπάρτης 13, Λεμεσος', '', '', '', 'Δημοτικό', 'Μπάρμαν', 'Ελληνικά', '', 'Γιατρό', 'Αγγειακό Εγκεφαλικό Επεισόδιο ', '2', 1, NULL, 1, '2020-04-27', '0000-00-00'),
(2, 819245, 'Κατερίνα', 'Ανάογλου', '2017-04-14', 'Λεμεσός', '99792600', 'Μέσα Γειτονίας, Ελλάδος', 'Λανίτειο', 'Β5', 'Γεώργιος Παπαδόπουλος', '', '', '', '', 'Γιατρό', 'Καλύτερη ομιλία', '1', 1, 2, 2, '2020-04-27', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_parents`
--

CREATE TABLE `patient_parents` (
  `id_parent` int(5) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `fsurname` varchar(50) DEFAULT NULL,
  `fbirthday` date DEFAULT NULL,
  `fphone` varchar(20) DEFAULT NULL,
  `fjob` varchar(50) DEFAULT NULL,
  `feducation` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `msurname` varchar(50) DEFAULT NULL,
  `mbirthday` date DEFAULT NULL,
  `mphone` varchar(20) DEFAULT NULL,
  `mjob` varchar(50) DEFAULT NULL,
  `meducation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_parents`
--

INSERT INTO `patient_parents` (`id_parent`, `fname`, `fsurname`, `fbirthday`, `fphone`, `fjob`, `feducation`, `mname`, `msurname`, `mbirthday`, `mphone`, `mjob`, `meducation`) VALUES
(1, 'Γιώργος', 'Ανάογλου', '1990-04-20', '99691488', 'Στρατιωτικός', 'Λύκειο/Τεχνική', 'Αντρούλλα', 'Ανάογλου', '1995-04-08', '99148869', 'Δημόσιος Υπάλληλος', 'Λύκειο/Τεχνική'),
(2, 'Χαράλαμπος', 'Ανάογλου', '1990-04-17', '91245215', 'Στρατιωτικός', 'Δημοτικό', 'Μικαέλα', 'Ανάογλου', '1996-04-07', '92842151', 'Δημόσιος Υπάλληλος', 'Δημοτικό');

-- --------------------------------------------------------

--
-- Table structure for table `patient_siblings`
--

CREATE TABLE `patient_siblings` (
  `id_siblings` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `id_patient` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_siblings`
--

INSERT INTO `patient_siblings` (`id_siblings`, `name`, `birthday`, `school`, `id_patient`) VALUES
(1, 'Αθανάσιος', '2015-04-08', 'Μαθητής', 2),
(2, 'Παναγίωτης', '1997-06-05', 'Φοιτητής', 2);

-- --------------------------------------------------------

--
-- Table structure for table `paymentslip`
--

CREATE TABLE `paymentslip` (
  `id` int(11) NOT NULL,
  `id_therapist` int(5) NOT NULL,
  `salary` float NOT NULL,
  `koinonikes` float NOT NULL,
  `gesi` float NOT NULL,
  `pleonazontos` float NOT NULL,
  `katartisi` float NOT NULL,
  `sinoxon` float NOT NULL,
  `pronias` float NOT NULL,
  `arithmoskoinonikon` text NOT NULL,
  `arithmosforologikis` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `progressreport`
--

CREATE TABLE `progressreport` (
  `id_progress` int(5) NOT NULL,
  `abstract` longtext NOT NULL,
  `progress` longtext NOT NULL,
  `suggestions` longtext NOT NULL,
  `medicalhistory` longtext NOT NULL,
  `id_patient` int(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `progressreport`
--

INSERT INTO `progressreport` (`id_progress`, `abstract`, `progress`, `suggestions`, `medicalhistory`, `id_patient`, `date`) VALUES
(1, 'Κατά τις θεραπευτικές συνεδρίες αυτής της περιόδου, χρησιμοποιήθηκαν πολλές και διάφορες τεχνικές παρέμβασης όπως έναυσμα, άμεση μίμηση, καθυστερημένη μίμηση, υπόδειξη, επέκταση, επιμήκυνση, παρότρυνση και ενίσχυση.  Επιπλέον, χρησιμοποιήθηκε συστηματική λεκτική επιβράβευση, μετά από κάθε δραστηριότητα.  Επίσης, γινόταν παροχή άμεσης απτικής και λεκτικής ανατροφοδότησης και στο τέλος κάθε προσπάθειας, γινόταν επεξήγηση των λόγων που παρακολουθεί λογοθεραπευτικές συνεδρίες, όπως και αναφορά στην επίδοση του, την εκάστοτε μέρα. ', '1.	Ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής.\r\nΣτο συγκεκριμένο μακροπρόθεσμο στόχο για ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής, παρουσιάστηκε σημαντική πρόοδος. Αρχικά, στο βραχυπρόθεσμο στόχο ευαισθητοποίησης και τόνωσης των μυών της στοματικής κοιλότητας και του προσώπου, το άτομο παρουσίασε βελτίωση αφού έδειχνε να αισθάνεται περισσότερο την απτική επαφή σε αυτά τα σημεία με την πάροδο του χρόνου. Επίσης, στους βραχύχρονους στόχους που αφορούν τις εκφράσεις του προσώπου και τη κίνηση της γλώσσας και των χειλιών με άνεση, το άτομο σημείωσε πρόοδο αφού αρχικά δεν κατάβαλε καμία προσπάθεια, ενώ στη συνέχεια παρατηρήθηκε ελάχιστη κίνηση και δύναμη που κατάβαλε για την εκτέλεση των ασκήσεων.\r\n2.	Ενίσχυση της βραχύχρονης μνήμης.\r\nΣτο μακροπρόθεσμο στόχο που αφορά την βραχύχρονη μνήμη, το άτομο παρουσίασε σημαντική πρόοδο. Συγκεκριμένα ο κ. Δημήτρης στο στόχο που αφορούσε την οπτική μνήμη δύο στοιχείων, αρχικά σημείωσε ποσοστό 0% ενώ μετέπειτα παρουσίασε ποσοστό 60%. \r\n3.	Ενίσχυση της μακρόχρονης μνήμης.\r\nΑκολούθως, στον μακροπρόθεσμο στόχο που αφορούσε τη μακρόχρονη μνήμη, παρουσίασε μεγάλη πρόοδο. Πιο συγκεκριμένα, στη συμπλήρωση μιας πρότασης, αρχικά κατέδειξε ποσοστό επιτυχίας 20%, ενώ στη συνέχεια ποσοστό 80%. \r\n4.	Ενίσχυση της παραγωγής και κατανόησης του ατόμου στο βασικό λεξιλόγιο.\r\nΕπιπρόσθετα στο στόχο παραγωγής και κατανόησης του ατόμου στο βασικό λεξιλόγιο, δόθηκε έμφαση στις άμεσες ανάγκες του ατόμου. Δηλαδή, στο βραχύχρονο χρόνο ανάκλησης ρήματος για τον σχηματισμό προτάσεων, χρησιμοποιήθηκαν τα ρήματα «πονώ» και «θέλω». Σε αυτό το στόχο, με λεκτικό βοήθημα (πρώτη συλλαβή), το άτομο έκανε την επιθυμητή πρόταση, με αρχικό ποσοστό 80% και τελικά επίτευξη του στόχου με ποσοστό 100%. Στον επόμενο βραχυπρόθεσμο στόχο που αφορούσε την κατανόηση και κατονομασία των μερών του σώματος, το άτομο έδειξε να τα κατανοεί με 100% επιτυχία από την πρώτη προσπάθεια, ενώ στο επίπεδο κατονομασίας αρχικά επέδειξε ποσοστό 60% και στη συνέχεια 80%.\r\n\r\n', 'Προτείνεται ο κ. Δημήτρης να συνεχίσει την παρακολούθηση ατομικών συνεδριών λογοθεραπείας, για δύο φορές την εβδομάδα, με διάρκεια 45 λεπτά/συνεδρία.  \r\nΌλοι οι μακροπρόθεσμοι στόχοι, που έχουν τεθεί κατά την παρούσα περίοδο θεραπείας, να συνεχιστούν μέχρι να επιτευχθούν.  \r\nΤο ίδιο ισχύει και για τους βραχυπρόθεσμους στόχους που δεν έχουν επιτευχθεί.   \r\n', 'Ο Δημήτρης Αγαπίδης γεννήθηκε στις 27/04/1987 στην Επαρχία Λεμεσού. Είναι ελεύθερος και διαμένει με κατ\' οίκον φροντιστή. Ο κ. Δημήτρης υπέστηκε Αγγειακό Εγκεφαλικό Επεισόδιο, με συνέπεια ημιπληγίας ι της δεξιάς πλευράς του σώματος. Χρησιμοποιεί τροχοκάθησμα και αντιμετωπίζει προβλήματα κατάποσης και σίτισης. Κατά τη Λογοθεραπευτική Αξιολόγηση παρατηρήθηκε παρουσία γνωστικών και γλωσσικών ελλειμάτων και στοματοπροσωπικών αδυναμιών, λόγω εγκεφαλικού επεισοδίου.', 1, '2020-04-28 07:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(1) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_role`, `role`) VALUES
(1, 'Admin'),
(2, 'Patient'),
(3, 'Users');

-- --------------------------------------------------------

--
-- Table structure for table `shortterm_goals`
--

CREATE TABLE `shortterm_goals` (
  `id_shortterm` int(5) NOT NULL,
  `shortterm` text NOT NULL,
  `ratesuccess` int(3) DEFAULT NULL,
  `id_longterm` int(5) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shortterm_goals`
--

INSERT INTO `shortterm_goals` (`id_shortterm`, `shortterm`, `ratesuccess`, `id_longterm`, `title`) VALUES
(2, 'Ευαισθητοποίηση και τόνωση των μυών της στοματικής κοιλότητας και του προσώπου.', 70, 2, 'Τόνωση των μυών'),
(3, 'Το άτομο να κάνει εκφράσεις προσώπου με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 40, 2, 'Εκφράσεις προσώπου με άνεση'),
(4, 'Το άτομο να κινεί  τη γλώσσα του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 33, 2, 'Κίνηση  της γλώσσα του με άνεση'),
(5, 'Το άτομο να κινεί  τα χείλη του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 33, 2, 'Κίνηση  των χείλών του με άνεση'),
(6, 'Ευαισθητοποίηση και τόνωση των μυών της στοματικής κοιλότητας και του προσώπου.', 49, 4, 'Τόνωση των μυών'),
(7, 'Το άτομο να κάνει εκφράσεις προσώπου με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 90, 4, 'Εκφράσεις'),
(8, 'Το άτομο να κινεί  τη γλώσσα του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 95, 4, 'Άνεση γλώσσας'),
(9, 'Το άτομο να κινεί  τα χείλη του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 100, 4, 'Κινεί τα χείλη με άνεση'),
(10, 'Το άτομο να θυμάται οπτικά 2 στοιχεία, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 80, 5, 'Θυμάται οπτικά 2 στοιχεία'),
(11, 'Το άτομο να συμπληρώσει μια πρόταση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 90, 6, 'συμπλήρωσης μιας πρόταση');

-- --------------------------------------------------------

--
-- Table structure for table `soap_notes`
--

CREATE TABLE `soap_notes` (
  `id_soapnote` int(5) NOT NULL,
  `subjective` varchar(1000) NOT NULL,
  `objective` varchar(1000) NOT NULL,
  `assessment` varchar(1000) NOT NULL,
  `plans` varchar(1000) NOT NULL,
  `id_appointment` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soap_notes`
--

INSERT INTO `soap_notes` (`id_soapnote`, `subjective`, `objective`, `assessment`, `plans`, `id_appointment`) VALUES
(1, 'Η δασκάλα είπε ότι μπορεί να την καταλάβει καλύτερα.', 'Κατάφερε να πεί με ακρίβεια 70%, λέξεις που αρχίζουν με Ρ.', 'Αυξήθηκε απο 60% σε 70% η ικανότητα του να πεί λέξεις που αρχίζουν με Ρ.', 'Στη επόμενη συνεδρία θα εισαχθούν λέξεις που περιέχουν το Ρ στην μέση.', 81),
(2, 'test', 'test', 'test', 'test', 2);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id_specialty` int(11) NOT NULL,
  `specialty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id_specialty`, `specialty`) VALUES
(1, 'Διαταραχές φώνησης'),
(2, 'Διαταραχές ροής ομιλίας'),
(3, 'Διαταραχές κατάπωσης');

-- --------------------------------------------------------

--
-- Table structure for table `specialties_therapists`
--

CREATE TABLE `specialties_therapists` (
  `id` int(11) NOT NULL,
  `id_therapist` int(11) DEFAULT NULL,
  `id_specialty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(1) NOT NULL,
  `description` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `description`) VALUES
(1, 'Ενεργός'),
(2, 'Ανενεργός'),
(3, 'Ολοκληρωμένος'),
(4, 'Ακυρωμένος');

-- --------------------------------------------------------

--
-- Table structure for table `therapists`
--

CREATE TABLE `therapists` (
  `id_therapists` int(5) NOT NULL,
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pphone` varchar(20) NOT NULL,
  `hphone` varchar(20) DEFAULT NULL,
  `cv` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `therapists`
--

INSERT INTO `therapists` (`id_therapists`, `id`, `name`, `surname`, `address`, `pphone`, `hphone`, `cv`, `date`) VALUES
(1, 1234, 'Έλενα', 'Δημητρίου', 'Σκοπέλλου 4, Άγιος Αθανάσιος, Λεμεσός', '99824213', '25723734', '', '2020-04-27'),
(2, 902321, 'Ευάγγελος', 'Φρίξου', 'Ανεξαρτησίας 15', '99112233', '24112233', '', '2020-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `therapistspayments`
--

CREATE TABLE `therapistspayments` (
  `id_tpayments` int(5) NOT NULL,
  `id_therapist` int(5) NOT NULL,
  `month` int(2) NOT NULL,
  `year` year(4) NOT NULL,
  `salarymina` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `overtimemina` float NOT NULL,
  `koinonikesmina` float NOT NULL,
  `gesimina` float NOT NULL,
  `pleonazontosmina` float NOT NULL,
  `katartisimina` float NOT NULL,
  `sinoxonmina` float NOT NULL,
  `proniasmina` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typeofappointments`
--

CREATE TABLE `typeofappointments` (
  `id_type` int(2) NOT NULL,
  `type` varchar(10) NOT NULL,
  `duration` int(3) DEFAULT NULL,
  `price` double(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeofappointments`
--

INSERT INTO `typeofappointments` (`id_type`, `type`, `duration`, `price`) VALUES
(1, 'ΑΠ', 120, 85.00),
(2, 'ΑΕ', 120, 85.00),
(3, 'ΘΠ', 45, 25.00),
(4, 'ΘΕ', 45, 25.00),
(5, 'ΣΓ', 15, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_role` int(1) NOT NULL,
  `id_patient` int(5) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `id_role`, `id_patient`, `id_therapist`, `email`, `token`) VALUES
(1, 'elena', '$2y$10$iy.OJ8fwLBhtF8N9aslLIuyJUjSyW63AlzlWldycK0TxWigzArleK', 1, NULL, 1, 'way2talk.slp@gmail.com', ''),
(2, 'frixos', '$2y$10$l1bMLmEHTmiLr2mPrnr21uRfAibMPN03Fx/9.LLU7aaGPYoHDQHSW', 3, NULL, 2, 'frixo@gmail.com', NULL),
(3, 'agapidis', '$2y$10$Y9MuvBfw9X3KHafJbgc9reIOHuOQeMk7JF96oaFxC1uYY4znLH9Iu', 2, 1, NULL, 'agapidis@hotmai.com', NULL),
(5, 'katerina', '$2y$10$ybjHCRfVzM84KnFF7HTrVeGVjam6obNkOmBkKUUrrseeepKOnaaVW', 2, 2, NULL, 'vasilisapoel90@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `valuation`
--

CREATE TABLE `valuation` (
  `id_valuation` int(5) NOT NULL,
  `record` varchar(300) DEFAULT NULL,
  `valuation` varchar(300) DEFAULT NULL,
  `understanding` varchar(300) DEFAULT NULL,
  `expression` varchar(300) DEFAULT NULL,
  `cognitiveabilities` varchar(300) DEFAULT NULL,
  `speachdisorders` varchar(300) DEFAULT NULL,
  `voicedisorders` varchar(300) DEFAULT NULL,
  `orthodonticcontrol` varchar(300) DEFAULT NULL,
  `evaluationFile` varchar(100) DEFAULT NULL,
  `id_appointment` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `valuation`
--

INSERT INTO `valuation` (`id_valuation`, `record`, `valuation`, `understanding`, `expression`, `cognitiveabilities`, `speachdisorders`, `voicedisorders`, `orthodonticcontrol`, `evaluationFile`, `id_appointment`) VALUES
(1, 'Ο Δημήτρης Αγαπίδης γεννήθηκε στις 27/04/1987 στην Επαρχία Λεμεσού. Είναι ελεύθερος και κατοικεί μόνος του. Ο κ. Δημήτρης υπέστηκε Αγγειακό Εγκεφαλικό Επεισόδιο, με συνέπεια ημιπληγίας ι της δεξιάς πλευράς του σώματος. Χρησιμοποιεί τροχοκάθησμα και αντιμετωπίζει προβλήματα κατάποσης και σίτισης.', 'Παρουσία γνωστικών και γλωσσικών ελλειμάτων και στοματοπροσωπικών αδυναμιών, λόγω εγκεφαλικού επεισοδίου.', 'Mini mental test:05/30', '-', 'Mini mental test:05-30', 'Απουσία ομιλίας. Χρησιμοποιεί άναρθρες κραυγές.', '-', 'Αδυναμία των μυών της στοματικής και λαρυγγικής κοιλότητας.', 'bluehost.pdf', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id_appointment`),
  ADD KEY `id_type` (`id_type`,`id_patient`,`id_therapist`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_therapist` (`id_therapist`);

--
-- Indexes for table `appointmentsreceipts`
--
ALTER TABLE `appointmentsreceipts`
  ADD UNIQUE KEY `id_receipt` (`id_receipt`);

--
-- Indexes for table `appointmentsreceipts_amounts`
--
ALTER TABLE `appointmentsreceipts_amounts`
  ADD PRIMARY KEY (`id_amount`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `id_folders` (`id_folders`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folders`);

--
-- Indexes for table `longterm_goals`
--
ALTER TABLE `longterm_goals`
  ADD PRIMARY KEY (`id_longterm`),
  ADD KEY `id_appointment` (`id_appointment`);

--
-- Indexes for table `notification2`
--
ALTER TABLE `notification2`
  ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `notificationsent`
--
ALTER TABLE `notificationsent`
  ADD PRIMARY KEY (`id_notificationsent`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_therapist` (`id_therapist`),
  ADD KEY `id_patient_2` (`id_patient`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id_patient`),
  ADD KEY `id_parents` (`id_parents`,`id_therapist`),
  ADD KEY `id_therapist` (`id_therapist`),
  ADD KEY `status` (`id_status`);

--
-- Indexes for table `patient_parents`
--
ALTER TABLE `patient_parents`
  ADD PRIMARY KEY (`id_parent`);

--
-- Indexes for table `patient_siblings`
--
ALTER TABLE `patient_siblings`
  ADD PRIMARY KEY (`id_siblings`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Indexes for table `paymentslip`
--
ALTER TABLE `paymentslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progressreport`
--
ALTER TABLE `progressreport`
  ADD PRIMARY KEY (`id_progress`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `shortterm_goals`
--
ALTER TABLE `shortterm_goals`
  ADD PRIMARY KEY (`id_shortterm`),
  ADD KEY `id_longterm` (`id_longterm`);

--
-- Indexes for table `soap_notes`
--
ALTER TABLE `soap_notes`
  ADD PRIMARY KEY (`id_soapnote`),
  ADD KEY `id_appointment` (`id_appointment`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id_specialty`);

--
-- Indexes for table `specialties_therapists`
--
ALTER TABLE `specialties_therapists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_therapist` (`id_therapist`,`id_specialty`),
  ADD KEY `id_specialty` (`id_specialty`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapists`
--
ALTER TABLE `therapists`
  ADD PRIMARY KEY (`id_therapists`);

--
-- Indexes for table `therapistspayments`
--
ALTER TABLE `therapistspayments`
  ADD PRIMARY KEY (`id_tpayments`),
  ADD KEY `id_therapist` (`id_therapist`);

--
-- Indexes for table `typeofappointments`
--
ALTER TABLE `typeofappointments`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `id_role` (`id_role`,`id_patient`,`id_therapist`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_therapist` (`id_therapist`);

--
-- Indexes for table `valuation`
--
ALTER TABLE `valuation`
  ADD PRIMARY KEY (`id_valuation`),
  ADD UNIQUE KEY `id_appointment_4` (`id_appointment`),
  ADD KEY `id_appointment` (`id_appointment`),
  ADD KEY `id_appointment_2` (`id_appointment`),
  ADD KEY `id_appointment_3` (`id_appointment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id_appointment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `appointmentsreceipts`
--
ALTER TABLE `appointmentsreceipts`
  MODIFY `id_receipt` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointmentsreceipts_amounts`
--
ALTER TABLE `appointmentsreceipts_amounts`
  MODIFY `id_amount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `longterm_goals`
--
ALTER TABLE `longterm_goals`
  MODIFY `id_longterm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification2`
--
ALTER TABLE `notification2`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notificationsent`
--
ALTER TABLE `notificationsent`
  MODIFY `id_notificationsent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id_patient` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_parents`
--
ALTER TABLE `patient_parents`
  MODIFY `id_parent` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_siblings`
--
ALTER TABLE `patient_siblings`
  MODIFY `id_siblings` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paymentslip`
--
ALTER TABLE `paymentslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progressreport`
--
ALTER TABLE `progressreport`
  MODIFY `id_progress` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shortterm_goals`
--
ALTER TABLE `shortterm_goals`
  MODIFY `id_shortterm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `soap_notes`
--
ALTER TABLE `soap_notes`
  MODIFY `id_soapnote` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id_specialty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialties_therapists`
--
ALTER TABLE `specialties_therapists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `therapists`
--
ALTER TABLE `therapists`
  MODIFY `id_therapists` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `therapistspayments`
--
ALTER TABLE `therapistspayments`
  MODIFY `id_tpayments` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeofappointments`
--
ALTER TABLE `typeofappointments`
  MODIFY `id_type` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `valuation`
--
ALTER TABLE `valuation`
  MODIFY `id_valuation` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id_patient`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `typeofappointments` (`id_type`);

--
-- Constraints for table `longterm_goals`
--
ALTER TABLE `longterm_goals`
  ADD CONSTRAINT `longterm_goals_ibfk_2` FOREIGN KEY (`id_appointment`) REFERENCES `appointments` (`id_appointment`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`id_parents`) REFERENCES `patient_parents` (`id_parent`),
  ADD CONSTRAINT `patients_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `patients_ibfk_4` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `patient_siblings`
--
ALTER TABLE `patient_siblings`
  ADD CONSTRAINT `patient_siblings_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id_patient`);

--
-- Constraints for table `shortterm_goals`
--
ALTER TABLE `shortterm_goals`
  ADD CONSTRAINT `shortterm_goals_ibfk_1` FOREIGN KEY (`id_longterm`) REFERENCES `longterm_goals` (`id_longterm`);

--
-- Constraints for table `soap_notes`
--
ALTER TABLE `soap_notes`
  ADD CONSTRAINT `soap_notes_ibfk_1` FOREIGN KEY (`id_appointment`) REFERENCES `appointments` (`id_appointment`);

--
-- Constraints for table `specialties_therapists`
--
ALTER TABLE `specialties_therapists`
  ADD CONSTRAINT `specialties_therapists_ibfk_1` FOREIGN KEY (`id_specialty`) REFERENCES `specialties` (`id_specialty`),
  ADD CONSTRAINT `specialties_therapists_ibfk_2` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `therapistspayments`
--
ALTER TABLE `therapistspayments`
  ADD CONSTRAINT `therapistspayments_ibfk_1` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id_patient`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `valuation`
--
ALTER TABLE `valuation`
  ADD CONSTRAINT `valuation_ibfk_1` FOREIGN KEY (`id_appointment`) REFERENCES `appointments` (`id_appointment`);
--
-- Database: `waytwota_Way2TalkDB`
--
CREATE DATABASE IF NOT EXISTS `waytwota_Way2TalkDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `waytwota_Way2TalkDB`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id_appointment` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL,
  `id_type` int(2) DEFAULT NULL,
  `id_patient` int(5) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `paid` varchar(3) DEFAULT NULL,
  `id_receipt` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id_appointment`, `date`, `time`, `id_type`, `id_patient`, `id_therapist`, `paid`, `id_receipt`) VALUES
(2, '2020-04-30', '14:00:00', 3, 1, 1, 'yes', 1),
(3, '2020-05-07', '14:00:00', 3, 1, 1, 'no', NULL),
(4, '2020-05-14', '14:00:00', 3, 1, 1, 'yes', 2),
(5, '2020-05-21', '14:00:00', 3, 1, 1, 'no', NULL),
(6, '2020-05-28', '14:00:00', 3, 1, 1, 'no', NULL),
(7, '2020-06-04', '14:00:00', 3, 1, 1, 'no', NULL),
(8, '2020-06-11', '14:00:00', 3, 1, 1, 'no', NULL),
(9, '2020-06-18', '14:00:00', 3, 1, 1, 'no', NULL),
(10, '2020-06-25', '14:00:00', 3, 1, 1, 'no', NULL),
(11, '2020-07-02', '14:00:00', 3, 1, 1, 'no', NULL),
(12, '2020-07-09', '14:00:00', 3, 1, 1, 'no', NULL),
(13, '2020-07-16', '14:00:00', 3, 1, 1, 'no', NULL),
(14, '2020-07-23', '14:00:00', 3, 1, 1, 'no', NULL),
(15, '2020-07-30', '14:00:00', 3, 1, 1, 'no', NULL),
(16, '2020-08-06', '14:00:00', 3, 1, 1, 'no', NULL),
(17, '2020-08-13', '14:00:00', 3, 1, 1, 'no', NULL),
(18, '2020-08-20', '14:00:00', 3, 1, 1, 'no', NULL),
(19, '2020-08-27', '14:00:00', 3, 1, 1, 'no', NULL),
(20, '2020-09-03', '14:00:00', 3, 1, 1, 'no', NULL),
(21, '2020-09-10', '14:00:00', 3, 1, 1, 'no', NULL),
(22, '2020-09-17', '14:00:00', 3, 1, 1, 'no', NULL),
(23, '2020-09-24', '14:00:00', 3, 1, 1, 'no', NULL),
(24, '2020-10-01', '14:00:00', 3, 1, 1, 'no', NULL),
(25, '2020-10-08', '14:00:00', 3, 1, 1, 'no', NULL),
(26, '2020-10-15', '14:00:00', 3, 1, 1, 'no', NULL),
(27, '2020-10-22', '14:00:00', 3, 1, 1, 'no', NULL),
(28, '2020-04-29', '13:45:00', 3, 2, 2, 'no', NULL),
(29, '2020-05-06', '13:45:00', 3, 2, 2, 'no', NULL),
(30, '2020-05-13', '13:45:00', 3, 2, 2, 'no', NULL),
(31, '2020-05-20', '13:45:00', 3, 2, 2, 'no', NULL),
(32, '2020-05-27', '13:45:00', 3, 2, 2, 'no', NULL),
(33, '2020-06-03', '13:45:00', 3, 2, 2, 'no', NULL),
(34, '2020-06-10', '13:45:00', 3, 2, 2, 'no', NULL),
(35, '2020-06-17', '13:45:00', 3, 2, 2, 'no', NULL),
(36, '2020-06-24', '13:45:00', 3, 2, 2, 'no', NULL),
(37, '2020-07-01', '13:45:00', 3, 2, 2, 'no', NULL),
(38, '2020-07-08', '13:45:00', 3, 2, 2, 'no', NULL),
(39, '2020-07-15', '13:45:00', 3, 2, 2, 'no', NULL),
(40, '2020-07-22', '13:45:00', 3, 2, 2, 'no', NULL),
(41, '2020-07-29', '13:45:00', 3, 2, 2, 'no', NULL),
(42, '2020-08-05', '13:45:00', 3, 2, 2, 'no', NULL),
(43, '2020-08-12', '13:45:00', 3, 2, 2, 'no', NULL),
(44, '2020-08-19', '13:45:00', 3, 2, 2, 'no', NULL),
(45, '2020-08-26', '13:45:00', 3, 2, 2, 'no', NULL),
(46, '2020-09-02', '13:45:00', 3, 2, 2, 'no', NULL),
(47, '2020-09-09', '13:45:00', 3, 2, 2, 'no', NULL),
(48, '2020-09-16', '13:45:00', 3, 2, 2, 'no', NULL),
(49, '2020-09-23', '13:45:00', 3, 2, 2, 'no', NULL),
(50, '2020-09-30', '13:45:00', 3, 2, 2, 'no', NULL),
(51, '2020-10-07', '13:45:00', 3, 2, 2, 'no', NULL),
(52, '2020-10-14', '13:45:00', 3, 2, 2, 'no', NULL),
(53, '2020-10-21', '13:45:00', 3, 2, 2, 'no', NULL),
(54, '2020-10-28', '13:45:00', 3, 2, 2, 'no', NULL),
(55, '2020-11-04', '13:45:00', 3, 2, 2, 'no', NULL),
(56, '2020-11-11', '13:45:00', 3, 2, 2, 'no', NULL),
(57, '2020-11-18', '13:45:00', 3, 2, 2, 'no', NULL),
(58, '2020-11-25', '13:45:00', 3, 2, 2, 'no', NULL),
(59, '2020-12-02', '13:45:00', 3, 2, 2, 'no', NULL),
(60, '2020-12-09', '13:45:00', 3, 2, 2, 'no', NULL),
(61, '2020-12-16', '13:45:00', 3, 2, 2, 'no', NULL),
(62, '2020-12-23', '13:45:00', 3, 2, 2, 'no', NULL),
(63, '2020-12-30', '13:45:00', 3, 2, 2, 'no', NULL),
(64, '2021-01-06', '13:45:00', 3, 2, 2, 'no', NULL),
(65, '2021-01-13', '13:45:00', 3, 2, 2, 'no', NULL),
(66, '2021-01-20', '13:45:00', 3, 2, 2, 'no', NULL),
(67, '2021-01-27', '13:45:00', 3, 2, 2, 'no', NULL),
(68, '2021-02-03', '13:45:00', 3, 2, 2, 'no', NULL),
(69, '2021-02-10', '13:45:00', 3, 2, 2, 'no', NULL),
(70, '2021-02-17', '13:45:00', 3, 2, 2, 'no', NULL),
(71, '2021-02-24', '13:45:00', 3, 2, 2, 'no', NULL),
(72, '2021-03-03', '13:45:00', 3, 2, 2, 'no', NULL),
(73, '2021-03-10', '13:45:00', 3, 2, 2, 'no', NULL),
(74, '2021-03-17', '13:45:00', 3, 2, 2, 'no', NULL),
(75, '2021-03-24', '13:45:00', 3, 2, 2, 'no', NULL),
(76, '2021-03-31', '13:45:00', 3, 2, 2, 'no', NULL),
(77, '2021-04-07', '13:45:00', 3, 2, 2, 'no', NULL),
(78, '2021-04-14', '13:45:00', 3, 2, 2, 'no', NULL),
(79, '2021-04-21', '13:45:00', 3, 2, 2, 'no', NULL),
(80, '2020-04-28', '11:30:00', 1, 1, 1, 'yes', 1),
(81, '2020-04-28', '14:00:00', 3, 2, 2, 'no', NULL),
(82, '2020-05-05', '14:00:00', 3, 2, 2, 'no', NULL),
(83, '2020-05-12', '14:00:00', 3, 2, 2, 'no', NULL),
(84, '2020-05-19', '14:00:00', 3, 2, 2, 'no', NULL),
(85, '2020-05-26', '14:00:00', 3, 2, 2, 'no', NULL),
(86, '2020-06-02', '14:00:00', 3, 2, 2, 'no', NULL),
(87, '2020-06-09', '14:00:00', 3, 2, 2, 'no', NULL),
(88, '2020-06-16', '14:00:00', 3, 2, 2, 'no', NULL),
(89, '2020-06-23', '14:00:00', 3, 2, 2, 'no', NULL),
(90, '2020-06-30', '14:00:00', 3, 2, 2, 'no', NULL),
(91, '2020-07-07', '14:00:00', 3, 2, 2, 'no', NULL),
(92, '2020-07-14', '14:00:00', 3, 2, 2, 'no', NULL),
(93, '2020-07-21', '14:00:00', 3, 2, 2, 'no', NULL),
(94, '2020-07-28', '14:00:00', 3, 2, 2, 'no', NULL),
(95, '2020-08-04', '14:00:00', 3, 2, 2, 'no', NULL),
(96, '2020-08-11', '14:00:00', 3, 2, 2, 'no', NULL),
(97, '2020-08-18', '14:00:00', 3, 2, 2, 'no', NULL),
(98, '2020-08-25', '14:00:00', 3, 2, 2, 'no', NULL),
(99, '2020-09-01', '14:00:00', 3, 2, 2, 'no', NULL),
(100, '2020-09-08', '14:00:00', 3, 2, 2, 'no', NULL),
(101, '2020-09-15', '14:00:00', 3, 2, 2, 'no', NULL),
(102, '2020-09-22', '14:00:00', 3, 2, 2, 'no', NULL),
(103, '2020-09-29', '14:00:00', 3, 2, 2, 'no', NULL),
(104, '2020-10-06', '14:00:00', 3, 2, 2, 'no', NULL),
(105, '2020-10-13', '14:00:00', 3, 2, 2, 'no', NULL),
(106, '2020-10-20', '14:00:00', 3, 2, 2, 'no', NULL),
(107, '2020-10-29', '14:00:00', 3, 1, 1, 'no', NULL),
(108, '2020-11-05', '14:00:00', 3, 1, 1, 'no', NULL),
(109, '2020-11-12', '14:00:00', 3, 1, 1, 'no', NULL),
(110, '2020-11-19', '14:00:00', 3, 1, 1, 'no', NULL),
(111, '2020-11-26', '14:00:00', 3, 1, 1, 'no', NULL),
(112, '2020-12-03', '14:00:00', 3, 1, 1, 'no', NULL),
(113, '2020-12-10', '14:00:00', 3, 1, 1, 'no', NULL),
(114, '2020-12-17', '14:00:00', 3, 1, 1, 'no', NULL),
(115, '2020-12-24', '14:00:00', 3, 1, 1, 'no', NULL),
(116, '2020-12-31', '14:00:00', 3, 1, 1, 'no', NULL),
(117, '2021-01-07', '14:00:00', 3, 1, 1, 'no', NULL),
(118, '2021-01-14', '14:00:00', 3, 1, 1, 'no', NULL),
(119, '2021-01-21', '14:00:00', 3, 1, 1, 'no', NULL),
(120, '2021-01-28', '14:00:00', 3, 1, 1, 'no', NULL),
(121, '2021-02-04', '14:00:00', 3, 1, 1, 'no', NULL),
(122, '2021-02-11', '14:00:00', 3, 1, 1, 'no', NULL),
(123, '2021-02-18', '14:00:00', 3, 1, 1, 'no', NULL),
(124, '2021-02-25', '14:00:00', 3, 1, 1, 'no', NULL),
(125, '2021-03-04', '14:00:00', 3, 1, 1, 'no', NULL),
(126, '2021-03-11', '14:00:00', 3, 1, 1, 'no', NULL),
(127, '2021-03-18', '14:00:00', 3, 1, 1, 'no', NULL),
(128, '2021-03-25', '14:00:00', 3, 1, 1, 'no', NULL),
(129, '2021-04-01', '14:00:00', 3, 1, 1, 'no', NULL),
(130, '2021-04-08', '14:00:00', 3, 1, 1, 'no', NULL),
(131, '2021-04-15', '14:00:00', 3, 1, 1, 'no', NULL),
(132, '2021-04-22', '14:00:00', 3, 1, 1, 'no', NULL),
(133, '2021-04-29', '14:00:00', 3, 1, 1, 'no', NULL),
(134, '2021-05-06', '14:00:00', 3, 1, 1, 'no', NULL),
(135, '2021-05-13', '14:00:00', 3, 1, 1, 'no', NULL),
(136, '2021-05-20', '14:00:00', 3, 1, 1, 'no', NULL),
(137, '2021-05-27', '14:00:00', 3, 1, 1, 'no', NULL),
(138, '2021-06-03', '14:00:00', 3, 1, 1, 'no', NULL),
(139, '2021-06-10', '14:00:00', 3, 1, 1, 'no', NULL),
(140, '2021-06-17', '14:00:00', 3, 1, 1, 'no', NULL),
(141, '2021-06-24', '14:00:00', 3, 1, 1, 'no', NULL),
(142, '2021-07-01', '14:00:00', 3, 1, 1, 'no', NULL),
(143, '2021-07-08', '14:00:00', 3, 1, 1, 'no', NULL),
(144, '2021-07-15', '14:00:00', 3, 1, 1, 'no', NULL),
(145, '2021-07-22', '14:00:00', 3, 1, 1, 'no', NULL),
(146, '2021-07-29', '14:00:00', 3, 1, 1, 'no', NULL),
(147, '2021-08-05', '14:00:00', 3, 1, 1, 'no', NULL),
(148, '2021-08-12', '14:00:00', 3, 1, 1, 'no', NULL),
(149, '2021-08-19', '14:00:00', 3, 1, 1, 'no', NULL),
(150, '2021-08-26', '14:00:00', 3, 1, 1, 'no', NULL),
(151, '2021-09-02', '14:00:00', 3, 1, 1, 'no', NULL),
(152, '2021-09-09', '14:00:00', 3, 1, 1, 'no', NULL),
(153, '2021-09-16', '14:00:00', 3, 1, 1, 'no', NULL),
(154, '2021-09-23', '14:00:00', 3, 1, 1, 'no', NULL),
(155, '2021-09-30', '14:00:00', 3, 1, 1, 'no', NULL),
(156, '2021-10-07', '14:00:00', 3, 1, 1, 'no', NULL),
(157, '2021-10-14', '14:00:00', 3, 1, 1, 'no', NULL),
(158, '2021-10-21', '14:00:00', 3, 1, 1, 'no', NULL),
(159, '2021-10-28', '14:00:00', 3, 1, 1, 'no', NULL),
(160, '2021-11-04', '14:00:00', 3, 1, 1, 'no', NULL),
(161, '2021-11-11', '14:00:00', 3, 1, 1, 'no', NULL),
(162, '2021-11-18', '14:00:00', 3, 1, 1, 'no', NULL),
(163, '2021-11-25', '14:00:00', 3, 1, 1, 'no', NULL),
(164, '2021-12-02', '14:00:00', 3, 1, 1, 'no', NULL),
(165, '2021-12-09', '14:00:00', 3, 1, 1, 'no', NULL),
(166, '2021-12-16', '14:00:00', 3, 1, 1, 'no', NULL),
(167, '2021-12-23', '14:00:00', 3, 1, 1, 'no', NULL),
(168, '2021-12-30', '14:00:00', 3, 1, 1, 'no', NULL),
(169, '2022-01-06', '14:00:00', 3, 1, 1, 'no', NULL),
(170, '2022-01-13', '14:00:00', 3, 1, 1, 'no', NULL),
(171, '2022-01-20', '14:00:00', 3, 1, 1, 'no', NULL),
(172, '2022-01-27', '14:00:00', 3, 1, 1, 'no', NULL),
(173, '2022-02-03', '14:00:00', 3, 1, 1, 'no', NULL),
(174, '2022-02-10', '14:00:00', 3, 1, 1, 'no', NULL),
(175, '2022-02-17', '14:00:00', 3, 1, 1, 'no', NULL),
(176, '2022-02-24', '14:00:00', 3, 1, 1, 'no', NULL),
(177, '2022-03-03', '14:00:00', 3, 1, 1, 'no', NULL),
(178, '2022-03-10', '14:00:00', 3, 1, 1, 'no', NULL),
(179, '2022-03-17', '14:00:00', 3, 1, 1, 'no', NULL),
(180, '2022-03-24', '14:00:00', 3, 1, 1, 'no', NULL),
(181, '2022-03-31', '14:00:00', 3, 1, 1, 'no', NULL),
(182, '2022-04-07', '14:00:00', 3, 1, 1, 'no', NULL),
(183, '2022-04-14', '14:00:00', 3, 1, 1, 'no', NULL),
(184, '2022-04-21', '14:00:00', 3, 1, 1, 'no', NULL),
(185, '2022-04-28', '14:00:00', 3, 1, 1, 'no', NULL),
(186, '2022-05-05', '14:00:00', 3, 1, 1, 'no', NULL),
(187, '2022-05-12', '14:00:00', 3, 1, 1, 'no', NULL),
(188, '2022-05-19', '14:00:00', 3, 1, 1, 'no', NULL),
(189, '2022-05-26', '14:00:00', 3, 1, 1, 'no', NULL),
(190, '2022-06-02', '14:00:00', 3, 1, 1, 'no', NULL),
(191, '2022-06-09', '14:00:00', 3, 1, 1, 'no', NULL),
(192, '2022-06-16', '14:00:00', 3, 1, 1, 'no', NULL),
(193, '2022-06-23', '14:00:00', 3, 1, 1, 'no', NULL),
(194, '2022-06-30', '14:00:00', 3, 1, 1, 'no', NULL),
(195, '2022-07-07', '14:00:00', 3, 1, 1, 'no', NULL),
(196, '2022-07-14', '14:00:00', 3, 1, 1, 'no', NULL),
(197, '2022-07-21', '14:00:00', 3, 1, 1, 'no', NULL),
(198, '2022-07-28', '14:00:00', 3, 1, 1, 'no', NULL),
(199, '2022-08-04', '14:00:00', 3, 1, 1, 'no', NULL),
(200, '2022-08-11', '14:00:00', 3, 1, 1, 'no', NULL),
(201, '2022-08-18', '14:00:00', 3, 1, 1, 'no', NULL),
(202, '2022-08-25', '14:00:00', 3, 1, 1, 'no', NULL),
(203, '2022-09-01', '14:00:00', 3, 1, 1, 'no', NULL),
(204, '2022-09-08', '14:00:00', 3, 1, 1, 'no', NULL),
(205, '2022-09-15', '14:00:00', 3, 1, 1, 'no', NULL),
(206, '2022-09-22', '14:00:00', 3, 1, 1, 'no', NULL),
(207, '2022-09-29', '14:00:00', 3, 1, 1, 'no', NULL),
(208, '2022-10-06', '14:00:00', 3, 1, 1, 'no', NULL),
(209, '2022-10-13', '14:00:00', 3, 1, 1, 'no', NULL),
(210, '2022-10-20', '14:00:00', 3, 1, 1, 'no', NULL),
(211, '2022-10-27', '14:00:00', 3, 1, 1, 'no', NULL),
(212, '2022-11-03', '14:00:00', 3, 1, 1, 'no', NULL),
(213, '2022-11-10', '14:00:00', 3, 1, 1, 'no', NULL),
(214, '2022-11-17', '14:00:00', 3, 1, 1, 'no', NULL),
(215, '2022-11-24', '14:00:00', 3, 1, 1, 'no', NULL),
(216, '2022-12-01', '14:00:00', 3, 1, 1, 'no', NULL),
(217, '2022-12-08', '14:00:00', 3, 1, 1, 'no', NULL),
(218, '2022-12-15', '14:00:00', 3, 1, 1, 'no', NULL),
(219, '2022-12-22', '14:00:00', 3, 1, 1, 'no', NULL),
(220, '2022-12-29', '14:00:00', 3, 1, 1, 'no', NULL),
(221, '2023-01-05', '14:00:00', 3, 1, 1, 'no', NULL),
(222, '2023-01-12', '14:00:00', 3, 1, 1, 'no', NULL),
(223, '2023-01-19', '14:00:00', 3, 1, 1, 'no', NULL),
(224, '2023-01-26', '14:00:00', 3, 1, 1, 'no', NULL),
(225, '2023-02-02', '14:00:00', 3, 1, 1, 'no', NULL),
(226, '2023-02-09', '14:00:00', 3, 1, 1, 'no', NULL),
(227, '2023-02-16', '14:00:00', 3, 1, 1, 'no', NULL),
(228, '2023-02-23', '14:00:00', 3, 1, 1, 'no', NULL),
(229, '2023-03-02', '14:00:00', 3, 1, 1, 'no', NULL),
(230, '2020-04-30', '12:00:00', 1, 2, 1, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointmentsreceipts`
--

CREATE TABLE `appointmentsreceipts` (
  `id_receipt` int(5) NOT NULL,
  `datepaid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointmentsreceipts`
--

INSERT INTO `appointmentsreceipts` (`id_receipt`, `datepaid`) VALUES
(1, '2020-04-28 14:30:02'),
(2, '2020-04-28 14:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `appointmentsreceipts_amounts`
--

CREATE TABLE `appointmentsreceipts_amounts` (
  `id_amount` int(11) NOT NULL,
  `price` double(5,2) NOT NULL,
  `id_receipt` int(11) NOT NULL,
  `type` text NOT NULL,
  `fpa` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointmentsreceipts_amounts`
--

INSERT INTO `appointmentsreceipts_amounts` (`id_amount`, `price`, `id_receipt`, `type`, `fpa`) VALUES
(1, 85.00, 1, 'ΑΠ', 17),
(2, 25.00, 1, 'ΘΠ', 17),
(3, 25.00, 2, 'ΘΠ', 17);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id_file` int(5) NOT NULL,
  `id_folders` int(5) DEFAULT NULL,
  `files` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id_file`, `id_folders`, `files`, `date`, `title`, `description`) VALUES
(1, 2, 'categories_V3.pdf', '2030-04-20 06:00:00', 'Ακουστική Μνήμη', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id_folders` int(5) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id_folders`, `title`, `id_therapist`) VALUES
(1, 'CV', 1),
(2, 'Ακουστική Μνήμη', 1);

-- --------------------------------------------------------

--
-- Table structure for table `longterm_goals`
--

CREATE TABLE `longterm_goals` (
  `id_longterm` int(5) NOT NULL,
  `longterm` text NOT NULL,
  `title` text NOT NULL,
  `id_appointment` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `longterm_goals`
--

INSERT INTO `longterm_goals` (`id_longterm`, `longterm`, `title`, `id_appointment`) VALUES
(2, 'Ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής.', 'Ενδυνάμωση των μυώv', 80),
(4, 'Ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής.', 'Ενδυνάμωση της στοματοπροσωπικής περιοχής', 81),
(5, 'Ενίσχυση της βραχύχρονης μνήμης.', 'Ενίσχυση της βραχύχρονης μνήμης.', 2),
(6, 'Ενίσχυση της μακρόχρονης μνήμης.', 'Ενίσχυση της μακρόχρονης μνήμης.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification2`
--

CREATE TABLE `notification2` (
  `id_notification` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `notification` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `whosentther` int(11) DEFAULT NULL,
  `whosentpat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification2`
--

INSERT INTO `notification2` (`id_notification`, `title`, `notification`, `date`, `whosentther`, `whosentpat`) VALUES
(1, 'Κρατάμε γερά', 'Υπομονή και επανερχόμαστε σύμφωνα με τα νέα γεγονότα του κορονοϊού. Ερχόμαστε πίσω από τις 30 Μαΐου.', '2020-04-28 08:25:51', 1, NULL),
(2, 'Ανησυχία', 'Παρατήρησα πως το περιβάλλον δεν είναι κατάλληλα σχεδιασμένο για άτομα με κινητικές δυσκολίες. Θα σας παρακαλούσα να  βρεθεί μια λύση σετικά με τους χόρους στάθμευσης.', '2020-04-28 08:35:19', NULL, 2),
(3, '21/5', 'Επανερχόμαστε!', '2020-04-30 09:16:53', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notificationsent`
--

CREATE TABLE `notificationsent` (
  `id_notificationsent` int(11) NOT NULL,
  `id_notification` int(11) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `id_patient` int(5) DEFAULT NULL,
  `read_not` int(1) NOT NULL DEFAULT '0',
  `deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notificationsent`
--

INSERT INTO `notificationsent` (`id_notificationsent`, `id_notification`, `id_therapist`, `id_patient`, `read_not`, `deleted`) VALUES
(3, 1, 2, NULL, 1, 0),
(2, 2, 1, NULL, 1, 0),
(11, 3, NULL, 2, 1, 0),
(10, 3, NULL, 1, 0, 0),
(9, 3, 2, NULL, 0, 0),
(8, 3, 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parametres`
--

CREATE TABLE `parametres` (
  `id_parametres` int(2) NOT NULL,
  `id` int(2) NOT NULL,
  `description` varchar(50) NOT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parametres`
--

INSERT INTO `parametres` (`id_parametres`, `id`, `description`, `value`) VALUES
(2, 1, 'ΦΠΑ', 17),
(1, 3, 'Φωνολογική Διαταραχή', NULL),
(1, 2, 'Γλωσσική Διαταραχή', NULL),
(1, 1, 'Αφασία', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id_patient` int(5) NOT NULL,
  `id` int(7) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `class` varchar(5) DEFAULT NULL,
  `nameofteacher` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `other_languages` varchar(200) DEFAULT NULL,
  `isrefferedfrom` varchar(50) DEFAULT NULL,
  `reasonofrefference` varchar(50) DEFAULT NULL,
  `diagnosis` varchar(50) DEFAULT NULL,
  `id_status` int(1) DEFAULT '1',
  `id_parents` int(5) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id_patient`, `id`, `name`, `surname`, `birthday`, `birthplace`, `telephone`, `address`, `school`, `class`, `nameofteacher`, `education`, `job`, `language`, `other_languages`, `isrefferedfrom`, `reasonofrefference`, `diagnosis`, `id_status`, `id_parents`, `id_therapist`, `date_start`, `date_end`) VALUES
(1, 1, 'Δημήτρης', 'Αγαπίδης', '1987-04-27', 'Παραλίμνι', '99998877', 'Σπάρτης 13, Λεμεσος', '', '', '', 'Δημοτικό', 'Μπάρμαν', 'Ελληνικά', '', 'Γιατρό', 'Αγγειακό Εγκεφαλικό Επεισόδιο ', '2', 1, NULL, 1, '2020-04-27', '0000-00-00'),
(2, 819245, 'Κατερίνα', 'Ανάογλου', '2017-04-14', 'Λεμεσός', '99792600', 'Μέσα Γειτονίας, Ελλάδος', 'Λανίτειο', 'Β5', 'Γεώργιος Παπαδόπουλος', '', '', '', '', 'Γιατρό', 'Καλύτερη ομιλία', '1', 1, 2, 2, '2020-04-27', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_parents`
--

CREATE TABLE `patient_parents` (
  `id_parent` int(5) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `fsurname` varchar(50) DEFAULT NULL,
  `fbirthday` date DEFAULT NULL,
  `fphone` varchar(20) DEFAULT NULL,
  `fjob` varchar(50) DEFAULT NULL,
  `feducation` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `msurname` varchar(50) DEFAULT NULL,
  `mbirthday` date DEFAULT NULL,
  `mphone` varchar(20) DEFAULT NULL,
  `mjob` varchar(50) DEFAULT NULL,
  `meducation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_parents`
--

INSERT INTO `patient_parents` (`id_parent`, `fname`, `fsurname`, `fbirthday`, `fphone`, `fjob`, `feducation`, `mname`, `msurname`, `mbirthday`, `mphone`, `mjob`, `meducation`) VALUES
(1, 'Γιώργος', 'Ανάογλου', '1990-04-20', '99691488', 'Στρατιωτικός', 'Λύκειο/Τεχνική', 'Αντρούλλα', 'Ανάογλου', '1995-04-08', '99148869', 'Δημόσιος Υπάλληλος', 'Λύκειο/Τεχνική'),
(2, 'Χαράλαμπος', 'Ανάογλου', '1990-04-17', '91245215', 'Στρατιωτικός', 'Δημοτικό', 'Μικαέλα', 'Ανάογλου', '1996-04-07', '92842151', 'Δημόσιος Υπάλληλος', 'Δημοτικό');

-- --------------------------------------------------------

--
-- Table structure for table `patient_siblings`
--

CREATE TABLE `patient_siblings` (
  `id_siblings` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `id_patient` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_siblings`
--

INSERT INTO `patient_siblings` (`id_siblings`, `name`, `birthday`, `school`, `id_patient`) VALUES
(1, 'Αθανάσιος', '2015-04-08', 'Μαθητής', 2),
(2, 'Παναγίωτης', '1997-06-05', 'Φοιτητής', 2);

-- --------------------------------------------------------

--
-- Table structure for table `paymentslip`
--

CREATE TABLE `paymentslip` (
  `id` int(11) NOT NULL,
  `id_therapist` int(5) NOT NULL,
  `salary` float NOT NULL,
  `koinonikes` float NOT NULL,
  `gesi` float NOT NULL,
  `pleonazontos` float NOT NULL,
  `katartisi` float NOT NULL,
  `sinoxon` float NOT NULL,
  `pronias` float NOT NULL,
  `arithmoskoinonikon` text NOT NULL,
  `arithmosforologikis` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `progressreport`
--

CREATE TABLE `progressreport` (
  `id_progress` int(5) NOT NULL,
  `abstract` longtext NOT NULL,
  `progress` longtext NOT NULL,
  `suggestions` longtext NOT NULL,
  `medicalhistory` longtext NOT NULL,
  `id_patient` int(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `progressreport`
--

INSERT INTO `progressreport` (`id_progress`, `abstract`, `progress`, `suggestions`, `medicalhistory`, `id_patient`, `date`) VALUES
(1, 'Κατά τις θεραπευτικές συνεδρίες αυτής της περιόδου, χρησιμοποιήθηκαν πολλές και διάφορες τεχνικές παρέμβασης όπως έναυσμα, άμεση μίμηση, καθυστερημένη μίμηση, υπόδειξη, επέκταση, επιμήκυνση, παρότρυνση και ενίσχυση.  Επιπλέον, χρησιμοποιήθηκε συστηματική λεκτική επιβράβευση, μετά από κάθε δραστηριότητα.  Επίσης, γινόταν παροχή άμεσης απτικής και λεκτικής ανατροφοδότησης και στο τέλος κάθε προσπάθειας, γινόταν επεξήγηση των λόγων που παρακολουθεί λογοθεραπευτικές συνεδρίες, όπως και αναφορά στην επίδοση του, την εκάστοτε μέρα. ', '1.	Ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής.\r\nΣτο συγκεκριμένο μακροπρόθεσμο στόχο για ενίσχυση του εύρους και ενδυνάμωση των μυών της στοματοπροσωπικής περιοχής, παρουσιάστηκε σημαντική πρόοδος. Αρχικά, στο βραχυπρόθεσμο στόχο ευαισθητοποίησης και τόνωσης των μυών της στοματικής κοιλότητας και του προσώπου, το άτομο παρουσίασε βελτίωση αφού έδειχνε να αισθάνεται περισσότερο την απτική επαφή σε αυτά τα σημεία με την πάροδο του χρόνου. Επίσης, στους βραχύχρονους στόχους που αφορούν τις εκφράσεις του προσώπου και τη κίνηση της γλώσσας και των χειλιών με άνεση, το άτομο σημείωσε πρόοδο αφού αρχικά δεν κατάβαλε καμία προσπάθεια, ενώ στη συνέχεια παρατηρήθηκε ελάχιστη κίνηση και δύναμη που κατάβαλε για την εκτέλεση των ασκήσεων.\r\n2.	Ενίσχυση της βραχύχρονης μνήμης.\r\nΣτο μακροπρόθεσμο στόχο που αφορά την βραχύχρονη μνήμη, το άτομο παρουσίασε σημαντική πρόοδο. Συγκεκριμένα ο κ. Δημήτρης στο στόχο που αφορούσε την οπτική μνήμη δύο στοιχείων, αρχικά σημείωσε ποσοστό 0% ενώ μετέπειτα παρουσίασε ποσοστό 60%. \r\n3.	Ενίσχυση της μακρόχρονης μνήμης.\r\nΑκολούθως, στον μακροπρόθεσμο στόχο που αφορούσε τη μακρόχρονη μνήμη, παρουσίασε μεγάλη πρόοδο. Πιο συγκεκριμένα, στη συμπλήρωση μιας πρότασης, αρχικά κατέδειξε ποσοστό επιτυχίας 20%, ενώ στη συνέχεια ποσοστό 80%. \r\n4.	Ενίσχυση της παραγωγής και κατανόησης του ατόμου στο βασικό λεξιλόγιο.\r\nΕπιπρόσθετα στο στόχο παραγωγής και κατανόησης του ατόμου στο βασικό λεξιλόγιο, δόθηκε έμφαση στις άμεσες ανάγκες του ατόμου. Δηλαδή, στο βραχύχρονο χρόνο ανάκλησης ρήματος για τον σχηματισμό προτάσεων, χρησιμοποιήθηκαν τα ρήματα «πονώ» και «θέλω». Σε αυτό το στόχο, με λεκτικό βοήθημα (πρώτη συλλαβή), το άτομο έκανε την επιθυμητή πρόταση, με αρχικό ποσοστό 80% και τελικά επίτευξη του στόχου με ποσοστό 100%. Στον επόμενο βραχυπρόθεσμο στόχο που αφορούσε την κατανόηση και κατονομασία των μερών του σώματος, το άτομο έδειξε να τα κατανοεί με 100% επιτυχία από την πρώτη προσπάθεια, ενώ στο επίπεδο κατονομασίας αρχικά επέδειξε ποσοστό 60% και στη συνέχεια 80%.\r\n\r\n', 'Προτείνεται ο κ. Δημήτρης να συνεχίσει την παρακολούθηση ατομικών συνεδριών λογοθεραπείας, για δύο φορές την εβδομάδα, με διάρκεια 45 λεπτά/συνεδρία.  \r\nΌλοι οι μακροπρόθεσμοι στόχοι, που έχουν τεθεί κατά την παρούσα περίοδο θεραπείας, να συνεχιστούν μέχρι να επιτευχθούν.  \r\nΤο ίδιο ισχύει και για τους βραχυπρόθεσμους στόχους που δεν έχουν επιτευχθεί.   \r\n', 'Ο Δημήτρης Αγαπίδης γεννήθηκε στις 27/04/1987 στην Επαρχία Λεμεσού. Είναι ελεύθερος και διαμένει με κατ\' οίκον φροντιστή. Ο κ. Δημήτρης υπέστηκε Αγγειακό Εγκεφαλικό Επεισόδιο, με συνέπεια ημιπληγίας ι της δεξιάς πλευράς του σώματος. Χρησιμοποιεί τροχοκάθησμα και αντιμετωπίζει προβλήματα κατάποσης και σίτισης. Κατά τη Λογοθεραπευτική Αξιολόγηση παρατηρήθηκε παρουσία γνωστικών και γλωσσικών ελλειμάτων και στοματοπροσωπικών αδυναμιών, λόγω εγκεφαλικού επεισοδίου.', 1, '2020-04-28 07:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(1) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_role`, `role`) VALUES
(1, 'Admin'),
(2, 'Patient'),
(3, 'Users');

-- --------------------------------------------------------

--
-- Table structure for table `shortterm_goals`
--

CREATE TABLE `shortterm_goals` (
  `id_shortterm` int(5) NOT NULL,
  `shortterm` text NOT NULL,
  `ratesuccess` int(3) DEFAULT NULL,
  `id_longterm` int(5) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shortterm_goals`
--

INSERT INTO `shortterm_goals` (`id_shortterm`, `shortterm`, `ratesuccess`, `id_longterm`, `title`) VALUES
(2, 'Ευαισθητοποίηση και τόνωση των μυών της στοματικής κοιλότητας και του προσώπου.', 70, 2, 'Τόνωση των μυών'),
(3, 'Το άτομο να κάνει εκφράσεις προσώπου με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 40, 2, 'Εκφράσεις προσώπου με άνεση'),
(4, 'Το άτομο να κινεί  τη γλώσσα του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 33, 2, 'Κίνηση  της γλώσσα του με άνεση'),
(5, 'Το άτομο να κινεί  τα χείλη του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 33, 2, 'Κίνηση  των χείλών του με άνεση'),
(6, 'Ευαισθητοποίηση και τόνωση των μυών της στοματικής κοιλότητας και του προσώπου.', 49, 4, 'Τόνωση των μυών'),
(7, 'Το άτομο να κάνει εκφράσεις προσώπου με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 90, 4, 'Εκφράσεις'),
(8, 'Το άτομο να κινεί  τη γλώσσα του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 95, 4, 'Άνεση γλώσσας'),
(9, 'Το άτομο να κινεί  τα χείλη του με άνεση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 100, 4, 'Κινεί τα χείλη με άνεση'),
(10, 'Το άτομο να θυμάται οπτικά 2 στοιχεία, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 80, 5, 'Θυμάται οπτικά 2 στοιχεία'),
(11, 'Το άτομο να συμπληρώσει μια πρόταση, με 90% επιτυχία σε 3 συνεχόμενες συνεδρίες.', 90, 6, 'συμπλήρωσης μιας πρόταση');

-- --------------------------------------------------------

--
-- Table structure for table `soap_notes`
--

CREATE TABLE `soap_notes` (
  `id_soapnote` int(5) NOT NULL,
  `subjective` varchar(1000) NOT NULL,
  `objective` varchar(1000) NOT NULL,
  `assessment` varchar(1000) NOT NULL,
  `plans` varchar(1000) NOT NULL,
  `id_appointment` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soap_notes`
--

INSERT INTO `soap_notes` (`id_soapnote`, `subjective`, `objective`, `assessment`, `plans`, `id_appointment`) VALUES
(1, 'Η δασκάλα είπε ότι μπορεί να την καταλάβει καλύτερα.', 'Κατάφερε να πεί με ακρίβεια 70%, λέξεις που αρχίζουν με Ρ.', 'Αυξήθηκε απο 60% σε 70% η ικανότητα του να πεί λέξεις που αρχίζουν με Ρ.', 'Στη επόμενη συνεδρία θα εισαχθούν λέξεις που περιέχουν το Ρ στην μέση.', 81),
(2, 'test', 'test', 'test', 'test', 2);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id_specialty` int(11) NOT NULL,
  `specialty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id_specialty`, `specialty`) VALUES
(1, 'Διαταραχές φώνησης'),
(2, 'Διαταραχές ροής ομιλίας'),
(3, 'Διαταραχές κατάπωσης');

-- --------------------------------------------------------

--
-- Table structure for table `specialties_therapists`
--

CREATE TABLE `specialties_therapists` (
  `id` int(11) NOT NULL,
  `id_therapist` int(11) DEFAULT NULL,
  `id_specialty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(1) NOT NULL,
  `description` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `description`) VALUES
(1, 'Ενεργός'),
(2, 'Ανενεργός'),
(3, 'Ολοκληρωμένος'),
(4, 'Ακυρωμένος');

-- --------------------------------------------------------

--
-- Table structure for table `therapists`
--

CREATE TABLE `therapists` (
  `id_therapists` int(5) NOT NULL,
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pphone` varchar(20) NOT NULL,
  `hphone` varchar(20) DEFAULT NULL,
  `cv` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `therapists`
--

INSERT INTO `therapists` (`id_therapists`, `id`, `name`, `surname`, `address`, `pphone`, `hphone`, `cv`, `date`) VALUES
(1, 1234, 'Έλενα', 'Δημητρίου', 'Σκοπέλλου 4, Άγιος Αθανάσιος, Λεμεσός', '99824213', '25723734', '', '2020-04-27'),
(2, 902321, 'Ευάγγελος', 'Φρίξου', 'Ανεξαρτησίας 15', '99112233', '24112233', '', '2020-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `therapistspayments`
--

CREATE TABLE `therapistspayments` (
  `id_tpayments` int(5) NOT NULL,
  `id_therapist` int(5) NOT NULL,
  `month` int(2) NOT NULL,
  `year` year(4) NOT NULL,
  `salarymina` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `overtimemina` float NOT NULL,
  `koinonikesmina` float NOT NULL,
  `gesimina` float NOT NULL,
  `pleonazontosmina` float NOT NULL,
  `katartisimina` float NOT NULL,
  `sinoxonmina` float NOT NULL,
  `proniasmina` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typeofappointments`
--

CREATE TABLE `typeofappointments` (
  `id_type` int(2) NOT NULL,
  `type` varchar(10) NOT NULL,
  `duration` int(3) DEFAULT NULL,
  `price` double(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeofappointments`
--

INSERT INTO `typeofappointments` (`id_type`, `type`, `duration`, `price`) VALUES
(1, 'ΑΠ', 120, 85.00),
(2, 'ΑΕ', 120, 85.00),
(3, 'ΘΠ', 45, 25.00),
(4, 'ΘΕ', 45, 25.00),
(5, 'ΣΓ', 15, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_role` int(1) NOT NULL,
  `id_patient` int(5) DEFAULT NULL,
  `id_therapist` int(5) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `id_role`, `id_patient`, `id_therapist`, `email`, `token`) VALUES
(1, 'elena', '$2y$10$iy.OJ8fwLBhtF8N9aslLIuyJUjSyW63AlzlWldycK0TxWigzArleK', 1, NULL, 1, 'way2talk.slp@gmail.com', ''),
(2, 'frixos', '$2y$10$l1bMLmEHTmiLr2mPrnr21uRfAibMPN03Fx/9.LLU7aaGPYoHDQHSW', 3, NULL, 2, 'frixo@gmail.com', NULL),
(3, 'agapidis', '$2y$10$Y9MuvBfw9X3KHafJbgc9reIOHuOQeMk7JF96oaFxC1uYY4znLH9Iu', 2, 1, NULL, 'agapidis@hotmai.com', NULL),
(5, 'katerina', '$2y$10$ybjHCRfVzM84KnFF7HTrVeGVjam6obNkOmBkKUUrrseeepKOnaaVW', 2, 2, NULL, 'vasilisapoel90@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `valuation`
--

CREATE TABLE `valuation` (
  `id_valuation` int(5) NOT NULL,
  `record` varchar(300) DEFAULT NULL,
  `valuation` varchar(300) DEFAULT NULL,
  `understanding` varchar(300) DEFAULT NULL,
  `expression` varchar(300) DEFAULT NULL,
  `cognitiveabilities` varchar(300) DEFAULT NULL,
  `speachdisorders` varchar(300) DEFAULT NULL,
  `voicedisorders` varchar(300) DEFAULT NULL,
  `orthodonticcontrol` varchar(300) DEFAULT NULL,
  `evaluationFile` varchar(100) DEFAULT NULL,
  `id_appointment` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `valuation`
--

INSERT INTO `valuation` (`id_valuation`, `record`, `valuation`, `understanding`, `expression`, `cognitiveabilities`, `speachdisorders`, `voicedisorders`, `orthodonticcontrol`, `evaluationFile`, `id_appointment`) VALUES
(1, 'Ο Δημήτρης Αγαπίδης γεννήθηκε στις 27/04/1987 στην Επαρχία Λεμεσού. Είναι ελεύθερος και κατοικεί μόνος του. Ο κ. Δημήτρης υπέστηκε Αγγειακό Εγκεφαλικό Επεισόδιο, με συνέπεια ημιπληγίας ι της δεξιάς πλευράς του σώματος. Χρησιμοποιεί τροχοκάθησμα και αντιμετωπίζει προβλήματα κατάποσης και σίτισης.', 'Παρουσία γνωστικών και γλωσσικών ελλειμάτων και στοματοπροσωπικών αδυναμιών, λόγω εγκεφαλικού επεισοδίου.', 'Mini mental test:05/30', '-', 'Mini mental test:05-30', 'Απουσία ομιλίας. Χρησιμοποιεί άναρθρες κραυγές.', '-', 'Αδυναμία των μυών της στοματικής και λαρυγγικής κοιλότητας.', 'bluehost.pdf', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id_appointment`),
  ADD KEY `id_type` (`id_type`,`id_patient`,`id_therapist`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_therapist` (`id_therapist`);

--
-- Indexes for table `appointmentsreceipts`
--
ALTER TABLE `appointmentsreceipts`
  ADD UNIQUE KEY `id_receipt` (`id_receipt`);

--
-- Indexes for table `appointmentsreceipts_amounts`
--
ALTER TABLE `appointmentsreceipts_amounts`
  ADD PRIMARY KEY (`id_amount`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `id_folders` (`id_folders`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folders`);

--
-- Indexes for table `longterm_goals`
--
ALTER TABLE `longterm_goals`
  ADD PRIMARY KEY (`id_longterm`),
  ADD KEY `id_appointment` (`id_appointment`);

--
-- Indexes for table `notification2`
--
ALTER TABLE `notification2`
  ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `notificationsent`
--
ALTER TABLE `notificationsent`
  ADD PRIMARY KEY (`id_notificationsent`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_therapist` (`id_therapist`),
  ADD KEY `id_patient_2` (`id_patient`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id_patient`),
  ADD KEY `id_parents` (`id_parents`,`id_therapist`),
  ADD KEY `id_therapist` (`id_therapist`),
  ADD KEY `status` (`id_status`);

--
-- Indexes for table `patient_parents`
--
ALTER TABLE `patient_parents`
  ADD PRIMARY KEY (`id_parent`);

--
-- Indexes for table `patient_siblings`
--
ALTER TABLE `patient_siblings`
  ADD PRIMARY KEY (`id_siblings`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Indexes for table `paymentslip`
--
ALTER TABLE `paymentslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progressreport`
--
ALTER TABLE `progressreport`
  ADD PRIMARY KEY (`id_progress`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `shortterm_goals`
--
ALTER TABLE `shortterm_goals`
  ADD PRIMARY KEY (`id_shortterm`),
  ADD KEY `id_longterm` (`id_longterm`);

--
-- Indexes for table `soap_notes`
--
ALTER TABLE `soap_notes`
  ADD PRIMARY KEY (`id_soapnote`),
  ADD KEY `id_appointment` (`id_appointment`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id_specialty`);

--
-- Indexes for table `specialties_therapists`
--
ALTER TABLE `specialties_therapists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_therapist` (`id_therapist`,`id_specialty`),
  ADD KEY `id_specialty` (`id_specialty`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapists`
--
ALTER TABLE `therapists`
  ADD PRIMARY KEY (`id_therapists`);

--
-- Indexes for table `therapistspayments`
--
ALTER TABLE `therapistspayments`
  ADD PRIMARY KEY (`id_tpayments`),
  ADD KEY `id_therapist` (`id_therapist`);

--
-- Indexes for table `typeofappointments`
--
ALTER TABLE `typeofappointments`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `id_role` (`id_role`,`id_patient`,`id_therapist`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_therapist` (`id_therapist`);

--
-- Indexes for table `valuation`
--
ALTER TABLE `valuation`
  ADD PRIMARY KEY (`id_valuation`),
  ADD UNIQUE KEY `id_appointment_4` (`id_appointment`),
  ADD KEY `id_appointment` (`id_appointment`),
  ADD KEY `id_appointment_2` (`id_appointment`),
  ADD KEY `id_appointment_3` (`id_appointment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id_appointment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `appointmentsreceipts`
--
ALTER TABLE `appointmentsreceipts`
  MODIFY `id_receipt` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointmentsreceipts_amounts`
--
ALTER TABLE `appointmentsreceipts_amounts`
  MODIFY `id_amount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `longterm_goals`
--
ALTER TABLE `longterm_goals`
  MODIFY `id_longterm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification2`
--
ALTER TABLE `notification2`
  MODIFY `id_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notificationsent`
--
ALTER TABLE `notificationsent`
  MODIFY `id_notificationsent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id_patient` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_parents`
--
ALTER TABLE `patient_parents`
  MODIFY `id_parent` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_siblings`
--
ALTER TABLE `patient_siblings`
  MODIFY `id_siblings` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paymentslip`
--
ALTER TABLE `paymentslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progressreport`
--
ALTER TABLE `progressreport`
  MODIFY `id_progress` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shortterm_goals`
--
ALTER TABLE `shortterm_goals`
  MODIFY `id_shortterm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `soap_notes`
--
ALTER TABLE `soap_notes`
  MODIFY `id_soapnote` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id_specialty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialties_therapists`
--
ALTER TABLE `specialties_therapists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `therapists`
--
ALTER TABLE `therapists`
  MODIFY `id_therapists` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `therapistspayments`
--
ALTER TABLE `therapistspayments`
  MODIFY `id_tpayments` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeofappointments`
--
ALTER TABLE `typeofappointments`
  MODIFY `id_type` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `valuation`
--
ALTER TABLE `valuation`
  MODIFY `id_valuation` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id_patient`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `typeofappointments` (`id_type`);

--
-- Constraints for table `longterm_goals`
--
ALTER TABLE `longterm_goals`
  ADD CONSTRAINT `longterm_goals_ibfk_2` FOREIGN KEY (`id_appointment`) REFERENCES `appointments` (`id_appointment`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`id_parents`) REFERENCES `patient_parents` (`id_parent`),
  ADD CONSTRAINT `patients_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `patients_ibfk_4` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `patient_siblings`
--
ALTER TABLE `patient_siblings`
  ADD CONSTRAINT `patient_siblings_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id_patient`);

--
-- Constraints for table `shortterm_goals`
--
ALTER TABLE `shortterm_goals`
  ADD CONSTRAINT `shortterm_goals_ibfk_1` FOREIGN KEY (`id_longterm`) REFERENCES `longterm_goals` (`id_longterm`);

--
-- Constraints for table `soap_notes`
--
ALTER TABLE `soap_notes`
  ADD CONSTRAINT `soap_notes_ibfk_1` FOREIGN KEY (`id_appointment`) REFERENCES `appointments` (`id_appointment`);

--
-- Constraints for table `specialties_therapists`
--
ALTER TABLE `specialties_therapists`
  ADD CONSTRAINT `specialties_therapists_ibfk_1` FOREIGN KEY (`id_specialty`) REFERENCES `specialties` (`id_specialty`),
  ADD CONSTRAINT `specialties_therapists_ibfk_2` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `therapistspayments`
--
ALTER TABLE `therapistspayments`
  ADD CONSTRAINT `therapistspayments_ibfk_1` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id_patient`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`id_therapist`) REFERENCES `therapists` (`id_therapists`);

--
-- Constraints for table `valuation`
--
ALTER TABLE `valuation`
  ADD CONSTRAINT `valuation_ibfk_1` FOREIGN KEY (`id_appointment`) REFERENCES `appointments` (`id_appointment`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
