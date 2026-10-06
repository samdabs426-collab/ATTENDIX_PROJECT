-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2026 at 03:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohammed4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(172005, 'Anjugam', '786'),
(172006, 'Abubakkar Siddique', '786');

-- --------------------------------------------------------

--
-- Table structure for table `admin_backup`
--

CREATE TABLE `admin_backup` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `regno` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`regno`, `password`, `name`) VALUES
(170601, '786', 'S.Pavithra'),
(170602, '786', 'A.D.Narayan Raj'),
(170603, '786', 'A.Jeya Shanthi'),
(170604, '786', 'D.Gayathri'),
(170605, '786', 'G.Kowsalya'),
(170606, '786', 'D.Jasmine Priskilla'),
(170607, '786', 'P.Shanthi');

-- --------------------------------------------------------

--
-- Table structure for table `staff_backup`
--

CREATE TABLE `staff_backup` (
  `regno` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE `stat` (
  `regno` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `dt` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `percentage` float DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`regno`, `name`, `dept`, `dt`, `status`, `percentage`) VALUES
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-15', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-16', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-17', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-18', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-19', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-20', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-21', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-22', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-23', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-24', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-25', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-26', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-27', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-28', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-29', 'Present', NULL),
('1706200601', 'ADHAM BASHA A', 'BCA', '2026-09-30', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-15', 'Absent', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-16', 'Absent', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-17', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-18', 'Absent', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-19', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-20', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-21', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-22', 'Absent', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-24', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-25', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-26', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-27', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-28', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-29', 'Present', NULL),
('1706200602', 'AKSHAY J', 'BCA', '2026-09-30', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-15', 'Absent', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-16', 'Absent', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-17', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-18', 'Absent', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-19', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-20', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-21', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-22', 'Absent', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-24', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-25', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-26', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-27', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-28', 'Present', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-29', 'Absent', NULL),
('1706200603', 'AMEEN A', 'BCA', '2026-09-30', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-15', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-16', 'Absent', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-17', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-18', 'Absent', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-19', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-20', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-21', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-22', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-23', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-24', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-25', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-26', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-27', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-28', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-29', 'Present', NULL),
('1706200604', 'ANITHA G', 'BCA', '2026-09-30', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-15', 'Absent', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-16', 'Absent', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-17', 'Absent', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-18', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-19', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-20', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-21', 'Absent', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-22', 'Absent', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-24', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-25', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-26', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-27', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-28', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-29', 'Present', NULL),
('1706200605', 'ANNAMALAI K', 'BCA', '2026-09-30', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-15', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-16', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-17', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-18', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-19', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-20', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-21', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-22', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-23', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-24', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-25', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-26', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-27', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-28', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-29', 'Present', NULL),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2026-09-30', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-15', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-16', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-17', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-18', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-19', 'Absent', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-20', 'Absent', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-21', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-22', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-24', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-25', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-26', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-27', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-28', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-29', 'Present', NULL),
('1706200607', 'BALACHANDRU V', 'BCA', '2026-09-30', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-15', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-16', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-17', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-18', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-19', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-20', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-21', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-22', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-24', 'Absent', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-25', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-26', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-27', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-28', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-29', 'Present', NULL),
('1706200608', 'BARATH K', 'BCA', '2026-09-30', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-15', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-16', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-17', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-18', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-19', 'Absent', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-20', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-21', 'Absent', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-22', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-24', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-25', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-26', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-27', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-28', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-29', 'Present', NULL),
('1706200609', 'BHARATH K', 'BCA', '2026-09-30', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-15', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-16', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-17', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-18', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-19', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-20', 'Absent', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-21', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-22', 'Absent', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-23', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-24', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-25', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-26', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-27', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-28', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-29', 'Present', NULL),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2026-09-30', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-15', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-16', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-17', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-18', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-19', 'Absent', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-20', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-21', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-22', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-24', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-25', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-26', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-27', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-28', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-29', 'Present', NULL),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2026-09-30', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-15', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-16', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-17', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-18', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-19', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-20', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-21', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-22', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-23', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-24', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-25', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-26', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-27', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-28', 'Absent', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-29', 'Present', NULL),
('1706200612', 'CHANDRU V', 'BCA', '2026-09-30', 'Absent', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-15', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-16', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-17', 'Absent', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-18', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-19', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-20', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-21', 'Absent', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-22', 'Absent', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-24', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-25', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-26', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-27', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-28', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-29', 'Present', NULL),
('1706200613', 'CHANDURU O', 'BCA', '2026-09-30', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-15', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-16', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-17', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-18', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-19', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-20', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-21', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-22', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-23', 'Absent', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-24', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-25', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-26', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-27', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-28', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-29', 'Present', NULL),
('1706200614', 'DHALAYAN S', 'BCA', '2026-09-30', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-15', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-16', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-17', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-18', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-19', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-20', 'Absent', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-21', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-22', 'Absent', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-23', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-24', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-25', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-26', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-27', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-28', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-29', 'Present', NULL),
('1706200615', 'DHIVAKAR S', 'BCA', '2026-09-30', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-15', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-16', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-17', 'Absent', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-18', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-19', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-20', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-21', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-22', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-23', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-24', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-25', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-26', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-27', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-28', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-29', 'Present', NULL),
('1706200701', 'DIVAKAR S', 'CS', '2026-09-30', 'Absent', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-15', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-16', 'Absent', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-17', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-18', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-19', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-20', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-21', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-22', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-23', 'Absent', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-24', 'Absent', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-25', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-26', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-27', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-28', 'Present', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-29', 'Absent', NULL),
('1706200702', 'ELAMPARUTHI S', 'CS', '2026-09-30', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-15', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-16', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-17', 'Absent', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-18', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-19', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-20', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-21', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-22', 'Absent', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-23', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-24', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-25', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-26', 'Absent', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-27', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-28', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-29', 'Present', NULL),
('1706200703', 'ELANGO J', 'CS', '2026-09-30', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-15', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-16', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-17', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-18', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-19', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-20', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-21', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-22', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-23', 'Absent', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-24', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-25', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-26', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-27', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-28', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-29', 'Present', NULL),
('1706200704', 'GIRIDHARAN E', 'CS', '2026-09-30', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-15', 'Absent', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-16', 'Absent', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-17', 'Absent', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-18', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-19', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-20', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-21', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-22', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-23', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-24', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-25', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-26', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-27', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-28', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-29', 'Present', NULL),
('1706200705', 'GOKUL G', 'CS', '2026-09-30', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-15', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-16', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-17', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-18', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-19', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-20', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-21', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-22', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-23', 'Absent', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-24', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-25', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-26', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-27', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-28', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-29', 'Present', NULL),
('1706200706', 'GOWTHAMI G', 'CS', '2026-09-30', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-15', 'Absent', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-16', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-17', 'Absent', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-18', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-19', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-20', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-21', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-22', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-23', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-24', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-25', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-26', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-27', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-28', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-29', 'Present', NULL),
('1706200707', 'GURU PRASATH G', 'CS', '2026-09-30', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-15', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-16', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-17', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-18', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-19', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-20', 'Absent', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-21', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-22', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-23', 'Absent', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-24', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-25', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-26', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-27', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-28', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-29', 'Present', NULL),
('1706200708', 'HARINI S', 'CS', '2026-09-30', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-15', 'Absent', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-16', 'Absent', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-17', 'Absent', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-18', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-19', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-20', 'Absent', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-21', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-22', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-23', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-24', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-25', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-26', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-27', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-28', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-29', 'Present', NULL),
('1706200709', 'HARI PRASATH G', 'CS', '2026-09-30', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-15', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-16', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-17', 'Absent', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-18', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-19', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-20', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-21', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-22', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-23', 'Absent', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-24', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-25', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-26', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-27', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-28', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-29', 'Present', NULL),
('1706200710', 'HARI PRIYA G', 'CS', '2026-09-30', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-15', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-16', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-17', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-18', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-19', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-20', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-21', 'Absent', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-22', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-23', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-24', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-25', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-26', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-27', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-28', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-29', 'Present', NULL),
('1706200711', 'HARIRAM G', 'CS', '2026-09-30', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-15', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-16', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-17', 'Absent', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-18', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-19', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-20', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-21', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-22', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-23', 'Absent', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-24', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-25', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-26', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-27', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-28', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-29', 'Present', NULL),
('1706200712', 'JAGADEESH', 'CS', '2026-09-30', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-15', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-16', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-17', 'Absent', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-18', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-19', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-20', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-21', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-22', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-23', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-24', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-25', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-26', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-27', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-28', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-29', 'Present', NULL),
('1706200713', 'JAI AKASH A', 'CS', '2026-09-30', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-15', 'Absent', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-16', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-17', 'Absent', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-18', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-19', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-20', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-21', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-22', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-23', 'Absent', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-24', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-25', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-26', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-27', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-28', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-29', 'Present', NULL),
('1706200714', 'JEEVA M', 'CS', '2026-09-30', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-15', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-16', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-17', 'Absent', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-18', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-19', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-20', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-21', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-22', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-23', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-24', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-25', 'Absent', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-26', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-27', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-28', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-29', 'Present', NULL),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2026-09-30', 'Present', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regno` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regno`, `name`, `dept`, `dob`, `email`) VALUES
('1706200601', 'ADHAM BASHA A', 'BCA', '2006-06-01', 'adhambasha01@gmail.com'),
('1706200602', 'AKSHAY J', 'BCA', '2006-06-02', 'akshay02@gmail.com'),
('1706200603', 'AMEEN A', 'BCA', '2006-06-03', 'ameen03@gmail.com'),
('1706200604', 'ANITHA G', 'BCA', '2006-06-04', 'anitha03@gmail.com'),
('1706200605', 'ANNAMALAI K', 'BCA', '2006-06-05', 'annamalai05@gmail.com'),
('1706200606', 'ASHRAF AHMED S', 'BCA', '2006-06-06', 'ashrafahmed05@gmail.com'),
('1706200607', 'BALACHANDRU V', 'BCA', '2006-06-07', 'balachandru07@gmail.com'),
('1706200608', 'BARATH K', 'BCA', '2006-06-08', 'bharath08@gmail.com'),
('1706200609', 'BHARATH K', 'BCA', '2006-06-09', 'bharath09@gmail.com'),
('1706200610', 'BHARATH KUMAR R', 'BCA', '2006-06-10', 'bharathkumar10@gmail.com'),
('1706200611', 'BHUSHAN KUMAR T', 'BCA', '2006-06-11', 'bhushankumar11@gmail.com'),
('1706200612', 'CHANDRU V', 'BCA', '2006-06-12', 'chandru12@gmail.com'),
('1706200613', 'CHANDURU O', 'BCA', '2006-06-13', 'chanduru13@gmail.com'),
('1706200614', 'DHALAYAN S', 'BCA', '2006-06-14', 'dhilipan14@gmail.com'),
('1706200615', 'DHIVAKAR S', 'BCA', '2006-06-15', 'dhivakar15@gmail.com'),
('1706200701', 'DIVAKAR S', 'CS', '2007-06-01', 'divakar01@gmail.com'),
('1706200702', 'ELAMPARUTHI S', 'CS', '2007-06-02', 'elamparuthi02@gmail.com'),
('1706200703', 'ELANGO J', 'CS', '2007-06-03', 'elango03@gmail.com'),
('1706200704', 'GIRIDHARAN E', 'CS', '2007-06-04', 'giridharan04@gmail.com'),
('1706200705', 'GOKUL G', 'CS', '2007-06-05', 'gokul05@gmail.com'),
('1706200706', 'GOWTHAMI G', 'CS', '2007-06-06', 'gowthami06@gmail.com'),
('1706200707', 'GURU PRASATH G', 'CS', '2007-06-07', 'guruprasath07@gmail.com'),
('1706200708', 'HARINI S', 'CS', '2007-06-08', 'harini08@gmail.com'),
('1706200709', 'HARI PRASATH G', 'CS', '2007-06-09', 'hariprasath09@gmail.com'),
('1706200710', 'HARI PRIYA G', 'CS', '2007-06-10', 'haripriya10@gmail.com'),
('1706200711', 'HARIRAM G', 'CS', '2007-06-11', 'hariram11@gmail.com'),
('1706200712', 'JAGADEESH', 'CS', '2007-06-12', 'jagadeesh12@gmail.co'),
('1706200713', 'JAI AKASH A', 'CS', '2007-06-13', 'jaiakash13@gmail.com'),
('1706200714', 'JEEVA M', 'CS', '2007-06-14', 'jeeva14@gmail.com'),
('1706200715', 'JEEVANANTHAM S R', 'CS', '2007-06-15', 'jeevanantham15@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_backup`
--

CREATE TABLE `student_backup` (
  `regno` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admin_backup`
--
ALTER TABLE `admin_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `staff_backup`
--
ALTER TABLE `staff_backup`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `stat`
--
ALTER TABLE `stat`
  ADD UNIQUE KEY `regno` (`regno`,`dt`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student_backup`
--
ALTER TABLE `student_backup`
  ADD PRIMARY KEY (`regno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172007;

--
-- AUTO_INCREMENT for table `admin_backup`
--
ALTER TABLE `admin_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stat`
--
ALTER TABLE `stat`
  ADD CONSTRAINT `stat_student_fk` FOREIGN KEY (`regno`) REFERENCES `student` (`regno`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
