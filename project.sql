-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2017 at 01:26 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accuntingupkeep`
--

CREATE TABLE `accuntingupkeep` (
  `id` int(11) NOT NULL,
  `list` varchar(255) NOT NULL,
  `qonetarget` varchar(255) NOT NULL,
  `qoneacheived` varchar(255) NOT NULL,
  `qtwotarget` varchar(255) NOT NULL,
  `qtwocheived` varchar(255) NOT NULL,
  `qthreetarget` varchar(255) NOT NULL,
  `qthreeacheived` varchar(255) NOT NULL,
  `qfourtarget` varchar(255) NOT NULL,
  `qfourachieved` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accuntingupkeep`
--

INSERT INTO `accuntingupkeep` (`id`, `list`, `qonetarget`, `qoneacheived`, `qtwotarget`, `qtwocheived`, `qthreetarget`, `qthreeacheived`, `qfourtarget`, `qfourachieved`) VALUES
(1, 'Dhandapani', '23', '20', '34', '22', '23', '22', '44', '22'),
(2, 'Nishanth', '15', '12', '20', '10', '25', '13', '30', '17'),
(3, 'Prathap', '25', '20', '20', '15', '25', '20', '15', '10'),
(4, 'Priya', '20', '20', '20', '15', '25', '20', '20', '10');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `Apr_target` varchar(255) NOT NULL,
  `Apr_acheived` varchar(255) NOT NULL,
  `May_target` varchar(255) NOT NULL,
  `May_acheived` varchar(255) DEFAULT NULL,
  `Jun_target` int(11) NOT NULL,
  `Jun_acheived` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factors`
--

CREATE TABLE `factors` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Team` varchar(255) NOT NULL,
  `Count` varchar(255) NOT NULL,
  `Ontimepayment` varchar(255) NOT NULL,
  `Accounting` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factors`
--

INSERT INTO `factors` (`id`, `Name`, `Team`, `Count`, `Ontimepayment`, `Accounting`) VALUES
(1, 'Prathap', '4', '3', '0', '1'),
(2, 'Priya', '4', '2', '0', '1'),
(3, 'Dhandapani', '5', '1', '1', '1'),
(5, 'Nishanth', '4', '5', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ontimepayments`
--

