-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2017 at 04:54 PM
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
-- Structure for view `performance`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `performance`  AS  select `rating`.`id` AS `id`,`rating`.`Name` AS `Name`,`rating`.`Factor` AS `Factor`,`rating`.`rating50` AS `rating50`,`rating`.`Q1_cumulative_target` AS `Q1_cumulative_target`,`rating`.`Q1_cumulative_acheived` AS `Q1_cumulative_acheived`,ifnull((case when (`rating`.`Q1_cumulative_acheived` > `rating`.`Q1_cumulative_target`) then `rating`.`rating50` else ((`rating`.`Q1_cumulative_acheived` / `rating`.`Q1_cumulative_target`) * `rating`.`rating50`) end),0) AS `Q1_rating`,`rating`.`Q2_cumulative_target` AS `Q2_cumulative_target`,`rating`.`Q2_cumulative_acheived` AS `Q2_cumulative_acheived`,ifnull(((`rating`.`Q2_cumulative_acheived` / `rating`.`Q2_cumulative_target`) * `rating`.`rating50`),0) AS `Q2rating`,`rating`.`Q3_cumulative_target` AS `Q3_cumulative_target`,`rating`.`Q3_cumulative_acheived` AS `Q3_cumulative_acheived`,ifnull(((`rating`.`Q3_cumulative_acheived` / `rating`.`Q3_cumulative_target`) * `rating`.`rating50`),0) AS `Q3rating`,`rating`.`Q4_cumulative_target` AS `Q4_cumulative_target`,`rating`.`Q4_cumulative_acheived` AS `Q4_cumulative_acheived`,ifnull(((`rating`.`Q4_cumulative_acheived` / `rating`.`Q4_cumulative_target`) * `rating`.`rating50`),0) AS `Q4rating`,ifnull(((((`rating`.`Q2_cumulative_acheived` + `rating`.`Q3_cumulative_acheived`) + `rating`.`Q4_cumulative_acheived`) / ((`rating`.`Q2_cumulative_target` + `rating`.`Q3_cumulative_target`) + `rating`.`Q4_cumulative_target`)) * `rating`.`rating50`),0) AS `Qs_cumulative`,ifnull((case when (ifnull(((((`rating`.`Q2_cumulative_acheived` + `rating`.`Q3_cumulative_acheived`) + `rating`.`Q4_cumulative_acheived`) / ((`rating`.`Q2_cumulative_target` + `rating`.`Q3_cumulative_target`) + `rating`.`Q4_cumulative_target`)) * `rating`.`rating50`),0) > `rating`.`rating50`) then `rating`.`rating50` else ifnull(((((`rating`.`Q2_cumulative_acheived` + `rating`.`Q3_cumulative_acheived`) + `rating`.`Q4_cumulative_acheived`) / ((`rating`.`Q2_cumulative_target` + `rating`.`Q3_cumulative_target`) + `rating`.`Q4_cumulative_target`)) * `rating`.`rating50`),0) end),0) AS `Year17_18_Final_Score` from `rating` where ((`rating`.`Name` not in ('On time payments','Accounting upkeep','SOD','Expenses summarry','Auditing support','Reconciliations','Payables','Recivables')) and (`rating`.`Name` <> '') and (`rating`.`Factor` <> '')) ;

--
-- VIEW  `performance`
-- Data: None
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