CREATE TABLE `ontimepayments` (
  `id` int(11) NOT NULL,
  `list` varchar(255) NOT NULL,
  `qonetarget` varchar(255) NOT NULL,
  `qoneacheived` varchar(255) NOT NULL,
  `qtwotarget` varchar(255) NOT NULL,
  `qtwocheived` varchar(255) NOT NULL,
  `qthreetarget` varchar(255) NOT NULL,
  `qthreeacheived` varchar(255) NOT NULL,
  `qfourtarget` varchar(255) NOT NULL,
  `qfourachieved` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ontimepayments`
--

INSERT INTO `ontimepayments` (`id`, `list`, `qonetarget`, `qoneacheived`, `qtwotarget`, `qtwocheived`, `qthreetarget`, `qthreeacheived`, `qfourtarget`, `qfourachieved`) VALUES
(1, 'Dhandapani', '20', '12', '22', '14', '22', '11', '22', '15'),
(2, 'Nishanth', '12', '4', '14', '2', '13', '11', '18', '8');

-- --------------------------------------------------------

--
-- Stand-in structure for view `performance`
-- (See below for the actual view)
--
CREATE TABLE `performance` (
`id` int(11)
,`Name` varchar(255)
,`Factor` varchar(255)
,`rating50` varchar(50)
,`Q1_cumulative_target` varchar(255)
,`Q1_cumulative_acheived` varchar(255)
,`Q1_rating` varchar(50)
,`Q2_cumulative_target` varchar(255)
,`Q2_cumulative_acheived` varchar(255)
,`Q2rating` double
,`Q3_cumulative_target` varchar(255)
,`Q3_cumulative_acheived` varchar(255)
,`Q3rating` double
,`Q4_cumulative_target` varchar(255)
,`Q4_cumulative_acheived` varchar(255)
,`Q4rating` double
,`Qs_cumulative` double
,`Year17_18_Final_Score` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `performancetable`
--

CREATE TABLE `performancetable` (
  `id` int(11) NOT NULL,
  `Apr_target` int(11) DEFAULT NULL,
  `Apr_acheived` int(11) DEFAULT NULL,
  `May_target` int(11) DEFAULT NULL,
  `May_acheived` int(11) DEFAULT NULL,
  `Jun_target` int(11) DEFAULT NULL,
  `Jun_acheived` int(11) DEFAULT NULL,
  `Q1_cumulative` int(11) DEFAULT NULL,
  `Jul_target` int(11) DEFAULT NULL,
  `Jul_acheived` int(11) DEFAULT NULL,
  `Aug_target` int(11) DEFAULT NULL,
  `Aug_acheived` int(11) DEFAULT NULL,
  `Sep_target` int(11) DEFAULT NULL,
  `Sep_acheived` int(11) DEFAULT NULL,
  `Q2_cumulative` int(11) DEFAULT NULL,
  `Oct_target` int(11) DEFAULT NULL,
  `Oct_acheived` int(11) DEFAULT NULL,
  `Nov_target` int(11) DEFAULT NULL,
  `Nov_acheived` int(11) DEFAULT NULL,
  `Dec_target` int(11) DEFAULT NULL,
  `Dec_acheived` int(11) NOT NULL,
  `Q3_cumulative` int(11) NOT NULL,
  `Jan_target` int(11) NOT NULL,
  `Jan_acheived` int(11) NOT NULL,
  `Feb_target` int(11) NOT NULL,
  `Feb_acheived` int(11) NOT NULL,
  `Mar_target` int(11) NOT NULL,
  `Mar_acheived` int(11) NOT NULL,
  `Q4_cumulative` int(11) NOT NULL,
  `Factor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `Factor` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `rating50` varchar(50) NOT NULL,
  `Apr_target` varchar(255) NOT NULL,
  `Apr_acheived` varchar(255) NOT NULL,
  `May_target` varchar(255) NOT NULL,
  `May_acheived` varchar(255) NOT NULL,
  `Jun_target` varchar(255) NOT NULL,
  `Jun_acheived` varchar(255) NOT NULL,
  `Q1_cumulative_target` varchar(255) NOT NULL,
  `Q1_cumulative_acheived` varchar(255) NOT NULL,
  `Jul_target` varchar(255) NOT NULL,
  `Jul_acheived` varchar(255) NOT NULL,
  `Aug_target` varchar(255) NOT NULL,
  `Aug_acheived` varchar(255) NOT NULL,
  `Sep_target` varchar(255) NOT NULL,
  `Sep_acheived` varchar(255) NOT NULL,
  `Q2_cumulative_target` varchar(255) NOT NULL,
  `Q2_cumulative_acheived` varchar(255) NOT NULL,
  `Oct_target` varchar(255) NOT NULL,
  `Oct_acheived` varchar(255) NOT NULL,
  `Nov_target` varchar(255) NOT NULL,
  `Nov_acheived` varchar(255) NOT NULL,
  `Dec_target` varchar(255) NOT NULL,
  `Dec_acheived` varchar(255) NOT NULL,
  `Q3_cumulative_target` varchar(255) NOT NULL,
  `Q3_cumulative_acheived` varchar(255) NOT NULL,
  `Jan_target` varchar(255) NOT NULL,
  `Jan_acheived` varchar(255) NOT NULL,
  `Feb_target` varchar(255) NOT NULL,
  `Feb_acheived` varchar(255) NOT NULL,
  `Mar_target` varchar(255) NOT NULL,
  `Mar_acheived` varchar(255) NOT NULL,
  `Q4_cumulative_target` varchar(255) NOT NULL,
  `Q4_cumulative_acheived` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `Factor`, `Name`, `rating50`, `Apr_target`, `Apr_acheived`, `May_target`, `May_acheived`, `Jun_target`, `Jun_acheived`, `Q1_cumulative_target`, `Q1_cumulative_acheived`, `Jul_target`, `Jul_acheived`, `Aug_target`, `Aug_acheived`, `Sep_target`, `Sep_acheived`, `Q2_cumulative_target`, `Q2_cumulative_acheived`, `Oct_target`, `Oct_acheived`, `Nov_target`, `Nov_acheived`, `Dec_target`, `Dec_acheived`, `Q3_cumulative_target`, `Q3_cumulative_acheived`, `Jan_target`, `Jan_acheived`, `Feb_target`, `Feb_acheived`, `Mar_target`, `Mar_acheived`, `Q4_cumulative_target`, `Q4_cumulative_acheived`) VALUES
(160, '', '', 'July', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived', 'target', 'acheived'),
(161, 'On time payments', 'On time payments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(162, 'On time payments', 'Aditya Hrudaya ', '10', '45', '30', '31', '40', '41', '50', '51', '21', '22', '20', '22', '20', '22', '20', '22', '11', '22', '20', '22', '20', '22', '20', '22', '11', '22', '20', '22', '20', '22', '20', '22', '11'),
(163, 'On time payments', 'Asif Hussain', '50', '45', '4', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '22', '10', '24', '14', '24', '14', '24', '14', '22', '10', '24', '14', '24', '14', '24', '14', '22', '10'),
(164, 'On time payments', 'Srinivas', '32', '45', '5', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '15', '13', '32', '22', '32', '22', '32', '22', '15', '13', '32', '22', '32', '22', '32', '22', '15', '13'),
(165, 'On time payments', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, 'Accounting upkeep', 'Accounting upkeep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, 'Accounting upkeep', 'Hannah Hemapriya', '22', '45', '12', '', '', '', '', '', '', '22', '20', '22', '20', '22', '20', '22', '11', '22', '20', '22', '20', '22', '20', '22', '11', '22', '20', '22', '20', '22', '20', '22', '11'),
(168, 'Accounting upkeep', 'Dhanalakshmi', '22', '45', '50', '50', '40', '41', '50', '51', '21', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10'),
(169, 'Accounting upkeep', 'Aditya Hrudaya ', '24', '45', '', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13'),
(170, 'Accounting upkeep', 'Asif Hussain', '32', '45', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '11', '32', '22', '32', '22', '32', '22', '22', '11', '32', '22', '32', '22', '32', '22', '22', '11'),
(171, 'Accounting upkeep', 'Srinivas', '22', '45', '', '', '', '', '', '', '', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10'),
(172, 'Accounting upkeep', 'Suresh', '22', '45', '', '', '', '', '', '', '', '22', '20', '22', '20', '22', '20', '15', '13', '22', '20', '22', '20', '22', '20', '15', '13', '22', '20', '22', '20', '22', '20', '15', '13'),
(173, 'Accounting upkeep', 'Mohanraj', '24', '45', '', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '22', '11', '24', '14', '24', '14', '24', '14', '22', '11', '24', '14', '24', '14', '24', '14', '22', '11'),
(174, 'Accounting upkeep', 'Radhakrishnan', '32', '45', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '10', '32', '22', '32', '22', '32', '22', '22', '10', '32', '22', '32', '22', '32', '22', '22', '10'),
(175, 'Accounting upkeep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, 'SOD', 'SOD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, 'SOD', 'Aditya Hrudaya ', '56', '45', '', '', '', '', '', '', '', '56', '22', '56', '22', '56', '22', '22', '11', '56', '22', '56', '22', '56', '22', '22', '11', '56', '22', '56', '22', '56', '22', '22', '11'),
(178, 'SOD', 'Mohanraj', '22', '45', '30', '31', '40', '41', '50', '51', '21', '22', '11', '22', '11', '22', '11', '22', '10', '22', '11', '22', '11', '22', '11', '22', '10', '22', '11', '22', '11', '22', '11', '22', '10'),
(179, 'SOD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, 'Expenses summarry', 'Expenses summarry', '', '45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, 'Expenses summarry', 'Hannah Hemapriya', '30', '45', '', '', '', '', '', '', '', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11'),
(182, 'Expenses summarry', 'Dhanalakshmi', '22', '45', '25', '40', '10', '34', '25', '', '', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10'),
(183, 'Expenses summarry', 'Aditya Hrudaya ', '24', '45', '', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13'),
(184, 'Expenses summarry', 'Asif Hussain', '32', '45', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '11', '32', '22', '32', '22', '32', '22', '22', '11', '32', '22', '32', '22', '32', '22', '22', '11'),
(185, 'Expenses summarry', 'Srinivas', '30', '45', '', '', '', '', '', '', '', '30', '22', '30', '22', '30', '22', '22', '10', '30', '22', '30', '22', '30', '22', '22', '10', '30', '22', '30', '22', '30', '22', '22', '10'),
(186, 'Expenses summarry', 'Suresh', '22', '45', '', '', '', '', '', '', '', '22', '20', '22', '20', '22', '20', '15', '13', '22', '20', '22', '20', '22', '20', '15', '13', '22', '20', '22', '20', '22', '20', '15', '13'),
(187, 'Expenses summarry', 'Mohanraj', '24', '45', '', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '22', '11', '24', '14', '24', '14', '24', '14', '22', '11', '24', '14', '24', '14', '24', '14', '22', '11'),
(188, 'Expenses summarry', 'Radhakrishnan', '32', '45', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '10', '32', '22', '32', '22', '32', '22', '22', '10', '32', '22', '32', '22', '32', '22', '22', '10'),
(189, 'Expenses summarry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(190, 'Auditing support', 'Auditing support', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(191, 'Auditing support', 'Aditya Hrudaya ', '30', '', '', '', '', '', '', '', '', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11'),
(192, 'Auditing support', 'Suresh', '22', '', '30', '31', '40', '41', '50', '51', '21', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10'),
(193, 'Auditing support', 'Mohanraj', '24', '', '', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13'),
(194, 'Auditing support', 'Radhakrishnan', '32', '', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '13', '32', '22', '32', '22', '32', '22', '22', '13', '32', '22', '32', '22', '32', '22', '22', '13'),
(195, 'Auditing support', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, 'Reconciliations', 'Reconciliations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, 'Reconciliations', 'Aditya Hrudaya ', '30', '', '40', '31', '21', '41', '50', '51', '21', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11'),
(198, 'Reconciliations', 'Suresh', '22', '', '', '', '', '', '', '', '', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10'),
(199, 'Reconciliations', 'Mohanraj', '24', '', '30', '31', '40', '41', '50', '51', '21', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13'),
(200, 'Reconciliations', 'Radhakrishnan', '32', '', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '13', '32', '22', '32', '22', '32', '22', '22', '13', '32', '22', '32', '22', '32', '22', '22', '13'),
(201, 'Reconciliations', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, 'Payables', 'Payables', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(203, 'Payables', 'Dhanalakshmi', '30', '', '40', '31', '21', '41', '50', '51', '21', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11', '30', '22', '30', '22', '30', '22', '22', '11'),
(204, 'Payables', 'Aditya Hrudaya ', '22', '', '', '', '', '', '', '', '', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10', '22', '20', '22', '20', '22', '20', '22', '10'),
(205, 'Payables', 'Radhakrishnan', '24', '', '', '', '', '', '', '', '', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13', '24', '14', '24', '14', '24', '14', '15', '13'),
(206, 'Payables', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(207, 'Recivables', 'Recivables', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(208, 'Recivables', 'Aditya Hrudaya ', '23', '', '', '', '', '', '', '', '', '23', '22', '23', '22', '23', '22', '22', '11', '23', '22', '23', '22', '23', '22', '22', '11', '23', '22', '23', '22', '23', '22', '22', '11'),
(209, 'Recivables', 'Suresh', '24', '', '', '', '', '', '', '', '', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(210, 'Recivables', 'Nishanth', '24', '', '20', '20', '10', '16', '22', '18', '17', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(211, 'Recivables', 'Dhandapani', '24', '', '20', '20', '10', '16', '22', '18', '17', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(212, 'Recivables', 'Test', '24', '', '20', '20', '10', '16', '22', '18', '17', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(213, 'Recivables', 'TestNow', '24', '', '20', '20', '10', '16', '22', '18', '17', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(214, 'Recivables', 'Testaaa', '24', '', '20', '20', '10', '16', '22', '18', '17', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(215, 'Recivables', 'Testbbb', '24', '', '20', '20', '10', '16', '22', '18', '17', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10', '24', '13', '24', '13', '24', '13', '22', '10'),
(216, 'SOD', 'MohanrajTest', '', '45', '30', '31', '40', '41', '50', '51', '21', '22', '11', '22', '11', '22', '11', '22', '10', '22', '11', '22', '11', '22', '11', '22', '10', '22', '11', '22', '11', '22', '11', '22', '10'),
(217, 'Accounting upkeep', 'RadhakrishnanTest', '', '45', '', '', '', '', '', '', '', '32', '22', '32', '22', '32', '22', '22', '10', '32', '22', '32', '22', '32', '22', '22', '10', '32', '22', '32', '22', '32', '22', '22', '10');

-- --------------------------------------------------------

--
-- Table structure for table `sod`
--

CREATE TABLE `sod` (
  `id` int(11) NOT NULL,
  `list` varchar(255) NOT NULL,
  `qonetarget` varchar(255) NOT NULL,
  `qoneacheived` varchar(255) NOT NULL,
  `qtwotarget` varchar(255) NOT NULL,
  `qtwoacheived` varchar(255) NOT NULL,
  `qthreetarget` varchar(255) NOT NULL,
  `qthreeacheived` varchar(255) NOT NULL,
  `qfourtarget` varchar(255) NOT NULL,
  `qfourachieved` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sod`
--

INSERT INTO `sod` (`id`, `list`, `qonetarget`, `qoneacheived`, `qtwotarget`, `qtwoacheived`, `qthreetarget`, `qthreeacheived`, `qfourtarget`, `qfourachieved`) VALUES
(1, 'mohan', '23', '20', '24', '22', '25', '22', '24', '20'),
(2, 'vijay', '33', '23', '34', '25', '44', '33', '43', '23'),
(3, 'arun', '45', '41', '23', '21', '25', '22', '35', '30');

-- --------------------------------------------------------

--
-- Structure for view `performance`
--
DROP TABLE IF EXISTS `performance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `performance`  AS  select `rating`.`id` AS `id`,`rating`.`Name` AS `Name`,`rating`.`Factor` AS `Factor`,`rating`.`rating50` AS `rating50`,`rating`.`Q1_cumulative_target` AS `Q1_cumulative_target`,`rating`.`Q1_cumulative_acheived` AS `Q1_cumulative_acheived`,ifnull((case when (`rating`.`Q1_cumulative_acheived` > `rating`.`Q1_cumulative_target`) then `rating`.`rating50` else ((`rating`.`Q1_cumulative_acheived` / `rating`.`Q1_cumulative_target`) * `rating`.`rating50`) end),0) AS `Q1_rating`,`rating`.`Q2_cumulative_target` AS `Q2_cumulative_target`,`rating`.`Q2_cumulative_acheived` AS `Q2_cumulative_acheived`,ifnull(((`rating`.`Q2_cumulative_acheived` / `rating`.`Q2_cumulative_target`) * `rating`.`rating50`),0) AS `Q2rating`,`rating`.`Q3_cumulative_target` AS `Q3_cumulative_target`,`rating`.`Q3_cumulative_acheived` AS `Q3_cumulative_acheived`,ifnull(((`rating`.`Q3_cumulative_acheived` / `rating`.`Q3_cumulative_target`) * `rating`.`rating50`),0) AS `Q3rating`,`rating`.`Q4_cumulative_target` AS `Q4_cumulative_target`,`rating`.`Q4_cumulative_acheived` AS `Q4_cumulative_acheived`,ifnull(((`rating`.`Q4_cumulative_acheived` / `rating`.`Q4_cumulative_target`) * `rating`.`rating50`),0) AS `Q4rating`,ifnull(((((`rating`.`Q2_cumulative_acheived` + `rating`.`Q3_cumulative_acheived`) + `rating`.`Q4_cumulative_acheived`) / ((`rating`.`Q2_cumulative_target` + `rating`.`Q3_cumulative_target`) + `rating`.`Q4_cumulative_target`)) * `rating`.`rating50`),0) AS `Qs_cumulative`,ifnull((case when (ifnull(((((`rating`.`Q2_cumulative_acheived` + `rating`.`Q3_cumulative_acheived`) + `rating`.`Q4_cumulative_acheived`) / ((`rating`.`Q2_cumulative_target` + `rating`.`Q3_cumulative_target`) + `rating`.`Q4_cumulative_target`)) * `rating`.`rating50`),0) > `rating`.`rating50`) then `rating`.`rating50` else ifnull(((((`rating`.`Q2_cumulative_acheived` + `rating`.`Q3_cumulative_acheived`) + `rating`.`Q4_cumulative_acheived`) / ((`rating`.`Q2_cumulative_target` + `rating`.`Q3_cumulative_target`) + `rating`.`Q4_cumulative_target`)) * `rating`.`rating50`),0) end),0) AS `Year17_18_Final_Score` from `rating` where ((`rating`.`Name` not in ('On time payments','Accounting upkeep','SOD','Expenses summarry','Auditing support','Reconciliations','Payables','Recivables')) and (`rating`.`Name` <> '') and (`rating`.`Factor` <> '')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accuntingupkeep`
--
ALTER TABLE `accuntingupkeep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factors`
--
ALTER TABLE `factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ontimepayments`
--
ALTER TABLE `ontimepayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performancetable`
--
ALTER TABLE `performancetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sod`
--
ALTER TABLE `sod`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accuntingupkeep`
--
ALTER TABLE `accuntingupkeep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factors`
--
ALTER TABLE `factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ontimepayments`
--
ALTER TABLE `ontimepayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `performancetable`
--
ALTER TABLE `performancetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT for table `sod`
--
ALTER TABLE `sod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
