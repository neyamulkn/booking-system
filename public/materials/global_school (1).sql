-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2019 at 01:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `global_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `session_year` varchar(50) NULL,
  `start_year` int(11) NULL,
  `end_year` int(11) NULL,
  `note` text,
  `is_running` tinyint(1) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `school_id`, `session_year`, `start_year`, `end_year`, `note`, `is_running`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'March 2019 - June 2020', 2019, 2020, '', 1, 1, '2019-06-04 11:01:17', '0000-00-00 00:00:00', 1, 0),
(2, 1, 'March 2018 - June 2019', 2018, 2019, '', 0, 1, '2019-06-26 11:19:05', '0000-00-00 00:00:00', 1, 0),
(3, 14, '2018 -  2019', 2018, 2019, '', 0, 1, '2019-07-07 00:00:12', '0000-00-00 00:00:00', 19, 0),
(4, 14, '2018 -  2019', 2018, 2019, 'sfsdf', 1, 1, '2019-07-10 16:33:17', '0000-00-00 00:00:00', 19, 0),
(5, 19, '2018 -  2019', 2018, 2019, 'good', 1, 1, '2019-08-06 11:22:26', '2019-08-06 11:25:54', 42, 42);

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `role_id` int(11) NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `activity` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `school_id`, `user_id`, `role_id`, `name`, `phone`, `email`, `ip_address`, `user_agent`, `activity`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged in', 1, '2019-06-04 05:50:44', '0000-00-00 00:00:00', 1, 0),
(2, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been added a Guardian : fdsf', 1, '2019-06-04 09:55:05', '0000-00-00 00:00:00', 1, 0),
(3, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been updated a Guardian : fdsf', 1, '2019-06-04 09:55:47', '0000-00-00 00:00:00', 1, 0),
(4, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Activate Theme dodger-blue', 1, '2019-06-04 09:56:09', '0000-00-00 00:00:00', 1, 0),
(5, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Activate Theme light-sea-green', 1, '2019-06-04 09:56:12', '0000-00-00 00:00:00', 1, 0),
(6, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Activate Theme black', 1, '2019-06-04 09:56:18', '0000-00-00 00:00:00', 1, 0),
(7, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Activate Theme navy-blue', 1, '2019-06-04 09:56:23', '0000-00-00 00:00:00', 1, 0),
(8, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Activate Theme slate-gray', 1, '2019-06-04 09:56:28', '0000-00-00 00:00:00', 1, 0),
(9, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a fee type : teachar', 1, '2019-06-04 10:02:08', '0000-00-00 00:00:00', 1, 0),
(10, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been creted an Event : sdf', 1, '2019-06-04 10:03:57', '0000-00-00 00:00:00', 1, 0),
(11, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a school : kursah school', 1, '2019-06-04 10:10:00', '0000-00-00 00:00:00', 1, 0),
(12, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a class :five', 1, '2019-06-04 10:19:25', '0000-00-00 00:00:00', 1, 0),
(13, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been added a sucject : bangla for class : five', 1, '2019-06-04 10:20:10', '0000-00-00 00:00:00', 1, 0),
(14, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a routine for class : five', 1, '2019-06-04 10:20:40', '0000-00-00 00:00:00', 1, 0),
(15, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a exam Grade : A', 1, '2019-06-04 10:23:54', '0000-00-00 00:00:00', 1, 0),
(16, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam final result for class: five', 1, '2019-06-04 10:24:59', '0000-00-00 00:00:00', 1, 0),
(17, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been added syllabus : class for class : five', 1, '2019-06-04 10:30:38', '0000-00-00 00:00:00', 1, 0),
(18, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged out', 1, '2019-06-04 06:35:39', '0000-00-00 00:00:00', 1, 0),
(19, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged in', 1, '2019-06-04 06:35:49', '0000-00-00 00:00:00', 4, 0),
(20, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged out', 1, '2019-06-04 06:37:41', '0000-00-00 00:00:00', 4, 0),
(21, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged in', 1, '2019-06-04 06:37:48', '0000-00-00 00:00:00', 1, 0),
(22, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged out', 1, '2019-06-04 06:39:12', '0000-00-00 00:00:00', 1, 0),
(23, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been logged in', 1, '2019-06-04 06:41:09', '0000-00-00 00:00:00', 1, 0),
(24, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a exam Grade : A+', 1, '2019-06-04 10:42:08', '0000-00-00 00:00:00', 1, 0),
(25, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created an Exam : final', 1, '2019-06-04 10:42:35', '0000-00-00 00:00:00', 1, 0),
(26, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created an exam schedule for class : five', 1, '2019-06-04 10:43:11', '0000-00-00 00:00:00', 1, 0),
(27, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam attendance for : final, five, bangla', 1, '2019-06-04 10:43:44', '0000-00-00 00:00:00', 1, 0),
(28, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam attendance for : final, five, bangla', 1, '2019-06-04 10:44:02', '0000-00-00 00:00:00', 1, 0),
(29, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-04 10:44:34', '0000-00-00 00:00:00', 1, 0),
(30, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark and save for class: five', 1, '2019-06-04 10:45:15', '0000-00-00 00:00:00', 1, 0),
(31, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-04 10:45:35', '0000-00-00 00:00:00', 1, 0),
(32, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam final result for class: five', 1, '2019-06-04 10:46:43', '0000-00-00 00:00:00', 1, 0),
(33, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam final result for class: five', 1, '2019-06-04 10:47:49', '0000-00-00 00:00:00', 1, 0),
(34, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-04 10:49:00', '0000-00-00 00:00:00', 1, 0),
(35, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark and save for class: five', 1, '2019-06-04 10:49:18', '0000-00-00 00:00:00', 1, 0),
(36, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam final result for class: five', 1, '2019-06-04 10:49:36', '0000-00-00 00:00:00', 1, 0),
(37, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process and save exam final result for class: five', 1, '2019-06-04 10:49:53', '0000-00-00 00:00:00', 1, 0),
(38, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been udated an Exam : final', 1, '2019-06-04 10:51:10', '0000-00-00 00:00:00', 1, 0),
(39, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process student attendance', 1, '2019-06-04 10:51:52', '0000-00-00 00:00:00', 1, 0),
(40, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-04 10:54:22', '0000-00-00 00:00:00', 1, 0),
(41, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-04 10:55:39', '0000-00-00 00:00:00', 1, 0),
(42, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark and save for class: five', 1, '2019-06-04 10:56:20', '0000-00-00 00:00:00', 1, 0),
(43, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-04 10:56:31', '0000-00-00 00:00:00', 1, 0),
(44, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam final result for class: five', 1, '2019-06-04 10:56:51', '0000-00-00 00:00:00', 1, 0),
(45, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process and save exam final result for class: five', 1, '2019-06-04 10:57:10', '0000-00-00 00:00:00', 1, 0),
(46, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been updated a school : Windsor Park High School', 1, '2019-06-04 10:58:33', '0000-00-00 00:00:00', 1, 0),
(47, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a academic Year : March 2019 - June 2020', 1, '2019-06-04 11:01:17', '0000-00-00 00:00:00', 1, 0),
(48, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been filter exam mark sheet for class: five', 1, '2019-06-04 11:01:50', '0000-00-00 00:00:00', 1, 0),
(49, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been filter exam mark sheet for class: five', 1, '2019-06-04 11:02:10', '0000-00-00 00:00:00', 1, 0),
(50, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been process exam final result for class: five', 1, '2019-06-04 11:02:51', '0000-00-00 00:00:00', 1, 0),
(51, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been created a certificate type : jsc', 1, '2019-06-04 11:05:13', '0000-00-00 00:00:00', 1, 0),
(52, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been generate a certificate for student : neyamul', 1, '2019-06-04 11:05:31', '0000-00-00 00:00:00', 1, 0),
(53, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been added a Book : bangla', 1, '2019-06-04 11:07:29', '0000-00-00 00:00:00', 1, 0),
(54, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 'Has been issued a Book : bangla', 1, '2019-06-04 11:08:42', '0000-00-00 00:00:00', 1, 0),
(55, 0, 0, 0, NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-26 06:16:20', '0000-00-00 00:00:00', 0, 0),
(56, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-26 06:16:26', '0000-00-00 00:00:00', 1, 0),
(57, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-26 06:54:55', '0000-00-00 00:00:00', 1, 0),
(58, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-26 06:57:37', '0000-00-00 00:00:00', 1, 0),
(59, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Activate Theme black', 1, '2019-06-26 10:57:55', '0000-00-00 00:00:00', 1, 0),
(60, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been updated global setting', 1, '2019-06-26 11:01:34', '0000-00-00 00:00:00', 1, 0),
(61, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-26 07:04:44', '0000-00-00 00:00:00', 1, 0),
(62, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created an assignment : solve this qeustion', 1, '2019-06-26 11:13:08', '0000-00-00 00:00:00', 1, 0),
(63, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Activate Theme black', 1, '2019-06-26 11:15:34', '0000-00-00 00:00:00', 1, 0),
(64, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a academic Year : March 2018 - June 2019', 1, '2019-06-26 11:19:05', '0000-00-00 00:00:00', 1, 0),
(65, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been activated a academic Year : 2019 - 2020 for: Windsor Park High School', 1, '2019-06-26 11:19:13', '0000-00-00 00:00:00', 1, 0),
(66, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been activated a academic Year : 2018 - 2019 for: Windsor Park High School', 1, '2019-06-26 11:19:16', '0000-00-00 00:00:00', 1, 0),
(67, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-06-26 07:20:25', '0000-00-00 00:00:00', 1, 0),
(68, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-26 07:20:30', '0000-00-00 00:00:00', 1, 0),
(69, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-26 07:24:35', '0000-00-00 00:00:00', 1, 0),
(70, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-26 07:24:40', '0000-00-00 00:00:00', 1, 0),
(71, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a super admin : Super Admin', 1, '2019-06-26 11:25:16', '0000-00-00 00:00:00', 1, 0),
(72, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-26 07:25:20', '0000-00-00 00:00:00', 1, 0),
(73, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-26 07:25:24', '0000-00-00 00:00:00', 1, 0),
(74, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-06-26 11:27:09', '0000-00-00 00:00:00', 1, 0),
(75, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a class :six', 1, '2019-06-26 11:30:13', '0000-00-00 00:00:00', 1, 0),
(76, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been promoted a class : five', 1, '2019-06-26 11:31:29', '0000-00-00 00:00:00', 1, 0),
(77, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process Teacher Attendance', 1, '2019-06-26 11:37:12', '0000-00-00 00:00:00', 1, 0),
(78, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-26 11:38:55', '0000-00-00 00:00:00', 1, 0),
(79, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process exam mark and save for class: five', 1, '2019-06-26 11:39:10', '0000-00-00 00:00:00', 1, 0),
(80, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process exam mark for class: five', 1, '2019-06-26 11:39:20', '0000-00-00 00:00:00', 1, 0),
(81, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-26 07:41:45', '0000-00-00 00:00:00', 1, 0),
(82, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-26 07:41:49', '0000-00-00 00:00:00', 1, 0),
(83, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-26 12:30:59', '0000-00-00 00:00:00', 1, 0),
(84, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-27 06:30:52', '0000-00-00 00:00:00', 1, 0),
(85, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-27 10:59:31', '0000-00-00 00:00:00', 1, 0),
(86, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-29 05:15:46', '0000-00-00 00:00:00', 1, 0),
(87, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been upload slider image : ', 1, '2019-06-29 09:16:24', '0000-00-00 00:00:00', 1, 0),
(88, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-29 05:18:00', '0000-00-00 00:00:00', 1, 0),
(89, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-29 05:18:23', '0000-00-00 00:00:00', 1, 0),
(90, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been created a notice : off day', 1, '2019-06-29 09:18:58', '0000-00-00 00:00:00', 1, 0),
(91, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated uploaded slider image : slider image', 1, '2019-06-29 09:20:42', '0000-00-00 00:00:00', 1, 0),
(92, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated uploaded slider image : slider image', 1, '2019-06-29 09:22:20', '0000-00-00 00:00:00', 1, 0),
(93, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been upload slider image : student', 1, '2019-06-29 09:27:10', '0000-00-00 00:00:00', 1, 0),
(94, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated uploaded slider image : slider image', 1, '2019-06-29 09:27:37', '0000-00-00 00:00:00', 1, 0),
(95, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated uploaded slider image : student', 1, '2019-06-29 09:28:24', '0000-00-00 00:00:00', 1, 0),
(96, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-29 05:29:59', '0000-00-00 00:00:00', 1, 0),
(97, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-29 11:13:11', '0000-00-00 00:00:00', 1, 0),
(98, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-29 11:13:44', '0000-00-00 00:00:00', 1, 0),
(99, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-29 11:17:39', '0000-00-00 00:00:00', 1, 0),
(100, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 07:14:40', '0000-00-00 00:00:00', 1, 0),
(101, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 07:16:37', '0000-00-00 00:00:00', 1, 0),
(102, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 07:17:05', '0000-00-00 00:00:00', 1, 0),
(103, 0, 0, 0, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a school : kursha hight school', 1, '2019-06-30 08:51:40', '0000-00-00 00:00:00', 0, 0),
(104, 0, 0, 0, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a school : kursha hight schools', 1, '2019-06-30 08:53:10', '0000-00-00 00:00:00', 0, 0),
(105, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been created a Designation : admin', 1, '2019-06-30 13:05:37', '0000-00-00 00:00:00', 1, 0),
(106, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been added a Employee : neyamul', 1, '2019-06-30 13:07:08', '0000-00-00 00:00:00', 1, 0),
(107, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 09:15:28', '0000-00-00 00:00:00', 1, 0),
(108, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-30 09:21:14', '0000-00-00 00:00:00', 7, 0),
(109, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-06-30 09:22:34', '0000-00-00 00:00:00', 7, 0),
(110, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-30 09:22:43', '0000-00-00 00:00:00', 7, 0),
(111, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-06-30 09:23:23', '0000-00-00 00:00:00', 7, 0),
(112, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-30 09:23:35', '0000-00-00 00:00:00', 7, 0),
(113, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-06-30 09:24:24', '0000-00-00 00:00:00', 7, 0),
(114, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-06-30 09:24:27', '0000-00-00 00:00:00', 7, 0),
(115, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Activate Theme black', 1, '2019-06-30 13:24:43', '0000-00-00 00:00:00', 7, 0),
(116, 0, 9, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 11:27:31', '0000-00-00 00:00:00', 9, 0),
(117, 0, 9, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 11:31:47', '0000-00-00 00:00:00', 9, 0),
(118, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 11:37:11', '0000-00-00 00:00:00', 2, 0),
(119, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 11:37:16', '0000-00-00 00:00:00', 2, 0),
(120, 0, 9, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 11:37:23', '0000-00-00 00:00:00', 9, 0),
(121, 0, 9, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 11:41:04', '0000-00-00 00:00:00', 9, 0),
(122, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 11:41:12', '0000-00-00 00:00:00', 2, 0),
(123, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 12:33:26', '0000-00-00 00:00:00', 2, 0),
(124, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-06-30 12:33:33', '0000-00-00 00:00:00', 1, 0),
(125, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-06-30 12:33:49', '0000-00-00 00:00:00', 1, 0),
(126, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-01 07:32:58', '0000-00-00 00:00:00', 7, 0),
(127, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a Designation : teachar', 1, '2019-07-01 11:52:12', '0000-00-00 00:00:00', 7, 0),
(128, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been added a Employee : Akash', 1, '2019-07-01 11:53:41', '0000-00-00 00:00:00', 7, 0),
(129, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-01 07:54:13', '0000-00-00 00:00:00', 7, 0),
(130, 0, 10, 9, 'Akash', '465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-01 07:54:42', '0000-00-00 00:00:00', 10, 0),
(131, 0, 10, 9, 'Akash', '465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-01 07:56:03', '0000-00-00 00:00:00', 10, 0),
(132, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-01 11:59:54', '0000-00-00 00:00:00', 7, 0),
(133, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-02 10:35:44', '0000-00-00 00:00:00', 7, 0),
(134, 0, 7, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been updated a Employee : Akash', 1, '2019-07-02 15:21:56', '0000-00-00 00:00:00', 7, 0),
(135, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-03 05:51:52', '0000-00-00 00:00:00', 2, 0),
(136, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-03 05:53:08', '0000-00-00 00:00:00', 2, 0),
(137, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-03 07:18:46', '0000-00-00 00:00:00', 1, 0),
(138, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-07-03 11:21:19', '0000-00-00 00:00:00', 1, 0),
(139, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : kursah school', 1, '2019-07-03 11:21:29', '0000-00-00 00:00:00', 1, 0),
(140, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-03 10:57:22', '0000-00-00 00:00:00', 1, 0),
(141, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated global setting', 1, '2019-07-03 15:02:12', '0000-00-00 00:00:00', 1, 0),
(142, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated global setting', 1, '2019-07-03 15:02:33', '0000-00-00 00:00:00', 1, 0),
(143, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated global setting', 1, '2019-07-03 15:03:18', '0000-00-00 00:00:00', 1, 0),
(144, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated global setting', 1, '2019-07-03 15:03:42', '0000-00-00 00:00:00', 1, 0),
(145, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated global setting', 1, '2019-07-03 15:04:00', '0000-00-00 00:00:00', 1, 0),
(146, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-04 11:57:36', '0000-00-00 00:00:00', 4, 0),
(147, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-04 12:01:33', '0000-00-00 00:00:00', 1, 0),
(148, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-04 12:13:38', '0000-00-00 00:00:00', 4, 0),
(149, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-04 12:16:26', '0000-00-00 00:00:00', 4, 0),
(150, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-04 12:17:08', '0000-00-00 00:00:00', 4, 0),
(151, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-04 12:17:24', '0000-00-00 00:00:00', 4, 0),
(152, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-06 05:45:40', '0000-00-00 00:00:00', 1, 0),
(153, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-06 05:52:46', '0000-00-00 00:00:00', 1, 0),
(154, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-06 05:52:53', '0000-00-00 00:00:00', 1, 0),
(155, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-07-06 10:17:18', '0000-00-00 00:00:00', 1, 0),
(156, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-07-06 10:17:30', '0000-00-00 00:00:00', 1, 0),
(157, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-07-06 10:20:26', '0000-00-00 00:00:00', 1, 0),
(158, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been deleted a school : mirbag school dhaka', 1, '2019-07-06 10:21:57', '0000-00-00 00:00:00', 1, 0),
(159, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been deleted a school : mirbag schoolssss fsdffs', 1, '2019-07-06 10:22:04', '0000-00-00 00:00:00', 1, 0),
(160, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been deleted a school : mirbag schoolssss', 1, '2019-07-06 10:22:13', '0000-00-00 00:00:00', 1, 0),
(161, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-07-06 10:23:28', '0000-00-00 00:00:00', 1, 0),
(162, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 06:44:41', '0000-00-00 00:00:00', 4, 0),
(163, 0, 4, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 06:44:46', '0000-00-00 00:00:00', 4, 0),
(164, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 06:46:29', '0000-00-00 00:00:00', 1, 0),
(165, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 06:48:38', '0000-00-00 00:00:00', 1, 0),
(166, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been created a school : fasdf', 1, '2019-07-06 11:17:55', '0000-00-00 00:00:00', 1, 0),
(167, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been deleted a school : fasdf', 1, '2019-07-06 11:18:10', '0000-00-00 00:00:00', 1, 0),
(168, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been updated a school : Test and skills school', 1, '2019-07-06 11:32:24', '0000-00-00 00:00:00', 1, 0),
(169, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 08:04:22', '0000-00-00 00:00:00', 1, 0),
(170, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 08:16:41', '0000-00-00 00:00:00', 1, 0),
(171, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 08:16:45', '0000-00-00 00:00:00', 2, 0),
(172, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 08:16:50', '0000-00-00 00:00:00', 2, 0),
(173, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 08:17:20', '0000-00-00 00:00:00', 2, 0),
(174, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-06 08:43:21', '0000-00-00 00:00:00', 1, 0),
(175, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 09:19:07', '0000-00-00 00:00:00', 2, 0),
(176, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 09:19:12', '0000-00-00 00:00:00', 1, 0),
(177, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 10:18:15', '0000-00-00 00:00:00', 1, 0),
(178, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 10:45:40', '0000-00-00 00:00:00', 1, 0),
(179, 0, 11, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-06 11:41:29', '0000-00-00 00:00:00', 11, 0),
(180, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been setting permission for the role : Student', 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(181, 0, 11, 4, 'neyamul', '0465473663444', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-06 11:51:57', '0000-00-00 00:00:00', 11, 0),
(182, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 13:44:18', '0000-00-00 00:00:00', 1, 0),
(183, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-06 19:50:42', '0000-00-00 00:00:00', 1, 0),
(184, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 19:52:27', '0000-00-00 00:00:00', 19, 0),
(185, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a class :six', 1, '2019-07-06 23:56:02', '0000-00-00 00:00:00', 19, 0),
(186, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a section : Section A for class : six', 1, '2019-07-06 23:56:23', '0000-00-00 00:00:00', 19, 0),
(187, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been added a sucject : bangla for class : six', 1, '2019-07-06 23:56:47', '0000-00-00 00:00:00', 19, 0),
(188, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been added a Guardian : manik', 1, '2019-07-06 23:57:51', '0000-00-00 00:00:00', 19, 0),
(189, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a academic Year : 2018 -  2019', 1, '2019-07-07 00:00:12', '0000-00-00 00:00:00', 19, 0),
(190, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-06 20:02:28', '0000-00-00 00:00:00', 19, 0),
(191, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-06 20:08:03', '0000-00-00 00:00:00', 1, 0);
INSERT INTO `activity_logs` (`id`, `school_id`, `user_id`, `role_id`, `name`, `phone`, `email`, `ip_address`, `user_agent`, `activity`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(192, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-06 20:09:17', '0000-00-00 00:00:00', 19, 0),
(193, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Update Profile', 1, '2019-07-07 00:13:24', '0000-00-00 00:00:00', 19, 0),
(194, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-07 12:10:33', '0000-00-00 00:00:00', 2, 0),
(195, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-07 12:10:37', '0000-00-00 00:00:00', 2, 0),
(196, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-09 07:54:34', '0000-00-00 00:00:00', 1, 0),
(197, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-09 08:19:04', '0000-00-00 00:00:00', 1, 0),
(198, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-09 08:19:12', '0000-00-00 00:00:00', 1, 0),
(199, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-09 08:30:42', '0000-00-00 00:00:00', 1, 0),
(200, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been activated a language : arabic', 1, '2019-07-09 12:37:35', '0000-00-00 00:00:00', 1, 0),
(201, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been activated a language : english', 1, '2019-07-09 12:39:08', '0000-00-00 00:00:00', 1, 0),
(202, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been added a Language : neyamul', 1, '2019-07-09 12:41:21', '0000-00-00 00:00:00', 1, 0),
(203, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been activated a language : bengali', 1, '2019-07-09 12:47:53', '0000-00-00 00:00:00', 1, 0),
(204, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been activated a language : english', 1, '2019-07-09 12:50:11', '0000-00-00 00:00:00', 1, 0),
(205, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-09 08:59:55', '0000-00-00 00:00:00', 1, 0),
(206, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-09 09:06:15', '0000-00-00 00:00:00', 1, 0),
(207, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-09 09:07:54', '0000-00-00 00:00:00', 1, 0),
(208, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-09 09:09:45', '0000-00-00 00:00:00', 1, 0),
(209, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-09 11:56:37', '0000-00-00 00:00:00', 1, 0),
(210, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-10 11:44:13', '0000-00-00 00:00:00', 1, 0),
(211, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-10 11:50:07', '0000-00-00 00:00:00', 1, 0),
(212, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-10 12:17:29', '0000-00-00 00:00:00', 1, 0),
(213, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been activated a academic Year : 2019 - 2020 for: Test and skills school', 1, '2019-07-10 16:23:13', '0000-00-00 00:00:00', 1, 0),
(214, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged out', 1, '2019-07-10 12:23:48', '0000-00-00 00:00:00', 1, 0),
(215, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been logged in', 1, '2019-07-10 12:23:58', '0000-00-00 00:00:00', 19, 0),
(216, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been activated a academic Year : 2018 - 2019 for: adnan school', 1, '2019-07-10 16:32:54', '0000-00-00 00:00:00', 19, 0),
(217, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a academic Year : 2018 -  2019', 1, '2019-07-10 16:33:17', '0000-00-00 00:00:00', 19, 0),
(218, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been activated a academic Year : 2018 - 2019 for: adnan school', 1, '2019-07-10 16:33:22', '0000-00-00 00:00:00', 19, 0),
(219, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process student attendance', 1, '2019-07-10 16:46:21', '0000-00-00 00:00:00', 19, 0),
(220, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process student attendance', 1, '2019-07-10 16:48:49', '0000-00-00 00:00:00', 19, 0),
(221, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been process student attendance', 1, '2019-07-10 16:57:20', '0000-00-00 00:00:00', 19, 0),
(222, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been created a certificate type : transcipt', 1, '2019-07-10 17:43:02', '0000-00-00 00:00:00', 19, 0),
(223, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been updated a certificate type : transcipt', 1, '2019-07-10 17:44:20', '0000-00-00 00:00:00', 19, 0),
(224, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'Has been generate a certificate for student : dsfsdf', 1, '2019-07-10 17:44:40', '0000-00-00 00:00:00', 19, 0),
(225, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-11 06:14:53', '0000-00-00 00:00:00', 1, 0),
(226, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-11 06:18:54', '0000-00-00 00:00:00', 1, 0),
(227, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-11 06:20:08', '0000-00-00 00:00:00', 1, 0),
(228, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-11 06:20:32', '0000-00-00 00:00:00', 33, 0),
(229, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-11 06:20:43', '0000-00-00 00:00:00', 33, 0),
(230, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-11 08:33:43', '0000-00-00 00:00:00', 1, 0),
(231, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been created a class :six', 1, '2019-07-11 13:08:10', '0000-00-00 00:00:00', 1, 0),
(232, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-11 10:28:28', '0000-00-00 00:00:00', 33, 0),
(233, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-11 10:28:57', '0000-00-00 00:00:00', 33, 0),
(234, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged in', 1, '2019-07-11 10:29:01', '0000-00-00 00:00:00', 1, 0),
(235, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been added Bulk Student', 1, '2019-07-11 14:33:59', '0000-00-00 00:00:00', 1, 0),
(236, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been added Bulk Student', 1, '2019-07-11 14:36:58', '0000-00-00 00:00:00', 1, 0),
(237, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been added Bulk Student', 1, '2019-07-11 14:37:24', '0000-00-00 00:00:00', 1, 0),
(238, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been added Bulk Student', 1, '2019-07-11 14:38:28', '0000-00-00 00:00:00', 1, 0),
(239, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 'Has been logged out', 1, '2019-07-11 11:18:32', '0000-00-00 00:00:00', 1, 0),
(240, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-07-16 05:24:26', '0000-00-00 00:00:00', 1, 0),
(241, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-07-16 07:34:39', '0000-00-00 00:00:00', 1, 0),
(242, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-07-16 07:41:14', '0000-00-00 00:00:00', 1, 0),
(243, 0, 31, 4, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-07-16 07:45:11', '0000-00-00 00:00:00', 31, 0),
(244, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-07-18 12:01:26', '0000-00-00 00:00:00', 1, 0),
(245, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-07-22 06:11:08', '0000-00-00 00:00:00', 1, 0),
(246, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-03 05:10:15', '0000-00-00 00:00:00', 1, 0),
(247, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been added a Hostel : Male student hostel', 1, '2019-08-03 09:17:26', '0000-00-00 00:00:00', 1, 0),
(248, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been added a room no : 3 of Male student hostel', 1, '2019-08-03 09:17:57', '0000-00-00 00:00:00', 1, 0),
(249, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been deleted a Hostel Member : neyamul ', 1, '2019-08-03 09:20:17', '0000-00-00 00:00:00', 1, 0),
(250, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been deleted a Hostel Member : neyamul', 1, '2019-08-03 09:20:21', '0000-00-00 00:00:00', 1, 0),
(251, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged out', 1, '2019-08-03 07:28:22', '0000-00-00 00:00:00', 1, 0),
(252, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-03 10:33:44', '0000-00-00 00:00:00', 1, 0),
(253, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-03 11:33:18', '0000-00-00 00:00:00', 1, 0),
(254, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-06 06:14:23', '0000-00-00 00:00:00', 1, 0),
(255, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 06:51:05', '0000-00-00 00:00:00', 1, 0),
(256, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 06:52:09', '0000-00-00 00:00:00', 1, 0),
(257, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:00:43', '0000-00-00 00:00:00', 1, 0),
(258, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:02:09', '0000-00-00 00:00:00', 1, 0),
(259, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:02:57', '0000-00-00 00:00:00', 1, 0),
(260, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:09:24', '0000-00-00 00:00:00', 1, 0),
(261, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:09:32', '0000-00-00 00:00:00', 42, 0),
(262, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been created a academic Year : 2018 -  2019', 1, '2019-08-06 11:22:26', '0000-00-00 00:00:00', 42, 0),
(263, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated a academic Year : 2018 -  2019', 1, '2019-08-06 11:25:54', '0000-00-00 00:00:00', 42, 0),
(264, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been activated a academic Year : 2018 - 2019 for: dhaka school new', 1, '2019-08-06 11:28:12', '0000-00-00 00:00:00', 42, 0),
(265, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been activated a academic Year : 2018 - 2019 for: dhaka school new', 1, '2019-08-06 11:28:15', '0000-00-00 00:00:00', 42, 0),
(266, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been created a Designation : dfsdaf', 1, '2019-08-06 11:28:32', '0000-00-00 00:00:00', 42, 0),
(267, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:29:10', '0000-00-00 00:00:00', 42, 0),
(268, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:29:15', '0000-00-00 00:00:00', 1, 0),
(269, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been setting permission for the role : Admin', 1, '2019-08-06 11:30:58', '0000-00-00 00:00:00', 1, 0),
(270, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:31:07', '0000-00-00 00:00:00', 1, 0),
(271, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:31:19', '0000-00-00 00:00:00', 42, 0),
(272, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:31:38', '0000-00-00 00:00:00', 42, 0),
(273, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:31:42', '0000-00-00 00:00:00', 1, 0),
(274, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been setting permission for the role : Admin', 1, '2019-08-06 11:32:45', '0000-00-00 00:00:00', 1, 0),
(275, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:32:52', '0000-00-00 00:00:00', 1, 0),
(276, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:33:01', '0000-00-00 00:00:00', 42, 0),
(277, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been deleted a Designation : dfsdaf', 1, '2019-08-06 11:34:02', '0000-00-00 00:00:00', 42, 0),
(278, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:50:14', '0000-00-00 00:00:00', 42, 0),
(279, 0, 27, 5, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:50:20', '0000-00-00 00:00:00', 27, 0),
(280, 0, 27, 5, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:50:24', '0000-00-00 00:00:00', 27, 0),
(281, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:50:42', '0000-00-00 00:00:00', 33, 0),
(282, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:50:45', '0000-00-00 00:00:00', 33, 0),
(283, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:54:07', '0000-00-00 00:00:00', 42, 0),
(284, 0, 42, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:54:47', '0000-00-00 00:00:00', 42, 0),
(285, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:55:03', '0000-00-00 00:00:00', 33, 0),
(286, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:55:16', '0000-00-00 00:00:00', 33, 0),
(287, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-06 07:59:47', '0000-00-00 00:00:00', 2, 0),
(288, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-06 07:59:50', '0000-00-00 00:00:00', 2, 0),
(289, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged out', 1, '2019-08-06 13:04:29', '0000-00-00 00:00:00', 1, 0),
(290, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-06 13:04:36', '0000-00-00 00:00:00', 1, 0),
(291, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged out', 1, '2019-08-06 13:06:03', '0000-00-00 00:00:00', 1, 0),
(292, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-06 13:06:15', '0000-00-00 00:00:00', 19, 0),
(293, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been created an Exam : class test', 1, '2019-08-06 17:52:20', '0000-00-00 00:00:00', 19, 0),
(294, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged out', 1, '2019-08-06 13:55:27', '0000-00-00 00:00:00', 19, 0),
(295, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-06 13:55:32', '0000-00-00 00:00:00', 1, 0),
(296, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-06 19:54:53', '0000-00-00 00:00:00', 1, 0),
(297, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-07 05:54:55', '0000-00-00 00:00:00', 1, 0),
(298, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged out', 1, '2019-08-07 06:16:54', '0000-00-00 00:00:00', 1, 0),
(299, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-07 06:16:57', '0000-00-00 00:00:00', 1, 0),
(300, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been deleted a school : kursha hi school', 1, '2019-08-07 10:32:46', '0000-00-00 00:00:00', 1, 0),
(301, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-07 06:38:38', '0000-00-00 00:00:00', 1, 0),
(302, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'Has been logged in', 1, '2019-08-07 07:12:23', '0000-00-00 00:00:00', 1, 0),
(303, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-19 06:20:01', '0000-00-00 00:00:00', 1, 0),
(304, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-19 06:25:22', '0000-00-00 00:00:00', 1, 0),
(305, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been added a sucject : Math for class : six', 1, '2019-08-19 11:26:14', '0000-00-00 00:00:00', 1, 0),
(306, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been setting permission for the role : Admin', 1, '2019-08-19 11:48:54', '0000-00-00 00:00:00', 1, 0),
(307, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been udated an Exam : Final exam', 1, '2019-08-19 12:31:54', '0000-00-00 00:00:00', 1, 0),
(308, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-19 11:00:38', '0000-00-00 00:00:00', 1, 0),
(309, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-19 11:25:31', '0000-00-00 00:00:00', 1, 0),
(310, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-19 11:25:41', '0000-00-00 00:00:00', 33, 0),
(311, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-19 11:26:16', '0000-00-00 00:00:00', 33, 0),
(312, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-19 11:26:21', '0000-00-00 00:00:00', 2, 0),
(313, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-19 11:27:48', '0000-00-00 00:00:00', 2, 0),
(314, 0, 27, 5, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-19 11:30:49', '0000-00-00 00:00:00', 27, 0),
(315, 0, 27, 5, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-19 11:31:04', '0000-00-00 00:00:00', 27, 0),
(316, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-19 11:35:44', '0000-00-00 00:00:00', 1, 0),
(317, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-19 11:36:17', '0000-00-00 00:00:00', 45, 0),
(318, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-20 05:37:28', '0000-00-00 00:00:00', 1, 0),
(319, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-20 05:39:05', '0000-00-00 00:00:00', 45, 0),
(320, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-20 09:03:30', '0000-00-00 00:00:00', 1, 0),
(321, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-20 09:03:39', '0000-00-00 00:00:00', 45, 0),
(322, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-20 10:29:09', '0000-00-00 00:00:00', 1, 0),
(323, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-20 12:56:00', '0000-00-00 00:00:00', 1, 0),
(324, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-21 05:34:19', '0000-00-00 00:00:00', 45, 0),
(325, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-21 07:24:16', '0000-00-00 00:00:00', 33, 0),
(326, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-21 07:24:23', '0000-00-00 00:00:00', 33, 0),
(327, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-21 07:24:27', '0000-00-00 00:00:00', 1, 0),
(328, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-21 10:34:41', '0000-00-00 00:00:00', 45, 0),
(329, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-22 07:14:05', '0000-00-00 00:00:00', 45, 0),
(330, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-22 07:20:25', '0000-00-00 00:00:00', 45, 0),
(331, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-22 08:13:01', '0000-00-00 00:00:00', 45, 0),
(332, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-22 08:24:39', '0000-00-00 00:00:00', 45, 0),
(333, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-22 10:48:05', '0000-00-00 00:00:00', 45, 0),
(334, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-22 13:05:52', '0000-00-00 00:00:00', 45, 0),
(335, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-22 13:06:20', '0000-00-00 00:00:00', 33, 0),
(336, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-22 13:06:32', '0000-00-00 00:00:00', 33, 0),
(337, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-22 13:07:43', '0000-00-00 00:00:00', 3, 0),
(338, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-22 13:18:43', '0000-00-00 00:00:00', 45, 0),
(339, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-22 13:22:31', '0000-00-00 00:00:00', 45, 0),
(340, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-22 13:24:08', '0000-00-00 00:00:00', 45, 0),
(341, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-23 13:32:23', '0000-00-00 00:00:00', 45, 0),
(342, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-23 13:35:17', '0000-00-00 00:00:00', 45, 0),
(343, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-23 13:37:32', '0000-00-00 00:00:00', 45, 0),
(344, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-23 13:37:49', '0000-00-00 00:00:00', 3, 0),
(345, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-23 13:38:33', '0000-00-00 00:00:00', 3, 0),
(346, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-23 13:38:38', '0000-00-00 00:00:00', 1, 0),
(347, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 05:12:01', '0000-00-00 00:00:00', 1, 0),
(348, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 05:14:05', '0000-00-00 00:00:00', 45, 0),
(349, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been setting permission for the role : Teacher', 1, '2019-08-25 10:20:08', '0000-00-00 00:00:00', 1, 0),
(350, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 06:27:39', '0000-00-00 00:00:00', 3, 0),
(351, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been setting permission for the role : Teacher', 1, '2019-08-25 10:28:21', '0000-00-00 00:00:00', 1, 0),
(352, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been setting permission for the role : Teacher', 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(353, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been created a class :nine', 1, '2019-08-25 10:53:56', '0000-00-00 00:00:00', 1, 0),
(354, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 07:08:12', '0000-00-00 00:00:00', 3, 0),
(355, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 07:08:18', '0000-00-00 00:00:00', 45, 0),
(356, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-25 07:09:45', '0000-00-00 00:00:00', 45, 0),
(357, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 07:09:49', '0000-00-00 00:00:00', 3, 0),
(358, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been created an Exam : class test', 1, '2019-08-25 11:57:59', '0000-00-00 00:00:00', 1, 0),
(359, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been added a sucject : english for class : six', 1, '2019-08-25 12:00:11', '0000-00-00 00:00:00', 1, 0),
(360, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been updated a sucject : english for class : six', 1, '2019-08-25 12:37:52', '0000-00-00 00:00:00', 1, 0),
(361, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been updated a sucject : bangla for class : five', 1, '2019-08-25 12:42:41', '0000-00-00 00:00:00', 1, 0),
(362, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-25 08:43:56', '0000-00-00 00:00:00', 3, 0),
(363, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 08:44:00', '0000-00-00 00:00:00', 19, 0),
(364, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-25 08:44:21', '0000-00-00 00:00:00', 19, 0),
(365, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 08:44:45', '0000-00-00 00:00:00', 3, 0),
(366, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been added a sucject : ICT for class : nine', 1, '2019-08-25 12:45:47', '0000-00-00 00:00:00', 1, 0),
(367, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-25 08:50:32', '0000-00-00 00:00:00', 3, 0),
(368, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 08:50:38', '0000-00-00 00:00:00', 3, 0),
(369, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-25 08:53:00', '0000-00-00 00:00:00', 3, 0),
(370, 0, 28, 5, 'neyamul kobir', '465473663343', 'neyamulkn@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 08:53:06', '0000-00-00 00:00:00', 28, 0),
(371, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 08:54:35', '0000-00-00 00:00:00', 3, 0),
(372, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been added a sucject : Bangla for class : nine', 1, '2019-08-25 13:05:51', '0000-00-00 00:00:00', 1, 0),
(373, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been added a sucject : Enlish for class : six', 1, '2019-08-25 13:07:45', '0000-00-00 00:00:00', 1, 0),
(374, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-25 10:33:50', '0000-00-00 00:00:00', 3, 0),
(375, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 12:37:01', '0000-00-00 00:00:00', 45, 0),
(376, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 12:37:11', '0000-00-00 00:00:00', 33, 0),
(377, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 12:37:22', '0000-00-00 00:00:00', 33, 0),
(378, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 13:02:13', '0000-00-00 00:00:00', 33, 0),
(379, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 13:02:29', '0000-00-00 00:00:00', 33, 0),
(380, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 13:02:33', '0000-00-00 00:00:00', 33, 0),
(381, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 13:03:04', '0000-00-00 00:00:00', 33, 0),
(382, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 13:03:08', '0000-00-00 00:00:00', 33, 0),
(383, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 13:06:08', '0000-00-00 00:00:00', 33, 0),
(384, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-25 13:07:59', '0000-00-00 00:00:00', 33, 0),
(385, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-25 13:08:04', '0000-00-00 00:00:00', 33, 0),
(386, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-26 05:52:26', '0000-00-00 00:00:00', 1, 0),
(387, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been created a invoice : 0', 1, '2019-08-26 09:56:15', '0000-00-00 00:00:00', 1, 0),
(388, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been created a invoice : 0', 1, '2019-08-26 09:58:53', '0000-00-00 00:00:00', 1, 0),
(389, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been created a expenditure head : current bill', 1, '2019-08-26 10:01:34', '0000-00-00 00:00:00', 1, 0),
(390, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been added expenditure : 100', 1, '2019-08-26 10:01:55', '0000-00-00 00:00:00', 1, 0),
(391, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-26 06:13:13', '0000-00-00 00:00:00', 1, 0),
(392, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-26 06:24:25', '0000-00-00 00:00:00', 45, 0),
(393, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-26 06:24:48', '0000-00-00 00:00:00', 45, 0),
(394, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-26 06:24:54', '0000-00-00 00:00:00', 3, 0),
(395, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-26 08:50:53', '0000-00-00 00:00:00', 1, 0);
INSERT INTO `activity_logs` (`id`, `school_id`, `user_id`, `role_id`, `name`, `phone`, `email`, `ip_address`, `user_agent`, `activity`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(396, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-26 08:50:57', '0000-00-00 00:00:00', 1, 0),
(397, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-26 08:51:06', '0000-00-00 00:00:00', 3, 0),
(398, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged out', 1, '2019-08-26 08:58:54', '0000-00-00 00:00:00', 3, 0),
(399, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-26 08:59:03', '0000-00-00 00:00:00', 45, 0),
(400, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Has been logged in', 1, '2019-08-27 13:56:36', '0000-00-00 00:00:00', 45, 0),
(401, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-28 07:36:51', '0000-00-00 00:00:00', 45, 0),
(402, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-28 07:40:27', '0000-00-00 00:00:00', 45, 0),
(403, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-28 07:40:31', '0000-00-00 00:00:00', 1, 0),
(404, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 11:43:27', '0000-00-00 00:00:00', 1, 0),
(405, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 11:45:33', '0000-00-00 00:00:00', 1, 0),
(406, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 11:53:27', '0000-00-00 00:00:00', 1, 0),
(407, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 11:53:51', '0000-00-00 00:00:00', 1, 0),
(408, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 11:54:02', '0000-00-00 00:00:00', 1, 0),
(409, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 11:54:12', '0000-00-00 00:00:00', 1, 0),
(410, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-28 08:09:02', '0000-00-00 00:00:00', 1, 0),
(411, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 12:15:28', '0000-00-00 00:00:00', 1, 0),
(412, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-28 12:15:35', '0000-00-00 00:00:00', 1, 0),
(413, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-28 08:24:12', '0000-00-00 00:00:00', 1, 0),
(414, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-28 08:24:16', '0000-00-00 00:00:00', 1, 0),
(415, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-28 13:40:03', '0000-00-00 00:00:00', 1, 0),
(416, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 05:26:45', '0000-00-00 00:00:00', 1, 0),
(417, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 07:28:45', '0000-00-00 00:00:00', 1, 0),
(418, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 07:28:58', '0000-00-00 00:00:00', 1, 0),
(419, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been updated global setting', 1, '2019-08-29 11:31:31', '0000-00-00 00:00:00', 1, 0),
(420, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 08:04:44', '0000-00-00 00:00:00', 1, 0),
(421, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 08:04:49', '0000-00-00 00:00:00', 1, 0),
(422, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 08:43:23', '0000-00-00 00:00:00', 1, 0),
(423, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 08:43:28', '0000-00-00 00:00:00', 1, 0),
(424, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 09:04:24', '0000-00-00 00:00:00', 1, 0),
(425, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 09:04:29', '0000-00-00 00:00:00', 1, 0),
(426, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 09:07:37', '0000-00-00 00:00:00', 1, 0),
(427, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 09:12:22', '0000-00-00 00:00:00', 1, 0),
(428, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 09:12:58', '0000-00-00 00:00:00', 1, 0),
(429, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 09:18:38', '0000-00-00 00:00:00', 33, 0),
(430, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 10:48:27', '0000-00-00 00:00:00', 1, 0),
(431, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 13:53:07', '0000-00-00 00:00:00', 1, 0),
(432, 0, 33, 2, NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 13:53:14', '0000-00-00 00:00:00', 33, 0),
(433, 0, 33, 2, NULL, NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-08-29 13:54:48', '0000-00-00 00:00:00', 33, 0),
(434, 0, 2, 3, 'fdsf', '0465473663444', 'ajsdj@gal.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-08-29 13:55:11', '0000-00-00 00:00:00', 2, 0),
(435, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 05:36:14', '0000-00-00 00:00:00', 45, 0),
(436, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 05:47:29', '0000-00-00 00:00:00', 45, 0),
(437, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 06:39:38', '0000-00-00 00:00:00', 45, 0),
(438, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 06:44:27', '0000-00-00 00:00:00', 45, 0),
(439, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 06:46:10', '0000-00-00 00:00:00', 45, 0),
(440, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 06:47:03', '0000-00-00 00:00:00', 45, 0),
(441, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 06:47:18', '0000-00-00 00:00:00', 45, 0),
(442, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 06:47:38', '0000-00-00 00:00:00', 45, 0),
(443, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-01 07:36:14', '0000-00-00 00:00:00', 1, 0),
(444, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 08:23:59', '0000-00-00 00:00:00', 45, 0),
(445, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 08:24:12', '0000-00-00 00:00:00', 45, 0),
(446, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 08:25:25', '0000-00-00 00:00:00', 45, 0),
(447, 0, 45, 4, 'neyamul', '23432523525', 'asik@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 08:25:30', '0000-00-00 00:00:00', 45, 0),
(448, 0, 24, 5, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 08:25:39', '0000-00-00 00:00:00', 24, 0),
(449, 0, 24, 5, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-01 08:26:31', '0000-00-00 00:00:00', 24, 0),
(450, 0, 23, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 08:26:43', '0000-00-00 00:00:00', 23, 0),
(451, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-09-01 08:35:01', '0000-00-00 00:00:00', 1, 0),
(452, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-01 08:35:11', '0000-00-00 00:00:00', 1, 0),
(453, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-01 10:50:43', '0000-00-00 00:00:00', 1, 0),
(454, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-01 10:51:41', '0000-00-00 00:00:00', 33, 0),
(455, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-02 06:11:46', '0000-00-00 00:00:00', 1, 0),
(456, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-02 06:26:46', '0000-00-00 00:00:00', 33, 0),
(457, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-02 10:21:04', '0000-00-00 00:00:00', 1, 0),
(458, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-02 10:21:57', '0000-00-00 00:00:00', 33, 0),
(459, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 14:48:21', '0000-00-00 00:00:00', 1, 0),
(460, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 14:48:51', '0000-00-00 00:00:00', 1, 0),
(461, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 14:50:23', '0000-00-00 00:00:00', 1, 0),
(462, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 14:52:21', '0000-00-00 00:00:00', 1, 0),
(463, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 14:52:27', '0000-00-00 00:00:00', 1, 0),
(464, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 15:06:39', '0000-00-00 00:00:00', 1, 0),
(465, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 15:06:43', '0000-00-00 00:00:00', 1, 0),
(466, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 15:06:53', '0000-00-00 00:00:00', 1, 0),
(467, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 15:06:56', '0000-00-00 00:00:00', 1, 0),
(468, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a history', 1, '2019-09-02 15:06:59', '0000-00-00 00:00:00', 1, 0),
(469, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-09-02 11:29:52', '0000-00-00 00:00:00', 33, 0),
(470, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-02 12:46:41', '0000-00-00 00:00:00', 1, 0),
(471, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-03 05:39:10', '0000-00-00 00:00:00', 1, 0),
(472, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-03 07:58:07', '0000-00-00 00:00:00', 1, 0),
(473, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-03 07:58:20', '0000-00-00 00:00:00', 19, 0),
(474, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-03 07:59:43', '0000-00-00 00:00:00', 19, 0),
(475, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-03 07:59:51', '0000-00-00 00:00:00', 19, 0),
(476, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-03 07:59:54', '0000-00-00 00:00:00', 19, 0),
(477, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-03 08:01:08', '0000-00-00 00:00:00', 19, 0),
(478, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-05 10:15:18', '0000-00-00 00:00:00', 33, 0),
(479, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-07 07:15:03', '0000-00-00 00:00:00', 1, 0),
(480, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a referral : ', 1, '2019-09-07 12:13:23', '0000-00-00 00:00:00', 1, 0),
(481, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a school : kursah school', 1, '2019-09-07 12:15:39', '0000-00-00 00:00:00', 1, 0),
(482, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a school : kursha hi schoolss', 1, '2019-09-07 12:16:59', '0000-00-00 00:00:00', 1, 0),
(483, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a referral : ', 1, '2019-09-07 12:22:03', '0000-00-00 00:00:00', 1, 0),
(484, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a referral : ', 1, '2019-09-07 12:55:29', '0000-00-00 00:00:00', 1, 0),
(485, 0, 48, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged in', 1, '2019-09-07 09:03:03', '0000-00-00 00:00:00', 48, 0),
(486, 0, 48, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'Has been logged out', 1, '2019-09-07 09:03:58', '0000-00-00 00:00:00', 48, 0),
(487, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-07 10:35:45', '0000-00-00 00:00:00', 1, 0),
(488, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-08 05:26:43', '0000-00-00 00:00:00', 1, 0),
(489, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-08 05:41:54', '0000-00-00 00:00:00', 1, 0),
(490, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-08 06:53:59', '0000-00-00 00:00:00', 1, 0),
(491, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-08 07:11:20', '0000-00-00 00:00:00', 1, 0),
(492, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-08 07:50:30', '0000-00-00 00:00:00', 1, 0),
(493, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been deleted a referral : ', 1, '2019-09-08 12:23:46', '0000-00-00 00:00:00', 1, 0),
(494, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-08 08:24:59', '0000-00-00 00:00:00', 33, 0),
(495, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-08 08:55:41', '0000-00-00 00:00:00', 33, 0),
(496, 0, 50, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-08 08:56:10', '0000-00-00 00:00:00', 50, 0),
(497, 0, 50, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-08 08:59:36', '0000-00-00 00:00:00', 50, 0),
(498, 0, 50, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-08 08:59:55', '0000-00-00 00:00:00', 50, 0),
(499, 0, 56, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-08 09:07:24', '0000-00-00 00:00:00', 56, 0),
(500, 0, 56, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-08 09:13:08', '0000-00-00 00:00:00', 56, 0),
(501, 0, 57, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-08 09:21:07', '0000-00-00 00:00:00', 57, 0),
(502, 0, 50, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-08 10:47:50', '0000-00-00 00:00:00', 50, 0),
(503, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-08 11:05:05', '0000-00-00 00:00:00', 1, 0),
(504, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-08 11:22:19', '0000-00-00 00:00:00', 1, 0),
(505, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-08 11:33:50', '0000-00-00 00:00:00', 1, 0),
(506, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-09 08:45:24', '0000-00-00 00:00:00', 1, 0),
(507, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-09 09:02:03', '0000-00-00 00:00:00', 1, 0),
(508, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-09 09:16:57', '0000-00-00 00:00:00', 1, 0),
(509, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-09 09:22:34', '0000-00-00 00:00:00', 1, 0),
(510, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-09 09:22:44', '0000-00-00 00:00:00', 1, 0),
(511, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-09 09:25:41', '0000-00-00 00:00:00', 1, 0),
(512, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-16 05:39:31', '0000-00-00 00:00:00', 1, 0),
(513, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-16 06:40:38', '0000-00-00 00:00:00', 1, 0),
(514, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-16 11:22:11', '0000-00-00 00:00:00', 1, 0),
(515, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been created a section : B for class : five', 1, '2019-09-16 15:23:19', '0000-00-00 00:00:00', 1, 0),
(516, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-23 05:28:19', '0000-00-00 00:00:00', 1, 0),
(517, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-23 08:22:09', '0000-00-00 00:00:00', 19, 0),
(518, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-23 10:36:11', '0000-00-00 00:00:00', 19, 0),
(519, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-23 10:37:03', '0000-00-00 00:00:00', 19, 0),
(520, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-23 10:37:08', '0000-00-00 00:00:00', 19, 0),
(521, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-23 10:37:17', '0000-00-00 00:00:00', 1, 0),
(522, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-24 16:53:12', '0000-00-00 00:00:00', 1, 0),
(523, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been created a fee type : admission fee', 1, '2019-09-24 20:59:57', '0000-00-00 00:00:00', 1, 0),
(524, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been created a invoice : 50.00', 1, '2019-09-24 21:00:41', '0000-00-00 00:00:00', 1, 0),
(525, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been created a invoice : 50.00', 1, '2019-09-24 21:01:34', '0000-00-00 00:00:00', 1, 0),
(526, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been created a invoice : 0', 1, '2019-09-24 21:02:31', '0000-00-00 00:00:00', 1, 0),
(527, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-24 17:31:53', '0000-00-00 00:00:00', 1, 0),
(528, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged in', 1, '2019-09-24 17:32:03', '0000-00-00 00:00:00', 19, 0),
(529, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-24 17:43:43', '0000-00-00 00:00:00', 19, 0),
(530, 0, 0, 0, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 'Has been logged out', 1, '2019-09-24 17:43:47', '0000-00-00 00:00:00', 0, 0),
(531, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-25 11:25:42', '0000-00-00 00:00:00', 1, 0),
(532, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-25 11:27:56', '0000-00-00 00:00:00', 1, 0),
(533, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-25 11:28:01', '0000-00-00 00:00:00', 33, 0),
(534, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Update Profile', 1, '2019-09-25 15:49:41', '0000-00-00 00:00:00', 33, 0),
(535, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been updated global setting', 1, '2019-09-25 17:02:20', '0000-00-00 00:00:00', 33, 0),
(536, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged out', 1, '2019-09-25 13:04:24', '0000-00-00 00:00:00', 33, 0),
(537, 0, 33, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'Has been logged in', 1, '2019-09-25 13:04:34', '0000-00-00 00:00:00', 33, 0),
(538, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-09-26 08:15:53', '0000-00-00 00:00:00', 1, 0),
(539, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-09-26 08:18:49', '0000-00-00 00:00:00', 1, 0),
(540, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-09-26 08:19:29', '0000-00-00 00:00:00', 19, 0),
(541, 0, 19, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-09-26 08:34:54', '0000-00-00 00:00:00', 19, 0),
(542, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-09-28 16:39:10', '0000-00-00 00:00:00', 3, 0),
(543, 0, 3, 5, 'neyamul', '0465473663', '', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-09-28 16:40:05', '0000-00-00 00:00:00', 3, 0),
(544, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-09-28 16:40:16', '0000-00-00 00:00:00', 1, 0),
(545, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-09-28 16:46:44', '0000-00-00 00:00:00', 1, 0),
(546, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-09-28 16:47:21', '0000-00-00 00:00:00', 24, 0),
(547, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been created a fee type : Exam fee', 1, '2019-09-28 21:27:08', '0000-00-00 00:00:00', 24, 0),
(548, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-10-06 05:32:58', '0000-00-00 00:00:00', 1, 0),
(549, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-10-06 05:33:35', '0000-00-00 00:00:00', 1, 0),
(550, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-10-06 05:33:39', '0000-00-00 00:00:00', 24, 0),
(551, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-10-06 06:29:19', '0000-00-00 00:00:00', 24, 0),
(552, 0, 0, 0, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-10-06 06:29:34', '0000-00-00 00:00:00', 0, 0),
(553, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-10-06 06:30:21', '0000-00-00 00:00:00', 1, 0),
(554, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-10-06 06:32:03', '0000-00-00 00:00:00', 24, 0),
(555, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been created a fee type : Scout fee', 1, '2019-10-06 10:51:57', '0000-00-00 00:00:00', 24, 0),
(556, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-10-06 06:55:46', '0000-00-00 00:00:00', 24, 0),
(557, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-10-06 06:55:53', '0000-00-00 00:00:00', 24, 0),
(558, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged in', 1, '2019-10-06 07:25:51', '0000-00-00 00:00:00', 1, 0),
(559, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Has been logged out', 1, '2019-10-06 07:26:12', '0000-00-00 00:00:00', 1, 0),
(560, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-13 07:11:42', '0000-00-00 00:00:00', 24, 0),
(561, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-16 10:28:50', '0000-00-00 00:00:00', 1, 0),
(562, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been updated global setting', 1, '2019-10-16 14:29:56', '0000-00-00 00:00:00', 1, 0),
(563, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-16 11:02:42', '0000-00-00 00:00:00', 1, 0),
(564, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-16 11:10:47', '0000-00-00 00:00:00', 1, 0),
(565, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-16 11:26:05', '0000-00-00 00:00:00', 1, 0),
(566, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-16 11:27:50', '0000-00-00 00:00:00', 1, 0),
(567, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-16 11:28:37', '0000-00-00 00:00:00', 1, 0),
(568, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-17 13:29:49', '0000-00-00 00:00:00', 1, 0),
(569, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been created a invoice : 0', 1, '2019-10-17 17:32:04', '0000-00-00 00:00:00', 1, 0),
(570, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-17 14:19:05', '0000-00-00 00:00:00', 1, 0),
(571, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-19 07:59:26', '0000-00-00 00:00:00', 1, 0),
(572, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-19 08:05:43', '0000-00-00 00:00:00', 1, 0),
(573, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-19 08:05:55', '0000-00-00 00:00:00', 24, 0),
(574, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-19 08:25:16', '0000-00-00 00:00:00', 24, 0),
(575, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been created a fee type : hostel fee', 1, '2019-10-19 12:25:51', '0000-00-00 00:00:00', 24, 0),
(576, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-19 08:27:07', '0000-00-00 00:00:00', 24, 0),
(577, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-26 20:24:36', '0000-00-00 00:00:00', 24, 0),
(578, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-27 06:01:13', '0000-00-00 00:00:00', 24, 0),
(579, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-27 06:03:52', '0000-00-00 00:00:00', 24, 0),
(580, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-27 07:03:36', '0000-00-00 00:00:00', 24, 0),
(581, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-27 07:17:27', '0000-00-00 00:00:00', 24, 0),
(582, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged in', 1, '2019-10-27 07:19:46', '0000-00-00 00:00:00', 24, 0),
(583, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Has been logged out', 1, '2019-10-27 07:28:33', '0000-00-00 00:00:00', 24, 0),
(584, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged in', 1, '2019-12-22 09:28:06', '0000-00-00 00:00:00', 24, 0),
(585, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged out', 1, '2019-12-22 09:30:35', '0000-00-00 00:00:00', 24, 0),
(586, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged in', 1, '2019-12-23 05:21:02', '0000-00-00 00:00:00', 24, 0),
(587, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged in', 1, '2019-12-23 05:22:15', '0000-00-00 00:00:00', 1, 0),
(588, 0, 1, 1, 'Super Admin', '78965424', 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been setting permission for the role : Admin', 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(589, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged out', 1, '2019-12-23 05:49:57', '0000-00-00 00:00:00', 24, 0),
(590, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged in', 1, '2019-12-23 11:04:51', '0000-00-00 00:00:00', 24, 0),
(591, 0, 24, 2, NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'Has been logged in', 1, '2019-12-23 13:31:41', '0000-00-00 00:00:00', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `title` varchar(255) NULL,
  `deadline` date NULL,
  `note` text,
  `assignment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `school_id`, `class_id`, `section_id`, `subject_id`, `academic_year_id`, `title`, `deadline`, `note`, `assignment`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, 1, 0, 1, 2, 'solve this qeustion', '2019-06-27', '', 'assignment-1561525988-sms.pdf', 1, 1, 0, '2019-06-26 11:13:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `custom_id` varchar(50) NULL,
  `title` varchar(255) NULL,
  `isbn_no` varchar(20) DEFAULT NULL,
  `edition` varchar(20) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) NULL,
  `cover` varchar(50) DEFAULT NULL,
  `rack_no` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `school_id`, `custom_id`, `title`, `isbn_no`, `edition`, `author`, `language`, `price`, `qty`, `cover`, `rack_no`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'BK00001', 'bangla', '3', '', '', '', '0.00', 3, NULL, '', 1, '2019-06-04 11:07:29', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `library_member_id` int(11) NULL COMMENT 'Library member id',
  `book_id` int(11) NULL,
  `issue_date` date NULL,
  `due_date` date NULL,
  `return_date` date NULL,
  `is_returned` tinyint(1) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `school_id`, `academic_year_id`, `library_member_id`, `book_id`, `issue_date`, `due_date`, `return_date`, `is_returned`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 2, 1, 1, '2019-06-04', '2019-06-18', '2019-06-04', 1, 1, '2019-06-04 11:08:42', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `name` varchar(255) NULL,
  `top_title` varchar(255) DEFAULT NULL,
  `sub_title_middle` varchar(255) DEFAULT NULL,
  `main_text` text,
  `footer_left` varchar(255) DEFAULT NULL,
  `footer_middle` varchar(255) DEFAULT NULL,
  `footer_right` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `school_id`, `name`, `top_title`, `sub_title_middle`, `main_text`, `footer_left`, `footer_middle`, `footer_right`, `background`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, 'jsc', 'wndsor', NULL, 'good', 'lef', 'middle', 'righ', NULL, 1, 1, 0, '2019-06-04 11:05:13', '0000-00-00 00:00:00'),
(2, 14, 'transcipt', 'test and skill', NULL, 'By the present, I certified that [name], of [dob] years old, who lives in [present_address], being her/his guardian [guardian] , is a active student for this institution since [created_at]', 'Principal', '', 'date', 'certificate-1562759060-sms.jpg', 1, 19, 19, '2019-07-10 17:43:02', '2019-07-10 17:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `teacher_id` int(11) NULL,
  `name` varchar(100) NULL,
  `numeric_name` int(11) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `school_id`, `teacher_id`, `name`, `numeric_name`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 'five', 5, '', 1, '2019-06-04 10:19:25', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 'six', 6, '', 1, '2019-06-26 11:30:13', '0000-00-00 00:00:00', 1, 0),
(3, 14, 2, 'six', 6, '', 1, '2019-07-06 23:56:02', '0000-00-00 00:00:00', 19, 0),
(4, 18, 4, 'six', 6, '', 1, '2019-07-11 13:08:10', '0000-00-00 00:00:00', 1, 0),
(5, 1, 3, 'nine', 9, '', 1, '2019-08-25 10:53:56', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NULL,
  `sortname` varchar(3) NULL,
  `name` varchar(150) NULL,
  `phonecode` int(11) NULL,
  `status` int(11) NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`, `status`) VALUES
(1, 'AF', 'Afghanistan', 93, 0),
(2, 'AL', 'Albania', 355, 0),
(3, 'DZ', 'Algeria', 213, 0),
(4, 'AS', 'American Samoa', 1684, 0),
(5, 'AD', 'Andorra', 376, 0),
(6, 'AO', 'Angola', 244, 0),
(7, 'AI', 'Anguilla', 1264, 0),
(8, 'AQ', 'Antarctica', 0, 0),
(9, 'AG', 'Antigua And Barbuda', 1268, 0),
(10, 'AR', 'Argentina', 54, 0),
(11, 'AM', 'Armenia', 374, 0),
(12, 'AW', 'Aruba', 297, 0),
(13, 'AU', 'Australia', 61, 0),
(14, 'AT', 'Austria', 43, 0),
(15, 'AZ', 'Azerbaijan', 994, 0),
(16, 'BS', 'Bahamas The', 1242, 0),
(17, 'BH', 'Bahrain', 973, 0),
(18, 'BD', 'Bangladesh', 880, 1),
(19, 'BB', 'Barbados', 1246, 0),
(20, 'BY', 'Belarus', 375, 0),
(21, 'BE', 'Belgium', 32, 0),
(22, 'BZ', 'Belize', 501, 0),
(23, 'BJ', 'Benin', 229, 0),
(24, 'BM', 'Bermuda', 1441, 0),
(25, 'BT', 'Bhutan', 975, 0),
(26, 'BO', 'Bolivia', 591, 0),
(27, 'BA', 'Bosnia and Herzegovina', 387, 0),
(28, 'BW', 'Botswana', 267, 0),
(29, 'BV', 'Bouvet Island', 0, 0),
(30, 'BR', 'Brazil', 55, 0),
(31, 'IO', 'British Indian Ocean Territory', 246, 0),
(32, 'BN', 'Brunei', 673, 0),
(33, 'BG', 'Bulgaria', 359, 0),
(34, 'BF', 'Burkina Faso', 226, 0),
(35, 'BI', 'Burundi', 257, 0),
(36, 'KH', 'Cambodia', 855, 0),
(37, 'CM', 'Cameroon', 237, 0),
(38, 'CA', 'Canada', 1, 0),
(39, 'CV', 'Cape Verde', 238, 0),
(40, 'KY', 'Cayman Islands', 1345, 0),
(41, 'CF', 'Central African Republic', 236, 0),
(42, 'TD', 'Chad', 235, 0),
(43, 'CL', 'Chile', 56, 0),
(44, 'CN', 'China', 86, 0),
(45, 'CX', 'Christmas Island', 61, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 0),
(47, 'CO', 'Colombia', 57, 0),
(48, 'KM', 'Comoros', 269, 0),
(49, 'CG', 'Republic Of The Congo', 242, 0),
(50, 'CD', 'Democratic Republic Of The Congo', 242, 0),
(51, 'CK', 'Cook Islands', 682, 0),
(52, 'CR', 'Costa Rica', 506, 0),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, 0),
(54, 'HR', 'Croatia (Hrvatska)', 385, 0),
(55, 'CU', 'Cuba', 53, 0),
(56, 'CY', 'Cyprus', 357, 0),
(57, 'CZ', 'Czech Republic', 420, 0),
(58, 'DK', 'Denmark', 45, 0),
(59, 'DJ', 'Djibouti', 253, 0),
(60, 'DM', 'Dominica', 1767, 0),
(61, 'DO', 'Dominican Republic', 1809, 0),
(62, 'TP', 'East Timor', 670, 0),
(63, 'EC', 'Ecuador', 593, 0),
(64, 'EG', 'Egypt', 20, 0),
(65, 'SV', 'El Salvador', 503, 0),
(66, 'GQ', 'Equatorial Guinea', 240, 0),
(67, 'ER', 'Eritrea', 291, 0),
(68, 'EE', 'Estonia', 372, 0),
(69, 'ET', 'Ethiopia', 251, 0),
(70, 'XA', 'External Territories of Australia', 61, 0),
(71, 'FK', 'Falkland Islands', 500, 0),
(72, 'FO', 'Faroe Islands', 298, 0),
(73, 'FJ', 'Fiji Islands', 679, 0),
(74, 'FI', 'Finland', 358, 0),
(75, 'FR', 'France', 33, 0),
(76, 'GF', 'French Guiana', 594, 0),
(77, 'PF', 'French Polynesia', 689, 0),
(78, 'TF', 'French Southern Territories', 0, 0),
(79, 'GA', 'Gabon', 241, 0),
(80, 'GM', 'Gambia The', 220, 0),
(81, 'GE', 'Georgia', 995, 0),
(82, 'DE', 'Germany', 49, 0),
(83, 'GH', 'Ghana', 233, 0),
(84, 'GI', 'Gibraltar', 350, 0),
(85, 'GR', 'Greece', 30, 0),
(86, 'GL', 'Greenland', 299, 0),
(87, 'GD', 'Grenada', 1473, 0),
(88, 'GP', 'Guadeloupe', 590, 0),
(89, 'GU', 'Guam', 1671, 0),
(90, 'GT', 'Guatemala', 502, 0),
(91, 'XU', 'Guernsey and Alderney', 44, 0),
(92, 'GN', 'Guinea', 224, 0),
(93, 'GW', 'Guinea-Bissau', 245, 0),
(94, 'GY', 'Guyana', 592, 0),
(95, 'HT', 'Haiti', 509, 0),
(96, 'HM', 'Heard and McDonald Islands', 0, 0),
(97, 'HN', 'Honduras', 504, 0),
(98, 'HK', 'Hong Kong S.A.R.', 852, 0),
(99, 'HU', 'Hungary', 36, 0),
(100, 'IS', 'Iceland', 354, 0),
(101, 'IN', 'India', 91, 0),
(102, 'ID', 'Indonesia', 62, 0),
(103, 'IR', 'Iran', 98, 0),
(104, 'IQ', 'Iraq', 964, 0),
(105, 'IE', 'Ireland', 353, 0),
(106, 'IL', 'Israel', 972, 0),
(107, 'IT', 'Italy', 39, 0),
(108, 'JM', 'Jamaica', 1876, 0),
(109, 'JP', 'Japan', 81, 0),
(110, 'XJ', 'Jersey', 44, 0),
(111, 'JO', 'Jordan', 962, 0),
(112, 'KZ', 'Kazakhstan', 7, 0),
(113, 'KE', 'Kenya', 254, 1),
(114, 'KI', 'Kiribati', 686, 0),
(115, 'KP', 'Korea North', 850, 0),
(116, 'KR', 'Korea South', 82, 0),
(117, 'KW', 'Kuwait', 965, 0),
(118, 'KG', 'Kyrgyzstan', 996, 0),
(119, 'LA', 'Laos', 856, 0),
(120, 'LV', 'Latvia', 371, 0),
(121, 'LB', 'Lebanon', 961, 0),
(122, 'LS', 'Lesotho', 266, 0),
(123, 'LR', 'Liberia', 231, 0),
(124, 'LY', 'Libya', 218, 0),
(125, 'LI', 'Liechtenstein', 423, 0),
(126, 'LT', 'Lithuania', 370, 0),
(127, 'LU', 'Luxembourg', 352, 0),
(128, 'MO', 'Macau S.A.R.', 853, 0),
(129, 'MK', 'Macedonia', 389, 0),
(130, 'MG', 'Madagascar', 261, 0),
(131, 'MW', 'Malawi', 265, 0),
(132, 'MY', 'Malaysia', 60, 0),
(133, 'MV', 'Maldives', 960, 0),
(134, 'ML', 'Mali', 223, 0),
(135, 'MT', 'Malta', 356, 0),
(136, 'XM', 'Man (Isle of)', 44, 0),
(137, 'MH', 'Marshall Islands', 692, 0),
(138, 'MQ', 'Martinique', 596, 0),
(139, 'MR', 'Mauritania', 222, 0),
(140, 'MU', 'Mauritius', 230, 0),
(141, 'YT', 'Mayotte', 269, 0),
(142, 'MX', 'Mexico', 52, 0),
(143, 'FM', 'Micronesia', 691, 0),
(144, 'MD', 'Moldova', 373, 0),
(145, 'MC', 'Monaco', 377, 0),
(146, 'MN', 'Mongolia', 976, 0),
(147, 'MS', 'Montserrat', 1664, 0),
(148, 'MA', 'Morocco', 212, 0),
(149, 'MZ', 'Mozambique', 258, 0),
(150, 'MM', 'Myanmar', 95, 0),
(151, 'NA', 'Namibia', 264, 0),
(152, 'NR', 'Nauru', 674, 0),
(153, 'NP', 'Nepal', 977, 0),
(154, 'AN', 'Netherlands Antilles', 599, 0),
(155, 'NL', 'Netherlands The', 31, 0),
(156, 'NC', 'New Caledonia', 687, 0),
(157, 'NZ', 'New Zealand', 64, 0),
(158, 'NI', 'Nicaragua', 505, 0),
(159, 'NE', 'Niger', 227, 0),
(160, 'NG', 'Nigeria', 234, 0),
(161, 'NU', 'Niue', 683, 0),
(162, 'NF', 'Norfolk Island', 672, 0),
(163, 'MP', 'Northern Mariana Islands', 1670, 0),
(164, 'NO', 'Norway', 47, 0),
(165, 'OM', 'Oman', 968, 0),
(166, 'PK', 'Pakistan', 92, 0),
(167, 'PW', 'Palau', 680, 0),
(168, 'PS', 'Palestinian Territory Occupied', 970, 0),
(169, 'PA', 'Panama', 507, 0),
(170, 'PG', 'Papua new Guinea', 675, 0),
(171, 'PY', 'Paraguay', 595, 0),
(172, 'PE', 'Peru', 51, 0),
(173, 'PH', 'Philippines', 63, 0),
(174, 'PN', 'Pitcairn Island', 0, 0),
(175, 'PL', 'Poland', 48, 0),
(176, 'PT', 'Portugal', 351, 0),
(177, 'PR', 'Puerto Rico', 1787, 0),
(178, 'QA', 'Qatar', 974, 0),
(179, 'RE', 'Reunion', 262, 0),
(180, 'RO', 'Romania', 40, 0),
(181, 'RU', 'Russia', 70, 0),
(182, 'RW', 'Rwanda', 250, 0),
(183, 'SH', 'Saint Helena', 290, 0),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 0),
(185, 'LC', 'Saint Lucia', 1758, 0),
(186, 'PM', 'Saint Pierre and Miquelon', 508, 0),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 0),
(188, 'WS', 'Samoa', 684, 0),
(189, 'SM', 'San Marino', 378, 0),
(190, 'ST', 'Sao Tome and Principe', 239, 0),
(191, 'SA', 'Saudi Arabia', 966, 0),
(192, 'SN', 'Senegal', 221, 0),
(193, 'RS', 'Serbia', 381, 0),
(194, 'SC', 'Seychelles', 248, 0),
(195, 'SL', 'Sierra Leone', 232, 0),
(196, 'SG', 'Singapore', 65, 0),
(197, 'SK', 'Slovakia', 421, 0),
(198, 'SI', 'Slovenia', 386, 0),
(199, 'XG', 'Smaller Territories of the UK', 44, 0),
(200, 'SB', 'Solomon Islands', 677, 0),
(201, 'SO', 'Somalia', 252, 0),
(202, 'ZA', 'South Africa', 27, 0),
(203, 'GS', 'South Georgia', 0, 0),
(204, 'SS', 'South Sudan', 211, 0),
(205, 'ES', 'Spain', 34, 0),
(206, 'LK', 'Sri Lanka', 94, 0),
(207, 'SD', 'Sudan', 249, 0),
(208, 'SR', 'Suriname', 597, 0),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, 0),
(210, 'SZ', 'Swaziland', 268, 0),
(211, 'SE', 'Sweden', 46, 0),
(212, 'CH', 'Switzerland', 41, 0),
(213, 'SY', 'Syria', 963, 0),
(214, 'TW', 'Taiwan', 886, 0),
(215, 'TJ', 'Tajikistan', 992, 0),
(216, 'TZ', 'Tanzania', 255, 0),
(217, 'TH', 'Thailand', 66, 0),
(218, 'TG', 'Togo', 228, 0),
(219, 'TK', 'Tokelau', 690, 0),
(220, 'TO', 'Tonga', 676, 0),
(221, 'TT', 'Trinidad And Tobago', 1868, 0),
(222, 'TN', 'Tunisia', 216, 0),
(223, 'TR', 'Turkey', 90, 0),
(224, 'TM', 'Turkmenistan', 7370, 0),
(225, 'TC', 'Turks And Caicos Islands', 1649, 0),
(226, 'TV', 'Tuvalu', 688, 0),
(227, 'UG', 'Uganda', 256, 0),
(228, 'UA', 'Ukraine', 380, 0),
(229, 'AE', 'United Arab Emirates', 971, 0),
(230, 'GB', 'United Kingdom', 44, 0),
(231, 'US', 'United States', 1, 0),
(232, 'UM', 'United States Minor Outlying Islands', 1, 0),
(233, 'UY', 'Uruguay', 598, 0),
(234, 'UZ', 'Uzbekistan', 998, 0),
(235, 'VU', 'Vanuatu', 678, 0),
(236, 'VA', 'Vatican City State (Holy See)', 39, 0),
(237, 'VE', 'Venezuela', 58, 0),
(238, 'VN', 'Vietnam', 84, 0),
(239, 'VG', 'Virgin Islands (British)', 1284, 0),
(240, 'VI', 'Virgin Islands (US)', 1340, 0),
(241, 'WF', 'Wallis And Futuna Islands', 681, 0),
(242, 'EH', 'Western Sahara', 212, 0),
(243, 'YE', 'Yemen', 967, 0),
(244, 'YU', 'Yugoslavia', 38, 0),
(245, 'ZM', 'Zambia', 260, 0),
(246, 'ZW', 'Zimbabwe', 263, 0);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `name` varchar(120) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `school_id`, `name`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'admin', '', 1, '2019-06-30 13:05:37', '0000-00-00 00:00:00', 1, 0),
(2, 9, 'teachar', '', 1, '2019-07-01 11:52:12', '0000-00-00 00:00:00', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `title` varchar(100) NULL,
  `amount` double(10,2) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NULL,
  `school_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `amount_ref` double DEFAULT NULL,
  `withdraw_amount` double DEFAULT NULL,
  `payment_date` datetime NULL,
  `payment_method` varchar(20) NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `cheque_no` varchar(50) DEFAULT NULL,
  `transection_id` varchar(50) DEFAULT NULL,
  `pay_type` tinyint(4) NULL,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `school_id`, `receiver_id`, `amount`, `ref_id`, `amount_ref`, `withdraw_amount`, `payment_date`, `payment_method`, `bank_name`, `cheque_no`, `transection_id`, `pay_type`, `status`) VALUES
(28, 1, 1, 5000, 3, 500, NULL, '2019-09-08 09:56:03', 'bikash', '', '', 'TDFGD3343', 1, 1),
(29, NULL, 1, NULL, 3, NULL, 100, '2019-09-08 09:57:11', 'cash', '', '', '', 2, 1),
(30, NULL, 1, NULL, 4, NULL, 50, '2019-09-08 10:10:15', 'cash', '', '', '', 2, 1),
(31, 1, 1, 5000, 3, 500, NULL, '2019-09-08 10:10:36', 'cash', '', '', '', 1, 1),
(32, 23, 1, 5000, 3, 250, NULL, '2019-09-08 12:20:54', 'cash', '', '', '', 1, 1),
(33, 24, 1, 200, 6, 10, NULL, '2019-09-08 13:17:56', 'cash', '', '', '', 1, 1),
(34, NULL, 1, NULL, 6, NULL, 50, '2019-09-08 13:19:07', 'cash', '', '', '', 2, 1),
(35, 25, 1, 5000, 4, 250, NULL, '2019-09-08 15:27:58', 'cash', '', '', '', 1, 1),
(36, NULL, 1, NULL, 3, NULL, 50, '2019-09-09 13:34:54', 'cash', '', '', '', 2, 1),
(37, NULL, 1, NULL, 3, NULL, 100, '2019-09-24 21:10:30', 'cash', '', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `role_id` int(11) NULL,
  `sender_role_id` int(11) NULL,
  `receivers` text,
  `academic_year_id` int(11) NULL,
  `email_type` varchar(50) NULL COMMENT '1. general, 2. Attendance, 3. Due Fee, 4. Result ',
  `absent_date` date DEFAULT NULL,
  `subject` varchar(255) NULL,
  `body` text NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `role_id` int(11) NULL,
  `title` varchar(255) NULL,
  `template` text NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NULL,
  `user_id` int(11) NULL,
  `school_id` int(11) NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `designation_id` int(11) NULL,
  `salary_grade_id` int(11) DEFAULT NULL,
  `salary_type` varchar(20) DEFAULT NULL,
  `name` varchar(100) NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(15) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NULL,
  `joining_date` date NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `other_info` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `school_id`, `national_id`, `designation_id`, `salary_grade_id`, `salary_type`, `name`, `email`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `is_view_on_web`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 6, 1, '', 1, 1, 'monthly', 'neyamul', '', '235345634636', '', '', 'male', 'a_positive', '', '2019-06-04', '2019-06-26', NULL, NULL, NULL, '', '', '', '', '', '', '', 0, '', 1, '2019-06-30 13:07:08', '0000-00-00 00:00:00', 1, 0),
(2, 10, 9, '', 2, 2, 'monthly', 'Akash', '', '465473663', 'dfsd', 'dfsd', 'male', 'a_positive', '', '2019-07-09', '2019-07-31', NULL, NULL, NULL, '', '', '', '', '', '', '', 1, '', 1, '2019-07-01 11:53:41', '2019-07-02 15:21:56', 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `employee_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `month` varchar(10) NULL,
  `year` varchar(10) NULL,
  `day_1` varchar(1) DEFAULT NULL,
  `day_2` varchar(1) DEFAULT NULL,
  `day_3` varchar(1) DEFAULT NULL,
  `day_4` varchar(1) DEFAULT NULL,
  `day_5` varchar(1) DEFAULT NULL,
  `day_6` varchar(1) DEFAULT NULL,
  `day_7` varchar(1) DEFAULT NULL,
  `day_8` varchar(1) DEFAULT NULL,
  `day_9` varchar(1) DEFAULT NULL,
  `day_10` varchar(1) DEFAULT NULL,
  `day_11` varchar(1) DEFAULT NULL,
  `day_12` varchar(1) DEFAULT NULL,
  `day_13` varchar(1) DEFAULT NULL,
  `day_14` varchar(1) DEFAULT NULL,
  `day_15` varchar(1) DEFAULT NULL,
  `day_16` varchar(1) DEFAULT NULL,
  `day_17` varchar(1) DEFAULT NULL,
  `day_18` varchar(1) DEFAULT NULL,
  `day_19` varchar(1) DEFAULT NULL,
  `day_20` varchar(1) DEFAULT NULL,
  `day_21` varchar(1) DEFAULT NULL,
  `day_22` varchar(1) DEFAULT NULL,
  `day_23` varchar(1) DEFAULT NULL,
  `day_24` varchar(1) DEFAULT NULL,
  `day_25` varchar(1) DEFAULT NULL,
  `day_26` varchar(1) DEFAULT NULL,
  `day_27` varchar(1) DEFAULT NULL,
  `day_28` varchar(1) DEFAULT NULL,
  `day_29` varchar(1) DEFAULT NULL,
  `day_30` varchar(1) DEFAULT NULL,
  `day_31` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `student_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `academic_year_id` int(11) DEFAULT NULL,
  `roll_no` int(11) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `school_id`, `student_id`, `class_id`, `section_id`, `academic_year_id`, `roll_no`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(12, 1, 13, 1, 0, 2, 0, 1, '2019-07-09 06:59:11', '0000-00-00 00:00:00', 0, 0),
(13, 14, 15, 3, 4, 4, 3, 1, '2019-07-10 16:35:23', '0000-00-00 00:00:00', 19, 0),
(5, 1, 3, 1, 1, 2, 32, 1, '2019-07-06 15:38:18', '0000-00-00 00:00:00', 1, 0),
(16, 18, 20, 4, 5, NULL, 34, 1, '2019-07-11 14:38:28', '0000-00-00 00:00:00', 1, 0),
(10, 1, 10, 2, 0, 2, 0, 1, '2019-07-06 13:14:54', '0000-00-00 00:00:00', 0, 0),
(14, 18, 18, 4, 0, NULL, 0, 1, '2019-07-11 10:27:49', '0000-00-00 00:00:00', 0, 0),
(17, 18, 21, 4, 0, NULL, 0, 1, '2019-08-06 07:57:38', '0000-00-00 00:00:00', 0, 0),
(18, 1, 22, 1, 0, 1, 0, 1, '2019-08-19 11:35:25', '0000-00-00 00:00:00', 0, 0),
(19, 1, 23, 2, 0, 1, 0, 1, '2019-08-25 12:38:15', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `role_id` int(11) NULL,
  `title` varchar(255) NULL,
  `event_place` varchar(255) DEFAULT NULL,
  `event_from` date NULL,
  `event_to` date NULL,
  `image` varchar(100) DEFAULT NULL,
  `note` text,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `school_id`, `role_id`, `title`, `event_place`, `event_from`, `event_to`, `image`, `note`, `is_view_on_web`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 0, 'sdf', 'fadsf', '2019-06-06', '2019-06-12', NULL, 'fasdf', 1, 1, '2019-06-04 10:03:57', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `title` varchar(100) NULL,
  `start_date` date NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `school_id`, `academic_year_id`, `title`, `start_date`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 2, 'Final exam', '2019-06-04', '', 1, '2019-06-04 10:42:35', '2019-08-19 12:31:54', 1, 1),
(2, 14, 4, 'class test', '2019-08-14', '', 1, '2019-08-06 17:52:20', '0000-00-00 00:00:00', 19, 0),
(3, 1, 1, 'class test', '2019-08-29', '', 1, '2019-08-25 11:57:59', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exam_attendances`
--

CREATE TABLE `exam_attendances` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `student_id` int(11) NULL,
  `is_attend` varchar(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_attendances`
--

INSERT INTO `exam_attendances` (`id`, `school_id`, `exam_id`, `class_id`, `section_id`, `subject_id`, `academic_year_id`, `student_id`, `is_attend`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 2, 1, '1', 1, '2019-06-04 10:43:44', '2019-06-04 10:43:54', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `student_id` int(11) NULL,
  `total_subject` int(11) NULL,
  `total_mark` int(11) NULL,
  `total_obtain_mark` int(11) NULL,
  `avg_grade_point` float(5,2) NULL,
  `grade_id` int(11) NULL,
  `result_status` varchar(50) NULL,
  `merit_rank_in_class` varchar(50) NULL,
  `merit_rank_in_section` varchar(50) NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `exam_date` date NULL,
  `start_time` varchar(20) NULL,
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL,
  `room_no` varchar(20) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `school_id`, `exam_id`, `class_id`, `subject_id`, `academic_year_id`, `exam_date`, `start_time`, `end_time`, `room_no`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 2, '2019-06-05', '10:45 AM', '11:45 AM', '122', '', 1, '2019-06-04 10:43:11', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expenditures`
--

CREATE TABLE `expenditures` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `expenditure_head_id` int(11) NULL,
  `expenditure_type` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) NULL,
  `expenditure_via` varchar(20) NULL,
  `date` date NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenditures`
--

INSERT INTO `expenditures` (`id`, `school_id`, `academic_year_id`, `expenditure_head_id`, `expenditure_type`, `amount`, `expenditure_via`, `date`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 'general', '100.00', 'cash', '2019-08-21', '', 1, '2019-08-26 10:01:55', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expenditure_heads`
--

CREATE TABLE `expenditure_heads` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `title` varchar(255) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenditure_heads`
--

INSERT INTO `expenditure_heads` (`id`, `school_id`, `title`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'current bill', '', 1, '2019-08-26 10:01:34', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fees_amount`
--

CREATE TABLE `fees_amount` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `income_head_id` int(11) NULL,
  `class_id` int(11) NULL,
  `fee_amount` double(10,2) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_amount`
--

INSERT INTO `fees_amount` (`id`, `school_id`, `income_head_id`, `class_id`, `fee_amount`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 2, 1, 50.00, 1, '2019-09-24 20:59:57', '0000-00-00 00:00:00', 1, 0),
(2, 1, 2, 2, 50.00, 1, '2019-09-24 20:59:57', '0000-00-00 00:00:00', 1, 0),
(3, 1, 2, 5, 50.00, 1, '2019-09-24 20:59:57', '0000-00-00 00:00:00', 1, 0),
(4, 1, 3, 1, 34.00, 1, '2019-09-28 21:27:08', '0000-00-00 00:00:00', 24, 0),
(5, 1, 3, 2, 43.00, 1, '2019-09-28 21:27:08', '0000-00-00 00:00:00', 24, 0),
(6, 1, 3, 5, 43.00, 1, '2019-09-28 21:27:09', '0000-00-00 00:00:00', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `final_results`
--

CREATE TABLE `final_results` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `student_id` int(11) NULL,
  `total_subject` int(11) NULL,
  `total_mark` int(11) NULL,
  `total_obtain_mark` int(11) NULL,
  `avg_grade_point` float(5,2) NULL,
  `grade_id` int(11) NULL,
  `result_status` varchar(50) NULL,
  `merit_rank_in_class` varchar(20) NULL,
  `merit_rank_in_section` varchar(20) NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `final_results`
--

INSERT INTO `final_results` (`id`, `school_id`, `class_id`, `section_id`, `academic_year_id`, `student_id`, `total_subject`, `total_mark`, `total_obtain_mark`, `avg_grade_point`, `grade_id`, `result_status`, `merit_rank_in_class`, `merit_rank_in_section`, `remark`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 2, 1, 0, 0, 0, 5.00, 2, 'passed', '', '', '', 1, '2019-06-04 10:57:10', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 1, 2, 2, 0, 0, 0, 5.00, 2, 'passed', '', '', '', 1, '2019-06-04 10:57:10', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `title` varchar(255) NULL,
  `note` text,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `gallery_id` int(11) NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_setting`
--

CREATE TABLE `global_setting` (
  `id` int(11) NULL,
  `brand_name` varchar(255) NULL,
  `language` varchar(100) NULL DEFAULT 'english',
  `enable_rtl` tinyint(1) NULL,
  `enable_frontend` tinyint(1) NULL,
  `date_format` varchar(20) NULL,
  `time_zone` varchar(150) NULL,
  `brand_logo` varchar(120) DEFAULT NULL,
  `front_logo` varchar(100) DEFAULT NULL,
  `brand_footer` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_setting`
--

INSERT INTO `global_setting` (`id`, `brand_name`, `language`, `enable_rtl`, `enable_frontend`, `date_format`, `time_zone`, `brand_logo`, `front_logo`, `brand_footer`, `google_analytics`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 'Institute Management System', 'english', 0, 1, 'M j, Y', 'Asia/Dhaka', '1571214596-brand-logo.png', '1571214596-brand-front-logo.png', '© 2019 TesknSkill', '', 1, 1, 1, '2018-10-02 10:39:15', '2019-10-16 14:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `gmsms_sessions`
--

CREATE TABLE `gmsms_sessions` (
  `id` varchar(128) NULL,
  `ip_address` varchar(45) NULL,
  `timestamp` int(10) UNSIGNED NULL DEFAULT '0',
  `data` blob NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `name` varchar(50) NULL,
  `point` decimal(10,2) NULL,
  `mark_from` int(11) NULL,
  `mark_to` int(11) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `school_id`, `name`, `point`, `mark_from`, `mark_to`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'A', '4.00', 70, 79, '', 1, '2019-06-04 10:23:54', '0000-00-00 00:00:00', 1, 0),
(2, 1, 'A+', '5.00', 80, 100, '', 1, '2019-06-04 10:42:08', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) NULL,
  `phone` varchar(20) NULL,
  `email` varchar(100) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `school_id`, `user_id`, `national_id`, `name`, `phone`, `email`, `profession`, `present_address`, `permanent_address`, `religion`, `photo`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 2, '353534535', 'fdsf', '0465473663444', 'ajsdj@gal.com', 'fads', 'dfsd', 'dfsd', 'fasdf', NULL, 'fdsf', 1, '2019-06-04 09:55:05', '2019-06-04 09:55:47', 1, 1),
(2, 14, 21, '', 'manik', '23042349832', '', 'student', '', '', '', NULL, '', 1, '2019-07-06 23:57:51', '0000-00-00 00:00:00', 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `guardian_feedbacks`
--

CREATE TABLE `guardian_feedbacks` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `guardian_id` int(11) NULL,
  `feedback` text NULL,
  `is_publish` tinyint(1) NULL,
  `status` tinyint(1) NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `title` varchar(255) NULL,
  `date_from` date NULL,
  `date_to` date NULL,
  `note` text,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `name` varchar(100) NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` text,
  `status` int(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `school_id`, `name`, `type`, `address`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'Male student hostel', 'boys', 'dfsd', '', 1, '2019-08-03 09:17:26', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_members`
--

CREATE TABLE `hostel_members` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `custom_member_id` varchar(20) NULL,
  `hostel_id` int(11) NULL,
  `room_id` int(11) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `income_heads`
--

CREATE TABLE `income_heads` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `head_type` varchar(50) DEFAULT NULL COMMENT 'fee, income, hostel, transport',
  `title` varchar(255) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_heads`
--

INSERT INTO `income_heads` (`id`, `school_id`, `head_type`, `title`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'fee', 'teachar', 'fasdf', 1, '2019-06-04 10:02:08', '0000-00-00 00:00:00', 1, 0),
(2, 1, 'fee', 'admission fee', '', 1, '2019-09-24 20:59:57', '0000-00-00 00:00:00', 1, 0),
(3, 1, 'fee', 'Exam fee', '', 1, '2019-09-28 21:27:08', '0000-00-00 00:00:00', 24, 0),
(4, 1, NULL, 'Scout fee', '', 1, '2019-10-06 10:51:57', '0000-00-00 00:00:00', 24, 0),
(5, 1, 'hostel', 'hostel fee', '', 1, '2019-10-19 12:25:51', '0000-00-00 00:00:00', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `income_head_id` int(11) NULL,
  `custom_invoice_id` varchar(50) NULL,
  `invoice_type` varchar(10) NULL COMMENT 'income, fee, hostel, transport',
  `is_applicable_discount` tinyint(1) DEFAULT '0',
  `academic_year_id` int(11) NULL,
  `class_id` int(11) NULL,
  `student_id` int(11) NULL,
  `month` varchar(20) DEFAULT NULL,
  `gross_amount` double(10,2) NULL,
  `net_amount` double(10,2) NULL,
  `discount` double(10,2) NULL,
  `paid_status` varchar(20) NULL DEFAULT 'Unpaid',
  `temp_amount` double(10,2) NULL,
  `date` date NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `school_id`, `income_head_id`, `custom_invoice_id`, `invoice_type`, `is_applicable_discount`, `academic_year_id`, `class_id`, `student_id`, `month`, `gross_amount`, `net_amount`, `discount`, `paid_status`, `temp_amount`, `date`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 'INV00001', 'fee', 1, 1, 1, 22, '06-2019', 0.00, 0.00, 0.00, 'paid', 0.00, '2019-08-26', '', 1, '2019-08-26 09:56:15', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 'INV00002', 'fee', 0, 1, 1, 22, '10-2019', 0.00, 0.00, 0.00, 'unpaid', 0.00, '2019-08-26', '', 1, '2019-08-26 09:58:53', '0000-00-00 00:00:00', 1, 0),
(3, 1, 2, 'INV00003', 'fee', 0, 1, 1, 22, '09-2019', 50.00, 50.00, 0.00, 'paid', 0.00, '2019-09-24', '', 1, '2019-09-24 21:00:41', '0000-00-00 00:00:00', 1, 0),
(4, 1, 2, 'INV00004', 'fee', 0, 1, 1, 22, '09-2019', 50.00, 50.00, 0.00, 'paid', 0.00, '2019-09-24', '', 1, '2019-09-24 21:01:34', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 'INV00005', 'fee', 0, 1, 1, 22, '09-2019', 0.00, 0.00, 0.00, 'paid', 0.00, '2019-09-24', '', 1, '2019-09-24 21:02:31', '0000-00-00 00:00:00', 1, 0),
(6, 1, 1, 'INV00006', 'fee', 0, 1, 2, 23, '07-2019', 0.00, 0.00, 0.00, 'paid', 0.00, '2019-10-17', '', 1, '2019-10-17 17:32:04', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NULL,
  `label` text COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci,
  `bengali` longtext COLLATE utf8_unicode_ci,
  `spanish` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `urdu` longtext COLLATE utf8_unicode_ci,
  `chinese` longtext COLLATE utf8_unicode_ci,
  `japanese` longtext COLLATE utf8_unicode_ci,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `russian` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `korean` longtext COLLATE utf8_unicode_ci,
  `german` longtext COLLATE utf8_unicode_ci,
  `italian` longtext COLLATE utf8_unicode_ci,
  `thai` longtext COLLATE utf8_unicode_ci,
  `hungarian` longtext COLLATE utf8_unicode_ci,
  `dutch` longtext COLLATE utf8_unicode_ci,
  `latin` longtext COLLATE utf8_unicode_ci,
  `indonesian` longtext COLLATE utf8_unicode_ci,
  `turkish` longtext COLLATE utf8_unicode_ci,
  `greek` longtext COLLATE utf8_unicode_ci,
  `persian` longtext COLLATE utf8_unicode_ci,
  `malay` longtext COLLATE utf8_unicode_ci,
  `telugu` longtext COLLATE utf8_unicode_ci,
  `tamil` longtext COLLATE utf8_unicode_ci,
  `gujarati` longtext COLLATE utf8_unicode_ci,
  `polish` longtext COLLATE utf8_unicode_ci,
  `ukrainian` longtext COLLATE utf8_unicode_ci,
  `panjabi` longtext COLLATE utf8_unicode_ci,
  `romanian` longtext COLLATE utf8_unicode_ci,
  `burmese` longtext COLLATE utf8_unicode_ci,
  `yoruba` longtext COLLATE utf8_unicode_ci,
  `hausa` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(1, 'add', 'Add', 'যোগ করুন', 'Añadir', 'إضافة', 'जोड़ना', 'شامل کریں', '加', '追加', 'Adicionar', 'Добавить', 'Ajouter', '더하다', 'Hinzufügen', 'Inserisci', 'เพิ่ม', 'hozzáad', 'Toevoegen', 'addere', 'Menambahkan', 'Eklemek', 'Προσθέτω', 'اضافه کردن', 'Tambah', 'చేర్చు', 'கூட்டு', 'ઉમેરો', 'Dodaj', 'Додати', 'ਜੋੜੋ', 'Adăuga', 'ပေါင်း', 'Fi kun', 'Ƙara'),
(2, 'edit', 'Edit', 'সম্পাদনা করুন', 'Editar', 'تصحيح', 'संपादित करें', 'ترمیم', '编辑', '編集', 'Editar', 'редактировать', 'modifier', '편집하다', 'Bearbeiten', 'modificare', 'แก้ไข', 'szerkesztése', 'Bewerk', 'recensere', 'Edit', 'Düzenle', 'Επεξεργασία', 'ویرایش', 'Edit', 'మార్చు', 'தொகு', 'સંપાદિત કરો', 'Edytować', 'Редагувати', 'ਸੰਪਾਦਿਤ ਕਰੋ', 'Editați | ×', 'Edit ကို', 'Ṣatunkọ', 'Shirya'),
(3, 'delete', 'Delete', 'মুছুন', 'Borrar', 'حذف', 'हटाना', 'حذف کریں', '删除', '削除', 'Excluir', 'Удалить', 'effacer', '지우다', 'Löschen', 'Elimina', 'ลบ', 'Töröl', 'Verwijder', 'delere', 'Menghapus', 'silmek', 'Διαγράφω', 'حذف', 'Padam', 'తొలగించు', 'அழி', 'કાઢી નાંખો', 'Kasować', 'Видалити', 'ਮਿਟਾਓ', 'Șterge', 'ဖျက်ပစ်ပါ', 'Paarẹ', 'Share'),
(4, 'view', 'View', 'দেখুন', 'Ver', 'رأي', 'राय', 'دیکھیں', '视图', 'ビュー', 'Visão', 'Посмотреть', 'vue', '전망', 'Aussicht', 'vista', 'ดู', 'Kilátás', 'Uitzicht', 'View', 'Melihat', 'Görünüm', 'Θέα', 'چشم انداز', 'Lihat', 'చూడండి', 'காண்க', 'જુઓ', 'Widok', 'Вид', 'ਵੇਖੋ', 'Vedere', 'ကြည့်ရှုခြင်း', 'Wo', 'Duba'),
(5, 'action', 'Action', 'ক্রিয়া', 'Acción', 'عمل', 'कार्य', 'عمل', '行动', 'アクション', 'Açao', 'действие', 'action', '동작', 'Aktion', 'Azione', 'การกระทำ', 'Akció', 'Actie', 'actum', 'Tindakan', 'Aksiyon', 'Δράση', 'عمل', 'Tindakan', 'యాక్షన్', 'அதிரடி', 'ક્રિયા', 'Akcja', 'Дія', 'ਐਕਸ਼ਨ', 'Acțiune', 'လှုပ်ရှားမှု', 'Ise', 'Action'),
(6, 'status', 'Status', 'অবস্থা', 'Estado', 'الحالة', 'स्थिति', 'حالت', '状态', '状態', 'Status', 'Положение дел', 'statut', '지위', 'Status', 'Stato', 'สถานะ', 'Állapot', 'staat', 'Status', 'Status', 'durum', 'Κατάσταση', 'وضعیت', 'Status', 'స్థితి', 'நிலைமை', 'સ્થિતિ', 'Status', 'Статус', 'ਸਥਿਤੀ', 'stare', 'အဆင့်အတန်း', 'Ipo', 'Matsayi'),
(7, 'select', 'Select', 'নির্বাচন করুন', 'Seleccionar', 'تحديد', 'चुनते हैं', 'منتخب کریں', '选择', '選択', 'Selecione', 'Выбрать', 'sélectionner', '고르다', 'Wählen', 'Selezionare', 'เลือก', 'választ', 'kiezen', 'select', 'Memilih', 'seçmek', 'Επιλέγω', 'انتخاب کنید', 'Pilih', 'ఎంచుకోండి', 'தேர்வு', 'પસંદ કરો', 'Wybierz', 'Виберіть', 'ਚੁਣੋ', 'Selectați', 'ကို Select လုပ်ပါ', 'Yan', 'Zaɓi'),
(8, 'photo', 'Photo', 'ছবি', 'Foto', 'صورة فوتوغرافية', 'तस्वीर', 'تصویر', '照片', '写真', 'foto', 'Фото', 'photo', '사진', 'Foto', 'Foto', 'ภาพถ่าย', 'Fénykép', 'Foto', 'photo', 'Foto', 'Fotoğraf', 'φωτογραφία', 'عکس', 'Foto', 'ఫోటో', 'புகைப்பட', 'ફોટો', 'Zdjęcie', 'Фотографія', 'ਫੋਟੋ', 'Fotografie', 'ဓာတ်ပုံ', 'aworan', 'Hotuna'),
(9, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'अपलोड', 'اپ لوڈ کریں', '上传', 'アップロード', 'Envio', 'Загрузить', 'télécharger', '업로드', 'Hochladen', 'Caricare', 'อัปโหลด', 'Feltöltés', 'Uploaden', 'Index', 'Upload', 'Yükleme', 'Μεταφόρτωση', 'بارگذاری', 'Muat naik', 'అప్లోడ్', 'பதிவேற்றம்', 'અપલોડ કરો', 'Przekazać plik', 'Завантажити', 'ਅਪਲੋਡ ਕਰੋ', 'Încărcați', 'လွှတ်တင်ခြင်း', 'Po si', 'Upload'),
(10, 'created', 'Created', 'তৈরীর তারিখ', 'Creado', 'خلقت', 'बनाया था', 'تخلیق', '创建', '作成した', 'Criada', 'созданный', 'créé', '만들어진', 'Erstellt', 'Creato', 'ที่สร้างไว้', 'Alkotó', 'gemaakt', 'creatum', 'Dibuat', 'düzenlendi', 'Δημιουργήθηκε', 'ایجاد شده', 'Dicipta', 'రూపొందించబడింది', 'உருவாக்கப்பட்டது', 'બનાવ્યું', 'Stworzony', 'Створено', 'ਬਣਾਇਆ ਗਿਆ', 'Creată', 'Created', 'Ti ṣẹda', 'An yi'),
(11, 'modified', 'Modified', 'পরিবর্তিত তারিখ', 'Modificado', 'تم التعديل', 'संशोधित', 'ترمیم', '改性', '変更された', 'Modificado', 'модифицированный', 'modifié', '수정 됨', 'Geändert', 'Modificata', 'ดัดแปลง', 'Módosított', 'gewijzigde', 'Modified', 'Diubah', 'Değiştirilmiş', 'Τροποποιήθηκε', 'اصلاح شده', 'Diubah suai', 'సవరించిన', 'திருத்தப்பட்ட', 'સંશોધિત', 'Zmodyfikowany', 'Змінено', 'ਸੰਸ਼ੋਧਿਤ', 'Modificat', 'ပြုပြင်ထားသော', 'Ti yipada', 'An gyara'),
(12, 'manage', 'Manage', 'পরিচালনা করা', 'Gestionar', 'تدبير', 'प्रबंधित', 'انتظام کریں', '管理', '管理', 'Gerir', 'управлять', 'gérer', '꾸리다', 'Verwalten', 'Gestire', 'จัดการ', 'kezel', 'beheren', 'curo', 'Mengelola', 'yönetme', 'Διαχειρίζονται', 'مدیریت کردن', 'Mengurus', 'నిర్వహించడానికి', 'நிர்வகிக்கவும்', 'મેનેજ કરો', 'Zarządzanie', 'Керувати', 'ਪ੍ਰਬੰਧ ਕਰਨਾ, ਕਾਬੂ ਕਰਨਾ', 'Administra', 'စီမံခန့်ခွဲရန်', 'Ṣakoso', 'Sarrafa'),
(13, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'रद्द करना', 'منسوخ کریں', '取消', 'キャンセル', 'Cancelar', 'Отмена', 'Annuler', '취소', 'Stornieren', 'Annulla', 'ยกเลิก', 'Megszünteti', 'Annuleer', 'Cancel', 'Membatalkan', 'İptal etmek', 'Ματαίωση', 'لغو', 'Batalkan', 'రద్దు', 'ரத்து', 'રદ કરો', 'Anuluj', 'Скасувати', 'ਰੱਦ ਕਰੋ', 'Anulare', 'Cancel', 'Fagilee', 'Cancel'),
(14, 'submit', 'Submit', 'জমা দিন', 'Enviar', 'خضع', 'जमा करें', 'جمع', '提交', '提出する', 'Enviar', 'Отправить', 'soumettre', '제출', 'einreichen', 'Sottoscrivi', 'เสนอ', 'beküldése', 'voorleggen', 'submit', 'Menyerahkan', 'Gönder', 'υποβάλλουν', 'ارسال', 'Hantar', 'సమర్పించండి', 'சமர்ப்பி', 'સબમિટ કરો', 'Zatwierdź', 'Відправити', 'ਜਮ੍ਹਾਂ ਕਰੋ', 'A depune', 'တင်သွင်း', 'Firanṣẹ', 'Sanya'),
(15, 'update', 'Update', 'আপডেট', 'Actualizar', 'تحديث', 'अद्यतन करें', 'اپ ڈیٹ', '更新', '更新', 'Atualizar', 'Обновить', 'mettre à jour', '최신 정보', 'Aktualisieren', 'Aggiornare', 'ปรับปรุง', 'frissítés', 'Bijwerken', 'Update', 'Memperbarui', 'Güncelleştirme', 'Εκσυγχρονίζω', 'به روز رسانی', 'Kemas kini', 'నవీకరణ', 'புதுப்பிக்கப்பட்டது', 'અપડેટ કરો', 'Aktualizacja', 'Оновити', 'ਅੱਪਡੇਟ ਕਰੋ', 'Actualizați', 'Update ကို', 'Imudojuiwọn', 'Sabuntawa'),
(16, 'no_data_found', 'No available data found ', 'কোন তথ্য পাওয়া যায় নি', 'No hay datos disponibles encontrados', 'لم يتم العثور على بيانات متوفرة', 'कोई उपलब्ध डेटा नहीं मिला', 'دستیاب ڈیٹا نہیں ملا', '没有找到可用的数据', '利用可能なデータが見つかりません', 'Não foram encontrados dados disponíveis', 'Нет доступных данных', 'mettre à jour...', '사용할 수있는 데이터가 없습니다.', 'Keine verfügbaren Daten gefunden', 'Nessun dato disponibile trovato', 'ไม่พบข้อมูลที่มีอยู่', 'Nincs elérhető adat', 'Geen beschikbare gegevens gevonden', 'Notitia available non inveni', 'Tidak ditemukan data yang tersedia', 'Mevcut veri bulunamadı', 'Δεν βρέθηκαν διαθέσιμα δεδομένα', 'داده های موجود یافت نشد', 'Tiada data yang terdapat', 'అందుబాటులో ఉన్న డేటా కనుగొనబడలేదు', 'கிடைக்கக்கூடிய தரவுகள் எதுவும் கிடைக்கவில்லை', 'કોઈ ઉપલબ્ધ માહિતી મળી નથી', 'Nie znaleziono żadnych dostępnych danych', 'Не знайдено доступних даних', 'ਕੋਈ ਉਪਲਬਧ ਡੇਟਾ ਨਹੀਂ ਮਿਲਿਆ', 'Nu s-au găsit date disponibile', 'မျှမတွေ့မရရှိနိုင်ပါဒေတာ', 'Ko si data to wa ti o wa', 'Babu samin bayanai da aka samo'),
(17, 'confirm_alert', 'Are you sure you want to delete this', 'আপনি কি ডেটা মুছে ফেলার ব্যাপারে নিশ্চিত?', 'Estás seguro que quieres eliminar esto', 'هل أنت متأكد أنك تريد حذف هذا', 'क्या आप वाकई इसे हटाना चाहते हैं', 'کیا آپ واقعی یہ حذف کرنا چاہتے ہیں', '你确定要删除这个吗', 'これを削除してもよろしいですか？', 'Tem certeza de que deseja excluir isso', 'Вы действительно хотите удалить это', 'vous êtes sûr de vouloir supprimer ce', '이 사진을 삭제 하시겠습니까?', 'Möchtest du das wirklich löschen?', 'Sei sicuro di voler cancellare questo', 'คุณแน่ใจหรือไม่ว่าต้องการลบข้อมูลนี้', 'Biztosan törölni szeretné', 'Weet je zeker dat je dit wilt verwijderen?', 'Esne certus vos volo ut delete is', 'Apa kamu yakin ingin menghapus ini', 'Bunu silmek istediğinizden emin misiniz', 'Είστε βέβαιοι ότι θέλετε να το διαγράψετε', 'آیا مطمئن هستید که می خواهید این را حذف کنید', 'Adakah anda pasti mahu memadam ini', 'మీరు దీన్ని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా', 'இதை நீ நிச்சயமாக நீக்க விரும்புகிறாயா?', 'શું તમે ખરેખર આને કાઢી નાખવા માંગો છો?', 'Czy na pewno chcesz to usunąć?', 'Ви впевнені, що хочете видалити це', 'ਕੀ ਤੁਸੀਂ ਨਿਸ਼ਚਤ ਰੂਪ ਤੋਂ ਇਸ ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?', 'Sigur doriți să ștergeți acest lucru', 'သင်ဤပယ်ဖျက်ဖို့လိုတာသေချာ', 'Ṣe o da ọ loju pe o fẹ paarẹ yii', 'Kuna tabbatar kana so ka share wannan'),
(18, 'insert_success', 'Data inserted successfully', 'ডেটা সফলভাবে ঢোকানো হয়েছে', 'Datos insertados con éxito', 'تم إدراج البيانات بنجاح', 'डेटा सफलतापूर्वक डाला गया', 'ڈیٹا کامیابی سے داخل ہوگئی ہے', '数据插入成功', 'データが正常に挿入された', 'Dados inseridos com sucesso', 'Данные успешно вставлены', 'Données insérées avec succès', '데이터가 성공적으로 삽입되었습니다.', 'Daten wurden erfolgreich eingefügt', 'Dati inseriti correttamente', 'แทรกข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen be vannak illesztve', 'Gegevens succesvol ingevoegd', 'Data bene insertas', 'Data berhasil dimasukkan', 'Veriler başarıyla eklendi', 'Τα δεδομένα έχουν εισαχθεί με επιτυχία', 'داده ها با موفقیت وارد شدند', 'Data dimasukkan dengan jayanya', 'డేటా విజయవంతంగా చొప్పించబడింది', 'தரவு வெற்றிகரமாக சேர்க்கப்பட்டது', 'ડેટા સફળતાપૂર્વક શામેલ કર્યો', 'Dane wstawione pomyślnie', 'Дані введені успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਪਾਇਆ ਗਿਆ', 'Datele introduse cu succes', 'အောင်မြင်စွာဖြည့်စွက်ဖို့ဒေတာ', 'Data ti a fi sii ni ifijišẹ', 'Bayanin da aka sanya nasara'),
(19, 'insert_failed', 'Data insert failed. Please try again ', 'ডেটা সন্নিবেশ ব্যর্থ। অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La inserción de datos falló. Inténtalo de nuevo', 'أخفقت عملية إدراج البيانات. حاول مرة اخرى', 'डेटा डालना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا داخل ناکام ہوگیا. دوبارہ کوشش کریں', '数据插入失败。 请再试一次', 'データの挿入に失敗しました。 もう一度お試しください', 'A inserção de dados falhou. Por favor, tente novamente', 'Ошибка ввода данных. Пожалуйста, попробуйте еще раз', 'Linsertion de données a échoué. Sil vous plaît essayez', '데이터 삽입에 실패했습니다. 다시 시도적으로 업데이트되었습니다.하십시오.', 'Daten einfügen fehlgeschlagen. Bitte versuche es erneut', 'Inserimento dati non riuscito. Per favore riprova', 'แทรกข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatbetöltés meghiúsult. Kérlek próbáld újra', 'Gegevensinvoer mislukt. Probeer het opnieuw', 'Data inserta defecit. Quaero, iterum conare', 'Penyisipan data gagal Silahkan coba lagi', 'Veri girişi başarısız oldu. Lütfen tekrar deneyin', 'Η εισαγωγή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'درج اطلاعات وارد نشد لطفا دوباره تلاش کنید', 'Masukkan data gagal. Sila cuba lagi', 'డేటా చొప్పించడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு செருக முடியவில்லை. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા શામેલ નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wstawić danych. Proszę spróbuj ponownie', 'Вставка даних не вдалося. Будь ласка спробуйте ще раз', 'ਡੇਟਾ ਡ੍ਰਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Introducerea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကိုထည့်သွင်းမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ', 'Asun faili ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Saka bayanai ya kasa. Da fatan a sake gwadawa'),
(20, 'update_success', 'Data updated successfully', 'ডেটা সফলভাবে আপডেট করা হয়েছে', 'Datos actualizados con éxito', 'تم تحديث البيانات بنجاح', 'डेटा सफलतापूर्वक अपडेट किया गया', 'ڈیٹا کامیابی سے اپ ڈیٹ کیا', '数据已成功更新', 'データが正常に更新された', 'Dados atualizados com sucesso', 'Обновлены данные', 'Data updated successfully', '데이터가 성공적으로 업데이트되었습니다..', 'Daten wurden erfolgreich aktualisiert', 'Dati aggiornati con successo', 'อัปเดตข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen frissültek', 'Gegevens zijn succesvol bijgewerkt', 'Updated notitia feliciter', 'Data berhasil diperbarui', 'Veri başarıyla güncellendiVeri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Τα δεδομένα ενημερώθηκαν με επιτυχία', 'داده ها با موفقیت به روز شد', 'Data dikemas kini berjaya', 'డేటా విజయవంతంగా నవీకరించబడింది', 'தரவு வெற்றிகரமாக புதுப்பிக்கப்பட்டது', 'ડેટા સફળતાપૂર્વક અપડેટ થયો છે', 'Data zaktualizowana pomyślnie', 'Дані оновлено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਅਪਡੇਟ ਕੀਤਾ ਗਿਆ', 'Datele au fost actualizate cu succes', 'ဒေတာကိုအောင်မြင်စွာ updated', 'Ti ṣe imudojuiwọn imudojuiwọn ni ifijišẹ', 'An sabunta bayanan da aka sabunta'),
(21, 'update_failed', 'Data update failed. Please try again', 'তথ্য আপডেট ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La actualización de datos falló. Inténtalo de nuevo', 'فشل تحديث البيانات. حاول مرة اخرى', 'डेटा अपडेट विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا اپ ڈیٹ ناکام ہوگیا. دوبارہ کوشش کریں', '数据更新失败。 请再试一次', 'データの更新に失敗しました。 もう一度お試しください', 'A atualização de dados falhou. Por favor, tente novamente', 'Ошибка обновления данных. Пожалуйста, попробуйте еще раз', 'La mise à jour des données a Veuillez réessayer', '데이터 업데이트에 실패했습니다. 다시 시도하십시오.', 'Datenaktualisierung fehlgeschlagen. Bitte versuche es erneut', 'Aggiornamento dati fallito. Per favore riprova', 'การอัปเดตข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatfrissítés nem sikerült. Kérlek próbáld újra', 'Gegevensupdate mislukt. Probeer het opnieuw', 'Data update defecit. Quaero, iterum conare', 'Pembaruan data gagal Silahkan coba lagi', 'Veri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Η ενημέρωση δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'به روز رسانی داده خراب شد لطفا دوباره تلاش کنید', 'Kemas kini data gagal. Sila cuba lagi', 'డేటా నవీకరణ విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு புதுப்பிப்பு தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા અપડેટ નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Aktualizacja danych nie powiodła się. Proszę spróbuj ponownie', 'Не вдалося оновити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਅਪਡੇਟ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Actualizarea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကို update ကိုမအောင်မြင်ခဲ့ပေ။ ထပ်ကြိုးစားပါ', 'Imudara data ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Rashin bayanin bayanai ya kasa. Da fatan a sake gwadawa'),
(22, 'delete_success', 'Data deleted successully', 'ডেটা সফলভাবে মোছা হয়েছে', 'Datos borrados con éxito', 'تم حذف البيانات بنجاح', 'डाटा सफलतापूर्वक हटा दिया गया', 'ڈیٹا کامیابی سے خارج ہوگئی ہے', '数据删除成功', 'データが正常に削除された', 'Dados eliminados com sucesso', 'Удалены данные', 'DonnéDonnées supprimées avec succès', '데이터가 성공적으로 삭제되었습니다.', 'Daten wurden erfolgreich gelöscht', 'Dati cancellati con successo', 'ลบข้อมูลสำเร็จแล้ว', 'Az adatok sikeresen törölve', 'Gegevens zijn met succes verwijderd', 'Data delevit feliciter', 'Data berhasil dihapus', 'Veri başarıyla silindi', 'Τα δεδομένα διαγράφηκαν με επιτυχία', 'داده ها با موفقیت حذف شدند', 'Data berjaya dipadam', 'డేటా విజయవంతంగా తొలగించబడింది', 'தரவு வெற்றிகரமாக நீக்கப்பட்டது', 'ડેટા સફળતાપૂર્વક કાઢી નાખ્યો', 'Dane zostały pomyślnie usunięte', 'Дані видалено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਮਿਟਾ ਦਿੱਤਾ ਗਿਆ', 'Datele au fost șterse cu succes', 'အောင်မြင်စွာဖျက်ပစ်ဒေတာများ', 'Paarẹ ti paarẹ ni ifijišẹ', 'Bayanan da aka share nasarar'),
(23, 'delete_failed', 'Data delete failed. Please try again', 'ডেটা মুছে ফেলতে ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La eliminación de datos falló. Inténtalo de nuevo', 'أخفق حذف البيانات. حاول مرة اخرى', 'डेटा को विफल करना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا ناکام ہوگیا. دوبارہ کوشش کریں', '数据删除失败。 请再试一次', 'データの削除に失敗しました。 もう一度お試しください', 'A exclusão de dados falhou. Por favor, tente novamente', 'Ошибка удаления данных. Пожалуйста, попробуйте еще раз', 'La suppression des données a échoué. Veuillez réessayer', '데이터를 삭제하지 못했습니다. 다시 시도하십시오.', 'Daten löschen fehlgeschlagen. Bitte versuche es erneut', 'Cancellazione dei dati fallita. Per favore riprova', 'การลบข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adat törlése nem sikerült. Kérlek próbáld újra', 'Gegevens verwijderen mislukt. Probeer het opnieuw', 'Delete notitia defuit. Quaero, iterum conare', 'Penghapusan data gagal Silahkan coba lagi', 'Veri silinemedi. Lütfen tekrar deneyin', 'Η διαγραφή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'داده حذف شد لطفا دوباره تلاش کنید', 'Pemadaman data gagal. Sila cuba lagi', 'డేటా తొలగింపు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'தரவு நீக்கம் தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'ડેટા કાઢી નાખવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Usuwanie danych nie powiodło się. Proszę spróbuj ponownie', 'Не вдалося видалити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਮਿਟਾਉਣਾ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Ștergerea datelor a eșuat. Vă rugăm să încercați din nou', 'ဒေတာကိုမအောင်မြင်ပါဖျက်ပစ်ပါမည်။ ထပ်ကြိုးစားပါ', 'Pipadanu data pa. Jọwọ gbiyanju lẹẹkansi', 'Kuskuren bayanai ya kasa. Da fatan a sake gwadawa'),
(24, 'sl_no', '#SL', 'ক্রমিক', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '# એસએલ', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL'),
(25, 'find', 'Find', 'খোঁজ করুন', 'Encontrar', 'تجد', 'खोज', 'مل', '找', '検索', 'Encontrar', 'найти', 'Trouver', '발견', 'Finden', 'Trova', 'หา', 'megtalálja', 'Vind', 'Find', 'Menemukan', 'bulmak', 'Εύρημα', 'پیدا کردن', 'Cari', 'కనుగొనండి', 'கண்டுபிடிக்க', 'શોધવા', 'Odnaleźć', 'Знайдіть', 'ਲੱਭੋ', 'Găsi', 'ရှာတွေ့', 'Wa', 'Nemo'),
(26, 'quick_link', 'Quick Link', 'সরাসরি লিঙ্ক', 'Enlace rápido', 'رابط سريع', 'त्वरित लिंक', 'فوری لنک', '快速链接', 'クイックリンク', 'Link rápido', 'Прямая ссылка', 'Lien rapide', '빠른 링크', 'Schneller Link', 'Collegamento veloce', 'ลิงก์ด่วน', 'Gyors link', 'Snelle link', 'Velox Link', 'Tautan Cepat', 'Hızlı link', 'Γρήγορη σύνδεση', 'اتصال سریع', 'Pautan Cepat', 'త్వరిత లింక్', 'விரைவு இணைப்பு', 'ક્વિક લિંક', 'Szybki link', 'Швидка посилання', 'ਤੁਰੰਤ ਲਿੰਕ', 'Legătură rapidă', 'quick Link ကို', 'Ọna asopọ kiakia', 'Quick Link'),
(27, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'डैशबोर्ड', 'ڈیش بورڈ', '仪表板', 'ダッシュボード', 'painel de controle', 'Панель приборов', 'tableau de bord', '데이터를 삭제하지 못했계기반', 'Instrumententafel', 'Cruscotto', 'แผงควบคุม', 'Irányítópult', 'Dashboard', 'ashboardday', 'Dasbor', 'gösterge paneli', 'Ταμπλό', 'داشبورد', 'Papan Pemuka', 'డాష్బోర్డ్', 'டாஷ்போர்டு', 'ડેશબોર્ડ', 'Deska rozdzielcza', 'Панель приладів', 'ਡੈਸ਼ਬੋਰਡ', 'Bord', 'dashboard ကို', 'Dasibodu', 'Dashboard'),
(28, 'list', 'List', 'তালিকা', 'Lista', 'قائمة', 'सूची', 'فہرست', '名单', 'リスト', 'Lista', 'Список', 'liste', '명부', 'Liste', 'Elenco', 'รายการ', 'Lista', 'Lijst', 'album', 'Daftar', 'Liste', 'Λίστα', 'فهرست', 'Senarai', 'జాబితా', 'பட்டியல்', 'યાદી', 'Lista', 'Перелік', 'ਸੂਚੀ', 'Listă', 'စာရင်း', 'Akojọ', 'Jerin'),
(29, 'setting', 'Setting', 'সেটিংস', 'Ajuste', 'ضبط', 'सेटिंग', 'سیٹنگ', '设置', '設定', 'Configuração', 'настройка', 'Sélection', '환경', 'Rahmen', 'Ambientazione', 'การตั้งค่า', 'Beállítás', 'omgeving', 'Occasum', 'pengaturan', 'Ayar', 'Σύνθεση', 'تنظیمات', 'Menetapkan', 'సెట్టింగు', 'அமைப்பை', 'સેટિંગ', 'Oprawa', 'Налаштування', 'ਸੈਟਿੰਗ', 'reglaj', 'setting ကို', 'Eto', 'Saitin'),
(30, 'general', 'General', 'সাধারণ', 'General', 'جنرال لواء', 'सामान्य', 'جنرل', '一般', '一般', 'Geral', 'Генеральная', 'général', '일반', 'Allgemeines', 'Generale', 'ทั่วไป', 'Tábornok', 'Algemeen', 'Generalis', 'Umum', 'Genel', 'Γενικός', 'عمومی', 'Ketua', 'జనరల్', 'பொது', 'જનરલ', 'Generał', 'Генерал', 'ਜਨਰਲ', 'General', 'ယေဘုယျ', 'Gbogbogbo', 'Janar'),
(31, 'payment', 'Payment', 'পেমেন্ট', 'Pago', 'دفع', 'भुगतान', 'ادائیگی', '付款', '支払い', 'Forma de pagamento', 'Оплата', 'Paiement', '지불', 'Zahlung', 'Pagamento', 'การชำระเงิน', 'Fizetés', 'Betaling', 'Payment', 'Pembayaran', 'Ödeme', 'Πληρωμή', 'پرداخت', 'Pembayaran', 'చెల్లింపు', 'கொடுப்பனவு', 'ચુકવણી', 'Zapłata', 'Оплата', 'ਭੁਗਤਾਨ', 'Plată', 'ငွေပေးချေမှုရမည့်', 'Isanwo', 'Biyan kuɗi'),
(32, 'theme', 'Theme', 'থিম', 'Tema', 'موضوع', 'विषय', 'خیالیہ', '主题', 'テーマ', 'Tema', 'тема', 'thème', '테마', 'Thema', 'Tema', 'กระทู้', 'Téma', 'Thema', 'theme', 'Tema', 'Tema', 'Θέμα', 'موضوع', 'Tema', 'థీమ్', 'தீம்', 'થીમ', 'Motyw', 'Тема', 'ਥੀਮ', 'Temă', 'အကွောငျး', 'Akori', 'Jigo'),
(33, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'भाषा', 'زبان', '语言', '言語', 'Língua', 'язык', 'La langue', '언어', 'Sprache', 'linguaggio', 'ภาษา', 'Nyelv', 'Taal', 'Lingua', 'Bahasa', 'Dil', 'Γλώσσα', 'زبان', 'Bahasa', 'భాషా', 'மொழி', 'ભાષા', 'Język', 'Мова', 'ਭਾਸ਼ਾ', 'Limba', 'ဘာသာစကား', 'Ede', 'Harshe'),
(34, 'administrator', 'Administrator', 'প্রশাসক', 'Administrador', 'مدير', 'प्रशासक', 'منتظم', '管理员', '管理者', 'Administrador', 'администратор', 'administrateur', '관리자', 'Administrator', 'Amministratore', 'ผู้บริหาร', 'Adminisztrátor', 'Beheerder', 'administrator', 'Administrator', 'yönetici', 'Διαχειριστής', 'مدیر', 'Pentadbir', 'నిర్వాహకుడు', 'நிர்வாகி', 'સંચાલક', 'Administrator', 'Адміністратор', 'ਪ੍ਰਬੰਧਕ', 'Administrator', 'အုပ်ချုပ်သူ', 'IT', 'Mai gudanarwa'),
(35, 'academic_year', 'Academic Year', 'শিক্ষাবর্ষ', 'Año académico', 'السنة الأكاديمية', 'शैक्षणिक वर्ष', 'تعلیمی سال', '学年', '学年', 'Ano acadêmico', 'Академический год', 'Année académique', '학년', 'Akademisches Jahr', 'Anno accademico', 'ปีการศึกษา', 'Tanév', 'Academiejaar', 'anno academic', 'Tahun akademik', 'Akademik yıl', 'Ακαδημαϊκό έτος', 'سال تحصیلی', 'Tahun akademik', 'విద్యా సంవత్సరం', 'கல்வி ஆண்டில்', 'શૈક્ષણીક વર્ષ', 'Rok akademicki', 'Навчальний рік', 'ਅਕਾਦਮਿਕ ਸਾਲ', 'An academic', 'စာသင်နှစ်', 'Akẹkọ Ọdún', 'Makarantar Kwalejin'),
(36, 'user', 'User', 'ব্যবহারকারী', 'Usuario', 'المستعمل', 'उपयोगकर्ता', 'صارف', '用户', 'ユーザー', 'Do utilizador', 'пользователь', 'Utilisateur', '사용자', 'Benutzer', 'Utente', 'ผู้ใช้งาน', 'használó', 'Gebruiker', 'User', 'Pengguna', 'kullanıcı', 'Χρήστης', 'کاربر', 'Pengguna', 'వాడుకరి', 'பயனர்', 'વપરાશકર્તા', 'Użytkownik', 'Користувач', 'ਯੂਜ਼ਰ', 'Utilizator', 'အသုံးပြုသူကို', 'Olumulo', 'Mai amfani'),
(37, 'role', 'Role', 'ভূমিকা', 'Papel', 'وظيفة', 'भूमिका', 'کردار', '角色', '役割', 'Função', 'Роль', 'Rôle', '역할', 'Rolle', 'Ruolo', 'บทบาท', 'Szerep', 'Rol', 'partes', 'Peran', 'rol', 'Ρόλος', 'نقش', 'Peranan', 'పాత్ర', 'பங்கு', 'ભૂમિકા', 'Rola', 'Роль', 'ਭੂਮਿਕਾ', 'Rol', 'အခန်းက္ပ', 'Ipa', 'Matsayi'),
(38, 'user_role', 'User Role', 'ব্যবহারকারীর ভূমিকা', 'Rol del usuario', 'دور المستخدم', 'उपयोगकर्ता भूमिका', 'صارف کردار', '用户角色', 'ユーザーロール', 'Papel do usuário', 'Роль пользователя', 'Rôle dutilisateur', '사용자 역할', 'Benutzer-Rolle', 'Ruolo utente', 'บทบาทผู้ใช้', 'Felhasználói szerepkör', 'Gebruikersrol', 'User Partes', 'Peran pengguna', 'Kullanıcı rolü', 'Ρόλος χρήστη', 'نقش کاربر', 'Peranan Pengguna', 'వాడుకరి పాత్ర', 'பயனர் பங்கு', 'વપરાશકર્તા ભૂમિકા', 'Rola użytkownika', 'Роль користувача', 'ਯੂਜ਼ਰ ਭੂਮਿਕਾ', 'Rolul utilizatorului', 'အသုံးပြုသူအခန်းက္ပ', 'Išẹ Olumulo', 'Mai amfani'),
(39, 'role_permission', 'Role Permission', 'ভূমিকা অনুমতি', 'Permiso de función', 'إذن الدور', 'भूमिका अनुमति', 'کردار کی اجازت', '角色权限', '役割の許可', 'Permissão de papel', 'Ролевое разрешение', 'Permission de rôle', '역할 권한', 'Rollenberechtigungen', 'Permesso di ruolo', 'การอนุญาตบทบาท', 'Szerepengedély', 'Roltoestemming', 'Licet munus', 'Perizinan Peran', 'Rol İzni', 'Άδεια ρόλου', 'نقش مجاز', 'Kebenaran Peranan', 'పాత్ర అనుమతి', 'பங்கு அனுமதி', 'ભૂમિકા પરવાનગી', 'Zezwolenie na role', 'Ролевий дозвіл', 'ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ', 'Permisiune pentru roluri', 'အခန်းက္ပခွင့်ပြုချက်', 'Igbese ipa', 'Yarjejeniyar aiki'),
(40, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট', 'Restablecer la contraseña', 'إعادة تعيين كلمة المرور', 'पासवर्ड रीसेट', 'پاس ورڈ ری سیٹ', '重设密码', 'パスワードを再設定する', 'Redefinir Senha', 'Сброс пароля', 'réinitialiser le mot de passe', '암호를 재설정', 'Passwort zurücksetzen', 'Resetta la password', 'รีเซ็ตรหัสผ่าน', 'Jelszó visszaállítása', 'Reset wachtwoord', 'Reset password', 'Reset Password', 'Şifreyi yenile', 'Επαναφέρετε τον κωδικό πρόσβασης', 'بازنشانی گذرواژه', 'Menetapkan semula kata laluan', 'రహస్యపదాన్ని మార్చుకోండి', 'கடவுச்சொல்லை மீட்டமைக்க', 'પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło', 'Скинути пароль', 'ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Reseteaza parola', 'လျှို့ဝှတ်နံပါတ်အားမူလအတိုင်းပြန်လုပ်သည်', 'Atunwo Ọrọigbaniwọle', 'Sake saita kalmar sirri'),
(41, 'reset_user_password', 'Reset User Password', 'ব্যবহারকারী পাসওয়ার্ড রিসেট', 'Restablecer contraseña de usuario', 'إعادة تعيين كلمة مرور المستخدم', 'उपयोगकर्ता पासवर्ड रीसेट करें', 'صارف کا پاس ورڈ ری سیٹ کریں', '重置用户密码', 'ユーザパスワードをリセットする', 'Redefinir Senha do Usuário', 'Сбросить пароль пользователя', 'Réinitialiser mot de passe', '사용자 암호 재설정', 'Benutzerpasswort zurücksetzen', 'Reimposta password utente', 'รีเซ็ตรหัสผ่านผู้ใช้', 'Felhasználói jelszó visszaállítása', 'Reset gebruikerswachtwoord', 'User Password Reset', 'Reset Password Pengguna', 'Kullanıcı Parolasını Sıfırla', 'Επαναφορά κωδικού χρήστη', 'تنظیم مجدد رمز عبور کاربر', 'Tetapkan semula Kata Laluan Pengguna', 'యూజర్ పాస్వర్డ్ను రీసెట్ చేయండి', 'பயனர் கடவுச்சொல்லை மீட்டமைக்கவும்', 'વપરાશકર્તા પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło użytkownika', 'Скинути пароль користувача', 'ਯੂਜ਼ਰ ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Resetați parola de utilizator', 'အသုံးပြုသူ Password ကို Reset', 'Atunto Ọrọ Olumulo Titun', 'Sake saitin Kalmar Mai amfani'),
(42, 'backup', 'Backup', 'ব্যাকআপ', 'Apoyo', 'دعم', 'बैकअप', 'بیک اپ', '备用', 'バックアップ', 'Cópia de segurança', 'Резервное копирование', 'Sauvegarde', '지원', 'Backup', 'di riserva', 'การสำรองข้อมูล', 'biztonsági mentés', 'backup', 'tergum', 'Backup', 'yedek', 'Αντιγράφων ασφαλείας', 'پشتیبان گیری', 'Sandaran', 'బ్యాకప్', 'காப்பு', 'બેકઅપ', 'Utworzyć kopię zapasową', 'Резервне копіювання', 'ਬੈਕਅਪ', 'Backup', 'Backup ကို', 'Afẹyinti', 'Ajiyayyen'),
(43, 'human_resource', 'Human Resource', 'মানব সম্পদ', 'Recursos humanos', 'الموارد البشرية', 'मानव संसाधन', 'انسانی وسائل', '人力资源', '人的資源', 'Recursos humanos', 'Человеческие ресурсы', 'Ressource humaine', '인적 자원', 'Personal', 'Risorse umane', 'ทรัพยากรบุคคล', 'Emberi erőforrás', 'Human Resource', 'Humanum Resource', 'Sumber daya manusia', 'İnsan kaynakları', 'Ανθρώπινο δυναμικό', 'منابع انسانی', 'Sumber Manusia', 'మానవ వనరుల', 'மனித வளம்', 'માનવ સંસાધન', 'Zasoby ludzkie', 'Людський ресурс', 'ਮਾਨਵ ਸੰਸਾਧਨ', 'Resurse umane', 'လူ့စွမ်းအားအရင်းအမြစ်', 'Eda eniyan', 'Human Resource'),
(44, 'designation', 'Designation', 'পদবি', 'Designacion', 'تعيين', 'पद', 'عہدہ', '指定', '指定', 'Designação', 'обозначение', 'La désignation', '지정', 'Bezeichnung', 'Designazione', 'การแต่งตั้ง', 'Kijelölés', 'Aanwijzing', 'designatio', 'Penunjukan', 'tayin', 'Ονομασία', 'تعیین', 'Jawatan', 'హోదా', 'பதவி', 'હોદ્દો', 'Przeznaczenie', 'Позначення', 'ਅਹੁਦਾ', 'Desemnare', 'သတ်မှတ်ရေး', 'Ipilẹṣẹ', 'Dama'),
(45, 'employee', 'Employee', 'কর্মচারী', 'Empleado', 'موظف', 'कर्मचारी', 'ملازم', '雇员', '従業員', 'Empregado', 'Наемный рабочий', 'Employé', '종업원', 'Mitarbeiter', 'Dipendente', 'ลูกจ้าง', 'Munkavállaló', 'Werknemer', 'Aliquam', 'Karyawan', 'işçi', 'Υπάλληλος', 'کارمند', 'Pekerja', 'ఉద్యోగి', 'பணியாளர்', 'કર્મચારી', 'Pracownik', 'Працівник', 'ਕਰਮਚਾਰੀ', 'Angajat', 'လုပ်သား', 'Abáni', 'Maaikaci'),
(46, 'teacher', 'Teacher', 'শিক্ষক', 'Profesor', 'مدرس', 'अध्यापक', 'استاد', '老师', '先生', 'Professor', 'учитель', 'Prof', '선생', 'Lehrer', 'Insegnante', 'ครู', 'Tanár', 'Leraar', 'magister', 'Guru', 'Öğretmen', 'Δάσκαλος', 'معلم', 'Guru', 'టీచర్', 'ஆசிரியர்', 'શિક્ષક', 'Nauczyciel', 'Вчитель', 'ਟੀਚਰ', 'Profesor', 'ဆရာမ', 'Olùkọ', 'Malam'),
(47, 'class', 'Class', 'শ্রেণী', 'Clase', 'صف دراسي', 'कक्षा', 'کلاس', '类', 'クラス', 'Classe', 'Класс', 'Classe', '수업', 'Klasse', 'Classe', 'ชั้น', 'Osztály', 'Klasse', 'genus', 'Kelas', 'Sınıf', 'Τάξη', 'کلاس', 'Kelas', 'క్లాస్', 'வர்க்கம்', 'વર્ગ', 'Klasa', 'Клас', 'ਕਲਾਸ', 'Clasă', 'အတန်းအစား', 'Kilasi', 'Class'),
(48, 'section', 'Section', 'শাখা', 'Sección', 'الجزء', 'अनुभाग', 'سیکشن', '部分', 'セクション', 'Seção', 'Раздел', 'Section', '섹션', 'Sektion', 'Sezione', 'มาตรา', 'Szakasz', 'Sectie', 'sectioni', 'Bagian', 'Bölüm', 'Ενότητα', 'بخش D', 'Seksyen', 'విభాగం', 'பிரிவு', 'વિભાગ', 'Sekcja', 'Розділ', 'ਅਨੁਭਾਗ', 'Secțiune', 'အပိုင်း', 'Abala', 'Sashi'),
(49, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'विषय', 'مضمون', '学科', '件名', 'Subject', 'Предмет', 'assujettir', '제목', 'Gegenstand', ' Soggetto', 'เรื่อง', 'Tantárgy', 'Onderwerpen', 'subject', 'Subyek', 'konu', 'Θέμα', 'موضوع', 'Subjek', 'విషయం', 'பொருள்', 'વિષય', 'Przedmiot', 'Тема', 'ਵਿਸ਼ਾ', 'Subiect', 'ဘာသာရပ်', 'Koko-ọrọ', 'Subject'),
(50, 'syllabus', 'Syllabus', 'পাঠ্যক্রম', 'Silaba', 'المنهج', 'पाठ्यक्रम', 'نصاب', '教学大纲', 'シラバス', 'Programa de Estudos', 'Учебный план', 'Programme', '강의 계획서', 'Lehrplan', 'Programma', 'หลักสูตร', 'Tanmenet', 'Syllabus', 'Syllabus', 'Silabus', 'Müfredat', 'Περίληψη', 'سرفصل دروس', 'Silibus', 'సిలబస్', 'பாடத்திட்டங்கள்', 'અભ્યાસક્રમ', 'Konspekt', 'Силабус', 'ਸਿਲੇਬਸ', 'Silabă', 'သင်ရိုးညွှန်းတမ်း', 'Syllabus', 'Syllabus'),
(51, 'routine', 'Routine', 'রূটিন', 'Rutina', 'نمط', 'सामान्य', 'معمول', '常规', 'ルーチン', 'Rotina', 'рутинный', 'Routine', '루틴', 'Routine', 'Routine', 'กิจวัตรประจำวัน', 'Rutin', 'Routine', 'exercitatione', 'Rutin', 'Rutin', 'Ρουτίνα', 'معمولی', 'Rutin', 'రొటీన్', 'வழக்கமான', 'નિયમિત', 'Rutyna', 'Звичайний', 'ਰੁਟੀਨ', 'Rutină', 'လုပ်ရိုးလုပ်စဉ်', 'Ilana', 'Gyara'),
(52, 'guardian', 'Guardian', 'অভিভাবক', 'guardián', 'وصي', 'अभिभावक', 'سرپرست', '监护人', 'ガーディアン', 'Guardião', 'блюститель', 'Gardien', '보호자', 'Wächter', 'Custode', 'ผู้ปกครอง', 'Gyám', 'Voogd', 'custos', 'Wali', 'Gardiyan', 'Κηδεμόνας', 'نگهبان', 'Guardian', 'సంరక్షకుడు', 'கார்டியன்', 'ગાર્ડિયન', 'Opiekun', 'Опікун', 'ਗਾਰਡੀਅਨ', 'paznic', 'ဂေါကလူကြီး', 'Oluṣọ', 'Guardian'),
(53, 'student', 'Student', 'ছাত্র', 'Estudiante', 'طالب علم', 'छात्र', 'طالب علم', '学生', '学生', 'Aluna', 'Студент', 'Étudiant', '학생', 'Schüler', 'Alunno', 'นักเรียน', 'Diák', 'Student', 'Discipulus', 'Mahasiswa', 'Öğrenci', 'Μαθητης σχολειου', 'دانشجو', 'Pelajar', 'విద్యార్థి', 'மாணவர்', 'વિદ્યાર્થી', 'Student', 'Студентка', 'ਵਿਦਿਆਰਥੀ', 'Student', 'ကြောငျးသား', 'Ọmọ-iwe', 'Student'),
(54, 'admit', 'Admit', 'ভর্তি', 'Admitir', 'يعترف', 'स्वीकार करना', 'تسلیم', '承认', '認める', 'Admitem', 'Признавать', 'Admettre', '들이다', 'Eingestehen', 'Ammettere', 'ยอมรับ', 'Beismerni', 'Toegeven', 'fateri', 'Mengakui', 'Kabul et', 'Ομολογώ', 'اقرار کردن', 'Mengaku', 'ఒప్పుకుంటే', 'ஒப்புக்கொள்ள', 'સ્વીકાર્યું', 'Przyznać', 'Приймати', 'ਸਵੀਕਾਰ ਕਰੋ', 'admite', 'ဖွောငျ့ဆို', 'Gba', 'Shiga'),
(55, 'attendance', 'Attendance', 'উপস্থিতি', 'Asistencia', 'الحضور', 'उपस्थिति', 'حاضری', '勤', '出席', 'Comparecimento', 'посещаемость', 'Présence', '출석', 'Teilnahme', 'partecipazione', 'การดูแลรักษา', 'Részvétel', 'opkomst', 'attendance', 'Kehadiran', 'katılım', 'Παρουσία', 'حضور', 'Kehadiran', 'హాజరు', 'வருகை', 'હાજરી', 'Frekwencja', 'Відвідуваність', 'ਹਾਜ਼ਰੀ', 'prezență', 'တက်ရောက်သူ', 'Wiwa', 'Ziyarci'),
(56, 'assignment', 'Assignment', 'এসাইনমেন্ট', 'Asignación', 'مهمة', 'असाइनमेंट', 'تفویض', '分配', '割り当て', 'Tarefa', 'присваивание', 'Affectation', '할당', 'Zuordnung', 'assegnazione', 'การมอบหมาย', 'Feladat', 'toewijzing', 'assignment', 'Tugas', 'atama', 'ΑΝΑΘΕΣΗ ΕΡΓΑΣΙΑΣ', 'وظیفه', 'tugasan', 'అసైన్మెంట్', 'வேலையை', 'સોંપણી', 'Zadanie', 'Назначення', 'ਅਸਾਈਨਮੈਂਟ', 'Misiune', 'တာဝန်ကျတဲ့နေရာ', 'Ifiranṣẹ', 'Matsayi'),
(57, 'submission', 'Submission', 'সাব্মিশন', 'Sumisión', 'تسليم', 'प्रस्तुत करने', 'جمع کرانے', '服从', '提出', 'Submissão', 'представление', 'Soumission', '제출', 'Einreichung', 'Sottomissione', 'ส่ง', 'Benyújtás', 'Voorlegging', 'submission', 'pengajuan', 'boyun eğme', 'Υποβολή', 'ارسال', 'Penyerahan', 'సమర్పణ', 'சமர்ப்பிக்கும்', 'રજૂઆત', 'Uległość', 'Подання', 'ਸਬਮਿਸ਼ਨ', 'supunere', 'နားထောင်ခြင်း', 'Iwawe', 'Shiga'),
(58, 'exam', 'Exam', 'পরীক্ষা', 'Examen', 'امتحان', 'परीक्षा', 'امتحان', '考试', '試験', 'Exame', 'Экзамен', 'Examen', '시험', 'Prüfung', 'Esame', 'การสอบ', 'Vizsga', 'tentamen', 'nito', 'Ujian', 'sınav', 'Εξέταση', 'امتحان', 'Peperiksaan', 'పరీక్షా', 'தேர்வு', 'પરીક્ષા', 'Egzamin', 'Іспит', 'ਪ੍ਰੀਖਿਆ', 'Examen', 'စာမေးပွဲ', 'Idanwo', 'Binciken'),
(59, 'exam_grade', 'Exam Grade', 'পরীক্ষার গ্রেড', 'Examen de grado', 'امتحان الصف', 'परीक्षा ग्रेड', 'امتحان گریڈ', '考试成绩', '試験グレード', 'Nota da prova', 'Экзамен', 'Grade dexamen', '시험 성적', 'Prüfungsnote', 'Voto desame', 'ระดับการสอบ', 'Vizsga fokozat', 'Examencijfer', 'Romani nito', 'Kelas ujian', 'Sınav Notu', 'Βαθμό εξετάσεων', 'درجه آزمون', 'Gred Peperiksaan', 'పరీక్ష గ్రేడ్', 'தேர்வு தரம்', 'પરીક્ષા ગ્રેડ', 'Stopień egzaminu', 'Ступінь іспиту', 'ਐਜੂਕੇਸ਼ਨ ਗ੍ਰੇਡ', 'Gradul de examen', 'စာမေးပွဲအဆင့်', 'Ayẹwo Ipele', 'Binciken Nazari'),
(60, 'exam_term', 'Exam Term', 'পরীক্ষা টার্ম', 'Plazo del examen', 'مدة الامتحان', 'परीक्षा की अवधि', 'امتحان کی مدت', '考试期限', '試験期間', 'Termo do Exame', 'Срок действия экзамена', 'Terme dexamen', '시험 기간', 'Prüfungsdauer', 'Termine desame', 'เงื่อนไขการสอบ', 'Vizsgaidőszak', 'Examen termijn', 'Term nito', 'Ujian Term', 'Sınav Terimi', 'Όρος Εξέτασης', 'شرایط آزمون', 'Tempoh Peperiksaan', 'పరీక్షా టర్మ్', 'தேர்வு கால', 'પરીક્ષાની મુદત', 'Okres egzaminacyjny', 'Термін екзамену', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ', 'Termen de examinare', 'စာမေးပွဲ Term', 'Ayewo Aago', 'Tambaya'),
(61, 'schedule', 'Schedule', 'সময়সূচী', 'Programar', 'جدول', 'अनुसूची', 'شیڈول', '时间表', 'スケジュール', 'Cronograma', 'График', 'Programme', '시간표', 'Zeitplan', 'Programma', 'ตารางเวลา', 'Menetrend', 'Planning', 'schedule', 'Susunan acara', 'program', 'Πρόγραμμα', 'برنامه', 'Jadual', 'షెడ్యూల్', 'அட்டவணை', 'સૂચિ', 'Harmonogram', 'Розклад', 'ਸਮਾਸੂਚੀ, ਕਾਰਜ - ਕ੍ਰਮ', 'Programa', 'ဇယား', 'Iṣeto', 'Jadawalin'),
(62, 'suggestion', 'Suggestion', 'সাজেশন', 'Sugerencia', 'اقتراح', 'सुझाव', 'مشورہ', '建议', '提案', 'Sugestão', 'Предложение', 'Suggestion', '암시', 'Vorschlag', 'Suggerimento', 'ข้อเสนอแนะ', 'Javaslat', 'Suggestie', 'suggestion', 'Saran', 'Öneri', 'Πρόταση', 'پیشنهادی', 'Cadangan', 'సూచన', 'பரிந்துரை', 'સૂચન', 'Sugestia', 'Пропозиція', 'ਸੁਝਾਅ', 'Sugestie', 'အကြံပေးချက်', 'Abajade', 'Shawarwarin'),
(63, 'exam_mark', 'Exam Mark', 'পরীক্ষা মার্ক', 'Marca de examen', 'علامة الامتحان', 'परीक्षा चिन्ह', 'امتحان مارک', '考试标志', '試験のマーク', 'Marca de exame', 'Экзамен Mark', 'Marque dexamen', '시험 마크', 'Prüfzeichen', 'Segno dellesame', 'เครื่องหมายการสอบ', 'Vizsga Mark', 'Examenmarkering', 'Mark nito', 'Tanda ujian', 'Sınav işareti', 'Εξετάσεων Εξετάσεων', 'علامت امتحان', 'Ujian Mark', 'పరీక్ష మార్క్', 'தேர்வு மார்க்', 'પરીક્ષા માર્ક', 'Znak egzaminu', 'Екзаменаційний знак', 'ਐਜੂਕੇਸ਼ਨ ਮਾਰਕ', 'Exam Mark', 'စာမေးပွဲမာကု', 'Aami ayẹwo', 'Alamar Duba'),
(64, 'mark_sheet', 'Mark Sheet', 'নাম্বার শিট', 'Hoja de marca', 'علامة ورقة', 'अंक तालिका', 'مارک شیٹ', '标记表', 'マークシート', 'Marca Folha', 'Mark Sheet', 'Feuille de marque', '마크 시트', 'Markierungsblatt', 'Libretto universitario', 'ทำเครื่องหมายแผ่นงาน', 'Mark Sheet', 'Mark Sheet', 'Mark Sheet', 'Lembar penilaian', 'Mark Levha', 'Φυλλάδιο απαντήσεων', 'برگه مارک', 'Mark Sheet', 'గణాంకాల పట్టి', 'மதிப்பீட்டு தாள்', 'માર્ક શીટ', 'Arkusz ocen', 'Марк Лист', 'ਮਾਰਕ ਸ਼ੀਟ', 'Marcați foaia', 'မာကုစာရွက်', 'Samisi iwe', 'Mark Sheet'),
(65, 'exam_final_result', 'Exam Final Result', 'পরীক্ষার ফাইনাল ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان کے حتمی نتیجہ', '考试最终结果', '試験最終結果', 'Resultado Final do Exame', 'Экзамен Окончательный результат', 'Résultat final de lexamen', '시험 최종 결과', 'Abschluss der Prüfung', 'Esame Risultato finale', 'ผลสอบปลายภาค', 'Vizsga végeredmény', 'Examen Eindresultaat', 'Nito captorum eventus superae', 'Hasil Ujian Akhir Ujian', 'Sınav Sonucu', 'Τελικό αποτέλεσμα εξέτασης', 'نتیجه نهایی آزمون', 'Keputusan Akhir Peperiksaan', 'పరీక్ష ఫలితం', 'தேர்வு இறுதி முடிவு', 'પરીક્ષા અંતિમ પરિણામ', 'Egzamin Wynik końcowy', 'Останній результат іспиту', 'ਪ੍ਰੀਖਿਆ ਅੰਤਿਮ ਨਤੀਜੇ', 'Examen Rezultat final', 'စာမေးပွဲနောက်ဆုံးရလဒ်', 'Ipari ipari ikẹhin', 'Binciken Ƙarshe na Ƙarshe'),
(66, 'result', 'Result', 'পরীক্ষার ফলাফল', 'Resultado', 'نتيجة', 'परिणाम', 'نتیجہ', '结果', '結果', 'Resultado', 'результат', 'Résultat', '결과', 'Ergebnis', 'Risultato', 'ผล', 'Eredmény', 'Resultaat', 'exitum', 'Hasil', 'Sonuç', 'Αποτέλεσμα', 'نتیجه', 'Keputusan', 'ఫలితం', 'விளைவாக', 'પરિણામ', 'Wynik', 'Результат', 'ਨਤੀਜਾ', 'Rezultat', 'ရလဒ်', 'Esi', 'Sakamako'),
(67, 'send', 'Send', 'প্রেরণ', 'Enviar', 'إرسال', 'भेजना', 'بھیجیں', '发送', '送信', 'Enviar', 'послать', 'Envoyer', '보내다', 'Senden', 'Inviare', 'ส่ง', 'Elküld', 'Sturen', 'Mitte', 'Kirim', 'göndermek', 'Στείλετε', 'ارسال', 'Hantar', 'పంపండి', 'அனுப்பு', 'મોકલો', 'Wysłać', 'Відправити', 'ਭੇਜੋ', 'Trimite', 'ပေးပို့', 'Firanṣẹ', 'Aika'),
(68, 'mark_send_by_sms', 'Mark send by SMS', 'মার্ক পাঠান এসএমএস দিয়ে', 'Marca enviar por SMS', 'علامة إرسال عن طريق الرسائل القصيرة', 'एसएमएस द्वारा भेजें भेजें', 'ایس ایم ایس کے ذریعہ بھیجیں', '标记通过短信发送', 'SMSでマークする', 'Marcar enviar por SMS', 'Отметить отправку по SMS', 'Mark envoyer par SMS', 'SMS로 보내기 표시', 'Markiere per SMS', 'Mark invia tramite SMS', 'ทำเครื่องหมายว่าส่งทาง SMS', 'Jelölje be SMS-ben', 'Markeer per sms', 'Mark a mittere SMS', 'Tandai kirim melalui SMS', 'SMS ile gönderiyi işaretle', 'Σημειώστε την αποστολή μέσω SMS', 'علامت گذاری به عنوان خوانده شده توسط SMS', 'Tandakan hantar melalui SMS', 'SMS ద్వారా మార్క్ పంపండి', 'SMS மூலம் அனுப்பவும்', 'એસએમએસ દ્વારા મોકલો માર્ક કરો', 'Oznacz, wyślij przez SMS', 'Марк відправити SMS', 'ਐਸਐਮਐਸ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcare trimite prin SMS', 'မာကုကို SMS ဖွငျ့ပေးပို့', 'Samisi firanṣẹ nipasẹ SMS', 'Alama aika ta SMS'),
(69, 'mark_send_by_email', 'Mark send by Email', 'মার্ক পাঠান ইমেইল দিয়ে', 'Marcar enviar por correo electrónico', 'علامة إرسال عن طريق البريد الإلكتروني', 'ईमेल द्वारा भेजें मार्क', 'ایس ایم ایس کے ذریعہ بھیجیں', '用电子邮件标记发送', '電子メールで送信する', 'Marcar enviar por e-mail', 'Марк отправить по электронной почте', 'Mark envoyer par Email', '전자 메일로 보내기 표시', 'Markiere per Email', 'Mark invia tramite e-mail', 'มาร์คส่งทางอีเมล', 'A feliratkozás e-mailben történik', 'Markeer per e-mail', 'Email a Mark mittere', 'Tandai kirim melalui Email', 'E-postayla gönderi işaretle', 'Σημειώστε στείλτε με Email', 'علامت گذاری به عنوان ارسال از طریق ایمیل', 'Tandakan hantar melalui E-mel', 'ఇమెయిల్ ద్వారా మార్క్ పంపండి', 'மின்னஞ்சல் மூலம் அனுப்பவும்', 'ઇમેઇલ દ્વારા મોકલો માર્ક કરો', 'Zaznacz Wyślij przez e-mail', 'Позначити відправити по електронній пошті', 'ਈਮੇਲ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcați trimiteți prin e-mail', 'မာကုအီးမေးလ်ပေးပို့', 'Samisi firanṣẹ nipasẹ Imeeli', 'Alama aika ta Imel'),
(70, 'promotion', 'Promotion', 'প্রমোশন', 'Promoción', 'ترقية وظيفية', 'पदोन्नति', 'فروغ', '提升', 'プロモーション', 'Promoção', 'Продвижение', 'Promotion', '승진', 'Beförderung', 'Promozione', 'การส่งเสริม', 'promóció', 'Bevordering', 'promotio', 'Promosi', 'tanıtım', 'Προβολή', 'ترفیع', 'Promosi', 'ప్రమోషన్', 'பதவி உயர்வு', 'પ્રોત્સાહન', 'Awans', 'Просування', 'ਪ੍ਰੋਮੋਸ਼ਨ', 'Promovare', 'ရာထူးတိုးမြှင့်ပေးခြင်း', 'Igbega', 'Shawarwarin'),
(71, 'library', 'Library', 'গ্রন্থাগার', 'Biblioteca', 'مكتبة', 'पुस्तकालय', 'لائبریری', '图书馆', 'としょうかん', 'Biblioteca', 'Библиотека', 'Bibliothèque', '도서관', 'Bibliothek', 'Biblioteca', 'ห้องสมุด', 'Könyvtár', 'Bibliotheek', 'Bibliotheca', 'Perpustakaan', 'Kütüphane', 'Βιβλιοθήκη', 'کتابخانه', 'Perpustakaan', 'లైబ్రరీ', 'நூலகம்', 'પુસ્તકાલય', 'Biblioteka', 'Бібліотека', 'ਲਾਇਬ੍ਰੇਰੀ', 'Bibliotecă', 'စာကြည့်တိုက်', 'Iwadi', 'Library'),
(72, 'book', 'Book', 'বই', 'Libro', 'كتاب', 'किताब', 'کتاب', '书', '本', 'Livro', 'Книга', 'Livre', '도서', 'Buch', 'Libro', 'หนังสือ', 'Könyv', 'Boek', 'liber', 'Book', 'Kitap', 'Βιβλίο', 'کتاب', 'Buku', 'పుస్తకం', 'புத்தக', 'પુસ્તક', 'Książka', 'Книга', 'ਬੁੱਕ', 'Carte', 'စာအုပ်', 'Iwe', 'Littafin'),
(73, 'member', 'Member', 'সদস্য', 'Miembro', 'عضو', 'सदस्य', 'رکن', '会员', 'メンバー', 'Membro', 'член', 'Membre', '회원', 'Mitglied', 'Membro', 'สมาชิก', 'Tag', 'Lid', 'socius', 'Anggota', 'üye', 'Μέλος', 'عضو', 'Ahli', 'సభ్యుడు', 'உறுப்பினர்', 'સભ્ય', 'Członek', 'Член', 'ਸਦੱਸ', 'Membru', 'အဖှဲ့ဝငျ', 'Ẹgbẹ', 'Memba'),
(74, 'issue_and_return', 'Issue & Return', 'ইস্যু এবং রিটার্ন', 'Emisión y devolución', 'الإصدار والعودة', 'अंक और वापसी', 'مسئلہ اور واپسی', '问题和回报', '問題とリターン', 'Problema e retorno', 'Проблема и возврат', 'Emission et retour', '이슈와 리턴', 'Problem und Rückgabe', 'Problema e ritorno', 'การออกและการคืนสินค้า', 'Kiadás és visszatérés', 'Probleem en terugkeer', 'Et exitus Redi', 'Isu dan Kembali', 'Sayı ve İade', 'Έκδοση και επιστροφή', 'مسئله و بازگشت', 'Isu dan Pulangan', 'ఇష్యూ మరియు రిటర్న్', 'வெளியீடு மற்றும் திரும்ப', 'ઇશ્યૂ અને રીટર્ન', 'Wydanie i zwrot', 'Проблема та повернення', 'ਇਸ਼ੂ ਅਤੇ ਵਾਪਸੀ', 'Eliberare și returnare', 'ပြဿနာများနှင့်ပြန်သွား', 'Oro ati Pada', 'Isar da Komawa'),
(75, 'issue', 'Issue', 'ইস্যু', 'Emisión y devolución...', 'القضية', 'मुद्दा', 'مسئلہ', '问题', '問題', 'Questão', 'вопрос', 'Problème', '발행물', 'Problem', 'Problema', 'ปัญหา', 'Probléma', 'Kwestie', 'exitus', 'Isu', 'Konu', 'Θέμα', 'موضوع', 'Isu', 'సమస్య', 'பிரச்சினை', 'મુદ્દો', 'Kwestia', 'Проблема', 'ਮੁੱਦੇ', 'Problema', 'ထုတ်ပြန်သည်', 'Oro naa', 'Matsalar'),
(76, 'return', 'Return', 'রিটার্ন করা হয়েছে', 'Regreso', 'إرجاع', 'वापसी', 'واپس لو', '返回', '戻る', 'Retorna', 'Вернуть', 'Revenir', '반환', 'Rückkehr', 'Ritorno', 'กลับ', 'Visszatérés', 'terugkeer', 'Redi', 'Kembali', 'Dönüş', 'ΕΠΙΣΤΡΟΦΗ', 'برگشت', 'Kembali', 'రిటర్న్', 'திரும்ப', 'પાછા આવો', 'Powrót', 'Повернення', 'ਵਾਪਸੀ', 'Întoarcere', 'ပြန်လာ', 'Pada', 'Komawa'),
(77, 'issue_date', 'Issue Date', 'ইস্যু তারিখ', 'Fecha de asunto', 'تاريخ الاصدار', 'जारी करने की तिथि', 'تاریخ اجراء', '发行日期', '発行日', 'Data de emissão', 'Дата выпуска', 'Date démission', '발행일', 'Ausgabedatum', 'Data di rilascio', 'วันที่ออก', 'Kiadás dátuma', 'Datum van publicatie', 'exitus Date', 'Tanggal pembuatan', 'Veriliş tarihi', 'Ημερομηνία έκδοσης', 'تاریخ انتشار', 'Tarikh Keluaran', 'జారి చేయు తేది', 'வெளியீட்டு தேதி', 'અંક તારીખ', 'Data wydania', 'Дата випуску', 'ਜਾਰੀ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data emiterii', 'ထုတ်ပြန်ရက်စွဲ', 'Ọjọ itẹjade', 'Isowar ranar'),
(78, 'due_date', 'Due Date', 'নির্দিষ্ট তারিখ', 'Fecha de vencimiento', 'تاريخ الاستحقاق', 'नियत तारीख', 'اخری تاریخ', '截止日期', '期日', 'Data de Vencimento', 'Срок', 'Date déchéance', '마감일', 'Geburtstermin', 'Scadenza', 'Due Date', 'Esedékesség', 'Opleveringsdatum', 'ob Date', 'Batas tanggal terakhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ تحویل', 'Tarikh Gagal', 'గడువు తేది', 'தேதி தேதி', 'નિયત તારીખ', 'Termin płatności', 'Термін сплати', 'ਅਦਾਇਗੀ ਤਾਰੀਖ', 'Data scadentă', 'နောက်ဆုံးရက်', 'Asiko to ba to', 'Kwanan wata'),
(79, 'return_date', 'Return Date', 'রিটার্ন তারিখ', 'Fecha de regreso', 'تاريخ العودة', 'वापसी की तिथि', 'واپسی کی تاریخ', '归期', '返却日', 'Data de retorno', 'Дата возврата', 'Date de retour', '반환 기일', 'Rückflugdatum', 'Data di ritorno', 'วันที่กลับ', 'Visszatérítési dátum', 'Retourdatum', 'Redi Date', 'Tanggal pengembalian', 'Dönüş tarihi', 'Ημερομηνία επιστροφής', 'تاریخ بازگشت', 'Tarikh Pulang', 'తిరిగి వచ్చు తేదీ', 'திரும்ப தேதி', 'રીટર્ન તારીખ', 'Data powrotu', 'Дата повернення', 'ਵਾਪਸੀ ਦੀ ਤਾਰੀਖ', 'Data retur', 'သို့ပြန်သွားသည်နေ့စွဲ', 'Ọjọ pada', 'Ranar Koma'),
(80, 'new_issue', 'New Issue', 'নতুন ইস্যু', 'Nueva edición', 'مشكلة جديدة', 'नया मुद्दा', 'نیا مسئلہ', '新问题', '新しい問題', 'Novo problema', 'Новый выпуск', 'Nouveau numéro', '새로운 문제', 'Neues Problem', 'Nuovo problema', 'ฉบับใหม่', 'Új probléma', 'Nieuw probleem', 'New issue', 'Isu Baru', 'Yeni baskı', 'ΝΕΟ ΘΕΜΑ', 'مسئله جدید', 'Isu Baru', 'కొత్త సంచిక', 'புதிய வெளியீடு', 'નવું અંક', 'Nowy problem', 'Новий випуск', 'ਨਵਾਂ ਮਸਲਾ', 'Problemă nouă', 'နယူး Issue', 'Oro tuntun', 'Sabon Tambaya'),
(81, 'transport', 'Transport', 'পরিবহন', 'Transporte', 'المواصلات', 'ट्रांसपोर्ट', 'نقل و حمل', '运输', '輸送', 'Transporte', 'Транспорт', 'Transport', '수송', 'Transport', 'Trasporto', 'ขนส่ง', 'Szállítás', 'Vervoer', 'onerariis', 'Mengangkut', 'taşıma', 'Μεταφορά', 'حمل و نقل', 'Pengangkutan', 'రవాణా', 'போக்குவரத்து', 'પરિવહન', 'Transport', 'Транспорт', 'ਟ੍ਰਾਂਸਪੋਰਟ', 'Transport', 'တင်ဆောင်', 'Ọkọ', 'Mota'),
(82, 'vehicle', 'Vehicle', 'গাড়ী', 'Transporte...', 'مركبة', 'वाहन', 'گاڑی', '车辆', '車両', 'Veículo', 'Средство передвижения', 'Véhicule', '차량', 'Fahrzeug', 'Veicolo', 'พาหนะ', 'Jármű', 'Voertuig', 'vehiculum', 'Kendaraan', 'araç', 'Οχημα', 'وسیله نقلیه', 'Kenderaan', 'వాహనం', 'வாகன', 'વાહન', 'Pojazd', 'Автомобіль', 'ਵਾਹਨ', 'Vehicul', 'ယာဉ်', 'Ọkọ', 'Mota'),
(83, 'transport_route', 'Transport Route', 'পরিবহন রাস্তা', 'Ruta de transporte', 'طريق النقل', 'परिवहन मार्ग', 'ٹرانسپورٹ کا راستہ', '运输路线', '輸送ルート', 'Rota dos transportes', 'Транспортный маршрут', 'Route de transport', '운송 경로', 'Transportweg', 'Itinerario di trasporto', 'เส้นทางคมนาคม', 'Szállítási útvonal', 'Transportroute', 'Iter itineris onerariam', 'Rute transportasi', 'Ulaşım Güzergahı', 'Διαδρομή μεταφοράς', 'مسیر حمل و نقل', 'Laluan Pengangkutan', 'రవాణా మార్గం', 'போக்குவரத்து பாதை', 'પરિવહન માર્ગ', 'Szlak transportowy', 'Транспортний маршрут', 'ਟ੍ਰਾਂਸਪੋਰਟ ਰੂਟ', 'Traseul de transport', 'ပို့ဆောင်ရေးလမ်းကြောင်း', 'Ọna itọsọna', 'Hanyar sufuri'),
(84, 'hostel', 'Hostel', 'ছাত্রাবাস', 'Hostal', 'نزل', 'छात्रावास', 'ہاسٹل', '宿舍', 'ホステル', 'Hostel', 'Хостел', 'Hôtel', '호스텔', 'Herberge', 'Ostello', 'ที่พัก', 'Diákszálló', 'Herberg', 'Hostel', 'Asrama', 'Pansiyon', 'Ξενοδοχείο', 'خوابگاه', 'Asrama', 'వసతిగృహం', 'விடுதி', 'છાત્રાલય', 'Schronisko', 'Хостел', 'ਹੋਸਟਲ', 'Hostel', 'ဘော်ဒါဆောင်', 'Agbegbe', 'Dakunan kwanan dalibai'),
(85, 'room', 'Room', 'কক্ষ', 'Habitación', 'مجال', 'कक्ष', 'کمرہ', '房间', 'ルーム', 'Quarto', 'Комната', 'Chambre', '방', 'Zimmer', 'Camera', 'ห้อง', 'Szoba', 'Kamer', 'locus', 'Kamar', 'oda', 'Δωμάτιο', 'اتاق', 'Bilik', 'గది', 'அறை', 'રૂમ', 'Pokój', 'Номер', 'ਕਮਰਾ', 'Cameră', 'အခန်း', 'Yara', 'Room'),
(86, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'సందేశం', 'செய்தி', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'မက်ဆေ့ခ်ျကို', 'Ifiranṣẹ', 'Saƙo'),
(87, 'mail_and_sms', 'Mail & SMS', 'ইমেইল ও এসএমএস', 'Correo y SMS', 'البريد والرسائل القصيرة', 'मेल और एसएमएस', 'میل اور ایس ایم ایس', '邮件和短信', 'メールとSMS', 'Correio e SMS', 'Почта и SMS', 'Mail et SMS', '메일 및 SMS', 'Mail & SMS', 'Mail e SMS', 'อีเมลและ SMS', 'Mail & SMS', 'Mail & SMS', 'Mail SMS &', 'Mail & SMS', 'Posta ve SMS', 'Mail και SMS', 'ایمیل و اس ام اس', 'Mail & SMS', 'మెయిల్ & SMS', 'அஞ்சல் & SMS', 'મેઇલ અને એસએમએસ', 'Poczta i SMS', 'Пошта та SMS', 'ਮੇਲ ਅਤੇ ਐਸਐਮਐਸ', 'Mail și SMS', 'မေးလ် & SMS ကို', 'Mail & SMS', 'Mail & SMS'),
(88, 'email', 'Email', 'ইমেইল', 'Email', 'البريد الإلكتروني', 'ईमेल', 'ای میل', '电子邮件', 'Eメール', 'O email', 'Эл. адрес', 'Email', '이메일', 'Email', 'E-mail', 'อีเมล์', 'Email', 'E-mail', 'Email', 'E-mail', 'E-posta', 'ΗΛΕΚΤΡΟΝΙΚΗ ΔΙΕΥΘΥΝΣΗ', 'پست الکترونیک', 'E-mel', 'ఇమెయిల్', 'மின்னஞ்சல்', 'ઇમેઇલ', 'E-mail', 'Електронна пошта', 'ਈ - ਮੇਲ', 'E-mail', 'အီးမေးလ်ပို့ရန်', 'Imeeli', 'Imel'),
(89, 'sms', 'SMS', 'এসএমএস', 'SMS', 'رسالة قصيرة', 'एसएमएस', 'پیغام', '短信', 'SMS', 'SMS', 'смс', 'SMS', 'SMS', 'SMS', 'sms', 'ข้อความ', 'SMS', 'sms', 'SMS', 'SMS', 'SMS', 'γραπτό μήνυμα', 'پیامک', 'SMS', 'SMS', 'எஸ்எம்எஸ்', 'એસએમએસ', 'SMS', 'СМС', 'SMS', 'mesaj', 'စာတို', 'SMS', 'SMS'),
(90, 'announcement', 'Announcement', 'ঘোষণা', 'Anuncio', 'إعلان', 'घोषणा', 'اعلان', '公告', '発表', 'Anúncio', 'Объявление', 'Annonce', '발표', 'Ankündigung', 'Annuncio', 'การประกาศ', 'Közlemény', 'Aankondiging', 'denuntiatio', 'Pengumuman', 'duyuru', 'Ανακοίνωση', 'اطلاعیه', 'Pengumuman', 'ప్రకటన', 'அறிவிப்பு', 'જાહેરાત', 'Ogłoszenie', 'Оголошення', 'ਘੋਸ਼ਣਾ', 'Anunţ', 'ကြေညာချက်', 'Ikede', 'Sanarwa'),
(91, 'notice', 'Notice', 'বিজ্ঞপ্তি', 'darse cuenta', 'تنويه', 'नोटिस', 'نوٹس', '注意', '通知', 'Aviso prévio', 'уведомление', 'Remarquer', '주의', 'Beachten', 'Avviso', 'แจ้งให้ทราบ', 'Értesítés', 'Merk op', 'notitia', 'Melihat', 'ihbar', 'Ειδοποίηση', 'اطلاع', 'Notis', 'నోటీసు', 'அறிவிப்பு', 'નોટિસ', 'Ogłoszenie', 'Зверніть увагу', 'ਨੋਟਿਸ', 'Înștiințare', 'အသိပေးစာ', 'Akiyesi', 'Lura'),
(92, 'news', 'News', 'সংবাদ', 'Noticias', 'أخبار', 'समाचार', 'خبریں', '新闻', 'ニュース', 'Notícia', 'Новости', 'Nouvelles', '뉴스', 'Nachrichten', 'notizia', 'ข่าว', 'hírek', 'Nieuws', 'News', 'Berita', 'Haber', 'Νέα', 'اخبار', 'Berita', 'న్యూస్', 'செய்திகள்', 'સમાચાર', 'Aktualności', 'Новини', 'ਨਿਊਜ਼', 'Știri', 'သတင်း', 'Awọn iroyin', 'News'),
(93, 'holiday', 'Holiday', 'ছুটির দিন', 'Fiesta', 'يوم الاجازة', 'छुट्टी का दिन', 'چھٹیوں', '假日', '休日', 'Feriado', 'День отдыха', 'Vacances', '휴일', 'Urlaub', 'Vacanza', 'วันหยุด', 'Ünnep', 'Holiday', 'ferias', 'Liburan', 'Tatil', 'Αργία', 'تعطیلات', 'Percutian', 'హాలిడే', 'விடுமுறை', 'રજા', 'Święto', 'Свято', 'ਛੁੱਟੀਆਂ', 'Vacanţă', 'အားလပ်ရက်များ', 'Isinmi', 'Holiday'),
(94, 'event', 'Event', 'ইভেন্ট', 'Evento', 'هدف', 'घटना', 'تقریب', '事件', 'イベント', 'Evento', 'Мероприятие', 'un événement', '행사', 'Veranstaltung', 'Evento', 'เหตุการณ์', 'Esemény', 'Evenement', 'res', 'Peristiwa', 'Etkinlik', 'Εκδήλωση', 'رویداد', 'Acara', 'ఈవెంట్', 'நிகழ்வு', 'ઇવેન્ટ', 'Zdarzenie', 'Подія', 'ਘਟਨਾ', 'Eveniment', 'အဖြစ်အပျက်', 'Iṣẹ iṣe', 'Event'),
(95, 'visitor_info', 'Visitor Info', 'আগন্তুক তথ্য', 'Información del visitante', 'معلومات الزائر', 'आगंतुक जानकारी', 'وزیٹر کی معلومات', '访客信息', '訪問者の情報', 'Informação do visitante', 'Информация для посетителей', 'Infos visiteurs', '방문자 정보', 'Besucherinfo', 'Informazioni per i visitatori', 'ข้อมูลผู้เยี่ยมชม', 'Látogatóinformációk', 'Bezoekersinformatie', 'visitor Info', 'Info Pengunjung', 'Ziyaretçi Bilgisi', 'Πληροφορίες επισκεπτών', 'اطلاعات بازدید کننده', 'Maklumat Pelawat', 'సందర్శకుల సమాచారం', 'பார்வையாளர் தகவல்', 'મુલાકાતી માહિતી', 'Informacje dla odwiedzających', 'Інформація про відвідувачів', 'ਵਿਜ਼ਟਰ ਜਾਣਕਾਰੀ', 'Informații despre vizitatori', 'ဧည့်သည်အင်ဖို', 'Alaye Alejo', 'Bayar da Bayani'),
(96, 'accounting', 'Accounting', 'হিসাবরক্ষণ', 'Contabilidad', 'محاسبة', 'लेखांकन', 'اکاؤنٹنگ', '会计', '会計', 'Contabilidade', 'бухгалтерский учет', 'Comptabilité', '회계', 'Buchhaltung', 'Contabilità', 'การบัญชี', 'Számvitel', 'Accounting', 'ratio', 'Akuntansi', 'Muhasebe', 'Λογιστική', 'حسابداری', 'Perakaunan', 'అకౌంటింగ్', 'கணக்கியல்', 'નામું', 'Rachunkowość', 'Бухгалтерський облік', 'ਲੇਿਾਕਾਰੀ', 'Contabilitate', 'စာရင်းကိုင်', 'Iṣiro', 'Ƙididdiga'),
(97, 'fee_type', 'Fee Type', 'ফি টাইপ', 'Tipo de tarifa', 'نوع الرسوم', 'शुल्क प्रकार', 'فیس قسم', '费用类型', '料金タイプ', 'Tipo de taxa', 'Тип платы', 'Type de frais', '수수료 유형', 'Gebührenart', 'Tipo di commissione', 'ประเภทค่าธรรมเนียม', 'Díj típusa', 'Vergoedingstype', 'feodo Type', 'Jenis Biaya', 'Ücret Türü', 'Τύπος τέλους', 'نوع هزینه', 'Jenis Bayaran', 'ఫీజు రకం', 'கட்டணம் வகை', 'ફી પ્રકાર', 'Rodzaj opłaty', 'Плата типу', 'ਫੀਸ ਕਿਸਮ', 'Tip de taxă', 'အခကြေးငွေအမျိုးအစား', 'Iru Ẹri', 'Fee Type');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(98, 'type', 'Type', 'প্রকার', 'Tipo', 'اكتب', 'प्रकार', 'ٹائپ کریں', '类型', 'タイプ', 'Tipo', 'Тип', 'Type', '유형', 'Art', 'genere', 'ชนิด', 'típus', 'Type', 'genus', 'Mengetik', 'tip', 'Τύπος', 'تایپ کنید', 'Taipkan', 'రకం', 'வகை', 'પ્રકાર', 'Rodzaj', 'Тип', 'ਟਾਈਪ ਕਰੋ', 'Tip', 'ပုံစံ', 'Iru', 'Rubuta'),
(99, 'invoice', 'Invoice', 'চালান', 'Factura', 'فاتورة', 'बीजक', 'انوائس', '发票', '請求書', 'Fatura', 'Выставленный счет', 'Facture dachat', '송장', 'Rechnung', 'Fattura', 'ใบแจ้งหนี้', 'Számla', 'Factuur', 'cautionem', 'Faktur', 'Fatura', 'Τιμολόγιο', 'صورتحساب', 'Invois', 'వాయిస్', 'விலைப்பட்டியல்', 'ભરતિયું', 'Faktura', 'Рахунок-фактура', 'ਇਨਵੌਇਸ', 'Factura fiscala', 'ဝယ်ကုန်စာရင်း', 'Ifiweranṣẹ', 'Invoice'),
(100, 'create', 'Create', 'তৈরী কর', 'Crear', 'خلق', 'सर्जन करना', 'بنانا', '创建', '作成する', 'Crio', 'Создайте', 'Créer', '몹시 떠들어 대다', 'Erstellen', 'Creare', 'สร้าง', 'Teremt', 'creëren', 'Create', 'Membuat', 'yaratmak', 'Δημιουργώ', 'ايجاد كردن', 'Buat', 'సృష్టించు', 'உருவாக்கவும்', 'બનાવો', 'Stwórz', 'Створити', 'ਬਣਾਓ', 'Crea', 'ဖန်တီး', 'Ṣẹda', 'Ƙirƙiri'),
(101, 'due_invoice', 'Due Invoice', 'বাকি চালান', 'Factura debida', 'الفاتورة المستحقة', 'कारण चालान', 'وجہ انوائس', '到期发票', '支払請求書', 'Fatura devida', 'Счет-фактура', 'Due Facture', '송장', 'Fällige Rechnung', 'Fattura dovuta', 'ใบแจ้งหนี้ที่ครบกำหนด', 'Esedékes számla', 'Doorlopende factuur', 'ob cautionem', 'Karena Faktur', 'Fatura Faturası', 'Οφειλόμενο τιμολόγιο', 'فاکتور موقت', 'Invois yang Dikehendaki', 'ఇన్వాయిస్ కారణంగా', 'காரணமாக விலைப்பட்டியல்', 'કારણે ભરતિયું', 'Due Faktura', 'Належний рахунок-фактура', 'ਬਕਾਇਆ ਇਨਵੌਇਸ', 'Datorită facturii', 'ကြောင့်ငွေတောင်းခံလွှာ', 'Fun Iroyin', 'Saboda Bayani'),
(102, 'expenditure', 'Expenditure', 'ব্যয়', 'Gasto', 'المصروفات', 'व्यय', 'خرچ', '支出', '支出', 'Despesa', 'Расход', 'Dépense', '지출', 'Ausgaben', 'Spesa', 'รายจ่าย', 'Kiadás', 'Uitgaven', 'Custus', 'Pengeluaran', 'harcama', 'Δαπάνη', 'هزینه ها', 'Perbelanjaan', 'ఎక్స్పెండిచర్', 'செலவினம்', 'ખર્ચ', 'Wydatek', 'Витрати', 'ਖਰਚੇ', 'Cheltuieli', 'သုံးငှေ', 'Isanwo', 'Sakamako'),
(103, 'expenditure_head', 'Expenditure Head', 'ব্যয় হেড', 'Jefe de gastos', 'رئيس النفقات', 'व्यय हेड', 'خرچ سر', '支出负责人', '支出ヘッド', 'Chefe de despesas', 'Руководитель отдела расходов', 'Chef des dépenses', '지출 헤드', 'Ausgabenleiter', 'Capo spese', 'หัวหน้าค่าใช้จ่าย', 'Kiadási vezető', 'Uitgaven Hoofd', 'caput capitis expensi,', 'Kepala Pengeluaran', 'Harcama Kafası', 'Επικεφαλής δαπανών', 'سر هزینه', 'Ketua Perbelanjaan', 'ఎక్స్పెండిచర్ హెడ్', 'செலவுத் தலை', 'ખર્ચ હેડ', 'Wydatki Kierownik', 'Голова витрат', 'ਖਰਚਾ ਸਿਰ', 'Șef de cheltuieli', 'အသုံးစရိတ်ဌာနမှူး', 'Oriiye Gbese', 'Shugaban Kuɗi'),
(104, 'income', 'Income', 'আয়', 'Ingresos', 'الإيرادات', 'आय', 'آمدنی', '收入', '所得', 'Renda', 'доход', 'le revenu', '수입', 'Einkommen', 'Reddito', 'เงินได้', 'Jövedelem', 'Inkomen', 'reditus', 'Pendapatan', 'Gelir', 'Εισόδημα', 'درآمد', 'Pendapatan', 'ఆదాయపు', 'வருமான', 'આવક', 'Dochód', 'Дохід', 'ਆਮਦਨੀ', 'Sursa de venit', 'ဝငျငှေ', 'Owo oya', 'Kudin shiga'),
(105, 'income_head', 'Income Head', 'আয় হেড', 'Jefe de ingresos', 'رئيس الدخل', 'आय हेड', 'آمدنی کے سربراہ', '收入负责人', '所得の頭部', 'Chefe de renda', 'Головной доход', 'Tête de revenu', '소득 헤드', 'Einkommen Kopf', 'Capo reddito', 'หัวหน้ารายได้', 'Jövedelemvezető', 'Inkomenskop', 'caput capitis reditus', 'Kepala Penghasilan', 'Gelir Kafası', 'Κεφάλαιο Εισοδήματος', 'سر درآمد', 'Ketua Pendapatan', 'ఆదాయం హెడ్', 'வருமானத் தலைவர்', 'આવક હેડ', 'Głowa dochodów', 'Голова доходів', 'ਇਨਕਮ ਹੈੱਡ', 'Cap de venit', 'ဝင်ငွေခွန်ဌာနမှူး', 'owo oya Head', 'Shugaban Asusun'),
(106, 'report', 'Report', 'প্রতিবেদন', 'Informe', 'أبلغ عن', 'रिपोर्ट', 'رپورٹ', '报告', '報告する', 'Relatório', 'отчет', 'rapport', '보고서', 'Bericht', 'rapporto', 'รายงาน', 'Jelentés', 'Verslag doen van', 'Report', 'Melaporkan', 'Rapor', 'Κανω ΑΝΑΦΟΡΑ', 'گزارش', 'Laporan', 'నివేదిక', 'அறிக்கை', 'અહેવાલ', 'Raport', 'Звіт', 'ਰਿਪੋਰਟ ਕਰੋ', 'Raport', 'အစီရင်ခံစာ', 'Iroyin', 'Rahoton'),
(107, 'balance', 'Balance', 'হিসাবনিকাশ', 'Equilibrar', 'توازن', 'संतुलन', 'بقیہ', '平衡', 'バランス', 'Equilibrar', 'Баланс', 'Équilibre', '밸런스', 'Balance', 'Equilibrio', 'สมดุล', 'Egyensúly', 'Balans', 'Libra', 'Keseimbangan', 'Denge', 'Ισορροπία', 'تعادل', 'Seimbang', 'సంతులనం', 'இருப்பு', 'બેલેન્સ', 'Saldo', 'Баланс', 'ਬਕਾਇਆ', 'Echilibru', 'ချိန်ခွင်လျှာ', 'Iwontunws.funfun', 'Balance'),
(108, 'profile', 'Profile', 'প্রোফাইল', 'Perfil', 'الملف الشخصي', 'प्रोफाइल', 'پروفائل', '轮廓', 'プロフィール', 'Perfil', 'Профиль', 'Profil', '윤곽', 'Profil', 'Profilo', 'ข้อมูลส่วนตัว', 'Profil', 'Profiel', 'Profile', 'Profil', 'Profil', 'Προφίλ', 'مشخصات', 'Profil', 'ప్రొఫైల్', 'விவரம்', 'પ્રોફાઇલ', 'Profil', 'Профіль', 'ਪ੍ਰੋਫਾਈਲ', 'Profil', 'ပရိုဖိုင်းကို', 'Profaili', 'Profile'),
(109, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'Mi perfil', 'ملفي', 'मेरी प्रोफाइल', 'میری پروفائل', '我的简历', '私のプロフィール', 'Meu perfil', 'Мой профайл', 'Mon profil', '내 프로필', 'Mein Profil', 'Il mio profilo', 'ประวัติของฉัน', 'A profilom', 'Mijn profiel', 'mea Profile', 'Profil saya', 'Benim profilim', 'Το ΠΡΟΦΙΛ μου', 'پروفایل من', 'Profil saya', 'నా జీవన వివరణ', 'என் சுயவிவரம்', 'મારી પ્રોફાઈલ', 'Mój profil', 'Мій профіль', 'ਮੇਰੀ ਪ੍ਰੋਫਾਈਲ', 'Profilul meu', 'အကြှနျုပျ၏ကိုယ်ရေးဖိုင်', 'Profaili mi', 'My Profile'),
(110, 'logout', 'Log Out', 'প্রস্থান', 'Cerrar sesión', 'الخروج', 'लोग आउट', 'لاگ آوٹ', '登出', 'ログアウト', 'Sair', 'Выйти', 'Connectez - Out', '로그 아웃', 'Ausloggen', 'Disconnettersi', 'ออกจากระบบ', 'Kijelentkezés', 'Uitloggen', 'Ex Log', 'Keluar', 'Çıkış Yap', 'Αποσυνδέση', 'خروج', 'Log keluar', 'లాగ్ అవుట్', 'வெளியேறு', 'લૉગ આઉટ', 'Wyloguj', 'Вийти', 'ਲਾੱਗ ਆਊਟ, ਬਾਹਰ ਆਉਣਾ', 'Deconectați-vă', 'အထဲက Log', 'Jade kuro', 'An fita'),
(111, 'login', 'Log In', 'লগইন', 'Iniciar sesión', 'تسجيل الدخول', 'लॉग इन करें', 'میں لاگ ان کریں', '登录', 'ログイン', 'Entrar', 'Авторизоваться', 'Sidentifier', '로그인', 'Einloggen', 'Accesso', 'เข้าสู่ระบบ', 'Belépés', 'Log in', 'Log In', 'Masuk', 'Oturum aç', 'Σύνδεση', 'ورود', 'Log masuk', 'లాగ్ ఇన్', 'உள் நுழை', 'લૉગ ઇન કરો', 'Zaloguj Się', 'Увійти', 'ਲਾਗਿਨ', 'Logare', 'လော့ဂ်အင်', 'Wo ile', 'Shiga'),
(112, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছি', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'पासवर्ड भूल गए', 'پاسورڈ بھول گے', '忘记密码', 'パスワードをお忘れですか', 'Esqueceu a senha', 'Забыли пароль', 'Forgot Password', '비밀번호를 잊으 셨나요', 'Passwort vergessen', 'Ha dimenticato la password', 'ลืมรหัสผ่าน', 'Elfelejtett jelszó', 'Wachtwoord vergeten', 'Forgot Password', 'Lupa kata sandi', 'Parolanızı mı unuttunuz', 'Ξεχάσατε τον κωδικό', 'رمز عبور را فراموش کرده اید', 'Lupa kata laluan', 'పాస్వర్డ్ మర్చిపోయారా', 'கடவுச்சொல்லை மறந்துவிட்டீர்களா', 'પાસવર્ડ ભૂલી ગયા છો', 'Zapomniałeś hasła', 'Забули пароль', 'ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ', 'Aţi uitat parola', 'စကားဝှက်ကိုမေ့နေပါသလား', 'Gbagbe ọrọ aṣina bi', 'Kalmar sirri da aka manta'),
(113, 'recovery_email', 'Recovery Email', 'পুনরুদ্ধার ইমেল', 'Correo electrónico de recuperación', 'البريد الإلكتروني الاسترداد', 'रिकवरी ईमेल', 'بازیابی ای میل', '恢复邮件', '復旧メール', 'Email de recuperação', 'Восстановление электронной почты', 'E-mail de secours', '복구 이메일', 'Wiederherstellungs-E-Mail', 'Email di recupero', 'อีเมลสำหรับกู้คืน', 'Helyreállítási e-mail', 'Herstel e-mail', 'Email convaluisset', 'Email pemulihan', 'Kurtarma Postası', 'Email αποκατάστασης', 'ایمیل بازیابی', 'E-mel Pemulihan', 'రికవరీ ఇమెయిల్', 'மீட்பு மின்னஞ்சல்', 'પુનઃપ્રાપ્તિ ઇમેઇલ', 'E-mail odzyskiwania', 'Електронна пошта відновлення', 'ਰਿਕਵਰੀ ਈਮੇਲ', 'E-mail de recuperare', 'recovery ကိုအီးမေးလ်ပို့ရန်', 'Imeeli igbasilẹ', 'Maido da Imel'),
(114, 'remember_me', 'Remember me', 'আমাকে মনে রাখুন', 'Recuérdame', 'تذكرنى', 'मुझे याद रखना', 'مجھے پہچانتے ہو', '记住我', '私を覚えてますか', 'Lembre de mim', 'Запомни меня', 'Souviens-toi de moi', '날 기억해', 'Erinnere dich an mich', 'Ricordati di me', 'จดจำฉัน', 'Emlékezz rám', 'Onthoud me', 'memento mei', 'Ingat saya', 'Beni hatırla', 'Θυμήσου με', 'مرا به خاطر بسپار', 'Ingat saya', 'నన్ను గుర్తు పెట్టుకో', 'என்னை நினைவில் கொள்ளுங்கள்', 'મને યાદ', 'Zapamiętaj mnie', 'Памятай мене', 'ਮੇਰੀ ਯਾਦ ਹੈ', 'Amintește-ți de mine', 'ငါ့ကိုသတိရပါ', 'Ranti mi', 'Ka tuna da ni'),
(115, 'school', 'Institute', 'প্রতিষ্ঠান', 'Colegio', 'مدرسة', 'स्कूल', 'اسکول', '学校', '学校', 'Escola', 'Школа', 'École', '학교', 'Schule', 'Scuola', 'โรงเรียน', 'Iskola', 'School', 'School', 'Sekolah', 'Okul', 'Σχολείο', 'مدرسه', 'Sekolah', 'స్కూల్', 'பள்ளி', 'શાળા', 'Szkoła', 'Школа', 'ਸਕੂਲ', 'Şcoală', 'ကြောငျး', 'Ile-iwe', 'Makarantar'),
(116, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'नाम', 'نام', '名称', '名', 'Nome', 'имя', 'prénom', '이름', 'Name', 'Nome', 'ชื่อ', 'Név', 'Naam', 'nomine', 'Nama', 'isim', 'Ονομα', 'نام', 'Nama', 'పేరు', 'பெயர்', 'નામ', 'Nazwa', 'Імя', 'ਨਾਮ', 'Nume', 'အမည်', 'Oruko', 'Sunan'),
(117, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'पता', 'ایڈریس', '地址', '住所', 'Endereço', 'Адрес', 'Adresse', '주소', 'Adresse', 'Indirizzo', 'ที่อยู่', 'Cím', 'Adres', 'oratio', 'Alamat', 'Adres', 'Διεύθυνση', 'نشانی', 'Alamat', 'చిరునామా', 'முகவரி', 'સરનામું', 'Adres', 'Адреса', 'ਪਤਾ', 'Adresa', 'လိပ်စာ', 'Adirẹsi', 'Adireshin'),
(118, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'फ़ोन', 'فون', '电话', '電話', 'telefone', 'Телефон', 'Phone', '전화', 'Telefon', 'Telefono', 'โทรศัพท์', 'Telefon', 'Telefoon', 'Phone', 'Telepon', 'Telefon', 'Τηλέφωνο', 'تلفن', 'Telefon', 'ఫోన్', 'தொலைபேசி', 'ફોન', 'Telefon', 'Телефон', 'ਫੋਨ', 'Telefon', 'ဖုန်းနံပါတ်', 'Foonu', 'Waya'),
(119, 'footer', 'Footer', 'ওয়েবসাইট ফুটার', 'Pie de página', 'تذييل', 'फ़ुटबाल', 'فوٹر', '页脚', 'フッター', 'Rodapé', 'нижний колонтитул', 'Bas de page', '보행인', 'Fußzeile', 'footer', 'ฟุตบอล', 'Lábjegyzet', 'footer', 'footer', 'Footer', 'Alt Bilgi', 'Υποσέλιδο', 'پاورقی', 'Footer', 'ఫుటర్', 'அடிக்குறிப்பு', 'ફૂટર', 'Stopka', 'Нижній колонтитул', 'ਪਦਲੇਰ', 'Subsol', 'အောက်ခြေ', 'Ẹlẹsẹ', 'Hanya'),
(120, 'logo', 'Logo', 'লগো', 'Logo', 'شعار', 'प्रतीक चिन्ह', 'لوگو', '商标', 'ロゴ', 'Logotipo', 'логотип', 'Logo', '심벌 마크', 'Logo', 'Logo', 'เครื่องหมาย', 'logo', 'Logo', 'logo', 'Logo', 'Logo', 'Λογότυπο', 'لوگو', 'Logo', 'లోగో', 'சின்னம்', 'લૉગો', 'Logo', 'Логотип', 'ਲੋਗੋ', 'Siglă', 'လိုဂို', 'Logo', 'Logo'),
(121, 'title', 'Title', 'শিরোনাম', 'Título', 'عنوان', 'शीर्षक', 'عنوان', '标题', 'タイトル', 'Título', 'заглавие', 'Titre', '표제', 'Titel', 'Titolo', 'หัวข้อ', 'Cím', 'Titel', 'titulus', 'Judul', 'Başlık', 'Τίτλος', 'عنوان', 'Tajuk', 'శీర్షిక', 'தலைப்பு', 'શીર્ષક', 'Tytuł', 'Назва', 'ਟਾਈਟਲ', 'Titlu', 'ခေါင်းစဥ်', 'Akọle', 'Title'),
(122, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'कुल', 'کل', '总', '合計', 'Total', 'Всего', 'Total', '합계', 'Gesamt', 'Totale', 'ทั้งหมด', 'Teljes', 'Totaal', 'summa', 'Total', 'Genel Toplam', 'Σύνολο', 'جمع', 'Jumlah', 'మొత్తం', 'மொத்த', 'કુલ', 'Całkowity', 'Всього', 'ਕੁੱਲ', 'Total', 'စုစုပေါငျး', 'Lapapọ', 'Jimlar'),
(123, 'calendar', 'Calendar', 'পঞ্জিকা', 'Calendario', 'التقويم', 'कैलेंडर', 'کیلنڈر', '日历', 'カレンダー', 'Calendário', 'Календарь', 'Calendrier', '달력', 'Kalender', 'Calendario', 'ปฏิทิน', 'Naptár', 'Kalender', 'Calendar', 'Kalender', 'Takvim', 'Ημερολόγιο', 'تقویم', 'Kalendar', 'క్యాలెండర్', 'நாட்காட்டி', 'કૅલેન્ડર', 'Kalendarz', 'Календар', 'ਕੈਲੰਡਰ', 'Calendar', 'ပြက္ခဒိန်', 'Kalẹnda', 'Kalanda'),
(124, 'statistics', 'Statistics', 'পরিসংখ্যান', 'Estadística', 'الإحصاء', 'आंकड़े', 'اعداد و شمار', '统计', '統計', 'Estatisticas', 'Статистика', 'Statistiques', '통계', 'Statistiken', 'statistica', 'สถิติ', 'Statisztika', 'Statistieken', 'Statistics', 'Statistik', 'istatistik', 'Στατιστική', 'آمار', 'Statistik', 'గణాంకాలు', 'புள்ளியியல்', 'આંકડા', 'Statystyka', 'Статистика', 'ਅੰਕੜੇ', 'Statistici', 'စာရင်းအင်း', 'Awọn iṣiro', 'Statistics'),
(125, 'latest', 'Latest', 'সর্বশেষ', 'Último', 'آخر', 'नवीनतम', 'تازہ ترین', '最新', '最新', 'Mais recentes', 'Последний', 'Dernier', '최근', 'Neueste', 'Più recente', 'ล่าสุด', 'Legújabb', 'Laatste', 'latest', 'Terbaru', 'son', 'Αργότερο', 'آخرین', 'Terkini', 'తాజా', 'சமீபத்திய', 'તાજેતરની', 'Najnowszy', 'Останні', 'ਨਵੀਨਤਮ', 'Cele mai recente', 'နောက်ဆုံး', 'Titun', 'Bugawa'),
(126, 'currency', 'Currency', 'মুদ্রা', 'Moneda', 'دقة', 'मुद्रा', 'کرنسی', '货币', '通貨', 'Moeda', 'валюта', 'Devise', '통화', 'Währung', 'Moneta', 'เงินตรา', 'Valuta', 'Valuta', 'monetæ', 'Mata uang', 'Para birimi', 'Νόμισμα', 'واحد پول', 'Mata wang', 'కరెన్సీ', 'நாணய', 'ચલણ', 'Waluta', 'Валюта', 'ਮੁਦਰਾ', 'Valută', 'ငွေကြေးစနစ်', 'Owo', 'Kudin'),
(127, 'currency_symbol', 'Currency Symbol', 'মুদ্রা চিহ্ন', 'Símbolo de moneda', 'رمز العملة', 'मुद्रा चिन्ह', 'کرنسی علامت', '货币符号', '通貨記号', 'Símbolo monetário', 'Символ валюты', 'Symbole de la monnaie', '통화 기호', 'Währungszeichen', 'Simbolo di valuta', 'สัญลักษณ์สกุลเงิน', 'Pénznem szimbólum', 'Symbool van munteenheid', 'monetæ Symbol', 'Simbol mata uang', 'Para Birimi Sembolü', 'Σύμβολο νομίσματος', 'نماد ارز', 'Simbol mata wang', 'కరెన్సీ చిహ్నం', 'நாணய சின்னம்', 'કરન્સી પ્રતીક', 'Symbol waluty', 'Символ валюти', 'ਕਰੰਸੀ ਨਿਸ਼ਾਨ', 'Simbolul valutei', 'ငွေကြေးသင်္ကေတ', 'Aami Owo', 'Alamar Kudin'),
(128, 'note', 'Note', 'মন্তব্য', 'Nota', 'ملحوظة', 'ध्यान दें', 'نوٹ', '注意', '注意', 'Nota', 'Заметка', 'Remarque', '노트', 'Hinweis', 'Nota', 'บันทึก', 'jegyzet', 'Notitie', 'nota', 'Catatan', 'Not', 'Σημείωση', 'توجه داشته باشید', 'Nota', 'గమనిక', 'குறிப்பு', 'નૉૅધ', 'Uwaga', 'Примітка', 'ਨੋਟ', 'Notă', 'မှတ်စု', 'Akiyesi', 'Lura'),
(129, 'is_running', 'Is Running?', 'চলছে?', '¿Esta corriendo?', 'يجري؟', 'दौड रहा है?', 'بھاگ رہا ہے؟', '在跑？', 'が走っています？', 'Está correndo?', 'Бежит?', 'Est en cours dexécution?', '달리기?', 'Läuft?', 'È in esecuzione?', 'กำลังวิ่ง?', 'Fut?', 'Is aan het rennen?', 'Is Cursor?', 'Sedang berlari?', 'Çalışıyor?', 'Τρέχει?', 'در حال اجراست؟', 'Adalah berlari?', 'పరిగెత్తుతున్నాడు?', 'இயங்குகிறது?', 'ચાલી રહ્યું છે?', 'Biegnie?', 'Біжить?', 'ਚੱਲ ਰਿਹਾ ਹੈ?', 'Rulează?', 'ကို run သလဲ?', 'Nṣiṣẹ?', 'Yana gudana?'),
(130, 'running_year', 'Running Year', 'চলমান বছর', 'Año de ejecución', 'تشغيل السنة', 'वर्ष चल रहा है', 'چل رہا ہے سال', '运行年', 'ランニング・イヤー', 'Ano corrente', 'Бегущий год', 'Année de fonctionnement', '러닝 연도', 'Laufendes Jahr', 'Anno in corso', 'ปีที่ดำเนินการ', 'Futóév', 'Lopend jaar', 'anno currit', 'Tahun berjalan', 'Koşu Yılı', 'Τρέχον έτος', 'در حال اجرا سال', 'Tahun Berjalan', 'రన్నింగ్ ఇయర్', 'இயங்கும் வருடம்', 'વર્ષ ચાલી રહ્યું છે', 'Rok bieżący', 'Біг Рік', 'ਰਨਿੰਗ ਯੀਅਰ', 'Anul de funcționare', 'အပြေးတစ်နှစ်တာ', 'Nṣiṣẹ Ọdun', 'Gudun Shekara'),
(131, 'is_demo', 'Is Demo?', 'ডেমো কি?', 'Es Demo?', 'هل تجريبي؟', 'डेमो है?', 'ڈیمو ہے؟', '是演示？', 'デモですか？', 'Demo?', 'Есть демо?', 'Est-ce que Demo?', '데모입니까?', 'Ist Demo?', 'È Demo?', 'Demo?', 'A demo?', 'Is demo?', 'Demo est?', 'Apakah demo', 'Demo var mı?', 'Είναι επίδειξη;', 'آیا نسخه ی نمایشی است؟', 'Adakah Demo?', 'డెమోనా?', 'டெமோ?', 'ડેમો છે?', 'Czy to demo?', 'Демо?', 'ਡੈਮੋ ਹੈ?', 'Este Demo?', 'Demo လား?', 'Ṣe Demo?', 'Shin Demo?'),
(132, 'is_active', 'Is Active?', 'একটিভ?', '¿Está activo?', 'هل نشط؟', 'सक्रिय है?', 'فعال ہے؟', '活跃？', 'アクティブです？', 'Está ativo?', 'Активен?', 'Cest actif?', '활성?', 'Ist aktiv?', 'È attivo?', 'มีการใช้งานอยู่หรือไม่?', 'Aktív?', 'Is actief?', 'Active est?', 'Aktif?', 'Aktif?', 'Είναι ενεργό?', 'فعال است؟', 'Adalah aktif?', 'సక్రియంగా ఉందా?', 'செயலில் இருக்கிறதா?', 'સક્રિય છે?', 'Jest aktywny?', 'Активний?', 'ਸਰਗਰਮ ਹੈ?', 'Este activ?', 'Active ကိုလား?', 'Ṣe Iroyin?', 'Yana aiki?'),
(133, 'active', 'Active', 'সক্রিয়', 'Activo', 'نشيط', 'सक्रिय', 'فعال', '活性', 'アクティブ', 'Ativo', 'активный', 'actif', '유효한', 'Aktiv', 'Attivo', 'คล่องแคล่ว', 'Aktív', 'Actief', 'Active', 'Aktif', 'Aktif', 'Ενεργός', 'فعال', 'Aktif', 'క్రియాశీల', 'செயலில்', 'સક્રિય', 'Aktywny', 'Активний', 'ਕਿਰਿਆਸ਼ੀਲ', 'Activ', 'တက်ကြွ', 'Iroyin', 'Aiki'),
(134, 'secret', 'Secret', 'গোপন', 'Secreto', 'سر', 'गुप्त', 'خفیہ', '秘密', '秘密', 'Segredo', 'секрет', 'Secret', '비밀', 'Geheimnis', 'Segreto', 'ลับ', 'Titok', 'Geheim', 'secret', 'Rahasia', 'Gizli', 'Μυστικό', 'راز', 'Rahsia', 'సీక్రెట్', 'இரகசிய', 'સિક્રેટ', 'Sekret', 'Таємно', 'ਰਾਜ਼', 'Secret', 'လျှို့ဝှက်ချက်', 'ìkọkọ', 'Asiri'),
(135, 'api_key', 'Api Key', 'এপিআই কী', 'Clave API', 'مفتاح API', 'एपीआई कुंजी', 'اےپی کی کلی', 'Api Key', 'Api Key', 'Chave API', 'Api Key', 'Clé de feu', 'API 키', 'API-Schlüssel', 'Chiave Api', 'คีย์ Api', 'Api Key', 'API sleutel', 'API key', 'Kunci API', 'Api Key', 'Api Key', 'کلید ای پی ای', 'Api Utama', 'అపి కీ', 'அப் கீ', 'API કી', 'Klucz API', 'Api Key', 'ਅਪੀ ਕੁੰਜੀ', 'Api Key', 'api Key ကို', 'Bọtini Api', 'Api Key'),
(136, 'key', 'Key', 'কী', 'Llave', 'مفتاح', 'कुंजी', 'کلیدی', '键', 'キー', 'Chave', 'ключ', 'Clé', '키', 'Schlüssel', 'Chiave', 'สำคัญ', 'Kulcs', 'Sleutel', 'Clavis', 'Kunci', 'anahtar', 'Κλειδί', 'کلید', 'Kunci', 'కీ', 'சாவி', 'કી', 'Klawisz', 'Ключ', 'ਕੁੰਜੀ', 'Cheie', 'သော့', 'Bọtini', 'Key'),
(137, 'key_salt', 'Key Salt', 'কী সল্ট', 'Key Salt', 'مفتاح الملح', 'कुंजी नमक', 'کلیدی نمک', '关键盐', 'キーソルト', 'Sal chave', 'Основная соль', 'Sel principal', '키 솔트', 'Schlüsselsalz', 'Key Salt', 'เกลือแกง', 'Fő só', 'Key Salt', 'Key salis', 'Garam utama', 'Anahtar Tuz', 'Βασικό αλάτι', 'نمک کلیدی', 'Garam utama', 'కీ ఉప్పు', 'முக்கிய உப்பு', 'કી સોલ્ટ', 'Kluczowa sól', 'Ключові солі', 'ਕੀ ਸਲੌਲ', 'Sare cheie', 'Key ကိုဆား', 'iyọ bọtini', 'Key Salt'),
(138, 'username', 'Username', 'ব্যবহারকারীর নাম', 'Nombre de usuario', 'اسم المستخدم', 'उपयोगकर्ता नाम', 'صارف کا نام', '用户名', 'ユーザー名', 'Nome de usuário', 'имя пользователя', 'Nom dutilisateur', '사용자 이름', 'Nutzername', 'Nome utente', 'ชื่อผู้ใช้', 'Felhasználónév', 'Gebruikersnaam', 'nomen usoris', 'Nama pengguna', 'Kullanıcı adı', 'Όνομα χρήστη', 'نام کاربری', 'Nama pengguna', 'యూజర్ పేరు', 'பயனர்பெயர்', 'વપરાશકર્તા નામ', 'Nazwa Użytkownika', 'Імя користувача', 'ਯੂਜ਼ਰਨਾਮ', 'Nume de utilizator', 'အသုံးပြုသူအမည်', 'Orukọ olumulo', 'Sunan mai amfani'),
(139, 'account_sid', 'Account SID', 'একাউন্ট এসআইডি', 'SID de la cuenta', 'حساب سيد', 'अकाउंट एसआईडी', 'اکاؤنٹ SID', '帐户SID', 'アカウントSID', 'SID da conta', 'SID учетной записи', 'Compte SID', '계정 SID', 'Konto SID', 'SID dellaccount', 'บัญชี SID', 'Fiók SID', 'Account SID', 'ratio SID', 'Akun SID', 'Hesap SID', 'Λογαριασμός SID', 'SID حساب', 'SID Akaun', 'SID ఖాతా', 'கணக்கு SID', 'એકાઉન્ટ SID', 'Identyfikator konta SID', 'Ідентифікатор облікового запису', 'ਖਾਤਾ SID', 'Cont SID', 'အကောင့် SID', 'SID iroyin', 'Asusun SID'),
(140, 'auth_token', 'Auth Token', 'অথ টোকেন', 'Token de autenticación', 'الرمز المميز للمصادقة', 'औथ टोकन', 'مصنف ٹوکن', '验证令牌', '認証トークン', 'Token Auth', 'Auth Token', 'Jeton dauthentification', '인증 토큰', 'Auth Token', 'Token di autenticazione', 'Auth Token', 'Hitel Token', 'Auth Token', 'auth Thochen', 'Token Auth', 'Auth Token', 'Auth Token', 'Auth Token', 'Token Auth', 'ప్రామాణీకరణ టోకెన్', 'அங்கீகார டோக்கன்', 'ઑથ ટોકન', 'token autoryzacji', 'Авт токен', 'Auth ਟੋਕਨ', 'Auth Token', 'auth တိုကင်', 'auth aami', 'Auth Token'),
(141, 'auth_key', 'Auth Key', 'অথ কী', 'Clave de autenticación', 'مفتاح المصادقة', 'प्रमाणन कुंजी', 'مصنف کلیدی', '授权键', '認証キー', 'Chave de autenticação', 'Auth Key', 'Clé dauthentification', '인증 키', 'Authentifizierungsschlüssel', 'Chiave dautenticazione', 'คีย์การตรวจสอบ', 'Autentikációs kulcs', 'Inlogcode', 'Key auth', 'Kunci otomatis', 'Auth Key', 'Auth Key', 'کلید تایید', 'Auth Key', 'ప్రామాణీకరణ కీ', 'அங்கீகார விசை', 'ઑથ કી', 'Klucz autoryzujący', 'Автх ключ', 'ਔਥ ਕੀ', 'Auth Key', 'auth Key ကို', 'Bọtini Auth', 'A Key Key'),
(142, 'auth_id', 'Auth ID', 'অথ আইডি', 'ID de autenticación', 'معرف المصادقة', 'ऑथ आईडी', 'مصنف ID', '身份验证ID', '認証ID', 'ID de Autenticação', 'Auth ID', 'Authentification', '인증 ID', 'Authentifizierungs-ID', 'Auth ID', 'รหัสผู้ใช้', 'Hitelazonosító', 'Auth ID', 'id auth', 'ID Auth', 'Kimliği kimliği', 'Auth ID', 'ID Auth', 'ID pengarang', 'ప్రామాణీకరణ ID', 'அங்கீகார ஐடி', 'ઑથ ID', 'Auth ID', 'Auth ID', 'Auth ID', 'Auth ID', 'auth ID ကို', 'Auth ID', 'ID ID'),
(143, 'from_number', 'From Number', 'ফ্রম নম্বর', 'Desde el número', 'من العدد', 'संख्या से', 'نمبر سے', '从数字', '番号から', 'Do número', 'От номера', 'À partir du numéro', '발신 번호', 'Von Nummer', 'Dal numero', 'จากจำนวน', 'A számtól', 'Van nummer', 'Ex Number', 'Dari nomor', 'Numaradan', 'Από τον αριθμό', 'از شماره', 'Daripada Nombor', 'సంఖ్య నుండి', 'எண் இருந்து', 'સંખ્યા પ્રતિ', 'Z numeru', 'З числа', 'ਨੰਬਰ ਤੋਂ', 'Din numărul', 'နံပါတ် မှစ.', 'Lati Nọmba', 'Daga Lambar'),
(144, 'number', 'Number', 'নম্বর', 'Número', 'رقم', 'संख्या', 'نمبر', '数', '数', 'Número', 'Число', 'Nombre', '번호', 'Nummer', 'Numero', 'จำนวน', 'Szám', 'Aantal', 'numerus', 'Jumlah', 'Numara', 'Αριθμός', 'عدد', 'Nombor', 'సంఖ్య', 'எண்', 'સંખ્યા', 'Numer', 'Номер', 'ਗਿਣਤੀ', 'Număr', 'ဂဏန်း', 'Nọmba', 'Lambar'),
(145, 'from', 'From', 'থেকে', 'De', 'من عند', 'से', 'سے', '从', 'から', 'A partir de', 'Из', 'De', '에서', 'Von', 'A partire dal', 'จาก', 'Tól től', 'Van', 'Ex', 'Dari', 'itibaren', 'Από', 'از جانب', 'Dari', 'నుండి', 'இருந்து', 'પ્રતિ', 'Od', 'Від', 'ਤੋਂ', 'Din', 'မှ', 'Lati', 'Daga'),
(146, 'sender_id', 'Sender ID', 'প্রেরকের আইডি', 'identificación del remitente', 'هوية المرسل', 'प्रेषक आईडी', 'بھیجنے والے کی شناخت', '发件人ID', '送信者ID', 'ID do remetente', 'Удостоверение личности отправителя', 'Identifiant dexpéditeur', '보낸 사람 ID', 'Absenderidentität', 'identità del mittente', 'ID ผู้ส่ง', 'Sender ID', 'zender ID', 'id mittens', 'ID pengirim', 'Gönderen Kimliği', 'ταυτότητα αποστολέα', 'شناسه فرستنده', 'ID penghantar', 'పంపినవారు ID', 'அனுப்பியவர் ஐடி', 'પ્રેષક ID', 'Identyfikator nadawcy', 'Ідентифікатор відправника', 'ਭੇਜਣ ਵਾਲਾ ID', 'ID-ul expeditorului', 'ပေးပို့သူ ID', 'Olu ID', 'Mai aikawa ID'),
(147, 'activate', 'Activate', 'সক্রিয় করুন', 'Activar', 'تفعيل', 'सक्रिय', 'چالو کریں', '启用', 'アクティブ化する', 'Ativar', 'активировать', 'Activer', '활성화', 'aktivieren Sie', 'Attivare', 'กระตุ้น', 'Aktiválja', 'Activeren', 'strenuus', 'Mengaktifkan', 'etkinleştirmek', 'Θέτω εις ενέργειαν', 'فعالسازی', 'Aktifkan', 'సక్రియం', 'செயல்படுத்த', 'સક્રિય કરો', 'Aktywuj', 'Активувати', 'ਸਰਗਰਮ ਕਰੋ', 'Activati', 'ကိုသက်ဝင်', 'Muu ṣiṣẹ', 'Kunna'),
(148, 'label', 'Lavel', 'লেভেল', 'Lavel', 'Lavel', 'Lavel', 'لیلیل', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'lavel', 'Lavel', 'Lavel', 'Lavel', 'lavel', 'Lavel', 'لاوئل', 'Lavel', 'Lavel', 'Lavel', 'લેવેલ', 'Lavel', 'Лавел', 'ਲੇਵਲ', 'Lavel', 'Lavel', 'Lavel', 'Lavel'),
(149, 'session_year', 'Session Year', 'সেশন বছর', 'Año de la sesión', 'سنة الدورة', 'सत्र वर्ष', 'اجلاس کا سال', '会议年', 'セッション年', 'Ano da sessão', 'Сезонность', 'Année de la session', '세션 연도', 'Sitzungsjahr', 'Anno di sessione', 'ปีการศึกษา', 'Session Year', 'Sessiejaar', 'Anno Sessio', 'Sesi Tahun', 'Oturum Yılı', 'Έτος συνεδρίας', 'سال نشست', 'Tahun Sesi', 'సెషన్ ఇయర్', 'அமர்வு ஆண்டு', 'સત્ર વર્ષ', 'Rok sesji', 'Сесія року', 'ਸੈਸ਼ਨ ਸਾਲ', 'Anul Sesiunii', 'session တစ်နှစ်တာ', 'Akoko Odun', 'Zama Na Zama'),
(150, 'is_default', 'Is Default?', 'ডিফল্ট কি?', 'Es predeterminado?', 'هل الافتراضي؟', 'डिफ़ॉल्ट है?', 'پہلے سے طے شدہ ہے؟', '是默认的？', 'デフォルトですか？', 'O padrão é?', 'По умолчанию?', 'Est par défaut?', '디폴트인가?', 'Ist Standard?', 'È predefinito?', 'เป็นค่าเริ่มต้นหรือไม่?', 'Alapértelmezés?', 'Is standaard?', 'Default est?', 'Apakah Default?', 'Varsayılan mı?', 'Είναι προεπιλογή;', 'پیش فرض', 'Adakah Default?', 'డిఫాల్ట్?', 'இயல்புநிலையா?', 'ડિફૉલ્ટ છે?', 'Czy domyślne?', 'За замовчуванням?', 'ਕੀ ਡਿਫਾਲਟ ਹੈ?', 'Este implicit?', 'ပုံမှန်ဖြစ်သနည်း', 'Ni aiyipada?', 'Shin Default?'),
(151, 'module', 'Module', 'মডিউল', 'Módulo', 'وحدة', 'मॉड्यूल', 'ماڈیول', '模', 'モジュール', 'Módulo', 'модуль', 'Module', '기준 치수', 'Modul', 'Modulo', 'โมดูล', 'modul', 'module', 'OMNIBUS', 'Modul', 'modül', 'Μονάδα μέτρησης', 'ماژول', 'Modul', 'మాడ్యూల్', 'தொகுதி', 'મોડ્યુલ', 'Moduł', 'Модуль', 'ਮੋਡੀਊਲ', 'Modul', 'module တစ်ခု', 'Module', 'Module'),
(152, 'function', 'Function', 'কর্তব্যপালন', 'Función', 'وظيفة', 'समारोह', 'فنکشن', '功能', '関数', 'Função', 'функция', 'Fonction', '기능', 'Funktion', 'Funzione', 'ฟังก์ชัน', 'Funkció', 'Functie', 'Officium', 'Fungsi', 'fonksiyon', 'Λειτουργία', 'عملکرد', 'Fungsi', 'ఫంక్షన్', 'விழா', 'કાર્ય', 'Funkcjonować', 'Функція', 'ਫੰਕਸ਼ਨ', 'Funcţie', 'လုပ်ဆောင်ချက်', 'Išẹ', 'Yanayi'),
(153, 'confirm', 'Confirm', 'নিশ্চিত করা', 'Confirmar', 'تؤكد', 'की पुष्टि करें', 'تصدیق کریں', '确认', '確認', 'confirme', 'подтвердить', 'Confirmer', '확인', 'Bestätigen', 'Confermare', 'ยืนยัน', 'megerősít', 'Bevestigen', 'Constituo', 'Memastikan', 'Onaylamak', 'Επιβεβαιώνω', 'تایید', 'Sahkan', 'నిర్ధారించండి', 'உறுதிப்படுத்தவும்', 'પુષ્ટિ કરો', 'Potwierdzać', 'Підтвердьте', 'ਪੁਸ਼ਟੀ ਕਰੋ', 'A confirma', 'အတည်ပြု', 'Jẹrisi', 'Tabbatar'),
(154, 'database', 'Database', 'ডেটাবেস', 'Base de datos', 'قاعدة البيانات', 'डेटाबेस', 'ڈیٹا بیس', '数据库', 'データベース', 'Base de dados', 'База данных', 'Base de données', '데이터 베이스', 'Datenbank', 'Banca dati', 'ฐานข้อมูล', 'adatbázis', 'Database', 'database', 'Database', 'Veritabanı', 'Βάση δεδομένων', 'بانک اطلاعاتی', 'Pangkalan data', 'డేటాబేస్', 'டேட்டாபேஸ்', 'ડેટાબેઝ', 'Baza danych', 'База даних', 'ਡਾਟਾਬੇਸ', 'Bază de date', 'ဒေတာဘေ့စ', 'Aaye data', 'Database'),
(155, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'डाउनलोड', 'ڈاؤن لوڈ کریں', '下载', 'ダウンロード', 'Download', 'Скачать', 'Télécharger', '다운로드', 'Herunterladen', 'Scaricare', 'ดาวน์โหลด', 'Letöltés', 'Download', 'download', 'Download', 'İndir', 'Κατεβάστε', 'دانلود', 'Muat turun', 'డౌన్లోడ్', 'பதிவிறக்க', 'ડાઉનલોડ કરો', 'Pobieranie', 'Завантажити', 'ਡਾਊਨਲੋਡ ਕਰੋ', 'Descarca', 'ဒေါင်းလုပ်', 'Gba lati ayelujara', 'Saukewa'),
(156, 'join_date', 'Joining Date', 'যোগদান তারিখ', 'Dia de ingreso', 'تاريخ الانضمام', 'कार्यग्रहण तिथि', 'شامل ہونے کی تاریخ', '入职日期', '参加日', 'Data de ingresso', 'Дата вступления', 'Date dinscription', '가입 날짜', 'Beitrittsdatum', 'Data di adesione', 'วันที่เข้าร่วม', 'Csatlakozási dátum', 'Lid worden van datum', 'Adhaeret Date', 'Tanggal Bergabung', 'Birleştirme Tarihi', 'Ημερομηνία σύνδεσης', 'تاریخ عضویت', 'Menyertai Tarikh', 'తేదీ చేరడం', 'சேரும் தேதி', 'તારીખ જોડાયા', 'Data przyłączenia', 'Дата приєднання', 'ਦਾਖਲ ਹੋਣ ਦੀ ਤਾਰੀਖ', 'Data îmbinării', 'နေ့စွဲလာရောက်ပူးပေါင်း', 'Ọjọ Ajọpọ', 'Ranar Jiki'),
(157, 'present', 'Present', 'বর্তমান', 'Presente', 'অনুবাদ ত্রুটি', 'वर्तमान', 'موجودہ', '当下', '現在', 'Presente', 'настоящее время', 'Présent', '선물', 'Geschenk', 'Presente', 'นำเสนอ', 'Ajándék', 'Aanwezig', 'praesenti', 'Menyajikan', 'Mevcut', 'Παρόν', 'حاضر', 'Hadir', 'ప్రస్తుతం', 'தற்போதைய', 'હાજર', 'Obecny', 'Подаруй', 'ਵਰਤਮਾਨ', 'Prezent', 'လက်ဆောင်', 'Nisin', 'Gabatarwa'),
(158, 'permanent', 'Permanent', 'স্থায়ী', 'Permanente', 'دائم', 'स्थायी', 'مستقل', '常驻', '恒久的な', 'Permanente', 'перманентный', 'Permanent', '퍼머넌트', 'Permanent', 'Permanente', 'ถาวร', 'Állandó', 'blijvend', 'permanent', 'Permanen', 'kalıcı', 'Μόνιμος', 'دائمی', 'Kekal', 'శాశ్వత', 'நிரந்தர', 'કાયમી', 'Stały', 'Постійний', 'ਸਥਾਈ', 'Permanent', 'အမြဲတမ်း', 'O yẹ', 'Tabbatacce'),
(159, 'gender', 'Gender', 'লিঙ্গ', 'Género', 'جنس', 'लिंग', 'صنف', '性别', '性別', 'Gênero', 'Пол', 'Le genre', '성별', 'Geschlecht', 'Genere', 'เพศ', 'nem', 'Geslacht', 'genus', 'Jenis kelamin', 'Cinsiyet', 'Γένος', 'جنسيت', 'Jantina', 'జెండర్', 'பாலினம்', 'જાતિ', 'Płeć', 'Стать', 'ਲਿੰਗ', 'Gen', 'ကျား, မ', 'Iwa', 'Gender'),
(160, 'blood_group', 'Blood Group', 'রক্তের গ্রুপ', 'Grupo sanguíneo', 'فصيلة الدم', 'रक्त समूह', 'خون گروپ', '血型', '血液型', 'Grupo sanguíneo', 'Группа крови', 'Groupe sanguin', '혈액형', 'Blutgruppe', 'Gruppo sanguigno', 'กรุ๊ปเลือด', 'Vércsoport', 'Bloedgroep', 'Sanguine coetus', 'Golongan darah', 'Kan grubu', 'Ομάδα αίματος', 'گروه خونی', 'Kumpulan darah', 'రక్తపు గ్రూపు', 'இரத்த வகை', 'બ્લડ ગ્રુપ', 'Grupa krwi', 'Група крові', 'ਬਲੱਡ ਗਰੁੱਪ', 'Grupa sanguină', 'သွေးအုပ်စု', 'Ẹgbẹ Ẹjẹ', 'Kungiyar Blood'),
(161, 'group', 'Group', 'গ্রুপ', 'Grupo', 'مجموعة', 'समूह', 'گروپ', '组', 'グループ', 'Grupo', 'группа', 'Groupe', '그룹', 'Gruppe', 'Gruppo', 'กลุ่ม', 'Csoport', 'Groep', 'Group', 'Kelompok', 'grup', 'Ομάδα', 'گروه', 'Kumpulan', 'గ్రూప్', 'குழு', 'ગ્રુપ', 'Grupa', 'Група', 'ਗਰੁੱਪ', 'grup', 'Group မှ', 'Ẹgbẹ', 'Rukuni'),
(162, 'religion', 'Religion', 'ধর্ম', 'Religión', 'دين', 'धर्म', 'مذہب', '宗教', '宗教', 'Religião', 'религия', 'Religion', '종교', 'Religion', 'Religione', 'ศาสนา', 'Vallás', 'Religie', 'religio', 'Agama', 'Din', 'Θρησκεία', 'دین', 'Agama', 'మతం', 'மதம்', 'ધર્મ', 'Religia', 'Релігія', 'ਧਰਮ', 'Religie', 'ဘာသာ', 'Esin', 'Addini'),
(163, 'birth_date', 'Birth Date', 'জন্ম তারিখ', 'Fecha de nacimiento', 'تاريخ الميلاد', 'जन्म दिन', 'تاریخ پیدائش', '生日', '誕生日', 'Data de nascimento', 'Дата рождения', 'Date de naissance', '생일', 'Geburtsdatum', 'Data di nascita', 'วันที่เกิด', 'Születési dátum', 'Geboortedatum', 'Dies natalis, diei natalis, m', 'Tanggal lahir', 'Doğum günü', 'Ημερομηνία γέννησης', 'تاریخ تولد', 'Tarikh lahir', 'పుట్టిన తేదీ', 'பிறந்த தேதி', 'જન્મતારીખ', 'Data urodzenia', 'Дата народження', 'ਜਨਮ ਮਿਤੀ', 'Data nasterii', 'မွေးရက်', 'Ojo ibi', 'Ranar haifuwa'),
(164, 'resume', 'Resume', 'জীবনবৃত্তান্ত', 'Currículum', 'استئنف', 'बायोडाटा', 'دوبارہ شروع کریں', '恢复', '履歴書', 'Currículo', 'Продолжить', 'CV', '이력서', 'Fortsetzen', 'Curriculum vitae', 'ประวัติย่อ', 'Önéletrajz', 'Hervat', 'Proin', 'Lanjut', 'Devam et', 'ΒΙΟΓΡΑΦΙΚΟ', 'خلاصه', 'Teruskan', 'పునఃప్రారంభం', 'தற்குறிப்பு', 'ફરી શરુ કરવું', 'Wznawianie', 'Резюме', 'ਮੁੜ ਸ਼ੁਰੂ ਕਰੋ', 'Relua', 'ပြန်စသည်', 'Tun pada', 'Tsayawa'),
(165, 'other_info', 'Other Info', 'অন্যান্য তথ্য', 'Otra información', 'معلومات اخرى', 'अन्य सूचना', 'دیگر معلومات', '其他信息', '他の情報', 'Outras informações', 'Дополнительная информация', 'Autre info', '기타 정보', 'Andere Information', 'Altre informazioni', 'ข้อมูลอื่น ๆ', 'Más információ', 'Andere informatie', 'alii Info', 'Info lain', 'Diğer Bilgiler', 'Άλλες πληροφορίες', 'سایر اطلاعات', 'Maklumat Lain', 'ఇతర సమాచారం', 'மற்ற தகவல்', 'અન્ય માહિતી', 'Inne informacje', 'Інша інформація', 'ਹੋਰ ਜਾਣਕਾਰੀ', 'Alte informații', 'အခြားအအင်ဖို', 'Alaye miiran', 'Sauran Bayanan'),
(166, 'numeric', 'Numeric', 'সাংখ্যিক', 'Numérico', 'رقمية', 'संख्यात्मक', 'تعداد', '数字', '数値', 'Numérico', 'числовой', 'Numérique', '숫자', 'Numerisch', 'Numerico', 'เป็นตัวเลข', 'numerikus', 'numerieke', 'Ordo numerorum', 'Numerik', 'Sayısal', 'Αριθμητικός', 'عددی', 'Angka', 'సంఖ్యా', 'எண்', 'સંખ્યાત્મક', 'Numeryczne', 'Чисельний', 'ਨੁਮਾਇਕ', 'Numeric', 'ဂဏန်း', 'Nọmba', 'Numeric'),
(167, 'code', 'Code', 'কোড', 'Código', 'الشفرة', 'कोड', 'کوڈ', '码', 'コード', 'Código', 'Код', 'Code', '암호', 'Code', 'Codice', 'รหัส', 'Kód', 'Code', 'Code', 'Kode', 'kod', 'Κώδικας', 'کد', 'Kod', 'కోడ్', 'குறியீடு', 'કોડ', 'Kod', 'Код', 'ਕੋਡ', 'Cod', 'ကုဒ်', 'Koodu', 'Code'),
(168, 'pass_mark', 'Pass Mark', 'পাশ নম্বর', 'Aprobado', 'علامة المرور', 'उतीर्णांक', 'نشان مارک', '合格标志', 'パスマーク', 'Pass Mark', 'Проходной балл', 'Moyenne', '패스 마크', 'Mindestpunktzahl', 'Punteggio minimo', 'ผ่านมาร์ค', 'Minimális pontszám', 'Pass Mark', 'Mark Tempus', 'Pass Mark', 'Geçme notu', 'Περάστε το σήμα', 'علامت گذاری به عنوان', 'Pas Mark', 'పాస్ మార్క్', 'தேர்ச்சி மதிப்பெண்', 'પાસ માર્ક', 'Przekaż Marka', 'Пройти марку', 'ਮਾਰਕ ਪਾਸ ਕਰੋ', 'Nota de trecere', 'မာကုဖြတ်သွား', 'Ṣe ami Marku', 'Alamar tafiya'),
(169, 'full_mark', 'Full Mark', 'পুরো নম্বর', 'Marca completa', 'درجة كاملة', 'पूर्ण अंक', 'مکمل نشان', '满分', '満点', 'Nota máxima', 'Отметить все', 'Pleine marque', '만점', 'Volle Markierung', 'Full Mark', 'เครื่องหมายเต็มรูปแบบ', 'Teljes Mark', 'Volle markering', 'Mark plena', 'Tanda penuh', 'Tam not', 'Πλήρες σήμα', 'علامت کامل', 'Mark penuh', 'పూర్తి మార్కులు', 'முழு மதிப்பெண்', 'સંપૂર્ણ માર્ક', 'Pełny znak', 'Повний Марк', 'ਪੂਰਾ ਮਾਰਕ', 'Nota maxima', 'အပြည့်အဝမာကု', 'Samisi Kikun', 'Alamar cikakke'),
(170, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'लेखक', 'مصنف', '作者', '著者', 'Autor', 'автор', 'Auteur', '저자', 'Autor', 'Autore', 'ผู้เขียน', 'Szerző', 'Auteur', 'auctor', 'Penulis', 'Yazar', 'Συγγραφέας', 'نویسنده', 'Pengarang', 'రచయిత', 'ஆசிரியர்', 'લેખક', 'Autor', 'Автор', 'ਲੇਖਕ', 'Autor', 'စာရေးသူ', 'Onkọwe', 'Mawallafin'),
(171, 'day', 'Day', 'দিন', 'Día', 'يوم', 'दिन', 'دن', '天', '日', 'Dia', 'День', 'Dayjournée', '일', 'Tag', 'Giorno', 'วัน', 'Nap', 'Dag', 'Dies', 'Hari', 'Gün', 'Ημέρα', 'روز', 'Hari', 'డే', 'தினம்', 'દિવસ', 'Dzień', 'День', 'ਦਿਨ', 'Zi', 'နေ့', 'Ọjọ', 'Ranar'),
(172, 'start_time', 'Start Time', 'সময় শুরু', 'Hora de inicio', 'وقت البدء', 'समय शुरू', 'وقت آغاز', '开始时间', '始まる時間', 'Hora de início', 'Время начала', 'Heure de début', '시작 시간', 'Startzeit', 'Ora di inizio', 'เวลาเริ่มต้น', 'Kezdési idő', 'Starttijd', 'Satus tempus', 'Waktu mulai', 'Başlama zamanı', 'Ωρα έναρξης', 'زمان شروع', 'Masa mula', 'సమయం ప్రారంభించండి', 'ஆரம்பிக்கும் நேரம்', 'પ્રારંભ સમય', 'Czas rozpoczęcia', 'Час початку', 'ਸ਼ੁਰੂਆਤੀ ਸਮਾਂ', 'Timpul de începere', 'start ကိုအချိန်', 'Aago Ibẹrẹ', 'Fara lokaci'),
(173, 'end_time', 'End Time', 'শেষ সময়', 'Hora de finalización', 'وقت النهاية', 'अंतिम समय', 'آخر وقت', '时间结束', '終了時間', 'Fim do tempo', 'Время окончания', 'Heure de fin', '종료 시간', 'Endzeit', 'Fine del tempo', 'เวลาสิ้นสุด', 'Idő vége', 'Eindtijd', 'finis Tempus', 'Akhir waktu', 'Bitiş zamanı', 'Τέλος χρόνου', 'زمان پایان', 'Masa tamat', 'ముగింపు సమయం', 'முடிவு நேரம்', 'સમાપ્તિ સમય', 'Koniec czasu', 'Кінець часу', 'ਅੰਤ ਸਮਾਂ', 'Ora de terminare', 'အဆုံးအချိန်', 'Aago ipari', 'Ƙarshen lokaci'),
(174, 'start_date', 'Start Date', 'শুরুর তারিখ', 'Fecha de inicio', 'تاريخ البدء', 'आरंभ करने की तिथि', 'شروع کرنے کی تاریخ', '开始日期', '開始日', 'Data de início', 'Дата начала', 'Date de début', '시작 날짜', 'Anfangsdatum', 'Data dinizio', 'วันที่เริ่มต้น', 'Kezdő dátum', 'Begin datum', 'Date incipere', 'Mulai tanggal', 'Başlangıç tarihi', 'Ημερομηνία έναρξης', 'تاریخ شروع', 'Tarikh mula', 'ప్రారంబపు తేది', 'தொடக்க தேதி', 'પ્રારંભ તારીખ', 'Data rozpoczęcia', 'Дата початку', 'ਤਾਰੀਖ ਸ਼ੁਰੂ', 'Data de început', 'စတင်သည့်ရက်စွဲ', 'Ọjọ Bẹrẹ', 'Fara Farawa'),
(175, 'end_date', 'End Date', 'শেষ তারিখ', 'Fecha final', 'تاريخ الانتهاء', 'अंतिम तिथि', 'آخری تاریخ', '结束日期', '終了日', 'Data final', 'Дата окончания', 'Date de fin', '종료일', 'Endtermin', 'Data di fine', 'วันที่สิ้นสุด', 'Befejezés dátuma', 'Einddatum', 'finis Date', 'Tanggal akhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ پایان', 'Tarikh tamat', 'ఆఖరి తేది', 'கடைசி தேதி', 'અંતિમ તારીખ', 'Data końcowa', 'Дата закінчення', 'ਅੰਤ ਦੀ ਮਿਤੀ', 'Data de încheiere', 'အဆုံးနေ့စွဲ', 'Ọjọ ipari', 'Ƙarshe Ranar'),
(176, 'relation', 'Relation', 'সম্পর্ক', 'Relación', 'علاقة', 'रिश्ता', 'تعلقات', '关系', '関係', 'Relação', 'Связь', 'Relation', '관계', 'Beziehung', 'Relazione', 'ความสัมพันธ์', 'Kapcsolat', 'Relatie', 'relatione', 'Hubungan', 'ilişki', 'Σχέση', 'رابطه', 'Hubungan', 'రిలేషన్', 'உறவு', 'સંબંધ', 'Relacja', 'Відносини', 'ਸਬੰਧ', 'Relație', 'ဆှေမြိုး', 'Ibasepo', 'Hada dangantaka'),
(177, 'profession', 'Profession', 'পেশা', 'Profesión', 'مهنة', 'व्यवसाय', 'پیشہ', '职业', '職業', 'Profissão', 'профессия', 'Métier', '직업', 'Beruf', 'Professione', 'อาชีพ', 'Szakma', 'Beroep', 'professionis', 'Profesi', 'Meslek', 'Επάγγελμα', 'حرفه', 'Profesion', 'వృత్తి', 'தொழில்', 'વ્યવસાય', 'Zawód', 'Професія', 'ਪੇਸ਼ਾ', 'Profesie', 'အလုပ်အကိုင်', 'Oṣiṣẹ', 'Zama'),
(178, 'roll_no', 'Roll No', 'ক্রমিক নাম্বার', 'Rollo No', 'رول نو', 'अनुक्रमांक', 'رول نمبر نہیں', '卷号', 'ロールNo', 'Roll No', 'Нет', 'Rouler Non', '롤 아니요', 'Rolle Nr', 'Rotolo n', 'ฉบับที่ไม่มี', 'Roll No', 'Roll No', 'Nulla volvunt', 'Roll No', 'Rulo Hayır', 'ρολό αριθ', 'رول نه', 'Roll No', 'రోల్ నం', 'ரோல் இல்லை', 'રોલ નં', 'Rzuć nr', 'ролл немає', 'ਰੋਲ ਨੰਬਰ ਨਹੀਂ', 'Rola numărul', 'အဘယ်သူမျှမလှိမ့်ပုံ', 'Roll Bẹẹkọ', 'Roll Babu'),
(179, 'registration_no', 'Registration No', 'নিবন্ধন নম্বর', 'Número de registro', 'رقم التسجيل', 'पंजीकरण क्रमांक', 'رجسٹریشن نمبر', '注册号', '登録番号', 'número de registro', 'номер регистрации', 'N ° denregistrement', '등록 번호', 'Registrierungsnr', 'Registrazione N', 'หมายเลขทะเบียน', 'regisztrációs szám', 'Registratienummer', 'No registration', 'Pendaftaran No', 'kayıt numarası', 'αριθμός καταχώρησης', 'شماره ثبت نام', 'Nombor pendaftaran', 'నమోదు సంఖ్య', 'பதிவு எண்', 'નોંધણી નં', 'Numer rejestracyjny', 'Номер реєстрації', 'ਰਜਿਸਟਰੇਸ਼ਨ ਨੰਬਰ', 'nr. de inregistrare', 'မှတ်ပုံတင်ခြင်းအဘယ်သူမျှမ', 'Iforukọ silẹ Ko si', 'Lambar rajista'),
(180, 'present_all', 'Present All', 'উপস্থিত সকল', 'Presente todo', 'الحالي الكل', 'सभी को प्रस्तुत करें', 'سب پیش', '现在所有', 'すべてを表示', 'Presente tudo', 'Представить все', 'Présenter tout', '모두 선물하기', 'Alle präsentieren', 'Presente tutto', 'นำเสนอทั้งหมด', 'Jelenleg mindet', 'Presenteer alles', 'nunc omnes', 'Hadir Semua', 'Hepsini Sunun', 'Παρουσιάστε όλα', 'در حال حاضر همه', 'Hadir Semua', 'అందరికీ అందించండి', 'அனைவருக்கும் வழங்கவும்', 'બધા હાજર', 'Przedstaw wszystko', 'Подаруй все', 'ਸਭ ਪੇਸ਼ ਕਰੋ', 'Prezentați-vă pe toți', 'ပစ္စုပ္ပန်အားလုံး', 'Paa Gbogbo', 'Duk Dukkan'),
(181, 'late_all', 'Late All', 'বিলম্বিত সকল', 'Late All', 'أواخر الكل', 'स्वर्गीय सभी', 'دیر سے', '所有的晚', '後期', 'Late All', 'Поздно все', 'Tard tout', '늦게 모두', 'Spät alle', 'Tutto in ritardo', 'ปลายทั้งหมด', 'Késő minden', 'Laat alles', 'late omnes', 'Terlambat semua', 'Hep Geç', 'Αργά Όλα', 'اواخر همه', 'Akhir semua', 'లేట్ అన్నీ', 'அனைவருக்கும்', 'લેટ ઓલ', 'Późno wszystkim', 'Пізно все', 'ਦੇਰ ਸਾਰੇ', 'Totul târziu', 'နှောင်းပိုင်းတွင်အားလုံး', 'Paa Gbogbo', 'Late Duk'),
(182, 'absent_all', 'Absent All', 'অনুপস্থিত সকল', 'Ausente todo', 'غائب الجميع', 'सभी अनुपस्थित', 'سب کو مطمئن', '缺席全部', 'すべてが不在', 'Absent All', 'Отсутствует все', 'Absent Tous', '모두 없슴', 'Alles fehlt', 'Assente tutti', 'ขาดทั้งหมด', 'Mindenki hiányzik', 'Afwezig allemaal', 'aberant aegrae', 'Tidak ada', 'Herkesten Yoksun', 'Απουσία όλων', 'همه وجود ندارند', 'Absent All', 'అబ్సెంట్ అన్నీ', 'எல்லாவற்றையும் விட', 'બધા ગેરહાજર', 'Nieobecny', 'Немає всіх', 'ਸਾਰੀ ਗੈਰਹਾਜ਼ਰੀ', 'Absent Toate', 'ပျက်ကွက်အားလုံး', 'Ti ko ni Gbogbo', 'Bazuwa Duk'),
(183, 'deadline', 'Deadline', 'শেষ তারিখ', 'Fecha tope', 'الموعد النهائي', 'समयसीमा', 'ڈیڈ لائن', '截止日期', '締め切り', 'Data limite', 'Крайний срок', 'Date limite', '마감 시간', 'Frist', 'Scadenza', 'วันกำหนดส่ง', 'Határidő', 'Deadline', 'deadline', 'Batas waktu', 'Son tarih', 'Προθεσμία', 'ضرب الاجل', 'Tarikh akhir', 'గడువు', 'காலக்கெடுவை', 'અન્તિમ રેખા', 'Ostateczny termin', 'Термін дії', 'ਡੈੱਡਲਾਈਨ', 'Termen limita', 'သတ်မှတ်နောက်ဆုံးအချိန်', 'Ọjọ ipari', 'Kwanan lokaci'),
(184, 'grade_point', 'Grade Point', 'গ্রেড পয়েন্ট', 'Punto de Grado', 'تراكمي', 'मूल्यांकन', 'گریڈ پوائنٹ', '成绩点', 'グレードポイント', 'Ponto de classificação', 'Точка оценки', 'Grade Point', '학점', 'Notenpunkt', 'Grado', 'Grade Point', 'Grade Point', 'Grade punt', 'gradus punctum', 'Indeks Prestasi', 'Grade Point', 'Σημείο βαθμού', 'نقطه درجه', 'Gred Point', 'గ్రేడ్ పాయింట్', 'கிரேடு புள்ளி', 'ગ્રેડ પોઇન્ટ', 'Punkt Grade', 'Градуйова точка', 'ਗਰੇਡ ਪੁਆਇੰਟ', 'Punct de punctaj', 'တန်း Point သို့', 'Iwe Ipele', 'Alamar Jagora'),
(185, 'mark_from', 'Mark From', 'মার্ক থেকে', 'Marcar de', 'علامة من', 'मार्क से', 'سے نشان زد کریں', '马克从', 'マークする', 'Mark From', 'Отметить от', 'Mark From', '마크부터', 'Mark von', 'Mark From', 'ทำเครื่องหมายจาก', 'Mark From', 'Markeer van', 'Mark ex', 'Mark dari', 'İşaretle', 'Σημειώστε από', 'مارک از', 'Tanda dari', 'నుండి మార్క్', 'இருந்து மார்க்', 'માર્ક ફ્રોમ', 'Mark From', 'Позначка з', 'ਮਾਰਕ ਤੋ', 'Marchează din', 'မှစ. , Mark', 'Samisi Lati', 'Alama Daga'),
(186, 'mark_to', 'Mark To', 'মার্ক পর্যন্ত', 'Marcar a', 'مارك تو', 'मार्क टू', 'نشان زد کریں', '标记为', 'マークする', 'Mark To', 'Отметить', 'Mark To', '표시 대상', 'Zu markieren', 'Mark To', 'ทำเครื่องหมายว่าต้องการ', 'Jelölje meg', 'Mark To', 'Mark Ad', 'Mark To', 'Mark To', 'Mark To', 'علامت گذاری به عنوان', 'Mark To', 'మార్క్ టు', 'மார்க் டூ', 'માર્ક ટુ', 'Mark To', 'Позначити до', 'ਮਾਰਕ ਕਰਨ ਲਈ', 'Marchează la', 'မာကုရန်', 'Samisi Lati', 'Alama Don'),
(187, 'room_no', 'Room No', 'কক্ষ নম্বর', 'Habitación no', 'غرفة رقم', 'कमरा क्रमांक', 'کمرہ نمبر', '房间号', '部屋番号', 'Quarto Não', 'Комната нет', 'Chambre numéro', '객실 번호', 'Raum Nummer', 'Stanza No', 'เบอร์ห้อง', 'Szobaszám', 'Kamer nummer', 'nullus locus', 'Kamar no', 'Oda numarası', 'Αριθμός δωματίου', 'شماره اتاق', 'Nombor bilik', 'గది సంఖ్య', 'அறை இல்லை', 'રૂમ નં', 'Pokój numer', 'Кімната №', 'ਕਮਰਾ ਨੰਬਰ', 'Cameră nr', 'ROOM တွင်အဘယ်သူမျှမ', 'Yara Bẹẹkọ', 'Room Babu'),
(188, 'attend_all', 'Attend All', 'উপস্থিত সকল', 'Asistir a todos', 'حضور الجميع', 'सभी में शामिल हों', 'Attend All', '全部参加', 'すべてに出席する', 'Participe de todos', 'Все участники', 'Assister à tous', '모두 참석', 'An allen teilnehmen', 'Partecipare a tutti', 'เข้าร่วมทั้งหมด', 'Vegyen részt mindenben', 'Woon iedereen bij', 'adtende omnes', 'Menghadiri Semua', 'Herkese Katıl', 'Παρακολουθήστε όλους', 'حضور در همه', 'Hadiri Semua', 'అన్ని హాజరు', 'எல்லாவற்றிலும் கலந்துகொள்ளுங்கள்', 'બધા હાજરી', 'Weź udział w wszystkim', 'Відвідати все', 'ਸਾਰੇ ਹਾਜ਼ਰ ਹੋਵੋ', 'Participați la toate', 'အားလုံးတက်ရောက်ရန်', 'Lọ gbogbo', 'Ku halarci Duk'),
(189, 'mark_total', 'Mark Total', 'মোট মার্ক', 'Mark Total', 'مارك المجموع', 'कुल मार्क', 'کل مارک', '马克总', 'マーク合計', 'Mark Total', 'Марка Всего', 'Mark Total', '마크 합계', 'Gesamtmarkierung', 'Mark Total', 'Mark Total', 'Mark Összesen', 'Markeer Total', 'Mark Summa', 'Mark Total', 'Mark Total', 'Σημείωση Σύνολο', 'مارک کل', 'Mark Jumlah', 'మొత్తం మార్క్', 'மொத்தம் மார்க்', 'કુલ ચિહ્ન', 'Mark Total', 'Марк Тотал', 'ਕੁੱਲ ਮਿਲਾਓ', 'Marchează total', 'မာကုစုစုပေါင်း', 'Samisi Kolopin', 'Mark Total'),
(190, 'mark_obtain', 'Mark Obtain', 'প্রাপ্ত মার্ক', 'Mark Obtain', 'الحصول على علامة', 'मार्क ओब्टेन', 'نشان زد کریں', '马克获得', 'マーク取得', 'Mark Obtain', 'Mark Получить', 'Mark Obtain', '마크 획득', 'Mark Erhalten', 'Mark Ottieni', 'Mark Obtain', 'Mark Obtain', 'Markeer verkrijgen', 'Mark Vitam', 'Mark mendapatkan', 'Mark Al', 'Σημάδι αποκτήστε', 'علامت گذاری به دست آوردن', 'Mark Obtain', 'గుర్తు పొందండి', 'மார்க் பெறவும்', 'માર્ક ઑબ્ટેન', 'Mark Obtain', 'Позначте ', 'ਮਾਰਕ ਆਬਟੈੱਨ', 'Marchează Obțineți', 'မာကုရယူပါ', 'Samisi Gba', 'Mark Obtain'),
(191, 'remark', 'Remark', 'মন্তব্য', 'Observación', 'تعليق', 'टिप्पणी', 'تبصرہ', '备注', 'リマーク', 'Observação', 'замечание', 'Remarque', '말', 'Anmerkung', 'osservazione', 'ข้อสังเกต', 'Megjegyzés', 'Opmerking', 'Attende', 'Ucapan', 'düşünce', 'Παρατήρηση', 'یادداشت', 'Catatan', 'వ్యాఖ్య', 'கருத்து', 'રીમાર્ક', 'Uwaga', 'Зауваження', 'ਟਿੱਪਣੀ', 'Remarcă', 'ပွောဆို', 'Atokasi', 'Alamar'),
(192, 'option', 'Option', 'পছন্দ', 'Opción', 'اختيار', 'विकल्प', 'اختیار', '选项', 'オプション', 'Opção', 'вариант', 'Option', '선택권', 'Möglichkeit', 'Opzione', 'ตัวเลือก', 'választási lehetőség', 'Keuze', 'optionem', 'Pilihan', 'seçenek', 'Επιλογή', 'گزینه', 'Pilihan', 'ఎంపిక', 'விருப்பம்', 'વિકલ્પ', 'Opcja', 'Варіант', 'ਚੋਣ', 'Opțiune', 'option ကို', 'Aṣayan', 'Zaži'),
(193, 'running_session', 'Running Session', 'চলমান সেশন', 'Sesión en ejecución', 'تشغيل الدورة', 'चल रहा सत्र', 'چل رہا ہے اجلاس', '运行会话', 'ランニングセッション', 'Sessão de corrida', 'Запуск сеанса', 'Session en cours', '러닝 세션', 'Sitzung wird ausgeführt', 'Esecuzione della sessione', 'การเรียกใช้เซสชัน', 'Futtatás', 'Sessie uitvoeren', 'currens Sessio', 'Menjalankan sesi', 'Oturum Devam Ediyor', 'Εκτέλεση συνόδου', 'در حال اجرا', 'Sesi Berjalan', 'సెషన్ రన్నింగ్', 'அமர்வு இயக்குதல்', 'સત્ર ચાલી રહ્યું છે', 'Prowadzenie sesji', 'Запуск сесії', 'ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ', 'Sesiunea de desfășurare', 'အပြေးတွေ့ဆုံဆွေးနွေးပွဲ', 'Ipade Nṣiṣẹ', 'Zangon Zama'),
(194, 'promote_to_session', 'Promote to Session', 'উন্নীতকরণ  সেশন', 'Promover a la sesión', 'الترقية إلى الجلسة', 'सत्र को बढ़ावा देना', 'اجلاس میں فروغ دیں', '促进会议', 'セッションに昇進', 'Promover a Sessão', 'Поощрять сессию', 'Promouvoir à la session', '세션으로 승격', 'Zu einer Sitzung hochstufen', 'Promuovi alla sessione', 'โปรโมตเซสชัน', 'Előmozdítása a munkamenethez', 'Promoten naar sessie', 'Sessio autem Promovere', 'Promosikan untuk Sesi', 'Oturuma Teşvik Et', 'Προωθήστε στη σύνοδο', 'ارتقا به جلسه', 'Menggalakkan Sesi', 'సెషన్కు ప్రచారం చేయండి', 'அமர்வுக்கு ஊக்குவிக்கவும்', 'સત્રમાં પ્રમોટ કરો', 'Promuj do sesji', 'Реклама на сеанс', 'ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ', 'Promovați la sesiune', 'တွေ့ဆုံဆွေးနွေးပွဲမှမြှင့်တင်', 'Igbelaruge si Ipade', 'Ƙaddamar zuwa Zama'),
(195, 'current_class', 'Current Class', 'বর্তমান শ্রেণী', 'Clase actual', 'الفئة الحالية', 'वर्तमान कक्षा', 'موجودہ کلاس', '当前类', '現在のクラス', 'Classe atual', 'Текущий класс', 'Classe actuelle', '현재 수업', 'Aktuelle Klasse', 'Classe corrente', 'ระดับปัจจุบัน', 'Jelenlegi osztály', 'Huidige klasse', 'Current Paleonemertea Class', 'Kelas sekarang', 'Mevcut Sınıf', 'Τρέχουσα κλάση', 'کلاس کنونی', 'Kelas Semasa', 'ప్రస్తుత క్లాస్', 'தற்போதைய வகுப்பு', 'વર્તમાન વર્ગ', 'Aktualna klasa', 'Поточний клас', 'ਮੌਜੂਦਾ ਕਲਾਸ', 'Clasa curentă', 'လက်ရှိအတန်းအစား', 'Akoko lọwọlọwọ', 'Kwanan Yanzu'),
(196, 'promote_to_class', 'Promote To Class', 'উন্নীতকরণ  শ্রেণী', 'Promover a clase', 'الترقية إلى الفصل', 'कक्षा को बढ़ावा देना', 'کلاس میں فروغ دیں', '促进上课', 'クラスに昇格', 'Promover para a classe', 'Повысить класс', 'Promouvoir en classe', '클래스로 승격', 'In die Klasse hochstufen', 'Promuovi in classe', 'โปรโมตในชั้นเรียน', 'Promóció az osztályba', 'Promoot Class', 'Promovere Ad Paleonemertea Class', 'Promosikan ke Kelas', 'Sınıfı Tanıyalım', 'Προωθήστε στην κλάση', 'ارتقا به کلاس', 'Menggalakkan Ke Kelas', 'క్లాస్కి ప్రచారం చేయండి', 'வகுப்புக்கு ஊக்குவிக்கவும்', 'વર્ગ માટે પ્રોત્સાહન', 'Promuj do klasy', 'Реклама в класі', 'ਕਲਾਸ ਨੂੰ ਵਧਾਓ', 'Promovați la clasă', 'အတန်းအစားစေရန်မြှင့်တင်ရန်', 'Igbelaruge Lati Kilasi', 'Ƙaddamar da Ƙungiya'),
(197, 'next_roll_no', 'Next Roll No', 'পরবর্তী রোল', 'Siguiente rollo No', 'التالي لفة لا', 'अगला रोल नंबर', 'اگلے رول نمبر', '下一卷No', '次のロール番号', 'Next Roll No', 'Следующий ролл Нет', 'Prochain rouleau No', '다음 롤 없음', 'Nächste Rolle Nr', 'Next Roll No', 'ฉบับต่อไป No', 'Következő Roll No.', 'Volgende rol Nee', 'Next Roll No', 'Gulungan Berikutnya No', 'Sonraki Rulo Hayır', 'Επόμενος αριθμός ρόλου', 'بعدی رول نه', 'Rol seterusnya No', 'తదుపరి రోల్ సంఖ్య', 'அடுத்த ரோல் இல்லை', 'આગામી રોલ નં', 'Następna rolka nr', 'Наступний рулон немає', 'ਅਗਲਾ ਰੋਲ ਕੋਈ ਨਹੀਂ', 'Următorul Roll Nu', 'Next ကို Roll အဘယ်သူမျှမ', 'Eerun Oke No', 'Nemi na gaba Babu'),
(198, 'promote', 'Promote', 'উন্নীত করা', 'Promover', 'تروج \\ يشجع \\ يعزز \\ ينمى \\ يطور', 'को बढ़ावा देना', 'فروغ دیں', '促进', 'プロモーション', 'Promover', 'содействовать', 'Promouvoir', '홍보', 'Fördern', 'Promuovere', 'ส่งเสริม', 'Népszerűsít', 'Promoten', 'Promovere', 'Memajukan', 'Desteklemek', 'Προάγω', 'ترویج', 'Menggalakkan', 'ప్రమోట్', 'ஊக்குவிக்க', 'પ્રમોટ કરો', 'Promować', 'Рекламувати', 'ਵਧਾਓ', 'Promova', 'မြှင့်တင်ရန်', 'Igbelaruge', 'Ƙara'),
(199, 'book_id', 'Book ID', 'বই আইডি', 'ID de libro', 'معرف الكتاب', 'बुक आईडी', 'کتاب کی شناخت', '图书ID', '書籍ID', 'ID do livro', 'Книжный идентификатор', 'ID de livre', '도서 ID', 'Buch-ID', 'ID del libro', 'รหัสหนังสือ', 'Könyvazonosító', 'Boek-ID', 'id libri', 'ID buku', 'Kitap kimliği', 'Αναγνωριστικό βιβλίου', 'شناسه کتاب', 'ID Buku', 'బుక్ ID', 'புத்தக ஐடி', 'બુક ID', 'Identyfikator książki', 'Ідентифікатор книги', 'ਬੁੱਕ ID', 'Carte de identitate', 'စာအုပ် ID ကို', 'Iwe iD', 'ID ID'),
(200, 'isbn_no', 'ISBN No', 'আইএসবিএন নম্বর', 'ISBN No', 'رقم إيسبن لا', 'आईएसबीएन नहीं', 'ISBN نمبر', '书号', 'ISBNいいえ', 'Número ISBN', 'ISBN Нет', 'ISBN Non', 'ISBN 아니오', 'ISBN Nr', 'ISBN n', 'เลข ISBN', 'ISBN szám', 'ISBN nr', 'ISBN No', 'ISBN No', 'ISBN Hayır', 'Αριθμός ISBN', 'ISBN شماره', 'ISBN No', 'ISBN సంఖ్య', 'ISBN இல்லை', 'આઇએસબીએન નં', 'Numer ISBN', 'Номер ISBN', 'ISBN ਨਹੀਂ', 'ISBN nr', 'ISBN အဘယ်သူမျှမ', 'ISBN Bẹẹkọ', 'ISBN Babu'),
(201, 'book_cover', 'Book Cover', 'বইয়ের কভার', 'Tapa del libro', 'غلاف الكتاب', 'पुस्तक आवरण', 'کتاب کاپوشش، کتاب کی جلد', '封面', 'ブックカバー', 'Capa de livro', 'Книжная обложка', 'Couverture de livre', '책 표지', 'Buchumschlag', 'Copertina del libro', 'ปกหนังสือ', 'Könyvborító', 'Boekomslag', 'Libro Cover', 'Sampul buku', 'Kitap kapağı', 'Εξώφυλλο βιβλίου', 'جلد کتاب', 'Kulit buku', 'పుస్తకపు అట్ట', 'புத்தக உறை', 'પુસ્તક કવર', 'Okładka książki', 'Обкладинка книги', 'ਬੁੱਕ ਕਵਰ', 'Coperta cărții', 'စာအုပ်အဖုံး', 'Iwe Ideri iwe', 'Rufin Shafin'),
(202, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'मूल्य', 'قیمت', '价钱', '価格', 'Preço', 'Цена', 'Prix', '가격', 'Preis', 'Prezzo', 'ราคา', 'Ár', 'Prijs', 'pretium', 'Harga', 'Fiyat', 'Τιμή', 'قیمت', 'Harga', 'ధర', 'விலை', 'કિંમત', 'Cena £', 'Ціна', 'ਕੀਮਤ', 'Preț', 'စျေးနှုန်း', 'Iye owo', 'Farashin'),
(203, 'quantity', 'Quantity', 'পরিমাণ', 'Cantidad', 'كمية', 'मात्रा', 'مقدار', '数量', '量', 'Quantidade', 'Количество', 'Quantité', '수량', 'Menge', 'Quantità', 'ปริมาณ', 'Mennyiség', 'Aantal stuks', 'quantitas', 'Kuantitas', 'miktar', 'Ποσότητα', 'مقدار', 'Kuantiti', 'మొత్తము', 'அளவு', 'જથ્થો', 'Ilość', 'Кількість', 'ਗਿਣਤੀ', 'Cantitate', 'အရေအတွက်', 'Opolopo', 'Yawan'),
(204, 'availble', 'Available', 'সহজলভ্য', 'Disponible', 'متاح', 'उपलब्ध', 'دستیاب', '可得到', '利用可能', 'acessível', 'Доступный', 'Disponible', '유효한', 'Verfügbar', 'A disposizione', 'ที่มีจำหน่าย', 'Elérhető', 'Beschikbaar', 'available', 'Tersedia', 'Mevcut', 'Διαθέσιμος', 'در دسترس', 'Tersedia', 'అందుబాటులో', 'கிடைக்கும்', 'ઉપલબ્ધ', 'Dostępny', 'Доступно', 'ਉਪਲੱਬਧ', 'Disponibil', 'ရရှိနိုင်', 'Wa', 'Akwai'),
(205, 'edition', 'Edition', 'সংস্করণ', 'Edición', 'الإصدار', 'संस्करण', 'ایڈیشن', '版', '版', 'Edição', 'Издание', 'Édition', '판', 'Auflage', 'Edizione', 'ฉบับ', 'Kiadás', 'Editie', 'edition', 'Edisi', 'Baskı', 'Εκδοση', 'نسخه', 'Edisi', 'ఎడిషన్', 'பதிப்பு', 'આવૃત્તિ', 'Wydanie', 'Видання', 'ਐਡੀਸ਼ਨ', 'Ediție', 'Edition ကို', 'Itọsọna', 'Edition'),
(206, 'almira_rack', 'Almira No', 'আলমারি নম্বর', 'Almira No', 'ألميرا نو', 'अलमिरा नो', 'الامرا نمبر', 'Almira No', 'Almira No', 'Almira Não', 'Альмира Нет', 'Almira Non', 'Almira No', 'Almira Nein', 'Almira no', 'Almira No', 'Almira No', 'Almira Nee', 'Non Almira', 'Almira No', 'Almira Hayır', 'Αλμίρα Όχι', 'آلمیرا نه', 'Almira No', 'అల్మిరా నం', 'அல்மிரா இல்லை', 'અલમરા ના', 'Almira Nie', 'Альміра №', 'ਅਲਮਾਮਾ ਨੰ', 'Almira nr', 'Almira အဘယ်သူမျှမ', 'Almira Bẹẹkọ', 'Almira Babu'),
(207, 'yes', 'Yes', 'হাঁ', 'Sí', 'نعم فعلا', 'हाँ', 'جی ہاں', '是', 'はい', 'sim', 'да', 'Oui', '예', 'Ja', 'sì', 'ใช่', 'Igen', 'Ja', 'Ita', 'iya nih', 'Evet', 'Ναί', 'بله', 'Ya', 'అవును', 'ஆம்', 'હા', 'tak', 'Так', 'ਹਾਂ', 'da', 'ဟုတ်ကဲ့', 'Bẹẹni', 'Ee');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(208, 'no', 'No', 'না', 'No', 'لا', 'नहीं', 'نہیں', '没有', 'いいえ', 'Não', 'нет', 'Non', '아니', 'Nein', 'No', 'ไม่', 'Nem', 'Nee', 'nullum', 'Tidak', 'Yok hayır', 'Οχι', 'نه', 'Tidak', 'తోబుట్టువుల', 'இல்லை', 'ના', 'Nie', 'Немає', 'ਨਹੀਂ', 'Nu', 'အဘယ်သူမျှမ', 'Rara', 'Aa'),
(209, 'library_id', 'Library ID', 'গ্রন্থাগার আইডি', 'ID de biblioteca', 'معرف المكتبة', 'लाइब्रेरी आईडी', 'لائبریری کی شناخت', '库ID', 'ライブラリID', 'ID da biblioteca', 'ИД библиотеки', 'ID de la bibliothèque', '도서관 ID', 'Bibliotheks-ID', 'ID della biblioteca', 'ID ห้องสมุด', 'Könyvtár azonosítója', 'Bibliotheek-ID', 'id bibliothecam', 'ID Perpustakaan', 'Kütüphane kimliği', 'Αναγνωριστικό βιβλιοθήκης', 'شناسه کتابخانه', 'ID Perpustakaan', 'లైబ్రరీ ID', 'நூலக ஐடி', 'લાઇબ્રેરી ID', 'Identyfikator biblioteki', 'Ідентифікатор бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਆਈਡੀ', 'ID-ul bibliotecii', 'စာကြည့်တိုက် ID ကို', 'ID ibi ipamọ', 'ID ID'),
(210, 'return_this', 'Return This', 'রিটার্ন করুন', 'Devuelve esto', 'عودة هذا', 'यह वापसी करें', 'واپس لو', '返回这个', 'これを返す', 'Retornar isso', 'Возвращение', 'Retournez ceci', '반환이', 'Gib das zurück', 'Restituire questo', 'กลับนี้', 'Vissza', 'Keer dit terug', 'return haec', 'Kembalikan ini', 'Geri dön', 'Επιστρέψτε αυτό', 'بازگشت این', 'Pulangkan ini', 'ఈ రిటర్న్', 'இந்த திரும்பு', 'આ આવો', 'Wróć to', 'Поверніть це', 'ਇਸ ਨੂੰ ਵਾਪਸ ਕਰੋ', 'Întoarce-te', 'ဤသည်ပြန်သွားသည်', 'Da eyi pada', 'Koma wannan'),
(211, 'vehicle_model', 'Vehicle Model', 'গাড়ী মডেল', 'Modelo de vehículo', 'نموذج المركبة', 'वाहन मॉडल', 'گاڑی کا ماڈل', '车辆模型', '車両モデル', 'Modelo do veículo', 'Модель транспортного средства', 'Modèle de véhicule', '차량 모델', 'Fahrzeugmodell', 'Modello di veicolo', 'โมเดลรถ', 'Járműmodell', 'Voertuigmodel', 'vehiculum Model', 'Model Kendaraan', 'Araç modeli', 'Μοντέλο οχήματος', 'مدل خودرو', 'Model Kenderaan', 'వాహన నమూనా', 'வாகன மாதிரி', 'વાહન મોડેલ', 'model maszyny', 'Модель автомобіля', 'ਵਾਹਨ ਮਾਡਲ', 'Modelul vehiculului', 'ယာဉ်မော်ဒယ်', 'Apẹẹrẹ ọkọ ayọkẹlẹ', 'Vehicle Model'),
(212, 'driver', 'Driver', 'চালক', 'Conductor', 'سائق', 'चालक', 'ڈرائیور', '司机', 'ドライバ', 'Motorista', 'Водитель', 'Chauffeur', '운전사', 'Treiber', 'autista', 'คนขับรถ', 'Sofőr', 'Bestuurder', 'agitator', 'Sopir', 'sürücü', 'Οδηγός', 'راننده', 'Pemandu', 'డ్రైవర్', 'இயக்கி', 'ડ્રાઈવર', 'Kierowca', 'Водій', 'ਡਰਾਇਵਰ', 'Conducător auto', 'မောင်းသူ', 'Awako', 'Driver'),
(213, 'vehicle_license', 'Vehicle License', 'গাড়ী লাইসেন্স', 'Licencia del vehículo', 'رخصة السيارة', 'वाहन लाइसेंस', 'گاڑیاں لائسنس', '车辆牌照', '車両ライセンス', 'Licença de veículo', 'Лицензия на автомобиль', 'Licence de véhicule', '차량 면허', 'Fahrzeuglizenz', 'Licenza del veicolo', 'ใบขับขี่', 'Gépjármű-engedély', 'Voertuig licentie', 'vehiculum License', 'Lisensi Kendaraan', 'Araç Lisansı', 'Άδεια οχήματος', 'مجوز خودرو', 'Lesen Kenderaan', 'వాహన లైసెన్సు', 'வாகன உரிமம்', 'વાહન લાઇસન્સ', 'Licencja pojazdu', 'Ліцензія на автомобіль', 'ਵਾਹਨ ਲਾਇਸੈਂਸ', 'Licența vehiculului', 'ယာဉ်လိုင်စင်', 'Iwe-aṣẹ ọkọ ayọkẹlẹ', 'Takardar Lasin Jirgin'),
(214, 'vehicle_contact', 'Vehicle Contact', 'গাড়ী যোগাযোগ', 'Contacto del vehículo', 'الاتصال مركبة', 'वाहन संपर्क', 'گاڑی سے رابطہ', '车辆接触', '車両の連絡先', 'Contato com o veículo', 'Контакт с автомобилем', 'Contact du véhicule', '차량 연락처', 'Fahrzeugkontakt', 'Contatto del veicolo', 'ติดต่อยานพาหนะ', 'Jármű kapcsolattartó', 'Contactpersoon voor voertuigen', 'Contact vehiculum', 'Kontak Kendaraan', 'Araç Teması', 'Επικοινωνία με το όχημα', 'تماس با خودرو', 'Kenalan Kenderaan', 'వాహన సంప్రదించండి', 'வாகன தொடர்பு', 'વાહન સંપર્ક', 'Kontakt z pojazdem', 'Контакт з транспортним засобом', 'ਵਾਹਨ ਸੰਪਰਕ', 'Contactul vehiculului', 'ယာဉ်ဆက်သွယ်ပါ', 'Ọkọ ọkọ ayọkẹlẹ', 'Sadarwar mota'),
(215, 'route_start', 'Route Start', 'রাস্তা শুরু', 'Ruta de inicio', 'بداية الطريق', 'रूट प्रारंभ करें', 'روٹ شروع', '路线开始', 'ルートスタート', 'Começo da rota', 'Начало маршрута', 'Début de litinéraire', '경로 시작', 'Route starten', 'Route Start', 'เริ่มต้นเส้นทาง', 'Útvonal indítása', 'Route Start', 'Satus route', 'Mulai rute', 'Yol Başlat', 'Έναρξη διαδρομής', 'شروع مسیر', 'Jalankan Permulaan', 'రూట్ ప్రారంభం', 'வழி தொடக்கம்', 'રૂટ પ્રારંભ', 'Rozpocznij trasę', 'Початок маршруту', 'ਰੂਟ ਸਟਾਰਟ', 'Urmați traseul', 'လမ်းကြောင်း Start ကို', 'Ibẹrẹ ọna', 'Fara hanya'),
(216, 'route_end', 'Route End', 'রাস্তা শেষ', 'Ruta final', 'نهاية الطريق', 'मार्ग समाप्ति', 'روٹ اختتام', '路线结束', 'ルートエンド', 'Fim da rota', 'Маршрутный конец', 'Fin de la route', '국도 끝', 'Routenende', 'Route End', 'Route End', 'Útvonal vége', 'Route einde', 'iter itineris finis', 'Akhir rute', 'Güzergah sonu', 'Διαδρομή διαδρομής', 'پایان مسیر', 'Laluan Akhir', 'మార్గం ఎండ్', 'முடிவடையும்', 'રૂટ એન્ડ', 'Koniec trasy', 'Кінець маршруту', 'ਰੂਟ ਐਂਡ', 'Traseul final', 'လမ်းကြောင်းအဆုံး', 'Ipari Ipa', 'Ƙare Ƙare'),
(217, 'route_fare', 'Route Fare', 'রাস্তা ভাড়া', 'Ruta de la ruta', 'الطريق الأجرة', 'रूट किराया', 'راستے کی قسم', '路线结束', 'ルート運賃', 'Tarifa de rota', 'Маршрутная плата', 'Route Fare', '노선 요금', 'Route Tarif', 'Itinerario', 'ค่าโดยสารเส้นทาง', 'Útvonali vásárlás', 'Route tarief', 'Bene route', 'Tarif rute', 'Yol Ücreti', 'Διαδρομή διαδρομής', 'کرایه تاکسی', 'Tambang Laluan', 'రూట్ ఫేర్', 'வழி கட்டணம்', 'રૂટ ફેર', 'Opłata za przejazd', 'Вартість маршруту', 'ਰੂਟ ਕਿਰਾਇਆ', 'Route Fare', 'လမ်းကြောင်းလက်မှတ်ခများ', 'Ipa itọsọna', 'Route Fare'),
(751, 'vehicle_for_route', 'Vehicle for Route', 'রুট যানবাহন', 'Vehículo para la ruta', 'مركبة للطريق', 'मार्ग के लिए वाहन', 'روٹ کے لئے گاڑی', '路线车辆', 'ルートの車両', 'Veículo para rota', 'Автомобиль для маршрута', 'Véhicule pour Route', '국도 용 차량', 'Fahrzeug für die Route', 'Veicolo per il percorso', 'ยานพาหนะสำหรับเส้นทาง', 'Jármű az útvonalhoz', 'Voertuig voor route', 'Vehiculum itineris', 'Kendaraan untuk Rute', 'Güzergah için araç', 'Οχήματος για τη διαδρομή', 'وسیله نقلیه برای مسیر', 'Kenderaan untuk Laluan', 'మార్గం కోసం వాహనం', 'பாதைக்கான வாகனம்', 'રૂટ માટે વાહન', 'Pojazd dla trasy', 'Автомобіль для маршруту', 'ਰੂਟ ਲਈ ਵਾਹਨ', 'Vehicul pentru traseu', 'လမ်းကြောင်းများအတွက်ယာဉ်', 'Ọkọ ayọkẹlẹ fun Itọsọna', 'Mota don Hanyar'),
(752, 'fee', 'Fee', 'ফী', 'Cuota', 'رسوم', 'शुल्क', 'فیس', '费用', '費用', 'Taxa', 'плата', 'Frais', '보수', 'Gebühr', 'tassa', 'ค่าธรรมเนียม', 'Díj', 'honorarium', 'fee', 'Biaya', 'ücret', 'Τέλη', 'هزینه', 'Bayaran', 'ఫీజు', 'கட்டணம்', 'ફી', 'Opłata', 'Комісія', 'ਫੀਸ', 'taxă', 'ကြေး', 'Awọn owo sisan', 'Fee'),
(753, 'stop_name', 'Stop Name', 'স্টপ নাম', 'Nombre de parada', 'اسم التوقف', 'नाम बंद करो', 'نام بند کرو', '停止名称', '停止名', 'Parar Nome', 'Остановить имя', 'Arrêter le nom', '이름 중지', 'Stoppen Sie den Namen', 'Arresta il nome', 'ชื่อหยุด', 'Nevezzen meg nevet', 'Stop Naam', 'nomen subsisto', 'Hentikan Nama', 'Adı Durdur', 'Διακοπή ονόματος', 'نام توقف', 'Hentikan Nama', 'పేరు ఆపండి', 'பெயர் நிறுத்து', 'નામ રોકો', 'Zatrzymaj nazwę', 'Зупинити імя', 'ਨਾਂ ਰੋਕੋ', 'Opriți numele', 'အမည်ရပ်တန့်', 'Duro Orukọ', 'Tsaya sunan'),
(754, 'stop_km', 'Stop KM', 'স্টপ কে এম', 'Detener KM', 'وقف كم', 'केएम बंद करो', 'KM بند کرو', '停止KM', 'KMを停止', 'Pare KM', 'Стоп КМ', 'Arrêtez KM', 'KM 중지', 'Stoppen Sie KM', 'Stop KM', 'หยุด KM', 'Stop KM', 'Stop KM', 'nolite KM', 'Hentikan KM', 'KM durdur', 'Διακοπή KM', 'توقف KM', 'Hentikan KM', 'KM ఆపు', 'KM ஐ நிறுத்தவும்', 'KM રોકો', 'Zatrzymaj KM', 'Зупинити КМ', 'KM ਰੋਕੋ', 'Opriți KM', 'KM ရပ်တန့်', 'Duro KM', 'Tsaya KM'),
(755, 'stop_fare', 'Stop Fare', 'স্টপ ভাড়া', 'Detener la tarifa', 'وقف الأجرة', 'किराया बंद करो', 'کرایہ بند کرو', '停止票价', '運賃を停止する', 'Parar tarifa', 'Остановить тариф', 'Arrêter le tarif', '운임 할인', 'Stop Fare', 'Stop Fare', 'หยุดค่าโดยสาร', 'Stop Fare', 'Stop tarief', 'Bene subsisto', 'Hentikan Tarif', 'Ücreti Durdur', 'Σταματήστε το Φόρεμα', 'کرایه را متوقف کنید', 'Hentikan tambang', 'ఫేర్ ఆపివేయి', 'ஃபேர் நிறுத்து', 'ભાડું રોકો', 'Stop Fare', 'Зупинити вартість проїзду', 'ਫਾਰ ਰੋਕੋ', 'Opriți tariful', 'stop လက်မှတ်ခများ', 'Duro Iduro', 'Dakatar da Fare'),
(756, 'add_more', 'Add More', 'আরো যোগ করো', 'Añadir más', 'أضف المزيد', 'अधिक जोड़ें', 'مزید شامل کریں', '添加更多', 'さらに追加', 'Adicione mais', 'Добавить больше', 'Ajouter plus', '더 추가', 'Mehr hinzufügen', 'Aggiungere altro', 'เพิ่มอีก', 'Adj hozzá többet', 'Voeg meer toe', 'Add More', 'Tambahkan Lebih Banyak', 'Daha ekle', 'Πρόσθεσε περισσότερα', 'اضافه کردن بیشتر', 'Tambah lebih banyak', 'మరిన్ని జోడించండి', 'மேலும் சேர்க்கவும்', 'વધુ ઉમેરો', 'Dodaj więcej', 'Додати більше', 'ਹੋਰ ਜੋੜੋ', 'Adăuga mai mult', 'နောက်ထပ် Add', 'Fi Die e sii', 'Ƙara Ƙari'),
(757, 'route_stop_fare', 'Route Stop Fare', 'রুট স্টপ ভাড়া', 'Ruta detener tarifa', 'Route Stop Fare', 'मार्ग बंद किराया', 'روٹ سٹاپ کرایہ', '路线止损票价', 'ルートストップ運賃', 'Tarifa de parada de rota', 'Маршрутная остановка', 'Itinéraire Tarif darrêt', '노선 정지 요금', 'Route Stop Tarif', 'Route Stop Fare', 'หยุดการเดินทาง', 'Útvonal leállítása', 'Route stop tarief', 'Bene nolite route', 'Route Stop Fare', 'Rota Durdurma Ücreti', 'Διακοπή διαδρομής', 'هزینه توقف مسیر', 'Bayaran Henti Laluan', 'రూట్ స్టాప్ ఫేర్', 'வழி நிறுத்து கட்டணம்', 'રૂટ સ્ટોપ ફેર', 'Cena przejazdu trasy', 'Вартість зупинки маршруту', 'ਰੂਟ ਸਟਾਪ ਫਰਾਈ', 'Traseul opri tariful', 'လမ်းကြောင်း Stop လက်မှတ်ခများ', 'Ilana Duro Itọsọna', 'fitar da Tsaya Tsaya'),
(219, 'hostel_type', 'Hostel Type', 'ছাত্রাবাস ধরন', 'Tipo de Hostal', 'نوع نزل', 'छात्रावास का प्रकार', 'ہاسٹل کی قسم', '旅馆类型', 'ホステルタイプ', 'Tipo de albergue', 'Тип хостела', 'Type dauberge', '호스텔 유형', 'Herbergsart', 'Tipo di ostello', 'ประเภท Hostel', 'Szálló típusa', 'Hostel type', 'Type Hostel', 'Tipe asrama', 'Pansiyon Türü', 'Τύπος Hostel', 'نوع خوابگاه', 'Jenis Hostel', 'హాస్టల్ పద్ధతి', 'விடுதி வகை', 'છાત્રાલયનો પ્રકાર', 'Typ hostelu', 'Тип хостелу', 'ਹੋਸਟਲ ਦੀ ਕਿਸਮ', 'Tipul de hostel', 'ဘော်ဒါဆောင်အမျိုးအစား', 'Agbegbe Iru', 'Dakunan kwanan dalibai'),
(220, 'seat_total', 'Seat Total', 'আসন মোট', 'Asiento total', 'المقعد الكلي', 'सीट कुल', 'سیٹ کل', '座位总数', 'シート合計', 'Total do assento', 'Общее количество сидячих мест', 'Siège Total', '좌석 합계', 'Sitzplatz gesamt', 'Totale del sedile', 'ที่นั่งรวม', 'Seat Total', 'Seat Total', 'sede Summa', 'Kursi Total', 'Koltuk Toplam', 'Θέση Σύνολο', 'صندلی مجموع', 'Jumlah tempat duduk', 'సీట్ మొత్తం', 'மொத்த எண்ணிக்கை', 'બેઠક કુલ', 'Seat Total', 'Загальна кількість сидінь', 'ਸੀਟ ਕੁੱਲ', 'Seat Total', 'ထိုင်ခုံစုစုပေါင်း', 'Okun apapọ', 'Tsawon kuɗi'),
(221, 'cost_per_seat', 'Cost per Seat', 'আসন প্রতি খরচ', 'Costo por asiento', 'التكلفة لكل مقعد', 'सीट प्रति सीट', 'فی سیٹ لاگت', '每个座位的成本', '1シートあたりのコスト', 'Custo por assento', 'Стоимость за место', 'Coût par siège', '좌석 당 비용', 'Kosten pro Sitzplatz', 'Costo per posto', 'ต้นทุนต่อที่นั่ง', 'Tartózkodási költség', 'Kosten per stoel', 'Sumptus per propitiatorium,', 'Biaya per Kursi', 'Koltuk Başına Maliyet', 'Κόστος ανά Θέση', 'هزینه هر صندلی', 'Kos setiap Tempat Duduk', 'సీట్కు ఖర్చు', 'உட்கட்டமைப்புக்கான செலவு', 'સીટ દીઠ ખર્ચ', 'Koszt za miejsce', 'Вартість за місце', 'ਪ੍ਰਤੀ ਸੀਟ ਦੀ ਲਾਗਤ', 'Cost pe scaun', 'ထိုင်ခုံနှုန်းကုန်ကျစရိတ်', 'Iye owo fun ijoko', 'Kudin da Seat'),
(222, 'compose', 'Compose', 'লিখা', 'Componer', 'مؤلف موسيقى', 'लिखना', 'تحریر کریں', '撰写', '作成する', 'Compor', 'компоновать', 'Composer', '짓다', 'Komponieren', 'Comporre', 'แต่ง', 'Összeállít', 'Componeren', 'Componere epistolas', 'Menyusun', 'oluşturmak', 'Συνθέτω', 'ساختن', 'Tuliskan', 'కంపోజ్', 'எழுது', 'લખો', 'Komponować', 'Скласти', 'ਲਿਖੋ', 'Compune', 'compose', 'Ṣajọ', 'Shirya'),
(223, 'folder', 'Folder', 'ফোল্ডার', 'Carpeta', 'مجلد', 'फ़ोल्डर', 'فولڈر', '夹', 'フォルダ', 'Pasta', 'скоросшиватель', 'Dossier', '폴더', 'Mappe', 'Cartella', 'โฟลเดอร์', 'Folder', 'Map', 'folder', 'Map', 'Klasör', 'Ντοσιέ', 'پوشه', 'Folder', 'ఫోల్డర్', 'அடைவு', 'ફોલ્ડર', 'Teczka', 'Папка', 'ਫੋਲਡਰ', 'Pliant', 'ဖိုငျတှဲ', 'Folda', 'Jaka'),
(224, 'inbox', 'Inbox', 'ইনবক্স', 'Bandeja de entrada', 'صندوق الوارد', 'इनबॉक्स', 'ان باکس', '收件箱', '受信トレイ', 'Caixa de entrada', 'входящие', 'Boîte de réception', '받은 편지함', 'Posteingang', 'Posta in arrivo', 'กล่องขาเข้า', 'Bejövő', 'Postvak IN', 'inbuxo', 'Kotak masuk', 'Gelen kutusu', 'Inbox', 'صندوق ورودی', 'Peti masuk', 'ఇన్బాక్స్', 'உட்பெட்டி', 'ઇનબૉક્સ', 'W pudełku', 'Вхідні', 'ਇਨਬਾਕਸ', 'Inbox', 'inbox ထဲမှာ', 'Apo-iwọle', 'Inbox'),
(225, 'draft', 'Draft', 'ড্রাফ্ট্', 'Borrador', 'مشروع', 'प्रारूप', 'ڈرافٹ', '草案', 'ドラフト', 'Esboço, projeto', 'Проект', 'Brouillon', '초안', 'Entwurf', 'Bozza', 'ร่าง', 'vázlat', 'Droogte', 'capturam', 'Konsep', 'taslak', 'Προσχέδιο', 'پیش نویس', 'Draf', 'డ్రాఫ్ట్', 'வரைவு', 'ડ્રાફ્ટ', 'Wersja robocza', 'Чернетка', 'ਡਰਾਫਟ', 'Proiect', 'မူကြမ်း', 'Ifaworanhan', 'Shafin'),
(226, 'trash', 'Trash', 'ট্র্যাশ', 'Basura', 'قمامة، يدمر، يهدم', 'कचरा', 'ردی کی ٹوکری', '垃圾', 'ごみ', 'Lixo', 'дрянь', 'Poubelle', '폐물', 'Müll', 'Spazzatura', 'ขยะ', 'Szemét', 'uitschot', 'quisquiliae', 'Sampah', 'Çöp', 'Σκουπίδια', 'زباله ها', 'Sampah', 'ట్రాష్', 'குப்பைக்கு', 'ટ્રૅશ', 'Śmieci', 'Сміття', 'ਟ੍ਰੈਸ਼', 'Gunoi', 'အသုံးမရသောအရာ', 'Idọti', 'Shara'),
(227, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'సందేశం', 'செய்தி', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'မက်ဆေ့ခ်ျကို', 'Ifiranṣẹ', 'Saƙo'),
(228, 'discard', 'Discard', 'বাতিল', 'Descarte', 'تجاهل', 'छोड़ना', 'رکھو', '丢弃', '破棄', 'Descartar', 'отбрасывать', 'Jeter', '포기', 'Verwerfen', 'Scartare', 'ทิ้ง', 'Dobja', 'afdanken', 'Relinquere', 'Membuang', 'ıskarta', 'Απορρίπτω', 'نادیده گرفتن', 'Buang', 'విస్మరించు', 'நிராகரி', 'કાઢી નાખો', 'Odrzucać', 'Відхилити', 'ਬਰਖਾਸਤ ਕਰੋ', 'decarta', 'စွန့်ပစ်', 'Ṣabọ', 'Zubar da'),
(229, 'receiver_type', 'Receiver Type', 'প্রাপক প্রকার', 'Tipo de receptor', 'نوع جهاز الاستقبال', 'प्राप्तकर्ता प्रकार', 'رسیور کی قسم', '接收器类型', '受信機タイプ', 'Tipo de receptor', 'Тип приемника', 'Type de récepteur', '수신기 유형', 'Empfängertyp', 'Tipo di ricevitore', 'ประเภทตัวรับสัญญาณ', 'Vevőtípus', 'Ontvanger Type', 'Type receptorem', 'Jenis Penerima', 'Alıcı Türü', 'Τύπος δέκτη', 'نوع گیرنده', 'Jenis Penerima', 'స్వీకర్త పద్ధతి', 'பெறுநர் வகை', 'રીસીવર પ્રકાર', 'Typ odbiornika', 'Тип приймача', 'ਪ੍ਰਾਪਤਕਰਤਾ ਕਿਸਮ', 'Tip receptor', 'receiver အမျိုးအစား', 'Gbigba Iru', 'Mai karɓa iri'),
(230, 'receiver', 'Receiver', 'প্রাপক', 'Receptor', 'المتلقي', 'रिसीवर', 'وصول کنندہ', '接收器', '受信機', 'Receptor', 'Получатель', 'Destinataire', '리시버', 'Empfänger', 'Ricevitore', 'ผู้รับ', 'Receiver', 'Ontvanger', 'receptor', 'Penerima', 'Alıcı', 'Δέκτης', 'گیرنده', 'Penerima', 'స్వీకర్త', 'ரிசீவர்', 'રીસીવર', 'Odbiorca', 'Приймач', 'ਪ੍ਰਾਪਤਕਰਤਾ', 'Receptor', 'လက်ခံ', 'olugba', 'Mai karɓar'),
(231, 'time', 'Time', 'সময়', 'Hora', 'زمن', 'पहर', 'وقت', '时间', '時間', 'Tempo', 'Время', 'Temps', '시각', 'Zeit', 'Tempo', 'เวลา', 'Idő', 'Tijd', 'Tempus', 'Waktu', 'Zaman', 'χρόνος', 'زمان', 'Masa', 'సమయం', 'நேரம்', 'સમય', 'Czas', 'Час', 'ਸਮਾਂ', 'Timp', 'အချိန်', 'Aago', 'Lokaci'),
(232, 'read_message', 'Read Message', 'বার্তা পড়ুন', 'Leer el mensaje', 'اقرأ الرساله', 'संदेश पढ़ना', 'پیغام پڑھیں', '阅读消息', 'メッセージを読む', 'Leia a mensagem', 'Читать сообщение', 'Lire le message', '메시지 읽기', 'Lies die Nachricht', 'Leggi il messaggio', 'อ่านข้อความ', 'Üzenet olvasása', 'Lees bericht', 'Read Nuntius', 'Baca pesan', 'Mesajı oku', 'Διαβάστε το μήνυμα', 'خواندن پیام', 'Baca Mesej', 'సందేశం చదవండి', 'செய்தி வாசிக்கவும்', 'સંદેશ વાંચો', 'Czytać wiadomość', 'Читати повідомлення', 'ਸੁਨੇਹਾ ਪੜ੍ਹੋ', 'Citiți mesajul', 'ကို Message ကိုဖတ်ပါ', 'Ka Ifiranṣẹ', 'Karanta Saƙo'),
(233, 'reply', 'Reply', 'উত্তর', 'Respuesta', 'الرد', 'जवाब दे दो', 'جواب دیں', '回复', '応答', 'Resposta', 'Ответить', 'Répondre', '댓글', 'Antworten', 'rispondere', 'ตอบ', 'Válasz', 'Antwoord', 'Respondeo', 'Balasan', 'cevap', 'Απάντηση', 'پاسخ', 'Balas', 'ప్రత్యుత్తరం', 'பதில்', 'જવાબ આપો', 'Odpowiadać', 'Відповідь', 'ਜਵਾਬ ਦਿਉ', 'Răspuns', 'ပြန်ကြားချက်', 'Idahun', 'Amsa'),
(234, 'attachment', 'Attachment', 'সংযুক্তি', 'Adjunto archivo', 'المرفق', 'आसक्ति', 'منسلکہ', '附件', 'アタッチメント', 'Anexo', 'прикрепление', 'Attachement', '부착', 'Befestigung', 'attaccamento', 'ความผูกพัน', 'Attachment', 'gehechtheid', 'affectum', 'Lampiran', 'Ek dosya', 'Συνημμένο', 'ضمیمه', 'Lampiran', 'జోడింపు', 'இணைப்பு', 'જોડાણ', 'Załącznik', 'Вкладення', 'ਅਟੈਚਮੈਂਟ', 'Atașament', 'ပူးတွဲမှု', 'Asopọ', 'Abin haɗi'),
(235, 'dynamic_tag', 'Dynamic Tag', 'ডায়নামিক ট্যাগ', 'Etiqueta dinámica', 'علامة ديناميكية', 'डायनेमिक टैग', 'متحرک ٹیگ', '动态标签', '動的タグ', 'Tag dinâmico', 'Динамический тег', 'Balise dynamique', '동적 태그', 'Dynamische Markierung', 'Tag dinamico', 'แท็กแบบไดนามิก', 'Dinamikus címke', 'Dynamische tag', 'dynamic Omega', 'Tag Dinamis', 'Dinamik Etiket', 'Δυναμική ετικέτα', 'برچسب پویا', 'Tag Dinamik', 'డైనమిక్ ట్యాగ్', 'டைனமிக் டேக்', 'ડાયનેમિક ટૅગ', 'Tag dynamiczny', 'Динамічний тег', 'ਡਾਇਨਾਮਿਕ ਟੈਗ', 'Etichetă dinamică', 'dynamic Tag ကို', 'Atilẹyin Ayika', 'Dynamic Tag'),
(236, 'gateway', 'Gateway', 'গেটওয়ে', 'Puerta', 'بوابة', 'द्वार', 'گیٹ وے', '网关', 'ゲートウェイ', 'Gateway', 'шлюз', 'passerelle', '게이트웨이', 'Tor', 'porta', 'ประตู', 'Gateway', 'poort', 'porta', 'pintu gerbang', 'geçit', 'πύλη', 'دروازه', 'Gateway', 'గేట్వే', 'நுழைவாயில்', 'ગેટવે', 'Przejście', 'Шлюз', 'ਗੇਟਵੇ', 'portal', 'တံခါးပေါက်', 'Ẹnu-ọna', 'Ƙofar waje'),
(237, 'email_body', 'Email Body', 'ইমেইল বডি', 'Cuerpo del correo electronico', 'هيئة البريد الإلكتروني', 'ईमेल बॉडी', 'ای میل جسم', '电子邮件正文', 'メール本文', 'Corpo do e-mail', 'Тело письма', 'Corps de le-mail', '이메일 본문', 'Nachrichtentext', 'Email Corpo', 'Email Body', 'Email Body', 'E-mail body', 'Email Corpus', 'Email Tubuh', 'E-posta Gövdesi', 'Σώμα ηλεκτρονικού ταχυδρομείου', 'بدن ایمیل', 'Badan E-mel', 'ఇమెయిల్ బాడీ', 'மின்னஞ்சல் உடல்', 'ઇમેઇલ શારીરિક', 'Treść e-maila', 'Email Body', 'ਈਮੇਲ ਬਾਡੀ', 'Organismul de e-mail', 'အီးမေးလ်ပို့ရန်ခန္ဓာကိုယ်', 'Imeeli Ara', 'Jikin Jiki'),
(238, 'notice_for', 'Notice for', 'নোটিশ ফর', 'Aviso para', 'إشعار ل', 'के लिए सूचना', 'نوٹس', '通知', 'お知らせ', 'Aviso para', 'Уведомление для', 'Avis pour', '공지 사항', 'Hinweis für', 'Avviso per', 'แจ้งให้ทราบ', 'Figyelmeztetés', 'Kennisgeving voor', 'notitia est', 'Pemberitahuan untuk', 'Için bildirim', 'Ειδοποίηση για', 'برای', 'Notis untuk', 'గమనించండి', 'கவனிக்கவும்', 'માટે નોટિસ', 'Powiadomienie dla', 'Зверніть увагу на', 'ਲਈ ਨੋਟਿਸ', 'Notă pentru', 'မှုအတွက်အသိပေးစာ', 'Akiyesi fun', 'Lura don'),
(239, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'तारीख', 'تاریخ', '日期', '日付', 'Encontro', 'Дата', 'Rendez-vous amoureux', '날짜', 'Datum', 'Data', 'วันที่', 'Dátum', 'Datum', 'Date', 'Tanggal', 'tarih', 'Ημερομηνία', 'تاریخ', 'Tarikh', 'తేదీ', 'தேதி', 'તારીખ', 'Data', 'Дата', 'ਤਾਰੀਖ', 'Data', 'နေ့စှဲ', 'Ọjọ', 'Kwanan wata'),
(240, 'from_date', 'From Date', 'তারিখ হইতে', 'Partir de la fecha', 'من التاريخ', 'तारीख से', 'اس تاریخ سے', '从日期', '日付から', 'Da data', 'С даты', 'Partir de la date', '날짜부터', 'Ab Datum', 'Dalla data', 'จากวันที่', 'Dátumtól', 'Van datum', 'Ex Date', 'Dari tanggal', 'İtibaren', 'Από την ημερομηνία', 'از تاریخ', 'Dari tarikh', 'తేదీ నుంచి', 'தேதி முதல்', 'તારીખથી', 'Od daty', 'Від дати', 'ਮਿਤੀ ਤੋਂ', 'Din data', 'နေ့စွဲကနေ', 'Lati Ọjọ', 'Daga Kwanan wata'),
(241, 'to_date', 'To Date', 'তারিখ পর্যন্ত', 'Hasta la fecha', 'ان يذهب في موعد', 'तारीख तक', 'تاریخ تک', '至今', '現在まで', 'Até a presente data', 'Встретиться1', 'À ce jour', '오늘까지', 'Miteinander ausgehen', 'Ad oggi', 'ถึงวันที่', 'Randizni', 'Daten', 'Ad Date', 'Saat ini', 'Bugüne kadar', 'Μέχρι σήμερα', 'به روز', 'Untuk Tarikh', 'తేదీ వరకు', 'தேதி', 'આજ સુધી', 'Spotykać się z kimś', 'До дати', 'ਮਿਤੀ ਤੱਕ', 'La zi', 'ယနေ့အထိ', 'Titi di akoko yi', 'Don Kwanan wata'),
(242, 'image', 'Image', 'ইমেজ', 'Imagen', 'صورة', 'छवि', 'تصویر', '图片', '画像', 'Imagem', 'Образ', 'Image', '영상', 'Bild', 'Immagine', 'ภาพ', 'Kép', 'Beeld', 'Image', 'Gambar', 'görüntü', 'Εικόνα', 'تصویر', 'Gambar', 'చిత్రం', 'பட', 'છબી', 'Obraz', 'Зображення', 'ਚਿੱਤਰ', 'Imagine', 'image ကို', 'Aworan', 'Hoton hoto'),
(243, 'event_for', 'Event for', 'ইভেন্ট ফর', 'Evento para', 'حدث ل', 'के लिए घटना', 'کے لئے واقعہ', '事件', 'イベント', 'Evento para', 'Событие для', 'Événement pour', '이벤트', 'Ereignis für', 'Evento per', 'กิจกรรมสำหรับ', 'Esemény', 'Evenement voor', 'res enim', 'Acara untuk', 'Için Etkinlik', 'Εκδήλωση για', 'رویداد برای', 'Acara untuk', 'ఈవెంట్ కోసం', 'நிகழ்வு', 'માટે ઇવેન્ટ', 'Wydarzenie dla', 'Подія для', 'ਲਈ ਇਵੈਂਟ', 'Eveniment pentru', 'များအတွက်အဖြစ်အပျက်', 'Iṣẹlẹ fun', 'Aukuwa don'),
(244, 'event_place', 'Event Place', 'ইভেন্ট স্থান', 'Lugar del evento', 'مكان الحدث', 'इवेंट प्लेस', 'واقعہ کی جگہ', '活动地点', 'イベント会場', 'Lugar do Evento', 'Место проведения мероприятия', 'Lieu de lévénement', '행사 장소', 'Veranstaltungsort', 'Luogo dellevento', 'สถานที่จัดงาน', 'Rendezvényhelyszín', 'Evenementplaats', 'res Locus Iste', 'Tempat acara', 'Etkinlik Yeri', 'Τόπος εκδήλωσης', 'محل برگزاری', 'Tempat Acara', 'ఈవెంట్ ప్లేస్', 'நிகழ்வு இடம்', 'ઇવેન્ટ પ્લેસ', 'Miejsce zdarzenia', 'Місце проведення', 'ਇਵੈਂਟ ਸਥਾਨ', 'Locul evenimentului', 'အဖြစ်အပျက်နေရာ', 'Ibi ti o ṣe', 'Tarihin Lura'),
(245, 'coming_from', 'Coming From', 'যেখান থেকে আসছে', 'Procedente de', 'القادمة من', 'से आ रही', 'سے آنے والے', '来自（哪里', 'から来る', 'Vindo de', 'Приходящий из', 'Provenir de', '에서 오는', 'Kommen von', 'Proveniente da', 'มาจาก', 'Jön valahonnan', 'Afkomstig uit', 'Ex', 'Berasal dari', 'Gelen', 'Που προέρχονται από', 'داره میاد از', 'Yang datang dari', 'వస్తున్నది', 'வரவிருக்கிறது', 'આવતા', 'Pochodzi z', 'Виходячи з', 'ਤੋਂ ਆ ਰਿਹਾ ਹੈ', 'Provin de la', 'မှစ. လာမယ့်', 'Wiwa Lati', 'Zuwan Daga'),
(246, 'to_meet', 'To Meet', 'যার সাথে দেখা করবে', 'Conocer', 'لكي نلتقي', 'मीलऩा', 'ملنے کے لئے', '见面', '会う', 'Encontrar', 'Встречаться', 'Rencontrer', '만나다', 'Treffen', 'Incontrare', 'พบ', 'Találkozni', 'Ontmoeten', 'Convenire', 'Bertemu', 'Tanışmak', 'Να συναντησω', 'برای دیدار با', 'Berjumpa', 'కలవడం', 'சந்திக்க', 'મળવા', 'Spotkać', 'Зустріти', 'ਮਿਲਣ ਲਈ', 'A întâlni', 'တွေ့ဖို့', 'Lati pade', 'Don saduwa'),
(247, 'reason_to_meet', 'Reason to Meet', 'দেখা করার কারণ', 'Motivo para reunirse', 'سبب الاجتماع', 'मिलने का कारण', 'ملاقات کرنے کی وجہ', '满足的理由', '会う理由', 'Razão para conhecer', 'Причина встречи', 'Raison de rencontrer', '만나는 이유', 'Grund zu treffen', 'Motivo per incontrarsi', 'เหตุผลที่จะพบ', 'A találkozás oka', 'Reden om te ontmoeten', 'Ratio ut meet', 'Alasan untuk bertemu', 'Tanışma Nedeni', 'Λόγος για να συναντήσω', 'دلیل برای دیدار', 'Sebab untuk Bertemu', 'కలుసుకోవడానికి కారణం', 'சந்திக்க காரணம்', 'મળવા કારણ', 'Powód do spotkania', 'Привід зустрітися', 'ਮਿਲਣ ਦਾ ਕਾਰਨ', 'Motivul pentru a satisface', 'တွေ့ဆုံဖို့အကြောင်းရင်း', 'Idi lati pade', 'Dalili na Saduwa'),
(248, 'check_in', 'Check In', 'চেক ইন', 'Registrarse', 'تحقق في', 'चेक इन', 'چیک کریں', '报到', 'チェックイン', 'Check-in', 'Регистрироваться', 'Enregistrement', '체크인', 'Check-In', 'Registrare', 'เช็คอิน', 'Becsekkolás', 'Check in', 'Reprehendo in', 'Mendaftar', 'Giriş', 'Παραδίδω αποσκευές', 'چک کردن', 'Daftar masuk', 'చెక్ ఇన్ చేయండి', 'சரிபார்க்கவும்', 'ચેક ઇન કરો', 'Zameldować się', 'Перевірь', 'ਚੈੱਕ ਇਨ ਕਰੋ', 'Verifica', 'ရောက်ရှိကြောင်းစာရင်းသွင်းခြင်း', 'Wole sinu', 'Rajistan shiga'),
(249, 'check_out', 'Check Out', 'চেক আউট', 'Revisa', 'الدفع', 'चेक आउट', 'اس کو دیکھو', '查看', 'チェックアウト', 'Confira', 'Проверять, выписываться', 'Check-out', '체크 아웃', 'Auschecken', 'Check-out', 'เช็คเอาท์', 'Kijelentkezés', 'Uitchecken', 'reprehendo de', 'Periksa', 'Çıkış yapmak', 'Ολοκλήρωση αγοράς', 'وارسی', 'Semak Keluar', 'తనిఖీ చేయండి', 'பாருங்கள்', 'તપાસો', 'Sprawdzić', 'Перевірити', 'ਕਮਰਾ ਛੱਡ ਦਿਓ', 'Verifică', 'ထွက်ခွာသည်', 'Ṣayẹwo', 'Duba Out'),
(250, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'रकम', 'رقم', '量', '量', 'Montante', 'Количество', 'Montant', '양', 'Menge', 'Quantità', 'จำนวน', 'Összeg', 'Bedrag', 'tantum', 'Jumlah', 'Miktar', 'Ποσό', 'میزان', 'Jumlah', 'మొత్తం', 'தொகை', 'રકમ', 'Ilość', 'Сума', 'ਦੀ ਰਕਮ', 'Cantitate', 'ငွေပမာဏ', 'Iye', 'Adadin'),
(251, 'discount', 'Discount', 'ছাড়', 'Descuento', 'خصم', 'छूट', 'ڈسکاؤنٹ', '折扣', 'ディスカウント', 'Desconto', 'скидка', 'Discount', '할인', 'Rabatt', 'Sconto', 'ส่วนลด', 'Kedvezmény', 'Korting', 'Buy', 'Diskon', 'İndirim', 'Εκπτωση', 'تخفیف', 'Diskaun', 'డిస్కౌంట్', 'தள்ளுபடி', 'ડિસ્કાઉન્ટ', 'Zniżka', 'Знижка', 'ਛੂਟ', 'Reducere', 'လျှော့စျေး', 'iye owo', 'Dama'),
(253, 'print', 'Print', 'প্রিন্ট', 'Impresión', 'طباعة', 'छाप', 'پرنٹ کریں', '打印', '印刷', 'Impressão', 'Распечатать', 'Impression', '인쇄', 'Drucken', 'Stampare', 'พิมพ์', 'Nyomtatás', 'Afdrukken', 'Print', 'Mencetak', 'baskı', 'Τυπώνω', 'چاپ', 'Cetak', 'ప్రింట్', 'அச்சு', 'છાપો', 'Wydrukować', 'Друк', 'ਛਾਪੋ', 'Imprimare', 'ပုံနှိပ်', 'Tẹjade', 'Buga'),
(254, 'paid', 'Paid', 'পরিশোদ', 'Pagado', 'دفع', 'भुगतान किया है', 'ادا کیا', '付费', '有料', 'Pago', 'оплаченный', 'Payé', '유료', 'Bezahlt', 'Pagato', 'ต้องจ่าย', 'Fizetett', 'Betaald', 'pretium', 'Dibayar', 'ödenmiş', 'επί πληρωμή', 'پرداخت شده', 'Dibayar', 'చెల్లింపు', 'பணம்', 'ચૂકવેલ', 'Płatny', 'Оплачений', 'ਦਾ ਭੁਗਤਾਨ', 'Plătit', 'paid', 'San', 'An biya'),
(255, 'subtotal', 'Subtotal', 'উপমোট', 'Total parcial', 'حاصل الجمع', 'उप-योग', 'ذیلی کل', '小计', '小計', 'Subtotal', 'Промежуточный итог', 'Total', '소계', 'Zwischensumme', 'totale parziale', 'ไม่ทั้งหมด', 'Részösszeg', 'Subtotaal', 'Subtotal', 'Subtotal', 'ara toplam', 'ΜΕΡΙΚΟ ΣΥΝΟΛΟ', 'کل حجم', 'jumlah kecil', 'పూర్తికాని', 'கூட்டுத்தொகை', 'પેટાસરવાળો', 'Suma częściowa', 'Сумарно', 'ਉਪ-ਕੁੱਲ', 'Subtotal', 'စုစုပေါင်း', 'Atokun', 'Subtotal'),
(256, 'method', 'Method', 'পদ্ধতি', 'Método', 'طريقة', 'तरीका', 'طریقہ', '方法', '方法', 'Método', 'метод', 'Méthode', '방법', 'Methode', 'Metodo', 'วิธี', 'Módszer', 'Methode', 'modum', 'metode', 'Yöntem', 'Μέθοδος', 'روش', 'Kaedah', 'విధానం', 'செய்முறை', 'પદ્ધતિ', 'metoda', 'Метод', 'ਵਿਧੀ', 'Metodă', 'နည်းလမ်း', 'Ọna', 'Hanyar'),
(257, 'payment_via', 'Payment Via', 'পেমেন্ট মাধ্যমে', 'Pago a través de', 'الدفع عن طريق', 'भुगतान के माध्यम से', 'ادائیگی کے ذریعے', '付款通过', '支払い方法', 'Pagamento através', 'Оплата через', 'Paiement Via', '지불 비아', 'Zahlung über', 'Pagamento Via', 'ชำระเงินผ่านทาง', 'Fizetés Via', 'Betaling Via', 'Payment Via', 'Pembayaran melalui', 'Ödeme Via', 'Πληρωμή μέσω Via', 'پرداخت از طریق', 'Pembayaran Melalui', 'చెల్లింపు ద్వారా', 'செலுத்தும் வழியாக', 'ચુકવણી વાયા', 'Płatność przez', 'Оплата Via', 'ਦੁਆਰਾ ਭੁਗਤਾਨ ਭੁਗਤਾਨ', 'Plata prin', 'ငွေပေးချေမှုရမည့်မှတစ်ဆင့်', 'Isanwo Nipasẹ', 'Biyan kuɗi ta hanyar'),
(259, 'yearly', 'Yearly', 'বার্ষিক', 'Anual', 'سنوي', 'सालाना', 'سالانہ', '每年', '毎年', 'Anual', 'каждый год', 'Annuel', '매년', 'Jährlich', 'Annuale', 'รายปี', 'Évi', 'jaar-', 'quot annis', 'Tahunan', 'Yıllık', 'Ετήσια', 'سالانه', 'Setiap tahun', 'ప్రతిసంవత్సరం', 'வருடாந்திரம்', 'વાર્ષિક', 'Rocznie', 'Щорічно', 'ਸਲਾਨਾ', 'Anual', 'နှစ်အလိုက်', 'Ọdún', 'Shekara shekara'),
(260, 'tabular', 'Tabular', 'ট্যাবুলার ডেটা', 'Tabular', 'مجدول', 'तालिका का', 'ٹیبلولر', '表格式的', '表形式', 'Tabular', 'табличный', 'Tabulaire', '표의', 'Tabellarisch', 'di tabella', 'แบน', 'Táblázatos', 'tabellarisch', 'Expositio canonica', 'Datar', 'yassı', 'Πινακοειδής', 'جدولی', 'Tabular', 'పట్టిక', 'சீரமைப்புப்', 'કોષ્ટક', 'Tabelaryczny', 'Табличний', 'ਤਾਲੂਲਰ', 'Tabular', 'tabular', 'Tabular', 'Tabula'),
(261, 'graphical', 'Graphical', 'গ্রাফিক', 'Gráfico', 'بياني', 'चित्रात्मक', 'گرافیکل', '图形', 'グラフィカルな', 'Gráfico', 'графический', 'Graphique', '그래픽', 'Grafisch', 'grafico', 'กราฟิก', 'Grafikus', 'grafisch', 'graphical', 'Grafis', 'Grafiksel', 'Γραφικός', 'گرافیکی', 'Grafik', 'గ్రాఫికల్', 'வரைவியல்', 'ગ્રાફિકલ', 'Graficzny', 'Графічний', 'ਗਰਾਫਿਕਲ', 'Grafic', 'graphical', 'Ti iwọn', 'Zane-zane'),
(262, 'remain', 'Remain', 'অবশিষ্ট', 'Permanecer', 'يبقى', 'रहना', 'رہنا', '留', '残っている', 'Permanecer', 'оставаться', 'Rester', '남아있는', 'Bleiben übrig', 'rimanere', 'ยังคง', 'Marad', 'Blijven', 'manent', 'Tetap', 'Kalmak', 'Παραμένει', 'ماندن', 'Kekal', 'ఉంటాయి', 'இருக்கும்', 'રહો', 'Pozostawać', 'Залишитися', 'ਰਹਿਣ ਦਿਓ', 'Rămâne', 'ကျန်ရစ်', 'Duro', 'Ku tsaya'),
(263, 'month', 'Month', 'মাস', 'Mes', 'شهر', 'महीना', 'مہینہ', '月', '月', 'Mês', 'Месяц', 'Mois', '달', 'Monat', 'Mese', 'เดือน', 'Hónap', 'Maand', 'mense', 'Bulan', 'Ay', 'Μήνας', 'ماه', 'Bulan', 'నెల', 'மாதம்', 'માસ', 'Miesiąc', 'Місяць', 'ਮਹੀਨਾ', 'Lună', 'လ', 'Oṣu', 'Watan'),
(264, 'a_positive', 'A+', 'এ পজিটিভ', 'A +', 'A +', 'A+', 'A+', 'A+', 'A+', 'A+', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +'),
(265, 'a_negative', 'A-', 'এ নেগেটিভ', 'UN-', 'ا-', 'ए-', 'A-', '一个-', 'A-', 'UMA-', 'A-', 'A-', '에이-', 'EIN-', 'UN-', 'A-', 'A-', 'EEN-', 'A-', 'SEBUAH-', 'A-', 'ΕΝΑ-', 'A-', 'A-', 'ఒక-', 'ஏ', 'એ-', 'ZA-', 'A-', 'ਏ-', 'A-', 'A-', 'A-', 'A-'),
(266, 'b_positive', 'B+', 'বি পজিটিভ', 'B +', 'B +', 'बी +', 'B+', 'B+', 'B+', 'B+', 'B +', 'B+', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'பி', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +'),
(267, 'b_negative', 'B-', 'বি নেগেটিভ', 'SEGUNDO-', 'ب-', 'बी', 'B-', 'B-', 'B-', 'B-', 'B-', 'B-', '비-', 'B-', 'B-', 'B-', 'B-', 'B-', 'Sed placerat scelerisque', 'B-', 'B-', 'ΣΙ-', 'B-', 'B-', 'B-', 'பி-', 'બી-', 'B-', 'B-', 'ਬੀ-', 'B-', 'ပါဘူးရှငျ', 'B-', 'B-'),
(268, 'o_positive', 'O+', 'ও পজিটিভ', 'O +', 'O +', 'O+', 'اے +', 'O+', 'O+', 'O+', 'O +', 'O+', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'Domine +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'အို +', 'O +', 'O +'),
(269, 'o_negative', 'O-', 'ও নেগেটিভ', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', '영형-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'HAI-', 'O-', 'Ο-', 'O-', 'O-', 'O-', 'O-', 'ઓ-', 'O-', 'O-', 'ਓ-', 'O-', 'O-', 'O-', 'O-'),
(270, 'ab_positive', 'AB+', 'এবি পজিটিভ', 'AB +', 'AB +', 'एबी +', 'AB+', 'AB+', 'AB+', 'AB+', 'AB +', 'AB+', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'એબી +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +'),
(271, 'ab_negative', 'AB-', 'এবি নেগেটিভ', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB', 'AB-', 'AB-', 'ΑΒ-', 'AB-', 'AB-', 'AB-', 'மோலின்', 'એબી-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-'),
(272, 'vendor', 'Vendor', 'বিক্রেতা', 'Vendedor', 'بائع', 'विक्रेता', 'وینڈر', 'AB-', 'ベンダー', 'Fornecedor', 'продавец', 'Vendeur', '공급 업체', 'Verkäufer', 'venditore', 'ผู้ขาย', 'Eladó', 'Verkoper', 'vendor', 'Penjaja', 'satıcı', 'Προμηθευτή', 'فروشنده', 'Penjual', 'Vendor', 'விற்பனையாளர்', 'વેન્ડર', 'Sprzedawca', 'Постачальник', 'ਵਿਕਰੇਤਾ', 'Vânzător', 'ရောင်းချသူ', 'Oluwo', 'Mai sayarwa'),
(273, 'relative', 'Relative', 'আত্মীয়', 'Relativo', 'نسبيا', 'सापेक्ष', 'رشتہ دار', '相对的', '相対', 'Relativo', 'Относительный', 'Relatif', '상대적인', 'Relativ', 'Parente', 'ญาติ', 'Relatív', 'Familielid', 'relativum', 'Relatif', 'bağıl', 'Συγγενής', 'نسبت فامیلی', 'Relatif', 'సంబంధిత', 'உறவினர்', 'સંબંધી', 'Krewny', 'Відносний', 'ਿਰਸ਼ਤੇਦਾਰ', 'Relativ', 'ဆွေမျိုး', 'ojulumo', 'Aboki'),
(274, 'friend', 'Friend', 'বন্ধু', 'Amigo', 'صديق', 'दोस्त', 'دوست', '朋友', '友人', 'Amigos', 'Друг', 'Ami', '친구', 'Freund', 'Amico', 'เพื่อน', 'Barát', 'Vriend', 'amica', 'Teman', 'Arkadaş', 'Φίλος', 'دوست', 'Kawan', 'స్నేహితుని', 'நண்பன்', 'મિત્ર', 'Przyjaciel', 'Друг', 'ਦੋਸਤ', 'Prieten', 'မိတျဆှေ', 'Ọrẹ', 'Aboki'),
(275, 'family', 'Family', 'পরিবার', 'Familia', 'أسرة', 'परिवार', 'خاندان', '家庭', '家族', 'Família', 'семья', 'Famille', '가족', 'Familie', 'Famiglia', 'ครอบครัว', 'Család', 'Familie', 'familia', 'Keluarga', 'Aile', 'Οικογένεια', 'خانواده', 'Keluarga', 'కుటుంబ', 'குடும்ப', 'કૌટુંબિક', 'Rodzina', 'Сімя', 'ਪਰਿਵਾਰ', 'Familie', 'မိသားစု', 'Ìdílé', 'Iyali'),
(276, 'interview', 'Interview', 'সাক্ষাত্কার', 'Entrevista', 'مقابلة', 'साक्षात्कार', 'انٹرویو', '访问', 'インタビュー', 'Entrevista', 'Интервью', 'Entretien', '회견', 'Interview', 'Colloquio', 'สัมภาษณ์', 'Interjú', 'Interview', 'colloquium', 'Wawancara', 'Röportaj', 'Συνέντευξη', 'مصاحبه', 'Temu bual', 'ఇంటర్వ్యూ', 'பேட்டி', 'મુલાકાત', 'Wywiad', 'Інтервю', 'ਇੰਟਰਵਿਊ', 'Interviu', 'အင်တာဗျူး', 'Ibarawe', 'Tambayar'),
(277, 'meeting', 'Meeting', 'সাক্ষাৎ', 'Reunión', 'لقاء', 'मुलाकात', 'اجلاس', '会议', '会議', 'encontro', 'Встреча', 'Réunion', '모임', 'Treffen', 'Incontro', 'การประชุม', 'Találkozó', 'Vergadering', 'occurrens', 'Pertemuan', 'Toplantı', 'Συνάντηση', 'ملاقات', 'Mesyuarat', 'సమావేశం', 'சந்தித்தல்', 'બેઠક', 'Spotkanie', 'Зустріч', 'ਮੀਟਿੰਗ', 'Întâlnire', 'အစည်းအဝေး', 'Ipade', 'Haduwa'),
(278, 'mandatory', 'Mandatory', 'বাধ্যতামূলক', 'Obligatorio', 'إلزامي', 'अनिवार्य', 'لازمی', '强制性', '必須', 'Obrigatório', 'Обязательное', 'Obligatoire', '필수', 'Verpflichtend', 'Obbligatorio', 'จำเป็น', 'Kötelező', 'Verplicht', 'amet', 'Wajib', 'Zorunlu', 'Επιτακτικός', 'اجباری', 'Mandatori', 'తప్పనిసరి', 'கட்டாயமாகும்', 'ફરજિયાત', 'Obowiązkowy', 'Обовязковий', 'ਲਾਜ਼ਮੀ', 'Obligatoriu', 'အတင်းအကျပ်ဖြစ်သော', 'Dandan', 'M'),
(279, 'optional', 'Optional', 'ঐচ্ছিক', 'Opcional', 'اختياري', 'ऐच्छिक', 'اختیاری', '可选的', 'オプション', 'Opcional', 'Необязательный', 'Optionnel', '선택 과목', 'Wahlweise', 'Opzionale', 'ไม่จำเป็น', 'Választható', 'facultatief', 'libitum', 'Pilihan', 'İsteğe bağlı', 'Προαιρετικός', 'اختیاری', 'Pilihan', 'ఐచ్ఛికము', 'விருப்ப', 'વૈકલ્પિક', 'Opcjonalny', 'Необовязково', 'ਵਿਕਲਪਿਕ', 'facultativ', 'optional', 'Aṣayan', 'Zabin'),
(280, 'science', 'Science', 'বিজ্ঞান', 'Ciencia', 'علم', 'विज्ञान', 'سائنس', '科学', '科学', 'Ciência', 'Наука', 'Science', '과학', 'Wissenschaft', 'Scienza', 'วิทยาศาสตร์', 'Tudomány', 'Wetenschap', 'scientia', 'Ilmu', 'Bilim', 'Επιστήμη', 'علوم پایه', 'Sains', 'సైన్స్', 'அறிவியல்', 'વિજ્ઞાન', 'Nauka', 'Наука', 'ਵਿਗਿਆਨ', 'Ştiinţă', 'သိပ္ပံ', 'Imọ', 'Kimiyya'),
(281, 'arts', 'Arts', 'কলা', 'Letras', 'فنون', 'कला', 'آرٹس', '艺术', '芸術', 'Artes', 'искусства', 'Arts', '기예', 'Kunst', 'Arts', 'ศิลปะ', 'Arts', 'Arts', 'artium', 'Seni', 'Sanat', 'Τέχνες', 'هنرها', 'Seni', 'ఆర్ట్స్', 'கலை', 'આર્ટસ', 'Sztuka', 'Мистецтво', 'ਆਰਟਸ', 'Arte', 'ဝိဇ္ဇာ', 'Ọgbọn', 'Arts'),
(282, 'commerce', 'Commerce', 'বাণিজ্য', 'Comercio', 'تجارة', 'व्यापार', 'کامرس', '商业', 'コマース', 'Comércio', 'коммерция', 'Commerce', '상업', 'Handel', 'Commercio', 'พาณิชย์', 'kereskedelem', 'Handel', 'Commerce', 'Perdagangan', 'Ticaret', 'Εμπόριο', 'بازرگانی', 'Perdagangan', 'కామర్స్', 'வர்த்தக', 'વાણિજ્ય', 'Handel', 'Торгівля', 'ਵਣਜ', 'Comerţ', 'ရောင်းဝယ်ဖေါက်ကားခြင်း', 'Okoowo', 'Kasuwanci'),
(283, 'saturday', 'Saturday', 'শনিবার', 'sábado', 'يوم السبت', 'शनिवार', 'ہفتہ', '星期六', '土曜日', 'sábado', 'суббота', 'samedi', '토요일', 'Samstag', 'Sabato', 'วันเสาร์', 'szombat', 'zaterdag', 'Saturni', 'Sabtu', 'Cumartesi', 'Σάββατο', 'شنبه', 'Sabtu', 'శనివారం', 'சனிக்கிழமை', 'શનિવાર', 'sobota', 'Субота', 'ਸ਼ਨੀਵਾਰ', 'sâmbătă', 'စနေနေ့', 'Ọjọ Satidee', 'Asabar'),
(284, 'sunday', 'Sunday', 'রবিবার', 'domingo', 'الأحد', 'रविवार', 'اتوار', '星期日', '日曜日', 'domingo', 'Воскресенье', 'dimanche', '일요일', 'Sonntag', 'Domenica', 'วันอาทิตย์', 'vasárnap', 'zondag', 'Solis', 'Minggu', 'Pazar', 'Κυριακή', 'یکشنبه', 'Ahad', 'ఆదివారం', 'ஞாயிறு', 'રવિવાર', 'niedziela', 'Неділя', 'ਐਤਵਾਰ', 'duminică', 'တနင်္ဂနွေ', 'Sunday', 'Lahadi'),
(285, 'monday', 'Monday', 'সোমবার', 'lunes', 'الإثنين', 'सोमवार', 'سوموار', '星期一', '月曜', 'Segunda-feira', 'понедельник', 'Lundi', '월요일', 'Montag', 'Lunedi', 'วันจันทร์', 'hétfő', 'maandag', 'dies Lunae', 'Senin', 'Pazartesi', 'Δευτέρα', 'دوشنبه', 'Isnin', 'సోమవారం', 'திங்கட்கிழமை', 'સોમવાર', 'poniedziałek', 'Понеділок', 'ਸੋਮਵਾਰ', 'luni', 'တနင်္လာနေ့', 'Awọn aarọ', 'Litinin'),
(286, 'tuesday', 'Tuesday', 'মঙ্গলবার', 'martes', 'الثلاثاء', 'मंगलवार', 'منگل', '星期二', '火曜日', 'terça', 'вторник', 'Mardi', '화요일', 'Dienstag', 'martedì', 'วันอังคาร', 'kedd', 'dinsdag', 'Martis', 'Selasa', 'Salı', 'Τρίτη', 'سهشنبه', 'Selasa', 'మంగళవారం', 'செவ்வாய்க்கிழமை', 'મંગળવારે', 'wtorek', 'Вівторок', 'ਮੰਗਲਵਾਰ', 'marţi', 'အင်္ဂါနေ့', 'Ojoba', 'Talata'),
(287, 'wednesday', 'Wednesday', 'বুধবার', 'miércoles', 'الأربعاء', 'बुधवार', 'بدھ', '星期三', '水曜日', 'Quarta-feira', 'среда', 'Mercredi', '수요일', 'Mittwoch', 'mercoledì', 'วันพุธ', 'szerda', 'woensdag', 'Mercurii', 'Rabu', 'Çarşamba', 'Τετάρτη', 'چهار شنبه', 'Rabu', 'బుధవారం', 'புதன்கிழமை', 'બુધવાર', 'środa', 'Середа', 'ਬੁੱਧਵਾਰ', 'miercuri', 'ဗုဒ္ဓဟူးနေ့', 'Ọjọrú', 'Laraba'),
(288, 'thursday', 'Thursday', 'বৃহস্পতিবার', 'jueves', 'الخميس', 'गुरूवार', 'جمعرات', '星期四', '木曜日', 'Quinta-feira', 'Четверг', 'Jeudi', '목요일', 'Donnerstag', 'giovedi', 'วันพฤหัสบดี', 'csütörtök', 'donderdag', 'Iovis', 'Kamis', 'Perşembe', 'Πέμπτη', 'پنج شنبه', 'Khamis', 'గురువారం', 'வியாழக்கிழமை', 'ગુરુવાર', 'czwartek', 'Четвер', 'ਵੀਰਵਾਰ', 'joi', 'ကြာသပတေးနေ့', 'Ojobo', 'Alhamis'),
(289, 'friday', 'Friday', 'শুক্রবার', 'viernes', 'يوم الجمعة', 'शुक्रवार', 'جمعہ', '星期五', '金曜日', 'Sexta-feira', 'пятница', 'Vendredi', '금요일', 'Freitag', 'Venerdì', 'วันศุกร์', 'péntek', 'vrijdag', 'Veneris', 'Jumat', 'Cuma', 'Παρασκευή', 'جمعه', 'Jumaat', 'శుక్రవారం', 'வெள்ளி', 'શુક્રવાર', 'piątek', 'Пятниця', 'ਸ਼ੁੱਕਰਵਾਰ', 'vineri', 'သောကြာနေ့', 'Ọjọ Ẹtì', 'Jummaa'),
(290, 'january', 'January', 'জানুয়ারী', 'enero', 'كانون الثاني', 'जनवरी', 'جنوری', '一月', '1月', 'janeiro', 'январь', 'janvier', '일월', 'Januar', 'gennaio', 'มกราคม', 'január', 'januari-', 'Ianuarii', 'Januari', 'Ocak', 'Ιανουάριος', 'ژانویه', 'Januari', 'జనవరి', 'ஜனவரி', 'જાન્યુઆરી', 'styczeń', 'Січень', 'ਜਨਵਰੀ', 'ianuarie', 'ဇန္နဝါရီလ', 'Oṣù', 'Janairu'),
(291, 'february', 'February', 'ফেব্রুয়ারি', 'febrero', 'شهر فبراير', 'फरवरी', 'فروری', '二月', '2月', 'fevereiro', 'февраль', 'février', '이월', 'Februar', 'febbraio', 'กุมภาพันธ์', 'február', 'februari', 'Februarius', 'Februari', 'Şubat', 'Φεβρουάριος', 'فوریه', 'Februari', 'ఫిబ్రవరి', 'பிப்ரவரி', 'ફેબ્રુઆરી', 'luty', 'Лютий', 'ਫਰਵਰੀ', 'februarie', 'ဖေဖေါ်ဝါရီလ', 'Kínní', 'Fabrairu'),
(292, 'march', 'March', 'মার্চ', 'marzo', 'مارس', 'मार्च', 'مارچ', '游行', '行進', 'marcha', 'Март', 'Mars', '행진', 'März', 'marzo', 'มีนาคม', 'március', 'maart', 'Martii', 'Maret', 'Mart', 'Μάρτιος', 'مارس', 'Mac', 'మార్చి', 'மார்ச்', 'કુચ', 'Marsz', 'Березень', 'ਮਾਰਚ', 'Martie', 'မတ်လ', 'Oṣù', 'Maris'),
(293, 'april', 'April', 'এপ্রিল', 'abril', 'أبريل', 'अप्रैल', 'اپریل', '四月', '4月', 'abril', 'апрель', 'avril', '4 월', 'April', 'aprile', 'เมษายน', 'április', 'april', 'Aprilis', 'April', 'Nisan', 'Απρίλιος', 'آوریل', 'April', 'ఏప్రిల్', 'ஏப்ரல்', 'એપ્રિલ', 'kwiecień', 'Квітень', 'ਅਪ੍ਰੈਲ', 'Aprilie', 'ဧပြီလ', 'Kẹrin', 'Afrilu'),
(294, 'may', 'May', 'মে', 'Mayo', 'قد', 'मई', 'مئی', '可能', '5月', 'Pode', 'май', 'mai', '할 수있다', 'Kann', 'potrebbe', 'อาจ', 'Lehet', 'mei', 'May', 'Mungkin', 'Mayıs ayı', 'Ενδέχεται', 'ممکن است', 'Mungkin', 'మే', 'மே', 'મે', 'Może', 'Може', 'ਮਈ', 'Mai', 'မေ', 'Ṣe', 'Mayu'),
(295, 'june', 'June', 'জুন', 'junio', 'يونيو', 'जून', 'جون', '六月', '六月', 'Junho', 'июнь', 'juin', '유월', 'Juni', 'giugno', 'มิถุนายน', 'június', 'juni-', 'June', 'Juni', 'Haziran', 'Ιούνιος', 'ژوئن', 'Jun', 'జూన్', 'ஜூன்', 'જૂન', 'czerwiec', 'Червень', 'ਜੂਨ', 'iunie', 'ဇွန်လ', 'Okudu', 'Yuni'),
(296, 'july', 'July', 'জুলাই', 'julio', 'يوليو', 'जुलाई', 'جولائی', '七月', '7月', 'Julho', 'июль', 'juillet', '칠월', 'Juli', 'luglio', 'กรกฎาคม', 'július', 'juli-', 'Iulii', 'Juli', 'Temmuz', 'Ιούλιος', 'جولای', 'Julai', 'జూలై', 'ஜூலை', 'જુલાઈ', 'lipiec', 'Липень', 'ਜੁਲਾਈ', 'iulie', 'ဇူလိုင်လ', 'Keje', 'Yuli'),
(297, 'august', 'August', 'অগাস্ট', 'agosto', 'أغسطس', 'अगस्त', 'اگست', '八月', '8月', 'agosto', 'августейший', 'août', '팔월', 'August', 'agosto', 'สิงหาคม', 'augusztus', 'augustus', 'August', 'Agustus', 'Ağustos', 'Αύγουστος', 'آگوست', 'Ogos', 'ఆగస్టు', 'ஆகஸ்ட்', 'ઓગસ્ટ', 'sierpień', 'Серпень', 'ਅਗਸਤ', 'August', 'သြဂုတ်လ', 'Oṣù Kẹjọ', 'Agusta'),
(298, 'september', 'September', 'সেপ্টেম্বর', 'septiembre', 'سبتمبر', 'सितंबर', 'ستمبر', '九月', '9月', 'setembro', 'сентябрь', 'septembre', '구월', 'September', 'settembre', 'กันยายน', 'szeptember', 'september', 'September', 'September', 'Eylül', 'Σεπτέμβριος', 'سپتامبر', 'September', 'సెప్టెంబర్', 'செப்டம்பர்', 'સપ્ટેમ્બર', 'wrzesień', 'Вересень', 'ਸਿਤੰਬਰ', 'Septembrie', 'စက်တင်ဘာလ', 'Oṣu Kẹsan', 'Satumba'),
(299, 'october', 'October', 'অক্টোবর', 'octubre', 'شهر اكتوبر', 'अक्टूबर', 'اکتوبر', '十月', '10月', 'Outubro', 'октября', 'octobre', '십월', 'Oktober', 'ottobre', 'ตุลาคม', 'október', 'oktober', 'Octobris', 'Oktober', 'Ekim', 'Οκτώβριος', 'اکتبر', 'Oktober', 'అక్టోబర్', 'அக்டோபர்', 'ઓક્ટોબર', 'październik', 'Жовтень', 'ਅਕਤੂਬਰ', 'octombrie', 'အောက်တိုဘာလ', 'Oṣu Kẹwa', 'Oktoba'),
(300, 'november', 'November', 'নভেম্বর', 'noviembre', 'شهر نوفمبر', 'नवंबर', 'نومبر', '十一月', '11月', 'novembro', 'ноябрь', 'novembre', '십일월', 'November', 'novembre', 'พฤศจิกายน', 'november', 'november', 'November', 'November', 'Kasım', 'Νοέμβριος', 'نوامبر', 'November', 'నవంబర్', 'நவம்பர்', 'નવેમ્બર', 'listopad', 'Листопад', 'ਨਵੰਬਰ', 'noiembrie', 'နိုဝင်ဘာလ', 'Kọkànlá Oṣù', 'Nuwamba'),
(301, 'december', 'December', 'ডিসেম্বর', 'diciembre', 'ديسمبر', 'दिसंबर', 'دسمبر', '十二月', '12月', 'dezembro', 'Декабрь', 'décembre', '12 월', 'Dezember', 'dicembre', 'ธันวาคม', 'december', 'december', 'December', 'Desember', 'Aralık', 'Δεκέμβριος', 'دسامبر', 'Disember', 'డిసెంబర్', 'டிசம்பர்', 'ડિસેમ્બર', 'grudzień', 'Грудень', 'ਦਸੰਬਰ', 'decembrie', 'ဒီဇင်ဘာလ', 'Oṣù Kejìlá', 'Disamba'),
(302, 'boys', 'Boy', 'ছেলে', 'Chico', 'صبي', 'लड़का', 'لڑکا', '男孩', '男の子', 'Garoto', 'мальчик', 'Garçon', '소년', 'Junge', 'Ragazzo', 'เด็กผู้ชาย', 'Fiú', 'Jongen', 'Puer', 'Anak laki-laki', 'Oğlan', 'Αγόρι', 'پسر', 'Budak lelaki', 'బాయ్', 'சிறுவன்', 'બોય', 'Chłopak', 'Хлопчик', 'ਮੁੰਡਾ', 'Băiat', 'ယောက်ျားလေး', 'Ọmọkunrin', 'Yaro'),
(303, 'girls', 'Girl', 'মেয়ে', 'Niña', 'فتاة', 'लड़की', 'لڑکی', '女孩', '女の子', 'Menina', 'девушка', 'Fille', '소녀', 'Mädchen', 'Ragazza', 'สาว', 'Lány', 'Meisje', 'puella', 'Gadis', 'Kız', 'Κορίτσι', 'دختر', 'Gadis', 'గర్ల్', 'பெண்', 'ગર્લ', 'Dziewczyna', 'Дівчина', 'ਕੁੜੀ', 'Fată', 'မိန်းကလေး', 'Ọdọmọbìnrin', 'Yarinya '),
(304, 'combine', 'Combine', 'যৌথ', 'Combinar', 'دمج', 'जोड़ना', 'یکجا', '结合', '結合する', 'Combinar', 'скомбинировать', 'Combiner', '콤바인', 'Kombinieren', 'combinare', 'รวมกัน', 'Kombájn', 'Combineren', 'miscere', 'Menggabungkan', 'birleştirmek', 'Συνδυασμός', 'ترکیب کردن', 'Gabung', 'మిళితం', 'இணைக்க', 'ભેગું કરો', 'Połączyć', 'Комбінувати', 'ਜੁੜੋ', 'Combina', 'ပေါင်းစပ်', 'Darapọ', 'Haɗa'),
(305, 'ac', 'AC', 'এসি', 'C.A.', 'AC', 'एसी', 'AC', 'AC', '交流', 'AC', 'переменный ток', 'AC', '교류', 'Wechselstrom', 'AC', 'ไฟฟ้ากระแสสลับ', 'AC', 'AC', 'n:', 'AC', 'AC', 'ΜΕΤΑ ΧΡΙΣΤΟΝ', 'AC', 'AC', 'AC', 'ஏசி', 'એસી', 'AC', 'AC', 'AC', 'AC', 'AC အ', 'AC', 'AC'),
(306, 'non_ac', 'Non AC', 'নন এসি', 'No AC', 'غير أس', 'गैर एसी', 'غیر AC', '非交流', '非AC', 'Não AC', 'Non AC', 'Pas ca', '비 AC', 'Nicht Wechselstrom', 'Non AC', 'ไม่ใช่ AC', 'Nem AC', 'Niet AC', 'non Passage', 'Non AC', 'AC olmayan', 'Μη AC', 'غیر AC', 'Bukan AC', 'నాన్ AC', 'அல்லாத ஏசி', 'બિન એસી', 'Bez klimatyzacji', 'Не AC', 'ਗੈਰ ਏਸੀ', 'Non AC', 'non AC အ', 'Ko si AC', 'Ba AC'),
(307, 'male', 'Male', 'পুরুষ', 'Masculino', 'الذكر', 'नर', 'مرد', '男', '男性', 'Masculino', 'мужчина', 'Mâle', '남성', 'Männlich', 'Maschio', 'ชาย', 'Férfi', 'Mannetje', 'Masculum', 'Pria', 'Erkek', 'Αρσενικός', 'نر', 'Lelaki', 'మగ', 'ஆண்', 'પુરૂષ', 'Męski', 'Чоловік', 'ਮਰਦ', 'Masculin', 'အထီး', 'Okunrin', 'Namiji'),
(308, 'female', 'Female', 'মহিলা', 'Hembra', 'إناثا', 'महिला', 'عورت', '女', '女性', 'Fêmea', 'женский', 'Femelle', '여자', 'Weiblich', 'Femmina', 'หญิง', 'Női', 'Vrouw', 'feminam', 'Wanita', 'Kadın', 'Θηλυκός', 'زن', 'Perempuan', 'మహిళ', 'பெண்', 'સ્ત્રી', 'Płeć żeńska', 'Жінка', 'ਔਰਤ', 'Femeie', 'အမြိုးသမီး', 'Obinrin', 'Mace'),
(309, 'unpaid', 'Unpaid', 'অপরিশোধিত', 'No pagado', 'غير مدفوع', 'अवैतनिक', 'نام نہاد', '未付', '未払い', 'Não remunerado', 'неоплаченный', 'Non payé', '지불되지 않은', 'Unbezahlt', 'non pagato', 'ยังไม่ได้ชำระ', 'Kifizetetlen', 'onbetaald', 'insolutis', 'Tidak dibayar', 'ödenmemiş', 'Απλήρωτος', 'بدون پرداخت هزینه', 'Tidak dibayar', 'చెల్లించని', 'செலுத்தப்படாத', 'અવેતન', 'Nie zapłacony', 'Несплачені', 'ਅਵੇਤਨਕ', 'neplătit', 'မရတဲ့', 'Aisanwo', 'Ba a biya'),
(310, 'partial', 'Partial', 'আংশিক', 'Parcial', 'جزئي', 'आंशिक', 'جزوی', '局部', '部分', 'Parcial', 'частичный', 'Partiel', '부분', 'Teilweise', 'Parziale', 'เป็นบางส่วน', 'Részleges', 'partieel', 'sive partiales', 'Sebagian', 'Kısmi', 'Μερικός', 'جزئي', 'Separa', 'పాక్షికం', 'பகுதி', 'આંશિક', 'Częściowy', 'Частково', 'ਅਧੂਰਾ', 'Parțial', 'တစိတ်တဒေသဖြစ်သော', 'Apa kan', 'M'),
(311, 'father', 'Father', 'পিতা', 'Padre', 'الآب', 'पिता', 'باپ', '父亲', 'お父さん', 'Pai', 'Отец', 'Père', '아버지', 'Father', 'Padre', 'พ่อ', 'Apa', 'Vader', 'Pater', 'Ayah', 'baba', 'Πατέρας', 'پدر', 'Bapa', 'తండ్రి', 'அப்பா', 'પિતા', 'Ojciec', 'Батько', 'ਪਿਤਾ ਜੀ', 'Tată', 'ဖခင်', 'Baba', 'Uba'),
(312, 'mother', 'Mother', 'মাতা', 'Madre', 'أم', 'मां', 'ماں', '母亲', '母', 'Mãe', 'Мама', 'Mère', '어머니', 'Mutter', 'Madre', 'แม่', 'Anya', 'Moeder', 'Mater', 'Ibu', 'anne', 'Μητέρα', 'مادر', 'Ibu', 'తల్లి', 'தாய்', 'મધર', 'Mama', 'Мама', 'ਮਾਤਾ ਜੀ', 'Mamă', 'မိခင်', 'Iya', 'Uwar'),
(313, 'sister', 'Sister', 'বোন', 'Hermana', 'أخت', 'बहन', 'دیدی', '妹妹', 'シスター', 'Irmã', 'Сестра', 'sœur', '여자 형제', 'Schwester', 'Sorella', 'น้องสาว', 'lánytestvér', 'Zus', 'Soror', 'Saudara', 'Kız kardeş', 'Αδελφή', 'خواهر', 'Kakak', 'సోదరి', 'சகோதரி', 'બહેન', 'Siostra', 'Сестра', 'ਭੈਣ', 'soră', 'အစ်မ', 'Arabinrin', 'yaruwa'),
(314, 'brother', 'Brother', 'ভাই', 'Hermano', 'شقيق', 'भाई', 'بھائی', '哥哥', '兄', 'Irmão', 'Брат', 'frère', '동료', 'Bruder', 'Fratello', 'พี่ชาย', 'fiú testvér', 'Broer', 'Frater', 'Saudara', 'Erkek kardeş', 'Αδελφός', 'برادر', 'adik', 'బ్రదర్', 'சகோதரன்', 'ભાઈ', 'Brat', 'Брат', 'ਭਰਾ', 'Frate', 'အစ်ကို', 'Arakunrin', 'ɗanuwana'),
(315, 'uncle', 'Uncle', 'চাচা', 'Tío', 'اخو الام', 'चाचा', 'چاچا', '叔叔', '叔父', 'Tio', 'Дядя', 'Oncle', '삼촌', 'Onkel', 'Zio', 'ลุง', 'Nagybácsi', 'Oom', 'avunculus', 'Paman', 'Amca dayı', 'Θείος', 'دایی', 'Paman', 'అంకుల్', 'மாமா', 'અંકલ', 'Wujek', 'Дядько', 'ਅੰਕਲ', 'unchi', 'ဘကြီး', 'aburo', 'kawuna'),
(316, 'maternal_uncle', 'Maternal Uncle', 'মামা', 'Tío materno', 'الخال', 'मा मा', 'ماموں', '舅', '母方の叔父', 'Tio materno', 'Дядя по матери', 'Oncle maternel', '임산부 삼촌', 'Onkel mütterlicherseits', 'Zio materno', 'คุณแม่ลุง', 'Anyai nagybátyja', 'Moeder oom', 'AVONCULUS', 'Paman ibu', 'Annelik Amca', 'Ο μητρικός θείος', 'دایی', 'Bapa saudara', 'మేనమామ', 'தாய் மாமா', 'માતૃત્વ અંકલ', 'Wujek od strony matki', 'Материнський дядько', 'ਮਾਵਾਂ ਦਾ ਅੰਕਲ', 'Unchiul matern', 'မိခင်ဦးလေး', 'obi aburo', 'Mahaifiyar uwa'),
(317, 'other_relative', 'Other Relative', 'অন্যান্য আত্মীয়', 'Otro pariente', 'قريب اخر', 'अन्य रिश्तेदार', 'دوسرے رشتے دار', '其他亲属', 'その他の相対', 'Outro parente', 'Другой родственник', 'Autre Relatif', '다른 친척', 'Anderer Verwandter', 'Altro parente', 'ญาติอื่น ๆ', 'Másik rokon', 'Ander familielid', 'aliud Relativum', 'Relatif lainnya', 'Diğer akraba', 'Αλλος συγγενης', 'خویشاوند دیگر', 'Saudara lain', 'మరొక బంధువు', 'மற்ற உறவினர்', 'અન્ય સંબંધી', 'Inne względne', 'Інший родич', 'ਹੋਰ ਰਿਸ਼ਤੇਦਾਰ', 'Altă rudă', 'ဆွေမျိုးကတခြား', 'Ebi miiran', 'Wasu dangi'),
(318, 'cash', 'Cash', 'নগদ', 'Efectivo', 'السيولة النقدية', 'कैश', 'نقد', '现金', '現金', 'Dinheiro', 'Денежные средства', 'En espèces', '현금', 'Kasse', 'Contanti', 'เงินสด', 'Készpénz', 'Contant geld', 'Cash', 'Kas', 'Nakit', 'Μετρητά', 'نقدی', 'Tunai', 'క్యాష్', 'பணம்', 'કેશ', 'Gotówka', 'Готівка', 'ਨਕਦ', 'Bani gheata', 'ငွေသား', 'Owo owo', 'tsabar kudi'),
(319, 'cheque', 'Cheque', 'চেক', 'Comprobar', 'التحقق من', 'चेक', 'چیک کریں', '检查', 'チェック', 'Verifica', 'Проверить', 'Vérifier', '검사', 'Prüfen', 'Dai unocchiata', 'ตรวจสอบ', 'Jelölje be', 'Controleren', 'represserat', 'Memeriksa', 'Kontrol', 'Ελεγχος', 'بررسی', 'Semak', 'తనిఖీ', 'சரிபார்க்கவும்', 'તપાસો', 'Czek', 'Перевірте', 'ਚੈਕ', 'Verifica', 'စစ်ဆေးခြင်း', 'Ṣayẹwo', 'Duba'),
(320, 'paypal', 'Paypal', 'পেপ্যাল', 'Paypal', 'باي بال', 'Paypal', 'پے پال', '贝宝', 'Paypal', 'Paypal', 'Paypal', 'Pay Pal', '페이팔', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Coin Paypal', 'Paypal', 'Paypal', 'Paypal', 'پی پال', 'Paypal', 'Paypal', 'பேபால்', 'પેપલ', 'Paypal', 'Paypal', 'ਪੇਪਾਲ', 'Paypal', 'paypal', 'PayPal', 'Paypal'),
(321, 'stripe', 'Stripe', 'এস্ট্রিপ', 'Raya', 'شريط', 'पट्टी', 'پٹی', '条纹', 'ストライプ', 'Listra', 'нашивка', 'Bande', '줄무늬', 'Streifen', 'Banda', 'ริ้ว', 'Csík', 'Streep', 'clavo', 'Garis', 'Şerit', 'Ταινία', 'خط خطی', 'Stripe', 'గీత', 'கோடுகள்', 'ગેરુનો', 'Naszywka', 'Смуга', 'ਧੱਬਾ', 'Dunga', 'အစင်း', 'adikala', 'Stripe'),
(322, 'payumoney', 'PayUMoney', 'পে ইউ মানি', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'પેયમની', 'PayUMoney', 'PayUMoney', 'ਪੈਰਾਮਮਨੀ', 'PayUMoney', 'PayUMoney', 'PayIMEMB', 'PayPony'),
(323, 'clicktell', 'Clicktell', 'ক্লিকটেল', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', '클릭', 'Klicken', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'کلیک کنید', 'Clicktell', 'Clicktell', 'Clicktell', 'ક્લિકટેલ', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'TẹTẹ', 'Clicktell'),
(324, 'twilio', 'Twilio', 'টুইলিও', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'ટ્વીલો', 'Twilio', 'Твіліо', 'ਟਵਿਲੀਓ', 'Twilio', 'Twilio', 'Twilio', 'Twilio'),
(325, 'bulk', 'Bulk', 'বাল্ক', 'Abultar', 'حجم', 'थोक', 'بلک', '块', 'バルク', 'Massa', 'насыпной', 'masse', '대부분', 'Bulk', 'Massa', 'ขนาดใหญ่', 'tömeg', 'massa', 'mole', 'Jumlah besar', 'yığın', 'Ογκος', 'فله', 'Pukal', 'బల్క్', 'மொத்த', 'બલ્ક', 'Objętość', 'Масова частка', 'ਬਲਕ', 'masă', 'ထုထည်', 'olopobobo', 'Girma');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(326, 'msg91', 'MSG91', 'এমএসজি 91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91'),
(327, 'plivo', 'Plivo', 'প্লিবও', 'Plivo', 'Plivo', 'Plivo', 'پلیو', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Pliva', '플라 보', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Πλίβο', 'پلویو', 'Plivo', 'Plivo', 'Plivo', 'પ્લિવો', 'Plivo', 'Пліво', 'ਪਲਵਾ', 'Plivo', 'Plivo', 'Plivo', 'Plivo'),
(328, 'second', 'Second', 'সেকেন্ড', 'Segundo', 'ثانيا', 'दूसरा', 'دوسرا', '第二', '二番目', 'Segundo', 'второй', 'Seconde', '둘째', 'Zweite', 'Secondo', 'ที่สอง', 'Második', 'Tweede', 'secundi', 'Kedua', 'İkinci', 'Δεύτερος', 'دومین', 'Kedua', 'రెండవ', 'இரண்டாவது', 'બીજું', 'druga', 'Другий', 'ਦੂਜਾ', 'Al doilea', 'ဒုတိယ', 'Keji', 'Na biyu'),
(329, 'minute', 'Minute', 'মিনিট', 'Minuto', 'اللحظة', 'मिनट', 'منٹ', '分钟', '分', 'Minuto', 'минут', 'Minute', '분', 'Minute', 'minuto', 'นาที', 'Perc', 'Minuut', 'minute', 'Menit', 'Dakika', 'Λεπτό', 'دقیقه', 'Minit', 'నిమిషం', 'மினிட்', 'મિનિટ', 'Minuta', 'Хвилина', 'ਮਿੰਟ', 'Minut', 'မိနစ်', 'Iṣẹju', 'Minti'),
(330, 'hour', 'Hour', 'ঘন্টা', 'Hora', 'ساعة', 'घंटा', 'قیامت', '小时', '時間', 'Hora', 'Час', 'Heure', '시간', 'Stunde', 'Ora', 'ชั่วโมง', 'Óra', 'Uur', 'hora', 'Jam', 'Saat', 'Ωρα', 'ساعت', 'Jam', 'అవర్', 'ஹவர்', 'કલાક', 'Godzina', 'Година', 'ਘੰਟੇ', 'Ora', 'နာရီ', 'Wakati', 'Saa'),
(331, 'week', 'Week', 'সপ্তাহ', 'Semana', 'أسبوع', 'सप्ताह', 'ہفتہ', '周', '週間', 'Semana', 'Неделю', 'La semaine', '주', 'Woche', 'Settimana', 'สัปดาห์', 'Hét', 'Week', 'week', 'Minggu', 'Hafta', 'Εβδομάδα', 'هفته', 'Minggu', 'వారం', 'வீக்', 'અઠવાડિયું', 'Tydzień', 'Тиждень', 'ਹਫਤਾ', 'Săptămână', 'ရက်သတ္တပတ်', 'Osu', 'mako'),
(332, 'decade', 'Decade', 'দশক', 'Década', 'عقد', 'दशक', 'دہائی', '十', '10年', 'Década', 'десятилетие', 'Décennie', '로사리오 염주', 'Dekade', 'Decennio', 'ทศวรรษ', 'Évtized', 'Decennium', 'decennium', 'Dasawarsa', 'Onyıl', 'Δεκαετία', 'دهه', 'Dekad', 'దశాబ్దం', 'பத்தாண்டின்', 'દાયકા', 'Dekada', 'Десятиліття', 'ਦਹਾਕੇ', 'Deceniu', 'ဆယ်နှစ်', 'Ọdun mẹwa', 'Shekaru goma'),
(333, 'ago', 'Ago', 'পূর্বে', 'Hace', 'منذ', 'पूर्व', 'پہلے', '前', '前', 'Atrás', 'Тому назад', 'Depuis', '전에', 'Vor', 'Fa', 'มาแล้ว', 'Ezelőtt', 'Geleden', 'ante', 'Ago', 'Önce', 'Πριν', 'پیش', 'Ago', 'క్రితం', 'முன்பு', 'પહેલાં', 'Temu', 'Нарешті', 'ਪਹਿਲਾਂ', 'În urmă', 'လွန်ခဲ့တဲ့', 'Aago', 'da suka wuce'),
(334, 'from_now', 'From Now', 'এখন থেকে', 'Desde ahora', 'من الان', 'अब से', 'ابھی سے', '现在起', '今から', 'A partir de agora', 'Отныне', 'À partir de maintenant', '지금부터', 'In', 'Da adesso', 'จากนี้', 'Mostantól', 'Vanaf nu', 'Nunc', 'Mulai sekarang', 'Şu andan itibaren', 'Από τώρα', 'از حالا', 'Dari sekarang', 'ఇప్పటి నుండి', 'இப்போது இருந்து', 'હવેથી', 'Od teraz', 'Від тепер', 'ਹੁਣ ਤੋ', 'De acum', 'ယခုကနေ', 'Lati Bayi', 'Daga Yanzu'),
(335, 'bill_to', 'Bill To', 'বিল টু', 'Cobrar a', 'فاتورة الى', 'बिल प्राप्तकर्ता', 'کا بل', '记账到', '請求書送付先', 'Projeto de lei para', 'Плательщик', 'Facturer', '청구서 수신', 'Gesetzesentwurf für', 'Fatturare a', 'ส่งเบิกไปที่', 'Bill To', 'Rekening naar', 'Ad Bill', 'Pembayaran kepada', 'Ya fatura edilecek', 'Bill To', 'بیل تا', 'Bill To', 'బిల్ టు', 'பில் செய்ய', 'માટે બિલ', 'rachunek do', 'Білл Тод', 'ਬਿਲ ਕਰੋ', 'Proiect de lege pentru', 'ထံငွေတောင်းခံသည်', 'Isanowo fun', 'Lissafta zuwa'),
(336, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمه السر', 'पारण शब्द', 'پاس ورڈ', '密码', 'パスワード', 'Senha', 'пароль', 'Mot de passe', '암호', 'Passwort', 'Parola dordine', 'รหัสผ่าน', 'Jelszó', 'Wachtwoord', 'Password', 'Kata sandi', 'Parola', 'Κωδικός πρόσβασης', 'کلمه عبور', 'Kata laluan', 'పాస్వర్డ్', 'கடவுச்சொல்', 'પાસવર્ડ', 'Hasło', 'Пароль', 'ਪਾਸਵਰਡ', 'Parola', 'Password ကို', 'Ọrọigbaniwọle', 'Kalmar sirri'),
(337, 'manage_theme', 'Manage Theme', 'থিম পরিচালনা', 'Administrar el tema', 'إدارة الموضوع', 'थीम को प्रबंधित करें', 'تھیم کا نظم کریں', '管理主题', 'テーマを管理する', 'Gerenciar Tema', 'Управление темой', 'Gérer le thème', '테마 관리', 'Thema verwalten', 'Gestisci temi', 'จัดการธีม', 'Téma kezelése', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'Temayı Yönet', 'Διαχείριση Θέματος', 'مدیریت تم', 'Uruskan Tema', 'థీమ్ను నిర్వహించండి', 'தீம் நிர்வகி', 'થીમ સંચાલિત કરો', 'Zarządzaj motywem', 'Управління темою', 'ਥੀਮ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați tema', 'အဓိကအကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Akori', 'Sarrafa Jigo'),
(338, 'manage_language', 'Manage Language', 'ভাষা পরিচালনা করুন', 'Administrar el lenguaje', 'إدارة اللغة', 'भाषा प्रबंधित करें', 'زبان کا نظم کریں', '管理语言', '言語の管理', 'Gerenciar Idioma', 'Управление языком', 'Gérer la langue', '언어 관리', 'Sprache verwalten', 'Gestisci la lingua', 'จัดการภาษา', 'A nyelv kezelése', 'Taal beheren', 'Lingua curo', 'Kelola Bahasa', 'Dili Yönet', 'Διαχείριση γλώσσας', 'مدیریت زبان', 'Uruskan Bahasa', 'భాషను నిర్వహించండి', 'மொழி நிர்வகி', 'ભાષા મેનેજ કરો', 'Zarządzaj językiem', 'Управління мовою', 'ਭਾਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați limba', 'ဘာသာစကားများကိုစီမံခန့်ခွဲ', 'Ṣakoso Ede', 'Sarrafa Harshe'),
(339, 'manage_academic_year', 'Manage Academic Year', 'একাডেমিক বছর পরিচালনা করুন', 'Administrar el año académico', 'إدارة السنة الدراسية', 'अकादमिक वर्ष का प्रबंधन करें', 'تعلیمی سال کا نظم کریں', '管理学年', 'アカデミックイヤーを管理する', 'Gerenciar o Ano Acadêmico', 'Управление учебным годом', 'Gérer lannée académique', '학습 연도 관리', 'Akademisches Jahr verwalten', 'Gestisci lanno accademico', 'จัดการปีการศึกษา', 'Tanulmányi év kezelése', 'Academisch jaar beheren', 'Curo Academic Year', 'Mengelola Tahun Akademik', 'Akademik Yılı Yönet', 'Διαχειριστείτε το ακαδημαϊκό έτος', 'مدیریت سال تحصیلی', 'Urus Tahun Akademik', 'విద్యా సంవత్సరం నిర్వహించండి', 'கல்வி ஆண்டு நிர்வகி', 'શૈક્ષણિક વર્ષનું સંચાલન કરો', 'Zarządzaj Rokiem akademickim', 'Управління навчальним року', 'ਅਕਾਦਮਿਕ ਸਾਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați anul academic', 'ပညာရေးဆိုင်ရာတစ်နှစ်တာစီမံခန့်ခွဲရန်', 'Ṣakoso ọdun ẹkọ', 'Sarrafa Shekarar Kwalejin'),
(340, 'manage_role', 'Manage Role', 'রোল পরিচালনা করুন', 'Administrar rol', 'إدارة الدور', 'रोल प्रबंधित करें', 'رول کا نظم کریں', '管理角色', '役割の管理', 'Gerenciar o papel', 'Управление ролью', 'Manage Role', '역할 관리', 'Rolle verwalten', 'Gestisci il ruolo', 'จัดการบทบาท', 'A szerep kezelése', 'Rol beheren', 'Partes quas curo', 'Kelola Peran', 'Rolü Yönet', 'Διαχείριση ρόλου', 'مدیریت نقش', 'Mengurus Peranan', 'పాత్రను నిర్వహించండి', 'ரோல் நிர்வகி', 'રોલ મેનેજ કરો', 'Zarządzaj rolą', 'Управління роллю', 'ਭੂਮਿਕਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rolul', 'အခန်းက္ပကိုစီမံခန့်ခွဲ', 'Ṣakoso Ipa', 'Sarrafa Matsayi'),
(341, 'manage_user', 'Manage User', 'ব্যবহারকারী পরিচালনা করুন', 'Administrar usuario', 'إدارة المستخدم', 'उपयोगकर्ता को प्रबंधित करें', 'صارف کا نظم کریں', '管理用户', 'ユーザーを管理する', 'Gerenciar Usuário', 'Управление пользователями', 'Manage User', '사용자 관리', 'Benutzer verwalten', 'Gestisci utente', 'จัดการผู้ใช้', 'Felhasználó kezelése', 'Beheer gebruiker', 'usorum regere', 'Kelola Pengguna', 'Kullanıcıyı Yönet', 'Διαχείριση χρήστη', 'مدیریت کاربر', 'Urus Pengguna', 'వినియోగదారుని నిర్వహించండి', 'பயனர் நிர்வகி', 'વપરાશકર્તાને મેનેજ કરો', 'Zarządzaj Użytkownikiem', 'Керувати користувачем', 'ਯੂਜ਼ਰ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați utilizatorul', 'အသုံးပြုသူကိုစီမံခန့်ခွဲ', 'Ṣakoso olumulo', 'Sarrafa Mai amfani'),
(342, 'manage_designation', 'Manage Designation', 'পদবী পরিচালনা করুন', 'Administrar Designación', 'إدارة التعيين', 'पदनाम प्रबंधित करें', 'عہدہ کا انتظام کریں', '管理指定', '指定管理', 'Gerenciar Designação', 'Управление обозначением', 'Gérer la désignation', '지정 관리', 'Benennung verwalten', 'Gestire la designazione', 'จัดการการกำหนด', 'A kijelölés kezelése', 'Aanwijzing beheren', 'curo VOCABULUM', 'Kelola Penunjukan', 'Tanımlamayı Yönetin', 'Διαχείριση ονομασίας', 'مدیریت تعیین', 'Urus Jawatan', 'హోదాను నిర్వహించండి', 'நிர்வகித்தலை நிர்வகி', 'હોદ્દો મેનેજ કરો', 'Zarządzaj oznaczeniem', 'Керування позначенням', 'ਡਿਜ਼ਾਈਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați desemnarea', 'သတ်မှတ်ပေးထားခြင်းကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Apẹrẹ', 'Sarrafa Zama'),
(343, 'manage_employee', 'Manage Employee', 'কর্মচারী পরিচালনা করুন', 'Administrar Empleado', 'إدارة الموظف', 'कर्मचारी को प्रबंधित करें', 'ملازم کا انتظام کریں', '管理员工', '従業員を管理する', 'Gerenciar Empregado', 'Управление сотрудниками', 'Gérer lemployé', '직원 관리', 'Mitarbeiter verwalten', 'Gestisci dipendente', 'จัดการพนักงาน', 'Alkalmazottak kezelése', 'Beheer werknemer', 'Aliquam curo', 'Mengelola Karyawan', 'Çalışanı Yönet', 'Διαχειριστείτε τον υπάλληλο', 'مدیریت کارمند', 'Urus Pekerja', 'ఉద్యోగిని నిర్వహించండి', 'பணியாளரை நிர்வகி', 'કર્મચારીનું સંચાલન કરો', 'Zarządzaj pracownikiem', 'Управління працівником', 'ਕਰਮਚਾਰੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați angajatul', 'ထမ်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Abáni', 'Sarrafa Maaikata'),
(344, 'manage_teacher', 'Manage Teacher', 'শিক্ষক পরিচালনা করুন', 'Administra al maestro', 'إدارة المعلم', 'शिक्षक का प्रबंधन करें', 'ٹیچر کا نظم کریں', '管理教师', '教師を管理する', 'Gerenciar professor', 'Управление учителем', 'Gérer lenseignant', '교사 관리', 'Lehrer verwalten', 'Gestisci insegnante', 'จัดการครู', 'Tanár kezelése', 'Beheer de docent', 'curo Teacher', 'Kelola Guru', 'Öğretmen Yönet', 'Διαχειριστείτε τον Δάσκαλο', 'مدیریت معلم', 'Menguruskan Guru', 'టీచర్ని నిర్వహించండి ', 'ஆசிரியர் நிர்வகி', 'શિક્ષકનું સંચાલન કરો', 'Zarządzaj nauczycielem', 'Управління вчителем', 'ਅਧਿਆਪਕ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați învățătorul', 'အရှင်ဘုရားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Olukọni', 'Sarrafa Malam'),
(345, 'manage_class', 'Manage Class', 'ক্লাস পরিচালনা করুন', 'Administrar clase', 'إدارة الفئة', 'क्लास को प्रबंधित करें', 'کلاس کا نظم کریں', '管理班级', 'クラスを管理する', 'Gerenciar Classe', 'Управление классом', 'Gérer la classe', '수업 관리', 'Klasse verwalten', 'Gestisci classe', 'จัดการ Class', 'Osztály kezelése', 'Beheer klasse', 'curo Paleonemertea Class', 'Kelola Kelas', 'Sınıfı Yönet', 'Διαχείριση της κλάσης', 'مدیریت کلاس', 'Urus Kelas', 'క్లాస్ని నిర్వహించండి', 'வகுப்பை நிர்வகி', 'ક્લાસ મેનેજ કરો', 'Zarządzaj klasą', 'Управління класом', 'ਕਲਾਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați clasa', 'Class ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso Kilasi', 'Sarrafa Kundin'),
(346, 'manage_section', 'Manage Section', 'শাখা পরিচালনা করুন', 'Administrar la Sección', 'إدارة القسم', 'अनुभाग प्रबंधित करें', 'سیکشن کا نظم کریں', '管理部分', 'セクションを管理する', 'Gerenciar Seção', 'Управление разделами', 'Gérer la section', '섹션 관리', 'Abschnitt verwalten', 'Gestisci sezione', 'จัดการส่วน', 'Szekció kezelése', 'Beheer sectie', 'curo sect', 'Kelola Bagian', 'Bölümü Yönet', 'Διαχείριση της ενότητας', 'مدیریت بخش', 'Urus Seksyen', 'విభాగం నిర్వహించండి', 'பிரிவு நிர்வகி', 'વિભાગ મેનેજ કરો', 'Zarządzaj sekcją', 'Управління розділом', 'ਸੈਕਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați secțiunea', 'ပုဒ်မစီမံခန့်ခွဲရန်', 'Ṣakoso Apakan', 'Sarrafa Sashe'),
(347, 'manage_subject', 'Manage Subject', 'বিষয় পরিচালনা করুন', 'Administrar Asunto', 'إدارة الموضوع', 'विषय प्रबंधित करें', 'موضوع کا نظم کریں', '管理主题', '件名を管理する', 'Gerenciar Assunto', 'Управление предметами', 'Gérer le sujet', '주제 관리', 'Betreff verwalten', 'Gestisci soggetto', 'จัดการหัวเรื่อง', 'Subject kezelése', 'Beheer het onderwerp', 'curo Subject', 'Kelola Subjek', 'Konuyu Yönet', 'Διαχείριση θέματος', 'مدیریت موضوع', 'Uruskan Subjek', 'విషయాన్ని నిర్వహించండి', 'தலைப்பு நிர்வகி', 'વિષય સંચાલિત કરો', 'Zarządzaj tematem', 'Керувати темою', 'ਵਿਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați subiectul', 'အကြောင်းအရာစီမံခန့်ခွဲရန်', 'Ṣakoso Koko-ọrọ', 'Sarrafa Takardar'),
(348, 'manage_syllabus', 'Manage Syllabus', 'সিলেবাস পরিচালনা করুন', 'Administrar plan de estudios', 'إدارة المنهج', 'विषय प्रबंधित करें', 'Syllabus کو منظم کریں', '管理教学大纲', 'シラバスを管理する', 'Gerenciar o Syllabus', 'Управлять программой', 'Gérer le syllabus', '강의 계획서 관리', 'Syllabus verwalten', 'Gestisci il Sillabo', 'จัดการ Syllabus', 'A tanterv kezelése', 'Syllabus beheren', 'curo Syllabus', 'Mengelola Silabus', 'Ders Planını Yönet', 'Διαχείριση της διδακτέας ύλης', 'مدیریت برنامه درسی', 'Uruskan Sukatan pelajaran', 'సిలబస్ని నిర్వహించండి', 'பாடத்திட்டத்தை நிர்வகி', 'અભ્યાસક્રમ મેનેજ કરો', 'Zarządzaj programem Syllabus', 'Управління навчальним планом', 'ਸਿਲੇਬਸ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programa', 'သင်ရိုးမာတိကာများကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Syllabus', 'Sarrafa Syllabus'),
(349, 'manage_routine', 'Manage Routine', 'রূটিন পরিচালনা করুন', 'Administrar la rutina', 'إدارة الروتينية', 'नियमित रूप से प्रबंधित करें', 'روٹین کا نظم کریں', '管理例程', 'ルーチンを管理する', 'Gerenciar rotina', 'Управление регулярностью', 'Gérer les routines', '루틴 관리', 'Routine verwalten', 'Gestisci routine', 'จัดการประจำ', 'Rutinkezelés', 'Beheer routine', 'curo DEFUNCTORIUS', 'Kelola Rutin', 'Rutini Yönet', 'Διαχείριση της ρουτίνας', 'مدیریت معمول', 'Urus Rutin', 'రొటీన్ నిర్వహించండి', 'வழக்கமான நிர்வகி', 'નિયમિત રૂપે મેનેજ કરો', 'Zarządzaj procedurą', 'Управління звичайним', 'ਰੁਟੀਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rutina', 'ပုံမှန်စီမံခန့်ခွဲရန်', 'Ṣakoso Iṣakoso', 'Sarrafa Gyara'),
(350, 'manage_guardian', 'Manage Guardian', 'অভিভাবক পরিচালনা করুন', 'Administrar Guardian', 'إدارة الجارديان', 'संरक्षक प्रबंधन करें', 'گارڈین کا انتظام کریں', '管理监护人', 'Guardianを管理する', 'Manage Guardian', 'Управление опекуном', 'Manage Guardian', 'Guardian 관리', 'Wächter verwalten', 'Gestisci il guardiano', 'จัดการ Guardian', 'Guardian kezelése', 'Beheer Guardian', 'curo Custodes', 'Mengelola wali', 'Koruyucuyu yönet', 'Διαχειριστείτε τον Κηδεμόνα', 'مدیریت نگهبان', 'Urus Guardian', 'గార్డియన్ను నిర్వహించండి', 'கார்டியன் நிர்வகி', 'ગાર્ડિયન મેનેજ કરો', 'Zarządzaj opiekunem', 'Управління охоронцем', 'ਗਾਰਡੀਅਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Gardianul', 'ဂါးဒီးယန်းသတင်းစာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iṣakoso', 'Sarrafa Guardian'),
(351, 'manage_student', 'Manage Student', 'ছাত্র পরিচালনা করুন', 'Administrar estudiante', 'دارة الطالب', 'छात्र को प्रबंधित करें', 'طالب علم کا انتظام کریں', '管理学生', '学生を管理する', 'Gerenciar aluno', 'Управление Студентом', 'Gérer létudiant', '학생 관리', 'Schüler verwalten', 'Gestisci studente', 'จัดการนักเรียน', 'Diák kezelése', 'Beheer de student', 'Discipulus curo', 'Kelola Siswa', 'Öğrenciyi Yönet', 'Διαχείριση Φοιτητών', 'مدیریت دانش آموز', 'Uruskan Pelajar', 'విద్యార్థిని నిర్వహించండి', 'மாணவர் நிர்வகி', 'વિદ્યાર્થીનું સંચાલન કરો', 'Zarządzaj uczniem', 'Управління студентом', 'ਵਿਦਿਆਰਥੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați elevul', 'ကျောင်းသားစီမံခန့်ခွဲရန်', 'Ṣakoso awọn ọmọ-iwe', 'Sarrafa dalibi'),
(352, 'manage_assignment', 'Manage Assignment', 'অ্যাসাইনমেন্ট পরিচালনা করুন', 'Administrar la asignación', 'إدارة التعيين', 'असाइनमेंट प्रबंधित करें', 'اہتمام کا نظم کریں', '管理作业', '割り当てを管理する', 'Gerenciar Atribuição', 'Управление назначением', 'Gérer laffectation', '배정 관리', 'Zuordnung verwalten', 'Gestire lincarico', 'จัดการการมอบหมาย', 'Hozzárendelés kezelése', 'Toewijzing beheren', 'curo adsignatione', 'Kelola Penugasan', 'Ödev Yönetimi', 'Διαχείριση της εκχώρησης', 'تخصیص مدیریت', 'Urus Tugasan', 'అప్పగింతని నిర్వహించండి', 'பணியை நிர்வகி', 'સોંપણીનું સંચાલન કરો', 'Zarządzaj przypisaniem', 'Управління завданням', 'ਨਿਰਧਾਰਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați asignarea', 'တာဝန်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn iṣẹ', 'Sarrafa Ayyukan'),
(353, 'manage_submission', 'Manage Submission', 'সাবমিশন পরিচালনা করুন', 'Administrar presentación', 'إدارة الإرسال', 'सबमिशन प्रबंधित करें', 'جمع کرانے کا انتظام کریں', '管理提交', '提出を管理する', 'Gerenciar Envio', 'Управление представлением', 'Gérer la soumission', '제출 관리', 'Einreichung verwalten', 'Gestisci invio', 'จัดการการส่ง', 'Feladat kezelése', 'Inzending beheren', 'curo Submission', 'Mengelola Pengiriman', 'Göndermeyi Yönet', 'Διαχείριση υποβολής', 'مدیریت ارسال', 'Urus Penyerahan', 'సమర్పణను నిర్వహించండి', 'சமர்ப்பிப்பு நிர்வகி', 'સબમિશન મેનેજ કરો', 'Zarządzaj przesłaniem', 'Управління поданням', 'ਸਬਮਿ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați depunerea', 'တင်ပြမှုကိုစီမံခန့်ခွဲရန်', 'Ṣakoso awọn Gbigbanilaaye', 'Sarrafa Yarjejeniya'),
(354, 'manage_grade', 'Manage Grade', 'গ্রেড পরিচালনা করুন', 'Administrar Grado', 'إدارة الصف', 'ग्रेड प्रबंधित करें', 'گریڈ کا انتظام کریں', '管理成绩', 'グレード管理', 'Gerenciar classificação', 'Управление классом', 'Gérer la note', '학년 관리', 'Klasse verwalten', 'Gestisci Grado', 'จัดการระดับ', 'Kezelje a fokozatot', 'Beheer Grade', 'curo Romani', 'Kelola Grade', 'Sınıfı Yönet', 'Διαχείριση βαθμού', 'مدیریت درجه', 'Urus Gred', 'గ్రేడ్ నిర్వహించండి', 'தரம் நிர்வகி', 'ગ્રેડ મેનેજ કરો', 'Zarządzaj oceną', 'Управління оцінкою', 'ਗਰੇਡ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați gradul', 'အဆင့်စီမံခန့်ခွဲရန်', 'Ṣakoso Iwọn', 'Sarrafa sauti'),
(355, 'manage_exam_term', 'Manage Exam Term', 'পরীক্ষার টার্ম পরিচালনা করুন', 'Administrar el término del examen', 'إدارة مدة الامتحان', 'परीक्षा अवधि का प्रबंधन करें', 'امتحان کی اصطلاح کا انتظام کریں', '管理考试期限', '試験期間を管理する', 'Termo de gerenciamento de exames', 'Управление сроком рассмотрения', 'Gérer le terme dexamen', '시험 기간 관리', 'Prüfungsbedingung verwalten', 'Gestisci il termine dellesame', 'จัดการระยะสอบ', 'Vizsgaidőszak kezelése', 'Beheer examenperiode', 'Curo termino IV', 'Mengelola Ujian Term', 'Sınav Süresini Yönet', 'Διαχειριστείτε τον όρο εξέτασης', 'مدیریت دوره امتحان', 'Mengurus Terma Ujian', 'పరీక్షా టర్మ్ నిర్వహించండి', 'தேர்வு கால நிர்வகி', 'પરીક્ષા મુદતની વ્યવસ્થા કરો', 'Zarządzaj egzaminem', 'Управління терміном іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați termenul de examinare', 'စာမေးပွဲကာလစီမံခန့်ခွဲရန်', 'Ṣakoso akoko Aawo', 'Sarrafa Jarrabawa'),
(356, 'manage_exam_schedule', 'Manage Exam Schedule', 'পরীক্ষার শিডিউল পরিচালনা করুন', 'Administrar el horario del examen', 'إدارة جدول الامتحانات', 'परीक्षा अनुसूची का प्रबंधन करें', 'امتحان شیڈول کا نظم کریں', '管理考试时间表', '試験スケジュールを管理する', 'Manejar o horário do Exame', 'Управление расписанием экзаменов', 'Gérer le calendrier des examens', '시험 일정 관리', 'Prüfungsablauf verwalten', 'Gestisci il calendario degli esami', 'จัดการกำหนดการสอบ', 'A vizsgaütemezés kezelése', 'Beheer examenschema', 'Curo Test Morbi rhoncus', 'Kelola Jadwal Ujian', 'Sınav Takvimini Yönet', 'Διαχειριστείτε το πρόγραμμα εξετάσεων', 'مدیریت برنامه امتحانات', 'Mengurus Jadual Peperiksaan', 'పరీక్షా షెడ్యూల్ నిర్వహించండి', 'தேர்வு அட்டவணை நிர்வகி', 'પરીક્ષાનું શેડ્યૂલ મેનેજ કરો', 'Zarządzaj harmonogramem egzaminu', 'Управління розкладом іспитів', 'ਪ੍ਰੀਖਿਆ ਅਨੁਸੂਚੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programul de examen', 'စီမံခန့်ခွဲရန်စာမေးပွဲအချိန်ဇယား', 'Ṣakoso Akadii Akadọ', 'Sarrafa Jirgin Nazarin'),
(357, 'manage_suggestion', 'Manage Suggestion', 'সাজেশন পরিচালনা করুন', 'Administrar sugerencia', 'إدارة الاقتراح', 'सुझाव प्रबंधित करें', 'تجویز کا انتظام کریں', '管理建议', '提案を管理する', 'Gerenciar sugestão', 'Управление предложением', 'Gérer la suggestion', '제안 관리', 'Vorschläge verwalten', 'Gestire suggerimenti', 'จัดการคำแนะนำ', 'Javaslat kezelése', 'Suggestie beheren', 'curo Suggestion', 'Kelola Saran', 'Öneriyi Yönet', 'Διαχείριση της πρότασης', 'مدیریت پیشنهادی', 'Uruskan Cadangan', 'సూచన నిర్వహించండి', 'பரிந்துரை நிர்வகி', 'સૂચન મેનેજ કરો', 'Zarządzaj sugestią', 'Керувати пропозицією', 'ਸੁਝਾਅ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați sugestiile', 'အကြံပြုချက်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Ọrọ', 'Sarrafa Bayani'),
(358, 'manage_exam_attendance', 'Manage Exam Attendance', 'পরীক্ষার উপস্থিতি পরিচালনা করুন', 'Administrar la asistencia al examen', 'إدارة امتحان الحضور', 'परीक्षा उपस्थिति का प्रबंधन करें', 'امتحان کی حاضری کا نظم کریں', '管理考试考勤', '試験出席を管理する', 'Gerenciar atendimento ao exame', 'Управление экзаменом', 'Gérer la présence aux examens', '시험 출석 관리', 'Prüfungsbesuch verwalten', 'Gestisci la frequenza degli esami', 'จัดการการเข้าร่วมการสอบ', 'Vizsgálati részvétel kezelése', 'Beheer examen aanwezigheid', 'Curo IV Attendance', 'Mengelola Kehadiran Ujian', 'Sınav Katılımını Yönet', 'Διαχείριση συμμετοχής στις εξετάσεις', 'مدیریت حضور در آزمون', 'Menguruskan Kehadiran Peperiksaan', 'పరీక్షా హాజరు నిర్వహించండి', 'தேர்வுப் பணிகளை நிர்வகி', 'પરીક્ષા એટેન્ડન્સ મેનેજ કરો', 'Zarządzaj uczestnictwem w egzaminie', 'Керування відвідуванням іспитів', 'ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați participarea la examene', 'စာမေးပွဲတက်ရောက်စီမံခန့်ခွဲရန်', 'Ṣakoso akoko isinwo', 'Sarrafa Harkokin Binciken'),
(359, 'manage_mark', 'Manage Mark', 'মার্ক পরিচালনা করুন', 'Administrar marca', 'إدارة مارك', 'मार्क को प्रबंधित करें', 'مارک کا نظم کریں', '管理标记', 'マークを管理する', 'Gerenciar marca', 'Управление меткой', 'Gérer la marque', '마크 관리', 'Mark verwalten', 'Gestisci Marco', 'จัดการ Mark', 'Mark kezelése', 'Beheer Mark', 'Mark curo', 'Kelola Mark', 'Markı Yönet', 'Διαχείριση σήματος', 'مدیریت علامت گذاری', 'Urus Mark', 'మార్క్ని నిర్వహించండి', 'மார்க் நிர்வகி', 'માર્ક મેનેજ કરો', 'Zarządzaj Markem', 'Керувати знаком', 'ਮਾਰਕ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați marca', 'မာကုကိုစီမံခန့်ခွဲ', 'Ṣakoso Samisi', 'Sarrafa Alama'),
(360, 'manage_mark_sheet', 'Manage Mark Sheet', 'মার্ক শীট পরিচালনা করুন', 'Administrar la hoja de marca', 'إدارة علامة ورقة', 'मार्क शीट को प्रबंधित करें', 'مارک شیٹ کا انتظام کریں', '管理标记表', 'マークシートを管理する', 'Manage Mark Sheet', 'Управление меткой', 'Gérer la feuille de marque', '마크 시트 관리', 'Mark Sheet verwalten', 'Gestisci Mark Sheet', 'จัดการแผ่นมาร์ค', 'Márkajelzés kezelése', 'Markeringsblad beheren', 'Curo Mark Sheet', 'Kelola Lembar Mark', 'Marka Sayfasını Yönet', 'Διαχείριση φύλλου σημείων', 'مدیریت برگه علامت گذاری', 'Urus Mark Sheet', 'మార్క్ షీట్ని నిర్వహించండి', 'மார்க் தாளை நிர்வகி', 'માર્કશીટ મેનેજ કરો', 'Zarządzaj arkuszem markerów', 'Керування таблицею маркування', 'ਮਾਰਕ ਸ਼ੀਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați foaia de marcă', 'မာကုစာရွက်စီမံခန့်ခွဲရန်', 'Ṣakoso Ṣiṣisi Marisi', 'Sarrafa Takardar Market'),
(361, 'manage_exam_result', 'Manage Exam Result', 'পরীক্ষার ফলাফল পরিচালনা করুন', 'Administrar el resultado del examen', 'إدارة نتيجة الامتحان', 'परीक्षा परिणाम प्रबंधित करें', 'امتحان کے نتائج کا نظم کریں', '管理考试结果', '試験結果を管理する', 'Gerenciar Resultado do Exame', 'Управлять результатом экзамена', 'Gérer le résultat dexamen', '시험 결과 관리', 'Prüfungsergebnis verwalten', 'Gestisci risultato esame', 'จัดการผลลัพธ์การสอบ', 'Vizsgálati eredmény kezelése', 'Beheer examenresultaat', 'Curo Test Result', 'Mengelola Hasil Ujian', 'Sınav Sonuçlarını Yönet', 'Διαχείριση Αποτέλεσμα Εξετάσεων', 'مدیریت نتیجه آزمون', 'Urus Keputusan Peperiksaan', 'పరీక్ష ఫలితం నిర్వహించండి', 'தேர்வு முடிவு நிர்வகி', 'પરીક્ષાનું પરિણામ મેનેજ કરો', 'Zarządzaj wynikami egzaminu', 'Управління результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਨਤੀਜੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul examenului', 'စာမေးပွဲရလဒ်စီမံခန့်ခွဲရန်', 'Ṣakoso abajade abajade', 'Sarrafa sakamakon binciken'),
(362, 'manage_promotion', 'Manage Promotion', 'পদোন্নতি পরিচালনা করুন', 'Administrar promoción', 'إدارة الترويج', 'पदोन्नति प्रबंधित करें', 'فروغ کا انتظام کریں', '管理推广', 'プロモーションの管理', 'Gerenciar Promoção', 'Управление продвижением', 'Gérer la promotion', '프로모션 관리', 'Werbung verwalten', 'Gestisci la promozione', 'จัดการโปรโมชัน', 'A promóció kezelése', 'Promotie beheren', 'curo Promotio', 'Kelola Promosi', 'Promosyonu Yönetin', 'Διαχείριση προώθησης', 'مدیریت تبلیغ', 'Uruskan Promosi', 'ప్రచారం నిర్వహించండి', 'விளம்பரத்தை நிர்வகி', 'પ્રમોશન મેનેજ કરો', 'Zarządzaj promocją', 'Керування просуванням', 'ਤਰੱਕੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați promovarea', 'မြှင့်တင်ရေးစီမံခန့်ခွဲရန်', 'Ṣakoso Ipolowo', 'Sarrafa gabatarwa'),
(363, 'manage_book', 'Manage Book', 'বই পরিচালনা করুন', 'Administrar libro', 'إدارة الكتاب', 'पुस्तक को प्रबंधित करें', 'کتاب کا نظم کریں', '管理书籍', '書籍を管理する', 'Manage Book', 'Управление книгой', 'Gérer le livre', '도서 관리', 'Buch verwalten', 'Gestisci il libro', 'จัดการหนังสือ', 'Könyv kezelése', 'Beheer het boek', 'curo Books', 'Kelola Buku', 'Kitabı Yönet', 'Διαχείριση Βιβλίου', 'مدیریت کتاب', 'Urus Buku', 'బుక్ని నిర్వహించండి', 'புத்தகத்தை நிர்வகி', 'બુક મેનેજ કરો', 'Zarządzaj książką', 'Керувати книгою', 'ਬੁੱਕ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cartea', 'စာအုပ်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Iwe', 'Sarrafa Littafin'),
(364, 'manage_library_member', 'Manage Library Member', 'লাইব্রেরি সদস্য পরিচালনা করুন', 'Administrar miembro de la biblioteca', 'إدارة عضو المكتبة', 'लाइब्रेरी सदस्य को प्रबंधित करें', 'لائبریری اراکین کو منظم کریں', '管理图书馆成员', '図書館員を管理する', 'Gerenciar Membro da Biblioteca', 'Управление членом библиотеки', 'Gérer un membre de bibliothèque', '도서관 회원 관리', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', 'จัดการสมาชิกห้องสมุด', 'A könyvtári tagok kezelése', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'Kütüphane Üyesini Yönet', 'Διαχείριση μέλους μέλους βιβλιοθήκης', 'مدیریت عضو کتابخانه', 'Urus Ahli Perpustakaan', 'లైబ్రరీ సభ్యుడిని నిర్వహించండి', 'நூலக உறுப்பினர் நிர்வகி', 'લાઇબ્રેરી સભ્ય મેનેજ કરો', 'Zarządzaj członkiem biblioteki', 'Керування членом бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați membrul bibliotecii', 'စာကြည့်တိုက်အဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ìkàwé Ẹgbẹ', 'Sarrafa Library Member'),
(365, 'manage_issue_and_return', 'Manage Issue & Return', 'ইস্যু এবং রিটার্ন পরিচালনা করুন', 'Administrar problema y devolución', 'إدارة المشكلة والعودة', 'अंक और वापसी का प्रबंधन करें', 'مسئلہ اور واپسی کا انتظام کریں', '管理问题和退货', '問題とリターンを管理する', 'Gerenciar Problema e Retorno', 'Управление выпуском и возвратом', 'Gérer le problème et le retour', '문제 및 반환 관리', 'Problem und Rückgabe verwalten', 'Gestisci problema e ritorno', 'จัดการปัญหาและการส่งคืน', 'A kibocsátás és a visszatérés kezelése', 'Beheer kwestie en terugkeer', 'Curo Part et Redi', 'Kelola Masalah dan Kembali', 'Sayı ve İadeyi Yönetin', 'Διαχείριση της έκδοσης και της επιστροφής', 'مدیریت مسئله و بازگشت', 'Menguruskan Isu dan Pulangan', 'ఇష్యూ మరియు రిటర్న్ని నిర్వహించండి', 'Issue & Return ஐ நிர்வகி', 'અંક અને રીટર્ન મેનેજ કરો', 'Zarządzaj problemem i zwrotem', 'Управління проблемою та поверненням', 'ਸਮੱਸਿਆ ਅਤੇ ਵਾਪਸੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați emisiunea și returnarea', 'စီမံခန့်ခွဲ Issue & ပြန်သွား', 'Ṣakoso oro & Pada', 'Sarrafa Fitawa & Komawa'),
(366, 'manage_vehicle', 'Manage Vehicle', 'যানবাহন পরিচালনা করুন', 'Administrar vehículo', 'إدارة المركبات', 'वाहन को प्रबंधित करें', 'گاڑی کا نظم کریں', '管理车辆', '車両を管理する', 'Gerenciar veículo', 'Управление транспортным средством', 'Gérer le véhicule', '차량 관리', 'Fahrzeug verwalten', 'Gestisci veicolo', 'จัดการยานพาหนะ', 'Jármű kezelése', 'Beheer voertuig', 'curo vehiculum', 'Kelola Kendaraan', 'Aracı Yönet', 'Διαχειριστείτε το όχημα', 'مدیریت خودرو', 'Menguruskan Kenderaan', 'వాహనాన్ని నిర్వహించండి', 'வாகனத்தை நிர்வகி', 'વાહનનું સંચાલન કરો', 'Zarządzaj pojazdem', 'Управління транспортним засобом', 'ਵਾਹਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vehiculul', 'ယာဉ်များကိုစီမံကွပ်ကဲ', 'Ṣakoso ọkọ', 'Sarrafa abin hawa'),
(367, 'manage_route', 'Manage Route', 'রুট পরিচালনা করুন', 'Administrar ruta', 'إدارة الطريق', 'रूट प्रबंधित करें', 'روٹ کا نظم کریں', '管理路线', 'ルートを管理する', 'Gerencie a rota', 'Управление маршрутом', 'Gérer la route', '경로 관리', 'Route verwalten', 'Gestisci percorso', 'จัดการเส้นทาง', 'Útvonal kezelése', 'Beheer route', 'curo itineris', 'Kelola Rute', 'Güzergahı Yönet', 'Διαχείριση διαδρομής', 'مدیریت مسیر', 'Urus Laluan', 'మార్గాన్ని నిర్వహించండి', 'வழி நிர்வகி', 'રૂટનું સંચાલન કરો', 'Zarządzaj trasą', 'Керувати маршрутом', 'ਰੂਟ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați rută', 'လမ်းကြောင်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso Itọsọna', 'Sarrafa Hanya'),
(368, 'manage_transport_member', 'Manage Transport Member', 'পরিবহন সদস্য পরিচালনা করুন', 'Administrar miembro de transporte', 'إدارة عضو النقل', 'परिवहन सदस्य को प्रबंधित करें', 'ٹرانسپورٹ اراکین کا انتظام کریں', '管理交通会员', '移送メンバーの管理', 'Gerenciar o Membro do Transporte', 'Управление транспортом', 'Manage Transport Member', '전송 구성원 관리', 'Transportmitglied verwalten', 'Gestisci membro di trasporto', 'จัดการสมาชิกการขนส่ง', 'A közlekedési képviselő kezelése', 'Beheer transportlid', 'Curo onerariam Member', 'Kelola Anggota Transport', 'Taşıyıcı Üyeyi Yönet', 'Διαχειριστείτε το μέλος μεταφοράς', 'مدیریت حمل و نقل', 'Urus Ahli Pengangkutan', 'రవాణా సభ్యునిని నిర్వహించండి', 'போக்குவரத்து உறுப்பினர் நிர்வகி', 'પરિવહન સભ્યને મેનેજ કરો', 'Zarządzaj członkiem transportu', 'Керувати членом транспорту', 'ਟਰਾਂਸਪੋਰਟ ਮੈਂਬਰ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați transportul membru', 'ပို့ဆောင်ရေးအဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ọkọ-ajo', 'Sarrafa Sanya Manyan'),
(369, 'manage_hostel', 'Manage Hostel', 'ছাত্রাবাস পরিচালনা করুন', 'Administrar Hostel', 'إدارة نزل', 'होस्टल को प्रबंधित करें', 'ہالینڈ کا نظم کریں', '管理旅馆', 'ホステルを管理する', 'Manage Hostel', 'Управление хостелом', 'Gérer lauberge', '호스텔 관리', 'Hostel verwalten', 'Gestisci lostello', 'จัดการ Hostel', 'Kezelheti a Hostelet', 'Beheer Hostel', 'curo Hostel', 'Kelola Hostel', 'Pansiyon Yönet', 'Διαχειριστείτε τον ξενώνα', 'مدیریت خوابگاه', 'Urus Asrama', 'హాస్టల్ను నిర్వహించండి', 'Hostel நிர்வகி', 'છાત્રાલયનું સંચાલન કરો', 'Zarządzaj Hostelem', 'Управління хостел', 'ਹੋਸਟਲ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Pensiune', 'ဘော်ဒါဆောင်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn ile ayagbe', 'Sarrafa dakunan kwanan dalibai'),
(370, 'manage_room', 'Manage Room', 'কক্ষ পরিচালনা করুন', 'Administrar habitación', 'إدارة الغرفة', 'कक्ष को प्रबंधित करें', 'کمرے کا نظم کریں', '管理室', '部屋を管理する', 'Manage Room', 'Управление комнатой', 'Gérer la pièce', '방 관리', 'Raum verwalten', 'Gestisci stanza', 'จัดการห้อง', 'A szoba kezelése', 'Beheer kamer', 'curo volutpat', 'Kelola Ruang', 'Oda Yönet', 'Διαχείριση δωματίου', 'مدیریت اتاق', 'Urus Bilik', 'గదిని నిర్వహించండి', 'அறை நிர்வகி', 'રૂમ મેનેજ કરો', 'Zarządzaj pokojem', 'Управління кімнатою', 'ਕਮਰਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați camera', 'အခန်းကိုစီမံခန့်ခွဲ', 'Ṣakoso yara', 'Sarrafa dakin'),
(371, 'manage_hostel_member', 'Manage Hostel Member', 'ছাত্রাবাস  সদস্য পরিচালনা করুন', 'Manage Hostel Member', 'إدارة عضو في هوستيل', 'छात्रावास का सदस्य प्रबंधित करें', 'ہالینڈ کے رکن کا انتظام کریں', '管理旅馆会员', 'ホステルメンバーの管理', 'Manage Hostel Member', 'Управление хостелом', 'Gérer le membre dauberge', '호스텔 회원 관리', 'Hostel-Mitglied verwalten', 'Gestisci membro dellostello', 'จัดการสมาชิก Hostel', 'Kezelőtagok kezelése', 'Beheer Hostel Lid', 'Curo Member Hostel', 'Kelola anggota asrama', 'Yönetici Hostel Üyeliği', 'Διαχειριστείτε το μέλος του ξενώνα', 'مدیریت اشتراکی', 'Menguruskan Ahli Asrama', 'హాస్టల్ సభ్యునిని నిర్వహించండి', 'Hostel உறுப்பினர் நிர்வகி', 'છાત્રાલય સભ્યને મેનેજ કરો', 'Zarządzaj Hostelem', 'Керувати членом гуртом', 'ਹੋਸਟਲ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați un membru al căminului', 'ဘော်ဒါဆောင်အဖွဲ့ဝင်ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn ọmọ ẹgbẹ ile-ogun', 'Sarrafa Dakunan kwanan dalibai Member'),
(372, 'manage_message', 'Manage Message', 'বার্তা পরিচালনা করুন', 'Administrar mensaje', 'إدارة الرسالة', 'संदेश प्रबंधित करें', 'پیغام کا نظم کریں', '管理消息', 'メッセージを管理する', 'Gerenciar Mensagem', 'Управление сообщением', 'Gérer le message', '메시지 관리', 'Nachricht verwalten', 'Gestisci il messaggio', 'จัดการข้อความ', 'Üzenet kezelése', 'Beheer bericht', 'curo Nuntius', 'Kelola pesan', 'İletiyi Yönet', 'Διαχείριση μηνυμάτων', 'مدیریت پیام', 'Uruskan Mesej', 'సందేశాన్ని నిర్వహించండి', 'செய்தியை நிர்வகிக்கவும்', 'સંદેશ મેનેજ કરો', 'Zarządzaj wiadomością', 'Управління повідомленням', 'ਸੁਨੇਹਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați mesajul', 'ကို Message များကိုစီမံကွပ်ကဲ', 'Ṣakoso Ifiranṣẹ', 'Sarrafa Saƙo'),
(373, 'manage_email', 'Manage Email', 'ইমেল পরিচালনা করুন', 'Administrar correo electrónico', 'إدارة البريد الإلكتروني', 'ईमेल प्रबंधित करें', 'ای میل کا انتظام کریں', '管理邮件', 'メールを管理する', 'Gerenciar Email', 'Управление электронной почтой', 'Gérer lemail', '이메일 관리', 'E-Mail verwalten', 'Gestisci email', 'จัดการอีเมล', 'E-mail kezelése', 'Beheer e-mail', 'curo Email', 'Kelola Email', 'E-postayı Yönet', 'Διαχείριση μηνυμάτων ηλεκτρονικού ταχυδρομείου', 'مدیریت ایمیل', 'Urus E-mel', 'ఇమెయిల్ను నిర్వహించండి', 'மின்னஞ்சல் நிர்வகி', 'ઇમેઇલ સંચાલિત કરો', 'Zarządzaj pocztą e-mail', 'Керувати електронною поштою', 'ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailul', 'အီးမေးလ်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Imeeli', 'Sarrafa Imel'),
(374, 'manage_sms', 'Manage SMS', 'এসএমএস পরিচালনা করুন', 'Administrar SMS', 'إدارة سمز', 'एसएमएस प्रबंधित करें', 'ایس ایم ایس کا نظم کریں', '管理短信', 'SMSの管理', 'Gerenciar SMS', 'Управление SMS', 'Gérer les SMS', 'SMS 관리', 'SMS verwalten', 'Gestisci SMS', 'จัดการ SMS', 'SMS kezelése', 'Beheer SMS', 'curo SMS', 'Kelola SMS', 'SMSi Yönet', 'Διαχείριση SMS', 'مدیریت اس ام اس', 'Uruskan SMS', 'SMS ను నిర్వహించండి', 'SMS ஐ நிர்வகி', 'એસએમએસ મેનેજ કરો', 'Zarządzaj SMS-em', 'Управління SMS', 'SMS ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați SMS-ul', 'SMS ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso SMS', 'Sarrafa SMS'),
(375, 'manage_notice', 'Manage Notice', 'বিজ্ঞপ্তি পরিচালনা করুন', 'Administrar aviso', 'إدارة الإشعار', 'नोटिस प्रबंधित करें', 'نوٹس کا نظم کریں', '管理通知', '通知の管理', 'Gerenciar Aviso', 'Управление уведомлением', 'Gérer lavis', '공지 관리', 'Benachrichtigung verwalten', 'Gestisci avviso', 'จัดการประกาศ', 'Értesítés kezelése', 'Beheer Kennisgeving', 'curo Notitia', 'Mengelola Pemberitahuan', 'Bildirimi Yönet', 'Διαχειριστείτε την ειδοποίηση', 'مدیریت اطلاعیه', 'Urus Notis', 'నోటీసుని నిర్వహించండి', 'அறிவிப்பை நிர்வகி', 'નોટિસ મેનેજ કરો', 'Zarządzaj zawiadomieniem', 'Керувати повідомленням', 'ਨੋਟਿਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați notificarea', 'သတိပြုပါစီမံခန့်ခွဲရန်', 'Ṣakoso Akiyesi', 'Sarrafa sanarwa'),
(376, 'manage_news', 'Manage News', 'সংবাদ পরিচালনা করুন', 'Administrar noticias', 'إدارة الأخبار', 'समाचार प्रबंधित करें', 'خبریں انتظام کریں', '管理新闻', 'ニュースを管理する', 'Gerenciar Notícias', 'Управление новостями', 'Gérer les actualités', '뉴스 관리', 'Nachrichten verwalten', 'Gestisci notizie', 'จัดการข่าวสาร', 'Hírek kezelése', 'Beheer nieuws', 'curo News', 'Kelola Berita', 'Haberleri Yönet', 'Διαχείριση ειδήσεων', 'مدیریت اخبار', 'Urus Berita', 'వార్తలను నిర్వహించండి', 'செய்திகள் நிர்வகி', 'સમાચાર મેનેજ કરો', 'Zarządzaj wiadomościami', 'Керувати новинами', 'ਖ਼ਬਰਾਂ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați știrile', 'သတင်းကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Iroyin', 'Sarrafa labarai'),
(377, 'manage_holiday', 'Manage Holiday', 'ছুটি পরিচালনা করুন', 'Administrar vacaciones', 'إدارة عطلة', 'छुट्टी का प्रबंधन करें', 'چھٹیوں کا نظم کریں', '管理假期', '休日を管理する', 'Gerenciar férias', 'Управление отдыхом', 'Gérer les vacances', '휴일 관리', 'Feiertage verwalten', 'Gestisci le vacanze', 'จัดการวันหยุด', 'Nyaralás kezelése', 'Vakantie beheren', 'curo Holiday', 'Kelola Liburan', 'Tatili Yönet', 'Διαχείριση Διακοπών', 'مدیریت تعطیلات', 'Urus Percutian', 'హాలిడే నిర్వహించండి', 'விடுமுறை நிர்வகி', 'હોલિડે મેનેજ કરો', 'Zarządzaj wakacjami', 'Управління відпочинком', 'ਹਾਲੀਆ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați sărbătorile', 'အားလပ်ရက်များကိုစီမံကွပ်ကဲ', 'Ṣakoso Isinmi', 'Sarrafa hutu'),
(378, 'manage_event', 'Manage Event', 'ইভেন্ট পরিচালনা করুন', 'Administrar evento', 'إدارة الحدث', 'ईवेंट प्रबंधित करें', 'ایونٹ کا نظم کریں', '管理事件', 'イベントを管理する', 'Gerenciar Evento', 'Управление событием', 'Gérer lévénement', '이벤트 관리', 'Ereignis verwalten', 'Gestisci evento', 'จัดการกิจกรรม', 'Esemény kezelése', 'Beheer evenement', 'curo Vicis', 'Kelola Acara', 'Etkinliği Yönet', 'Διαχείριση του συμβάντος', 'مدیریت رویداد', 'Uruskan Acara', 'ఈవెంట్ను నిర్వహించండి', 'நிகழ்வு நிர்வகி', 'ઇવેન્ટ મેનેજ કરો', 'Zarządzaj wydarzeniem', 'Управління подією', 'ਇਵੈਂਟ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați evenimentul', 'Event ကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ti oyan', 'Sarrafa Ayyukan'),
(379, 'manage_visitor', 'Manage Visitor', 'আগন্তুক তথ্য পরিচালনা করুন', 'Administrar visitante', 'إدارة الزائر', 'विज़िटर को प्रबंधित करें', 'وزیٹر کا نظم کریں', '管理访问者', '訪問者を管理する', 'Gerenciar visitantes', 'Управление посетителем', 'Gérer le visiteur', '방문자 관리', 'Besucher verwalten', 'Gestisci visitatore', 'จัดการผู้เข้าชม', 'A látogató kezelése', 'Beheer bezoeker', 'curo Visitor', 'Kelola Pengunjung', 'Ziyaretçiyi Yönet', 'Διαχείριση επισκεπτών', 'مدیریت بازدید کننده', 'Urus Pelawat', 'సందర్శకులని నిర్వహించండి', 'பார்வையாளர் நிர்வகி', 'મુલાકાતીને મેનેજ કરો', 'Zarządzaj odwiedzającym', 'Керувати відвідувачем', 'ਵਿਜ਼ਿਟਰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vizitatorul', 'ဧည့်သည်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Alejo', 'Sarrafa baƙo'),
(380, 'manage_fee_type', 'Manage Fee Type', 'ফি টাইপ পরিচালনা করুন', 'Administrar tipo de tarifa', 'إدارة نوع الرسوم', 'शुल्क प्रकार का प्रबंधन करें', 'فیس قسم کا انتظام کریں', '管理费用类型', '手数料タイプの管理', 'Gerenciar Tipo de Taxa', 'Управление платежом', 'Gérer le type de frais', '수수료 유형 관리', 'Gebührenart verwalten', 'Gestisci tipo di tariffa', 'จัดการประเภทค่าธรรมเนียม', 'Kezelési díj kezelése', 'Beheer Fee Type', 'Curo Save Type', 'Mengelola Jenis Biaya', 'Ücret Tipini Yönetin', 'Διαχείριση τύπου αμοιβής', 'مدیریت نوع هزینه', 'Urus Jenis Bayaran', 'ఫీజు రకం నిర్వహించండి', 'கட்டணம் வகை நிர்வகி', 'ફી પ્રકારનું સંચાલન કરો', 'Zarządzaj typem opłaty', 'Управління формами оплати', 'ਫੀਸ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de taxă', 'ကြေးအမျိုးအစားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn iru owo sisan', 'Sarrafa Nauin Farashin'),
(381, 'manage_invoice', 'Manage Invoice', 'চালান পরিচালনা করুন', 'Administrar Factura', 'إدارة الفاتورة', 'चालान प्रबंधित करें', 'انوائس کا انتظام کریں', '管理发票', '請求書の管理', 'Gerenciar Fatura', 'Управление счетом', 'Gérer la facture', '송장 관리', 'Rechnung verwalten', 'Gestisci la fattura', 'จัดการใบแจ้งหนี้', 'Számla kezelése', 'Factuur beheren', 'curo cautionem', 'Kelola Faktur', 'Fatura Yönetimi', 'Διαχείριση τιμολογίου', 'مدیریت فاکتور', 'Urus Invois', 'వాయిస్ని నిర్వహించండి', 'விலைப்பட்டியல் நிர்வகி', 'ઇન્વૉઇસ મેનેજ કરો', 'Zarządzaj fakturą', 'Керувати рахунком-фактурою', 'ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura', 'ငွေတောင်းခံလွှာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iširo', 'Sarrafa daftari'),
(382, 'manage_due_invoice', 'Manage Due Invoice', 'বাকি চালান পরিচালনা করুন', 'Administrar la factura adeudada', 'إدارة الفاتورة المستحقة', 'नियत चालान प्रबंधित करें', 'ذمہ داری انوائس کا نظم کریں', '管理到期发票', '支払請求の管理', '`Gerenciar a Fatura devida', 'Управление счет-фактурой', 'Gérer la facture due', '송장 처리', 'Fällige Rechnung verwalten', 'Gestire la dovuta fattura', 'จัดการใบแจ้งหนี้ที่ครบกำหนด', 'Betöltési számla kezelése', 'Beheer de verschuldigde factuur', 'Ob cautionem Curo', 'Kelola Tagihan Karena', 'Ödenen Fatura Yönetimi', 'Διαχείριση του οφειλόμενου τιμολογίου', 'مدیریت حساب فوری', 'Urus Invois yang Dikehendaki', 'వాయిస్ వాయిస్ని నిర్వహించండి', 'காரணமாக விலைப்பட்டியல் நிர்வகி', 'કારણે ભરતિયું મેનેજ કરો', 'Zarządzaj niezobowiązującą fakturą', 'Керувати належним рахунком-фактурою', 'ਬਾਹਰੀ ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura datorată', 'ကြောင့်ငွေတောင်းခံလွှာကိုစီမံခန့်ခွဲ', 'Ṣakoso Iširo Ibẹrẹ', 'Sarrafa Ƙari Bayarwa'),
(383, 'manage_expenditure_head', 'Manage Expenditure Head', 'ব্যয় হেড পরিচালনা করুন', 'Administrar Jefe de Gastos', 'إدارة النفقات رئيس', 'व्यय प्रमुख का प्रबंधन करें', 'اخراجات کا انتظام کریں', '管理支出主管', '支出頭を管理する', 'Gerenciar Cabeça de Despesas', 'Управление руководителем расходов', 'Gérer le chef des dépenses', '지출 헤드 관리', 'Ausgabenleiter verwalten', 'Gestisci il capo delle spese', 'จัดการหัวหน้าค่าใช้จ่าย', 'Kezelési költség kezelése', 'Beheer uitgavenhoofd', 'Curo capite sis crustum', 'Mengelola Kepala Biaya', 'Harcama Kafasını Yönet', 'Διαχείριση επικεφαλής δαπανών', 'مدیریت سر هزینه', 'Menguruskan Ketua Perbelanjaan', 'వ్యయ హెడ్ని నిర్వహించండి', 'செலவுத் தலைப்பை நிர்வகி', 'ખર્ચ હેડનું સંચાલન કરો', 'Zarządzaj głową wydatków', 'Управління витратами голови', 'ਖ਼ਰਚੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați șeful cheltuielilor', 'အသုံးစရိတ်ဌာနမှူးများကိုစီမံကွပ်ကဲ', 'Ṣakoso ori oṣuwọn', 'Sarrafa Shugaban Kuɗi'),
(384, 'manage_expenditure', 'Manage Expenditure', 'ব্যয় পরিচালনা করুন', 'Administrar el gasto', 'إدارة النفقات', 'व्यय प्रबंधित करें', 'اخراجات کا انتظام کریں', '管理支出', '支出の管理', 'Gerenciar Despesas', 'Управление расходами', 'Gérer les dépenses', '지출 관리', 'Ausgaben verwalten', 'Gestisci le spese', 'จัดการค่าใช้จ่าย', 'A kiadások kezelése', 'Uitgaven beheren', 'curo Custus', 'Mengelola Pengeluaran', 'Harcamaları Yönetin', 'Διαχείριση των δαπανών', 'مدیریت هزینه ها', 'Urus Perbelanjaan', 'వ్యయాలను నిర్వహించండి', 'செலவுகளை நிர்வகி', 'ખર્ચ મેનેજ કરો', 'Zarządzaj wydatkami', 'Управління витратами', 'ਖਰਚ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cheltuielile', 'အသုံးစရိတ်စီမံခန့်ခွဲရန်', 'Ṣakoso owo sisan', 'Sarrafa Kuɗi'),
(385, 'manage_income_head', 'Manage Income Head', 'আয় হেড পরিচালনা করুন', 'Administrar cabeza de ingresos', 'إدارة رأس الدخل', 'आय हेड प्रबंधन करें', 'انکم سر کا انتظام کریں', '管理收入负责人', '所得管理をする', 'Gerencie o Chefe de Renda', 'Управление доходом', 'Gérer le revenu', '소득 헤드 관리', 'Einkommenskopf verwalten', 'Gestisci il reddito', 'จัดการหัวหน้ารายได้', 'A jövedelemfej kezelése', 'Beheer inkomstenstroom', 'Reditus in caput Curo', 'Mengelola Kepala Pendapatan', 'Gelir Kafasını Yönetin', 'Διαχείριση κεφαλής εισοδήματος', 'مدیریت درآمد سر', 'Urus Ketua Pendapatan', 'ఆదాయం హెడ్ని నిర్వహించండి', 'வருமானத் தலைப்பை நிர்வகி', 'ઇન્કમ હેડ મેનેજ કરો', 'Zarządzaj głową przychodów', 'Управління головою доходів', 'ਇਨਕਮ ਹੈਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați capul venitului', 'ဝင်ငွေခွန်ဌာနမှူးများကိုစီမံကွပ်ကဲ', 'Ṣakoso Ori-ori Owo Oya', 'Sarrafa Shugaban Asusun'),
(386, 'manage_income', 'Manage Income', 'আয় পরিচালনা করুন', 'Administrar ingresos', 'إدارة الدخل', 'आय प्रबंधित करें', 'آمدنی کا انتظام کریں', '管理收入', '収入を管理する', 'Gerar Renda', 'Управление доходом', 'Gérer le revenu', '소득 관리', 'Einkommen verwalten', 'Gestire il reddito', 'จัดการรายได้', 'Kezelje a jövedelmet', 'Beheer het inkomen', 'curo Reditus', 'Mengelola Penghasilan', 'Geliri Yönet', 'Διαχείριση εσόδων', 'مدیریت درآمد', 'Urus Pendapatan', 'ఆదాయాన్ని నిర్వహించండి', 'வருமானத்தை நிர்வகி', 'આવકનું સંચાલન કરો', 'Zarządzaj dochodem', 'Управління доходом', 'ਆਮਦਨੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Venitul', 'ဝင်ငွေခွန်များကိုစီမံကွပ်ကဲ', 'Ṣakoso awọn Owo-ori', 'Sarrafa samun kudin shiga'),
(387, 'responsibility', 'Responsibility', 'দায়িত্ব', 'Responsabilidad', 'المسئولية', 'ज़िम्मेदारी', 'ذمہ داری', '责任', '責任', 'Responsabilidade', 'Обязанность', 'Responsabilité', '책임', 'Verantwortung', 'Responsabilità', 'ความรับผิดชอบ', 'Felelősség', 'Verantwoordelijkheid', 'responsibility', 'Tanggung jawab', 'sorumluluk', 'Ευθύνη', 'مسئوليت', 'Tanggungjawab', 'బాధ్యత', 'பொறுப்பு', 'જવાબદારી', 'Odpowiedzialność', 'Відповідальність', 'ਜ਼ਿੰਮੇਵਾਰੀ', 'Responsabilitate', 'တာဝန်', 'Ojúṣe', 'alhakin'),
(388, 'new', 'New', 'নতুন', 'Nuevo', 'الجديد', 'नया', 'نئی', '新', '新しい', 'Novo', 'новый', 'Nouveau', '새로운', 'Neu', 'Nuovo', 'ใหม่', 'Új', 'nieuwe', 'novus', 'Baru', 'Yeni', 'Νέος', 'جدید', 'Baru', 'న్యూ', 'புதிய', 'નવું', 'Nowy', 'Новий', 'ਨਵਾਂ', 'Nou', 'နယူး', 'Titun', 'sabon'),
(389, 'private_messaging', 'Private Messaging', 'ব্যক্তিগত বার্তা', 'Mensajería privada', 'الرسائل الخاصة', 'निजी मेसेजिंग', 'ذاتی پیغام رسانی', '私人消息', 'プライベートメッセージング', 'Mensagens privadas', 'Частные сообщения', 'Messagerie privée', '비공개 메시지', 'Private Nachrichten', 'Messaggistica privata', 'ข้อความส่วนตัว', 'Privát üzenetküldés', 'Privéberichten', 'Secretum Nuntius', 'Pesan Pribadi', 'Özel Mesajlaşma', 'Ιδιωτικά μηνύματα', 'پیام خصوصی', 'Mesej Persendirian', 'ప్రైవేట్ సందేశం', 'தனியார் செய்தி', 'ખાનગી મેસેજિંગ', 'Prywatne wiadomości', 'Приватні повідомлення', 'ਪ੍ਰਾਈਵੇਟ ਸੁਨੇਹਾ', 'Mesageria privată', 'ပုဂ္ဂလိက Messaging ကို', 'Fifiranṣẹ Aladani', 'Private Saƙo'),
(390, 'activate_now', 'Activate Now', 'সক্রিয় করুন', 'Activar ahora', 'نشط الآن', 'अब सक्रिय करें', 'ابھی چالو کریں', '立即激活', '今すぐアクティブにする', 'Ative agora', 'Активировать сейчас', 'Activer maintenant', '지금 실행 시켜라', 'Jetzt aktivieren', 'Attivare ora', 'เปิดใช้งานเดี๋ยวนี้', 'Aktiváld most', 'Activeer nu', 'Nunc strenuus', 'Sekarang aktif', 'Şimdi aktifleştir', 'Ενεργοποίηση τώρα', 'هم اکنون فعال کن', 'Aktifkan sekarang', 'ఇప్పుడు సక్రియం చేయండి', 'இப்போது செயல்படுத்தவும்', 'હમણાં સક્રિય કરો', 'Aktywuj teraz', 'Активувати зараз', 'ਹੁਣ ਸਰਗਰਮ ਕਰੋ', 'Activeaza acum', 'အခုတော့ကိုသက်ဝင်', 'Muu Nisisiyi ṣiṣẹ', 'Kunna Yanzu'),
(391, 'in_activate_now', 'Inactivate Now', 'নিষ্ক্রিয় করুন', 'Inactivate ahora', 'تعطيل الآن', 'अब निष्क्रिय करें', 'اب غیر فعال', '立即停用', '今すぐ非アクティブ化する', 'Inactive agora', 'Инактивировать сейчас', 'Désactiver maintenant', '지금 비활성화', 'Inaktivieren Sie jetzt', 'Inactivate Now', 'ยกเลิกการใช้งานเดี๋ยวนี้', 'Inaktiválás most', 'Inactiveren nu', 'Nunc inactivate', 'Nonaktifkan Sekarang', 'Şimdi devre dışı bırak', 'Απενεργοποιήστε τώρα', 'غیرفعال کن', 'Tidak aktif sekarang', 'ఇప్పుడే నిష్క్రియం చేయండి', 'இப்போது முடக்கு', 'હવે નિષ્ક્રિય કરો', 'Dezaktywuj teraz', 'Інактивувати зараз', 'ਹੁਣ ਅਯੋਗ ਕਰੋ', 'Dezactivați acum', 'အခုတော့ Inactivate', 'Inactivate Bayi', 'Ƙasashe Yanzu'),
(392, 'non_member', 'Non Member', 'সদস্য নয়', 'No es miembro', 'غير الأعضاء', 'गैर - सदस्य', 'غیر رکن', '非会员', '非会員', 'Não membro', 'Не участник', 'Non membre', '비 멤버', 'Nicht-Mitglied', 'Non membro', 'ไม่ใช่สมาชิก', 'Nem tag', 'Geen lid', 'non Member', 'Bukan anggota', 'Üye olmayan', 'Μη μέλος', 'غیرعضو', 'Bukan Ahli', 'సభ్యుడు కాదు', 'உறுப்பினர் இல்லை', 'બિન સભ્ય', 'bez członka', 'Не учасник', 'ਗੈਰ ਮੈਂਬਰ', 'Nu e membru', 'non အဖွဲ့ဝင်', 'Ko omo', 'Ba Memba'),
(393, 'sender', 'Sender', 'প্রেরক', 'Remitente', 'مرسل', 'प्रेषक', 'مرسل', '所有', '送信者', 'Remetente', 'отправитель', 'Expéditeur', '보내는 사람', 'Absender', 'Mittente', 'ผู้ส่ง', 'Feladó', 'Afzender', 'mittens', 'Pengirim', 'Gönderen', 'Αποστολέας', 'فرستنده', 'Pengirim', 'పంపినవారు', 'அனுப்புநர்', 'પ્રેષક', 'Nadawca', 'Відправник', 'ਭੇਜਣ ਵਾਲਾ', 'Expeditor', 'ပေးပို့သူ', 'Oluṣẹ', 'Mai aikawa'),
(394, 'all', 'All', 'সকল', 'Todas', 'الكل', 'सब', 'سب', '所有', 'すべて', 'Todos', 'Все', 'Tout', '모든', 'Alle', 'Tutti', 'ทั้งหมด', 'Minden', 'Alle', 'Omnis', 'Semua', 'Herşey', 'Ολα', 'همه', 'Semua', 'అన్ని', 'அனைத்து', 'બધા', 'Wszystko', 'Все', 'ਸਭ', 'Toate', 'အားလုံး', 'Gbogbo', 'Duk'),
(395, 'bank', 'Bank', 'ব্যাংক', 'Banco', 'بنك', 'बैंक', 'بینک', 'Bank', 'バンク', 'Banco', 'Банка', 'Banque', '은행', 'Bank', 'Banca', 'ธนาคาร', 'Bank', 'Bank', 'Bank', 'Bank', 'Banka', 'Τράπεζα', 'بانک', 'Bank', 'బ్యాంక్', 'வங்கி', 'બેન્ક', 'Bank', 'Банк', 'ਬੈਂਕ', 'bancă', 'ကမ်း', 'ifowo pamo', 'Bank'),
(396, 'first_name', 'First Name', 'নামের প্রথম অংশ', 'Nombre de pila', 'الاسم الاول', 'पहला नाम', 'پہلا نام', '名字', 'ファーストネーム', 'Primeiro nome', 'Имя', 'Prénom', '이름', 'Vorname', 'Nome di battesimo', 'ชื่อจริง', 'Keresztnév', 'Voornaam', 'Praenomen', 'Nama depan', 'İsim', 'Ονομα', 'نام کوچک', 'Nama pertama', 'మొదటి పేరు', 'முதல் பெயர்', 'પ્રથમ નામ', 'Imię', 'Імя', 'ਪਹਿਲਾ ਨਾਂ', 'Nume', 'နာမည်', 'Orukọ kini', 'Sunan rana'),
(397, 'expire', 'Expire', 'মেয়াদোত্তীর্ণ', 'Expirar', 'تنقضي', 'समय सीमा समाप्त', 'میعاد ختم', '到期', '失効', 'Expirar', 'истекать', 'Expirer', '내쉬다', 'Verfallen', 'scadere', 'หมดอายุ', 'Lejár', 'vervallen', 'exspirare', 'Berakhir', 'sona ermek', 'Εκπνέω', 'Expire', 'Tamat tempoh', 'గడువు', 'காலாவதி', 'સમાપ્તિ', 'Wygasać', 'Закінчується', 'ਮਿਆਦ ਖਤਮ', 'Expira', 'ထွက်သက်ရှူ', 'Ti pari', 'ya ƙare'),
(398, 'card', 'Card', 'কার্ড', 'Tarjeta', 'بطاقة', 'कार्ड', 'کارڈ', '卡', 'カード', 'Cartão', 'Карта', 'Carte', '카드', 'Karte', 'Carta', 'บัตร', 'Kártya', 'Kaart', 'Card', 'Kartu', 'kart', 'Κάρτα', 'کارت', 'Kad', 'కార్డ్', 'அட்டை', 'કાર્ડ', 'Karta', 'Карта', 'ਕਾਰਡ', 'Card', 'ကဒ်', 'Kaadi', 'Katin'),
(399, 'cvv', 'CVV', 'সিভিভি', 'CVV', 'CVV', 'सीवीवी', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'સીવીવી', 'CVV', 'CVV', 'ਸੀਵੀਵੀ', 'CVV', 'CVV', 'CVV', 'CVV'),
(400, 'year', 'Year', 'বছর', 'Año', 'عام', 'साल', 'سال', '年', '年', 'Ano', 'Год', 'An', '년', 'Jahr', 'Anno', 'ปี', 'Év', 'Jaar', 'annos singulos', 'Tahun', 'Yıl', 'Ετος', 'سال', 'Tahun', 'ఇయర్', 'ஆண்டு', 'વર્ષ', 'Rok', 'Рік', 'ਸਾਲ', 'An', 'ခုနှစ်', 'Odun', 'Shekara'),
(401, 'quick', 'Quick', 'সরাসরি', 'Rápido', 'بسرعة', 'शीघ्र', 'فوری', '快', 'クイック', 'Rápido', 'Быстро', 'Rapide', '빨리', 'Schnell', 'Presto', 'รวดเร็ว', 'Gyors', 'Snel', 'Velox', 'Cepat', 'Hızlı', 'Γρήγορα', 'سریع', 'Cepat', 'శీఘ్ర', 'விரைவு', 'ઝડપી', 'Szybki', 'Швидкий', 'ਤੇਜ਼', 'Rapid', 'လျင်မြန်သော', 'Awọn ọna', 'Da sauri'),
(402, 'daily', 'Daily', 'দৈনিক', 'Diario', 'اليومي', 'रोज', 'روزانہ', '日常', '毎日', 'Diariamente', 'Ежедневно', 'du quotidien', '매일', 'Täglich', 'Quotidiano', 'ประจำวัน', 'Napi', 'Dagelijks', 'Daily', 'Harian', 'Günlük', 'Καθημερινά', 'روزانه', 'Harian', 'డైలీ', 'டெய்லி', 'દૈનિક', 'Codziennie', 'Щодня', 'ਰੋਜ਼ਾਨਾ', 'Zilnic', 'နေ့စဉ်', 'Lojoojumọ', 'kowace rana'),
(403, 'monthly', 'Monthly', 'মাসিক', 'Mensual', 'شهريا', 'महीने के', 'ماہانہ', '每月一次', '毎月', 'Por mês', 'ежемесячно', 'Mensuel', '월간 간행물', 'Monatlich', 'Mensile', 'รายเดือน', 'Havi', 'Maandelijks', 'Vestibulum', 'Bulanan', 'Aylık', 'Μηνιαίος', 'ماهانه', 'Bulanan', 'మంత్లీ', 'மாதாந்திர', 'માસિક', 'Miesięczny', 'Щомісяця', 'ਮਹੀਨਾਵਾਰ', 'Lunar', 'လစဉ်', 'Oṣooṣu', 'Kwanan wata'),
(404, 'group_by_data', 'Group by Data', 'গ্রুপ বাই ডাটা', 'Agrupar por datos', 'المجموعة حسب البيانات', 'समूह द्वारा डेटा', 'ڈیٹا کی طرف سے گروپ', '按数据分组', 'データでグループ化する', 'Agrupar por Dados', 'Группа по данным', 'Grouper par données', '데이터로 그룹화', 'Nach Daten gruppieren', 'Raggruppa per dati', 'จัดกลุ่มตามข้อมูล', 'Csoport adatok szerint', 'Groeperen op gegevens', 'Ordina Data', 'Kelompokkan menurut Data', 'Veri Gruplama', 'Ομαδοποιήστε με Δεδομένα', 'گروه با داده ها', 'Kumpulan mengikut Data', 'డేటా ద్వారా సమూహం', 'தரவு மூலம் குழு', 'ડેટા દ્વારા ગ્રુપ', 'Grupuj według danych', 'Групувати за даними', 'ਡੈਟਾ ਦੁਆਰਾ ਸਮੂਹ', 'Grup după date', 'ဒေတာများသဖြင့် Group မှ', 'Agbegbe nipasẹ Data', 'Ƙungiya ta hanyar Data'),
(405, 'resign_date', 'Resign Date', 'পদত্যাগ তারিখ', 'Fecha de renuncia', 'استقالة التاريخ', 'इस्तीफा तारीख', 'استعفی کی تاریخ', '辞职日期', '辞職日', 'Data de rescisão', 'Дата списания', 'Date de démission', '사임 날짜', 'Datum zurückgeben', 'Data di dimettersi', 'ลาออกวันที่', 'Lemondás dátuma', 'Ontslagdatum', 'Date abdicare', 'Tanggal pengunduran diri', 'Ayrılış Tarihi', 'Ημερομηνία παραίτησης', 'تاریخ استعفا', 'Tarikh Mengundurkan', 'తేదీని రాజీనామా చేయండి', 'தேதி விலக்கு', 'રાજીનામું તારીખ', 'Data rezygnacji', 'Дата відставки', 'ਦਾਨ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data renunțării', 'နေ့စွဲနုတ်ထွက်', 'Fi ọjọ silẹ', 'murabus Kwanan wata');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(406, 'invalid_login', 'Invalid username OR password.', 'ভুল  ব্যবহারকারীর নাম বা পাসওয়ার্ড', 'Usuario o contraseña invalido.', 'خطأ في اسم المستخدم أو كلمة مرور.', 'अमान्य उपयोगकर्ता नाम या पासवर्ड।', 'غلط صارف نام یا پاس ورڈ.', '用户名或密码无效。', 'ユーザー名かパスワードが無効。', 'Nome de usuário ou senha inválidos.', 'Неправильное имя пользователя или пароль.', 'Nom d\'utilisateur OU mot de passe invalide.', '잘못된 사용자 이름 또는 비밀번호입니다.', 'Ungültiger Benutzername oder Passwort.', 'Nome utente o password errati.', 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง.', 'Érvénytelen felhasználónév vagy jelszó.', 'Ongeldige gebruikersnaam of wachtwoord.', 'Nullam Username: Password.', 'Username dan password salah.', 'Geçersiz kullanıcı adı veya şifre.', 'Μη έγκυρο όνομα ή κωδικός.', 'نام کاربری یا کلمه عبور نامعتبر است', 'Nama pengguna atau kata laluan tidak sah.', 'తప్పుడు వాడుకరిపేరు లేదా సంకేతపదం.', 'தவறான பயனர் பெயர் அல்லது கடவுச்சொல்.', 'અમાન્ય વપરાશકર્તાનામ અથવા પાસવર્ડ.', 'Nieprawidłowa nazwa użytkownika lub hasło.', 'Неправильне ім\'я користувача або пароль.', 'ਅਵੈਧ ਉਪਯੋਗਕਰਤਾ ਨਾਂ ਜਾਂ ਪਾਸਵਰਡ', 'Nume de utilizator sau parola incorecte.', 'မှားနေသောအသုံးပြုသူအမည် OR password ကို။', 'Orukọ olumulo ailewu TABI ọrọigbaniwọle.', 'Sunan mai amfani mara amfani KO kalmar sirri.'),
(407, 'remember_me', 'Remember Me', 'আমাকে মনে রাখুন', 'Recuérdame', 'تذكرنى', 'मुझे याद रखना', 'مجھے پہچانتے ہو', '记住我', '私を覚えてますか', 'Lembre de mim', 'Запомни меня', 'Souviens-toi de moi', '날 기억해', 'Erinnere dich an mich', 'Ricordati di me', 'จดจำฉัน', 'Emlékezz rám', 'Onthoud me', 'memento mihi', 'Ingat saya', 'Beni hatırla', 'Θυμήσου με', 'مرا به خاطر بسپار', 'Ingat saya', 'నన్ను గుర్తు పెట్టుకో', 'என்னை நினைவில் கொள்ளுங்கள்', 'મને યાદ', 'Zapamiętaj mnie', 'Памятай мене', 'ਮੇਰੀ ਯਾਦ ਹੈ', 'Amintește-ți de mine', 'ငါ့ကိုသတိရပါ', 'Ranti mi', 'Ka tuna da ni'),
(408, 'lost_your_password', 'Lost your password?', 'আপনার পাসওয়ার্ড হারিয়েছেন?', '¿Perdiste tu contraseña?', 'فقدت كلمة المرور الخاصة بك؟', 'आपका पासवर्ड खो गया है?', 'اپنا پاس ورڈ بھول گئے؟', '忘记密码？', 'パスワードを忘れましたか？', 'Perdeu sua senha?', 'Забыли пароль?', 'Mot de passe perdu?', '비밀번호를 잊어 버렸습니까?', 'Passwort vergessen?', 'Hai perso la password?', 'ลืมรหัสผ่าน?', 'Elvesztetted a jelszavadat?', 'Wachtwoord vergeten?', 'Perdidit vestri password?', 'Kehilangan password?', 'Şifreni mi unuttun?', 'Έχασες τον κωδικό σου?', 'رمز عبور خود را فراموش کرده اید؟', 'Lupa kata kunci?', 'మీ పాస్వర్డ్ను కోల్పోయారా?', 'உங்கள் கடவுச்சொல்லை இழந்தீர்களா?', 'તમારો પાસવર્ડ ખોવાઈ ગયો?', 'Zgubiłeś hasło?', 'Забули свій пароль?', 'ਤੁਹਾਡਾ ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ ਹੋ?', 'Ti-ai pierdut parola?', 'သင့်ရဲ့စကားဝှက်ကိုဆုံးရှုံးခဲ့ရ?', 'Ti padanu ọrọ igbaniwọle rẹ?', 'Ka manta kalmarka ta sirri?'),
(409, 'back_to_login', 'Back to Login', 'ব্যাক টু লগইন', 'Atrás para iniciar sesión', 'العودة إلى تسجيل الدخول', 'लॉगिन पर वापस जाएं', 'لاگ ان پر واپس', '回到登入', 'ログインに戻る', 'Volte ao login', 'Вернуться на страницу входа', 'Retour connexion', '로그인으로 돌아 가기', 'Zurück zur Anmeldung', 'Torna al login', 'กลับไปที่ล็อกอิน', 'Vissza a bejelentkezéshez', 'Terug naar Inloggen', 'Back to Login', 'Kembali untuk masuk', 'Giriş sayfasına dön', 'Επιστροφή στην σελίδα εισόδου', 'بازگشت به صفحه ورود', 'Kembali ke Log masuk', 'తిరిగి లాగిన్ అవ్వండి', 'மீண்டும் உள்நுழையவும்', 'લૉગિન પર પાછા જાઓ', 'Powrót do logowania', 'Повернутися до Login', 'ਲੌਗਿਨ ਤੇ ਵਾਪਸ', 'Înapoi la autentificare', 'နောက်ကျောဝင်မည်မှ', 'Pada si Wiwọle', 'Komawa zuwa shiga'),
(410, 'instruction', 'Instruction', 'নির্দেশাবলী', 'Instrucción', 'تعليمات', 'अनुदेश', 'ہدایات', '指令', '命令', 'Instrução', 'инструкция', 'Instruction', '교수', 'Anweisung', 'istruzione', 'คำแนะนำ', 'Utasítás', 'Instructie', 'Disciplinam', 'Petunjuk', 'Talimat', 'Εντολή', 'دستورالعمل', 'Arahan', 'ఇన్స్ట్రక్షన్', 'வழிமுறை', 'સૂચના', 'Instrukcja', 'Інструкція', 'ਨਿਰਦੇਸ਼', 'instrucție', 'ညွှန်ကြားချက်', 'Ilana', 'Umarni'),
(411, 'manage_user_instruction', 'Please add Teacher, Employee, Student and Guardian before manage users.', 'ব্যবহারকারীদের পরিচালনা করার আগে শিক্ষক, কর্মচারী, ছাত্র এবং অভিভাবক যোগ করুন।', 'Agregue Maestro, Empleado, Estudiante y Tutor antes de administrar usuarios.', 'يرجى إضافة المعلم والموظف والطالب والجارديان قبل إدارة المستخدمين.', 'उपयोगकर्ताओं को प्रबंधित करने से पहले कृपया शिक्षक, कर्मचारी, छात्र और संरक्षक जोड़ें।', 'براہ کرم صارفین کو منظم کرنے سے قبل استاد، ملازم، طالب علم اور گارڈین شامل کریں.', '在管理用户之前，请添加教师，员工，学生和监护人。', 'ユーザーを管理する前に教師、従業員、学生、保護者を追加してください。', 'Por favor, adicione Professor, Empregado, Estudante e Guardião antes de administrar usuários.', 'Перед тем, как управлять пользователями, добавьте Учителя, Работника, Студента и Хранителя.', 'Veuillez ajouter un enseignant, un employé', '사용자를 관리하기 전에 교사, 직원, 학생 및 보호자를 추가하십시오.', 'Bitte fügen Sie Teacher, Employee, Student und Guardian hinzu, bevor Sie Benutzer verwalten.', 'Prima di gestire gli utenti, aggiungi Insegnante, Dipendente, Studente e Guardiano.', 'โปรดเพิ่ม Teacher, Employee, Student และ Guardian ก่อนที่จะจัดการผู้ใช้', 'Kérjük, add hozzá tanár, alkalmazott, tanuló és gondnok, mielőtt kezelné a felhasználókat.', 'Voeg docent, medewerker, student en bewaker toe voordat u gebruikers beheert.', 'Placere addere: Magister bone, Aliquam, antequam student et episcopum administrare users.', 'Tolong tambahkan Guru, Karyawan, Pelajar dan Wali sebelum mengelola pengguna.', 'Kullanıcıları yönetmeden önce lütfen Öğretmen, Çalışan, Öğrenci ve Koruyucuyu ekleyin.', 'Προσθέστε δάσκαλο, υπάλληλο, φοιτητή και φύλακα πριν διαχειριστείτε τους χρήστες.', 'قبل از مدیریت کاربران، لطفا معلم، کارمند، دانشجو و نگهبان را اضافه کنید.', 'Sila tambah Guru, Pekerja, Pelajar dan Penjaga sebelum mengurus pengguna.', 'దయచేసి వినియోగదారులను నిర్వహించడానికి ముందు Teacher, ఉద్యోగి, స్టూడెంట్ మరియు గార్డియన్లను జోడించండి.', 'பயனர்களை நிர்வகிக்க முன் ஆசிரியர், பணியாளர், மாணவர் மற்றும் கார்டியன் ஆகியோரைச் சேர்க்கவும்.', 'વપરાશકર્તાઓ મેનેજ કરો તે પહેલાં શિક્ષક, કર્મચારી, વિદ્યાર્થી અને વાલીઓ ઉમેરો.', 'Przed zarządzaniem użytkownikami dodaj Nauczyciela, Pracownika, Studenta i Opiekuna.', 'До того, як керувати користувачами, додайте ', 'ਉਪਭੋਗਤਾਵਾਂ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ, ਕਰਮਚਾਰੀ, ਵਿਦਿਆਰਥੀ ਅਤੇ ਗਾਰਡੀਅਨ ਜੋੜੋ', 'Adăugați profesor, angajat, student și gardian înainte de a administra utilizatorii.', 'အရှင်ဘုရား, ထမ်း, ကျောင်းသားနှင့်ဂါးဒီးယန်းမတိုင်မီအသုံးပြုသူများကိုစီမံခန့်ခွဲ add ပေးပါ။', 'Jọwọ fi Olukọ, Olukọni, Akeko ati Olutọju ṣaju Ṣakoso awọn olumulo.', 'Da fatan a ƙara malami, maaikaci, dalibi da kuma tsare kafin gudanar da masu amfani.'),
(413, 'add_employee_instruction', 'Please add Designation before add Employee.', 'কর্মচারী যোগ করার আগে অনুগ্রহপূর্বক পদবী যোগ করুন', 'Agregue Designación antes de agregar Empleado.', 'يرجى إضافة تعيين قبل إضافة موظف.', 'कृपया कर्मचारी जोड़ें जोड़ने से पहले पदनाम जोड़ें।', 'ملازمت کو شامل کرنے سے قبل عہدہ شامل کریں.', '请在添加员工之前添加指定。', '従業員を追加する前に指定を追加してください。', 'Por favor, adicione Designação antes de adicionar Empregado.', 'Пожалуйста, добавьте Обозначение, прежде чем добавить Сотрудника.', 'Veuillez ajouter la désignation avant dajouter un employé.', 'Employee를 추가하기 전에 지정을 추가하십시오.', 'Bitte fügen Sie die Bezeichnung hinzu, bevor Sie Mitarbeiter hinzufügen.', 'Aggiungi la designazione prima di aggiungere un dipendente.', 'โปรดเพิ่มการกำหนดก่อนเพิ่ม Employee', 'Kérjük, add hozzá a jelölést, mielőtt hozzáadja a Munkavállalót.', 'Voeg een aanwijzing toe voordat u werknemer toevoegt.', 'Aliquam VOCABULUM addere placet in conspectu add.', 'Harap tambahkan Penunjukan sebelum menambahkan Karyawan.', 'Lütfen Çalışan eklemeden önce Adlandırma ekleyin.', 'Προσθέστε Προσδιορισμός πριν προσθέσετε Υπάλληλο.', 'قبل از افزودن کارمند لطفا نامگذاری را اضافه کنید.', 'Sila tambah Jawatan sebelum menambah Pekerja.', 'ఉద్యోగిని చేర్చడానికి ముందు హోదాను జత చేయండి.', 'பணியாளரை சேர்க்க முன் நியமனத்தைச் சேர்க்கவும்.', 'એમ્પ્લોયી ઉમેરો પહેલાં કૃપા કરીને હોદ્દો ઉમેરો.', 'Dodaj Oznaczenie przed dodaniem pracownika.', 'Будь ласка, додайте позначення, перш ніж додати співробітника.', 'ਕਰਮਚਾਰੀ ਨੂੰ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਸ਼ੰਸਾ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați o denumire înainte de a adăuga un angajat.', 'သတ်မှတ်ပေးထားခြင်းမတိုင်မီန်ထမ်းပေါင်းထည့်ပေါင်းထည့်ပေးပါ။', 'Jowo fi Ami silẹ ṣaaju ki o to fi Abáni ṣiṣẹ.', 'Da fatan a kara Zabin kafin ƙara maaikaci.'),
(414, 'add_class_instruction', 'Please add Teacher before add Class.', 'ক্লাস যোগ করার আগে শিক্ষক যোগ করুন', 'Por favor agregue Maestro antes de agregar Clase.', 'الرجاء إضافة معلم قبل إضافة الفصل الدراسي.', 'कृपया कक्षा जोड़ें से पहले शिक्षक जोड़ें।', 'کلاس شامل کرنے سے قبل ٹیچر شامل کریں.', '请在添加课程之前添加教师', 'クラスを追加する前に教師を追加してください。', 'Adicione o professor antes de adicionar a classe.', 'Пожалуйста, добавьте Учителя перед добавлением класса.', 'Veuillez ajouter un enseignant avant dajouter une classe.', '수업을 추가하기 전에 선생님을 추가하십시오.', 'Bitte fügen Sie den Lehrer hinzu, bevor Sie die Klasse hinzufügen.', 'Aggiungi linsegnante prima di aggiungere la lezione.', 'โปรดเพิ่มครูก่อนเพิ่มระดับ', 'Add hozzá a Tanárt, mielőtt hozzáadná az osztályt.', 'Voeg docent toe voordat u lesgroep toevoegt.', 'Magister add addere placet in conspectu Ps.', 'Tolong tambahkan Guru sebelum menambahkan Kelas.', 'Sınıfı eklemeden önce lütfen Öğretmen ekleyin.', 'Παρακαλούμε προσθέστε Δάσκαλο πριν προσθέσετε την κατηγορία.', 'قبل از افزودن کلاس، لطفا معلم را اضافه کنید.', 'Sila tambahkan Guru sebelum menambah Kelas.', 'క్లాస్ ను జోడించుటకు ముందుగా టీచర్ని చేర్చుము.', 'வர்க்கம் சேர்க்க முன் ஆசிரியர் சேர்க்க.', 'ઍડ ક્લાસ પહેલાં શિક્ષક ઉમેરો.', 'Dodaj Nauczyciela przed dodaniem klasy.', 'Будь ласка, додайте Учителя перед додаванням Класу.', 'ਕਿਰਪਾ ਕਰਕੇ ਐਡ ਕਲਾਸ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați profesor înainte de a adăuga Clasa.', 'Class ကို add မတိုင်မီဆရာ add ပေးပါ။', 'Jọwọ fi Olukọ ṣaaju ki o to fi Kilasi sii.', 'Da fatan a kara Malam kafin ƙara Class.'),
(427, 'add_section_instruction', 'Please add Teacher & Class before add Section.', 'বিভাগ যোগ করার আগে শিক্ষক ও শ্রেণী যোগ করুন', 'Por favor agregue Maestro y Clase antes de agregar la Sección.', 'يرجى إضافة معلم وفئة قبل إضافة قسم.', 'अनुभाग जोड़ने से पहले शिक्षक और कक्षा जोड़ें', 'سیکشن میں شامل کرنے سے قبل ٹیچر اور کلاس شامل کریں.', '在添加部分之前，请添加教师和班级。', 'セクションを追加する前に教師とクラスを追加してください。', 'Por favor, adicione professor e classe antes de adicionar seção.', 'Пожалуйста, добавьте Teacher & Class перед добавлением раздела.', 'Veuillez ajouter lenseignant et la classe avant dajouter la section.', '섹션을 추가하기 전에 교사와 수업을 추가하십시오.', 'Bitte fügen Sie Lehrer und Klasse hinzu, bevor Sie Abschnitt hinzufügen.', 'Aggiungi insegnante e classe prima di aggiungere la sezione.', 'โปรดเพิ่ม Teacher & Class ก่อนเพิ่มส่วน', 'Add add Teacher & Class hozzáadása előtt szekció.', 'Voeg docent en klas toe voordat u sectie toevoegt.', 'Genus: Magister add & sectionem addere velit ante.', 'Tolong tambahkan Guru & Kelas sebelum menambahkan Bagian.', 'Bölüm eklemeden önce lütfen Öğretmen ve Sınıf ekleyin.', 'Παρακαλούμε προσθέστε το δάσκαλο και την τάξη πριν προσθέσετε ενότητα.', 'لطفا قبل از افزودن بخش معلم و کلاس اضافه کنید', 'Sila tambah Guru & Kelas sebelum menambah Seksyen.', 'దయచేసి విభాగాన్ని జోడించే ముందు Teacher & Class జోడించండి.', 'பிரிவு சேர்வதற்கு முன்னர் ஆசிரியர் மற்றும் வகுப்பைச் சேர்க்கவும்.', 'વિભાગ ઉમેરો પહેલાં શિક્ષક અને વર્ગ ઉમેરો.', 'Dodaj nauczyciela i zajęcia, zanim dodasz sekcję.', 'Додайте розділ ', 'ਕਿਰਪਾ ਕਰਕੇ ਸੈਕਸ਼ਨ ਜੋੜਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਅਤੇ ਕਲਾਸ ਸ਼ਾਮਲ ਕਰੋ.', 'Vă rugăm să adăugați un profesor și o clasă înainte de a adăuga secțiunea.', 'add ပုဒ်မမတိုင်မီအရှင်ဘုရား & Class ကို add ပေးပါ။', 'Jọwọ fi Olukọ ati Kilasi ṣaaju ki o to fi Abala kan kun.', 'Da fatan a ƙara Malami da Class kafin ƙara Sashe.'),
(428, 'class_add_alert', 'Please add Class', 'ক্লাস যোগ করুন', 'Por favor agrega Clase', 'يرجى إضافة فئة', 'कृपया कक्षा जोड़ें', 'براہ مہربانی کلاس شامل کریں', '请添加Class', 'クラスを追加してください', 'Por favor, adicione Classe', 'Пожалуйста, добавьте класс', 'Veuillez ajouter une classe', '수업을 추가하십시오.', 'Bitte fügen Sie Klasse hinzu', 'Per favore aggiungi Class', 'โปรดเพิ่ม Class', 'Add osztály', 'Voeg alstublieft Klasse toe', 'Placere addere Paleonemertea Class', 'Tolong tambahkan Kelas', 'Lütfen Sınıf ekle', 'Προσθέστε την κλάση', 'لطفا کلاس را اضافه کنید', 'Sila tambah Kelas', 'దయచేసి క్లాస్ను జోడించు', 'வகுப்பு சேர்க்கவும்', 'કૃપા કરીને વર્ગ ઉમેરો', 'Dodaj klasę', 'Будь ласка, додайте клас', 'ਕਲਾਸ ਸ਼ਾਮਿਲ ਕਰੋ ਜੀ', 'Adăugați Clasa', 'Class ကို add ပေးပါ', 'Jọwọ fi Kilasi sii', 'Da fatan a kara Class'),
(429, 'add_student_instruction', 'Please add Guardian, Class & Section before add Student.', 'ছাত্র যোগ করার আগে অভিভাবক, ক্লাস এবং বিভাগ যোগ করুন', 'Agregue Guardián, Clase y Sección antes de agregar Estudiante.', 'يرجى إضافة الجارديان، فئة وقسم قبل إضافة طالب.', 'कृपया छात्र जोड़ने से पहले अभिभावक, कक्षा और अनुभाग जोड़ें।', 'برائے مہربانی طالب علم کو شامل کرنے سے پہلے گارڈین، کلاس اور سیکشن شامل کریں.', '添加学生前请添加监护人，课程和科室。', '生徒を追加する前にGuardian、Class＆Sectionを追加してください。', 'Por favor, adicione Guardian, Class & Section antes de adicionar Student.', 'Пожалуйста, добавьте Guardian, Class & Section перед добавлением Студента.', 'Veuillez ajouter Guardian, Class & Section avant dajouter Student.', '학생을 추가하기 전에 Guardian, Class & Section을 추가하십시오.', 'Bitte fügen Sie Guardian, Class & Section hinzu, bevor Sie Student hinzufügen.', 'Aggiungi Guardian, Class & Section prima di aggiungere Student.', 'กรุณาเพิ่ม Guardian, Class & Section ก่อนเพิ่ม Student', 'Add hozzá Guardian, Class & Section hozzáadása előtt Add Student.', 'Voeg Guardian, Class & Section toe voordat je Student toevoegt.', 'Adde sis custos, adde prius Discipulus Class sect.', 'Tolong tambahkan Guardian, Class & Section sebelum menambahkan Student.', 'Öğrenci eklemeden önce lütfen Guardian, Class & Sectionu ekleyin.', 'Παρακαλούμε προσθέστε Guardian, Class & Section πριν προσθέσετε Student.', 'قبل از افزودن دانش آموز، لطفا Guardian، Class & Section را اضافه کنید.', 'Sila tambah Guardian, Kelas & Seksyen sebelum menambah Pelajar.', 'దయచేసి విద్యార్థిని జోడించే ముందు గార్డియన్, క్లాస్ & సెక్షన్ని జోడించండి.', 'மாணவர் சேர்க்கும் முன்பு கார்டியன், வகுப்பு & பகுதி சேர்க்கவும்.', 'ઉમેરો વિદ્યાર્થી પહેલાં ગાર્ડિયન, વર્ગ અને વિભાગ ઉમેરો.', 'Przed dodaniem ucznia dodaj opiekuna, klasę i sekcję.', 'Перш ніж додати Студент, додайте Guardian, Class & Section.', 'ਕਿਰਪਾ ਕਰਕੇ ਵਿਦਿਆਰਥੀ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਗਾਰਡੀਅਨ, ਕਲਾਸ ਅਤੇ ਸੈਕਸ਼ਨ ਸ਼ਾਮਿਲ ਕਰੋ.', 'Vă rugăm să adăugați Guardian, Class & Section înainte de a adăuga Student.', 'ဂါးဒီးယန်း, အတန်းအစား & ပုဒ်မမတိုင်မီကျောင်းသား add add ပေးပါ။', 'Jowo fi Olutọju, Kilasi & Abala šaaju ki o to fi ọmọ-iwe kun.', 'Da fatan a kara Guardian, Class & Sashe kafin ƙara Student.'),
(430, 'add_assignment_instruction', 'Please add Class & Subject before add Assignment.', 'যোগদান যোগ করার আগে ক্লাস এবং বিষয় যোগ করুন', 'Agregue Clase y Asunto antes de agregar Asignación.', 'الرجاء إضافة الفئة والموضوع قبل إضافة التعيين.', 'कृपया असाइनमेंट जोड़ने से पहले कक्षा और विषय जोड़ें।', 'تفویض شامل کرنے سے پہلے کلاس اور مضمون شامل کریں.', '请在添加作业之前添加课程和主题。', '割り当てを追加する前にクラスと件名を追加してください。', 'Por favor, adicione Class & Subject antes de adicionar Atribuição.', 'Пожалуйста, добавьте Class & Subject перед добавлением Assignment.', 'Veuillez ajouter la classe et le sujet avant dajouter une affectation.', '과제를 추가하기 전에 수업 및 과제를 추가하십시오.', 'Bitte fügen Sie Klasse und Betreff hinzu, bevor Sie die Zuweisung hinzufügen.', 'Per favore aggiungi Class & Subject prima di aggiungere Assignment.', 'โปรดเพิ่ม Class & Subject ก่อนที่จะเพิ่ม Assignment', 'Add hozzá az Osztályt és a témát, mielőtt hozzárendelheti.', 'Voeg Klasse en Onderwerp toe voordat u Toewijzing toevoegt.', 'Class placet, adde prius adsignatione add.', 'Harap tambahkan Kelas & Subjek sebelum menambahkan Penugasan.', 'Ödev eklemek için lütfen Sınıf ve Konuyu ekleyin.', 'Προσθέστε την κλάση και το θέμα πριν προσθέσετε την επιλογή Αντιστοίχιση.', 'لطفا کلاس و موضوع را قبل از اضافه شدن اضافه کنید.', 'Sila tambah Kelas & Subjek sebelum menambah Tugasan.', 'దయచేసి అసైన్మెంట్ను జోడించే ముందు క్లాస్ & సబ్జెక్ట్ జోడించండి.', 'ஒதுக்கீட்டைச் சேர்க்கும் முன்பு வகுப்பு & தலைப்பு சேர்க்கவும்.', 'મહેરબાની કરીને ઉમેરતા પહેલા સભા અને વિષય ઉમેરો.', 'Przed dodaniem zadania dodaj klasę i temat.', 'Будь ласка, додайте клас і тему, перш ніж додати асигнування.', 'ਕਿਰਪਾ ਕਰਕੇ ਅਸਾਈਨਮੈਂਟ ਤੋਂ ਪਹਿਲਾਂ ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Adăugați Clasă și Subiect înainte de a adăuga Atribuire.', 'add တာဝန်မတိုင်မီအတန်းအစား & အကြောင်းအရာ add ပေးပါ။', 'Jọwọ fi Kilasi & Koko ṣaaju ki o to fi iṣẹ-ṣiṣe kun.', 'Da fatan a kara Class & Rubutun kafin ƙara Matsayi.'),
(431, 'add_exam_schedule_instruction', 'Please add Exam, Class & Subject before add Exm Schedule.', 'পরীক্ষার সময়সূচী যোগ করার আগে পরীক্ষা, শ্রেণী ও বস্তু যুক্ত করুন।', 'Agregue Examen, Clase y Objeto antes de agregar el Horario del Examen.', 'الرجاء إضافة امتحان، فئة & كائن قبل إضافة جدول الامتحان.', 'परीक्षा परीक्षा अनुसूची जोड़ें से पहले परीक्षा, कक्षा और वस्तु जोड़ें', 'امتحان شیڈول میں شامل کرنے سے پہلے، امتحان، کلاس اور آبجیکٹ شامل کریں.', '在添加考试时间表之前，请添加考试，课程和对象。', 'Exam Scheduleを追加する前に、Exam、Class＆Objectを追加してください。', 'Por favor, adicione o Exame, Classe e Objeto antes de adicionar o Programa de Exames.', 'Пожалуйста, добавьте Экзамен, Класс и Объект, прежде чем добавить График экзамена.', 'Veuillez ajouter lexamen, la classe et lobjet avant dajouter lhoraire dexamen.', 'Exam Schedule을 추가하기 전에 Exam, Class & Object를 추가하십시오.', 'Bitte fügen Sie Prüfung, Klasse und Objekt hinzu, bevor Sie den Prüfungsplan hinzufügen.', 'Aggiungi esame, classe e oggetto prima di aggiungere la pianificazione degli esami.', 'โปรดเพิ่มการสอบวิชา & วัตถุก่อนเพิ่มตารางการสอบ', 'Add Exam, Class & Object hozzáadása az Exam Schedule hozzáadásához.', 'Voeg Examen, Klasse & Object toe voordat u het Exam Schedule toevoegt.', 'Placere addere IV, addere IV Class Object coram arcu.', 'Harap tambahkan Ujian, Kelas & Objek sebelum menambahkan Jadwal Ujian.', 'Sınav Takvimi eklemeden önce lütfen Sınav, Sınıf ve Nesneyi ekleyin.', 'Παρακαλούμε προσθέστε Εξετάσεις, Τάξη & Αντικείμενο πριν προσθέσετε το Πρόγραμμα Εξετάσεων.', 'قبل از افزودن برنامه آزمون، لطفا امتحان، کلاس و شیء را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Objek sebelum menambah Jadual Peperiksaan.', 'పరీక్షా షెడ్యూల్ను జోడించే ముందు పరీక్ష, క్లాస్ & ఆబ్జెక్ట్ చేర్చండి.', 'தேர்வு அட்டவணை சேர்க்க முன் முன், வகுப்பு & பொருள் சேர்க்க தயவு செய்து.', 'પરીક્ષા શેડ્યૂલ ઉમેરો પહેલાં પરીક્ષાની, વર્ગ અને ઑબ્જેક્ટ ઉમેરો', 'Dodaj egzamin, klasę i obiekt przed dodaniem harmonogramu egzaminu.', 'Додайте іспит, клас і обєкт перед додаванням графіка іспиту.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ ਅਤੇ ਔਬਜੈਕਟ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați examen, clasă și obiect înainte de a adăuga programul de examinare.', 'အတန်းအစား & အရာဝတ္ထုမတိုင်မီစာမေးပွဲအချိန်ဇယားကိုထည့်သွင်း, စာမေးပွဲ add ပေးပါ။', 'Jọwọ fi kẹhìn, Kilasi & Ohun ṣaaju ki o to ṣayẹwo Akẹkọ Idaduro.', 'Da fatan a kara gwadawa, Class & Object kafin ƙara Nazarin Jarrabawa.'),
(432, 'add_exam_suggestion_instruction', 'Please add Exam, Class & Subject before add Exam Suggestion.', 'পরীক্ষা পরামর্শ যোগ করার আগে পরীক্ষা, শ্রেণী এবং বিষয় যুক্ত করুন।', 'Agregue Examen, Clase y Asunto antes de agregar Exm Sugerencia.', 'يرجى إضافة امتحان، فئة & الموضوع قبل إضافة اقتراح إكسم.', 'Exm सुझाव जोड़ने से पहले परीक्षा, कक्षा और विषय जोड़ें।', 'اے ایم ایم تجاویز کو شامل کرنے سے قبل امتحان، کلاس اور مضمون شامل کریں.', '在添加Exm建议之前，请添加考试，课程和主题。', 'Exm提案を追加する前に、Exam、Class＆Subjectを追加してください。', 'Por favor, adicione Exame, Classe e Assunto antes de adicionar Exm Sugestão.', 'Пожалуйста, добавьте Экзамен, Класс и Тема, прежде чем добавить предложение Exm.', 'Sil vous plaît ajouter lexamen, la classe et le sujet avant dajouter la suggestion dExm.', 'Exm 제안을 추가하기 전에 Exam, Class & Subject를 추가하십시오.', 'Bitte fügen Sie Exam, Class & Subject hinzu, bevor Sie Exm Suggestion hinzufügen.', 'Aggiungi Exam, Class e Subject prima di aggiungere Exm Suggestion.', 'โปรดเพิ่มการสอบวิชา & หัวเรื่องก่อนเพิ่มคำแนะนำ Exm', 'Add Exam, Class & Subject hozzáadása az Exm Suggestion hozzáadásához', 'Voeg examen, klasse en onderwerp toe voordat u Exm-suggestie toevoegt.', 'IV addere placet, adde prius Class Exm Suggestion.', 'Harap tambahkan Ujian, Kelas & Subjek sebelum menambahkan Saran Muka.', 'Exm Öneri eklemeden önce lütfen Sınav, Sınıf ve Konuyu ekleyin.', 'Παρακαλούμε προσθέστε την εξέταση, την κλάση και το θέμα πριν προσθέσετε την πρόταση Exm.', 'لطفا قبل از افزودن پیشنهاد Exm، امتحان، کلاس و موضوع را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Subjek sebelum menambah Cadangan Exm.', 'దయచేసి Exm సూచనను జోడించే ముందు పరీక్ష, క్లాస్ & విషయం జోడించండి.', 'Exm பரிந்துரைகளை சேர்க்கும் முன் தேர், வகுப்பு & தலைப்பு சேர்க்கவும்.', 'Exm સૂચન ઉમેરતા પહેલાં પરીક્ષા, વર્ગ અને વિષય ઉમેરો.', 'Dodaj Exam, Class & Subject, zanim dodasz Exm Suggestion.', 'Додайте Exm Suggestion, додайте іспит, клас і тему.', 'ਐਕਸਮ ਸੁਝਾਅ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਐਗਜ਼ੁਖ, ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Vă rugăm să adăugați Exam, Class & Subject înainte de a adăuga Sugestie Exm.', 'အတန်းအစား & အကြောင်းအရာမတိုင်မီ Exm အကြံပြုချက်ထပ်ထည့်, စာမေးပွဲ add ပေးပါ။', 'Jọwọ fi kẹhìn, Kilasi & Koko ṣaaju ki o to fi Alaye pataki sii.', 'Da fatan a sake gwada jarrabawa, Class & Subject kafin ƙara Exm Shawarwari.'),
(433, 'login_success', 'You have successfully logged In.', 'আপনি সফলভাবে লগ ইন করেছেন.', 'Has iniciado sesión correctamente.', 'لقد قمت بتسجيل الدخول بنجاح.', 'आप सफलता पूर्वक प्रवेश कर चुके हैं।', 'آپ نے کامیابی سے ان میں لاگ ان کیا ہے.', '您已成功登录。', 'あなたは正常にログインしました。', 'Você fez login com sucesso.', 'Вы успешно вошли в.', 'Vous avez réussi à vous connecter', '로그인했습니다.', 'Sie haben sich erfolgreich angemeldet.', 'Hai effettuato il log in con successo.', 'คุณเข้าสู่ระบบเรียบร้อยแล้ว', 'Sikeresen bejelentkezett.', 'Je bent succesvol ingelogd.', 'Et tu bene initium.', 'Anda berhasil masuk', 'Başarıyla giriş yaptınız.', 'Έχετε επιτυχώς συνδεθεί.', 'شما با موفقیت وارد شدید.', 'Anda berjaya melog masuk.', 'మీరు విజయవంతంగా లాగిన్ చేసారు.', 'நீங்கள் உள்நுழைந்துள்ளீர்கள்.', 'તમે સફળતાપૂર્વક લોગ ઇન કર્યું છે.', 'Logowanie zakończone powodzeniem.', 'Ви успішно ввійшли в систему.', 'ਤੁਸੀਂ ਸਫਲਤਾਪੂਰਵਕ ਲਾਗ ਇਨ ਕੀਤਾ ਹੈ.', 'Ați fost conectat (ă) cu succes.', 'သင့်အလယ်၌အောင်မြင်စွာ logged ပါပြီ။', 'O ti wọle Wole ni ilọsiwaju.', 'An samu nasarar shiga cikin.'),
(434, 'wrong_email', 'You have entered wrong email address', 'আপনি ভুল ইমেল ঠিকানা প্রবেশ করেছেন', 'Ingresó una dirección de correo electrónico incorrecta', 'لقد أدخلت عنوان بريد إلكتروني خاطئا', 'आपने गलत ईमेल पता दर्ज किया है', 'آپ نے غلط ای میل پتہ درج کیا ہے', '您输入了错误的电子邮件地址', 'あなたは間違った電子メールアドレスを入力しました', 'Você digitou um endereço de e-mail incorreto', 'Вы ввели неправильный адрес электронной почты', 'Vous avez entré une adresse e-mail incorrecte', '잘못된 이메일 주소를 입력했습니다.', 'Sie haben eine falsche E-Mail-Adresse eingegeben', 'Hai inserito un indirizzo email errato', 'คุณป้อนที่อยู่อีเมลผิด', 'Rossz e-mail címet adott meg', 'U hebt een verkeerd e-mailadres ingevoerd', 'Et ingressi sunt nefas inscriptio', 'Anda telah memasukkan alamat email salah', 'Yanlış e-posta adresini girdiniz', 'Έχετε εισάγει λάθος διεύθυνση ηλεκτρονικού ταχυδρομείου', 'شما آدرس ایمیل اشتباه وارد کرده اید', 'Anda telah memasukkan alamat e-mel yang salah', 'మీరు తప్పు ఇమెయిల్ చిరునామాను నమోదు చేసారు', 'நீங்கள் தவறான மின்னஞ்சல் முகவரியை உள்ளிட்டுள்ளீர்கள்', 'તમે ખોટો ઇમેઇલ સરનામું દાખલ કર્યું છે', 'Podałeś zły adres e-mail', 'Ви ввели неправильну адресу електронної пошти', 'ਤੁਸੀਂ ਗਲਤ ਈਮੇਲ ਪਤਾ ਦਾਖਲ ਕੀਤਾ ਹੈ', 'Ați introdus o adresă de e-mail greșită', 'သငျသညျမှားယွင်းတဲ့အီးမေးလ်လိပ်စာထဲသို့ဝင်ခဲ့ကြ', 'O ti tẹ adirẹsi imeeli ti ko tọ', 'An shigar da adireshin email bata daidai'),
(435, 'reset_email_success', 'Password reset email sent successfully. Please check you email', ' 62/5000 পাসওয়ার্ড রিসেট ইমেল সফলভাবে পাঠানো হয়েছে আপনি ইমেল চেক করুন', 'El correo electrónico de restablecimiento de contraseña se envió correctamente. Por favor revisa tu correo electrónico', 'تم إرسال البريد الإلكتروني لإعادة تعيين كلمة المرور بنجاح. يرجى التحقق من بريدك الإلكتروني', 'पासवर्ड रीसेट ईमेल सफलतापूर्वक भेजा गया कृपया आपको ईमेल जांचें', 'پاس ورڈ دوبارہ ترتیب ای میل کامیابی سے بھیجا گیا. براہ کرم آپ کو ای میل چیک کریں', '密码重置邮件发送成功。 请检查你的电子邮件', 'パスワードリセットメールが正常に送信されました。 メールをチェックしてください', 'Senha de redefinição de senha enviada com sucesso. Verifique seu e-mail', 'Сброс пароля был успешно отправлен. Пожалуйста, проверьте электронную почту', 'Password reset email sent successfully. Please check you email', '비밀번호 재설정 이메일이 성공적으로 전송되었습니다. 이메일을 확인하십시오.', 'E-Mail zur Zurücksetzung des Kennworts erfolgreich gesendet Bitte überprüfen Sie Ihre E-Mail', 'Email di reimpostazione della password inviata correttamente. Per favore controlla la tua email', 'อีเมลรีเซ็ตรหัสผ่านถูกส่งเรียบร้อยแล้ว โปรดตรวจสอบอีเมลของคุณ', 'A jelszó-visszaállító e-mail sikeresen elküldve. Kérjük, ellenőrizze az e-mailt', 'Wachtwoord reset e-mail succesvol verzonden. Controleer je e-mail', 'Reddere email password misit tincidunt. Placere reprehendo vestri email', 'Email reset password berhasil dikirim Silahkan cek email anda', 'Şifre sıfırlama e-postası başarıyla gönderildi. Lütfen e-postayı kontrol et', 'Το μήνυμα ηλεκτρονικού ταχυδρομείου επαναφοράς κωδικού πρόσβασης έγινε με επιτυχία Παρακαλώ ελέγξτε το email σας', 'ایمیل ارسالی با موفقیت ارسال شد. لطفا ایمیل را بررسی کنید', 'E-mel tetapan semula kata laluan berjaya dihantar. Sila semak e-mel anda', 'పాస్వర్డ్ రీసెట్ ఇమెయిల్ విజయవంతంగా పంపబడింది. దయచేసి మీకు ఇమెయిల్ తనిఖీ చేయండి', 'கடவுச்சொல் மீட்டமைப்பு மின்னஞ்சல் வெற்றிகரமாக அனுப்பப்பட்டது. தயவுசெய்து மின்னஞ்சலை சரிபார்க்கவும்', 'પાસવર્ડ રીસેટ ઇમેઇલ સફળતાપૂર્વક મોકલ્યો કૃપા કરીને તમને ઇમેઇલ તપાસો', 'E-mail z resetem hasła został wysłany pomyślnie. Proszę sprawdzić e-mail', 'Електронна адреса для відновлення пароля успішно відправлено. Будь-ласка, перевірте, чи є вам електронною поштою', 'ਪਾਸਵਰਡ ਰੀਸੈਟ ਈਮੇਲ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ ਕਿਰਪਾ ਕਰਕੇ ਤੁਹਾਨੂੰ ਈਮੇਲ ਦੀ ਜਾਂਚ ਕਰੋ', 'Emailul de resetare a parolei a fost trimis cu succes Vă rugăm să verificați prin e-mail', 'စကားဝှက်ပြန်ညှိအီးမေးလ်ကိုအောင်မြင်စွာစေလွှတ်ခဲ့သည်။ သငျသညျကိုအီးမေးလ်စစ်ဆေးပါ', 'Ọrọigbaniwọle atunto imeeli ti firanṣẹ ni ifijišẹ Jowo ṣayẹwo o imeeli', 'Sake saitin imel kalmar sirri da aka aika. Da fatan a duba ku email'),
(436, 'unexpected_error', 'Unexpected error occured', 'অপ্রত্যাশিত ত্রুটি ঘটেছে', 'Ocurrió un error inesperado', 'حدث خطأ غير متوقع', 'अनपेक्षित त्रुटि हुई', 'غیر متوقع غلطی ہوئی', '意外的错误发生', '予期しないエラーが発生しました', 'Ocorreu um erro inesperado', 'Произошла непредвиденная ошибка', 'Une erreur inattendue sest produite', '예기치 않은 오류가 발생했습니다.', 'Unerwarteter Fehler ist aufgetreten', 'Si è verificato un errore imprevisto', 'เกิดข้อผิดพลาดที่ไม่คาดคิด', 'Váratlan hiba történt', 'Er is een onverwachte fout opgetreden', 'Error occurrit inopinatum', 'Terjadi kesalahan tak terduga', 'Beklenmedik bir hata oluştu', 'Παρουσιάστηκε μη αναμενόμενο σφάλμα', 'خطای غیرمنتظره رخ داده است', 'Ralat tidak dijangka berlaku', 'ఊహించని లోపం సంభవించింది', 'எதிர்பாராத பிழை ஏற்பட்டது', 'અનપેક્ષિત ભૂલ આવી', 'Pojawił się nieoczekiwany błąd', 'Несподівана помилка', 'ਅਚਾਨਕ ਤਰੁੱਟੀ ਉਤਪੰਨ ਹੋਈ', 'A apărut o eroare neașteptată', 'မမျှော်လင့်ဘဲအမှားဖြစ်ပွားခဲ့သည်', 'Aṣiṣe airotẹlẹ kan ṣẹlẹ', 'An sami kuskure marar kuskure'),
(437, 'password_reset_error', 'Password length must be 6-12 Character and match with Confirm password', 'পাসওয়ার্ডের দৈর্ঘ্য 6-12 অক্ষর এবং নিশ্চিত পাসওয়ার্ডের সাথে মেলে', 'La longitud de la contraseña debe ser de 6-12 caracteres y coincide con Confirmar contraseña', 'يجب أن يكون طول كلمة المرور 6-12 حرف وتطابق مع تأكيد كلمة المرور', 'पासवर्ड की लंबाई 6-12 वर्ण और पासवर्ड की पुष्टि के साथ मैच होना चाहिए', 'پاس ورڈ کی لمبائی 6-12 ہونا ضروری ہے اور اس کی تصدیق کی پاس ورڈ کے ساتھ میچ ہونا چاہیے', '密码长度必须是6-12个字符并且与确认密码相匹配', 'パスワードの長さは6〜12文字で、パスワードの確認と一致する必要があります', 'O comprimento da senha deve ser de 6 a 12 caracteres e combinar com Confirmar senha', 'Длина пароля должна быть 6-12 символов и соответствовать паролю подтверждения.', 'la longueur du mot de passe doit être comprise entre 6 et 12 caractères et correspondre avec Confirmer le mot de passe', '비밀번호 길이는 6-12 자 여야하며 비밀번호 확인과 일치해야합니다.', 'Die Passwortlänge muss 6-12 Zeichen lang sein und mit Passwort bestätigen übereinstimmen', 'La lunghezza della password deve essere di 6-12 caratteri e corrisponde a Conferma password', 'รหัสผ่านต้องยาว 6-12 ตัวอักษรและตรงกับรหัสยืนยัน', 'A jelszó hosszúságának 6-12 karakterből kell állnia, és meg kell egyeznie a Jelszó megerősítésével', 'Wachtwoordlengte moet 6-12 tekens zijn en overeenkomen met Wachtwoord bevestigen', '6-12 longitudinem esse pares ignoro Character Confirm ignoro', 'Panjang kata sandi harus 6-12 Karakter dan cocok dengan Confirm password', 'Şifre uzunluğu 6-12 karakter olmalıdır ve Parolayı onayla ile eşleşmelidir.', 'Το μήκος του κωδικού πρόσβασης πρέπει να είναι 6-12 χαρακτήρες και να ταιριάζει με τον κωδικό επιβεβαίωσης', 'طول رمز عبور باید 6 تا 12 حرف باشد و با تایید رمز عبور مطابقت دارد', 'Panjang kata laluan mesti 6-12 Watak dan padan dengan Sahkan kata laluan', 'పాస్ వర్డ్ పొడవు 6-12 ఉండాలి', 'கடவுச்சொல் நீளம் இருக்க வேண்டும் 6-12 எழுத்து மற்றும் கடவுச்சொல்லை உறுதிப்படுத்தல் பொருந்தவில்லை', 'પાસવર્ડની લંબાઈ 6-12 અક્ષર હોવા જોઈએ અને પાસવર્ડની પુષ્ટિ કરો', 'Długość hasła musi wynosić 6-12 Znak i dopasowanie z Potwierdź hasło', 'Довжина пароля повинна бути 6-12 символів і відповідати з підтвердженням пароля', 'ਪਾਸਵਰਡ ਦੀ ਲੰਬਾਈ 6-12 ਅੱਖਰ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ ਅਤੇ ਪਾਸਵਰਡ ਨਾਲ ਪੁਸ਼ਟੀ ਕਰੋ', 'Lungimea parolei trebuie să fie 6-12 Caracter și să se potrivească cu Confirmare parolă', 'Password ကိုအရှည် Confirm password ကိုအတူ 6-12 အက္ခရာနှင့်ပွဲစဉ်ဖြစ်ရပါမည်', 'Ipari ipari ọrọigbaniwọle gbọdọ jẹ 6-12 Ti ohun kikọ ati baramu pẹlu Jẹrisi ọrọigbaniwọle', 'Dole ne kalmar wucewa ta kasance ta 6-12 Haɗi da wasa tare da Tabbatar da kalmar sirri'),
(438, 'in_active', 'Inactive', 'নিষ্ক্রিয়', 'Inactivo', 'غير نشط', 'निष्क्रिय', 'غیر فعال', '待用', '非アクティブ', 'Inativo', 'Неактивный', 'Inactif', '비활성', 'Inaktiv', 'Inattivo', 'เฉื่อยชา', 'tétlen', 'Inactief', 'Ut ultrices vestibulum', 'Tidak aktif', 'etkisiz', 'Αδρανής', 'غیر فعال', 'Tidak aktif', 'క్రియారహిత', 'செயல்படா', 'નિષ્ક્રિય', 'Nieaktywny', 'Неактивний', 'ਨਿਸ਼ਕਿਰਿਆ', 'Inactiv', 'မလှုပ်ရှားတတ်သော', 'Inactive', 'Mai aiki'),
(440, 'fill_out_all_data', 'Please fill up all field data', 'সমস্ত ক্ষেত্রের তথ্য পূরণ করুন দয়া করে', 'Complete todos los datos de campo', 'يرجى ملء جميع البيانات الميدانية', 'कृपया सभी फ़ील्ड डेटा भरें', 'براہ کرم تمام فیلڈ ڈیٹا کو بھریں', '请填写所有的现场数据', 'すべてのフィールドデータを入力してください', 'Complete todos os dados de campo', 'Пожалуйста, заполните все полевые данные', 'Sil vous plaît remplir toutes les données de terrain', '모든 필드 데이터를 입력하십시오.', 'Bitte füllen Sie alle Felddaten aus', 'Si prega di compilare tutti i dati del campo', 'โปรดกรอกข้อมูลฟิลด์ทั้งหมด', 'Kérjük, töltse ki az összes mezőadatot', 'Vul alle veldgegevens in', 'Obsecro, universi agri data fillup', 'Silahkan isi semua data lapangan', 'Lütfen tüm alan verilerini doldurun', 'Παρακαλούμε συμπληρώστε όλα τα δεδομένα πεδίου', 'لطفا تمام اطلاعات فیلد را پر کنید', 'Sila mengisi semua data medan', 'దయచేసి అన్ని క్షేత్ర డేటాను పూరించండి', 'அனைத்து புல தரவு நிரப்பவும்', 'કૃપા કરીને તમામ ફીલ્ડ ડેટા ભરો', 'Proszę odflukować wszystkie dane pola', 'Будь ласка, заповніть всі дані поля', 'ਕਿਰਪਾ ਕਰਕੇ ਸਾਰੇ ਫੀਲਡ ਡਾਟਾ ਭਰ ਦਿਓ', 'Completați toate datele câmpului', 'အားလုံးလယ်ကွင်းဒေတာ fillup ကျေးဇူးပြု.', 'Jowo fi gbogbo data aaye kun', 'Da fatan a cika dukkan bayanan filin'),
(441, 'email_send_failed', 'Email sent failed. Please try again.', 'ইমেল পাঠানো ব্যর্থ হয়েছে। অনুগ্রহপূর্বক আবার চেষ্টা করুন.', 'El correo electrónico enviado falló. Inténtalo de nuevo.', 'أخفق إرسال البريد الإلكتروني. حاول مرة اخرى.', 'ईमेल भेजा विफल रहा। कृपया पुन: प्रयास करें।', 'ای میل بھیجا گیا. دوبارہ کوشش کریں.', '电子邮件发送失败 请再试一次。', '送信されたメールは失敗しました もう一度お試しください。', 'E-mail enviado falhou. Por favor, tente novamente.', 'Не удалось отправить сообщение по электронной почте. Пожалуйста, попробуйте еще раз.', 'Email envoyé a échoué. Veuillez réessayer.', '전송 된 이메일이 실패했습니다. 다시 시도하십시오.', 'E-Mail sendet fehlgeschlagen. Bitte versuchen Sie es.', 'Email inviata fallita. Per favore riprova.', 'อีเมลที่ส่งล้มเหลว กรุณาลองอีกครั้ง.', 'Az elküldött e-mail nem sikerült. Kérlek próbáld újra.', 'E-mail verzonden mislukt. Probeer het opnieuw.', 'Misimus defecit. Quaero, iterum conare.', 'Email terkirim gagal Silahkan coba lagi', 'E-posta gönderilemedi. Lütfen tekrar deneyin.', 'Το ηλεκτρονικό ταχυδρομείο που στάλθηκε απέτυχε ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'ایمیل ارسال نشد. لطفا دوباره تلاش کنید.', 'E-mel dihantar gagal. Sila cuba lagi.', 'ఇమెయిల్ పంపడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.', 'மின்னஞ்சல் அனுப்பப்பட்டது தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்.', 'ઇમેઇલ મોકલવામાં નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Nie udało się wysłać e-maila. Proszę spróbuj ponownie.', 'Не вдалося надіслати електронне повідомлення. Будь ласка спробуйте ще раз.', 'ਭੇਜੀ ਗਈ ਈਮੇਲ ਫੇਲ੍ਹ ਹੋਈ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Emailul trimis a eșuat. Vă rugăm să încercați din nou.', 'အီးမေးလ်ပို့ရန်မအောင်မြင်စေလွှတ်ခဲ့သည်။ ထပ်ကြိုးစားပါ။', 'Ifiranṣẹ imeeli ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'An aika imel da aka aika ya kasa. Da fatan a sake gwadawa.'),
(442, 'email_send_success', 'Email sent successfully', 'ইমেল সফলভাবে পাঠানো হয়েছে', 'Correo electrónico enviado con éxito', 'تم إرسال البريد الإلكتروني بنجاح', 'सफलतापूर्वक भेजा गया ईमेल', 'ای میل کامیابی سے بھیجا گیا', '电子邮件发送成功', '電子メールを正常に送信', 'E-mail enviado com sucesso', 'письмо успешно отправлено', 'E-mail envoyé avec succès', '이메일이 전송되었습니다.', 'Email wurde erfolgreich Versendet', 'email inviata correttamente', 'ส่งอีเมลเรียบร้อยแล้ว', 'Az e-mail sikeresen elküldve', 'E-mail met succes verzonden', 'Email ad bene', 'Email berhasil dikirim', 'e-posta başarıyla gönderildi', 'Το email στάλθηκε με επιτυχία', 'ایمیل با موفقیت ارسال شد', 'E-mel berjaya dihantar', 'ఇమెయిల్ విజయవంతంగా పంపబడింది', 'மின்னஞ்சல் வெற்றிகரமாக அனுப்பப்பட்டது', 'ઇમેઇલ સફળતાપૂર્વક મોકલ્યો', 'E-mail wysłany pomyślnie', 'Електронна пошта надійшла успішно', 'ਈਮੇਲ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Email-ul a fost trimis cu succes', 'အောင်မြင်စွာကိုစလှေတျအီးမေးလ်ပို့ရန်', 'Imeeli firanṣẹ ni ifijišẹ', 'Imel da aka aika da nasarar'),
(443, 'sms_send_failed', 'Sms send failed. Please try again', 'এসএমএস পাঠানো ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'SMS enviado fallido. Inténtalo de nuevo', 'أرسل الرسائل القصيرة سمز. حاول مرة اخرى', 'एसएमएस भेजना विफल हुआ कृपया पुन: प्रयास करें', 'ایس ایم ایس ناکام ہوگئے. دوبارہ کوشش کریں', '短信发送失败。 请再试一次', 'SMS送信に失敗しました。 もう一度お試しください', 'Sms send falhou. Por favor, tente novamente', 'Ошибка отправки sms не удалась. Пожалуйста, попробуйте еще раз', 'Lenvoi de sms a échoué. Veuillez réessayer', 'SMS 전송에 실패했습니다. 다시 시도하십시오.', 'SMS senden fehlgeschlagen. Bitte versuche es erneut', 'Invio SMS fallito. Per favore riprova', 'ส่ง sms ล้มเหลว กรุณาลองอีกครั้ง', 'A sms küldés nem sikerült. Kérlek próbáld újra', 'Sms verzenden mislukt. Probeer het opnieuw', 'Mittere SMS defecit. Quaero, iterum conare', 'Sms send gagal Silahkan coba lagi', 'SMS göndermek başarısız oldu. Lütfen tekrar deneyin', 'Η αποστολή SMS απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'پیامک ارسال نشد لطفا دوباره تلاش کنید', 'Hantar sms gagal. Sila cuba lagi', 'SMS పంపడం విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి', 'Sms அனுப்ப முடியவில்லை. தயவு செய்து மீண்டும் முயற்சிக்கவும்', 'એસએમએસ મોકલવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wysłać SMS-a. Proszę spróbuj ponownie', 'Не вдалося надіслати SMS-повідомлення. Будь ласка спробуйте ще раз', 'ਐਸਐਮਐਸ ਭੇਜਣਾ ਅਸਫਲ ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Sms-ul trimite nu a reușit. Vă rugăm să încercați din nou', 'sms ပျက်ကွက်ပေးပို့ပါ။ ထပ်ကြိုးစားပါ', 'Ifiranṣẹ Sms ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Sms aika ya kasa. Da fatan a sake gwadawa'),
(444, 'sms_send_success', 'Sms sent successfully', 'এসএমএস সফলভাবে পাঠানো হয়েছে', 'SMS enviado satisfactoriamente', 'تم إرسال الرسائل القصيرة بنجاح', 'एसएमएस सफलतापूर्वक भेजा गया', 'ایس ایم ایس کامیابی سے بھیجے گئے', '短信发送成功', 'SMSが正常に送信されました', 'SMS enviado com êxito', 'Sms успешно отправлен', 'SMS envoyé avec succès', 'SMS가 성공적으로 보냈습니다.', 'SMS erfolgreich versendet', 'SMS inviato correttamente', 'ส่ง sms เรียบร้อยแล้ว', 'A sms sikeresen elküldve', 'SMS succesvol verzonden', 'SMS misit feliciter', 'Sms berhasil dikirim', 'SMS başarıyla gönderildi', 'Τα SMS αποστέλλονται με επιτυχία', 'اس ام اس با موفقیت ارسال شد', 'Sms dihantar berjaya', 'Sms విజయవంతంగా పంపబడింది', 'Sms வெற்றிகரமாக அனுப்பப்பட்டது', 'એસએમએસ સફળતાપૂર્વક મોકલ્યો છે', 'SMS wysłany z powodzeniem', 'СМС успішно відправлено', 'SMS ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Sms-urile au fost trimise cu succes', 'အောင်မြင်စွာကိုစလှေတျ sms', 'Sms rán ni ifijišẹ', 'Sms ya aika da nasarar'),
(445, 'clickatell_mo_no', 'Mo Number', 'MO সংখ্যা', 'Número Mo', 'مو عدد', 'मो नंबर', 'مو نمبر', '莫数', 'Mo番号', 'Número Mo', 'Номер Mo', 'Mo Number', '모 번호', 'Mo Nummer', 'Numero Mo', 'จำนวนโม', 'Mo szám', 'Mo-nummer', 'Mo Number', 'Nomor Mo', 'Mo Numarası', 'Αριθμός Mo', 'شماره م', 'Nombor Mo', 'మో సంఖ్య', 'மோ எண்', 'મો સંખ્યા', 'Numer Mo', 'Номер Мо', 'ਮੋ ਨੰਬਰ', 'Numărul Mo', 'mo အရေအတွက်', 'Mo Number', 'Mo Number'),
(446, 'setup_your_sms_gateway', 'Please set up your expected sms gateway correctly ', 'অনুগ্রহ করে আপনার প্রত্যাশিত এসএমএস গেটওয়ে সঠিকভাবে সেট আপ করুন', 'Configure su puerta de enlace de SMS esperado correctamente', 'يرجى إعداد بوابة الرسائل القصيرة المتوقعة بشكل صحيح', 'कृपया अपना अपेक्षित एसएमएस गेटवे सही ढंग से सेट करें', 'براہ مہربانی اپنے متوقع ایس ایم ایس گیٹ وے کو صحیح طریقے سے مقرر کریں', '请正确设置您的预期的短信网关', '予想されるSMSゲートウェイを正しく設定してください', 'Configure o seu esperado sms gateway corretamente', 'Правильно настройте свой ожидаемый sms-шлюз', 'Veuillez configurer votre passerelle SMS attendue correctement', '예상되는 SMS 게이트웨이를 올바르게 설정하십시오.', 'Bitte richten Sie Ihr erwartetes SMS-Gateway korrekt ein', 'Si prega di configurare il vostro gateway sms previsto correttamente', 'โปรดตั้งค่าเกตเวย์ sms ที่คุณต้องการโดยถูกต้อง', 'Kérjük, helyesen állítsa be az elvárt sms-átjárót', 'Stel uw verwachte sms-gateway correct in', 'SMS porta quaeso erigas bene sperandum', 'Harap siapkan gateway sms yang Anda harapkan dengan benar', 'Lütfen beklenen sms ağ geçidinizi doğru bir şekilde ayarlayın.', 'Ρυθμίστε σωστά την αναμενόμενη πύλη sms', 'لطفا دروازه مورد انتظار اس ام اس مورد نظر را درست تنظیم کنید', 'Sila buat gerbang sms yang diharapkan', 'దయచేసి మీ ఆశించిన SMS గేట్ సరిగ్గా అమర్చండి', 'உங்கள் எதிர்பார்க்கப்படும் எஸ்எம்எஸ் நுழைவாயை சரியாக அமைக்கவும்', 'કૃપા કરીને તમારા અપેક્ષિત એસએમએસ ગેટવેને યોગ્ય રીતે સેટ કરો', 'Proszę poprawnie skonfigurować oczekiwaną bramę sms', 'Будь ласка, правильно налаштуйте очікуваний шлюз sms', 'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਉਮੀਦਵਾਰ SMS ਗੇਟਵੇ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਸੈਟ ਅਪ ਕਰੋ', 'Vă rugăm să configurați corect poarta de așteptare pentru sms', 'မှန်မှန်ကန်ကန်သင့်ရဲ့မျှော်မှန်း sms ကိုတံခါးပေါက်ကို set up ကို ကျေးဇူးပြု.', 'Jowo gbe ọna ẹnu sms ti o ti ṣe yẹ rẹ silẹ tọ', 'Don Allah a kafa hanyar ƙoƙarin sms da ake tsammani a daidai'),
(447, 'already_exist', 'This data already exists in database. Please try another one.', 'এই ডেটা ডাটাবেসে ইতিমধ্যে বিদ্যমান। অন্য একটি চেষ্টা করুন।', 'Esta información ya existe en la base de datos. Por favor prueba con otro.', 'هذه البيانات موجودة بالفعل في قاعدة البيانات. الرجاء محاولة تجربة أخرى.', 'डेटाबेस में यह डेटा पहले से मौजूद है कृपया कोई दूसरा प्रयास करें', 'ڈیٹا بیس میں یہ ڈیٹا پہلے ہی موجود ہے. براہ کرم ایک اور کوشش کریں.', '这个数据已经存在于数据库中。 请尝试另一个。', 'このデータはすでにデータベースに存在します。 別のものをお試しください。', 'Estes dados já existem no banco de dados. Por favor, tente outro.', 'Эти данные уже существуют в базе данных. Попробуйте еще один.', 'Ces données existent déjà dans la base de données. Sil vous plaît essayer un autre.', '이 데이터는 이미 데이터베이스에 있습니다. 다른 것을 시도하십시오.', 'Diese Daten existieren bereits in der Datenbank. Bitte versuchen Sie es mit einem anderen.', 'Questi dati esistono già nel database. Si prega di provare un altro.', 'ข้อมูลนี้มีอยู่แล้วในฐานข้อมูล โปรดลองอีกอันหนึ่ง', 'Ez az adat már létezik az adatbázisban. Próbálj ki egyet.', 'Deze gegevens bestaan al in de database. Probeer een andere.', 'Hoc etiam existit in database notitia. Aliquam alia.', 'Data ini sudah ada di database. Silakan coba yang lain.', 'Bu veriler zaten veritabanında mevcut. Lütfen başka bir tane deneyin.', 'Αυτά τα δεδομένα υπάρχουν ήδη στη βάση δεδομένων. Δοκιμάστε άλλο.', 'این اطلاعات قبلا در پایگاه داده وجود دارد. لطفا یکی دیگر را امتحان کنید', 'Data ini sudah wujud dalam pangkalan data. Sila cuba yang lain.', 'ఈ డేటా ఇప్పటికే డేటాబేస్లో ఉంది. దయచేసి మరొకదాన్ని ప్రయత్నించండి.', 'தரவு ஏற்கனவே தரவுத்தளத்தில் உள்ளது. தயவுசெய்து வேறொரு ஒன்றை முயற்சிக்கவும்.', 'ડેટા ડેટાબેઝમાં આ ડેટા પહેલેથી હાજર છે. કૃપા કરી બીજી કોઈનો પ્રયાસ કરો.', 'Te dane już istnieją w bazie danych. Proszę spróbować innego.', 'Ці дані вже існують у базі даних. Будь ласка, спробуйте інший.', 'ਇਹ ਡੇਟਾ ਡੇਟਾਬੇਸ ਵਿੱਚ ਮੌਜੂਦ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਹੋਰ ਕੋਈ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Aceste date există deja în baza de date. Încearcă altul.', 'ဒီ data ပြီးသားဒေတာဘေ့စရှိ။ အခြားတဦးတည်းကြိုးစားပါ။', 'Data yi tẹlẹ wa ni ibi ipamọ data. Jọwọ ṣe idanwo miiran.', 'Wannan bayanai sun riga sun kasance a cikin bayanai. Da fatan a gwada wani.'),
(448, 'valid_file_format_doc', 'Document file format: pdf, .doc, .docx or .txt', 'ডকুমেন্ট ফাইল ফরমেট: পিডিএফ, .ডক, .ডোসিস ওর .টেক্সট', 'Formato de archivo de documento: pdf, .doc, .docx o .txt', 'تنسيق ملف المستند: بدف أو .doc أو .docx أو .txt', 'दस्तावेज़ फ़ाइल प्रारूप: पीडीएफ, .doc, .docx या .txt', 'دستاویز فائل کی شکل: پی ڈی ایف، .doc، .docx یا .txt', '文档文件格式：pdf，.doc，.docx或.txt', 'ドキュメントファイル形式：pdf、.doc、.docx、または.txt', 'Formato do arquivo de documento: pdf, .doc, .docx ou .txt', 'Формат файла документа: pdf, .doc, .docx или .txt', 'Format de fichier de document: pdf, .doc, .docx ou .txt', '문서 파일 형식 : pdf, .doc, .docx 또는 .txt', 'Dokumentdateiformat: pdf, .doc, .docx oder .txt', 'Formato del documento: pdf, .doc, .docx o .txt', 'รูปแบบไฟล์เอกสาร: pdf, .doc, .docx หรือ. txt', 'Dokumentum fájlformátum: pdf, .doc, .docx vagy .txt', 'Document bestandsformaat: pdf, .doc, .docx of .txt', 'Documentum formae q.e.: pdf, .doc, aut .docx .txt', 'Format file dokumen: pdf, .doc, .docx, atau .txt', 'Belge dosyası biçimi: pdf, .doc, .docx veya .txt', 'Μορφή αρχείου εγγράφου: pdf, .doc, .docx ή .txt', 'فرمت فایل اسناد: pdf، .doc، .docx یا .txt', 'Format fail dokumen: pdf, .doc, .docx atau .txt', 'డాక్యుమెంట్ ఫైల్ ఫార్మాట్: pdf, .doc, .docx లేదా .txt', 'ஆவண கோப்பு வடிவம்: pdf, .doc, .docx அல்லது .txt', 'દસ્તાવેજ ફાઇલ ફોર્મેટ: પીડીએફ, .ડોક, ..docx અથવા .txt', 'Format pliku dokumentu: pdf, .doc, .docx lub .txt', 'Формат файлу документа: pdf, .doc, .docx або .txt', 'ਦਸਤਾਵੇਜ਼ ਫਾਈਲ ਫਾਰਮੈਟ: ਪੀ ਡੀ ਐਫ, .ਡੌਕ, .ਡੌਕਸ ਜਾਂ .txt', 'Formatul fișierului documentului: pdf, .doc, .docx sau .txt', 'စာရွက်စာတမ်းဖိုင်ကို format နဲ့: pdf, .doc, .docx သို့မဟုတ် .txt', 'Faili faili faili: pdf, .doc, .docx or .txt', 'Tsarin fayil na fayil: pdf, .doc, .docx ko .txt'),
(453, 'valid_file_format_img', 'Image file format: .jpg, .jpeg, .png or .gif', 'ইমেজ ফাইল ফরমেট: .জেপিজি, .জেপেগ, .পং ওর .গিফ।', 'Formato de archivo de imagen: .jpg, .jpeg, .png o .gif', 'تنسيق ملف الصورة: .jpg أو .jpeg أو ينغ أو .gif', 'छवि फ़ाइल प्रारूप: .jpg, .jpeg, .png या .gif', 'تصویری فائل کی شکل: .jpg، .jpeg، .png یا .gif', '图像文件格式：.jpg，.jpeg，.png或.gif', '画像ファイル形式：.jpg、.jpeg、.png、.gif', 'Formato do arquivo de imagem: .jpg, .jpeg, .png ou .gif', 'Формат файла изображения: .jpg, .jpeg, .png или .gif', 'Format de fichier image: .jpg, .jpeg, .png ou .gif', '이미지 파일 형식 : .jpg, .jpeg, .png 또는 .gif', 'Bilddateiformat: .jpg, .jpeg, .png oder .gif', 'Formato file immagine: .jpg, .jpeg, .png o .gif', 'รูปแบบไฟล์รูปภาพ: .jpg, .jpeg, .png หรือ. gif', 'Képfájl formátuma: .jpg, .jpeg, .png vagy .gif', 'Afbeeldingsbestandsindeling: .jpg, .jpeg, .png of .gif', 'Image formae q.e.: .jpg, .jpeg, aut png .gif', 'Format file gambar: .jpg, .jpeg, .png, atau .gif', 'Resim dosyası biçimi: .jpg, .jpeg, .png veya .gif', 'Μορφή αρχείου εικόνας: .jpg, .jpeg, .png ή .gif', 'فرمت فایل تصویری: .jpg، .jpeg، .png یا .gif', 'Format fail imej: .jpg, .jpeg, .png atau .gif', 'ఇమేజ్ ఫైల్ ఫార్మాట్: .jpg, .jpeg, .png లేదా .gif', 'பட கோப்பு வடிவமைப்பு: .jpg, .jpeg, .png அல்லது. Gif', 'છબી ફાઇલ ફોર્મેટ: .jpg, .jpeg, .png અથવા .gif', 'Format pliku obrazu: .jpg, .jpeg, .png lub .gif', 'Формат файлу зображень: .jpg, .jpeg, .png або .gif', 'ਚਿੱਤਰ ਫਾਇਲ ਫਾਰਮੈਟ: .jpg, .jpeg, .png ਜਾਂ .gif', 'Formatul fișierului imagine: .jpg, .jpeg, .png sau .gif', 'image file format နဲ့: .jpg, တွေဖြစ်တဲ့ JPEG, .png သို့မဟုတ် .gif', 'Aworan faili kika: .jpg, .jpeg, .png tabi .gif', 'Tsarin fayil na hotuna: .jpg, .jpeg, .png ko .gif'),
(455, 'select_valid_file_format', 'Please select a valid file format.', 'একটি ভ্যালিড ফাইল ফরমেট নির্বাচন করুন।', 'Seleccione un formato de archivo válido.', 'الرجاء تحديد تنسيق ملف صالح.', 'कृपया एक वैध फ़ाइल प्रारूप का चयन करें।', 'براہ کرم ایک درست فائل کی شکل منتخب کریں.', '请选择一个有效的文件格式。', '有効なファイル形式を選択してください。', 'Selecione um formato de arquivo válido.', 'Выберите допустимый формат файла.', 'Veuillez sélectionner un format de fichier valide', '유효한 파일 형식을 선택하십시오.', 'Bitte wählen Sie ein gültiges Dateiformat.', 'Si prega di selezionare un formato di file valido.', 'โปรดเลือกรูปแบบไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlformátumot.', 'Selecteer alstublieft een geldig bestandsformaat.', 'Placere eligere formae q.e. valet.', 'Silahkan pilih format file yang valid.', 'Lütfen geçerli bir dosya biçimi seçin.', 'Επιλέξτε μια έγκυρη μορφή αρχείου.', 'لطفا یک فرمت فایل معتبر را انتخاب کنید', 'Sila pilih format fail yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఫైల్ ఆకృతిని ఎంచుకోండి.', 'செல்லுபடியாகும் கோப்பு வடிவத்தை தேர்ந்தெடுக்கவும்.', 'કૃપા કરી કોઈ માન્ય ફાઇલ ફોર્મેટ પસંદ કરો.', 'Wybierz prawidłowy format pliku.', 'Будь ласка, виберіть правильний формат файлу.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਫਾਰਮੈਟ ਚੁਣੋ.', 'Selectați un format de fișier valid.', 'ခိုင်လုံသောဖိုင် format ကိုရွေးချယ်ပါ။', 'Jọwọ yan ọna kika faili ti o wulo.', 'Da fatan za a zaɓi tsarin fayil mai aiki.'),
(467, 'select_a_file', 'Please select a valid file.', 'দয়া করে একটি ভ্যালিড ফাইল নির্বাচন করুন।', 'Seleccione un archivo válido.', 'الرجاء تحديد ملف صالح.', 'कृपया एक मान्य फ़ाइल चुनें', 'براہ کرم ایک درست فائل منتخب کریں.', '请选择一个有效的文件。', '有効なファイルを選択してください。', 'Selecione um arquivo válido.', 'Выберите действительный файл.', 'Veuillez sélectionner un fichier valide', '올바른 파일을 선택하십시오.', 'Bitte wählen Sie eine gültige Datei.', 'Si prega di selezionare un file valido.', 'โปรดเลือกไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlt.', 'Selecteer alstublieft een geldig bestand.', 'Placere eligere file valet.', 'Silahkan pilih file yang valid.', 'Lütfen geçerli bir dosya seçin.', 'Επιλέξτε ένα έγκυρο αρχείο.', 'لطفا یک فایل معتبر را انتخاب کنید', 'Sila pilih fail yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఫైల్ను ఎంచుకోండి.', 'செல்லுபடியாகும் கோப்பைத் தேர்ந்தெடுக்கவும்.', 'કૃપા કરી કોઈ માન્ય ફાઇલ પસંદ કરો.', 'Proszę wybrać poprawny plik.', 'Будь ласка, виберіть дійсний файл.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਚੁਣੋ.', 'Selectați un fișier valid.', 'ခိုင်လုံသောဖိုင်ကိုရွေးပေးပါ။', 'Jọwọ yan faili ti o wulo.', 'Da fatan a zaɓi fayil mai aiki.'),
(477, 'input_valid_amount', 'Please input valid amount.', 'দয়া করে ভ্যালিড পরিমাণ ইনপুট করুন।', 'Por favor ingrese un monto válido.', 'الرجاء إدخال مبلغ صالح.', 'कृपया वैध राशि इनपुट करें', 'براہ کرم ان پٹ درست رقم.', '请输入有效金额。', '有効な金額を入力してください。', 'Digite o valor válido.', 'Введите действительную сумму.', 'Veuillez entrer un montant valide', '유효한 금액을 입력하십시오.', 'Bitte geben Sie den gültigen Betrag ein.', 'Si prega di inserire un importo valido.', 'โปรดป้อนจำนวนที่ถูกต้อง', 'Kérem adja meg az érvényes összeget.', 'Voer een geldig bedrag in.', 'Initus placere ratum tantum.', 'Mohon masukan jumlah yang benar.', 'Lütfen geçerli tutarı giriniz.', 'Καταχωρίστε έγκυρο ποσό.', 'لطفا مقدار معتبر وارد کنید', 'Sila masukkan jumlah yang sah.', 'దయచేసి చెల్లని మొత్తం ఇన్పుట్ చేయండి.', 'தயவுசெய்து உள்ளீடு செல்லுபடியான தொகை.', 'કૃપા કરીને માન્ય રકમ ઇનપુટ કરો.', 'Wprowadź prawidłową kwotę.', 'Будь ласка, введіть дійсну суму.', 'ਕਿਰਪਾ ਕਰਕੇ ਯੋਗ ਰਕਮ ਇੰਪੁੱਟ ਕਰੋ.', 'Introduceți suma validă.', 'input ကိုတရားဝင်ငွေပမာဏပါ။', 'Jọwọ iye owo titẹ sii.', 'Da fatan shigar da adadin shigarwa.');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(552, 'input_valid_payment_setting', 'Please input correct payment setting.', 'প্লিজ ইনপুট কারেক্ট পেমেন্ট সেটিং।', 'Ingrese la configuración de pago correcta.', 'الرجاء إدخال إعداد الدفع الصحيح.', 'कृपया सही भुगतान सेटिंग इनपुट करें।', 'برائے مہربانی درست ادائیگی کی ترتیب میں ان پٹ', '请输入正确的付款设置。', '正しい支払い設定を入力してください。', 'Por favor, insira a configuração de pagamento correta.', 'Введите правильную настройку платежа.', 'Veuillez entrer le paramètre de paiement correct.', '올바른 지불 설정을 입력하십시오.', 'Bitte geben Sie die richtige Zahlungseinstellung ein.', 'Si prega di inserire le impostazioni di pagamento corrette.', 'โปรดป้อนการตั้งค่าการชำระเงินที่ถูกต้อง', 'Kérjük, adja meg a helyes fizetési beállítást.', 'Voer de juiste betalingsinstelling in.', 'Initus bene placent mercedem occasum.', 'Harap masukan pengaturan pembayaran yang benar.', 'Lütfen doğru ödeme ayarını giriniz.', 'Εισαγάγετε τη σωστή ρύθμιση πληρωμής.', 'لطفا تنظیم پرداخت درست را وارد کنید.', 'Sila masukkan tetapan pembayaran yang betul.', 'దయచేసి సరైన చెల్లింపు సెట్టింగ్ను ఇన్పుట్ చేయండి.', 'சரியான கட்டண அமைப்பை உள்ளிடுக.', 'કૃપા કરીને યોગ્ય ચુકવણી સેટિંગ ઇનપુટ કરો.', 'Wprowadź poprawne ustawienie płatności.', 'Будь ласка, введіть правильний параметр оплати.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਹੀ ਭੁਗਤਾਨ ਸੈਟਿੰਗ ਇਨਪੁਟ ਕਰੋ.', 'Introduceți setarea de plată corectă.', 'input ကိုမှန်ကန်ငွေပေးချေမှု setting ကိုပါ။', 'Jọwọ ṣe ipinnu eto sisan ti o tọ.', 'Da fatan a shigar da saitin biya daidai.'),
(556, 'in_demo_db_backup', 'In demo database backp is disabled.', 'ডেমো ডেটাবেস ব্যাকআপে বন্ধ করা আছে।', 'En la copia de seguridad de la base de datos demo está desactivado', 'في النسخ الاحتياطي قاعدة البيانات التجريبي معطل.', 'डेमो डेटाबेस बैकअप में अक्षम है', 'ڈیمو ڈیٹا بیس کا بیک اپ غیر فعال ہے.', '在演示数据库中，备份被禁用。', 'デモでは、データベースのバックアップが無効になっています。', 'No backup do banco de dados demo está desativado.', 'В демонстрационной базе данных резервное копирование отключено.', 'Dans la sauvegarde de base de données démo est désactivé.', '데모에서 데이터베이스 백업이 비활성화되었습니다.', 'In der Demo ist die Datenbanksicherung deaktiviert.', 'Nel backup del database demo è disabilitato.', 'ในการสำรองฐานข้อมูลตัวอย่างถูกปิดใช้งาน', 'A demo adatbázis-mentés le van tiltva.', 'In demo-database is back-up uitgeschakeld.', 'In demo database tergum is disabled.', 'Dalam backup database demo dinonaktifkan.', 'Demo veritabanında yedekleme devre dışı bırakıldı.', 'Στην εφεδρική βάση δεδομένων επίδειξης είναι απενεργοποιημένη.', 'در نسخه پشتیبان تهیه نسخه ی نمایشی غیر فعال شده است.', 'Dalam sandaran pangkalan data demo dilumpuhkan.', 'డెమో డేటాబేస్ బ్యాకప్ డిసేబుల్.', 'டெமோ தரவுத்தள காப்பு உள்ள முடக்கப்பட்டுள்ளது.', 'ડેમો ડેટાબેસ બેકઅપ માં અક્ષમ છે.', 'W kopii zapasowej bazy danych demo jest wyłączone.', 'У демо-базі даних резервне копіювання вимкнено.', 'ਡੈਮੋ ਡਾਟਾਬੇਸ ਬੈਕਅੱਪ ਅਯੋਗ ਹੈ.', 'În baza de date demonstrativă, copia de rezervă este dezactivată.', 'သရုပ်ပြဒေတာဘေ့စမှာတော့ backup လုပ်ထားကိုပိတ်ထားသည်။', 'Ni ipamọ afẹyinti ipamọ jẹ alaabo.', 'A cikin dimbin bayanan bayanan yanar gizo an kashe.'),
(557, 'this_room_already_allocated', 'This room already allocated at this time.', 'এই রুমে ইতিমধ্যে এই সময়ে বরাদ্দ করা আছে।', 'Esta habitación ya está asignada en este momento.', 'هذه الغرفة المخصصة بالفعل في هذا الوقت.', 'इस कमरे में पहले से ही इस समय आवंटित किया गया है।', 'اس کمرے کو اس وقت پہلے مختص کردیا گیا ہے.', '这个房间已经在这个时候分配了。', 'この部屋はこの時点ですでに割り当てられています。', 'Este quarto já foi alocado neste momento.', 'Эта комната уже выделена в это время.', 'Cette pièce est déjà allouée à ce moment.', '이 방은 이미이 시간에 할당되었습니다.', 'Dieses Zimmer ist zu dieser Zeit bereits vergeben.', 'Questa stanza è già stata assegnata in questo momento.', 'ห้องนี้มีการจัดสรรไว้แล้วในขณะนี้', 'Ez a szoba már kiosztott ebben az időben.', 'Deze kamer is al toegewezen op dit moment.', 'Hic locus iam ante hoc tempus partita imperia.', 'Kamar ini sudah dialokasikan saat ini.', 'Bu oda zaten bu saatte tahsis edilmiş.', 'Αυτό το δωμάτιο έχει ήδη διατεθεί αυτή τη στιγμή.', 'این اتاق در حال حاضر اختصاص داده شده است.', 'Bilik ini sudah diperuntukkan pada masa ini.', 'ఈ గది ఇప్పటికే ఈ సమయంలో కేటాయించబడింది.', 'இந்த அறை ஏற்கனவே இந்த நேரத்தில் ஒதுக்கப்பட்டுள்ளது.', 'આ ખંડ પહેલેથી જ આ સમયે ફાળવવામાં આવ્યો છે.', 'Ten pokój został już przydzielony w tym momencie.', 'Цей номер уже виділений в цей час.', 'ਇਹ ਕਮਰਾ ਪਹਿਲਾਂ ਹੀ ਇਸ ਸਮੇਂ ਨਿਰਧਾਰਤ ਕੀਤਾ ਗਿਆ ਹੈ.', 'Această cameră deja alocată în acest moment.', 'ဒီအခန်းကပြီးသားဤအချိန်တွင်ခွဲဝေ။', 'Yara yii ti ṣetoto ni akoko yii.', 'Wannan dakin da aka riga aka ba shi a wannan lokaci.'),
(558, 'only_student_can_submit', 'Only student can submit assignment.', 'শুধুমাত্র ছাত্র  এসাইনমেন্ট জমা দিতে পারেন।', 'Solo el alumno puede enviar una tarea.', 'يمكن للطالب فقط تقديم المهمة.', 'केवल छात्र असाइनमेंट सबमिट कर सकते हैं', 'صرف طالب علم تفویض جمع کر سکتا ہے.', '只有学生可以提交作业。', '学生だけが課題を提出できます。', 'Somente o aluno pode enviar a atribuição.', 'Только ученик может подать задание.', 'Seul létudiant peut soumettre une affectation.', '학생 만 과제를 제출할 수 있습니다.', 'Nur der Student kann eine Aufgabe einreichen.', 'Solo lo studente può presentare un incarico.', 'เฉพาะนักเรียนเท่านั้นที่สามารถส่งงานได้', 'Csak a hallgató küldhet megbízást.', 'Alleen studenten kunnen een opdracht indienen.', 'Tantum submittere potest studiosus carminibus Marcianis.', 'Hanya siswa yang bisa menyerahkan tugas.', 'Sadece öğrenci ödevi gönderebilir.', 'Μόνο ο φοιτητής μπορεί να υποβάλει εργασία.', 'فقط دانش آموز می تواند تسلط را ارسال کند', 'Hanya pelajar sahaja yang boleh menghantar tugasan.', 'మాత్రమే విద్యార్థి అప్పగించిన సమర్పించవచ్చు.', 'மாணவர் மட்டுமே நியமிக்க முடியும்.', 'માત્ર વિદ્યાર્થી સોંપણી સબમિટ કરી શકે છે', 'Tylko uczeń może przesłać zadanie.', 'Тільки студент може подати завдання.', 'ਸਿਰਫ਼ ਵਿਦਿਆਰਥੀ ਹੀ ਕੰਮ ਸੌਂਪ ਸਕਦੇ ਹਨ.', 'Numai elevul poate trimite o sarcină.', 'သာကျောင်းသားတာဝန်ကျရာတင်ပြနိုင်ပါတယ်။', 'Ọmọde nikan le fi iṣẹ ranṣẹ.', 'Makarantar kawai za ta iya aikawa da aiki.'),
(559, 'exam_final_result', 'Exam final result', 'পরীক্ষার চূড়ান্ত ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان حتمی نتیجہ', '考试最终结果', '試験の最終結果', 'Resultado final do exame', 'Окончательный результат экзамена', 'Résultat final de lexamen', '시험 최종 결과', 'Prüfung Endergebnis', 'Esame finale', 'ผลสอบสุดท้าย', 'Vizsga végeredmény', 'Eindresultaat examen', 'Effectus finalis nito', 'Hasil akhir ujian', 'Sınav nihai sonucu', 'Εξέταση τελικού αποτελέσματος', 'نتیجه نهایی آزمون', 'Keputusan akhir peperiksaan', 'తుది ఫలితం పరీక్ష', 'இறுதி முடிவு தேர்வு', 'પરીક્ષાની અંતિમ પરિણામ', 'Egzamin końcowy egzaminu', 'Останній результат іспиту', 'ਇਮਤਿਹਾਨ ਦੇ ਆਖਰੀ ਨਤੀਜੇ', 'Exam final final', 'စာမေးပွဲနောက်ဆုံးရလဒ်', 'Ipari ikẹhin ipari', 'Binciken ƙarshe na binciken'),
(560, 'required_field', 'This field is required.', 'ফিল্ড টি  অবশ্যই পূরণ করতে হবে।', 'Este campo es requerido.', 'هذه الخانة مطلوبه.', 'यह फ़ील्ड आवश्यक है.', 'اس کو پر کرنا ضروری ہے.', '这是必填栏。', 'この項目は必須です。', 'Este campo é obrigatório.', 'Это поле обязательно к заполнению.', 'Ce champ est requis.', '이 입력란은 필수 항목입니다.', 'Dieses Feld wird benötigt.', 'Questo campo è obbligatorio.', 'ต้องระบุข้อมูลนี้', 'Ez a mező kötelező.', 'Dit veld is verplicht.', 'Hic ager requiritur.', 'Bagian ini diperlukan.', 'Bu alan gereklidir.', 'Αυτό το πεδίο απαιτείται.', 'این فیلد مورد نیاز است', 'Bidang ini diperlukan.', 'ఈ ఖాళీని తప్పనిసరిగా పూరించవలెను.', 'இந்த புலம் தேவை.', 'આ ક્ષેત્ર જરૂરી છે.', 'To pole jest wymagane.', 'Це поле є обовязковим.', 'ਇਸ ਫੀਲਡ ਦੀ ਲੋੜ ਹੈ.', 'Acest câmp este obligatoriu.', 'ဤစာကွက်လပ်မှာဖြည့်ရန်လိုအပ်ပါသည်။', 'E ni lati se nkan si aye yi.', 'Wannan fillin ana bukatansa.'),
(561, 'enter_valid_email', 'Please enter a valid email address.', 'একটি ভ্যালিড ইমেইল ঠিকানা লিখুন।', 'Por favor, introduce una dirección de correo electrónico válida.', 'رجاء قم بإدخال بريد الكتروني صحيح.', 'कृपया एक वैध ई - मेल एड्रेस डालें।', 'برائے مہربانی قابل قبول ای میل ایڈریس لکھیں.', '请输入有效的电子邮件地址。', '有効なメールアドレスを入力してください。', 'Por favor insira um endereço de e-mail válido.', 'Пожалуйста, введите действительный адрес электронной почты.', 'Sil vous plaît, mettez une adresse email valide.', '유효한 이메일 주소를 입력하세요.', 'Bitte geben Sie eine gültige E-Mail-Adresse ein.', 'Si prega di inserire un indirizzo email valido.', 'กรุณาใส่อีเมล์ที่ถูกต้อง.', 'Kérjük valós e-mail címet adjon meg!', 'Gelieve een geldig e-mailadres in te geven.', 'Please enter inscriptio electronica valida.', 'Silakan isi alamat email.', 'Geçerli bir e.', 'Παρακαλώ εισάγετε μια έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομείου.', 'لطفا یک آدرس ایمیل معتبر وارد کنید.', 'Sila masukkan alamat emel yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్ చిరునామాను నమోదు చేయండి.', 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்.', 'કૃપા કરી કોઈ માન્ય ઇમેઇલ સરનામું દાખલ કરો.', 'Proszę wpisać aktualny adres e-mail.', 'Будь ласка, введіть дійсну адресу електронної пошти.', 'ਇੱਕ ਜਾਇਜ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ.', 'Te rog introdu o adresa de email valida.', 'ကျေးဇူးပြ။ မှန်ကန်သောအီးမေးလ်လိပ်စာကိုထည့်သွင်းပါ။', 'Jowo fun fun wa ni imeli re to je otito.', 'Don Allah shigar da adireshin i-mel mai inganci.'),
(562, 'enter_valid_url', 'Please enter a valid URL.', 'একটি ভ্যালিড ইউআরএল প্রবেশ করুন।', 'Por favor introduzca un URL válido.', 'أدخل رابط صحيح من فضلك.', 'कृपया एक मान्य यूआरएल दर्ज कीजिए।', 'براہ کرم ایک درست URL درج کریں.', '请输入有效网址。', '有効なURLを入力してください。', 'Por favor, insira um URL válido.', 'Пожалуйста, введите корректный адрес.', 'Veuillez entrer une URL valide', '유효한 URL을 입력 해주세요.', 'Bitte geben Sie eine gültige URL ein.', 'Per favore, inserisci un URL valido.', 'โปรดป้อน URL ที่ถูกต้อง.', 'Kérem, írjon be egy érvényes url-t.', 'Voer een geldige URL in.', 'Please enter validum URL.', 'Masukkan URL yang valid', 'Lütfen geçerli bir adres girin.', 'Εισαγάγετε μια έγκυρη διεύθυνση URL.', 'لطفا یک نشانی وب معتبر وارد کنید.', 'Sila masukkan URL yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే URL ను నమోదు చేయండి.', 'சரியான இணைய முகவரியினை பதிவு செய்யவும்.', 'કૃપા કરી માન્ય URL દાખલ કરો', 'Proszę podać poprawny adres URL.', 'Будь ласка, введіть дійсну URL-адресу.', 'ਇੱਕ ਵੈਧ URL ਦਾਖਲ ਕਰੋ.', 'Introduceți o adresă URL validă.', 'ခိုင်လုံသော URL ကိုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ URL ti o wulo.', 'Da fatan a shigar da adireshin mai amfani.'),
(563, 'enter_valid_date', 'Please enter a valid date.', 'একটি ভ্যালিড তারিখ লিখুন দয়া করে।', 'Por favor introduzca una fecha valida.', 'ارجوك ادخل تاريخ صحيح.', 'कृपया एक मान्य तिथि प्रविष्ट करें।', 'براہ کرم ایک درست تاریخ درج کریں.', '请输入一个有效的日期。', '有効な日付を入力してください。', 'Por favor insira uma data válida.', 'Пожалуйста, введите правильную дату.', 'Veuillez entrer une date valide.', '유효한 날짜를 입력하십시오.', 'Bitte gib ein korrektes Datum an.', 'Per favore, inserisci una data valida.', 'โปรดป้อนวันที่ที่ถูกต้อง', 'Kérjük, adjon meg egy érvényes dátumot.', 'Vul alstublieft een geldige datum in.', 'Please enter validum diem.', 'Harap masukkan tanggal yang valid.', 'Lütfen geçerli bir tarih giriniz.', 'Παρακαλώ εισάγετε μία έγκυρη ημερομηνία.', 'لطفا یک تاریخ معتبر وارد کنید.', 'Sila masukkan tarikh yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే తేదీని నమోదు చేయండి.', 'செல்லுபடியாகும் தேதி உள்ளிடுக.', 'કૃપા કરી માન્ય તારીખ દાખલ કરો.', 'Proszę wprowadź poprawną datę.', 'Будь ласка, введіть дійсну дату.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਤਾਰੀਖ ਦਰਜ ਕਰੋ', 'Vă rugăm să introduceți o dată validă.', 'မှန်ကန်သောရက်စွဲတစ်ခုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ ọjọ ti o wulo.', 'Da fatan a shigar da kwanan wata mai aiki.'),
(564, 'enter_valid_number', 'Please enter a valid number.', 'দয়া করে একটি ভ্যালিড নম্বর লিখুন।', 'Por favor ingrese un número valido.', 'من فضلك أدخل رقما صالحا.', 'कृपया एक सही संख्या डालिये।', 'براہ مہربانی ایک درست نمبر درج کریں.', '请输入一个有效的号码。', '有効な数値を入力してください。', 'por favor insira um número válido.', 'Пожалуйста, введите корректное число.', 'Sil vous plait, entrez un nombre valide.', '올바른 번호를 입력하십시오.', 'Bitte geben Sie eine gültige Nummer ein.', 'Per favore, inserire un numero valido.', 'โปรดป้อนหมายเลขที่ถูกต้อง', 'Kérjük, adjon meg érvényes számot.', 'Voer alstublieft een geldig nummer in.', 'Please enter validum est numerus.', 'Masukkan nomor yang valid', 'Lütfen geçerli bir numara girin.', 'Παρακαλώ εισάγετε έναν έγκυρο αριθμό.', 'لطفا یک شماره تلفن معتبر وارد کنید.', 'Sila masukkan nombor yang sah.', 'దయచేసి చెల్లుబాటు అయ్యే సంఖ్యను నమోదు చేయండి.', 'சரியான எண்ணை உள்ளிடுக.', 'કૃપા કરી કોઈ માન્ય નંબર દાખલ કરો.', 'Proszę wprowadzić poprawny numer.', 'Введіть дійсний номер.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਪ੍ਰਮਾਣਿਕ ਸੰਖਿਆ ਦਰਜ ਕਰੋ.', 'Introduceți un număr valid.', 'ခိုင်လုံသောအရေအတွက်ကိုရိုက်ထည့်ပေးပါ။', 'Jowo tẹ nọmba nọmba kan.', 'Da fatan a shigar da lambar mai aiki.'),
(565, 'enter_only_digit', 'Please enter only digits.', 'অনুগ্রহ করে শুধুমাত্র সংখ্যা প্রবেশ করান।', 'Por favor ingrese solo dígitos.', 'الرجاء إدخال أرقام فقط.', 'कृपया केवल अंक दर्ज करें।', 'صرف ہندسوں درج کریں.', '请只输入数字。', '数字のみ入力して下さい。', 'Digite apenas dígitos.', 'Пожалуйста, вводите только цифры.', 'Merci de nentrer que des chiffres.', '숫자 만 입력하십시오.', 'Bitte gib nur Ziffern ein.', 'Per favore, inserisci solo cifre.', 'โปรดป้อนตัวเลขเท่านั้น', 'Kérem csak számjegyeket adjon meg.', 'Alleen cijfers invoeren a.u.b.', 'PDF nisi constet.', 'Harap masukkan angka saja.', 'Lütfen sadece rakam giriniz.', 'Παρακαλώ εισάγετε μόνο ψηφία.', 'لطفا فقط رقم را وارد کنید', 'Sila masukkan angka sahaja.', 'దయచేసి అంకెలు మాత్రమే నమోదు చేయండి.', 'இலக்கங்களை மட்டும் உள்ளிடுக.', 'કૃપા કરીને માત્ર અંકો દાખલ કરો', 'Wprowadź tylko cyfry.', 'Будь ласка, введіть лише цифри.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਰਫ ਅੰਕ ਭਰੋ.', 'Te rog introdu doar cifre.', 'သာဂဏန်းရိုက်ထည့်ပေးပါ။', 'Jọwọ tẹ awọn nọmba nikan sii.', 'Da fatan a shigar da lambobi kawai.'),
(566, 'enter_same_value_again', 'Please enter the same value again.', 'আবার একই ভ্যালু লিখুন দয়া করে।', 'Por favor, introduzca el mismo valor de nuevo.', 'من فظلك ادخل نفس القيمة مرة أخرى.', 'कृपया फिर से वही संख्या डालिये।', 'ایک بار پھر ایک ہی قیمت درج کریں.', '请再次填写同等数值。', 'もう一度同じ値を入力してください。', 'Por favor entre com o mesmo valor novamente.', 'Повторите одно и то же значение.', 'Entrez à nouveau la même valeur sil vous plait.', '다시 동일한 값을 입력하십시오.', 'Bitte geben Sie den gleichen Wert erneut ein.', 'Si prega di inserire di nuovo lo stesso valore.', 'โปรดป้อนค่าเดิมอีกครั้ง', 'Kérem, írja be ugyanazt az értéket újra.', 'Voer dezelfde waarde opnieuw in.', 'PDF simile est.', 'Harap masukkan nilai yang sama lagi.', 'Lütfen aynı değeri tekrar giriniz.', 'Εισαγάγετε ξανά την ίδια τιμή.', 'لطفا مجددا همان مقدار را وارد کنید.', 'Sila masukkan nilai yang sama sekali lagi.', 'దయచేసి మళ్ళీ అదే విలువను నమోదు చేయండి.', 'மறுபடியும் அதே மதிப்பை அழுத்தவும்.', 'કૃપા કરીને ફરીથી સમાન મૂલ્ય દાખલ કરો.', 'Wprowadź ponownie tę samą wartość.', 'Будь ласка, введіть те саме значення знову.', 'ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਉਹੀ ਮੁੱਲ ਦਰਜ ਕਰੋ.', 'Introduceți din nou aceeași valoare.', 'ထပ်တူညီတဲ့တန်ဖိုးကိုထည့်ပေးပါ။', 'Jowo tẹ iye kanna naa lẹẹkansi.', 'Da fatan a sake shigar da wannan darajar.'),
(567, 'pls_fix_this', 'Please fix this field.', 'এইটা ঠিক করুন।', 'Por favor arregla este campo.', 'الرجاء إصلاح هذا الحقل.', 'कृपया यह फ़ील्ड ठीक करें।', 'براہ مہربانی اس فیلڈ کو ٹھیک کریں.', '请修复这一块。', 'このフィールドを直してください。', 'Por favor, corrija este campo.', 'Исправьте это поле.', 'Veuillez corriger ce champ.', '이 항목을 수정하여주십시오.', 'Bitte repariere dieses Feld.', 'Si prega di correggere questo campo.', 'โปรดแก้ไขฟิลด์นี้', 'Kérlek, javítsd ki ezt a mezőt.', 'Corrigeer dit veld.', 'Placere figere ipsa cellula compleatur.', 'Perbaiki bidang ini', 'Bu alanı düzeltin lütfen.', 'Παρακαλώ διορθώστε αυτό το πεδίο.', 'لطفا این فیلد را اصلاح کنید', 'Sila betulkan medan ini.', 'దయచేసి ఈ ఫీల్డ్ను పరిష్కరించండి.', 'தயவுசெய்து இந்த களத்தை சரிசெய்யவும்.', 'કૃપા કરી આ ફીલ્ડને ઠીક કરો.', 'Proszę poprawić to pole.', 'Виправте це поле.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਖੇਤਰ ਨੂੰ ਠੀਕ ਕਰੋ.', 'Vă rugăm să remediați acest câmp.', 'ဒီလယ်ကို fix ပေးပါ။', 'Jọwọ ṣatunkọ aaye yii.', 'Da fatan a gyara wannan filin.'),
(613, 'permission_denied', 'You have no permission to access this page.', 'আপনি এই পৃষ্ঠা অ্যাক্সেস করার অনুমতি নেই।', 'No tienes permiso para acceder a esta página.', 'ليس لديك إذن للدخول إلى هذه الصفحة.', 'आपको इस पृष्ठ को एक्सेस करने की अनुमति नहीं है।', 'آپ کو اس صفحہ تک رسائی حاصل کرنے کی اجازت نہیں ہے.', '您无权访问此页面。', 'このページにアクセスする権限はありません。', 'Você não tem permissão para acessar esta página.', 'У вас нет разрешения на доступ к этой странице.', 'Vous nêtes pas autorisé à accéder à cette page.', '이 페이지에 액세스 할 수있는 권한이 없습니다.', 'Sie haben keine Berechtigung, auf diese Seite zuzugreifen.', 'Non hai il permesso di accedere a questa pagina.', 'คุณไม่มีสิทธิ์เข้าถึงหน้านี้', 'Nincs engedélye ennek az oldalnak az elérésére.', 'U hebt geen toestemming om deze pagina te openen.', 'Nullas tibi accessere hanc paginam permission.', 'Anda tidak memiliki izin untuk mengakses halaman ini.', 'Bu sayfaya erişmek için herhangi bir iznin yok.', 'Δεν έχετε καμία άδεια πρόσβασης σε αυτήν τη σελίδα.', 'شما اجازه دسترسی به این صفحه ندارید.', 'Anda tidak mempunyai kebenaran untuk mengakses halaman ini.', 'ఈ పేజీని ప్రాప్యత చేయడానికి మీకు అనుమతి లేదు.', 'இந்தப் பக்கத்தை அணுக உங்களுக்கு அனுமதி இல்லை.', 'આ પૃષ્ઠને ઍક્સેસ કરવાની તમારી પાસે કોઈ પરવાનગી નથી', 'Nie masz uprawnień dostępu do tej strony.', 'Ви не маєте дозволу на доступ до цієї сторінки.', 'ਤੁਹਾਨੂੰ ਇਸ ਪੇਜ ਨੂੰ ਐਕਸੈਸ ਕਰਨ ਦੀ ਕੋਈ ਅਨੁਮਤੀ ਨਹੀਂ ਹੈ.', 'Nu aveți permisiunea de a accesa această pagină.', 'သင်ဤစာမကျြနှာကိုဝင်ရောက်ဖို့မခွင့်ပြုချက်ရှိသည်။', 'O ko ni igbanilaaye lati wọle si oju-ewe yii.', 'Ba ku da izini don samun damar wannan shafin.'),
(614, 'invalid_transaction_pls_try_again', 'Invalid transaction please try again.', 'ইনভ্যালিড লেনদেন আবার চেষ্টা করুন।', 'Transacción inválida, inténtalo de nuevo.', 'المعاملة غير صالحة يرجى المحاولة مرة أخرى.', 'अमान्य लेनदेन कृपया फिर से प्रयास करें', 'غلط ٹرانزیکشن براہ کرم دوبارہ کوشش کریں.', '无效的交易请再试一次。', 'トランザクションが無効です。もう一度お試しください。', 'Transação inválida, tente novamente.', 'Недействительные транзакции повторите попытку.', 'Transaction non valide, veuillez réessayer.', '잘못된 거래입니다. 다시 시도하십시오.', 'Ungültige Transaktion. Bitte versuche es erneut.', 'Transazione non valida, riprova.', 'ธุรกรรมไม่ถูกต้องโปรดลองอีกครั้ง', 'Érvénytelen ügylet, próbáld újra.', 'Ongeldige transactie probeer het opnieuw.', 'Aliquam nulla re.', 'Transaksi tidak valid silahkan dicoba lagi.', 'Geçersiz işlem lütfen tekrar deneyin.', 'Μη έγκυρη συναλλαγή δοκιμάστε ξανά.', 'معامله نامعتبر لطفا دوباره امتحان کنید', 'Transaksi tidak sah sila cuba lagi.', 'చెల్లని లావాదేవీ దయచేసి మళ్ళీ ప్రయత్నించండి.', 'தவறான பரிவர்த்தனை மீண்டும் முயற்சிக்கவும்.', 'અમાન્ય વ્યવહાર ફરીથી પ્રયાસ કરો.', 'Nieprawidłowa transakcja, spróbuj ponownie.', 'Недійсна транзакція. Повторіть спробу.', 'ਗਲਤ ਟ੍ਰਾਂਜੈਕਸ਼ਨ ਫਿਰ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Tranzacție nevalidă încercați din nou.', 'မှားနေသောငွေပေးငွေယူထပ်ကြိုးစားကြည့်ပါ။', 'Iṣowo idaniloju ko tọ gbiyanju tun gbiyanju.', 'Kasuwanci mara inganci a sake gwadawa.'),
(615, 'payment_success', 'Payment has been successfully.', 'পেমেন্ট সফলভাবে হয়েছে।', 'El pago ha sido exitoso.', 'تم الدفع بنجاح.', 'भुगतान सफलतापूर्वक किया गया है', 'ادائیگی کامیاب ہوگئی ہے.', '付款已成功。', '支払いは正常に完了しました。', 'O pagamento foi feito com sucesso.', 'Оплата прошла успешно.', 'Le paiement a été effectué avec succès.', '지불이 완료되었습니다.', 'Die Zahlung wurde erfolgreich ausgeführt.', 'Il pagamento è andato a buon fine.', 'การชำระเงินสำเร็จแล้ว', 'A kifizetés sikeresen megtörtént.', 'De betaling is succesvol verlopen.', 'Solucionis fuerit feliciter.', 'Pembayaran sudah berhasil', 'Ödeme başarıyla yapıldı.', 'Η πληρωμή ολοκληρώθηκε με επιτυχία.', 'پرداخت با موفقیت انجام شده است', 'Pembayaran telah berjaya.', 'చెల్లింపు విజయవంతంగా ఉంది.', 'கட்டணம் வெற்றிகரமாக உள்ளது.', 'ચુકવણી સફળતાપૂર્વક કરવામાં આવી છે', 'Płatność została pomyślnie.', 'Оплата була успішною.', 'ਭੁਗਤਾਨ ਸਫਲਤਾਪੂਰਵਕ ਕੀਤਾ ਗਿਆ ਹੈ', 'Plata a fost efectuată cu succes.', 'ငွေပေးချေမှုရမည့်အောင်မြင်စွာဖြစ်ခဲ့သည်။', 'Isanwo ti wa ni ifijišẹ.', 'Biyan bashi ya samu nasarar.'),
(616, 'payment_failed', 'Payment failed. Please try again.', 'পেমেন্ট ব্যর্থ হয়েছে. অনুগ্রহপূর্বক আবার চেষ্টা করুন।', 'Pago fallido. Inténtalo de nuevo.', 'عملية الدفع فشلت. حاول مرة اخرى.', 'भुगतान असफल हुआ। कृपया पुन: प्रयास करें।', 'ادائیگی ناکام ہوگئی. دوبارہ کوشش کریں.', '支付失败。 请再试一次。', '支払いに失敗しました。 もう一度お試しください。', 'Pagamento falhou. Por favor, tente novamente.', 'Платеж не прошел. Пожалуйста, попробуйте еще раз.', 'Paiement échoué. Veuillez réessayer.', '결제 실패. 다시 시도하십시오.', 'Bezahlung fehlgeschlagen. Bitte versuche es erneut.', 'Pagamento fallito. Per favore riprova.', 'การชำระเงินล้มเหลว กรุณาลองอีกครั้ง.', 'Fizetés meghiúsult. Kérlek próbáld újra.', 'Betaling mislukt. Probeer het opnieuw.', 'Payment defecit. Quaero, iterum conare.', 'Pembayaran gagal. Silahkan coba lagi', 'Ödeme başarısız. Lütfen tekrar deneyin.', 'Η πληρωμή απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'پرداخت ناموفق. لطفا دوباره تلاش کنید.', 'Pembayaran gagal. Sila cuba lagi.', 'చెల్లింపు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.', 'கட்டணம் தோல்வியடைந்தது. தயவு செய்து மீண்டும் முயற்சிக்கவும்.', 'ચૂકવણી નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Płatność nie powiodła się. Proszę spróbuj ponownie.', 'Оплата не виконана. Будь ласка спробуйте ще раз.', 'ਭੁਗਤਾਨ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Plata esuata. Vă rugăm să încercați din nou.', 'ငွေပေးချေမှုရမည့်မအောင်မြင်ခဲ့ပါဘူး။ ထပ်ကြိုးစားပါ။', 'Isanwo ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'Baya ya biya. Da fatan a sake gwadawa.'),
(617, 'you_have_remain_character', 'You have remain character/ letter ', 'আপনার অক্ষর বাকি আছে।', 'Has quedado personaje / carta', 'لديك حرف / حرف', 'आप चरित्र / पत्र रह गए हैं', 'آپ کا کردار / خط باقی ہے', '你保持字符/字母', 'あなたは文字/文字のままです', 'Você permaneceu caráter / carta', 'У вас есть символ / письмо', 'Vous avez reste caractère / lettre', '문자 / 문자로 남았습니다.', 'Du hast Charakter / Brief behalten', 'Hai carattere / lettera rimasti', 'คุณยังมีตัวอักษร / ตัวอักษร', 'Ön továbbra is karakter / betű marad', 'Je bent karakter / letter gebleven', 'Vos autem manent ingenii / litterae', 'Anda tetap memiliki karakter / huruf', 'Karakter / mektup kalmışsın', 'Έχετε παραμείνει χαρακτήρα / γράμμα', 'شما شخصیت / نامه را باقی میگذارید', 'Anda mempunyai watak / huruf tetap', 'మీరు అక్షరం / అక్షరం', 'நீங்கள் எழுத்து / கடிதமாகவே இருக்க வேண்டும்', 'તમે અક્ષર / અક્ષર રહેલા છે', 'Pozostałeś postacią / literą', 'Ви залишитеся символом / листом', 'ਤੁਸੀਂ ਅੱਖਰ / ਪੱਤਰ ਰਹੇ ਹੋ', 'Tu rămâi caracter / scrisoare', 'သငျသညျဇာတ်ကောင် / အက္ခရာဆက်လက်တည်ရှိကြပါပြီ', 'O ti wa ni iwa / lẹta', 'Ka kasance hali / wasika'),
(619, 'privilege_not_setting', 'The Role Permission for this user not yet set.', 'এই ব্যবহারকারীর জন্য ভূমিকা অনুমতি এখনও সেট করা হয়নি।', 'El permiso de función para este usuario aún no se ha establecido.', 'لم يتم تعيين إذن الدور لهذا المستخدم بعد.', 'इस उपयोगकर्ता के लिए भूमिका अनुमति अभी तक सेट नहीं है', 'اس صارف کیلئے ابھی تک کردار کی اجازت نہیں ہے.', '此用户的角色权限尚未设置。', 'このユーザーのロール権限はまだ設定されていません。', 'A Permissão de Função para este usuário ainda não está configurado.', 'Разрешение роли для этого пользователя еще не установлено.', 'Lautorisation de rôle pour cet utilisateur nest pas encore définie.', '이 사용자에 대한 역할 권한이 아직 설정되지 않았습니다.', 'Die Rollenberechtigung für diesen Benutzer wurde noch nicht festgelegt.', 'Autorizzazione ruolo per questo utente non ancora impostato.', 'สิทธิ์การใช้งานบทบาทสำหรับผู้ใช้รายนี้ยังไม่ได้ตั้งค่า', 'A szerepkör engedélye erre a felhasználóra még nincs beállítva.', 'De rolmachtiging voor deze gebruiker is nog niet ingesteld.', 'De munere licentiam concedere quod nondum user set.', 'Izin Peran untuk pengguna ini belum ditetapkan.', 'Bu kullanıcı için Role Permission henüz ayarlanmadı.', 'Η άδεια ρόλου για αυτόν το χρήστη δεν έχει οριστεί ακόμα.', 'مجوز نقش برای این کاربر هنوز تعیین نشده است.', 'Kebenaran Peranan untuk pengguna ini belum ditetapkan.', 'ఈ వినియోగదారు కోసం రోల్ అనుమతి ఇంకా సెట్ చేయబడలేదు.', 'இந்த பயனருக்கான ரோல் அனுமதி இன்னும் அமைக்கப்படவில்லை.', 'આ વપરાશકર્તા માટે રોલ પરવાનગી હજુ સુધી સેટ નથી.', 'Uprawnienia roli dla tego użytkownika jeszcze nie zostały ustawione.', 'Рольовий дозвіл для цього користувача ще не встановлено.', 'ਇਸ ਉਪਭੋਗਤਾ ਲਈ ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ ਅਜੇ ਵੀ ਸੈਟ ਨਹੀਂ ਕੀਤੀ ਗਈ.', 'Permisiunea de rol pentru acest utilizator nu a fost încă setată.', 'သေးမသတ်မှတ်ဒီအသုံးပြုသူများအတွက်အခန်းက္ပခွင့်ပြုချက်။', 'Igbese Ilana fun olumulo yii ko sibẹsibẹ ṣeto.', 'Ƙungiyar izinin mai amfani ba tukuna an saita ba.'),
(620, 'add_syllabus_instruction', 'Please add academic year before create syllabus.', 'পাঠ্যসূচী তৈরি করার আগে অনুগ্রহপূর্বক  একাডেমিক বছর অ্যাড করুন।', 'Agregue el año académico antes de crear el plan de estudios.', 'يرجى إضافة العام الدراسي قبل إنشاء المنهج.', 'पाठ्यक्रम बनाने से पहले शैक्षणिक वर्ष जोड़ें।', 'نصاب کو تخلیق کرنے سے پہلے تعلیمی سال شامل کریں.', '请在创建教学大纲之前添加学年。', 'シラバスを作成する前に学年を追加してください。', 'Por favor, adicione ano acadêmico antes de criar programas.', 'Пожалуйста, добавьте учебный год до создания учебного плана.', 'Veuillez ajouter une année académique avant de créer un syllabus.', '교과를 만들기 전에 학년을 추가하십시오.', 'Bitte fügen Sie akademisches Jahr vor dem Erstellen des Lehrplans hinzu.', 'Per favore aggiungi lanno accademico prima di creare il programma.', 'กรุณาเพิ่มปีการศึกษาก่อนที่จะสร้างหลักสูตร', 'Kérjük, add meg az egyetemi évet a tanterv létrehozása előtt.', 'Voeg academiejaar toe voordat u een syllabus maakt.', 'Anno ante partum aliter digerere velit academic add.', 'Harap tambahkan tahun akademik sebelum membuat silabus.', 'Müfredat oluşturmadan önce lütfen akademik yıl ekleyin.', 'Παρακαλείσθε να προσθέσετε ακαδημαϊκό έτος πριν δημιουργήσετε το αναλυτικό πρόγραμμα.', 'لطفا سال تحصیلی را قبل از ایجاد برنامه درسی اضافه کنید.', 'Sila tambah tahun akademik sebelum membuat sukatan pelajaran.', 'దయచేసి సిలబస్ సృష్టించడానికి ముందు విద్యాసంవత్సరం జోడించండి.', 'பாடத்திட்டத்தை உருவாக்க முன் கல்வி ஆண்டு சேர்க்கவும்.', 'અભ્યાસક્રમ બનાવવા પહેલાં શૈક્ષણિક વર્ષ ઉમેરો.', 'Dodaj rok akademicki przed utworzeniem sylabusa.', 'Будь ласка, додайте навчальний рік, перш ніж створювати навчальний план.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਲੇਬਸ ਬਣਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਅਕਾਦਮਿਕ ਸਾਲ ਜੋੜੋ', 'Vă rugăm să adăugați un an universitar înainte de a crea programa.', 'သင်ရိုးညွှန်းတမ်းဖန်တီးမတိုင်မီပညာသင်နှစ် add ပေးပါ။', 'Jowo fi ọjọ-ẹkọ ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-', 'Da fatan za a kara shekara ta ilimi kafin ƙirƙirar salo.'),
(621, 'academic_year_setting', 'Please setting academic year.', 'একাডেমিক বছর সেটিং করুন।', 'Por favor, ajuste el año académico.', 'يرجى تحديد السنة الدراسية.', 'कृपया शैक्षणिक वर्ष सेट करना', 'برائے مہربانی تعلیمی سال قائم کریں.', '请设置学年。', '学年を設定してください。', 'Por favor, marque o ano lectivo.', 'Укажите учебный год.', 'Veuillez définir lannée académique.', '학년을 정하십시오.', 'Bitte legen Sie das akademische Jahr fest.', 'Si prega di fissare lanno accademico.', 'โปรดตั้งปีการศึกษา', 'Kérjük, állíts be a tanévre.', 'Gelieve het academiejaar in te stellen.', 'Academici ponere placuit.', 'Tolong atur tahun akademik.', 'Lütfen akademik yılı ayarlayın.', 'Παρακαλώ ορίστε ακαδημαϊκό έτος.', 'لطفا سال تحصیلی را تنظیم کنید.', 'Sila tentukan tahun akademik.', 'దయచేసి విద్యా సంవత్సరాన్ని ఏర్పాటు చేయండి.', 'கல்வி ஆண்டு அமைக்கவும்.', 'શૈક્ષણિક વર્ષ સેટ કરો.', 'Proszę ustawić rok akademicki.', 'Вкажіть навчальний рік.', 'ਕਿਰਪਾ ਕਰਕੇ ਅਕਾਦਮਿਕ ਸਾਲ ਸੈੱਟ ਕਰੋ.', 'Vă rugăm să setați anul universitar.', 'ပညာသင်နှစ် setting ပါ။', 'Jọwọ ṣe eto eto ẹkọ.', 'Don Allah a kafa shekara ta ilimi.'),
(622, 'add_routine_instruction', 'Must be good combination (between room, time, teacher, day & subject) for routine.', 'রুটিনের জন্য ভালো সমন্বয় (রুম, সময়, শিক্ষক, দিন এবং বিষয় মধ্যে) হতে হবে।', 'Debe ser una buena combinación (entre la habitación, el tiempo, el maestro, el día y el tema) para la rutina.', 'يجب أن تكون تركيبة جيدة (بين الغرفة والوقت والمعلم واليوم والموضوع) للروتين.', 'दिनचर्या के लिए अच्छे संयोजन (कमरे, समय, शिक्षक, दिन और विषय के बीच) होना चाहिए।', 'معمول کے لئے اچھا مجموعہ (کمرے، وقت، استاد، دن اور موضوع کے درمیان) ہونا ضروری ہے.', '必须是常规的良好组合（房间，时间，老师，日期和主题）。', 'ルーチンのためには、（部屋、時間、教師、日、テーマの間の）良い組み合わせでなければなりません。', 'Deve ser uma boa combinação (entre sala, tempo, professor, dia e assunto) para a rotina.', 'Должна быть хорошая комбинация (между комнатой, временем, учителем, днем и субъектом) для рутины.', 'Doit être une bonne combinaison (entre la pièce, lheure, lenseignant, le jour et le sujet) pour la routine.', '평소에는 (방, 시간, 선생님, 낮 과목 사이에) 좋은 조합이어야합니다.', 'Muss eine gute Kombination sein (zwischen Raum, Zeit, Lehrer, Tag und Thema) für die Routine.', 'Deve essere una buona combinazione (tra stanza, orario, insegnante, giorno e materia) per la routine.', 'ต้องเป็นชุดที่ดี (ระหว่างห้องเวลาครูวันและเรื่อง) เป็นประจำ', 'Jó kombinációnak kell lennie (helyiség, idő, tanár, nap és téma között) a rutinhoz.', 'Moet een goede combinatie zijn (tussen kamer, tijd, docent, dag en onderwerp) voor routine.', 'Bonum est combination (inter locus, tempus, magister, & re die), pro exercitatione.', 'Harus kombinasi yang baik (antara ruang, waktu, guru, hari & subjek) untuk rutinitas.', 'Rutin için iyi bir kombinasyon (oda, zaman, öğretmen, gün ve konu arasında) olmalı.', 'Πρέπει να είναι καλός συνδυασμός (μεταξύ δωματίου, χρόνου, καθηγητή, μέρα & θέμα) για ρουτίνα.', 'ترکیب مناسب (بین اتاق، زمان، معلم، روز و موضوع) باید به صورت منظم باشد.', 'Harus menjadi kombinasi yang baik (antara bilik, masa, guru, hari & mata pelajaran) untuk rutin.', 'రొటీన్ కోసం మంచి కలయిక (గది, సమయం, గురువు, రోజు & విషయం మధ్య) ఉండాలి.', 'வழக்கமான கலவையாக இருக்க வேண்டும் (அறைக்கு, நேரம், ஆசிரியர், நாள் & பொருள்).', 'નિત્યક્રમ માટે સારા સંયોજન (ખંડ, સમય, શિક્ષક, દિવસ અને વિષય વચ્ચે) હોવો જોઈએ.', 'Musi to być dobra kombinacja (między pokojem, czasem, nauczycielem, dniem i tematem) dla rutyny.', 'Повинно бути гарною комбінацією (між кімнатою, часом, вчителем, днем та предметом) для звичайної роботи.', 'ਰੁਟੀਨ ਲਈ ਵਧੀਆ ਮਿਸ਼ਰਨ ਹੋਣਾ (ਕਮਰੇ, ਸਮੇਂ, ਅਧਿਆਪਕ, ਦਿਨ ਅਤੇ ਵਿਸ਼ੇ ਵਿਚਕਾਰ).', 'Trebuie să fie o combinație bună (între cameră, timp, profesor, zi și subiect) pentru rutină.', 'လုပ်ရိုးလုပ်စဉ်အဘို့ (အခန်းတစ်ခန်းအကြား, အချိန်, ဆရာ, နေ့ & ဘာသာရပ်) ကောင်းသောပေါင်းစပ်ဖြစ်ရမည်။', 'Gbọdọ jẹ apapo ti o dara (laarin yara, akoko, olukọ, ọjọ & akori) fun iṣiro.', 'Dole ne ya kasance haɗin hade (tsakanin ɗaki, lokaci, malami, rana da batun) don na yau da kullum.'),
(623, 'exam_attendance_instruction', 'Please create exam schedule for this Exam, Class, Section & Subject.', 'এই পরীক্ষা, ক্লাস, সেকশন ও বিষয়ের জন্য পরীক্ষার সময়সূচী তৈরি করুন।', 'Por favor, cree un cronograma de exámenes para este examen, clase, sección y tema.', 'يرجى إنشاء جدول الامتحانات لهذا الامتحان، فئة، قسم والموضوع.', 'कृपया इस परीक्षा, कक्षा, धारा और विषय के लिए परीक्षा कार्यक्रम बनाएं।', 'برائے مہربانی اس امتحان، کلاس، سیکشن اور موضوع کیلئے امتحان شیڈول بنائیں.', '请为此考试，班级，科目和科目创建考试时间表。', 'この試験、クラス、セクション＆サブジェクトの試験スケジュールを作成してください。', 'Crie um cronograma de exame para este Exame, Classe, Seção e Assunto.', 'Создайте расписание экзаменов для этого экзамена, класса, раздела и темы.', 'Veuillez créer un horaire dexamen pour cet examen, classe, section et sujet.', '이 시험, 클래스, 섹션 및 제목에 대한 시험 일정을 작성하십시오.', 'Bitte erstellen Sie einen Prüfungsplan für diese Prüfung, Klasse, Abschnitt und Thema.', 'Si prega di creare un programma desame per questo esame, classe, sezione e argomento.', 'โปรดสร้างกำหนดการสอบสำหรับการสอบวิชา Class, Section & Subject', 'Kérjük, hozzon létre vizsgaütemezést ehhez a vizsgahoz, osztályhoz, szekcióhoz és tárgyhoz.', 'Maak een examenrooster voor dit examen, de cursus, sectie en onderwerp.', 'Placere creare nito schedule hoc IV: I classis, & Art subiectum.', 'Tolong buat jadwal ujian untuk Ujian, Kelas, Seksi & Subjek ini.', 'Lütfen bu Sınav, Ders, Bölüm ve Konunun sınav takvimini oluşturun.', 'Δημιουργήστε το πρόγραμμα εξετάσεων για αυτήν την εξέταση, κλάση, ενότητα & θέμα.', 'لطفا برنامه آزمون برای این آزمون، کلاس، بخش و موضوع ایجاد کنید.', 'Sila buat jadual peperiksaan untuk Peperiksaan, Kelas, Bahagian & Subjek ini.', 'ఈ పరీక్ష, తరగతి, విభాగం & విషయం కోసం పరీక్ష షెడ్యూల్ సృష్టించండి.', 'இந்தப் பரீட்சை, வகுப்பு, பிரிவு மற்றும் பாடநெறிக்கான பரீட்சை அட்டவணையை உருவாக்கவும்.', 'આ પરીક્ષા, વર્ગ, વિભાગ અને વિષય માટે પરીક્ષા શેડ્યૂલ બનાવો.', 'Utwórz harmonogram egzaminów dla tego egzaminu, klasy, sekcji i przedmiotu.', 'Будь ласка, створіть графік іспитів для цього іспиту, класу, розділу та теми.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ, ਭਾਗ ਅਤੇ ਵਿਸ਼ੇ ਦੇ ਲਈ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਬਣਾਓ.', 'Vă rugăm să creați un program de examen pentru acest examen, clasă, secțiune și subiect.', ', အတန်းအစား, ပုဒ်မ & အကြောင်းအရာကဒီစာမေးပွဲအဘို့အစာမေးပွဲအချိန်ဇယားကိုဖန်တီးပေးပါ။', 'Jowo ṣẹda iṣeto ayẹwo fun Akọwo yii, Kilasi, Abala & Koko.', 'Don Allah a halicci jimillar jarrabawar wannan jarrabawar, Class, Sashe & Sashe.'),
(624, 'exam_mark_instruction', 'Please ensure Exam Schedule and Exam Attendance before Exam Mark Entry.', 'পরীক্ষা মার্ক এণ্ট্রি আগে পরীক্ষার সময়সূচী এবং পরীক্ষা উপস্থিতি নিশ্চিত করুন।', 'Por favor asegúrese de Horario de Examen y Asistencia al Examen antes de la Entrada de la Marca de Examen.', 'يرجى التأكد من جدول الامتحانات وحضور الامتحان قبل دخول علامة الامتحان.', 'परीक्षा मार्क एंट्री से पहले परीक्षा अनुसूची और परीक्षा उपस्थिति सुनिश्चित करें।', 'امتحان مارک انٹری سے پہلے امتحان شیڈول اور امتحان حاضری کو یقینی بنائیں.', '入学考试前，请确保考试时间表和考试出勤。', '試験のマーク入力の前に試験スケジュールと試験出席を確認してください。', 'Por favor, assegure o horário de exame e a participação no exame antes da entrada na marca do exame.', 'Пожалуйста, убедитесь, что экзаменационные экзамены и экзамен посещаемости до сдачи экзамена Марк.', 'Veuillez vous assurer de respecter le calendrier des examens et la participation aux examens avant lentrée à lexamen.', '시험 마크 입력 전에 시험 일정과 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass der Prüfungsplan und die Anwesenheit der Prüfung vor der Eintragung der Prüfungsnote eingehalten werden.', 'Si prega di assicurare la pianificazione degli esami e la frequenza degli esami prima delliscrizione.', 'โปรดตรวจสอบตารางการสอบและการเข้าร่วมการสอบก่อนการสอบของ Mark Entry', 'Kérjük, győződjön meg arról, hogy az Exam Mark Entry és Exam Attendance Exam Mark Entry előtt van.', 'Zorg ervoor dat het examenrooster en het examen aanwezig zijn vóór de inzending van het examen.', 'Test Morbi rhoncus velit, ut et IV ante Attendance Mark Test Entry.', 'Harap pastikan Jadwal Ujian dan Ujian Kehadiran sebelum Entri Tanda Ujian.', 'Sınav işareti girmeden önce lütfen Sınav Takvimi ve Sınav Ekibinden emin olunuz.', 'Βεβαιωθείτε ότι έχετε προγραμματίσει τις εξετάσεις και την εξέταση πριν την εγγραφή.', 'لطفا قبل از امتحان علامت گذاری به عنوان خوانده شده تست برنامه آزمون و حضور در آزمون را تضمین کنید.', 'Sila pastikan Jadual Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Peperiksaan.', 'పరీక్షా పరీక్ష షెడ్యూల్ మరియు పరీక్షా హాజరు నిర్ధారించడానికి దయచేసి మార్క్ ఎంట్రీ పరీక్ష.', 'பரீட்சைக்கு முன் தேர்வுப் பரீட்சை மற்றும் பரீட்சை பெறுதல் ஆகியவற்றை உறுதிப்படுத்துக.', 'પરીક્ષા માર્ક એન્ટ્રી પહેલાં પરીક્ષાની સૂચિ અને પરીક્ષા હાજરી નક્કી કરો.', 'Należy upewnić się, że harmonogram egzaminów i udział w egzaminach poprzedzą wejście do egzaminu.', 'Будь ласка, вкажіть час іспиту і відвідуваність іспиту перед початком вступки до іспиту.', 'ਐਜੂਕੇਸ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că ați verificat programul de examen și examenul înainte de înscrierea în examen.', 'စာမေးပွဲမာကု Entry မတိုင်မီစာမေးပွဲအချိန်ဇယားနှင့်စာမေးပွဲတက်ရောက်သေချာပါစေ။', 'Jọwọ ṣe idaniloju Akoko Idaduro ati Akokọ Ibẹwo ṣaaju titẹ Akọsilẹ Akọsilẹ.', 'Da fatan a tabbatar da Gwargwadon Binciken da Jarraba Tambaya kafin jarrabawar Mark Mark.'),
(625, 'mark_sheet_instruction', 'Please ensure Exam Attendance and Exam Mark to find Mark Sheet.', 'মার্ক শিট খুঁজে পেতে পরীক্ষার এ্যাটেনডেন্স এবং পরীক্ষা মার্ক নিশ্চিত করুন।', 'Asegúrate de que la Asistencia al examen y la Marca del examen encuentren la Hoja de calificaciones.', 'يرجى التأكد من امتحان الحضور وامتحان علامة لإيجاد علامة ورقة.', 'मार्क शीट को खोजने के लिए परीक्षा उपस्थिति और परीक्षा अंक को सुनिश्चित करें', 'براہ کرم مارک شیٹ کو تلاش کرنے کے لئے امتحان حاضری اور امتحان مارک کو یقینی بنائیں.', '请确保考试出席和考试标志找到标记表。', 'マークシートを見つけるには、試験出席と試験マークを確認してください。', 'Certifique-se da presença do exame e da marca do exame para encontrar a folha de marca.', 'Пожалуйста, убедитесь, что экзамен посещаемости и экзамен Марк, чтобы найти Mark Sheet.', 'Veuillez vous assurer de la présence à lexamen et de la note dexamen pour trouver la feuille de notes.', '마크 시트를 찾으려면 시험 출석과 시험 마크를 확인하십시오.', 'Bitte stellen Sie sicher, dass die Prüfungsteilnahme und die Prüfungsnote Mark-Sheet finden.', 'Si prega di assicurare la partecipazione agli esami e il marchio dellesame per trovare il foglio dei voti.', 'โปรดตรวจสอบว่ามีผู้เข้าสอบและเครื่องหมายสอบเพื่อหา Mark Sheet', 'Kérjük, hogy az Exam Attendance és a Exam Mark-ot találja meg a Mark Sheet-et.', 'Zorg ervoor dat u een examenformulier en een examencertificaat aantreft om het beoordelingsformulier te vinden.', 'Placere operam ad inveniendum Mark Mark Chapter OMNIBUS June IV Sheet.', 'Harap pastikan Ujian Kehadiran dan Tanda Ujian untuk menemukan Lembar Tandai.', 'Marka Belgesini bulmak için lütfen Sınav Devamını ve Sınav İşaretini sağlayın.', 'Βεβαιωθείτε ότι έχετε παρακολουθήσει την εξέταση και εξετάστε το για να βρείτε το φύλλο σημείωσης.', 'لطفا از بازدید کننده امتحان و علامت آزمون اطمینان حاصل کنید تا علامت ورق را پیدا کنید.', 'Sila pastikan Kehadiran Peperiksaan dan Ujian Peperiksaan untuk mencari Mark Sheet.', 'మార్క్ షీట్ను కనుగొనడానికి పరీక్షా హాజరు మరియు పరీక్షా మార్క్ ను నిర్ధారించుకోండి.', 'மார்க் தாள் கண்டுபிடிக்க தேர்ச்சி மற்றும் தேர்வு மார்க் உறுதி செய்யவும்.', 'માર્ક શીટ શોધવા માટે પરીક્ષાની હાજરી અને પરીક્ષા માર્ક કરો.', 'Prosimy o upewnienie się, że obecność na egzaminie i znak egzaminu jest zaznaczona.', 'Будь ласка, впевніться, що відвідувачі іспитів і екзаменаційні квитки знайдете листівки.', 'ਕਿਰਪਾ ਕਰਕੇ ਮਾਰਕ ਸ਼ੀਟ ਨੂੰ ਲੱਭਣ ਲਈ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਅਤੇ ਪ੍ਰੀਖਿਆ ਪੱਤਰ ਨੂੰ ਯਕੀਨੀ ਬਣਾਓ.', 'Asigurați-vă că ați participat la examen și la examen pentru a găsi o coală Mark.', 'မာကုစာရွက်ရှာတွေ့မှစာမေးပွဲတက်ရောက်ခြင်းနှင့်စာမေးပွဲမာကုသေချာပါစေ။', 'Jowo rii daju pe idaduro Ijadii ati Ṣayẹwo Marku lati wa Mark Sheet.', 'Da fatan a tabbatar da Hannun Binciken da Takaddun Mark don neman Mark Sheet.'),
(626, 'exam_result_instruction', 'Please ensure Exam Mark and Exam Attendance before Final Mark Entry.', 'চূড়ান্ত মার্ক এণ্ট্রি আগে পরীক্ষা মার্ক এবং পরীক্ষার উপস্থিতি নিশ্চিত করুন।', 'Por favor, asegúrese de la marca de examen y la asistencia al examen antes de la entrada de la marca final.', 'يرجى التأكد من امتحان علامة وامتحان الحضور قبل علامة النهائي الدخول.', 'अंतिम मार्क प्रविष्टि से पहले परीक्षा मार्क और परीक्षा उपस्थिति सुनिश्चित करें', 'فائن مارک انٹری سے پہلے امتحان کے نشان اور امتحان کی حاضری یقینی بنائیں.', '请在最终标记输入前确保考试标志和考试出勤。', '最終マーク記入前に試験マークと試験出席を確認してください。', 'Certifique-se de Exame da marca e da presença do exame antes da entrada na marca final.', 'Пожалуйста, убедитесь, что экзамен и участие в экзамене перед окончательной записью.', 'Sil vous plaît assurez-vous dexamen et de présence à lexamen avant lentrée de la note finale.', '최종 점수 입력 전에 시험 점수와 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass Sie die Prüfung und die Teilnahme an der Prüfung vor der endgültigen Noteneingabe erhalten.', 'Si prega di assicurare la certificazione degli esami e la partecipazione agli esami prima della registrazione del voto finale.', 'โปรดตรวจสอบให้แน่ใจว่ามีผู้เข้าร่วมการสอบและการสอบเข้าร่วมการแข่งขันก่อนเข้าร่วมการแข่งขัน Final Mark Entry', 'Kérjük, győződjön meg az Exam Mark és Exam Attendance előtt a végső belépési bejegyzést.', 'Zorg ervoor dat het examen en het examen aanwezig zijn vóór de definitieve inschrijving.', 'Mark quaeso ensure nito et Finalis nito apud Attendance Mark Entry.', 'Harap pastikan Tanda Ujian dan Ujian Kehadiran sebelum Entri Mark Akhir.', 'Nihai İşaret Girişinden önce lütfen Sınav İmzası ve Sınav Ekibinden emin olun.', 'Παρακαλείσθε να βεβαιωθείτε για την εξέταση και την εξέταση πριν την τελική εγγραφή.', 'لطفا قبل از ورود به نشریه نهایی علامت گذاری آزمون و حضور آزمون را تضمین کنید.', 'Sila pastikan Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Akhir.', 'ఫైనల్ మార్క్ ఎంట్రీకి ముందు పరీక్ష మార్క్ మరియు పరీక్షా హాజరును నిర్ధారించుకోండి.', 'இறுதியாண்டு மார்க் நுழைவுமுறையில் தேர்வுப் பரீட்சை மற்றும் தேர்வுப் பணிகளை உறுதி செய்யுங்கள்.', 'અંતિમ માર્ક એન્ટ્રી પહેલાં પરીક્ષા માર્ક અને પરીક્ષાની હાજરી નિશ્ચિત કરો.', 'Prosimy o upewnienie się, że Egzamin i Egzaminacja Egzaminu odbywają się przed Ostatecznym Wpisem.', 'Ознайомтеся з учасниками іспитів та учасниками іспитів перед початком вступного запису.', 'ਕਿਰਪਾ ਕਰਕੇ ਅੰਤਮ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că examinați examenul și examenul înainte de înscrierea în marcajul final.', 'နောက်ဆုံးမာကု Entry မတိုင်မီစာမေးပွဲမာကုနဲ့စာမေးပွဲတက်ရောက်သေချာပါစေ။', 'Jọwọ ṣe idaniloju Atilẹkọ Akọsilẹ ati isinwo Iwoye ṣaaju Ṣiṣe Akọsilẹ Titẹ.', 'Da fatan a tabbatar da Takaddun Mark da Takaddama na Aiki kafin shigarwa na karshe.'),
(627, 'promotion_instruction_1', 'Please choose carefully Running Session & Promote Session.', 'দয়া করে সাবধানে চলমান সেশন  এবং প্রমোট সেশন নির্বাচন করুন।', 'Elija cuidadosamente Ejecutar sesión y promover sesión.', 'الرجاء اختيار بعناية تشغيل جلسة وتعزيز الدورة.', 'कृपया सावधानी से चल रहे सत्र और सत्र को बढ़ावा दें चुनें।', 'براہ کرم رننگ سیشن اور سیشن کو فروغ دینے کے لۓ منتخب کریں.', '请谨慎选择运行会议和推广会议。', '慎重に実行セッションとプロモートセッションを選択してください。', 'Por favor, escolha cuidadosamente a Sessão de Sessão e Promoção.', 'Пожалуйста, тщательно выберите «Запуск сеанса» и «Содействие».', 'Sil vous plaît choisir soigneusement session en cours et promouvoir la session.', '신중하게 세션 및 프로모션 세션을 선택하십시오.', 'Bitte wählen Sie sorgfältig ', 'Si prega di scegliere attentamente Running Session & Promoting Session.', 'เลือกเซสชันและเซสชันส่งเสริมการขายอย่างรอบคอบ', 'Kérjük, gondosan válassza a Futtatás és a kampány előmozdítását.', 'Kies zorgvuldig Sessie uitvoeren en sessie promoten.', 'Placere eligere diligenter & Thronus Sessio Promovere Sessio.', 'Harap pilih Session & Promote Session dengan hati-hati.', 'Lütfen dikkatle Çalışmayı Seçin ve Oturumu Tanıtın.', 'Επιλέξτε προσεκτικά την εκτέλεση της συνόδου και την προώθηση της συνόδου.', 'لطفا با دقت در حال اجرا Session & Promote Session را انتخاب کنید.', 'Sila pilih Sesi Berjalan & Sesi Promosi dengan hati-hati.', 'దయచేసి సెషన్ రన్నింగ్ & ప్రచారం సెషన్ను జాగ్రత్తగా ఎంచుకోండి.', 'அமர்வு இயக்குதல் மற்றும் அமர்வு ஊக்குவிக்க கவனமாகத் தேர்ந்தெடுங்கள்.', 'કૃપા કરીને કાળજીપૂર્વક ચાલી રહેલ સત્ર અને પ્રમોશન સત્ર પસંદ કરો.', 'Proszę wybrać ostrożnie Running Session & Promote Session.', 'Будь ласка, обережно вибирайте запуск сеансу та просуньте сеанс.', 'ਕਿਰਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ ਨੂੰ ਚੁਣੋ ਅਤੇ ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ.', 'Alegeți cu atenție Rularea sesiunii și promovarea sesiunii.', 'တွေ့ဆုံဆွေးနွေးပွဲ & တွေ့ဆုံဆွေးနွေးပွဲမြှင့်တင်ကို run ဂရုတစိုက်ရွေးချယ်ပါ။', 'Jowo yan Ṣeto Nilẹ Ikẹkọ ati Igbimọ Ikẹkọ.', 'Da fatan za a zaɓa a zahiri a Gudun Zama da Tsarin Zama.'),
(628, 'promotion_instruction_2', 'Please choose carefully Current Class & Promote to Class.', 'দয়া করে সাবধানে বর্তমান ক্লাস  এবং প্রমোট ক্লাস নির্বাচন করুন।', 'Por favor, elija con cuidado la Clase actual y Promocione a la clase.', 'يرجى اختيار بعناية الفئة الحالية والترقية إلى فئة.', 'कृपया ध्यान दें वर्तमान कक्षा और श्रेणी में प्रचार करें।', 'براہ کرم احتیاط سے موجودہ کلاس کا انتخاب کریں اور کلاس میں فروغ دیں.', '请仔细选择当前课程并提升到课堂。', '慎重に選択してください現在のクラスとクラスへの昇格', 'Por favor, escolha cuidadosamente a classe atual e promova a classe.', 'Пожалуйста, выберите внимательно Текущий класс и продвигайте класс.', 'Sil vous plaît choisir soigneusement classe actuelle et promouvoir à la classe.', '주의 깊게 선택하십시오 Current Class & Class to Promote.', 'Bitte wählen Sie sorgfältig Aktuelle Klasse und Promote to Class.', 'Si prega di scegliere attentamente Classe corrente e promozione in classe.', 'โปรดเลือก Class ปัจจุบันและโปรโมต Class', 'Kérem, gondosan válassza az Aktuális osztály és az előadás osztályba.', 'Gelieve zorgvuldig te kiezen Huidige klasse en promotie naar klas.', 'Placere eligere diligenter Current Class Promovere in Ps.', 'Silakan pilih kelas yang sekarang dengan hati-hati & promosikan ke kelas.', 'Lütfen Geçerli Sınıfı Seçin ve Sınıfı Tanıtın.', 'Επιλέξτε προσεκτικά την τρέχουσα κλάση και την προώθηση στην κλάση.', 'لطفا دقت کلاس فعلی را ارتقا دهید و کلاس را ارتقا دهید.', 'Sila pilih Kelas Semasa & Menggalakkan Kelas dengan berhati-hati.', 'దయచేసి క్లాస్కు ప్రస్తుత క్లాస్ & ప్రమోట్ను జాగ్రత్తగా ఎంచుకోండి.', 'தற்போதைய வகுப்பு மற்றும் வகுப்புக்கு ஊக்குவிக்கவும்.', 'કૃપા કરી કાળજીપૂર્વક વર્તમાન વર્ગ પસંદ કરો અને વર્ગમાં પ્રમોટ કરો.', 'Wybierz ostrożnie Obecna klasa i promuj do klasy.', 'Будь ласка, обережно вибирайте поточний клас та рекламуйте до класу.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਵਰਤਮਾਨ ਕਲਾਸ ਅਤੇ ਪ੍ਰੋਮੋਟ ਤੋਂ ਕਲਾਸ ਚੁਣੋ.', 'Alegeți cu atenție Clasa curentă și promovați în clasă.', 'လက်ရှိအတန်းအစားဂရုတစိုက်ကိုရှေးခယျြ & Class ကိုမှမြှင့်တင်ပါ။', 'Jọwọ yan abojuto Kilasi lọwọlọwọ & Igbelaruge si Kilasi.', 'Da fatan za a zaɓa a hankali A halin yanzu Class & Yi Nasara zuwa Class.'),
(629, 'promotion_instruction_3', 'Please complete the process of Exam, Exam Schedule, Exam Attendance, Exam Mark & Final Result.', 'অনুগ্রহপূর্বক পরীক্ষার প্রক্রিয়া, পরীক্ষার সময়সূচী, পরীক্ষার উপস্থিতি, পরীক্ষার চিহ্ন এবং চূড়ান্ত ফলাফল সম্পন্ন করুন।', 'Complete el proceso de Examen, Programa de examen, Asistencia de examen, Marca de examen y Resultado final.', 'يرجى إكمال عملية الامتحان، جدول الامتحانات، امتحان الحضور، علامة الامتحان والنتيجة النهائية.', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم امتحان، امتحان شیڈول، امتحان حاضری، امتحان مارک اور حتمی نتائج کا عمل مکمل کریں.', '请完成考试，考试时间表，考试考勤，考试标志和最终结果的过程。', '試験、試験のスケジュール、試験の出席、試験のマークと最終結果のプロセスを完了してください。', 'Por favor, complete o processo de exame, horário de exames, atendimento ao exame, marca de exame e resultado final.', 'Завершите процесс экзамена, экзаменационного экзамена, экзаменационного экзамена, экзамена и итогового результата.', 'Veuillez compléter le processus dexamen, le programme dexamen, la présence aux examens, la note dexamen et le résultat final.', '시험, 시험 일정, 시험 참석, 시험 점수 및 최종 결과의 과정을 완료하십시오.', 'Bitte führen Sie den Prozess der Prüfung, des Prüfungsplans, der Prüfungsbesuch, der Prüfungsnote und des Abschlussergebnisses durch.', 'Si prega di completare il processo di esame, pianificazione dellesame, partecipazione agli esami, voto dellesame e risultato finale.', 'กรุณากรอกแบบฟอร์มการสอบ, กำหนดการสอบ, เข้าร่วมการสอบ, เครื่องหมายการสอบและผลการทดสอบขั้นสุดท้าย', 'Kérjük, töltse ki a vizsga, az érettségi vizsga, az érettségi, a vizsgajegy és a végeredmény folyamatát.', 'Voltooi het proces van examen, examenroosters, examen, examen en eindresultaat.', 'Placere perficere processus MACROCYTOSIS, Exam Schedule, OMNIBUS June IV: Mark Chapter & exitu rerum.', 'Selesaikan proses Ujian, Jadwal Ujian, Ujian Kehadiran, Tanda Ujian & Hasil Akhir.', 'Lütfen Sınav, Sınav Takvimi, Sınav Katılımı, Sınav Sonucu ve Final Sonuç sürecini tamamlayın.', 'Παρακαλούμε συμπληρώστε τη διαδικασία της εξέτασης, του προγράμματος εξετάσεων, της συμμετοχής στις εξετάσεις, του εξεταστικού σημειώματος και του τελικού αποτελέσματος.', 'لطفا روند امتحان، برنامه امتحان، حضور امتحان، معاینه آزمون و نتیجه نهایی را تکمیل کنید.', 'Sila lengkapkan proses Peperiksaan, Jadual Peperiksaan, Kehadiran Peperiksaan, Peperiksaan Ujian & Keputusan Akhir.', 'పరీక్షా ప్రక్రియ పూర్తి చేయండి, పరీక్షా షెడ్యూల్, పరీక్షా హాజరు, పరీక్ష మార్క్ & ఫైనల్ ఫలితం.', 'பரீட்சை செயல்முறை, தேர்வு அட்டவணை, தேர்வு கலந்துரையாடல், தேர்வு மார்க் & இறுதி முடிவு முடிக்க.', 'પરીક્ષા, પરીક્ષા શેડ્યૂલ, પરીક્ષા હાજરી, પરીક્ષા માર્ક અને અંતિમ પરિણામની પ્રક્રિયા પૂર્ણ કરો.', 'Prosimy o wypełnienie procesu egzaminu, egzaminu, egzaminu, egzaminu i końcowego wyniku.', 'Будь ласка, заповніть процедуру іспиту, графіку іспиту, відвідуваність іспиту, оцінку іспиту та остаточний результат.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ, ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ, ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ, ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਅੰਤਿਮ ਨਤੀਜੇ ਦੀ ਪ੍ਰਕਿਰਿਆ ਪੂਰੀ ਕਰੋ.', 'Completați procesul de examen, program de examen, examen, examen și rezultat final.', 'စာမေးပွဲ, စာမေးပွဲအချိန်ဇယား, စာမေးပွဲတက်ရောက်, စာမေးပွဲ, Mark & Final ရလဒ်များ၏လုပ်ငန်းစဉ်ကိုအပြီးသတ်ပေးပါ။', 'Jọwọ pari awọn ilana ti kẹhìn, Akokọwo Itanwo, Aṣọwo Iwoye, Aṣayẹwo ayẹwo ati Ipari ikẹhin.', 'Don Allah a kammala aikin nazarin, Nazarin Jirgin, Jirgin Tambaya, Alamar Duba & Sakamako na ƙarshe.');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(630, 'promotion_instruction_4', 'Please double check all Students Total Marks, Obtain Mark, Average Grade Point & Next Class Roll No.', 'দয়া করে সকল শিক্ষার্থীর মোট নম্বর, প্রাপ্ত নম্বর, গড় গ্রেড পয়েন্ট এবং পরবর্তী শ্রেণী রোল নম্বর চেক করুন।', 'Verifique por favor todas las marcas totales de estudiantes, obtenga la marca, el promedio de calificaciones y la siguiente clase.', 'يرجى التحقق مرة أخرى من جميع الطلاب مجموع العلامات، والحصول على علامة، متوسط درجة نقطة و التالي فئة لفة رقم', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم تمام طالب علموں کو کل مارکس چیک کریں، مارک حاصل کریں، اوسط گریڈ پوائنٹ اور اگلے کلاس رول نمبر', '请仔细检查所有学生的总分，获得分数，平均分和下一班的卷号', '生徒の合計標章、標章の取得、平均等級点および次のクラスのロール番号を再度確認してください', 'Por favor, verifique novamente todas as Marcas Total de Estudantes, Obter Marca, Ponto Médico e Próxima Classe Roll No.', 'Пожалуйста, дважды проверьте все учащиеся, общее количество баллов, получите оценку, среднюю оценку и следующий класс.', 'Veuillez vérifier toutes les notes totales des élèves, obtenir la note, la note moyenne et la prochaine classe', '모든 학생 수 표, 점수 획득, 평균 성적 점수 및 다음 등급 롤 수를 다시 확인하십시오.', 'Bitte überprüfen Sie alle Schüler-Gesamtpunkte, erhalten Sie Mark, Durchschnittspunkt und nächste Klasse Roll-Nr.', 'Si prega di ricontrollare tutti gli indicatori Total Marks, Obtain Mark, Average Grade Point e Next Class.', 'โปรดตรวจสอบเครื่องหมายคะแนนนักศึกษาทั้งหมด, ดูเครื่องหมาย, คะแนนเฉลี่ยและลำดับถัดไปเลขที่ม้วน', 'Kérem, ellenőrizze az összes diákok teljes pontszámát, szerezze meg a pontszámot, átlag pontot és a következő osztályú tekercset.', 'Controleer alsjeblieft alle studenten totaalcijfers, cijfer behalen, gemiddelde cijferpunt en volgende klasserol nr.', 'Velit gemino reprehendo omnes alumni Romanum marcas, Mark Alleluia, & mediocris gradus punctum Next Class Roll No.', 'Harap periksa kembali semua Siswa Total Marks, Dapatkan Mark, Rata-rata Nilai Kelas & Gulungan Kelas Berikutnya No.', 'Lütfen tüm Öğrencilerin Toplam İşaretlerini, İşaretle, Ortalama Puan Puanı ve Sonraki Sınıf Rulo Numarasını kontrol edin.', 'Παρακαλώ ελέγξτε διπλά όλους τους μαθητές Σύνολο σημείων, αποκτήστε το σήμα, το μέσο βαθμό βαθμού και το επόμενο κύκλο', 'لطفا تمام دانشجویان کل عالمت ها، علامت گذاری، رتبه متوسط و رول بعدی کلاس را بررسی کنید', 'Sila semak semula semua Markah Jumlah Pelajar, Dapatkan Tanda, Nilai Gred Purata & No.', 'దయచేసి మొత్తం స్టూడెంట్స్ మొత్తం మార్క్స్, మార్క్, సగటు గ్రేడ్ పాయింట్ & తదుపరి క్లాస్ రోల్ నెంబరుని తనిఖీ చేయండి.', 'மாணவர் மொத்த மார்க்ஸ், மார்க், சராசரி தர புள்ளி மற்றும் அடுத்த வகுப்பு ரோல் எண் ஆகியவற்றைப் பெறுக.', 'કૃપા કરીને બધાં વિદ્યાર્થીના કુલ ગુણની તપાસ કરો, માર્ક, સરેરાશ ગ્રેડ પોઇન્ટ અને આગળનો વર્ગ રોલ નંબર મેળવો.', 'Sprawdź dokładnie wszystkie oceny uczniów, zdobądź ocenę, średnią ocenę i numer następnej klasy', 'Будь ласка, подвійно перевірте всі студенти загальних знаків, отримайте знак, середню оцінку точки та наступний клас Roll No.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਸਾਰੇ ਵਿਦਿਆਰਥੀਆਂ ਦੇ ਕੁੱਲ ਅੰਕ ਪਤਾ ਕਰੋ, ਪ੍ਰਾਪਤ ਕਰੋ ਮਾਰਕ, ਔਸਤ ਗਰੇਡ ਪੁਆਇੰਟ ਅਤੇ ਅਗਲਾ ਕਲਾਸ ਰੋਲ ਨੰਬਰ', 'Verificați dublu toți studenții Mark Total, Obțineți marca, Punctul mediu și următoarea clasă Roll Nr.', 'အမှတ်ပျမ်းမျှအဆင့်ပွိုင့် & Next ကိုအတန်းအစား Roll, မာကုရယူပါအပေါင်းတို့, ကျောင်းသားများစုစုပေါင်း Marks စစ်ဆေးနှစ်ဆ ကျေးဇူးပြု.', 'Jọwọ ṣe ayẹwo lẹẹmeji gbogbo Awọn akẹkọ Awọn ami ni gbogbo, Gba Samisi, Oṣuwọn Ipele Apapọ & Eerun Kọọkan Ibẹkọ No.', 'Don Allah sau biyu duba duk daliban Ƙidaya Ƙididdiga Alamomi, Sami Mark, Matsakaicin Matsayi Bayyana & Kayan Kayan Kira.'),
(631, 'promotion_instruction_5', 'All things are 100% correct Then Promote Students to Next Class.', 'সবকিছুর 100% সঠিক তারপর শিক্ষার্থীদের পরবর্তী শ্রেণীতে উন্নীত করুন।', 'Todas las cosas son 100% correctas. Luego, promueva a los estudiantes a la siguiente clase.', 'جميع الأشياء صحيحة 100٪ ثم تعزيز الطلاب إلى الدرجة التالية.', 'सभी चीजें 100% सही हैं, फिर छात्रों को अगली कक्षा में बढ़ावा देना।', 'تمام چیزیں 100٪ درست ہیں، پھر طلباء کو اگلا کلاس میں فروغ دیں.', '所有的事情都是100％正确的，然后促进学生下一课。', 'すべてのものが100％正しいです。次に、学生を次のクラスに昇格させます。', 'Todas as coisas estão 100% corretas. Em seguida, promova alunos para a próxima classe.', 'Все вещи на 100% правильны. Затем продвигайте студентов в следующий класс.', 'Toutes les choses sont 100% correctes Puis promouvoir les étudiants à la prochaine classe.', '모든 것은 100 % 정확합니다. 그런 다음 학생들을 다음 학급으로 승급하십시오.', 'Alle Dinge sind zu 100% korrekt. Dann fördern Sie die Schüler zur nächsten Klasse.', 'Tutte le cose sono corrette al 100%, quindi promuovi gli studenti alla prossima lezione.', 'ทุกอย่างถูกต้อง 100% แล้วโปรโมตนักเรียนให้เข้าชั้นเรียนถัดไป', 'Minden dolog 100% -ban helyes, majd elősegíti a diákokat a következő osztályba.', 'Alle dingen zijn 100% correct. Promoot vervolgens studenten naar de volgende klas.', 'Et bene omnia sunt, C% Next Promovere studentibus ad generalia Ps.', 'Semua hal 100% benar Lalu Promosikan Siswa ke Kelas Selanjutnya.', 'Her şey% 100 doğrudur Sonra Öğrencileri Bir Sonraki Sınıfta Tanıtın.', 'Όλα τα πράγματα είναι 100% σωστά Στη συνέχεια προωθήστε τους μαθητές στην επόμενη τάξη.', 'همه چیز 100٪ درست است سپس دانش آموزان را به کلاس بعدی ارتقا دهید.', 'Semua perkara adalah 100% betul Kemudian Menggalakkan Pelajar ke Kelas Seterusnya.', 'అన్ని విషయాలు 100% సరైనవి, తరువాత స్టూడెంట్స్ స్టూడెంట్స్ టు క్లాస్ టు క్లాస్.', 'எல்லா விஷயங்களும் 100% சரியானவை, பின்னர் மாணவர்கள் அடுத்த வகுப்புக்கு ஊக்குவிக்கின்றன.', 'બધી વસ્તુઓ 100% સાચી છે પછી વિદ્યાર્થીઓને આગામી વર્ગમાં પ્રમોટ કરો.', 'Wszystkie rzeczy są w 100% poprawne Następnie promuj uczniów do następnej klasy.', 'Всі речі правильні на 100%. Потім просувайте студентів до наступного класу.', 'ਸਾਰੀਆਂ ਚੀਜ਼ਾਂ 100% ਠੀਕ ਹਨ. ਫਿਰ ਵਿਦਿਆਰਥੀਆਂ ਨੂੰ ਅਗਲੀ ਕਲਾਸ ਵਿਚ ਉਤਸ਼ਾਹਿਤ ਕਰੋ.', 'Toate lucrurile sunt 100% corecte Apoi promovează elevii în clasa următoare.', 'ခပ်သိမ်းသောအရာတို့ကိုထိုအခါ Next ကိုအတန်းအစားမှကျောင်းသားများမြှင့်တင် 100% မှန်ကန်ဖြစ်ကြသည်။', 'Gbogbo ohun ni o wa 100% atunṣe Lẹhinna Ṣẹda Awọn Ile-iwe si Kilasi Oju.', 'Dukkanin abubuwa 100% daidai Saan nan kuma ƙaddara ɗaliban zuwa Kashi na gaba.'),
(632, 'average_grade_point', 'GPA', 'জিপিএ', 'GPA', 'المعدل التراكمي', 'जीपीए', 'جی پی اے', '等级点平均值', '平均等級点', 'gpa', 'оценка', 'gpa', '학점', 'gpa', 'gpa', 'เกรดเฉลี่ย', 'gpa', 'gpa', 'gpa', 'gpa', 'not ortalamasını', 'gpa', 'درجه امتیاز', 'gpa', 'గ్రేడ్ పాయింట్', 'தர புள்ளி', 'જીપા', 'gpa', 'ГПа', 'ਜੀਪੀਏ', 'grad punct', 'တန်းအမှတ်', 'gpa', 'gpa'),
(633, 'please_select_a_route', 'Please select a Route.', 'একটি রুট নির্বাচন করুন।', 'Seleccione una ruta.', 'الرجاء تحديد مسار.', 'कृपया एक रूट चुनें', 'براہ راست راستہ منتخب کریں.', '请选择路线。', 'ルートを選択してください。', 'Selecione uma Rota.', 'Выберите маршрут.', 'Veuillez sélectionner un itinéraire.', '경로를 선택하십시오.', 'Bitte wählen Sie eine Route.', 'Si prega di selezionare una rotta.', 'โปรดเลือกเส้นทาง', 'Kérjük, válasszon ki egy útvonalat.', 'Selecteer alstublieft een route.', 'Placere eligere Iter itineris.', 'Silakan pilih Rute.', 'Lütfen bir Güzergah seçin.', 'Επιλέξτε μια διαδρομή.', 'لطفا یک مسیر را انتخاب کنید', 'Sila pilih Laluan.', 'దయచేసి ఒక మార్గం ఎంచుకోండి.', 'தயவுசெய்து ஒரு பாதை தேர்ந்தெடுக்கவும்.', 'કૃપા કરીને એક રસ્તો પસંદ કરો', 'Wybierz trasę.', 'Будь ласка, виберіть маршрут.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਰੂਟ ਚੁਣੋ.', 'Selectați o rută.', 'တစ်လမ်းကြောင်းရွေးချယ်ပါ။', 'Jọwọ yan Itọsọna kan.', 'Da fatan a zaɓi hanyar.'),
(634, 'return_success', 'Book return successfully', 'বই সফলভাবে ফেরত হয়েছে।', 'Libro devuelto con éxito', 'عودة الكتاب بنجاح', 'बुक सफलतापूर्वक वापस', 'کتاب کامیابی سے واپسی', '预订成功', '書籍の返品に成功', 'Livro de retorno com sucesso', 'Успешное возвращение книги', 'Le retour du livre a réussi', '도서 반환 성공', 'Buchen Sie erfolgreich zurück', 'Prenota con successo', 'หนังสือคืนสำเร็จแล้ว', 'A könyv sikeres visszaadása', 'Boek teruggave succesvol', 'Revertetur libro prospere', 'Pesan berhasil kembali', 'Kitap iadesi başarıyla gerçekleştirildi', 'Επαναφορά βιβλίου με επιτυχία', 'بازگشت کتاب با موفقیت', 'Pulangan buku berjaya', 'పుస్తకం తిరిగి విజయవంతంగా', 'புத்தகம் வெற்றிகரமாக திரும்பியது', 'ચોપડે સફળતાપૂર્વક વળતર', 'Zwrot książki powodzeniem', 'Книга повертається успішно', 'ਕਿਤਾਬ ਸਫਲਤਾਪੂਰਵਕ ਵਾਪਸ ਆਉਂਦੀ ਹੈ', 'Revenirea la carte a reușit', 'စာအုပ်အောင်မြင်စွာပြန်လာ', 'Iwe pada ni ifijišẹ', 'Book dawo da nasara'),
(635, 'due_amount', 'Due Amount', 'বাকি টাকা', 'Cantidad debida', 'مبلغ مستحق', 'देय राशि', 'باقی رقم', '到期金额', '金額', 'Valor devedor', 'Надлежащей суммы', 'Montant dû', '만기 금액', 'Fälliger Betrag', 'Importo dovuto', 'จำนวนเงินที่ครบกำหนด', 'Teljes összeg', 'Te betalen bedrag', 'ob Aliquam', 'Jumlah kematian', 'Ödenecek meblağ', 'Οφειλόμενο ποσό', 'مقدار قابل توجه', 'Jumlah terhutang', 'మొత్తం పరిమాణం', 'நிலுவை தொகை', 'નિયત રકમ', 'Kwota należna', 'Належна сума', 'ਕਮਾਈ ਰਕਮ', 'Suma datorata', 'ကြောင့်ငွေပမာဏ', 'Fun iye', 'Saboda Adadin'),
(636, 'user_active_status', 'Your account is not active. Please contact with administrator.', 'আপনার অ্যাকাউন্ট সক্রিয় নয়। প্রশাসকের সঙ্গে যোগাযোগ করুন দয়া করে।', 'Su cuenta no está activa. Por favor, póngase en contacto con el administrador.', 'حسابك غير فعال. يرجى الاتصال بالمشرف.', 'आपका खाता सक्रिय नहीं है। कृपया व्यवस्थापक से संपर्क करें', 'آپ کا اکاؤنٹ فعال نہیں ہے. برائے مہربانی منتظم کے ساتھ رابطہ کریں.', '您的帐户不活跃。 请与管理员联系。', 'あなたのアカウントはアクティブではありません。 管理者に連絡してください。', 'Sua conta não está ativa. Entre em contato com o administrador.', 'Ваша учетная запись неактивна. Пожалуйста, свяжитесь с администратором.', 'Votre compte nest pas actif. Sil vous plaît contacter avec ladministrateur.', '귀하의 계정이 활성화되어 있지 않습니다. 관리자에게 문의하십시오.', 'Dein Konto ist nicht aktiv. Bitte kontaktieren Sie den Administrator.', 'Il tuo account non è attivo. Si prega di contattare con lamministratore.', 'บัญชีของคุณไม่ทำงาน โปรดติดต่อผู้ดูแลระบบ', 'Fiókod nem aktív. Kérjük, lépjen kapcsolatba a rendszergazdával.', 'Uw account is niet actief. Neem contact op met de beheerder.', 'Ratio tua est activae. Placere contactus administrator.', 'Akunmu tidak aktif. Silahkan kontak dengan administrator.', 'Hesabınız aktif değil. Lütfen yönetici ile iletişime geçin.', 'Ο λογαριασμός σας δεν είναι ενεργός. Επικοινωνήστε με τον διαχειριστή.', 'حساب شما فعال نیست لطفا با مدیر تماس بگیرید', 'Akaun anda tidak aktif. Sila hubungi dengan pentadbir.', 'మీ ఖాతా చురుకుగా లేదు. దయచేసి నిర్వాహకుడితో సంప్రదించండి.', 'உங்கள் கணக்கு செயலில் இல்லை. நிர்வாகியுடன் தொடர்பு கொள்ளவும்.', 'તમારું એકાઉન્ટ સક્રિય નથી. સંચાલક સાથે સંપર્ક કરો.', 'Twoje konto nie jest aktywne. Skontaktuj się z administratorem.', 'Ваш обліковий запис не активний. Будь ласка, звяжіться з адміністратором.', 'ਤੁਹਾਡਾ ਖਾਤਾ ਕਿਰਿਆਸ਼ੀਲ ਨਹੀਂ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਬੰਧਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contul dvs. nu este activ. Contactați administratorul.', 'သင့်အကောင့်တက်ကြွမဟုတ်ပါဘူး။ စီမံခန့်ခွဲသူနှင့်အတူကိုဆက်သွယ်ပါ။', 'Akoto rẹ ko ṣiṣẹ. Jọwọ kan si pẹlu alakoso.', 'Asusunku ba aiki ba ne. Da fatan a tuntuɓi mai gudanarwa.'),
(637, 'certificate', 'Certificate', 'সার্টিফিকেট', 'Certificado', 'شهادة', 'प्रमाणपत्र', 'سرٹیفیکیٹ', '证书', '証明書', 'Certificado', 'сертификат', 'Certificat', '증명서', 'Zertifikat', 'Certificato', 'ใบรับรอง', 'Bizonyítvány', 'Certificaat', 'libellum', 'Sertifikat', 'sertifika', 'Πιστοποιητικό', 'گواهی', 'Sijil', 'సర్టిఫికెట్', 'சான்றிதழ்', 'પ્રમાણપત્ર', 'Certyfikat', 'Сертифікат', 'ਸਰਟੀਫਿਕੇਟ', 'Certificat', 'လက်မှတ်', 'Ijẹrisi', 'Certificate'),
(638, 'generate', 'Generate', 'জেনারেট', 'Generar', 'توفير', 'उत्पन्न', 'پیدا', '生成', '生成する', 'Gerar', 'генерировать', 'produire', '일으키다', 'Generieren', 'creare', 'ผลิต', 'generál', 'voortbrengen', 'generate', 'Menghasilkan', 'üretmek', 'Παράγω', 'تولید می کنند', 'Jana', 'రూపొందించండి', 'உருவாக்குதல்', 'પેદા', 'Generować', 'Генерувати', 'ਬਣਾਉ', 'Genera', 'ဖွစျပှါးစေ', 'Ṣe ina', 'Samar da'),
(639, 'manage_certificate_type', 'Manage Certificate Type', 'সার্টিফিকেট প্রকার পরিচালনা করুন', 'Administrar tipo de certificado', 'إدارة نوع الشهادة', 'प्रमाणपत्र प्रकार प्रबंधित करें', 'سرٹیفکیٹ کی قسم کا انتظام کریں', '管理证书类型', '証明書タイプの管理', 'Gerenciar tipo de certificado', 'Управление типом сертификата', 'Gérer le type de certificat', '인증서 유형 관리', 'Verwalten Sie den Zertifikatstyp', 'Gestisci tipo di certificato', 'จัดการประเภทใบรับรอง', 'Tanúsítványtípus kezelése', 'Beheer het certificaattype', 'Quisque Curo Type', 'Kelola Jenis Sertifikat', 'Sertifika Türünü yönetin', 'Διαχείριση τύπου πιστοποιητικού', 'مدیریت نوع گواهی', 'Urus Jenis Sijil', 'సర్టిఫికెట్ రకం నిర్వహించండి', 'சான்றிதழ் வகை நிர்வகி', 'પ્રમાણપત્રનો પ્રકાર મેનેજ કરો', 'Zarządzaj typem certyfikatu', 'Управління типом сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul certificatului', 'လက်မှတ်အမျိုးအစားကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Ijẹrisi Iru', 'Sarrafa Takaddun shaida'),
(642, 'main_certificate_text', 'Certificate Text', 'সার্টিফিকেট বিষয়বস্তু', 'Certificado de texto', 'نص الشهادة', 'प्रमाणपत्र पाठ', 'سرٹیفکیٹ متن', '证书文本', '証明書のテキスト', 'Texto do Certificado', 'Текст сертификата', 'Texte du certificat', '인증서 텍스트', 'Zertifikatstext', 'Testo del certificato', 'ข้อความรับรอง', 'Tanúsítványszöveg', 'Certificaattekst', 'libellum Text', 'Teks Sertifikat', 'Sertifika Metni', 'Κείμενο πιστοποιητικού', 'متن گواهی', 'Teks Sijil', 'సర్టిఫికెట్ టెక్స్ట్', 'சான்றிதழ் உரை', 'પ્રમાણપત્ર ટેક્સ્ટ', 'Tekst certyfikatu', 'Текст сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਟੈਕਸਟ', 'Textul certificatului', 'လက်မှတ်စာသား', 'Iwe ijẹrisi', 'Takaddun shaida'),
(643, 'footer_left', 'Footer Left Text', 'ফুটার বাম টেক্সট', 'Texto de pie de página a la izquierda', 'تذييل النص الأيسر', 'पाद लेख वाम पाठ', 'فوٹر بائیں متن', '页脚左边的文字', 'フッター左のテキスト', 'Rodapé do texto à esquerda', 'Нижний левый текст', 'Pied gauche Texte', '꼬리말 왼쪽 텍스트', 'Fußzeile linken Text', 'Testo a piè di pagina a sinistra', 'ข้อความท้ายกระดาษท้าย', 'Footer Left Text', 'Voettekst Linkertekst', 'Reliquit Footer Text', 'Footer Left Text', 'Altbilgi Sol Metin', 'Υποσέλιδο αριστερό κείμενο', 'پاورقی متن چپ', 'Teks Kiri Kaki', 'ఫుటరు ఎడమ టెక్స్ట్', 'அடிக்குறிப்பு இடது உரை', 'ફૂટર ડાબે ટેક્સ્ટ', 'Footer Left Text', 'Нижній колонтитул ліворуч', 'ਪਦਲੇਖ ਖੱਬੇ ਪਾਠ', 'Subtitrarea textului din subsol', 'footer လက်ဝဲစာသား', 'Onkọ Left Ẹsẹ', 'Rubutun Hagu na Hagu'),
(644, 'footer_middle', 'Footer Middle Text', 'ফুটার মধ্যম টেক্সট', 'Texto intermedio del pie de página', 'تذييل الصفحة الوسطى النص', 'पाद लेख मध्य पाठ', 'فوٹر مشرق وسطی', '页脚中间文本', 'フッター中間テキスト', 'Texto do rodapé', 'Нижний текст нижнего колонтитула', 'Pied Moyen Texte', '꼬리말 중간 텍스트', 'Fußzeile mittlerer Text', 'Footer Middle Text', 'ข้อความระดับกลางของท้ายกระดาษ', 'Lábra középső szöveg', 'Voettekst Middelste tekst', 'Medio Footer Text', 'Footer Middle Text', 'Altbilgi Orta Metin', 'Υποσέλιδο Μέσο κείμενο', 'Footer Middle Text', 'Teks Tengah Footer', 'ఫుటర్ మధ్య టెక్స్ట్', 'அடிக்குறிப்பு நடு உரை', 'ફૂટર મધ્ય લખાણ', 'Stopka środkowy tekst', 'Нижній колонтитул середній текст', 'ਫੁੱਟਰ ਮੱਧ ਪਾਠ', 'Subtitrarea textului de mijloc', 'footer အလယျပိုငျးစာသား', 'Ẹkọ Agbegbe Aarin', 'Rubutun Tsakiyar Tsakiya'),
(645, 'footer_right', 'Footer Right Text', 'ফুটার ডান টেক্সট', 'Texto a la derecha del pie de página', 'تذييل النص الأيمن', 'पाद लेख सही टेक्स्ट', 'فوٹر صحیح متن', '页脚正确的文本', 'フッタ右のテキスト', 'Texto à direita do rodapé', 'Нижний текст нижнего колонтитула', 'Pied droit Texte', '꼬리말 오른쪽 텍스트', 'Fußzeile rechten Text', 'Piè di pagina a destra', 'ข้อความชิดขวา', 'Lábfej jobb szöveg', 'Voettekst juiste tekst', 'Ius Footer Text', 'Footer Right Text', 'Altbilgi Sağ Metin', 'Υποσημείωση κειμένου υποσέλιδου', 'متن سمت راست پاورقی', 'Teks Kanan Footer', 'ఫుటర్ రైట్ టెక్స్ట్', 'அடிக்குறிப்பு வலது உரை', 'ફૂટર જમણો ટેક્સ્ટ', 'Stopka Prawy tekst', 'Нижній колонтитул праворуч', 'ਪਦਲੇਖ ਸੱਜੇ ਪਾਠ', 'Footer dreapta text', 'footer ညာစာသား', 'Oro Ọtun Ẹka', 'Rubutattun Kalmomin Tsaida'),
(646, 'background', 'Background', 'ব্যাকগ্রাউন্ড', 'Fondo', 'خلفية', 'पृष्ठभूमि', 'پس منظر', '背景', 'バックグラウンド', 'fundo', 'Задний план', 'Contexte', '배경', 'Hintergrund', 'sfondo', 'พื้นหลัง', 'Háttér', 'Achtergrond', 'Maecenas vitae', 'Latar Belakang', 'Arka fon', 'Ιστορικό', 'زمینه', 'Latar Belakang', 'నేపథ్య', 'பின்னணி', 'પૃષ્ઠભૂમિ', 'tło', 'Передумови', 'ਪਿਛੋਕੜ', 'fundal', 'နောက်ခံသမိုင်း', 'Atilẹhin', 'Bayani'),
(647, 'manage_certificate', 'Manage Certificate', 'সার্টিফিকেট পরিচালনা করুন', 'Administrar Certificado', 'إدارة الشهادة', 'प्रमाण पत्र प्रबंधित करें', 'سرٹیفکیٹ کا نظم کریں', '管理证书', '証明書を管理する', 'Gerenciar certificado', 'Управление сертификатом', 'Gérer le certificat', '인증서 관리', 'Zertifikat verwalten', 'Gestisci certificato', 'จัดการใบรับรอง', 'Tanúsítvány kezelése', 'Beheer het certificaat', 'Quisque curo', 'Kelola Sertifikat', 'Sertifikayı Yönet', 'Διαχείριση του πιστοποιητικού', 'مدیریت گواهی', 'Urus Sijil', 'సర్టిఫికెట్ని నిర్వహించండి', 'சான்றிதழை நிர்வகி', 'પ્રમાણપત્રનું સંચાલન કરો', 'Zarządzaj certyfikatem', 'Управління сертифікатом', 'ਸਰਟੀਫਿਕੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați certificatul', 'လက်မှတ်ကိုစီမံခန့်ခွဲ', 'Ṣakoso Ijẹrisi', 'Sarrafa Takaddun shaida'),
(648, 'manage_gallery', 'Manage Gallery', 'গ্যালারি পরিচালনা করুন', 'Administrar Galería', 'إدارة المعرض', 'गैलरी प्रबंधित करें', ' گیلری کا انتظام کریں', '管理图库', 'ギャラリーを管理する', 'Gerenciar galeria', 'Управление галереей', 'Gérer la galerie', '갤러리 관리', 'Galerie verwalten', 'Gestisci Galleria', 'จัดการแกลเลอรี', 'Galéria kezelése', 'Galerij beheren', 'curo Gallery', 'Kelola Galeri', 'Galeriyi yönet', 'Διαχείριση της Γκαλερί', 'مدیریت گالری', 'Urus Galeri', 'గ్యాలరీని నిర్వహించండి', 'தொகுப்பு நிர்வகி', 'ગેલેરી મેનેજ કરો', 'Zarządzaj galerią', 'Управління галереєю', 'ਗੈਲਰੀ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați galeria', 'ပြခန်းများကိုစီမံကွပ်ကဲ', 'Ṣakoso Awọn Aworan', 'Sarrafa hotuna'),
(649, 'gallery', 'Gallery', 'গ্যালারি', 'Galería', 'صالة عرض', 'गेलरी', 'نگارخانہ', '画廊', 'ギャラリー', 'Galeria', 'Галерея', 'Galerie', '갱도', 'Galerie', 'Galleria', 'เฉลียง', 'Képtár', 'Galerij', 'gallery', 'Galeri', 'galeri', 'Εκθεσιακός χώρος', 'آلبوم عکس', 'Galeri', 'గ్యాలరీ', 'கேலரி', 'ગેલેરી', 'Galeria', 'Галерея', 'ਗੈਲਰੀ', 'Galerie', 'ပြခန်း', 'Awọn ohun ọgbìn', 'Gallery'),
(650, 'is_view_on_web', 'Is View on Web?', 'ওয়েব দেখুন কি?', '¿Ver en la web?', 'هو عرض على شبكة الإنترنت؟', 'वेब पर देखें क्या है?', 'کیا ویب پر نظر ہے؟', '在网上查看？', 'Web上での表示ですか？', 'Ver na Web?', 'Просмотр в Интернете?', 'Est-ce que View on Web?', '웹에서보기입니까?', 'Ist im Web zu sehen?', 'La vista è sul Web?', 'ดูบนเว็บหรือไม่?', 'Megtekintés a weben?', 'Is View on Web?', 'View in Web est?', 'Apakah Lihat di Web?', 'Webde Görüntüleme mi?', 'Είναι η προβολή στο Web;', 'آیا نمایش در وب است؟', 'Adakah Lihat di Web?', 'వెబ్లో వీక్షించాలా?', 'இணையத்தில் பார்க்கிறதா?', 'વેબ પર જુઓ છો?', 'Czy widok w sieci?', 'Чи є перегляд в Інтернеті?', 'ਕੀ ਵੈਬ ਤੇ ਨਜ਼ਰ ਹੈ?', 'Vizualizați pe Web?', 'ကြည့်ရန်က်ဘ်ပေါ်လား?', 'Wo ni oju-iwe ayelujara?', 'Shin View a Yanar?'),
(651, 'cover_image', 'Cover Image', 'কভার চিত্র', 'Imagen de portada', 'صورة الغلاف', 'कवर छवि', 'کور تصویر', '封面图片', '表紙画像', 'Imagem de capa', 'Изображение обложки', 'Image de couverture', '표지 이미지', 'Titelbild', 'Immagine di copertina', 'ภาพปก', 'Borítókép', 'Omslagfoto', 'No Cover Image', 'Gambar sampul', 'Kapak resmi', 'Εικόνα εξωφύλλου', 'تصویر روی جلد', 'Cover Image', 'చిత్రం కవర్', 'படத்தை மறை', 'કવર છબી', 'Okładka', 'Обкладинка зображення', 'ਕਵਰ ਚਿੱਤਰ', 'Imagine de copertă', 'အဖုံးပုံရိပ်', 'Aworan Ideri', 'Rufin Hotuna'),
(652, 'media_gallery', 'Media Gallery', 'মিডিয়া গ্যালারী', 'Galería media', 'معرض الوسائط', 'मीडिया गैलरी', 'میڈیا گیلری', '媒体库', 'メディアギャラリー', 'Galeria de mídia', 'Медиа-галерея', 'Galerie des médias', '미디어 갤러리', 'Medien Gallerie', 'Galleria multimediale', 'Media Gallery', 'Média Galéria', 'media galerij', 'Gallery', 'Galeri media', 'Medya Galerisi', 'Έκθεση μέσων', 'گالری رسانه', 'Galeri Media', 'మీడియా గ్యాలరీ', 'மீடியா தொகுப்பு', 'મીડિયા ગેલેરી', 'Galeria multimediów', 'Медіа галерея', 'ਮੀਡੀਆ ਗੈਲਰੀ', 'Galerie media', 'မီဒီယာပြခန်း', 'Media Gallery', 'Media Gallery'),
(653, 'manage_gallery_image', 'Manage Gallery Image', 'গ্যালারি চিত্র পরিচালনা করুন', 'Administrar imagen de la galería', 'إدارة صورة المعرض', 'गैलरी छवि प्रबंधित करें', 'گالری کی تصویر کا انتظام', '管理图库图像', 'ギャラリー画像を管理する', 'Gerenciar a imagem da galeria', 'Управление изображением галереи', 'Gérer la galerie', '갤러리 이미지 관리', 'Galeriebild verwalten', 'Gestisci limmagine della galleria', 'จัดการภาพแกลลอรี่', 'Galéria kép kezelése', 'Galerijafbeelding beheren', 'Curo Image Gallery', 'Kelola Gambar Galeri', 'Galeri Resmi Yönet', 'Διαχείριση της εικόνας της γκαλερί', 'مدیریت تصویر گالری', 'Urus Imej Galeri', 'గ్యాలరీ చిత్రాన్ని నిర్వహించండి', 'தொகுப்பு பட நிர்வகி', 'ગેલેરી છબી મેનેજ કરો', 'Zarządzaj obrazem galerii', 'Керувати зображенням галереї', 'ਗੈਲਰੀ ਚਿੱਤਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați imaginea galeriei', 'စီမံခန့်ခွဲပြခန်းပုံရိပ်', 'Ṣakoso awọn Aworan Aworan', 'Sarrafa Hotuna Hotuna'),
(654, 'caption', 'Caption', 'ক্যাপশন', 'Subtítulo', 'شرح', 'शीर्षक', 'کیپشن', '标题', 'キャプション', 'Rubrica', 'титр', 'Légende', '표제', 'Bildbeschriftung', 'Didascalia', 'คำบรรยายภาพ', 'Felirat', 'Onderschrift', 'caption', 'Caption', 'altyazı', 'Λεζάντα', 'عنوان', 'Keterangan', 'శీర్షిక', 'தலைப்பு', 'કૅપ્શન', 'Podpis', 'Підпис', 'ਸੁਰਖੀ', 'Legendă', 'caption', 'Caption', 'Caption'),
(655, 'frontend', 'Frontend', 'ফ্রন্টেন্ড', 'Interfaz', 'نهاية المقدمة', 'फ़्रंट एंड', 'فرنٹ اینڈ', '前端', 'フロントエンド', 'A parte dianteira', 'Внешний интерфейс', 'Lextrémité avant', '프론트 엔드', 'Vorderes Ende', 'Fine frontale', 'ส่วนหน้า', 'frontend', 'Voorkant', 'Frontend', 'Paling depan', 'Başlangıç aşaması', 'Φρανκ', 'ظاهر', 'Frontend', 'ఫ్రంటెండ్', 'முன்நிலை', 'અગ્રભાગ', 'Frontend', 'Інтерфейс', 'ਅਗਰਾਂਤ', 'În față', 'ရှေ့ဆုံးကို', 'Software ti o pese atọkun si eto miiran', 'Gabatarwa'),
(656, 'manage_frontend', 'Manage Frontend', 'ফ্রন্টেন্ড পরিচালনা করুন', 'Administrar frontend', 'إدارة الواجهة الأمامية', 'अग्रभाग प्रबंधित करें', 'فرنٹ اینڈ کا انتظام کریں', '管理前端', 'フロントエンドの管理', 'Gerenciar front-end', 'Управление Frontend', 'Gérer le frontend', '프론트 엔드 관리', 'Frontend verwalten', 'Gestisci il frontend', 'จัดการ Frontend', 'A Frontend kezelése', 'Frontend beheren', 'curo Frontend', 'Kelola Frontend', 'Ön Uçu Yönet', 'Διαχειριστείτε το Frontend', 'مدیریت ظاهر', 'Uruskan Frontend', 'ఫ్రంటెండ్ని నిర్వహించండి', 'Frontend நிர்வகி', 'અગ્રભાગ મેનેજ કરો', 'Zarządzaj frontendem', 'Управління інтерфейсом', 'ਫਰੰਟਐਂਡ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Frontend', 'Frontend စီမံခန့်ခွဲရန်', 'Ṣakoso awọn Iwaju', 'Sarrafa Gyara'),
(657, 'manage_frontend_page', 'Manage Frontend Page', 'ফ্রন্টেন্ড পৃষ্ঠা পরিচালনা করুন', 'Administrar la página frontend', 'إدارة صفحة الواجهة الأمامية', 'फ्रंटएण्ड पेज प्रबंधित करें', 'فرنٹ اینڈ پیج کا انتظام کریں', '管理前端页面', 'フロントエンドの管理ページ', 'Gerenciar página front-end', 'Управление страницей Frontend', 'Gérer la page frontend', '프론트 엔드 페이지 관리', 'Frontend-Seite verwalten', 'Gestisci la pagina di frontend', 'จัดการหน้าส่วนหน้า', 'A Frontend oldal kezelése', 'Frontend-pagina beheren', 'Curo Frontend Page', 'Kelola Frontend Page', 'Ön Uç Sayfasını Yönet', 'Διαχείριση Σελίδας Frontend', 'مدیریت صفحه ظاهری', 'Urus Halaman Frontend', 'ఫ్రంటెండ్ పేజీని నిర్వహించండి', 'Frontend பக்கத்தை நிர்வகிக்கவும்', 'અગ્ર પેજમાં મેનેજ કરો', 'Zarządzaj stroną frontendową', 'Керування сторінкою інтерфейсу', 'ਫਰੰਟਐਂਡ ਪੰਨਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați pagina Frontend', 'Frontend စာမျက်နှာကိုစီမံခန့်ခွဲ', 'Ṣakoso awọn Iwaju oju-iwe', 'Sarrafa Shafin Farko'),
(658, 'school_fax', 'Institute Fax', 'প্রতিষ্ঠান ফ্যাক্স', 'Fax escolar', 'فاكس المدرسة', 'स्कूल फ़ैक्स', 'اسکول فیکس', '学校传真', '学校のファックス', 'Fax escolar', 'Школьный Факс', 'Fax de lécole', '학교 팩스', 'Schulfax', 'Fax della scuola', 'แฟกซ์โรงเรียน', 'Iskolai fax', 'Schoolfax', 'Fax School', 'Faks Sekolah', 'Okul faksı', 'Σχολικό φαξ', 'مدرسه فکس', 'Faks Sekolah', 'స్కూల్ ఫ్యాక్స్', 'பள்ளி தொலைநகல்', 'શાળા ફેક્સ', 'Faks szkolny', 'Шкільний факс', 'ਸਕੂਲ ਫੈਕਸ', 'Scoala de fax', 'ကျောင်းစာအုပ်ဖက်စ်', 'Fax Ile-iwe', 'Fax Fax'),
(659, 'school_geocode', 'Institute Location Code', 'প্রতিষ্ঠানঅবস্থান কোড', 'Código de ubicación de la escuela', 'رمز موقع المدرسة', 'स्कूल स्थान कोड', 'سکول کی جگہ کا کوڈ', '学校位置代码', '学校の場所コード', 'Código de localização da escola', 'Код места расположения школы', 'Code de lieu de lécole', '학교 위치 코드', 'Standortcode der Schule', 'Codice di posizione della scuola', 'รหัสสถานที่ตั้งโรงเรียน', 'Iskola helykódja', 'School locatiecode', 'Location schola Code', 'Kode Lokasi Sekolah', 'Okul Yeri Kodu', 'Κωδικός τοποθεσίας σχολείου', 'کد مدرسه محل سکونت', 'Kod Lokasi Sekolah', 'స్కూల్ స్థానాన్ని వీధి చిరునామా', 'பள்ளி இடத்தை', 'શાળા સ્થાન કોડ', 'Kod lokalizacji szkoły', 'Код місцеположення школи', 'ਸਕੂਲ ਸਥਾਨ ਕੋਡ', 'Codul locației școlii', 'ကျောင်းစာအုပ်တည်နေရာ Code ကို', 'Iwe Ilana Ile-iwe', 'Lambar Ƙarin Makaranta'),
(660, 'facebook_url', 'Facebook URL', 'ফেসবুক ইউআরএল', 'Facebook URL', 'URL الفيسبوك', 'फेसबुक युआरएल', 'فیس بک یو آر ایل', 'Facebook网址', 'Facebookの', 'URL Facebook', 'URL-адрес Facebook', 'Ladresse URL de Facebook', 'Facebook URL', 'Facebook URL', 'URL di Facebook', 'URL ของ Facebook', 'Facebook URL', 'Facebook URL', 'Facebook URL', 'URL Facebook', 'Facebook URL', 'Διεύθυνση URL του Facebook', 'URL فیس بوک', 'URL Facebook', 'Facebook URL', 'பேஸ்புக் URL', 'ફેસબુક URL', 'URL facebooka', 'URL-адреса на Facebook', 'ਫੇਸਬੁੱਕ URL', 'URL-ul Facebook', 'Facebook မှာ URL ကို', 'URL URL', 'Facebook URL'),
(661, 'twitter_url', 'Twitter URL', 'টুইটার ইউআরএল', 'URL de Twitter', 'رابط تويتر', 'ट्विटर यूआरएल', 'ٹویٹر یو آر ایل', 'Twitter网址', 'Twitterの', 'URL do Twitter', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL di Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Διεύθυνση URL Twitter', 'URL توییتر', 'URL Twitter', 'Twitter URL', 'ட்விட்டர் URL', 'ટ્વિટર URL', 'Adres URL Twittera', 'URL-адреса Twitter', 'ਟਵਿੱਟਰ URL', 'URL-ul Twitter', 'Twitter ကို URL ကို', 'Twitter URL', 'Twitter URL'),
(662, 'linkedin_url', 'Linkedin URL', 'লিঙ্কডিন ইউআরএল', 'URL de Linkedin', 'Linkedin URL', 'लिंक्डिन यूआरएल', 'لنکڈین یو آر ایل', 'Linkedin网址', 'リンク先の', 'URL do Linkedin', 'Ссылка на Linkedin', 'URL Linkedin', '링크 된 URL', 'Verknüpfte URL', 'URL di Linkedin', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'LinkedIn URL', 'URL Linkedin', 'Linkedin URLsi', 'Linkedin URL', 'نشانی اینترنتی لینکدین', 'URL Linkedin', 'లింక్ చేసిన URL', 'இணைக்கப்பட்ட URL', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'ਲਿੰਕਡਿਨ ਯੂਆਰਐਲ', 'Linkedin URL', 'linkedin URL ကို', 'Linkedin URL', 'Linkedin URL'),
(663, 'google_plus_url', 'Google Plus URL', 'গুগল প্লাস ইউআরএল', 'URL de Google Plus', 'جوجل بلس URL', 'Google Plus URL', 'Google Plus URL', 'Google Plus网址', 'Google Plusの', 'URL do Google Plus', 'URL-адрес Google Plus', 'URL Google Plus', 'Google 플러스 URL', 'Google Plus-URL', 'URL di Google Plus', 'URL Google Plus', 'Google Plus URL', 'Google Plus URL', 'Google Plus URL', 'URL Google Plus', 'Google Artı URL', 'Διεύθυνση URL Google Plus', 'گوگل پلاس URL', 'URL Google Plus', 'గూగుల్ ప్లస్ URL', 'கூகிள் பிளஸ் URL', 'Google Plus URL', 'Adres URL Google Plus', 'URL-адреса Google Plus', 'Google Plus URL', 'Adresa URL Google Plus', 'Google Plus URL ကို', 'URL Google Plus', 'Google Plus URL'),
(664, 'youtube_url', 'Youtube URL', 'ইউটিউব ইউআরএল', 'URL de Youtube', 'عنوان URL على Youtube', 'यूथट्यूब यूआरएल', 'یو ٹیوب یو آر ایل', 'YouTube网址', 'YouTubeの', 'URL do Youtube', 'URL Youtube', 'URL Youtube', 'YouTube URL', 'YouTube-URL', 'URL di Youtube', 'URL ของ Youtube', 'Youtube URL', 'YouTube-URL', 'URL Videos', 'URL Youtube', 'Youtube URLsi', 'Youtube URL', 'URL یوتیوب', 'URL Youtube', 'Youtube URL', 'Youtube URL', 'YouTube URL', 'Adres URL w YouTube', 'URL-адреса YouTube', 'ਯੂਟਿਊਬ ਯੂਆਰਐਲ', 'Adresa URL Youtube', 'Youtube ကို URL ကို', 'Youtube URL', 'Youtube URL'),
(665, 'instagram_url', 'Instagram URL', 'ইনস্টাগ্রাম ইউআরএল', 'URL de Instagram', 'عنوان انستغرام', 'Instagram URL', 'Instagram یو آر ایل', 'Instagram网址', 'Instagram URL', 'URL do Instagram', 'URL-адрес Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'URL di Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'URL Instagram', 'Instagram URL', 'Διεύθυνση URL Instagram', 'URL نمایش مشخصات عمومی', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'Adres URL Instagrama', 'URL-адреса Instagram', 'Instagram URL', 'Adresă URL Instagram', 'Instagram ကို URL ကို', 'Instagram URL', 'Instagram URL'),
(666, 'pinterest_url', 'Pinterest URL', 'পিন্টারেস্ট ইউআরএল', '', 'Pinterest URL', 'Pinterest यूआरएल', 'Pinterest یو آر ایل', 'Pinterest网址', 'Pinterest URL', 'URL do Pinterest', 'URL-адрес Pinterest', 'URL de Pinterest', '관심있는 URL', 'Pinterest-URL', 'URL di Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'URL Pinterest', 'URL Pinterest', 'Pinterest URL', 'Διεύθυνση URL Pinterest', 'آدرس اینترنتی Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'Pinterest URL', 'URL na Pinterest', 'Pinterest URL', 'Pinterest ਯੂਆਰਐਲ', 'Adresa URL Pinterest', 'Pinterest URL ကို', 'Pinterest URL', 'URL din'),
(667, 'page', 'Page', '', 'Página', 'صفحة', 'पृष्ठ', 'صفحہ', '页', 'ページ', 'Página', 'страница', 'Page', '페이지', 'Seite', 'Pagina', 'หน้า', 'oldal', 'Pagina', 'page', 'Halaman', 'Sayfa', 'Σελίδα', 'صفحه', 'Halaman', 'పేజీ', 'பக்கம்', 'પાનું', 'Strona', 'Сторінка', 'ਪੰਨਾ', 'Pagină', 'စာမျက်နှာ', 'Page', 'Page'),
(668, 'description', 'Description', 'বিবরণ', 'Descripción', 'وصف', 'विवरण', 'تفصیل', '描述', '説明', 'Descrição', 'Описание', 'La description', '기술', 'Beschreibung', 'Descrizione', 'ลักษณะ', 'Leírás', 'Beschrijving', 'Description', 'Deskripsi', 'Açıklama', 'Περιγραφή', 'شرح', 'Penerangan', 'వివరణ', 'விளக்கம்', 'વર્ણન', 'Opis', 'Опис', 'ਵਰਣਨ', 'Descriere', 'ဖေါ်ပြချက်', 'Apejuwe', 'Bayani'),
(669, 'manage_slider', 'Manage Slider', 'স্লাইডার পরিচালনা করুন', 'Administrar control deslizante', 'إدارة المتزلج', 'स्लाइडर प्रबंधित करें', 'سلائیڈر کا نظم کریں', '管理滑块', 'スライダーの管理', 'Gerenciar Slider', 'Управление слайдером', 'Gérer le curseur', '슬라이더 관리', 'Schieberegler verwalten', 'Gestisci il dispositivo di scorrimento', 'จัดการ Slider', 'A csúszka kezelése', 'Beheer schuifregelaar', 'curo Slider', 'Kelola Slider', 'Kaydırıcıyı Yönet', 'Διαχειριστείτε το ρυθμιστικό', 'مدیریت لغزان', 'Urus Slider', 'స్లైడర్ని నిర్వహించండి', 'ஸ்லைடர் நிர்வகி', 'સ્લાઇડર મેનેજ કરો', 'Zarządzaj suwakiem', 'Керувати слайдером', 'ਸਲਾਈਡਰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați cursorul', 'Slider ကစီမံခန့်ခွဲရန်', 'Ṣakoso awọn igbasẹ', 'Sarrafa Slider'),
(670, 'slider', 'Slider', 'স্লাইডার', 'Control deslizante', 'المنزلق', 'स्लाइडर', 'سلائیڈر', '滑块', 'スライダー', 'Slider', 'ползунок', 'Slider', '슬라이더', 'Schieberegler', 'Slider', 'Slider', 'Slider', 'schuif', 'labor lapsus', 'Slider', 'kaydırıcı', 'Ολισθητής', 'لغزنده', 'Slider', 'స్లైడర్', 'ஸ்லைடர்', 'સ્લાઇડર', 'Suwak', 'Слайдер', 'ਸਲਾਈਡਰ', 'cursor', 'slider', 'Yiyọ', 'Zamawa'),
(673, 'admission_fee', 'Admission Fee', 'ভর্তি ফি', 'Precio de admisión', 'رسوم الدخول', 'प्रवेश शुल्क', 'داخلہ فیس', '入场费', '入場料', 'Taxa de admissão', 'Плата за вход', 'Frais dadmission', '입장료', 'Aufnahmegebühr', 'Tassa di ammissione', 'ค่าตั๋ว', 'Jelentkezési költség', 'Toegangsprijs', 'Praesent pretium', 'Uang masuk', 'Giriş ücreti', 'Εισιτήριο', 'هزینه پذیرش', 'Yuran kemasukan', 'ప్రవేశ రుసుము', 'சேர்க்கை கட்டணம்', 'પ્રવેશ ફી', 'Opłata za wstęp', 'Вступний внесок', 'ਦਾਖ਼ਲਾ ਫ਼ੀਸ', 'Taxa de admitere', 'ဝင်ကြေး', 'Gbigba Gbigba wọle', 'Kudin shiga'),
(672, 'hourly', 'Hourly', 'প্রতি ঘণ্টায়', 'Cada hora', 'باستمرار', 'प्रति घंटा', 'گھنٹہ وار', '每小时', '毎時', 'De hora em hora', 'почасовой', 'Horaire', '매시간', 'Stündlich', 'ogni ora', 'ทุกๆชั่วโมง', 'Óránkénti', 'ieder uur', 'hourly', 'Per jam', 'Saatlik', 'Ωριαίος', 'ساعتی', 'Jam', 'ప్రతిగంట', 'மணிக்கொருமுறை', 'અવરલી', 'Cogodzinny', 'Погодинно', 'ਘੰਟਾ', 'ore', 'နာရီတိုင်း', 'Wakati', 'Saa'),
(674, 'is_applicable', 'Is Applicable?', 'প্রযোজ্য?', '¿Es aplicable?', 'هل قابل للتطبيق؟', 'उपयुक्त है?', 'قابل اطلاق ہے؟', '适用？', '適用可能ですか？', 'É aplicável?', 'Применимо?', 'Est applicable?', '해당 사항이 있습니까?', 'Anwendbar?', 'È applicabile?', 'ใช้ได้หรือไม่?', 'Alkalmazható?', 'Is toepasbaar?', 'Est Lorem?', 'Apakah Berlaku?', 'Uygulanabilir mi', 'Ισχύει;', 'مناسب است؟', 'Adakah berkenaan?', 'వర్తించదగినది', 'பொருந்தக்கூடியதா?', 'લાગુ છે?', 'Ma zastosowanie?', 'Чи застосовується?', 'ਕੀ ਇਹ ਲਾਗੂ ਹੁੰਦਾ ਹੈ?', 'Este aplicabil?', 'application ဖြစ်ပါတယ်?', 'Ṣe o wa?', 'Shin ya dace?'),
(675, 'payroll', 'Payroll', 'পেরোল', 'Nómina de sueldos', 'كشف رواتب', 'पेरोल', 'پے رول', '工资表', '給与計算', 'Folha de pagamento', 'Начисление заработной платы', 'Paie', '급여', 'Lohn-und Gehaltsabrechnung', 'Libro paga', 'บัญชีเงินเดือน', 'Payroll', 'Loonlijst', 'Mauris scelerisque', 'Daftar gaji', 'Maaş bordrosu', 'Κατάσταση μισθοδοσίας', 'حقوق و دستمزد', 'Penggajian', 'పేరోల్', 'சம்பளப்பட்டியல்', 'પેરોલ', 'Lista płac', 'Зарплата', 'ਪੇਰੋਲ', 'stat de plată', 'အခစာရင်း', 'Owo-owo sisan', 'Biyan kuɗi'),
(676, 'salary', 'Salary', 'বেতন', 'Salario', 'راتب', 'वेतन', 'تنخواہ', '薪水', '給料', 'Salário', 'Зарплата', 'Un salaire', '봉급', 'Gehalt', 'Stipendio', 'เงินเดือน', 'Fizetés', 'Salaris', 'salarium', 'Gaji', 'Maaş', 'Μισθός', 'حقوق', 'Gaji', 'జీతం', 'சம்பளம்', 'પગાર', 'Wynagrodzenie', 'Зарплата', 'ਤਨਖਾਹ', 'Salariu', 'လစာ', 'Iyawo', 'Salary'),
(677, 'history', 'History', 'ইতিহাস', 'Historia', 'التاريخ', 'इतिहास', 'ہسٹری', '历史', '歴史', 'História', 'история', 'Histoire', '역사', 'Geschichte', 'Storia', 'ประวัติศาสตร์', 'Történelem', 'Geschiedenis', 'Historia', 'Sejarah', 'Tarihçe', 'Ιστορία', 'تاریخ', 'Sejarah', 'చరిత్ర', 'வரலாறு', 'ઇતિહાસ', 'Historia', 'Історія', 'ਇਤਿਹਾਸ', 'Istorie', 'သမိုင်း', 'Itan', 'Tarihi'),
(678, 'manage_salary_grade', 'Manage Salary Grade', 'বেতন গ্রেড পরিচালনা', 'Administrar grado de salario', 'إدارة درجة الراتب', 'वेतन ग्रेड को प्रबंधित करें', 'تنخواہ کا انتظام کریں', '管理薪金等级', '給与グレードを管理する', 'Gerenciar o salário', 'Управление зарплатой', 'Gérer le salaire', '급여 등급 관리', 'HistoryManage Gehaltsstufe', 'Gestire il livello di stipendio', 'จัดการระดับเงินเดือน', 'Fizetési fokozat kezelése', 'Beheer salarislijst', 'Curo MERCES Romani', 'Kelola Grade Gaji', 'Maaş Notunu Yönet', 'Διαχειριστείτε το βαθμό μισθοδοσίας', 'مدیریت حقوق و دستمزد', 'Menguruskan Gred Gaji', 'జీతం గ్రేడ్ నిర్వహించండి', 'சம்பள உயர்வை நிர்வகி', 'પગાર ગ્રેડ મેનેજ કરો', 'Zarządzaj poziomem wynagrodzeń', 'Управління класом зарплати', 'ਸੈਲਰੀ ਗ੍ਰੇਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați gradul de salarizare', 'လစာအဆင့်စီမံခန့်ခွဲရန်', 'Ṣakoso awọn Ọya Salaye', 'Sarrafa Takardar Lissafin Kuɗi'),
(679, 'salary_grade', 'Salary Grade', 'বেতন গ্রেড', 'Grado de salario', 'راتب', 'वेतन ग्रेड', 'تنخواہ گریڈ', '薪金等级', '給与等級', 'Grau Salarial', 'Уровень зарплаты', 'Grade salarial', '급여 등급', 'Gehaltsstufe', 'Grado di stipendio', 'ระดับเงินเดือน', 'Fizetési fokozat', 'Salarisrang', 'Romani stipendio', 'Grade Gaji', 'Maaş Notu', 'Μισθός βαθμού', 'درجه حقوق و دستمزد', 'Gred Gaji', 'జీతం గ్రేడ్', 'சம்பளம் தர', 'પગાર ગ્રેડ', 'Wynagrodzenie', 'Зарплата', 'ਸੈਲਰੀ ਗ੍ਰੇਡ', 'Gradul de salarizare', 'လစာအဆင့်', 'Iye owo-iwe', 'Salary Salary'),
(680, 'grade_name', 'Grade Name', 'গ্রেড নাম', 'Nombre de grado', 'اسم الصف', 'ग्रेड का नाम', 'گریڈ کا نام', '成绩名称', 'グレード名', 'Nome da classe', 'Имя класса', 'Nom de grade', '학년 이름', 'Benennungsname', 'Nome di qualità', 'ชื่อชั้นเรียน', 'Grade Name', 'Grade naam', 'nomen gradus', 'Nama Kelas', 'Sınıf adı', 'Όνομα βαθμού', 'نام درجه', 'Nama Gred', 'గ్రేడ్ పేరు', 'தரம் பெயர்', 'ગ્રેડ નામ', 'Nazwa klasy', 'Назва класу', 'ਗਰੇਡ ਨਾਮ', 'Numele clasei', 'grade အမည်', 'Orukọ Ipele', 'Sunan suna'),
(681, 'basic_salary', 'Basic Salary', 'মূল বেতন', 'Salario base', 'راتب اساسي', 'मूल वेतन', 'بنیادی تنخواہ', '基础工资', '基本給', 'Salário básico', 'Основная зарплата', 'Salaire de base', '기본 급여', 'Grundgehalt', 'Salario di base', 'เงินเดือนทั่วไป', 'Alapilletmény', 'Basis salaris', 'Basic stipendio', 'Gaji pokok', 'Temel maaş', 'Βασικού μισθού', 'حقوق پایه', 'Gaji pokok', 'మూల వేతనం', 'அடிப்படை சம்பளம்', 'પ્રાથમિક વેતન', 'Podstawowe wynagrodzenie', 'Основна заробітна плата', 'ਬੇਸਿਕ ਸੈਲਰੀ', 'Salariu de baza', 'အခြေခံလစာ', 'Ipilẹ Ipilẹ', 'Salaye na asali'),
(682, 'house_rent', 'House Rent', 'ঘর ভাড়া', 'Alquiler de casa', 'إيجار المنزل', 'घर का किराया', 'گھر کا کرایہ', '房租', '家賃', 'Aluguel de casa', 'Аренда дома', 'Location de maison', '집 임대', 'Hausmiete', 'Affitto della casa', 'บ้านเช่า', 'House Rent', 'Huur', 'HABITATIO', 'Sewa Rumah', 'Ev Kiralama', 'Ενοίκιο σπιτιού', 'اجاره خانه', 'Rumah sewa', 'హౌస్ అద్దె', 'வீட்டு வாடகை', 'હાઉસ ભાડું', 'Dom na wynajem', 'Оренда житла', 'ਹਾਊਸ ਰੈਂਟ', 'Chiria casei', 'အိမ်ဌားရန်', 'Ile Iyalo', 'House Rent'),
(683, 'medical', 'Medical', 'মেডিকেল', 'Médico', 'طبي', 'मेडिकल', 'طبی', '医', '医療', 'Médico', 'медицинская', 'Médical', '의료', 'Medizinisch', 'Medico', 'ทางการแพทย์', 'Orvosi', 'Medisch', 'Medical', 'Medis', 'Tıbbi', 'Ιατρικός', 'پزشکی', 'Perubatan', 'మెడికల్', 'மருத்துவ', 'તબીબી', 'Medyczny', 'Медичний', 'ਮੈਡੀਕਲ', 'Medical', 'ဆေးဘက်ဆိုင်ရာ', 'Egbogi', 'Medical'),
(684, 'over_time_hourly_rate', 'Over Time Hourly Rate', 'ওভার টাইম ঘন্টায় রেট', 'Sobre la tarifa por hora del tiempo', 'مع مرور الوقت معدل بالساعة', 'समय प्रति घंटा दर से अधिक', 'وقت کے اوقات کی شرح کے دوران', '随时间变化的小时费率', '時間ごとの時間別料金', 'Taxa horária por hora', 'Счастье в час', 'Taux horaire au fil du temps', '시간별 시간당 요금', 'Stundensatz über die Zeit', 'Over Time Rate oraria', 'อัตรารายชั่วโมงต่อชั่วโมง', 'Több mint óránkénti arány', 'Na verloop van tijd uurtarief', 'Per Rate Tempus Hourly', 'Over Time Hourly Rate', 'Zaman İçindekiler Hızı', 'Χρόνος ανά ώρα', 'در طول ساعت به صورت ساعت', 'Lebih Kadar Masa Berkala', 'ఓవర్ టైమ్ గంటరో రేట్', 'ஓவர் டைம் மணிநேர விகிதம்', 'સમયનો સમય દીઠ દર', 'Ponadgodzinna stawka', 'З часом в годину', 'ਵੱਧ ਸਮਾਂ ਘੰਟਾ ਦਰ', 'Rata orară a timpului', 'အချိန်နာရီအလိုက်နှုန်းကျော်', 'Akoko Iwọn Akokọ Oṣuwọn', 'Fiye da Lokaci Na Yau'),
(685, 'provident_fund', 'Provident Fund', 'তহবিল', 'fondo de Previsión', 'صندوق الادخار', 'भविष्य निधि', 'پراویڈنٹ فنڈ', '公积金', '準備基金', 'fundo de previdência', 'резервный фонд', 'Fonds de prévoyance', '프로 비전 기금', 'Vorsorgefonds', 'fondo di previdenza', 'กองทุนสำรองเลี้ยงชีพ', 'segélyalap', 'Provident Fund', 'fiscus provident', 'dana penghematan', 'ihtiyat fonu', 'ταμείο προνοίας', 'صندوق', 'kumpulan Wang Simpanan', 'భవిష్య నిధి', 'வருங்கால வைப்பு நிதி', 'પ્રોવિડન્ટ ફંડ', 'Fundusz Provident', 'резервного фонду', 'ਪ੍ਰਾਵੀਡੈਂਟ ਫੰਡ', 'Fondul Provident', 'Provident Fund က', 'Iwe-iṣowo Pipese', 'Asusun bada'),
(686, 'hourly_rate', 'Hourly Rate', 'প্রতি ঘণ্টার মূল্য', 'Tarifa por hora', 'المعدل بالساعة', 'प्रति घंटा - दर', ' فی گھنٹہ کی شرح', '每小时收费', '時給', 'Taxa horária', 'Часовая ставка', 'Taux horaire', '시간당 요금', 'Stundensatz', 'Tariffa oraria', 'อัตราชั่วโมง', 'Óradíj', 'Uurtarief', 'Hourly rate', 'Tarif per jam', 'Saatlik ücret', 'Ωρομίσθιο', 'نرخ ساعتی', 'Kadar jam', 'గంటకు రేటు', 'நேர விகிதம்', 'અવરલી રેટ', 'Stawka godzinowa', 'Погодинна ставка', 'ਘੰਟੇ ਦੀ ਦਰ', 'Rata orară', 'အလုပ်ချိန်နာရီနှုန်း', 'Oṣuwọn wakati', 'Ranar Saa'),
(687, 'allowance', 'Allowance', 'ভাতা', 'Tolerancia', 'بدل', 'भत्ता', 'الاؤنس', '津贴', '手当', 'Abono', 'пособие', 'Allocation', '수당', 'Beihilfe', 'indennità', 'เบี้ยเลี้ยง', 'Juttatás', 'Toelage', 'Allocacio', 'Tunjangan', 'ödenek', 'Επίδομα', 'کمک هزینه', 'Elaun', 'అనుమతి', 'அலவன்ஸ்', 'ભથ્થું', 'Dodatek', 'Допомога', 'ਭੱਤਾ', 'alocație', 'အခွင့်', 'Gbese', 'Allowance'),
(688, 'deduction', 'Deduction', 'বাদ', 'Deducción', 'المستقطع', 'कटौती', 'کٹوتی', '扣除', '控除', 'Dedução', 'дедукция', 'Déduction', '공제', 'Abzug', 'Deduzione', 'การหัก', 'Levonás', 'Aftrek', 'deductio', 'Deduksi', 'kesinti', 'Αφαίρεση', 'کسر', 'Potongan', 'తీసివేతతీసివేత', 'துப்பறியும்', 'કપાત', 'Odliczenie', 'Відрахування', 'ਕਟੌਤੀ', 'Deducere', 'နှုတ်ယူခြင်း', 'Iyọkuro', 'Ragewa'),
(689, 'gross_salary', 'Gross Salary', 'মোট বেতন', 'Salario bruto', 'الراتب الكلى', 'सकल वेतन', 'مجموعی تنخواہ', '总薪水', '総給与', 'Salário Bruto', 'Валовая зарплата', 'Salaire brut', '총 급여', 'Bruttogehalt', 'Stipendio lordo', 'เงินเดือนขั้นต้น', 'Bruttó bér', 'Brutosalaris', 'Crassa salarium', 'Gaji kotor', 'Brüt maaş', 'Ακαθάριστο μισθό', 'حقوق و دستمزد ناخالص', 'Gaji kasar', 'స్థూల జీతం', 'மொத்த சம்பளம்', 'કુલ પગાર', 'Wynagrodzenie brutto', 'Зарплата брутто', 'ਕੁੱਲ ਤਨਖ਼ਾਹ', 'Salariu brut', 'စုစုပေါင်းလစာ', 'Gross Salary', 'Rawan kudi mai yawa'),
(690, 'net_salary', 'Net Salary', 'নেট বেতন', 'Sueldo neto', 'صافي الراتب', 'कुल वेतन', 'نیٹ تنخواہ', '净工资', 'ネット給与', 'Salário líquido', 'Чистая зарплата', 'Salaire net', '순 급여', 'Nettogehalt', 'Salario netto', 'เงินเดือนสุทธิ', 'Nettó bér', 'Netto salaris', 'Net MERCES', 'Gaji bersih', 'Net maaş', 'Καθαρός μισθός', 'حقوق خالص', 'Gaji Bersih', 'నికర జీతం', 'நிகர சம்பளம்', 'નેટ પગાર', 'Wynagrodzenie netto', 'Чиста зарплата', 'Net Salary', 'Salariu net', 'net ကလစာ', 'Apapọ owo-ori', 'Raayin Netarwa'),
(691, 'manage_payment', 'Manage Payment', 'পেমেন্ট পরিচালনা করুন', 'Administrar el pago', 'إدارة الدفع', 'भुगतान प्रबंधित करें', 'ادائیگی کا نظم کریں', '管理付款', 'お支払いの管理', 'Gerenciar Pagamento', 'Управление платежами', 'Gérer le paiement', '지불 관리', 'Zahlung verwalten', 'Gestisci il pagamento', 'จัดการการชำระเงิน', 'Fizetés kezelése', 'Beheer de betaling', 'curo Payment', 'Kelola Pembayaran', 'Ödemeyi Yönet', 'Διαχείριση της πληρωμής', 'مدیریت پرداخت', 'Urus Pembayaran', 'చెల్లింపుని నిర్వహించండి', 'கட்டணம் நிர்வகி', 'ચુકવણી મેનેજ કરો', 'Zarządzaj płatnością', 'Управління платежами', 'ਭੁਗਤਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați plata', 'ငွေပေးချေမှုရမည့်စီမံခန့်ခွဲရန်', 'Ṣakoso Isanwo', 'Sarrafa Biyan kuɗi'),
(692, 'salary_type', 'Salary Type', 'বেতন প্রকার', 'Tipo de salario', 'نوع الراتب', 'वेतन प्रकार', 'تنخواہ کی قسم', '薪资类型', '給与タイプ', 'Tipo salarial', 'Тип зарплаты', 'Type de salaire', '급여 유형', 'Gehaltsart', 'Tipo di stipendio', 'ประเภทเงินเดือน', 'Fizetési típus', 'Salaris Type', 'Type stipendio', 'Tipe Gaji', 'Maaş Türü', 'Τύπος μισθοδοσίας', 'نوع حقوق', 'Jenis Gaji', 'జీతం పద్ధతి', 'சம்பள வகை', 'પગાર પ્રકાર', 'Rodzaj wynagrodzenia', 'Тип заробітної плати', 'ਤਨਖਾਹ ਦੀ ਕਿਸਮ', 'Tip de salariu', 'လစာအမျိုးအစား', 'Iyawo Iru', 'Nauin Salary'),
(693, 'payment_to', 'Payment To', 'জাহাকেপেমেন্ট  করা হবে', 'Pago Para', 'دفع ل', 'को भुगतान', 'ادائیگی کرنے کے لئے', '支付', 'への支払い', 'Pagamento para', 'Оплата Для', 'Paiement à', '지불 대상', 'Zahlung an', 'pagamento a', 'ชำระเงินถึง', 'Fizetés ... részére', 'Betaling aan', 'Ad Payment', 'pembayaran untuk', 'Için ödeme', 'Πληρωμή σε', 'پرداخت به', 'bayaran kepada', 'చెల్లింపు', 'கட்டணம் கட்ட', 'ચુકવણી માટે', 'Płatność Do', 'Оплата до', 'ਭੁਗਤਾਨ ਕਰਨ ਲਈ', 'plata catre', 'ရန်ငွေပေးချေမှုရမည့်', 'Isanwo Lati', 'Biya Don'),
(694, 'over_time_total_hour', 'Over Time Total Hour', 'ওভার টাইম  মোট ঘন্টা', 'Hora total en el tiempo', 'مع مرور الوقت إجمالي ساعة', 'समय कुल घंटे से अधिक', 'کل وقت کے ساتھ', '随着时间的推移', '合計時間', 'Over Time Total Hour', 'С течением времени', 'Au fil du temps Total heure', '시간이 지남에 따라 총 시간', 'Über die Zeit insgesamt Stunde', 'Oltre lora totale', 'เมื่อรวมเวลาทั้งหมด', 'Idő alatt Teljes óra', 'Na verloop van tijd Totaal uur', 'Total super Hour', 'Over Time Total Hour', 'Zamanla Toplam Saat', 'Συνολική ώρα κατά τη διάρκεια του χρόνου', 'در طول زمان کل ساعت', 'Lebih Masa Jumlah Jam', 'ఓవర్ టైం టోటల్ అవర్', 'மொத்த நேரம் மொத்த நேரம்', 'સમય કુલ કલાક ઉપર', 'Łączna liczba godzin w czasie', 'З часом загальна година', 'ਟਾਈਮ ਕੁਲ ਘੰਟਾ ਵੱਧ', 'Ora pe oră totală', 'အချိန်စုစုပေါင်းနာရီကျော်', 'Aago Aago Lapapọ wakati', 'Bayan Lokaci Kayan Saa'),
(695, 'over_time_amount', 'Over Time Amount', 'ওভার টাইম পরিমাণ', 'Sobre el tiempo Monto', 'على مر الزمن المبلغ', 'समय राशि के साथ', 'وقت کی رقم کے دوران', '随着时间的推移', '時間経過に伴う金額', 'Ao longo do tempo', 'Сумма за раз', 'Au fil du temps', '시간 경과에 따른 금액', 'Über Zeit Betrag', 'Over Time Amount', 'เมื่อเวลาผ่านไป', 'Több idő alatt', 'Over tijd Bedrag', 'Per Aliquam tempus', 'Over Time Amount', 'Zamana Göre Tutar', 'Ποσό Over Time', 'بیش از مقدار زمان', 'Jumlah Lebih Masa', 'ఓవర్ టైం మొత్తం', 'ஓவர் டைம் தொகை', 'સમયનો રકમ', 'Kwota w czasie', 'Надмірна сума', 'ਸਮੇਂ ਦੀ ਮਾਤਰਾ ਤੋਂ ਵੱਧ', 'Valoarea peste timp', 'အချိန်ပမာဏကျော်', 'Iye Iye Aago', 'Yawan Lokaci'),
(696, 'total_hour', 'Total Hour', 'মোট ঘন্টা', 'Hora total', 'مجموع الساعة', 'कुल घंटे', 'کل گھنٹے', '总时数', '合計時間', 'Hora Total', 'Общий час', 'Heure totale', '총 시간', 'Gesamtstunde', 'Ora totale', 'รวมชั่วโมง', 'Teljes óra', 'Totaal uur', 'summa Hour', 'Jam Total', 'Toplam Saat', 'Συνολική ώρα', 'ساعت کل', 'Jumlah Jam', 'మొత్తం అవర్', 'மொத்த மணி', 'કુલ કલાક', 'Godzina ogółem', 'Загальна кількість годин', 'ਕੁੱਲ ਘੰਟਾ', 'Ora totală', 'စုစုပေါင်းနာရီ', 'Lapapọ wakati', 'Jimlar Saa'),
(697, 'bonus', 'Bonus', 'বোনাস', 'Prima', 'علاوة', 'बोनस', ' بونس', '奖金', 'ボーナス', 'Bônus', 'бонус', 'Prime', '보너스', 'Bonus', 'indennità', 'โบนัส', 'pótlék', 'Bonus', 'Bonus', 'Bonus', 'Bonus', 'Δώρο', 'جایزه', 'Bonus', 'అదనపు', 'போனஸ்', 'બોનસ', 'Premia', 'Бонус', 'ਬੋਨਸ', 'Primă', 'ဆုငှေ', 'Ajeseku', 'Bonus'),
(698, 'penalty', 'Penalty', 'জরিমানা', 'Pena', 'ضربة جزاء', 'दंड', 'جرمانہ', '罚款', 'ペナルティ', 'Pena', 'неустойка', 'Peine', '패널티', 'Elfmeter', 'Pena', 'การลงโทษ', 'Büntetés', 'boete', 'supplicium', 'Penalti', 'Ceza', 'Ποινή', 'مجازات', 'Penalti', 'పెనాల్టీ', 'அபராதம்', 'દંડ', 'Rzut karny', 'Штраф', 'ਪੈਨਲਟੀ', 'Penalizare', 'ပြစ်ဒဏ်', 'Ipaba', 'Zama'),
(699, 'gross_amount', 'Gross Amount', 'মোট পরিমাণ', 'Cantidad bruta', 'المبلغ الإجمالي', 'सकल राशि', 'مجموعی رقم', '总额', '総額', 'Quantidade bruta', 'Сумма брутто', 'Montant brut', '총액', 'Bruttobetrag', 'Importo lordo', 'ยอดรวม', 'Bruttó összeg', 'Brutobedrag', 'Crassa pondus', 'Jumlah bruto', 'Brüt miktar', 'Ακαθάριστο ποσό', 'مقدار ناخالص', 'Jumlah kasar', 'స్థూల మొత్తం', 'மொத்த தொகை', 'કુલ રકમ', 'Kwota brutto', 'Валова сума', 'ਕੁੱਲ ਰਕਮ', 'Valoarea brută', 'စုစုပေါင်းငွေပမာဏ', 'Iye nla', 'Babban Asalin'),
(700, 'net_amount', 'Net Amount', 'নেট পরিমাণ', 'Importe neto', 'كمية الشبكة', 'शुद्ध राशि', 'اصل رقم', '净额', '正味金額', 'Valor líquido', 'Чистая сумма', 'Montant net', '순액', 'Netto-Betrag', 'Importo netto', 'ปริมาณสุทธิ', 'Nettó összege', 'Netto bedrag', 'Net amount', 'Jumlah bersih', 'Net tutar', 'Καθαρό ποσό', 'مقدار خالص', 'Jumlah bersih', 'నికర మొత్తం', 'நிகர தொகை', 'નેટ રકમ', 'Kwota netto', 'Чиста сума', 'ਕੁੱਲ ਰਾਸ਼ੀ', 'Cantitate netă', 'net ငွေပမာဏ', 'Iye apapọ', 'Babban Asusun'),
(701, 'is_applicable_discount', 'Is Applicable Discount?', 'ডিসকাউন্ট কি প্রযোজ্য?', '¿Es un descuento aplicable?', 'هو الخصم للتطبيق؟', 'लागू छूट है?', 'قابل اطلاق ڈسکاؤنٹ ہے؟', '是否适用折扣？', '適用割引ありますか？', 'É um desconto aplicável?', 'Применимая скидка?', 'Est-ce que le rabais applicable?', '적용 가능한 할인인가?', 'Ist der Rabatt gültig?', 'È lo sconto applicabile?', 'ส่วนลดที่ใช้บังคับหรือไม่?', 'Alkalmazható kedvezmény?', 'Is toepasselijke korting?', 'Price est applicabilis?', 'Apakah Diskon yang Berlaku?', 'Uygulanabilir İndirim mi?', 'Εφαρμόζεται έκπτωση;', 'آیا تخفیف مناسب است؟', 'Adakah Diskaun Berkenaan?', 'వర్తించదగిన డిస్కౌంట్ ఉందా?', 'பொருந்தக்கூடிய தள்ளுபடி?', 'લાગુ ડિસ્કાઉન્ટ છે?', 'Czy obowiązuje zniżka?', 'Чи застосовується знижка?', 'ਕੀ ਛੂਟ ਨੂੰ ਲਾਗੂ ਕਰਨਾ ਹੈ?', 'Este o reducere aplicabilă?', 'သက်ဆိုင်သောလျှော့ရှိပါသလား?', 'Ṣe Ṣe Kan Owo?', 'Shin rangwamen da aka dace?'),
(702, 'hostel_fee', 'Hostel Fee', 'হোস্টেল ফি', 'Tarifa del albergue', 'Hostel Fee', 'छात्रावास शुल्क', 'ہاسٹل فیس', '旅馆费用', 'ホステル料金', 'Taxa de Albergue', 'Хостел', 'Frais dauberge', '호스텔 요금', 'Jugendherbergsgebühr', 'Tassa dellostello', 'ค่าที่พัก', 'Hostel Fee', 'Hostel Fee', 'pretium Hostel', 'Biaya Hostel', 'Hostel Ücreti', 'Hostel Fee', 'هزینه ویزا', 'Yuran Asrama', 'హాస్టల్ రుసుము', 'விடுதி கட்டணம்', 'છાત્રાલય ફી', 'Opłata Hostel', 'Комісія за хостинг', 'ਹੋਸਟਲ ਫੀਸ', 'Hostel Fee', 'ဘော်ဒါဆောင်ကြေး', 'Ile-iṣẹ ile ayagbe', 'Kushin kwanan dalibai'),
(703, 'transport_fee', 'Transport Fee', 'পরিবহন ফি', 'Tarifa de transporte', 'مصاريف الشحن', 'परिवहन शुल्क', 'ٹرانسپورٹ فیس', '运输费', '輸送料', 'Tarifa de transporte', 'Транспортный сбор', 'Frais de transport', '운송료', 'Transportkosten', 'Tassa di trasporto', 'ค่าธรรมเนียมการขนส่ง', 'Szállítási díj', 'Transportkosten', 'pretium onerariam', 'Biaya transportasi', 'Taşıma ücreti', 'Τέλη Μεταφοράς', 'هزینه حمل ونقل', 'Yuran Pengangkutan', 'రవాణా రుసుము', 'போக்குவரத்து கட்டணம்', 'ટ્રાન્સપોર્ટ ફી', 'Opłata transportowa', 'Транспортна плата', 'ਟਰਾਂਸਪੋਰਟ ਫੀਸ', 'Taxă de transport', 'ပို့ဆောင်ရေးကြေး', 'Awọn owo ọkọ irin-ajo', 'Kudin sufuri'),
(704, 'certificate_fee', 'Certificate Fee', 'সার্টিফিকেট ফি', 'Cuota de certificado', 'رسوم الشهادة', 'प्रमाणपत्र शुल्क', 'سرٹیفکیٹ فیس', '证书费用', '証明書料金', 'Taxa de certificado', 'Плата за сертификат', 'Frais de certificat', '수료증', 'Zertifikatgebühr', 'Tassa di certificazione', 'ค่าธรรมเนียมการรับรอง', 'Tanúsítványdíj', 'Certificaatkosten', 'pretium certificatorium', 'Biaya Sertifikat', 'Sertifika Ücreti', 'Αμοιβή πιστοποιητικού', 'هزینه گواهینامه', 'Yuran Sijil', 'సర్టిఫికెట్ ఫీజు', 'சான்றிதழ் கட்டணம்', 'પ્રમાણપત્ર ફી', 'Opłata za certyfikat', 'Свідоцтва', 'ਸਰਟੀਫਿਕੇਟ ਫੀਸ', 'Taxă de certificat', 'လက်မှတ်ခ', 'Ijẹrisi iwe-ẹri', 'Takardar shaidar'),
(705, 'exam_fee', 'Exam Fee', 'পরীক্ষার ফি', 'Tasa de examen', 'رسوم الامتحان', 'परीक्षा शुल्क', 'امتحان فیس', '考试费用', '試験費用', 'Taxa de exame', 'Плата за экзамен', 'Frais dexamen', '시험 비용', 'Prüfungsgebühr', 'Tassa desame', 'ค่าธรรมเนียมการสอบ', 'Vizsga díj', 'Examengeld', 'nito pretium', 'Biaya Ujian', 'Sınav Ücreti', 'Τέλος εξέτασης', 'هزینه آزمون', 'Yuran Peperiksaan', 'పరీక్ష రుసుము', 'தேர்வு கட்டணம்', 'પરીક્ષા ફી', 'Opłata egzaminacyjna', 'Іспит', 'ਪ੍ਰੀਖਿਆ ਫੀਸ', 'Exam Taxă', 'စာမေးပွဲကြေး', 'Iye owowowo', 'Binciken Binciken');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(706, 'monthly_fee', 'Monthly Tution Fee', 'মাসিক টিউশন ফি', 'Cuota de matrícula mensual', 'الرسوم الدراسية الشهرية', 'मासिक शिक्षण शुल्क', 'ماہانہ ٹیوشن فیس', '每月学费', '月額授業料', 'Mensalidade Mensal', 'Ежемесячная плата за обучение', 'Frais de scolarité mensuels', '월 수업료', 'Monatliche Studiengebühr', 'Quota di iscrizione mensile', 'ค่าเล่าเรียนรายเดือน', 'Havi tandíj', 'Maandelijks collegegeld', 'Menstrua feodo DISCIPLINA', 'Biaya Kuliah Bulanan', 'Aylık Öğrenim Ücreti', 'Μηνιαίο τέλος φοίτησης', 'هزینه تحصیل ماهانه', 'Yuran Tuisyen Bulanan', 'మంత్లీ ట్యూషన్ ఫీజు', 'மாதாந்திர கட்டணம் கட்டணம்', 'માસિક ટયુશન ફી', 'Opłata miesięczna za naukę', 'Щомісячна плата за навчання', 'ਮਹੀਨਾਵਾਰ ਟਿਊਸ਼ਨ ਫੀਸ', 'Taxă lunară de școlarizare', 'လစဉ်ကျူရှင်ကြေး', 'Awọn owo Ikẹkọ Oṣooṣu Oṣooṣu', 'Biyan ku] a] e na watanni'),
(707, 'about', 'About', 'এবাউট', 'Acerca de', 'حول', 'के बारे में', 'کے بارے میں', '关于', '約', 'Sobre', 'Около', 'Sur', '약', 'Über', 'Di', 'เกี่ยวกับ', 'Ról ről', 'Over', 'circa', 'Tentang', 'hakkında', 'Σχετικά με', 'در باره', 'Mengenai', 'గురించి', 'பற்றி', 'વિશે', 'O', 'Про', 'ਇਸ ਬਾਰੇ', 'Despre', 'အကွောငျး', 'Nipa', 'Game da'),
(708, 'social_link', 'Social Link', 'সামাজিক লিংক', 'Vínculo social', 'وصلة اجتماعية', 'सामाजिक लिंक', 'سوشل لنک', '社交链接', 'ソーシャルリンク', 'Link social', 'Социальная связь', 'Lien social', '소셜 링크', 'Soziale Verbindung', 'Collegamento sociale', 'Social Link', 'Közösségi link', 'Sociale link', 'Social Link', 'Jaringan sosial', 'Sosyal link', 'Κοινωνική σύνδεση', 'پیوند اجتماعی', 'Pautan Sosial', 'సామాజిక లింక్', 'சமூக இணைப்பு', 'સામાજિક લિંક', 'Link społecznościowy', 'Соціальна Посилання', 'ਸੋਸ਼ਲ ਲਿੰਕ', 'Legătură socială', 'လူမှု Link ကို', 'Asopọ Awujọ', 'Ƙungiyar Jiki'),
(709, 'get_in_touch', 'Get in Touch', 'স্পর্শ করুন', 'Estar en contacto', 'ابقى على تواصل', 'संपर्क में रहो', 'رابطے میں رہنا', '保持联系', '連絡する', 'Entrar em contato', 'Связаться', 'Entrer en contact', '연락하기', 'In Kontakt kommen', 'Mettiti in contatto', 'ได้รับการติดต่อ', 'Felveszi a kapcsolatot', 'Neem contact op', 'Get in Touch', 'Berhubungan', 'Temasta olmak', 'Ερχομαι σε επαφή', 'در تماس بودن', 'Dapatkan Sentuhan', 'అందుబాటులో ఉండు', 'தொடர்பில் இருங்கள்', 'સંપર્કમાં રહેવા', 'Bądź w kontakcie', 'Будемо на звязку', 'ਸੰਪਰਕ ਵਿੱਚ ਰਹੇ', 'Intrați în contact', 'Touch ကိုအတွက် Get', 'Gba ni Fọwọkan', 'Samun shiga'),
(710, 'staff', 'Staff', 'কর্মী', 'Personal', 'العاملين', 'कर्मचारी', 'اسٹاف', '员工', 'スタッフ', 'Funcionários', 'Сотрудники', 'Personnel', '직원', 'Mitarbeiter', 'Personale', 'บุคลากร', 'Személyzet', 'Personeel', 'Staff', 'Staf', 'Personel', 'Προσωπικό', 'کارکنان', 'Kakitangan', 'స్టాఫ్', 'ஊழியர்கள்', 'સ્ટાફ', 'Personel', 'Персонал', 'ਸਟਾਫ਼', 'Personal', 'ဝန်ထမ်း', 'Oṣiṣẹ', 'Maaikata'),
(711, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'हमसे संपर्क करें', 'ہم سے رابطہ کریں', '联系我们', 'お問い合わせ', 'Contate-Nos', 'Свяжитесь с нами', 'Contactez nous', '연락처', 'Kontaktiere uns', 'Contattaci', 'ติดต่อเรา', 'Lépjen kapcsolatba velünk', 'Neem contact met ons op', 'Nobis loquere', 'Hubungi kami', 'Bizimle iletişime geçin', 'Επικοινωνήστε μαζί μας', 'تماس با ما', 'Hubungi Kami', 'మమ్మల్ని సంప్రదించండి', 'எங்களை தொடர்பு கொள்ள', 'અમારો સંપર્ક કરો', 'Skontaktuj się z nami', 'Звяжіться з нами', 'ਸਾਡੇ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contacteaza-ne', 'ကြှနျုပျတို့ကိုဆကျသှယျရနျ', 'Pe wa', 'Tuntuɓi Mu'),
(712, 'comment', 'Comment', 'মন্তব্য', 'Comentario', 'تعليق', 'टिप्पणी', 'تبصرہ', '评论', 'コメント', 'Comente', 'Комментарий', 'Commentaire', '논평', 'Kommentar', 'Commento', 'คิดเห็น', 'Megjegyzés', 'Commentaar', 'comment', 'Komentar', 'Yorum Yap', 'Σχόλιο', 'اظهار نظر', 'Komen', 'వ్యాఖ్య', 'கருத்து', 'ટિપ્પણી કરો', 'Komentarz', 'Коментар', 'ਟਿੱਪਣੀ', 'cometariu', 'မှတ်ချက်', 'Ọrọìwòye', 'Sharhi'),
(713, 'read_more', 'Read More', 'আরও পড়ুন', 'Lee mas', 'اقرأ أكثر', 'और पढो', 'مزید پڑھ', '阅读更多', '続きを読む', 'consulte Mais informação', 'Прочитайте больше', 'Lire la suite', '더 읽기', 'Weiterlesen', 'Leggi di più', 'อ่านเพิ่มเติม', 'Olvass tovább', 'Lees verder', 'Lege plus', 'Baca lebih banyak', 'Daha fazla oku', 'Διαβάστε περισσότερα', 'ادامه مطلب', 'Baca Lebih Lanjut', 'ఇంకా చదవండి', 'மேலும் வாசிக்க', 'વધુ વાંચો', 'Czytaj więcej', 'Читати далі', 'ਹੋਰ ਪੜ੍ਹੋ', 'Citeste mai mult', 'ဆက်ဖတ်ရန်', 'Ka siwaju', 'Kara karantawa'),
(714, 'terms_and_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'Términos y Condiciones', 'الشروط والأحكام', 'नियम व शर्त', 'شرائط اور حالت', '条款与协议', '利用規約', 'Termos e Condições', 'Условия и условия', 'Termes et conditions', '약관 및 조건', 'Allgemeine Geschäftsbedingungen', 'Termini e condizioni', 'ข้อตกลงและเงื่อนไข', 'Felhasználási feltételek', 'Regels en voorwaarden', 'Terms & Condition', 'Syarat & Ketentuan', 'Şartlar ve koşullar', 'Όροι & Προϋποθέσεις', 'شرایط و ضوابط', 'Terma dan syarat', 'నియమాలు & నిబంధన', 'விதிமுறைகள் & நிபந்தனை', 'શરતો અને સ્થિતિ', 'Zasady i warunki', 'Умови та умови', 'ਸ਼ਰਤਾਂ ਅਤੇ ਸ਼ਰਤਾਂ', 'Termeni si conditii', 'စည်းမျဉ်းစည်းကမ်းများ & အခြေအနေ', 'Awọn ofin & Ipò', 'Terms & Yanayin'),
(715, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'Política de privacidad', 'سياسة الخصوصية', 'गोपनीयता नीति', 'پرائیویسی پالیسی', '隐私政策', '個人情報保護方針', 'Política de Privacidade', 'политика конфиденциальности', 'Politique de confidentialité', '개인 정보 정책', 'Datenschutz-Bestimmungen', 'politica sulla riservatezza', 'นโยบายส่วนบุคคล', 'Adatvédelmi irányelvek', 'Privacybeleid', 'Privacy policy', 'Kebijakan pribadi', 'Gizlilik Politikası', 'Πολιτική Απορρήτου', 'سیاست حفظ حریم خصوصی', 'Dasar Privasi', 'గోప్యతా విధానం', 'தனியுரிமை கொள்கை', 'ગોપનીયતા નીતિ', 'Polityka prywatności', 'Політика конфіденційності', 'ਪਰਾਈਵੇਟ ਨੀਤੀ', 'Politica de confidentialitate', 'ကိုယ်ရေးအချက်အလက်မူဝါဒ', 'Ìpamọ Afihan', 'takardar kebantawa'),
(716, 'event_info', 'Event Info', 'ইভেন্ট তথ্য', 'Información del evento', 'معلومات الحدث', 'ईवेंट जानकारी', 'واقعہ کی معلومات', '活动信息', 'イベント情報', 'Informação do Evento', 'Информация о событии', 'Informations sur lévénement', '이벤트 정보', 'Ereignisinformationen', 'Informazioni sullevento', 'ข้อมูลเหตุการณ์', 'Esemény információ', 'Evenement info', 'res Info', 'Info Acara', 'Etkinlik Bilgisi', 'Πληροφορίες εκδήλωσης', 'اطلاعات رویداد', 'Maklumat Acara', 'ఈవెంట్ సమాచారం', 'நிகழ்வு தகவல்', 'ઇવેન્ટ માહિતી', 'Informacje o wydarzeniu', 'Інформація про події', 'ਇਵੈਂਟ ਜਾਣਕਾਰੀ', 'Informații despre eveniment', 'အဖြစ်အပျက်အင်ဖို', 'Alaye ti oyan', 'Bayanin Event'),
(717, 'admission_form', 'Admission Form', 'ভর্তির ফর্ম', 'Formulario de admisión', 'شكل القبول', 'प्रवेश फार्म', 'داخلہ فارم', '入场表格', '入学式', 'Formulário de admissão', 'Форма приема', 'Formulaire dadmission', '입학 허가서', 'Aufnahmeformular', 'Modulo di ammissione', 'แบบฟอร์มเข้าศึกษา', 'Felvételi űrlap', 'Toelatingsformulier', 'Admission Form', 'Formulir Pendaftaran', 'Kabul formu', 'Έντυπο Εισαγωγής', 'فرم پذیرش', 'Borang Kemasukan', 'అడ్మిషన్ ఫారం', 'சேர்க்கை படிவம்', 'પ્રવેશ ફોર્મ', 'Formularz przyjęcia', 'Форма прийому', 'ਦਾਖ਼ਲਾ ਫਾਰਮ', 'Formular de admitere', 'ဝန်ခံချက် Form ကို', 'Fọọmu Gbigba', 'Takardar izinin shiga'),
(718, 'home', 'Home', 'হোম', 'Casa', ' الصفحة الرئيسية', 'होम', 'گھر', '家', 'ホーム', 'Casa', 'Главная', 'Accueil', '집', 'Zuhause', 'Casa', 'บ้าน', 'itthon', 'Huis', 'domum', 'Rumah', 'Ev', 'Σπίτι', 'خانه', 'Rumah', 'హోమ్', 'முகப்பு', 'હોમ', 'Dom', 'Будинок', 'ਘਰ', 'Acasă', 'နေအိမ်', 'Ile', 'Home'),
(719, 'previous', 'Previous', 'পূর্ববর্তী', 'Anterior', 'سابق', 'पिछला', 'پچھلا', '以前', '前', 'Anterior', 'предыдущий', 'précédent', '너무 이른', 'Bisherige', 'Precedente', 'ก่อน', 'Előző', 'voorgaand', 'priorem', 'Sebelumnya', 'Önceki', 'Προηγούμενος', 'قبلی', 'Sebelum ini', 'మునుపటి', 'முந்தைய', 'અગાઉના', 'Poprzedni', 'Попередній', 'ਪਿਛਲਾ', 'Anterior', 'လွန်ခဲ့သော', 'Tẹlẹ', 'A baya'),
(720, 'last_name', 'Last Name', 'নামের শেষাংশ', 'Apellido', 'الكنية', 'अंतिम नाम', 'آخری نام', '姓 ', '苗字', 'Último nome', 'Фамилия', 'Nom de famille', '성', 'Familienname, Nachname', 'Cognome', 'นามสกุล', 'Vezetéknév', 'Achternaam', 'Cognomen', 'Nama keluarga', 'Soyadı', 'Επίθετο', 'نام خانوادگی', 'Nama terakhir', 'చివరి పేరు', 'கடைசி பெயர்', 'છેલ્લું નામ', 'Nazwisko', 'Прізвище', 'ਆਖਰੀ ਨਾਂਮ', 'Numele de familie', 'မျိုးနွယ်အမည်', 'Oruko idile', 'Sunan mahaifa'),
(721, 'school_fax', 'Fax', 'ফ্যাক্স', 'Fax', 'فاكس', 'फैक्स', 'فیکس', '传真', 'ファックス', 'Fax', 'факс', 'Fax', '팩스', 'Fax', 'Fax', 'แฟกซ์', 'Fax', 'Fax', 'Fax', 'Fax', 'Faks', 'Φαξ', 'فکس', 'Faks', 'ఫ్యాక్స్', 'தொலைநகல்', 'ફેક્સ', 'Faks', 'Факс', 'ਫੈਕਸ', 'Fax', 'ဖက်စ်', 'Faksi', 'Fax'),
(722, 'admission', 'Admission', 'ভর্তি', 'Admisión', 'قبول', 'दाखिला', 'داخلہ', '入场', '入場料', 'Admissão', 'вход', 'Admission', '입장', 'Eintritt', 'Ammissione', 'การรับเข้า', 'Belépés', 'Toelating', 'Praesent', 'Penerimaan', 'kabul', 'Αδεια', 'پذیرش', 'Kemasukan', 'అడ్మిషన్', 'சேர்க்கை', 'પ્રવેશ', 'Wstęp', 'Вхід', 'ਦਾਖ਼ਲਾ', 'Admitere', 'ဝင်ခွင့်ပေးခြင်း', 'Gbigba wọle', 'Shiga'),
(723, 'check_at_least_one', 'Please check at least one checkbox', 'অন্তত একটি চেকবক্স চেক করুন দয়া করে', 'Por favor marque al menos una casilla', 'يرجى التحقق من مربع اختيار واحد على الأقل', 'कृपया कम से कम एक चेकबॉक्स को चेक करें', 'براہ کرم کم از کم ایک چیک باکس چیک کریں', '请至少检查一个复选框', '少なくとも1つのチェックボックスをオンにしてください', 'Por favor, marque pelo menos uma caixa de seleção', 'Установите хотя бы один флажок', 'Veuillez cocher au moins une case', '하나 이상의 확인란을 선택하십시오.', 'Bitte kreuzen Sie mindestens eine Checkbox an', 'Si prega di verificare almeno una casella di controllo', 'โปรดเลือกช่องทำเครื่องหมายอย่างน้อยหนึ่งรายการ', 'Kérjük, ellenőrizze legalább egy jelölőnégyzetet', 'Controleer minimaal één selectievakje', 'Please saltem reprehendo', 'Silakan periksa setidaknya satu kotak centang', 'Lütfen en az bir onay kutusunu işaretleyin', 'Επιλέξτε τουλάχιστον ένα πλαίσιο ελέγχου', 'لطفا حداقل یک کادر را بررسی کنید', 'Sila semak sekurang-kurangnya satu kotak semak', 'దయచేసి కనీసం ఒక చెక్బాక్స్ను తనిఖీ చేయండి', 'குறைந்தது ஒரு பெட்டியை சரிபார்க்கவும்', 'કૃપા કરી ઓછામાં ઓછું એક ચેકબૉક્સ તપાસો', 'Zaznacz co najmniej jedno pole wyboru', 'Перевірте хоча б одну прапорець', 'ਕਿਰਪਾ ਕਰਕੇ ਘੱਟੋ ਘੱਟ ਇੱਕ ਚੈਕਬੌਕਸ ਦੀ ਜਾਂਚ ਕਰੋ', 'Verificați cel puțin o casetă de selectare', 'အနည်းဆုံး checkbox ကိုစစ်ဆေးပါ', 'Jowo ṣayẹwo ṣayẹwo o kere ju apoti kan', 'Da fatan a duba akalla akwati ɗaya'),
(724, 'extra_charge', 'Extra Charge', 'অতিরিক্ত মূল্য', 'Carga extra', 'رسوم اضافية', 'अतिरिक्त प्रभार', 'اضافی چارج', '额外收费', '追加の費用', 'Custo extra', 'Дополнительная плата', 'Supplément', '추가 요금', 'Aufpreis', 'Costo aggiuntivo', 'ค่าบริการพิเศษ', 'Felár', 'Toeslag', 'extra crimen', 'Biaya tambahan', 'Ek ücret', 'Επιπλέον χρέωση', 'هزینه اضافی', 'Caj tambahan', 'అదనపు ధర', 'கூடுதல் கட்டணம்', 'વધારાની કિમત', 'Dodatkowa opłata', 'Додатковий збір', 'ਵਾਧੂ ਚਾਰਜ', 'Tarif suplimentar', 'အပိုငွေကောက်ခံမှု', 'Afikun Afikun', 'Karin caji'),
(725, 'ccavenue', 'CCAvenue', 'সিসি এভিনিউ', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ccavenue', 'CCAvenue', 'CCAvenue', 'Επιπλέον χρέωση', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ibi Ilana', 'Cibiyar'),
(726, 'merchant_key', 'Merchant Key', 'মার্চেন্ট কি', 'Clave del comerciante', 'مفتاح التاجر', 'व्यापारी कुंजी', 'مرچنٹ کلیدی', '商家钥匙', 'マーチャントキー', 'Chave do comerciante', 'Торговый ключ', 'Clé du marchand', '판매자 키', 'Händlerschlüssel', 'Chiave del commerciante', 'Merchant Key', 'Merchant kulcs', 'Verkopersleutel', 'Key mercator', 'Kunci Pedagang', 'Satıcı Anahtarı', 'Εμπορικό κλειδί', 'کلید تجاری', 'Kunci Pedagang', 'మర్చంట్ కీ', 'Merchant Key', 'વેપારી કી', 'Klucz sprzedawcy', 'Торговельний ключ', 'ਵਪਾਰੀ ਕੁੰਜੀ', 'Cheia comerciantului', 'ကုန်သည် Key ကို', 'Oluṣowo Iṣowo', 'Maɓalli mai ciniki'),
(727, 'merchant_mid', 'Merchant MID', 'মার্চেন্ট মিড্', 'Merchant MID', 'Merchant MID', 'व्यापारी एमआईडी', 'مرچنٹ MID', '商家MID', 'Merchant MID', 'Comerciante MID', 'Merchant MID', 'Marchand MID', '판매자 MID', 'Händler-MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'MEDIUS mercator', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'مرچنت MID', 'Merchant MID', 'మర్చెంట్ MID', 'Merchant MID', 'મર્ચન્ટ MID', 'Merchant MID', 'Merchant MID', 'ਵਪਾਰੀ ਮਿਡ', 'Meridian MID', 'ကုန်သည်လယ်', 'Iṣowo Iṣowo', 'MID M'),
(728, 'paytm', 'PayTM', 'পে টিম', 'PayTM', 'PayTM', 'Paytm', 'پی ٹی ٹی ایم', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'BezahlenTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'Paytm', 'Paytm', 'પેટીએમ', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM'),
(729, 'website', 'Website', 'ওয়েবসাইট', 'Sitio web', 'موقع الكتروني', 'वेबसाइट', 'ویب سائٹ', '网站', 'ウェブサイト', 'Local na rede Internet', 'Веб-сайт', 'Site Internet', '웹 사이트', 'Webseite', 'Sito web', 'เว็บไซต์', 'Weboldal', 'Website', 'website', 'Situs web', 'Web sitesi', 'Δικτυακός τόπος', 'سایت اینترنتی', 'Laman web', 'వెబ్సైట్', 'இணையதளம்', 'વેબસાઇટ', 'Stronie internetowej', 'Веб-сайт', 'ਵੈੱਬਸਾਇਟ', 'website', 'ဝက်ဘ်ဆိုက်', 'Aaye ayelujara', 'Yanar Gizo'),
(730, 'text_local', 'Text Local', 'টেক্সট লোকাল', 'Texto local', 'نص محلي', 'पाठ स्थानीय', 'متن مقامی', '文字本地', 'テキストローカル', 'Texto local', 'Текстовые локальные', 'Texte local', '텍스트 로컬', 'Text lokal', 'Testo locale', 'ข้อความ Local', 'Helyi szöveg', 'Tekst Lokaal', 'Locus text', 'Teks Lokal', 'Metin Yerel', 'Κείμενο τοπικό', 'متن محلی', 'Teks Tempatan', 'స్థానిక టెక్స్ట్', 'உள்ளூர் உரை', 'ટેક્સ્ટ લોકલ', 'Tekst lokalny', 'Текст локально', 'ਟੈਕਸਟ ਸਥਾਨਕ', 'Text local', 'စာသားမဒေသခံ', 'Ọrọ Agbegbe', 'Text Local'),
(731, 'hash_key', 'Hash Key', 'হ্যাশ কী', 'Clave hash', 'مفتاح التجزئة', 'हैश कुंजी', 'ہش کلیدی', '散列键', 'ハッシュキー', 'Chave de hash', 'Хэш-ключ', 'Touche dièse', '해시 키', 'Hash-Schlüssel', 'Tasto cancelletto', 'คีย์แฮช', 'Hash gomb', 'Hash sleutel', 'Key Nullam', 'Kunci Hash', 'Kare tuşu', 'Κλειδί Hash', 'کلید هش', 'Hash Key', 'హాష్ కీ', 'ஹாஷ் கீ', 'હેશ કી', 'Klucz skrótu', 'Hash Key', 'ਹੈਸ਼ ਕੁੰਜੀ', 'Tasta Diez', 'hash Key ကို', 'Bọtini Iwọn', 'Hash Key'),
(732, 'sms_country', 'SMS Country', 'এস এম এস কান্ট্রি', 'País SMS', 'بلد SMS', 'एसएमएस देश', 'ایس ایم ایس ملک', 'SMS国家', 'SMS国', 'País SMS', 'Страна SMS', 'SMS Pays', 'SMS 국가', 'SMS Land', 'Paese SMS', 'ประเทศ SMS', 'SMS ország', 'SMS-land', 'SMS patriae', 'Negara SMS', 'SMS Ülke', 'SMS Χώρα', 'اس ام اس کشور', 'SMS Negara', 'SMS దేశం', 'SMS நாடு', 'એસએમએસ દેશ', 'Kraj SMS', 'SMS Країна', 'ਐਸਐਮਐਸ ਦੇਸ਼', 'Țara SMS', 'SMS ကိုနိုင်ငံ', 'SMS Latin', 'SMS Country'),
(733, 'school_code', 'School Code', 'স্কুল কোড', 'Código escolar', 'كود مدرسة', 'स्कूल कोड', 'سکول کوڈ', '学号', '学校コード', 'Código escolar', 'Школьный код', 'Code détablissement', '학교 코드', 'Schulcode', 'Codice della scuola', 'รหัสโรงเรียน', 'Iskolák kódja', 'Schoolcode', 'Code School', 'Kode Sekolah', 'Okul Kodu', 'Σχολικός κώδικας', 'کد مدرسه', 'Kod Sekolah', 'స్కూల్ కోడ్', 'பள்ளி குறியீடு', 'શાળા કોડ', 'Kod szkoły', 'Шкільний кодекс', 'ਸਕੂਲ ਕੋਡ', 'Codul școlii', 'ကျောင်းစာအုပ် Code ကို', 'Koodu Ile-iwe', 'Lambar Makarantar'),
(734, 'enable_rtl', 'Enable RTL', 'এনাবল আর টি এল', 'Activar RTL', 'تمكين RTL', 'आरटीएल सक्षम करें', 'RTL کو فعال کریں', '启用RTL', 'RTLを有効にする', 'Ativar RTL', 'Включить RTL', 'Activer RTL', 'RTL 사용', 'Aktivieren Sie RTL', 'Abilita RTL', 'เปิดใช้งาน RTL', 'Engedélyezze az RTL engedélyezését', 'Schakel RTL in', 'Admitte License', 'Aktifkan RTL', 'RTLyi etkinleştir', 'Ενεργοποίηση RTL', 'فعال کردن RTL', 'Dayakan RTL', 'RTL ప్రారంభించు', 'RTL ஐ இயக்கு', 'RTL સક્ષમ કરો', 'Włącz RTL', 'Увімкнути RTL', 'RTL ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ', 'Activează RTL', 'ဘန်ဝစ် Enable', 'Mu RTL ṣiṣẹ', 'Enable RTL'),
(735, 'enable_frontend', 'Enable Frontend', 'এনাবল ফ্রন্টএন্ড', 'Habilitar Frontend', 'تمكين الواجهة الأمامية', 'Frontend सक्षम करें', 'فرنٹ اینڈ کو فعال کریں', '启用前端', 'フロントエンドを有効にする', 'Ativar Frontend', 'Включить Frontend', 'Activer le frontend', '프론트 엔드 사용', 'Frontend aktivieren', 'Abilita Frontend', 'เปิดใช้ Frontend', 'Engedélyezze a Frontendet', 'Frontend inschakelen', 'Admitte Frontend', 'Aktifkan Frontend', 'Ön Uçu Etkinleştir', 'Ενεργοποιήστε το Frontend', 'فعال کردن ظاهر', 'Dayakan Frontend', 'ఫ్రంటెండ్ని ప్రారంభించండి', 'Frontend ஐ இயக்கு', 'અગ્રભાગને સક્ષમ કરો', 'Włącz interfejs użytkownika', 'Увімкнути Frontend', 'ਫਰੰਟਐਂਡ ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ', 'Activați Frontend', 'Frontend Enable', 'Mu Frontend ṣiṣẹ', 'Ƙara Farfaɗa'),
(736, 'session_start_month', 'Session Start Month', 'সেশন শুরু মাস', 'Mes de inicio de sesión', 'شهر بدء الجلسات', 'सत्र प्रारंभ महीना', 'سیشن شروع ماہ', '会议开始月', 'セッション開始月', 'Mês de Início da Sessão', 'Начальный месяц сеанса', 'Mois de début de la session', '세션 시작 달', 'Sitzungsstartmonat', 'Mese di inizio sessione', 'เดือนเริ่มต้นของเซสชัน', 'Session Start Month', 'Sessie startmaand', 'Satus mense Sessio', 'Bulan Awal Sesi', 'Oturum Başlangıç Ayı', 'Μήνας Έναρξης Συνόδου', 'ماه شروع جلسه', 'Bulan Mula Sesi', 'సెషన్ ప్రారంభం నెల', 'அமர்வு தொடக்க மாதம்', 'સત્ર પ્રારંભ મહિનો', 'Miesiąc rozpoczęcia sesji', 'Місяць заснування сесії', 'ਸੈਸ਼ਨ ਸ਼ੁਰੂ ਕਰੋ ਮਹੀਨਾ', 'Luna de începere a sesiunii', 'session Start ကိုလ', 'Akoko Ibere Akọ', 'Zama Saiti'),
(737, 'session_end_month', 'Session End Month', 'সেশন শেষ মাস', 'Mes de final de sesión', 'جلسة نهاية الشهر', 'सत्र अंत महीने', 'اجلاس اختتام ماہ', '会议结束月', 'セッション終了月', 'Mês Final da Sessão', 'Конечный месяц сеанса', 'Session Fin du mois', '세션 종료 월', 'Sitzungsende Monat', 'Sessione Fine mese', 'เดือนสิ้นสุดเซสชัน', 'Session End Hónap', 'Session End Month', 'Sessio finem mense', 'Bulan Akhir Sesi', 'Oturum Bitiş Ayı', 'Μήνας λήξης περιόδου σύνδεσης', 'ماه پایان جلسه', 'Bulan Tamat Sesi', 'సెషన్ ముగింపు నెల', 'அமர்வு முடிவு மாதம்', 'સત્ર સમાપ્તિ મહિનો', 'Miesiąc zakończenia sesji', 'Session End Month', 'ਸੈਸ਼ਨ ਅੰਤ ਦੀ ਮਹੀਨਾ', 'Luna sfârșitului sesiunii', 'session အဆုံးလ', 'Ipari Ilana Ipade', 'Ƙarshen Watan Ƙarshe'),
(738, 'admission_no', 'Admission  No', 'ভর্তি নম্বর', 'Admisión no', 'رقم القبول', 'प्रवेश संख्या', 'داخلہ نمبر', '入场号', '入場無料', 'Admissão Não', 'Вход Нет', 'Admission No', '입장료 없음', 'Eintritt Nr', 'Ingresso n', 'ค่าเข้าชม', 'Felvételi száma', 'Toegangsnummer', 'Praesent nulla', 'Penerimaan No', 'Giriş No', 'Εισαγωγή αριθ', 'پذیرش شماره', 'Kemasukan No', 'అడ్మిషన్ సంఖ్య', 'சேர்க்கை எண்', 'પ્રવેશ નં', 'Miesiąc zakończenia sesji', 'Вхід №', 'ਦਾਖਲਾ ਨੰਬਰ', 'Admitere nr', 'ဝန်ခံချက်အဘယ်သူမျှမ', 'Gbigbawọle Bẹẹkọ', 'Shiga Aa'),
(740, 'age', 'Age', 'বয়স', 'Años', 'عمر', 'आयु', 'عمر', '年龄', '年齢', 'Era', 'Возраст', 'Âge', '나이', 'Alter', 'Età', 'อายุ', 'Kor', 'Leeftijd', 'age', 'Usia', 'Yaş', 'Ηλικία', 'سن', 'Umur', 'వయసు', 'வயது', 'ઉંમર', 'Wiek', 'Вік', 'ਉਮਰ', 'Vârstă', 'အသက်အရွယ်', 'Ọjọ ori', 'Shekaru'),
(741, 'transfer', 'Transfer', 'হস্তান্তর', 'Transferir', 'نقل', 'स्थानांतरण', 'منتقلی', '转让', '転送', 'Transferir', 'Перевод', 'Transfert', '이전', 'Transfer', 'Trasferimento', 'โอน', 'Átruházás', 'Overdracht', 'De translatione', 'Transfer', 'Aktar', 'ΜΕΤΑΦΟΡΑ', 'انتقال', 'Pemindahan', 'ట్రాన్స్ఫర్', 'மாற்றம்', 'પરિવહન', 'Transfer', 'Трансфер', 'ਟ੍ਰਾਂਸਫਰ ਕਰੋ', 'Transfer', 'လွှဲပြောင်း', 'Gbigbe lọ', 'Canja wurin'),
(742, 'health_condition', 'Health Condition', 'স্বাস্থ্যের অবস্থা', 'Estado de salud', 'الحالة الصحية', 'स्वास्थ्य की स्थिति', 'صحت کی کیفیت', '健康状况', '健康状態', 'Condição de saúde', 'Состояние здоровья', 'État de santé', '건강 상태', 'Gesundheitszustand', 'Condizione di salute', 'เงื่อนไขสุขภาพ', 'Egészségi állapot', 'Gezondheid', 'salutem Description', 'Kondisi kesehatan', 'Sağlık durumu', 'Η κατάσταση της υγείας', 'وضعیت سلامتی', 'Keadaan kesihatan', 'ఆరోగ్య స్థితి', 'உடல் நிலை', 'આરોગ્યની સ્થિતિ', 'Stan zdrowia', 'Стан здоровя', 'ਸਿਹਤ ਦੀ ਸਥਿਤੀ', 'Starea de sănătate', 'ကနျြးမာရေးအခြေအနေ', 'Ipo ilera', 'Yanayin Lafiya'),
(743, 'national_id', 'National ID', 'জাতীয় আইডি', 'Identificación nacional', 'الهوية الوطنية', 'राष्ट्रीय पहचान पत्र', 'قومی شناختی', '国民身份证', '国民ID', 'identidade nacional', 'Национальный идентификатор', 'carte didentité', '국립 ID', 'Personalausweis', 'ID nazionale', 'รหัสประจำตัวประชาชน', 'Nemzeti azonosító', 'Nationaal ID', 'National ID', 'ID Nasional', 'Ulusal Kimliği', 'Εθνική ταυτότητα', 'کد ملی', 'ID kebangsaan', 'జాతీయ గుర్తింపు', 'தேசிய ஐடி', 'રાષ્ટ્રીય ID', 'Dowód osobisty', 'Національний ID', 'ਰਾਸ਼ਟਰੀ ਆਈਡੀ', 'buletin', 'အမျိုးသား ID ကို', 'ID orile-ede', 'ID na kasa'),
(744, 'relation_with', 'Relation With Guardian', 'গার্ডিয়ান সঙ্গে সম্পর্ক', 'Relación con Guardian', 'العلاقة مع الجارديان', 'अभिभावक के साथ संबंध', 'گارڈین کے ساتھ تعلقات', '与卫报的关系', 'ガーディアンとの関係', 'Relação Com Guardião', 'Связь с опекуном', 'Relation avec Guardian', '가디언과의 관계', 'Beziehung mit dem Wächter', 'Relazione con Guardian', 'ความสัมพันธ์กับ Guardian', 'Kapcsolat az Őrzővel', 'Relatie met Guardian', 'In relatione Custodes', 'Hubungan dengan Guardian', 'Guardian ile İlişkisi', 'Σχέση με τον Κηδεμόνα', 'رابطه با نگهبان', 'Hubungan dengan Guardian', 'గార్డియన్తో సంబంధం', 'கார்டியன் உடன் உறவு', 'ગાર્ડિયન સાથે સંબંધ', 'Relacja z opiekunem', 'Відношення до опікуна', 'ਗਾਰਡੀਅਨ ਨਾਲ ਸਬੰਧ', 'Relația cu Gardianul', 'ဂါးဒီးယန်းသတင်းစာနှင့်ဆက်ဆံရေး', 'Ibasepo pẹlu Alagbato', 'Abota da Guardian'),
(745, 'education', 'Education', 'শিক্ষা', 'Educación', 'التعليم', 'शिक्षा', 'تعلیم', '教育', '教育', 'Educação', 'образование', 'Éducation', '교육', 'Bildung', 'Formazione scolastica', 'การศึกษา', 'Oktatás', 'Onderwijs', 'Education', 'pendidikan', 'Eğitim', 'Εκπαίδευση', 'تحصیلات', 'Pendidikan', 'చదువు', 'கல்வி', 'શિક્ષણ', 'Edukacja', 'Освіта', 'ਸਿੱਖਿਆ', 'Educaţie', 'ပညာရေး', 'Eko', 'Ilimi'),
(746, 'information', 'Information', 'তথ্য', 'Información', 'معلومات', 'जानकारी', 'معلومات', '信息', '情報', 'Em formação', 'Информация', 'Information', '정보', 'Information', 'Informazione', 'ข้อมูล', 'Információ', 'Informatie', 'Information', 'Informasi', 'Bilgi', 'Πληροφορίες', 'اطلاعات', 'Maklumat', 'సమాచారం', 'தகவல்', 'માહિતી', 'Informacja', 'Інформація', 'ਜਾਣਕਾਰੀ', 'informație', 'သတင်းအချက်အလက်', 'Alaye', 'Bayani'),
(747, 'basic', 'Basic', 'মৌলিক', 'BASIC', 'الأساسية', 'बुनियादी', 'بنیادی', '基本', 'ベーシック', 'Basic', 'основной', 'De base', '기본', 'Basic', 'Di base', 'ขั้นพื้นฐาน', 'Alapvető', 'basis-', 'basic', 'Dasar', 'Temel', 'Βασικός', 'پایه ای', 'Asas', 'ప్రాథమిక', 'அடிப்படை', 'પાયાની', 'Podstawowy', 'Основний', 'ਬੇਸਿਕ', 'De bază', 'အခြေခံပညာ', 'Ipilẹ', 'Basic'),
(748, 'other', 'Other', 'অন্যান্য', 'Otro', 'آخر', 'अन्य', 'دیگر', '其他', 'その他', 'De outros', 'Другие', 'Autre', '다른', 'Andere', 'Altro', 'อื่น ๆ', 'Más', 'anders', 'alius', 'Lain', 'Diğer', 'Αλλα', 'دیگر', 'Lain-lain', 'ఇతర', 'மற்ற', 'અન્ય', 'Inny', 'Інший', 'ਹੋਰ', 'Alte', 'အခြား', 'Miiran', 'Sauran'),
(749, 'contact', 'Contact', 'যোগাযোগ', 'Contacto', 'اتصل', 'संपर्क करें', 'رابطہ کریں', '联系', '接触', 'Contato', 'контакт', 'Contact', '접촉', 'Kontakt', 'Contatto', 'ติดต่อ', 'Kapcsolatba lépni', 'Contact', 'Contact', 'Kontak', 'Temas', 'Επικοινωνία', 'تماس', 'Hubungi', 'సంప్రదించండి', 'தொடர்பு', 'સંપર્ક કરો', 'Kontakt', 'Звязатися', 'ਸੰਪਰਕ ਕਰੋ', 'a lua legatura', 'ထိတှေ့', 'Kan si', 'Saduwa'),
(750, 'academic', 'Academic', 'একাডেমিক', 'Académico', 'أكاديمي', 'अकादमिक', 'تعلیمی', '学术的', 'アカデミック', 'Acadêmico', 'академический', 'Académique', '학생', 'Akademisch', 'Accademico', 'วิชาการ', 'Akadémiai', 'Academic', 'academic', 'Akademik', 'Akademik', 'Ακαδημαϊκός', 'علمی', 'Akademik', 'అకడమిక్', 'அகாடமிக்', 'શૈક્ષણિક', 'Akademicki', 'Академічний', 'ਅਕਾਦਮਿਕ', 'Academic', 'ပညာရေးဆိုင်ရာ', 'Ile ẹkọ', 'Kwalejin'),
(758, 'next_year', 'Next Year', 'আগামী বছর', 'El próximo año', 'العام القادم', 'अगले वर्ष', 'اگلے سال', '明年', '来年', 'Próximo ano', 'Следующий год', 'Lannée prochaine', '내년', 'Nächstes Jahr', 'Lanno prossimo', 'ปีหน้า', 'Következő év', 'Volgend jaar', 'Proximo anno', 'Tahun depan', 'Gelecek yıl', 'Του χρόνου', 'سال آینده', 'Tahun hadapan', 'వచ్చే సంవత్సరం', 'அடுத்த வருடம்', 'આગામી વર્ષ', 'Następny rok', 'Наступного року', 'ਅਗਲੇ ਸਾਲ', 'Anul urmator', 'နောက်နှစ်', 'Odun to nbo', 'Kashe na gaba'),
(759, 'manage_next_year_student', 'Manage Next Year Student', 'পরবর্তী বছর ছাত্র পরিচালনা করুন', 'Administrar estudiante del próximo año', 'إدارة طالب العام القادم', 'अगले वर्ष छात्र को प्रबंधित करें', 'اگلے سال کے طالب علم کا انتظام کریں', '管理明年学生', '来年の学生を管理する', 'Gerenciar o aluno do próximo ano', 'Управление Студентом следующего года', 'Gérer létudiant de lannée prochaine', '다음 학년 학생 관리', 'Verwalten Sie nächstes Jahr Student', 'Gestisci studente del prossimo anno', 'จัดการนักศึกษาปีถัดไป', 'A következő év hallgatójának kezelése', 'Volgend jaar student beheren', 'Curo Next Year Student', 'Kelola Siswa Tahun Depan', 'Gelecek Yıl Öğrenci Yönet', 'Διαχείριση φοιτητής επόμενου έτους', 'مدیریت دانش آموز سال آینده', 'Mengurus Pelajar Tahun Depan', 'తదుపరి ఇయర్ స్టూడెంట్ను నిర్వహించండి', 'அடுத்த ஆண்டு மாணவர் நிர்வகி', 'આગામી વર્ષ વિદ્યાર્થી મેનેજ કરો', 'Zarządzaj przyszłym studentem', 'Управління студентом наступного року', 'ਅਗਲੇ ਸਾਲ ਵਿਦਿਆਰਥੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați elevul anului viitor', 'Next ကိုတစ်နှစ်တာကျောင်းသားစီမံခန့်ခွဲရန်', 'Ṣakoso awọn ọmọ-iwe tókàn', 'Sarrafa Ɗabban Kashe na gaba'),
(760, 'enter_purchase_code', 'Enter Purchase Code', 'ক্রয় কোড লিখুন', 'Ingrese el código de compra', 'أدخل رمز الشراء', 'खरीद कोड दर्ज करें', 'خریداری کوڈ درج کریں', '输入购买代码', '購入コードを入力', 'Digite o código de compra', 'Введите код покупки', 'Entrer le code dachat', '구매 코드 입력', 'Geben Sie den Kaufcode ein', 'Inserisci il codice di acquisto', 'ป้อนรหัสการสั่งซื้อ', 'Írja be a beszerzési kódot', 'Voer de aankoopcode in', 'Enter code Purchase', 'Masukkan Kode Pembelian', 'Satınalma kodunu giriniz', 'Εισαγάγετε τον κωδικό αγοράς', 'کد خرید را وارد کنید', 'Masukkan Kod Pembelian', 'కొనుగోలు కోడ్ను నమోదు చేయండి', 'கொள்முதல் கோடு உள்ளிடவும்', 'ખરીદી કોડ દાખલ કરો', 'Wprowadź kod zakupu', 'Введіть код покупки', 'ਖਰੀਦ ਕੋਡ ਦਾਖਲ ਕਰੋ', 'Introduceți codul de cumpărare', 'အရစ်ကျ Code ကိုရိုက်ထည့်ပါ', 'Tẹ koodu rira', 'Shigar da Dokar Siya'),
(761, 'purchase_code', 'Purchase Code', 'ক্রয় কোড', 'Código de compra', 'كود شراء', 'खरीद कोड', 'خریداری کوڈ', '购买代码', '購入コード', 'Código de Compra', 'Код покупки', 'Code dachat', '구매 코드', 'Kaufcode', 'Codice dacquisto', 'รหัสการสั่งซื้อ', 'Vásárlási kód', 'Aankoopcode', 'Purchase Code', 'Kode Pembelian', 'Satın alma kodu', 'Κωδικός αγοράς', 'کد خرید', 'Kod Pembelian', 'కొనుగోలు కోడ్', 'கொள்முதல் கோட்', 'ખરીદી કોડ', 'Kup kod', 'Код покупок', 'ਖਰੀਦ ਕੋਡ', 'Codul de cumpărare', 'အရစ်ကျ Code ကို', 'Koodu rira', 'Katin sayen'),
(762, 'parent', 'Parent', 'পিতামাতা', 'Padre', 'الأبوين', 'माता-पिता', 'والدین', '亲', '親', 'Pai', 'родитель', 'Parent', '부모의', 'Elternteil', 'Genitore', 'ผู้ปกครอง', 'Szülő', 'Ouder', 'parens', 'Induk', 'ebeveyn', 'Μητρική εταιρεία', 'والدین', 'Ibu bapa', 'మాతృ', 'பெற்றோர்', 'માતાપિતા', 'Rodzic', 'Батько', 'ਮਾਪੇ', 'Mamă', 'မိဘ', 'Obi', 'Uba'),
(763, 'written', 'Written', 'লিখিত', 'Escrito', 'مكتوب', 'लिखा हुआ', 'لکھا ہوا', '书面', '書かれた', 'Escrito', 'написано', 'Écrit', '쓴', 'Geschrieben', 'Scritto', 'เขียน', 'Írott', 'Geschreven', 'Scriptum', 'Tertulis', 'Yazılı', 'Γραπτός', 'نوشته شده است', 'Ditulis', 'రాసిన', 'எழுதப்பட்டது', 'લખેલું', 'Pisemny', 'Написано', 'ਲਿਖਿਆ ਗਿਆ', 'Scris', 'Written', 'Kọwe', 'An rubuta'),
(764, 'practical', 'Practical', 'ব্যবহারিক', 'Práctico', 'عملي', 'व्यावहारिक', 'عملی', '实际的', '実践的', 'Prático', 'практический', 'Pratique', '실용적인', 'Praktisch', 'pratico', 'ประยุกต์', 'Gyakorlati', 'praktisch', 'practical', 'Praktis', 'Pratik', 'Πρακτικός', 'کاربردی', 'Praktikal', 'ప్రాక్టికల్', 'நடைமுறை', 'પ્રાયોગિક', 'Praktyczny', 'Практичний', 'ਵਿਹਾਰਕ', 'Practic', 'လက်တွေ့', 'Ilowo', 'M'),
(765, 'tutorial', 'Tutorial', 'টিউটরিআল', 'Tutorial', 'الدورة التعليمية', 'ट्यूटोरियल', 'سبق', '教程', 'チュートリアル', 'Tutorial', 'Руководство', 'Didacticiel', '지도 시간', 'Tutorial', 'lezione', 'เกี่ยวกับการสอน', 'oktatói', 'Tutorial', 'doceo', 'Tutorial', 'Eğitimi', 'Φροντιστήριο', 'آموزش', 'Tutorial', 'ట్యుటోరియల్', 'பயிற்சி', 'ટ્યુટોરીયલ', 'Seminarium', 'Підручник', 'ਟਿਊਟੋਰਿਅਲ', 'Tutorial', 'tutorial', 'Ibaṣepọ', 'Koyawa'),
(766, 'viva', 'Viva', 'ভাইভা', 'Viva', 'تحيا', 'सलाम', 'زبانی', '欢呼声', 'ビバ', 'Viva', 'да здравствует', 'Viva', '만세', 'Viva', 'Viva', 'ขอให้มีอายุยืนยาว', 'éljen', 'Viva', 'Vivaldi', 'Viva', 'sözlü', 'Viva', 'ویوا', 'Viva', 'వివా', 'விவா', 'વિવા', 'Wiwat', 'Віва', 'ਵਿਵਾ', 'Viva', 'Viva', 'Viva', 'Viva'),
(767, 'mark', 'Mark', 'মার্ক', 'marca', 'علامة', 'निशान', 'مارک', '标记', 'マーク', 'Marca', 'отметка', 'marque', '표', 'Kennzeichen', 'marchio', 'เครื่องหมาย', 'Mark', 'Mark', 'Evangelium secundum Marcum', 'Menandai', 'işaret', 'Σημάδι', 'علامت', 'Mark', 'మార్క్', 'மார்க்', 'ચિહ્ન', 'znak', 'Марка', 'ਮਾਰਕ', 'marcă', 'အမှတ်', 'Samisi', 'Mark'),
(768, 'obtain', 'Obtain', 'প্রাপ্ত', 'Obtener', 'الحصول على', 'प्राप्त', 'حاصل کریں', '获得', '入手します', 'Obtivermos', 'получать', 'Obtenir', '얻다', 'Erhalten', 'Ottenere', 'ได้รับ', 'Szerezze', 'Verkrijgen', 'Vitam', 'Memperoleh', 'elde etmek', 'Αποκτώ', 'به دست آوردن', 'Dapatkan', 'పొందటానికి', 'பெறுதல்', 'મેળવો', 'Uzyskać', 'Отримати', 'ਪ੍ਰਾਪਤ ਕਰੋ', 'Obține', 'ရရှိသည်', 'Gba', 'Samun'),
(769, 'result_card', 'Result Card', 'ফলাফল কার্ড', 'Tarjeta de resultado', 'بطاقة النتيجة', 'परिणाम कार्ड', 'نتیجہ کارڈ', '结果卡', '結果カード', 'Cartão de Resultado', 'Карта результатов', 'Carte de résultat', '결과 카드', 'Ergebniskarte', 'Scheda dei risultati', 'การ์ดผลลัพธ์', 'Eredménykártya', 'Resultaatkaart', 'effectus Card', 'Kartu Hasil', 'Sonuç Kartı', 'Κάρτα αποτελεσμάτων', 'نتیجه کارت', 'Kad Keputusan', 'ఫలితం కార్డ్', 'முடிவு அட்டை', 'પરિણામ કાર્ડ', 'Karta wyników', 'Результат картки', 'ਨਤੀਜਾ ਕਾਰਡ', 'Cardul de rezultate', 'ရလဒ် Card ကို', 'Kaadi Kaadi', 'Katin Amintacce'),
(770, 'bus_stop', 'Bus Stop', 'বাস স্টপ', 'Parada de autobús', 'موقف باص', 'बस स्टॉप', 'بس اسٹاپ', '公交车站', 'バス停', 'Ponto de ônibus', 'Автобусная остановка', 'Arrêt de bus', '버스 정류장', 'Bushaltestelle', 'Fermata dellautobus', 'ป้ายรถเมล์', 'Buszmegálló', 'Bushalte', 'bus Sistere', 'Pemberhentian bus', 'Otobüs durağı', 'Στάση λεωφορείου', 'ایستگاه اتوبوس', 'Perhentian bas', 'బస్ స్టాప్', 'பேருந்து நிறுத்தம்', 'બસ સ્ટોપ', 'Przystanek autobusowy', 'Автобусна зупинка', 'ਬੱਸ ਅੱਡਾ', 'Stație de autobuz', 'ဘတ်စ်ကားမှတ်တိုင်', 'Ibudo oko', 'Bus Stop'),
(771, 'grade', 'Grade', 'গ্রেড', 'Grado', 'درجة', 'ग्रेड', 'گریڈ', '年级', 'グレード', 'Grau', 'класс', 'Qualité', '학년', 'Klasse', 'Grado', 'เกรด', 'Fokozat', 'Rang', 'gradus', 'Kelas', 'sınıf', 'Βαθμός', 'مقطع تحصیلی', 'Gred', 'గ్రేడ్', 'தர', 'ગ્રેડ', 'Stopień', 'Оцінка', 'ਗਰੇਡ', 'calitate', 'grade', 'Ipele', 'Grade'),
(772, 'point', 'Point', 'পয়েন্ট', 'Punto', 'نقطة', 'बिंदु', 'پوائنٹ', '点', 'ポイント', 'Ponto', 'точка', 'Point', '포인트', 'Punkt', 'Punto', 'จุด', 'Pont', 'Punt', 'Point', 'Titik', 'Puan', 'Σημείο', 'نقطه', 'Titik', 'పాయింట్', 'புள்ளி', 'બિંદુ', 'Punkt', 'Точка', 'ਬਿੰਦੂ', 'Punct', 'အမှတ်', 'Ojuami', 'Point'),
(773, 'lowest', 'Lowest', 'সর্বনিম্ন', 'Más bajo', 'أدنى', 'सबसे कम', 'سب سے کم', '最低', '最低', 'Menor', 'низший', 'Le plus bas', '최저', 'Niedrigste', 'minore', 'ต่ำที่สุด', 'A legalacsonyabb', 'laagste', 'lowest', 'Terendah', 'En düşük', 'Χαμηλότερο', 'پایین ترین', 'Terendah', 'అత్యల్ప', 'குறைந்த', 'ન્યૂનતમ', 'Najniższy', 'Найменший', 'ਸਭ ਤੋਂ ਘੱਟ', 'Cel mai mic', 'နိမ့်ဆုံး', 'Ti o kere julọ', 'Ƙananan'),
(774, 'height', 'Height', 'সর্বোচ্চ', 'Altura', 'ارتفاع', 'ऊंचाई', 'اونچائی', '高度', '高さ', 'Altura', 'Высота', 'la taille', '신장', 'Höhe', 'Altezza', 'ความสูง', 'Magasság', 'Hoogte', 'altitudo', 'Tinggi', 'Yükseklik', 'Υψος', 'ارتفاع', 'Ketinggian', 'ఎత్తు', 'உயரம்', 'ઊંચાઈ', 'Wysokość', 'Висота', 'ਕੱਦ', 'Înălţime', 'အမြင့်', 'Iga', 'Hawan'),
(775, 'position', 'Position', 'অবস্থান', 'Posición', 'موضع', 'पद', 'مقام', '位置', 'Position', 'Posição', 'Должность', 'Position', '위치', 'Position', 'Posizione', 'ตำแหน่ง', 'Pozíció', 'Positie', 'statum', 'Posisi', 'pozisyon', 'Θέση', 'موقعیت', 'Jawatan', 'స్థానం', 'நிலை', 'પોઝિશન', 'Pozycja', 'Позиція', 'ਸਥਿਤੀ', 'Poziţie', 'ရာထူး', 'Ipo', 'Matsayi'),
(776, 'merit_list', 'Merit List', 'মেধা তালিকা', 'Lista de mérito', 'قائمة الاستحقاق', 'मेरिट सूची', 'میرٹ کی فہرست', '优点列表', 'メリットリスト', 'Lista de Mérito', 'Список заслуг', 'Liste de mérite', '장점 목록', 'Leistungsliste', 'Lista dei Meriti', 'รายชื่อบุญ', 'Érdemjegy', 'Merit List', 'merito List', 'Daftar Kelebihan', 'Liyakat listesi', 'Λίστα αξιών', 'فهرست شایستگی', 'Senarai Merit', 'మెరిట్ జాబితా', 'தகுதி பட்டியல்', 'મેરિટ લિસ્ટ', 'Lista zasłużonych', 'Список заслуг', 'ਮੈਰਿਟ ਲਿਸਟ', 'Lista de merit', 'ကောင်းမှုကုသိုလ်များစာရင်း', 'Àtòkọ Ẹrọ', 'Lissafin Ƙasa'),
(777, 'passed', 'Passed', 'উত্তীর্ণ', 'Pasado', 'مرت', 'बीतने के', 'منظور', '通过', '合格', 'Passado', 'Прошло', 'Passé', '합격', 'Bestanden', 'Passato', 'ผ่าน', 'elmúlt', 'Geslaagd', 'transierunt', 'Lulus', 'geçti', 'Πέρασε', 'گذشت', 'Lulus', 'Passed', 'கடந்து', 'પસાર થઈ', 'Przeszedł', 'Пройдено', 'ਪਾਸ ਹੋਇਆ', 'A trecut', 'လွန်', 'Ti kọja', 'An wuce'),
(778, 'failed', 'Failed', 'ব্যর্থ', 'Ha fallado', 'فشل', 'अनुत्तीर्ण होना', 'ناکام', '失败', '失敗', 'Falhou', 'Не смогли', 'Échoué', '실패한', 'Gescheitert', 'mancato', 'ล้มเหลว', 'nem sikerült', 'mislukt', 'Deficio', 'Gagal', 'Başarısız oldu', 'Απέτυχε', 'ناموفق', 'Gagal', 'విఫలమైంది', 'தோல்வி', 'નિષ્ફળ થયું', 'Nie powiodło się', 'Помилка', 'ਅਸਫਲ', 'A eșuat', 'Failed', 'Kuna', 'Ba a yi nasarar ba'),
(779, 'manage_result', 'Manage Result', 'ফলাফল পরিচালনা করুন', 'Administrar el resultado', 'إدارة النتيجة', 'परिणाम प्रबंधित करें', 'نتائج کا نظم کریں', '管理结果', '結果を管理する', 'Gerenciar resultado', 'Управление результатами', 'Gérer le résultat', '결과 관리', 'Ergebnis verwalten', 'Gestisci risultato', 'จัดการผลลัพธ์', 'Eredmény kezelése', 'Resultaat beheren', 'curo results', 'Kelola Hasil', 'Sonucu Yönet', 'Διαχείριση αποτελεσμάτων', 'مدیریت نتیجه', 'Uruskan Keputusan', 'ఫలితాన్ని నిర్వహించండి', 'முடிவு நிர்வகி', 'પરિણામ મેનેજ કરો', 'Zarządzaj wynikiem', 'Управління результатом', 'ਨਤੀਜਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul', 'ရလဒ်စီမံခန့်ခွဲရန်', 'Ṣiṣe Abajade', 'Sarrafa sakamakon'),
(780, 'manage', 'Manage', 'পরিচালনা করুন', 'Gestionar', 'تدبير', 'प्रबंधित', 'انتظام کریں', '管理', '管理', 'Gerir', 'управлять', 'Gérer', '꾸리다', 'Verwalten', 'Gestire', 'จัดการ', 'kezel', 'beheren', 'curo', 'Mengelola', 'yönetme', 'Διαχειρίζονται', 'مدیریت کردن', 'Mengurus', 'నిర్వహించడానికి', 'நிர்வகிக்கவும்', 'મેનેજ કરો', 'Zarządzanie', 'Керувати', 'ਪ੍ਰਬੰਧ ਕਰਨਾ, ਕਾਬੂ ਕਰਨਾ', 'Administra', 'စီမံခန့်ခွဲရန်', 'Ṣakoso', 'Sarrafa'),
(781, 'admitted', 'Admitted', 'ভর্তি', 'Aceptado', 'اعترف', 'स्वीकार किया', 'اعتراف', '承认', '授与された', 'Admitido', 'Допускаются', 'Admis', '수락 한', 'Zugelassen', 'Ammesso', 'ที่ยอมรับ', 'Felvételt nyer', 'toegelaten', 'admissus', 'Mengakui', 'kabul edilmiş', 'Παράδεκτος', 'پذیرفته', 'Diterima', 'చేరినవారి', 'அனுமதிக்கப்பட்டார்', 'સ્વીકૃત', 'Przyznał', 'Прийнято', 'ਦਾਖਲ', 'Admis', 'ဝန်ခံ', 'Ti gba', 'Admitted'),
(782, 'promoted', 'Promoted', 'উন্নীত', 'Promovido', 'رقية', 'प्रचारित', 'فروغ دیا', '提拔', 'プロモート', 'Promovido', 'Повышен', 'Promu', '승격 된', 'Gefördert', 'Promossa', 'การเลื่อนตำแหน่ง', 'promotált', 'gepromoveerd', 'promoted', 'Dipromosikan', 'Tanıtılan', 'Προωθήθηκε', 'ترویج شده', 'Dipromosikan', 'ప్రమోట్', 'விளம்பர', 'બઢતી', 'Lansowany', 'Промотований', 'ਪ੍ਰਮੋਟ ਕੀਤਾ', 'Promovat', 'ရာထူးတိုး', 'Igbegaga', 'Ci gaba'),
(783, 'drop_out', 'Drop Out', 'বাদ পরা', 'Abandonar', 'أوقع', 'ड्रॉप आउट', 'باہر چھوڑ', '退出', '脱落', 'Cair fora', 'Выбывать', 'Abandonner', '탈락', 'Aussteigen', 'Buttare fuori', 'ปล่อยออก', 'Kidobni', 'Afvaller', 'EXSTILLO', 'Keluar', 'Bırakmak', 'Εγκαταλείπω', 'رها کردن', 'Tercicir', 'వదిలివేయడం', 'வெளியேற்று', 'છોડી દીધેલ', 'Wycofać się', 'Викинути', 'ਛੱਡ ਦੇਣਾ', 'Renunța', 'နှုတ်ထွက်သည်', 'Eniti o ko lati se nkan', 'Daina'),
(784, 'advanced', 'Advanced', 'অগ্রিম', 'Avanzado', 'المتقدمة', 'उन्नत', 'اعلی درجے کی', '高级', '上級', 'Avançado', 'продвинутый', 'Avancée', '많은', 'Fortgeschritten', 'Avanzate', 'สูง', 'Fejlett', 'gevorderd', 'provectus', 'Maju', 'ileri', 'Προχωρημένος', 'پیشرفته', 'Advanced', 'ఆధునిక', 'மேம்பட்ட', 'અદ્યતન', 'zaawansowane', 'Розширений', 'ਤਕਨੀਕੀ', 'Avansat', 'အဆင့်မြင့်', 'Ti ni ilọsiwaju', 'Na ci gaba'),
(785, 'collection', 'Collection', 'সংগ্রহ', 'Colección', 'مجموعة', 'संग्रह', 'مجموعہ', '采集', 'コレクション', 'Coleção', 'Коллекция', 'Collection', '수집', 'Sammlung', 'Collezione', 'ชุด', 'Gyűjtemény', 'Verzameling', 'collectio', 'Koleksi', 'Toplamak', 'Συλλογή', 'مجموعه', 'Koleksi', 'కలెక్షన్', 'சேகரிப்பு', 'સંગ્રહ', 'Kolekcja', 'Колекція', 'ਭੰਡਾਰ', 'Colectie', 'စုဆောင်းမှု', 'Gbigba', 'Tarin'),
(786, 'avg_of_all_exam', 'Average of All Exam', 'সব পরীক্ষার গড়', 'Promedio de todos los exámenes', 'متوسط كل الامتحانات', 'सभी परीक्षा का औसत', 'تمام امتحانوں کا اوسط', '所有考试的平均值', 'すべての試験の平均', 'Média de todos os exames', 'Среднее значение всего экзамена', 'Moyenne de tous les examens', '모든 시험의 평균', 'Durchschnitt aller Prüfungen', 'Media di tutti gli esami', 'ค่าเฉลี่ยของการสอบทั้งหมด', 'Átlagos összes vizsgája', 'Gemiddelde van alle examen', 'Omnes mediocris de nito', 'Rata-Rata Semua Ujian', 'Tüm sınavın ortalaması', 'Μέσος όρος όλων των εξετάσεων', 'میانگین امتحانات', 'Purata Semua Peperiksaan', 'అన్ని పరీక్షల సగటు', 'அனைத்து தேர்வு சராசரி', 'તમામ પરીક્ષાનું સરેરાશ', 'Średnia wszystkich egzaminów', 'Середній бал усіх іспитів', 'ਸਭ ਪ੍ਰੀਖਿਆ ਦਾ ਔਸਤ', 'Media tuturor examenelor', 'အားလုံးစာမေးပွဲ၏ပျမ်းမျှ', 'Iwọn ti Gbogbo Ayẹwo', 'Matsayin Duk Kwara'),
(787, 'only_of_fianl_exam', 'Only Based on Final Exam', 'শুধু ফাইনাল পরীক্ষার ভিত্তিতে', 'Solo basado en el examen final', 'يعتمد فقط على الاختبار النهائي', 'केवल अंतिम परीक्षा के आधार पर', 'صرف حتمی امتحان کی بنیاد پر', '仅基于期末考试', '最終試験のみに基づいて', 'Apenas com base no exame final', 'Только на основе итогового экзамена', 'Seulement basé sur lexamen final', '최종 시험에만 근거 함', 'Nur basierend auf der Abschlussprüfung', 'Solo in base allesame finale', 'ขึ้นอยู่กับการสอบปลายภาค', 'Csak a záróvizsga alapján', 'Alleen gebaseerd op eindexamen', 'Ex tantum Exam', 'Hanya Berdasarkan Ujian Akhir', 'Sadece Final Sınavına Dayalı', 'Βασίζεται μόνο στην τελική εξέταση', 'فقط بر اساس آزمون نهایی', 'Hanya Berdasarkan Peperiksaan Akhir', 'అంతిమ పరీక్షల ఆధారంగా మాత్రమే', 'இறுதி தேர்வு அடிப்படையில் மட்டுமே', 'માત્ર અંતિમ પરીક્ષા પર આધારિત', 'Tylko na podstawie egzaminu końcowego', 'Тільки на підставі остаточного іспиту', 'ਕੇਵਲ ਅੰਤਿਮ ਪ੍ਰੀਖਿਆ ਦੇ ਆਧਾਰ ਤੇ', 'Numai pe baza examenului final', 'သာနောက်ဆုံးစာမေးပွဲအပေါ် အခြေခံ.', 'Nikan Da lori Igbeyewo Ayẹwo', 'Binciken Bincike ne kawai'),
(788, 'template', 'Template', 'টেমপ্লেট', 'Modelo', 'قالب', 'खाका', 'سانچے', '模板', 'テンプレート', 'Modelo', 'шаблон', 'Modèle', '주형', 'Vorlage', 'Modello', 'แบบ', 'Sablon', 'Sjabloon', 'Home', 'Template', 'şablon', 'Πρότυπο', 'قالب', 'Templat', 'మూస', 'டெம்ப்ளேட்', 'ઢાંચો', 'Szablon', 'Шаблон', 'ਟੈਂਪਲੇਟ', 'Format', 'template', 'Awoṣe', 'Samfurin'),
(789, 'absent', 'Absent', 'অনুপস্থিত', 'Ausente', 'غائب', 'अनुपस्थित', 'غیر حاضر', '缺席', '不在', 'Ausente', 'Нет на месте', 'Absent', '없는', 'Abwesend', 'Assente', 'ขาด', 'Hiányzó', 'Afwezig', 'absens', 'Tidak hadir', 'Yok', 'Απών', 'غایب', 'Tidak hadir', 'ఆబ్సెంట్', 'இருக்காது', 'ગેરહાજર', 'Nieobecny', 'Відсутня', 'ਗੈਰਹਾਜ਼ਰੀ', 'Absent', 'မရှိသော', 'Ti ko ni', 'Ba ya nan'),
(790, 'due_fee', 'Due Fee', 'বাকি ফি', 'Cuota debida', 'الرسوم المستحقة', 'शुल्क शुल्क', 'وجہ سے فیس', '到期费用', '延滞料', 'Taxa devida', 'Должная плата', 'Frais dus', '연회비', 'Fällige Gebühr', 'Tariffa dovuta', 'ค่าธรรมเนียมครบกำหนด', 'Díjköteles', 'Verschuldigde vergoeding', 'ob pretium', 'Uang Muka', 'Due Ücreti', 'Προκαταβολή', 'پرداخت هزینه', 'Bayaran terhutang', 'ఈ రుసుము', 'கட்டண கட்டணம்', 'નિયુક્ત ફી', 'Należna opłata', 'Декларація', 'ਨਿਯੁਕਤੀ ਫੀਸ', 'Taxă de plată', 'ကြောင့်ကြေး', 'Nitori Owo', 'Saboda haraji'),
(791, 'activity_log', 'Activity Log', 'কার্য বিবরণ', 'Registro de actividades', 'سجل النشاطات', 'गतिविधि लॉग', 'سرگرمی لاگ ان', '活动日志', '活動記録', 'Registro de atividade', 'Журнал активности', 'Journal dactivité', '활동 로그', 'Aktivitätsprotokoll', 'Registro delle attività', 'บันทึกกิจกรรม', 'Naplót', 'Activiteiten logboek', 'Actio iniuriarum', 'Log aktivitas', 'Etkinlik Günlüğü', 'Αρχείο καταγραφής δραστηριότητας', 'گزارش فعالیت', 'Log aktiviti', 'కార్యాచరణ లాగ్', 'நடவடிக்கை பதிவு', 'પ્રવૃત્તિ લૉગ', 'Dziennik aktywności', 'Журнал активності', 'ਸਰਗਰਮੀ ਲਾਗ', 'Jurnalul de activitate', 'လှုပ်ရှားမှုမှတ်တမ်း', 'Wọle iṣẹ', 'Sabis na Ayyuka'),
(792, 'generate_csv', 'Generate CSV', 'সিএসভি তৈরি করুন', 'Generar CSV', 'إنشاء ملف CSV', 'सीएसवी उत्पन्न करें', 'CSV بنائیں', '生成CSV', 'CSVを生成する', 'Gerar CSV', 'Создание CSV', 'Générer un fichier CSV', 'CSV 생성', 'CSV generieren', 'Genera CSV', 'สร้าง CSV', 'CSV létrehozása', 'CSV genereren', 'CSV generate', 'Hasilkan CSV', 'CSV oluştur', 'Δημιουργία CSV', 'ایجاد CSV', 'Menjana CSV', 'CSV ను సృష్టించండి', 'CSV ஐ உருவாக்கவும்', 'CSV જનરેટ કરો', 'Wygeneruj plik CSV', 'Створити CSV', 'ਸੀਐਸਵੀ ਬਣਾਉ', 'Generați CSV', 'CSV ကို Generate', 'Fi CSV ti o lagbara', 'Samar da CSV'),
(793, 'csv_file', 'CSV File', 'সিএসভি ফাইল', 'Archivo CSV', 'ملف CSV', 'सीएसवी फ़ाइल', 'CSV فائل', 'CSV文件', 'CSVファイル', 'Arquivo CSV', 'Файл CSV', 'Fichier CSV', 'CSV 파일', 'CSV-Datei', 'File CSV', 'ไฟล์ CSV', 'CSV fájl', 'CSV-bestand', 'File CSV', 'File CSV', 'CSV Dosyası', 'Αρχείο CSV', 'فایل CSV', 'Fail CSV', 'CSV ఫైల్', 'CSV கோப்பு', 'CSV ફાઇલ', 'Plik CSV', 'CSV-файл', 'CSV ਫਾਈਲ', 'Fișier CSV', 'CSV ဖိုင်ဖိုင်မှတ်တမ်း', 'Faili CSV', 'Fayil ɗin CSV'),
(794, 'id', 'ID', 'আইডি', 'CARNÉ DE IDENTIDAD', 'هوية شخصية', 'आईडी', 'ID', 'ID', 'ID', 'identidade', 'Я БЫ', 'ID', '신분증', 'ICH WÜRDE', 'ID', 'ID', 'ID', 'ID kaart', 'id', 'ID', 'İD', 'ταυτότητα', 'شناسه', 'ID', 'ID', 'ஐடி', 'ID', 'ID', 'Ідентифікатор', 'ID', 'ID-ul', 'ID ကို', 'ID', 'ID'),
(795, 'bulk_student_instruction_1', 'At first select the (School,) Class and Section', 'প্রথমে ক্লাস এবং বিভাগ নির্বাচন করুন', 'Al principio, seleccione la Clase y la Sección (Escuela).', 'في البداية ، اختر الفصل الدراسي (المدرسة) ، والقسم', 'पहले (स्कूल,) कक्षा और अनुभाग का चयन करें', 'پہلے (اسکول،) کلاس اور سیکشن کو منتخب کریں', '首先选择（School，）Class和Section', 'まず、（学校、）クラスとセクション', 'Inicialmente selecione a Classe e Seção (Escola)', 'Сначала выберите класс (School,) и раздел', 'Au début, sélectionnez la classe et la section (école)', '먼저 (학교,) 클래스와 섹션을 선택하십시오.', 'Wählen Sie zunächst die (Schule,) Klasse und den Abschnitt aus', 'Inizialmente seleziona la (Scuola,) Classe e Sezione', 'ตอนแรกเลือกหมวด (โรงเรียน,) และส่วน', 'Először válassza ki az (iskola) osztályt és a szakaszt', 'Selecteer eerst de (school,) klas en sectie', 'In Primum lege lectionem (School,) § et Paleonemertea Class', 'Pertama pilih Kelas dan Bagian (Sekolah,)', 'İlk önce (Okul,) Sınıf ve Bölüm seçin', 'Αρχικά, επιλέξτε την κατηγορία (Σχολή, Κατηγορία) και Τμήμα', 'در ابتدا کلاس (دانشکده)، بخش را انتخاب کنید', 'Pada mulanya pilih Kelas (Sekolah,) dan Bahagian', 'మొదటి వద్ద (స్కూల్,) క్లాస్ మరియు విభాగం ఎంచుకోండి', 'ஆரம்பத்தில் (பள்ளி, வகுப்பு மற்றும் பிரிவு) தேர்ந்தெடுக்கவும்', 'પ્રથમ (શાળા,) વર્ગ અને વિભાગ પસંદ કરો', 'Najpierw wybierz klasę (szkołę) i sekcję', 'Спочатку виберіть (Клас, Клас) та Розділ', 'ਸਭ ਤੋਂ ਪਹਿਲਾਂ (ਸਕੂਲ, ਕਲਾਸ ਅਤੇ ਸੈਕਸ਼ਨ) ਦੀ ਚੋਣ ਕਰੋ', 'Mai întâi selectați clasa și secțiunea (Școală)', 'ပထမဦးဆုံးမှာ (ကျောင်း,) အတန်းအစားနှင့်ပုဒ်မကို select', 'Ni akọkọ yan awọn (Ile-iwe,) Kilasi ati Abala', 'Da farko zaɓa da (Makaranta,) Class da Sashe'),
(796, 'bulk_student_instruction_2', 'Generate CSV file', 'সিএসভি ফাইল তৈরি করুন', 'Generar archivo CSV', 'إنشاء ملف CSV', 'सीएसवी फ़ाइल जेनरेट करें', 'CSV فائل بنائیں', '生成CSV文件', 'CSVファイルを生成する', 'Gerar arquivo CSV', 'Создание файла CSV', 'Générer un fichier CSV', 'CSV 파일 생성', 'Generieren Sie eine CSV-Datei', 'Genera file CSV', 'สร้างไฟล์ CSV', 'CSV fájl létrehozása', 'Genereer CSV-bestand', 'CSV lima generate', 'Hasilkan file CSV', 'CSV dosyası oluştur', 'Δημιουργία αρχείου CSV', 'ایجاد فایل CSV', 'Buat fail CSV', 'CSV ఫైల్ను సృష్టించండి', 'CSV கோப்பை உருவாக்கவும்', 'CSV ફાઇલ જનરેટ કરો', 'Wygeneruj plik CSV', 'Створити файл CSV', 'CSV ਫਾਈਲ ਉਤਪੰਨ ਕਰੋ', 'Generați fișierul CSV', 'CSV ဖိုင် Generate', 'Fifẹ CSV faili', 'Samar da fayil CSV'),
(797, 'bulk_student_instruction_3', 'Open the downloaded CSV file and enter student information with unique username', 'ডাউনলোড করা সিএসভি ফাইলটি খুলুন এবং ইউনিক ইমেলের মাধ্যমে শিক্ষার্থী তথ্য প্রবেশ করুন', 'Abra el archivo CSV descargado e ingrese la información del estudiante con un nombre de usuario único', 'افتح ملف CSV الذي تم تنزيله وأدخل معلومات الطالب باستخدام اسم مستخدم فريد', 'डाउनलोड की गई CSV फ़ाइल खोलें और अद्वितीय उपयोगकर्ता नाम के साथ छात्र जानकारी दर्ज करें', 'ڈاؤن لوڈ کردہ CSV فائل کو کھولیں اور طالب علم کی معلومات کو منفرد صارف نامہ درج کریں', '打开下载的CSV文件，输入具有唯一用户名的学生信息', 'ダウンロードしたCSVファイルを開き、固有のユーザー名で学生情報を入力します', 'Abra o arquivo CSV baixado e insira as informações do aluno com um nome de usuário exclusivo', 'Откройте загруженный CSV-файл и введите информацию о студенте с уникальным именем пользователя', 'Ouvrez le fichier CSV téléchargé et entrez les informations sur l\'étudiant avec un nom d\'utilisateur unique.', '다운로드 한 CSV 파일을 열고 고유 한 사용자 이름으로 학생 정보를 입력하십시오.', 'Öffnen Sie die heruntergeladene CSV-Datei und geben Sie die Schülerinformationen mit einem eindeutigen Benutzernamen ein', 'Apri il file CSV scaricato e inserisci le informazioni dello studente con un nome utente univoco', 'เปิดไฟล์ CSV ที่ดาวน์โหลดและใส่ข้อมูลของนักเรียนด้วยชื่อผู้ใช้ที่ไม่ซ้ำกัน', 'Nyissa meg a letöltött CSV-fájlt, és adja meg a diákadatokat egyedi felhasználónévvel', 'Open het gedownloade CSV-bestand en geef studentinformatie op met unieke gebruikersnaam', 'Downloaded CSV lima notitia aperire et intrare studiosum cum unique nomen usoris', 'Buka file CSV yang diunduh dan masukkan informasi siswa dengan nama pengguna yang unik', 'İndirilen CSV dosyasını açın ve benzersiz kullanıcı adıyla öğrenci bilgilerini girin', 'Ανοίξτε το αρχείο CSV που κατεβάσατε και εισάγετε τις πληροφορίες σπουδαστών με μοναδικό όνομα χρήστη', 'فایل دانلود شده CSV را باز کنید و اطلاعات دانشجویی را با نام کاربری منحصر به فرد وارد کنید', 'Buka fail CSV yang dimuat turun dan masukkan maklumat pelajar dengan nama pengguna yang unik', 'డౌన్లోడ్ చేసిన CSV ఫైల్ను తెరిచి విద్యార్థి పేరును ప్రత్యేక యూజర్ పేరుతో నమోదు చేయండి', 'பதிவிறக்கம் செய்யப்பட்ட CSV கோப்பைத் திறந்து, தனிப்பட்ட பயனர்பெயருடன் மாணவர் தகவலை உள்ளிடவும்', 'ડાઉનલોડ કરેલી CSV ફાઇલ ખોલો અને અનન્ય વપરાશકર્તાનામ સાથે વિદ્યાર્થી માહિતી દાખલ કરો', 'Otwórz pobrany plik CSV i wprowadź informacje o uczniu z unikalną nazwą użytkownika', 'Відкрийте скачаний файл CSV та введіть інформацію про учня з унікальним ім\'ям користувача', 'ਡਾਊਨਲੋਡ ਕੀਤੀ CSV ਫਾਈਲ ਖੋਲ੍ਹੋ ਅਤੇ ਵਿਲੱਖਣ ਉਪਭੋਗਤਾ ਨਾਂ ਨਾਲ ਵਿਦਿਆਰਥੀ ਜਾਣਕਾਰੀ ਦਰਜ ਕਰੋ', 'Deschideți fișierul CSV descărcat și introduceți informații despre student cu un nume de utilizator unic', 'ဒေါင်း CSV ဖိုင်ကိုဖွင့်ပြီးထူးခြားတဲ့အသုံးပြုသူအမည်နှင့်အတူကျောင်းသားသတင်းအချက်အလက်ထည့်သွင်း', 'Ṣii faili CSV ti a gba lati ayelujara ati tẹ alaye ọmọde pẹlu orukọ olumulo oto', 'Bude fayil din CSV da aka sauke kuma shigar da bayanan dalibai tare da sunan mai amfani na musamman'),
(798, 'bulk_student_instruction_4', 'Take the Guardian ID from Guardian list', 'গার্ডিয়ান তালিকা থেকে গার্ডিয়ান আইডি নিন', 'Tome la ID de Guardian de la lista de Guardian', 'خذ بطاقة الجارديان من قائمة الجارديان', 'अभिभावक सूची से गार्जियन आईडी लें', 'گارڈین کی شناخت سے گارڈین کی فہرست لے لو', '从Guardian列表中获取Guardian ID', 'GuardianリストからGuardian IDを取得する', 'Pegue o Guardian ID da lista do Guardian', 'Возьмите идентификатор Guardian из списка Guardian', 'Prenez lidentifiant Guardian de la liste Guardian', 'Guardian 목록에서 Guardian ID 가져 오기', 'Nimm die Wächter-ID aus der Wächterliste', 'Prendi lID Guardian dallelenco dei guardiani', 'นำ ID Guardian จากรายการ Guardian', 'Vegye a Guardian azonosítót a Guardian listából', 'Neem de Guardian ID van de Guardian-lijst', 'Guardiani accipere a Guardiano id album', 'Ambil ID Guardian dari daftar Guardian', 'Guardian IDsini Guardian listesinden alın', 'Πάρτε τον κωδικό Guardian από τη λίστα Guardian', 'نگاهی به شناسه نگهبان از فهرست گاردین', 'Ambil ID Guardian dari senarai Guardian', 'గార్డియన్ ఐడి నుండి గార్డియన్ ఐడిని తీసుకోండి', 'கார்டியன் ஐடி கார்டியன் பட்டியலில் இருந்து எடுத்துக் கொள்ளுங்கள்', 'ગાર્ડિયન સૂચિમાંથી ગાર્ડિયન ID લો', 'Weź identyfikator Guardian z listy Guardian', 'Візьміть ідентифікатор опікуна з списку охоронців', 'ਗਾਰਡੀਅਨ ਸੂਚੀ ਤੋਂ ਗਾਰਡੀਅਨ ਆਈਡੀ ਲਵੋ', 'Luați ID-ul Guardian din lista Guardian', 'ဂါးဒီးယန်း list ကနေဂါးဒီးယန်း ID ကိုယူပါ', 'Mu ID IDE kuro lati akojọ Awọn olutọju', 'Ɗauki ID na Guardian daga jerin sunayen Guardian'),
(799, 'bulk_student_instruction_5', 'Save the edited CSV file', 'সম্পাদিত সিএসভি  ফাইল সংরক্ষণ করুন', 'Guarde el archivo CSV editado', 'احفظ ملف CSV الذي تم تحريره', 'संपादित सीएसवी फ़ाइल सहेजें', 'ترمیم شدہ CSV فائل کو محفوظ کریں', '保存已编辑的CSV文件', '編集したCSVファイルを保存する', 'Salve o arquivo CSV editado', 'Сохранить отредактированный файл CSV', 'Enregistrez le fichier CSV modifié', '편집 된 CSV 파일 저장', 'Speichern Sie die bearbeitete CSV-Datei', 'Salva il file CSV modificato', 'บันทึกไฟล์ CSV ที่แก้ไขแล้ว', 'Mentse a szerkesztett CSV fájlt', 'Sla het bewerkte CSV-bestand op', 'CSV lima edited by salvificem', 'Simpan file CSV yang diedit', 'Düzenlenen CSV dosyasını kaydet', 'Αποθηκεύστε το επεξεργασμένο αρχείο CSV', 'فایل CSV ویرایش شده را ذخیره کنید', 'Simpan fail CSV yang diedit', 'సవరించిన CSV ఫైల్ను సేవ్ చేయండి', 'திருத்தப்பட்ட CSV கோப்பை சேமி', 'સંપાદિત CSV ફાઇલ સાચવો', 'Zapisz edytowany plik CSV', 'Зберегти редагований файл CSV', 'ਸੰਪਾਦਿਤ CSV ਫਾਈਲ ਸੁਰੱਖਿਅਤ ਕਰੋ', 'Salvați fișierul CSV editat', 'အဆိုပါ edited CSV ဖိုင် Save', 'Fipamọ faili CSV ti o satunkọ', 'Ajiye fayil ɗin CSV da aka gyara');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`) VALUES
(800, 'bulk_student_instruction_6', 'Upload again CSV file you just edited and submit', 'এডিট করা ফাইলটি আবার আপলোড করুন এবং সাবমিট করুন', 'Sube de nuevo el archivo CSV que acabas de editar y enviar', 'قم بتحميل ملف CSV مرة أخرى قمت بتحريره وإرساله', 'फिर से संपादित और जमा करें CSV फ़ाइल अपलोड करें', 'دوبارہ ترمیم کریں اور جمع کرائیں CSV فائل دوبارہ اپ لوڈ کریں', '再次上传您刚编辑并提交的CSV文件', '編集して送信したCSVファイルを再度アップロードする', 'Carregue novamente o ficheiro CSV que acabou de editar e envie', 'Загрузите снова CSV-файл, который вы только что отредактировали и отправили', 'Téléchargez à nouveau le fichier CSV que vous venez déditer et de soumettre', '방금 수정하고 제출 한 CSV 파일을 다시 업로드하십시오.', 'Laden Sie erneut die CSV-Datei hoch, die Sie gerade bearbeitet und gesendet haben', 'Carica di nuovo il file CSV che hai appena modificato e invia', 'อัปโหลดอีกครั้งไฟล์ CSV ที่คุณเพิ่งแก้ไขและส่ง', 'Töltse meg újra a szerkesztett és benyújtott CSV fájlt', 'Upload opnieuw CSV-bestand dat u zojuist hebt bewerkt en verzendt', 'CSV lima upload denuo edidit et vos iustus submittere', 'Unggah lagi file CSV yang baru saja Anda edit dan kirim', 'Düzenlediğiniz ve gönderdiğiniz yeni CSV dosyasını tekrar yükleyin', 'Ανεβάστε ξανά αρχείο CSV που μόλις επεξεργαστήκατε και υποβάλατε', 'دوباره فایل CSV را که ویرایش کرده اید بارگذاری کنید و ارسال کنید', 'Muat naik fail CSV yang baru sahaja anda edit dan hantar', 'మళ్ళీ అప్లోడ్ CSV ఫైల్ మీరు సవరించిన మరియు సమర్పించండి', 'பதிவேற்ற மீண்டும் CSV கோப்பை நீங்கள் திருத்தப்பட்டு சமர்ப்பிக்கவும்', 'તમે હમણાં સંપાદિત અને સબમિટ કરો છો તે CSV ફાઇલ ફરીથી અપલોડ કરો', 'Prześlij ponownie plik CSV, który właśnie edytowałeś i przesłałeś', 'Завантажте файл CSV, який ви щойно редагували та подали', 'ਦੁਬਾਰਾ CSV ਫਾਈਲ ਅਪਲੋਡ ਕਰੋ ਜੋ ਤੁਸੀਂ ਹੁਣੇ ਸੰਪਾਦਿਤ ਅਤੇ ਪ੍ਰਸਤੁਤ ਕਰਦੇ ਹੋ', 'Încărcați din nou fișierul CSV pe care tocmai l-ați editat și trimis', 'CSV ဖိုင်ရုံ edited သင် file များနှင့်တင်သွင်းသည်နောက်တဖန် Upload လုပ်ပါ', 'Ṣe atunse faili CSV ti o ṣatunkọ ati firanṣẹ', 'Shigar da fayil ɗin CSV kawai da aka gyara da kuma mika shi'),
(801, 'manage_activity', 'Manage Activity', 'কার্যকলাপ পরিচালনা করুন', 'Administrar actividad', 'إدارة النشاط', 'गतिविधि प्रबंधित करें', 'سرگرمی کا نظم کریں', '管理活动', 'アクティビティの管理', 'Gerenciar atividade', 'Управление деятельностью', 'Gérer lactivité', '활동 관리', 'Aktivität verwalten', 'Gestisci attività', 'จัดการกิจกรรม', 'Tevékenység kezelése', 'Activiteit beheren', 'curo activitate', 'Kelola Aktivitas', 'Etkinliği Yönet', 'Διαχείριση της δραστηριότητας', 'مدیریت فعالیت', 'Urus Aktiviti', 'కార్యాచరణను నిర్వహించండి', 'செயல்பாட்டை நிர்வகி', 'પ્રવૃત્તિનું સંચાલન કરો', 'Zarządzaj aktywnością', 'Керування діяльністю', 'ਸਰਗਰਮੀ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați activitatea', 'Activity ကိုစီမံခန့်ခွဲရန်', 'Ṣakoso Awọn aṣayan iṣẹ', 'Sarrafa Ayyukan'),
(802, 'activity', 'Activity', 'কার্যকলাপ', 'Actividad', 'نشاط', 'गतिविधि', 'سرگرمی', '活动', 'アクティビティ', 'Atividade', 'Мероприятия', 'Activité', '활동', 'Aktivität', 'Attività', 'กิจกรรม', 'Tevékenység', 'Activiteit', 'actio', 'Aktivitas', 'Aktivite', 'Δραστηριότητα', 'فعالیت', 'Aktiviti', 'కార్యాచరణ', 'செயல்பாடு', 'પ્રવૃત્તિ', 'Czynność', 'Діяльність', 'ਸਰਗਰਮੀ', 'Activitate', 'လှုပ်ရှားမှု', 'Iṣẹ', 'Ayyuka'),
(803, 'default_time_zone', 'Default Time Zone', 'ডিফল্ট টাইম জোন', 'Zona horaria predeterminada', 'المنطقة الزمنية الافتراضية', 'डिफ़ॉल्ट समय क्षेत्र', 'ڈیفالٹ ٹائم زون', '默认时区', 'デフォルトのタイムゾーン', 'Fuso horário padrão', 'Часовой пояс по умолчанию', 'Fuseau horaire par défaut', '기본 시간대', 'Standardzeitzone', 'Fuso orario predefinito', 'เขตเวลาเริ่มต้น', 'Alapértelmezett időzóna', 'Standaard tijdzone', 'Default Time Zone', 'Zona Waktu Default', 'Varsayılan Zaman Dilimi', 'Προεπιλεγμένη ζώνη ώρας', 'منطقه زمانی پیش فرض', 'Zon Masa Lalai', 'డిఫాల్ట్ టైమ్ జోన్', 'இயல்புநிலை நேர மண்டலம்', 'ડિફૉલ્ટ સમય ઝોન', 'Domyślna strefa czasowa', 'Часовий пояс за замовчуванням', 'ਡਿਫਾਲਟ ਸਮਾਂ ਜ਼ੋਨ', 'Fusul orar implicit', 'default အချိန်ဇုန်', 'Aago Aago Aiyipada', 'Yanayin lokaci na tsohuwar'),
(804, 'check_all', 'Check All', 'সব টিক চিহ্ন দিন', 'Verificar todo', 'تحقق من الكل', 'सभी की जांच करो', 'سب چیک کریں', '选择所有', 'すべてチェック', 'Verificar tudo', 'Отметить все', 'Vérifie tout', '모두 확인', 'Alle überprüfen', 'Seleziona tutto', 'เลือกทั้งหมด', 'Ellenőrizni mind', 'Controleer alles', 'reprehendo omnes', 'Periksa Semua', 'Tümünü Kontrol Et', 'Ελεγξε τα ολα', 'بررسی همه', 'Memeriksa semua', 'అన్నింటినీ తనిఖీ చేయండి', 'எல்லாம் சரிபார்க்கவும்', 'બધા તપાસો', 'Zaznacz wszystkie', 'Перевірити все', 'ਸਾਰੇ ਚੈੱਕ ਕਰੋ', 'Selectați toate', 'အားလုံးစစ်ပါ', 'Ṣayẹwo Gbogbo', 'Duba Duk'),
(805, 'uncheck_all', 'Uncheck All', 'সব টিক চিহ্ন তুলে দিন', 'Desmarcar todo', 'الغاءالكل', 'सब को अचयनित करें', 'سبھی کو نشان زد کریں', '取消所有', 'すべてのチェックを外す', 'Desmarcar todos', 'Снять все', 'Décocher tout', '모두 선택 취소', 'Alle deaktivieren', 'Deseleziona tutto', 'ยกเลิกการเลือกทั้งหมด', 'Minden választás törlése', 'Deselecteer alles', 'omnes Licens', 'Jangan tandai semua', 'Tümünü işaretleme', 'Αποεπιλογή όλων', 'همه موارد را از حالت انتخاب خارج کنید', 'Nyahtanda Semua', 'అన్నీ తనిఖీ చేయి', 'அனைத்தையும் அகற்றவும்', 'બધાને અનચેક કરો', 'Odznacz wszystkie', 'Зніміть прапорець біля всіх', 'ਸਭ ਹਟਾਓ', 'Deselecteaza tot', 'Uncheck အားလုံး', 'Ṣii Gbogbo rẹ', 'Cire Dukkan'),
(806, 'statement', 'Statement', 'স্টেটমেন্ট', 'Declaración', 'بيان', 'बयान', 'بیان', '声明', 'ステートメント', 'Declaração', 'утверждение', 'Déclaration', '성명서', 'Erklärung', 'dichiarazione', 'คำแถลง', 'Nyilatkozat', 'Uitspraak', 'dicitur', 'Pernyataan', 'Beyan', 'Δήλωση', 'بیانیه', 'Kenyataan', 'ప్రకటన', 'அறிக்கை', 'નિવેદન', 'Komunikat', 'Заява', 'ਬਿਆਨ', 'Afirmație', 'ထုတ်ပြန်ချက်', 'Gbólóhùn', 'Bayanin'),
(807, 'transaction', 'Transaction', 'লেনদেন', 'Transacción', 'عملية تجارية', 'लेन-देन', 'ٹرانزیکشن', '交易', 'トランザクション', 'Transação', 'Сделка', 'Transaction', '트랜잭션', 'Transaktion', 'Transazione', 'การซื้อขาย', 'Tranzakció', 'Transactie', 'transaction', 'Transaksi', 'işlem', 'Συναλλαγή', 'معامله', 'Transaksi', 'లావాదేవీ', 'பரிவர்த்தனை', 'વ્યવહાર', 'Transakcja', 'Транзакція', 'ਟ੍ਰਾਂਜੈਕਸ਼ਨ', 'Tranzacţie', 'ကိစ္စ', 'Iṣowo', 'Maamala'),
(808, 'debit', 'Debit', 'ডেবিট', 'Débito', 'مدين', 'नामे', 'ڈیبٹ', '借方', 'デビット', 'Débito', 'Дебет', 'Débit', '차변', 'Lastschrift', 'Addebito', 'หักบัญชี', 'tartozás', 'Debiteren', 'Debita', 'Debet', 'borç', 'Χρέωση', 'بدهی', 'Debit', 'డెబిట్', 'டெபிட்', 'ડેબિટ', 'Obciążyć', 'Дебет', 'ਡੈਬਿਟ', 'Debit', 'debit', 'Debit', 'Haɗi'),
(809, 'credit', 'Credit', 'ক্রেডিট', 'Crédito', 'ائتمان', 'श्रेय', 'کریڈٹ', '信用', 'クレジット', 'Crédito', 'кредит', 'Crédit', '신용', 'Kredit', 'Credito', 'เครดิต', 'Hitel', 'Credit', 'fidem', 'Kredit', 'Kredi', 'Πίστωση', 'اعتبار', 'Kredit', 'క్రెడిట్', 'கடன்', 'ક્રેડિટ', 'Kredyt', 'Кредит', 'ਕ੍ਰੈਡਿਟ', 'Credit', 'အကြွေး', 'Ike', 'Credit'),
(810, 'reset_user_email', 'Reset User Email', 'ব্যবহারকারীর ইমেল রিসেট করুন', 'Restablecer correo electrónico', 'إعادة تعيين البريد الإلكتروني للمستخدم', 'उपयोगकर्ता ईमेल रीसेट करें', 'صارف ای میل ری سیٹ کریں', '重置用户电子邮件', 'ユーザーの電子メールをリセットする', 'Redefinir email do usuário', 'Сброс электронной почты пользователя', 'Réinitialiser lemail', '사용자 이메일 재설정', 'Benutzer-E-Mail zurücksetzen', 'Reimposta e-mail utente', 'รีเซ็ตอีเมลผู้ใช้', 'Felhasználói e-mail visszaállítása', 'Reset gebruikersmail', 'Mobile Version Email', 'Setel ulang Email Pengguna', 'Kullanıcı e-postasını sıfırla', 'Επαναφορά ηλεκτρονικού ταχυδρομείου χρήστη', 'تنظیم مجدد ایمیل کاربر', 'Tetapkan semula E-mel Pengguna', 'యూజర్ ఇమెయిల్ను రీసెట్ చేయండి', 'பயனர் மின்னஞ்சல் மீட்டமை', 'વપરાશકર્તા ઇમેઇલ ફરીથી સેટ કરો', 'Zresetuj e-mail użytkownika', 'Скинути електронну адресу користувача', 'ਰੀਸੈਟ ਯੂਜਰ ਈਮੇਲ', 'Resetați e-mailul utilizatorului', 'အသုံးပြုသူအီးမေးလ် Reset', 'Atunto Olumulo Olumulo', 'Sake saitin Imel mai amfani'),
(811, 'reset_email', 'Reset Email', 'ইমেল রিসেট করুন', 'Restablecer Email', 'إعادة تعيين البريد الإلكتروني', 'ईमेल रीसेट करें', 'ای میل ری سیٹ کریں', '重置邮箱', '電子メールをリセットする', 'Redefinir email', 'Сбросить электронную почту', 'Reset Email', '이메일 재설정', 'E-Mail zurücksetzen', 'Ripristina email', 'รีเซ็ตอีเมล', 'E-mail visszaállítása', 'Reset e-mail', 'Reddere praeferentias Email', 'Setel ulang Email', 'E-postayı sıfırla', 'Επαναφορά ηλεκτρονικού ταχυδρομείου', 'تنظیم مجدد ایمیل', 'Tetapkan semula E-mel', 'ఇమెయిల్ను రీసెట్ చేయండి', 'மின்னஞ்சல் மீட்டமை', 'ઇમેઇલ ફરીથી સેટ કરો', 'Zresetuj email', 'Скидання електронної пошти', 'ਈਮੇਲ ਦੁਬਾਰਾ ਸੈਟ ਕਰੋ', 'Resetați e-mailul', 'အီးမေးလ် Reset', 'Tunto Imeeli', 'Sake saita Imel'),
(812, 'date_format', 'Date Format', 'ডেট ফরমেট', 'Formato de fecha', 'صيغة التاريخ', 'डेटा प्रारूप', 'تاریخ کی شکل', '日期格式', '日付形式', 'Formato de data', 'Формат даты', 'Format de date', '날짜 형식', 'Datumsformat', 'Formato data', 'รูปแบบวันที่', 'Dátum formátum', 'Datumnotatie', 'Forma Date', 'Format tanggal', 'Tarih formatı', 'Μορφή ημερομηνίας', 'فرمت تاریخ', 'Format tarikh', 'తేదీ ఫార్మాట్', 'தேதி வடிவமைப்பு', 'તારીખ ફોર્મેટ', 'Format daty', 'Формат дати', 'ਤਾਰੀਖ ਫਾਰਮੈਟ', 'Formatul datei', 'နေ့စွဲပုံစံ', 'Ọjọ kika', 'Kwanan wata Tsarin'),
(813, 'social', 'Social', 'সামাজিক', 'Social', 'اجتماعي', 'सामाजिक', 'سماجی', '社会', 'ソーシャル', 'Social', 'Социальное', 'Social', '사회적인', 'Sozial', 'Sociale', 'สังคม', 'Társadalmi', 'sociaal', 'Social', 'Sosial', 'Sosyal', 'Κοινωνικός', 'اجتماعی', 'Sosial', 'సామాజిక', 'சமூக', 'સામાજિક', 'Społeczny', 'Соціальний', 'ਸਮਾਜਿਕ', 'Social', 'လူမှုရေး', 'Awujọ', 'Social'),
(814, 'position_in_class', 'Position in Class', 'ক্লাসে অবস্থান', 'Posición en clase', 'موقف في الصف', 'कक्षा में स्थिति', 'کلاس میں مقام', '在课堂上的位置', 'クラス内の位置', 'Posição na classe', 'Должность в классе', 'Position en classe', '클래스의 위치', 'Position in der Klasse', 'Posizione in classe', 'ตำแหน่งในชั้นเรียน', 'Pozíció az osztályban', 'Positie in de klas', 'Statum Paleonemertea Class', 'Posisi di Kelas', 'Sınıftaki pozisyonu', 'Θέση στην τάξη', 'موقعیت در کلاس', 'Kedudukan dalam Kelas', 'తరగతి లో స్థానం', 'வகுப்பில் நிலை', 'વર્ગમાં સ્થાન', 'Pozycja w klasie', 'Позиція в класі', 'ਕਲਾਸ ਵਿਚ ਸਥਿਤੀ', 'Poziția în clasă', 'အတန်းအစားထဲမှာရာထူး', 'Ipo ni Kilasi', 'Matsayi a Class'),
(815, 'position_in_section', 'Position in Section', 'বিভাগে অবস্থান', 'Posición en la Sección', 'موقف في القسم', 'खंड में स्थिति', 'سیکشن میں مقام', '在部分中的位置', 'セクション内の位置', 'Posição na seção', 'Должность в разделе', 'Position dans la section', '섹션의 위치', 'Position im Abschnitt', 'Posizione nella sezione', 'ตำแหน่งในส่วน', 'Pozíció a fejezetben', 'Positie in sectie', 'Situ Art', 'Posisi dalam Bagian', 'Bölümdeki pozisyon', 'Θέση στην Ενότητα', 'موقعیت در بخش', 'Kedudukan dalam Seksyen', 'విభాగంలో స్థానం', 'பிரிவில் நிலை', 'વિભાગમાં સ્થાન', 'Pozycja w sekcji', 'Позиція в розділі', 'ਸੈਕਸ਼ਨ ਵਿੱਚ ਸਥਿਤੀ', 'Poziția în secțiune', 'Section မှာရာထူး', 'Ipo ni Abala', 'Matsayi a Sashi'),
(816, 'percentage', 'Percentage', 'শতকরা হার', 'Porcentaje', 'النسبة المئوية', 'प्रतिशत', 'فی صد', '百分比', 'パーセンテージ', 'Percentagem', 'процент', 'Pourcentage', '백분율', 'Prozentsatz', 'Percentuale', 'ร้อยละ', 'Százalék', 'Percentage', 'CENTESIMA', 'Persentase', 'Yüzde', 'Ποσοστό', 'درصد', 'Peratusan', 'శాతం', 'சதவிதம்', 'ટકાવારી', 'Odsetek', 'Відсоток', 'ਪ੍ਰਤੀਸ਼ਤ', 'Procent', 'ရာခိုင်နှုန်း', 'Ogorun', 'Kashi'),
(817, 'manage_school', 'Manage Institute', 'প্রতিষ্ঠান পরিচালনা করুন', 'Administrar la escuela', 'إدارة المدرسة', 'स्कूल प्रबंधित करें', 'اسکول کا نظم کریں', '管理學校', '学校を管理する', 'Gerenciar Escola', 'Управление школой', 'Gérer l\'école', '학교 관리', 'Schule verwalten', 'Gestisci la scuola', 'จัดการโรงเรียน', 'Kezelje az iskolát', 'Beheer school', 'curo School', 'Kelola Sekolah', 'Okulu yönet', 'Διαχειριστείτε το σχολείο', 'مدیریت مدرسه', 'Uruskan Sekolah', 'స్కూల్ని నిర్వహించండి', 'பள்ளி நிர்வகி', 'શાળા મેનેજ કરો', 'Zarządzaj szkołą', 'Управління школою', 'ਸਕੂਲ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați școala', 'ကျောင်းစီမံခန့်ခွဲရန်', 'Ṣakoso Ile-iwe', 'Sarrafa Makaranta'),
(818, 'principal', 'Principal', 'অধ্যক্ষ', 'Director de escuela', 'المالك', 'प्रधान अध्यापक', 'پرنسپل', '主要', '主要な', 'Diretor', 'принципал', 'Principal', '주요한', 'Schulleiter', 'Principale', 'หลัก', 'Fő', 'principaal', 'principalem', 'Kepala Sekolah', 'anapara', 'ΔΙΕΥΘΥΝΤΡΙΑ σχολειου', 'سرپرست', 'Pengetua', 'ప్రిన్సిపాల్', 'முதல்வர்', 'આચાર્યશ્રી', 'Dyrektor', 'Головний', 'ਪ੍ਰਿੰਸੀਪਲ', 'Principal', 'ကြောငျးအုပျကွီး', 'Ilana', 'Babban'),
(819, 'registration', 'Registration', 'নিবন্ধন', 'Registro', 'التسجيل', 'पंजीकरण', 'رجسٹریشن', '注册', '登録', 'Cadastro', 'Постановка на учет', 'enregistrement', '기재', 'Anmeldung', 'Registrazione', 'การลงทะเบียน', 'Bejegyzés', 'registratie', 'Registration', 'Pendaftaran', 'kayıt', 'Εγγραφή', 'ثبت', 'Pendaftaran', 'నమోదు', 'பதிவு', 'નોંધણી', 'Rejestracja', 'Реєстрація', 'ਰਜਿਸਟਰੇਸ਼ਨ', 'Înregistrare', 'မှတ်ပုံတင်ခြင်း', 'Iforukọ', 'Rijistar'),
(820, 'feedback', 'Feedback', 'প্রতিক্রিয়া', 'Realimentación', 'ردود الفعل', 'प्रतिक्रिया', 'تاثرات', '反馈', 'フィードバック', 'Comentários', 'Обратная связь', 'Retour d\'information', '피드백', 'Feedback', 'Risposta', 'ผลตอบรับ', 'Visszacsatolás', 'terugkoppeling', 'feedback', 'Umpan balik', 'geri bildirim', 'Ανατροφοδότηση', 'بازخورد', 'Maklumbalas', 'అభిప్రాయం', 'பின்னூட்டம்', 'પ્રતિક્રિયા', 'Sprzężenie zwrotne', 'Зворотній зв\'язок', 'ਸੁਝਾਅ', 'Parere', 'တုံ့ပြန်ချက်', 'Idahun', 'Feedback'),
(821, 'super_admin', 'Super Admin', 'সুপার অ্যাডমিন', 'Super admin', 'مشرف متميز', 'सुपर व्यवस्थापक', 'سپر ایڈمن', '超级管理员', 'スーパー管理者', 'Super Admin', 'Супер администратор', 'Super Admin', '수퍼 관리자', 'höchster Vorgesetzter', 'Super Admin', 'ผู้ดูแลระบบขั้นสูง', 'Super Admin', 'Superbeheerder', 'super Maecenas et ipsum', 'Admin Super', 'Süper Yönetici', 'Super Admin', 'مدیر فوق العاده', 'Super Admin', 'సూపర్ అడ్మిన్', 'சூப்பர் நிர்வாகம்', 'સુપર એડમિન', 'Superadministrator', 'Супер адміністратор', 'ਸੁਪਰ ਐਡਮਿਨ', 'Super Admin', 'စူပါအဒ်မင်', 'Super abojuto', 'Super Admin'),
(822, 'is_publish', 'Is Publish?', 'প্রকাশ করা হয়?', 'Es publicar?', 'هل تنشر؟', 'प्रकाशित है?', 'شائع کیا ہے؟', '发布了吗？', 'パブリッシュですか？', 'É publicar?', 'Опубликован?', 'Est Publier?', '게시 하시겠습니까?', 'Ist Veröffentlichen?', 'È pubblico?', 'เผยแพร่แล้วหรือไม่?', 'Publikál?', 'Is publiceren?', 'Auditum est?', 'Apakah Publikasikan?', 'Yayınlanıyor mu?', 'Είναι η δημοσίευση;', 'انتشار است؟', 'Adakah Terbitkan?', 'ప్రచురించాలా?', 'வெளியிட வேண்டுமா?', 'પ્રકાશિત છે?', 'Czy publikujesz?', 'Опублікувати?', 'ਕੀ ਪਬਲਿਸ਼ ਹੈ?', 'Este publicat?', 'Publish သလဲ?', 'Ṣe Atọjade?', 'Ana Buga?'),
(823, 'location', 'Location', 'অবস্থান', 'Ubicación', 'موقعك', 'स्थान', 'مقام', '地点', 'ロケーション', 'Localização', 'Место нахождения', 'Emplacement', '위치', 'Ort', 'Posizione', 'ที่ตั้ง', 'Elhelyezkedés', 'Plaats', 'Location', 'Lokasi', 'yer', 'Τοποθεσία', 'محل', 'Lokasi', 'స్థానం', 'இருப்பிடம்', 'સ્થાન', 'Lokalizacja', 'Розташування', 'ਸਥਾਨ', 'Locație', 'တည်နေရာ', 'Ipo', 'Yanayi'),
(824, 'header', 'Header', 'হেডার', 'Encabezamiento', 'رأس', 'हैडर', 'ہیڈر', '头', 'ヘッダ', 'Cabeçalho', 'заголовок', 'Entête', '머리글', 'Header', 'Intestazione', 'ส่วนหัว', 'Fejléc', 'hoofd', 'header', 'Header', 'Başlık', 'Επί κεφαλής', 'سرتیتر', 'Kepala', 'శీర్షిక', 'தலைப்பு', 'હેડર', 'nagłówek', 'Заголовок', 'ਹੈਡਰ', 'Antet', 'header', 'Akọsori', 'Rubuta'),
(825, 'brand', 'Brand', 'ব্র্যান্ড', 'Marca', 'علامة تجارية', 'ब्रांड', 'برانڈ', '牌', 'ブランド', 'Marca', 'марка', 'Marque', '상표', 'Marke', 'Marca', 'ส่วนหัว', 'Márka', 'Merk', 'Brand', 'Merek', 'Marka', 'Μάρκα', 'نام تجاری', 'Jenama', 'బ్రాండ్', 'பிராண்ட்', 'બ્રાન્ડ', 'Marka', 'Бренд', 'ਬ੍ਰਾਂਡ', 'Marca', 'အမှတ်တံဆိပ်', 'Brand', 'Alamar'),
(826, 'google_analytics', 'Google Analytics', 'গুগল এনালিটিক্স', 'Google analitico', 'تحليلات كوكل', 'गूगल विश्लेषिकी', 'گوگل تجزیہ کار', '谷歌分析', 'グーグルアナリティクス', 'Google Analytics', 'Гугл Аналитика', 'Google Analytics', 'Google 애널리틱스', 'Google Analytics', 'statistiche di Google', 'Google Analytics', 'A Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'تجزیه و تحلیل ترافیک گوگل', 'Google Analytics', 'గూగుల్ విశ్లేషణలు', 'கூகுள் அனலிட்டிக்ஸ்', 'ગૂગલ ઍનલિટિક્સ', 'Google Analytics', 'Google Analytics', 'ਗੂਗਲ ਵਿਸ਼ਲੇਸ਼ਣ', 'Google Analytics', 'Google Analytics', 'Atupale Google', 'Google Analytics'),
(827, 'have_any_question', 'Have you any question?', 'আপনার কোন প্রশ্ন আছে?', '¿Tienes alguna pregunta?', 'هل لديك أي سؤال؟', 'क्या आपका कोई सवाल है?', 'کیا آپ کا کوئی سوال ہے', '你有什么问题吗？', '何か質問ありますか？', 'Você tem alguma pergunta?', 'У вас есть вопрос?', 'Avez-vous une question?', '질문 있니?', 'Hast du eine Frage?', 'Hai qualche domanda?', 'คุณมีคำถามหรือไม่?', 'Kérdése van?', 'Heb je een vraag?', 'Have vos interrogare?', 'Apakah Anda punya pertanyaan?', 'Bir sorunuz var mı?', 'Έχετε κάποια ερώτηση;', 'آیا شما هر گونه سوال', 'Adakah anda mempunyai soalan?', 'మీకు ఏదైనా ప్రశ్న ఉందా?', 'உங்களிடம் ஏதாவது கேள்வி இருக்கிறதா?', 'શું તમને કોઈ પ્રશ્ન છે?', 'Masz jakieś pytanie?', 'У вас є якесь питання?', 'ਕੀ ਤੁਹਾਨੂੰ ਕੋਈ ਸਵਾਲ ਹੈ?', 'Aveți vreo întrebare?', 'သင်သည်မည်သည့်မေးခွန်းရှိပါသလား?', 'Ṣe o ni eyikeyi ibeere?', 'Shin kuna da wata tambaya?'),
(828, 'call_us', 'Call us', 'আমাদের কল করুন', 'Llamanos', 'اتصل بنا', 'हमें बुलाओ', 'ہمیں بلائیں', '打电话给我们', 'お電話ください', 'Ligue para nós', 'Позвоните нам', 'Appelez nous', '전화주세요.', 'Ruf uns an', 'Chiamaci', 'โทรหาเรา', 'Hívjon bennünket', 'Bel ons', 'nos voca', 'Hubungi kami', 'Bizi arayın', 'Καλέστε μας', 'با ما تماس بگیرید', 'Hubungi kami', 'మాకు కాల్ చేయండి', 'எங்களை அழை', 'અમને કૉલ કરો', 'Zadzwoń do nas', 'Зателефонуйте нам', 'ਸਾਨੂੰ ਕਾਲ ਕਰੋ', 'Sună-ne', 'ကျွန်တော်တို့ကို Call', 'Pe wa', 'Kira mana'),
(829, 'email_us', 'Email us', 'আমাদেরকে ইমেইল করুন', 'Envíenos un correo electrónico', 'أرسل لنا', 'हमे ईमेल करे', 'ہمیں ای میل کریں', '电邮我们', '私達に電子メールを送り', 'Envia-nos um email', 'Свяжитесь с нами по электронной почте', 'Envoyez-nous un email', '이메일 문의', 'Schreiben Sie uns eine E-Mail', 'Mandaci una email', 'ส่งอีเมลถึงเรา', 'Küldj egy emailt nekünk', 'Email ons', 'email us', 'Email kami', 'Bize e-posta', 'Στείλτε μας email', 'به ما ایمیل بزنید', 'Email kami', 'మాకు ఇమెయిల్ చేయండి', 'எங்களுக்கு மின்னஞ்சல்', 'અમને ઇમેઇલ કરો', 'Wyślij do nas e-mail', 'Напишіть нам', 'ਸਾਨੂੰ ਈਮੇਲ ਕਰੋ', 'Trimite-ti-ne un e-mail', 'ကျွန်တော်တို့ကိုအီးမေး', 'Imeeli wa', 'Email mu'),
(830, 'welcome_to', 'Welcome to', 'স্বাগতম', 'Bienvenido a', 'مرحبا بك في', 'में स्वागत', 'میں خوش آمدید', '欢迎来到', 'ようこそ', 'Bem-vindo ao', 'Добро пожаловать в', 'Bienvenue à', '에 오신 것을 환영합니다', 'Willkommen zu', 'Benvenuto a', 'ยินดีต้อนรับสู่', 'Isten hozott a', 'Welkom bij', 'gratam', 'Selamat Datang di', 'Hoşgeldiniz', 'Καλωσόρισες στο', 'خوش آمدید به', 'Selamat datang ke', 'స్వాగతం', 'வரவேற்கிறோம்', 'સ્વાગત', 'Witamy w', 'Ласкаво просимо до', 'ਸਵਾਗਤ ਹੈ', 'Bun venit la', 'မှလှိုက်လှဲစွာကြိုဆိုပါသည်', 'Kaabo si', 'Barka da zuwa'),
(831, 'now', 'Now', 'এখন', 'Ahora', 'الآن', 'अभी व', 'ابھی', '现在', '今', 'Agora', 'Сейчас', 'À présent', '지금', 'Jetzt', 'Adesso', 'ตอนนี้', 'Most', 'Nu', 'autem', 'Sekarang', 'şimdi', 'Τώρα', 'اکنون', 'Sekarang', 'ఇప్పుడు', 'இப்போது', 'હવે', 'Teraz', 'Зараз', 'ਹੁਣ', 'Acum', 'ယခု', 'Bayi', 'Yanzu'),
(832, 'our', 'Our', 'আমাদের', 'Nuestro', 'لنا', 'हमारी', 'ہمارا', '我们的', '私たち', 'Nosso', 'наш', 'Notre', '우리의', 'Unsere', 'Nostro', 'ของเรา', 'a', 'Onze', 'nostrum', 'Kami', 'bizim', 'Μας', 'ما', 'Kami', 'మా', 'எங்கள்', 'અમારું', 'Nasz', 'Наша', 'ਸਾਡਾ', 'Al nostru', 'ကျွန်တော်တို့၏', 'Wa', 'Mu'),
(833, 'facilities', 'Facilities', 'সু্যোগ  সুবিধা', 'Instalaciones', 'مرافق', 'सुविधाएं', 'سہولیات', '设备', '施設', 'Instalações', 'оборудование', 'Installations', '시설', 'Anlagen', 'Strutture', 'สิ่งอำนวยความสะดวก', 'Felszerelés', 'uitrusting', 'facilities', 'Fasilitas', 'tesisler', 'Εγκαταστάσεις', 'امکانات', 'Kemudahan', 'సౌకర్యాలు', 'வசதிகள்', 'સુવિધાઓ', 'Udogodnienia', 'Засоби', 'ਸੁਵਿਧਾਵਾਂ', 'Facilităţi', 'အဆောက်အဦးများ', 'Awọn ohun elo', 'Ayyuka'),
(834, 'experienced', 'Experienced', 'অভিজ্ঞ', 'Experimentado', 'يختبر', 'अनुभव', 'تجربہ کار', '有经验的', '経験豊富な', 'Com experiência', 'опытный', 'Expérimenté', '숙련 된', 'Erfahren', 'Esperto', 'มีประสบการณ์', 'Tapasztalt', 'Ervaren', 'periti', 'Berpengalaman', 'Deneyimli', 'Εμπειρος', 'با تجربه', 'Berpengalaman', 'అనుభవజ్ఞులైన', 'அனுபவமிக்க', 'અનુભવી', 'Doświadczony', 'Досвідчений', 'ਤਜਰਬੇਕਾਰ', 'Cu experienta', 'တွေ့ကြုံ', 'Ti ni iriri', 'Dandana'),
(835, 'achivement', 'Achievement', 'অর্জন', 'Logro', 'موهلات', 'उपलब्धि', 'کامیابی', '成就', '成果', 'Realização', 'Достижение', 'Réussite', '성취', 'Leistung', 'realizzazione', 'ความสำเร็จ', 'Teljesítmény', 'prestatie', 'factum', 'Prestasi', 'Başarı', 'Κατόρθωμα', 'دستاورد', 'Pencapaian', 'అచీవ్మెంట్', 'சாதனையாளர்', 'સિદ્ધિ', 'Osiągnięcie', 'Досягнення', 'ਪ੍ਰਾਪਤੀ', 'Realizare', 'အောင်မြင်ချက်', 'Aseyori', 'Sakamakon'),
(836, 'by', 'By', 'দ্বারা', 'Por', 'بواسطة', 'द्वारा', 'کی طرف سے', '通过', 'によって', 'Por', 'От', 'Par', '으로', 'Durch', 'Di', 'โดย', 'Által', 'Door', 'a', 'Oleh', 'Tarafından', 'Με', 'توسط', 'Oleh', 'ద్వారా', 'மூலம்', 'દ્વારા', 'Przez', 'По', 'ਨਾਲ', 'De', 'အားဖြင့်', 'Nipa', 'By'),
(837, 'what_guardian_say', 'What Guardian Say?', 'গার্ডিয়ান কি বলে?', '¿Qué dice el guardián?', 'ما الوصي قل؟', 'क्या गार्जियन कहते हैं?', 'کیا گارڈین کہتے ہیں؟', '卫报怎么说？', 'ガーディアンは何を言っているの？', 'O que o guardião diz?', 'Что сказал Хранитель?', 'Que dit le gardien?', '가디언이 뭐라 구요?', 'Was Wächter sagen?', 'Che cosa dice il guardiano?', 'อะไร Guardian Say?', 'Milyen Guardian mondja?', 'Welke bewaker zegt?', 'Custos, quid dices?', 'Apa yang dikatakan Guardian?', 'Koruyucu ne diyor?', 'Τι λέει ο Guardian;', 'چه گاردی می گوید؟', 'Apa yang dikatakan Guardian?', 'గార్డియన్ ఏమి చెబుతారు?', 'கார்டியன் என்ன சொல்கிறது?', 'ગાર્ડિયન શું કહે છે?', 'Co mówi strażnik?', 'Що каже гадаю?', 'ਗਾਰਡੀਅਨ ਕੀ ਕਹਿੰਦੇ ਹਨ?', 'Ce spune Guardian?', 'အဘယ်အရာကိုဂါးဒီးယန်းပြောရမည်မှာ,', 'Kini Oluṣọ Kan Sọ?', 'Abin da Guardian Say?'),
(838, 'apply_now_for_your_kid', 'Apply Now for Your Kids', 'আপনার বাচ্চাদের জন্য এখন আবেদন করুন', 'Solicite ahora para sus hijos', 'قدم الآن لأطفالك', 'अपने बच्चों के लिए अभी आवेदन करें', 'اپنے بچوں کے لئے اب درخواست دیں', '立即申请您的孩子', 'あなたの子供たちに今すぐ応募する', 'Inscreva-se agora para seus filhos', 'Применить сейчас для своих детей', 'Appliquez maintenant pour vos enfants', '자녀에게 지금 신청하십시오', 'Bewerben Sie sich jetzt für Ihre Kinder', 'Fai domanda per i tuoi bambini', 'สมัครตอนนี้เพื่อลูกของคุณ', 'Jelentkezz most a gyerekeknek', 'Meld je nu aan voor je kinderen', 'Applicare autem tuus pro Kids', 'Ajukan Sekarang untuk Anak-Anak Anda', 'Çocuklarınız için Şimdi Başvurun', 'Εφαρμόστε τώρα για τα παιδιά σας', 'اکنون برای کودکان خود اعمال کنید', 'Sapukan Sekarang untuk Anak-Anak Anda', 'ఇప్పుడు మీ కిడ్స్ కోసం దరఖాస్తు చేసుకోండి', 'உங்கள் பிள்ளைகளுக்கு இப்போது விண்ணப்பிக்கவும்', 'તમારા બાળકો માટે હવે અરજી કરો', 'Złóż aplikację teraz dla swoich dzieci', 'Застосувати зараз для своїх дітей', 'ਆਪਣੇ ਬੱਚਿਆਂ ਲਈ ਹੁਣੇ ਅਪਲਾਈ ਕਰੋ', 'Aplicați acum pentru copiii dvs.', 'သင့်ရဲ့ကလေးတွေကအဘို့အ Now ကို Apply', 'Ṣe Waye Bayi fun Awọn ọmọ wẹwẹ rẹ', 'Nemi Yanzu Don Yaracenku'),
(839, 'apply', 'Apply', 'আবেদন করুন ', 'Aplicar', 'تطبيق', 'लागू करें', 'درخواست دیں', '应用', '適用', 'Aplique', 'Применять', 'Appliquer', '대다', 'Sich bewerben', 'Applicare', 'ใช้', 'Alkalmaz', 'Van toepassing zijn', 'Applicare', 'Menerapkan', 'Uygulamak', 'Ισχύουν', 'درخواست دادن', 'Memohon', 'వర్తించు', 'விண்ணப்பிக்கவும்', 'અરજી કરો', 'Zastosować', 'Застосувати', 'ਲਾਗੂ ਕਰੋ', 'aplica', 'Apply', 'Waye', 'Aiwatar'),
(840, 'invalid_school_selection', 'Invalid Selection. Please choose valid School.', 'অবৈধ নির্বাচন। বৈধ স্কুল নির্বাচন করুন।', 'Selección invalida. Por favor elija una escuela válida.', 'اختيار غير صالح. الرجاء اختيار مدرسة صالحة.', 'अमान्य चयन कृपया वैध स्कूल चुनें।', 'غلط انتخاب براہ مہربانی درست اسکول منتخب کریں.', '选择无效。 请选择有效的学校。', '無効な選択。 有効な学校を選択してください。', 'Seleção inválida. Por favor, escolha uma escola válida.', 'Недопустимый выбор. Выберите действующую школу.', 'Selection invalide. Veuillez choisir une école valide.', '유효하지 않은 선택입니다. 유효한 학교를 선택하십시오.', 'Ungültige Auswahl. Bitte wählen Sie eine gültige Schule.', 'Selezione non valida. Scegli una scuola valida.', 'การเลือกไม่ถูกต้อง โปรดเลือกโรงเรียนที่ถูกต้อง', 'Érvénytelen kiválasztás. Kérjük, válasszon érvényes iskolát.', 'Ongeldige selectie. Kies een geldige school.', 'Electio invalida. Placere eligere valet School.', 'Pemilihan Tidak Valid. Silakan pilih Sekolah yang valid.', 'Geçersiz seçim. Lütfen geçerli bir okul seçiniz.', 'Μη έγκυρη επιλογή. Επιλέξτε το έγκυρο σχολείο.', 'انتخاب نامعتبر لطفا مدرسه معتبر را انتخاب کنید', 'Pemilihan tidak sah. Sila pilih Sekolah yang sah.', 'చెల్లని ఎంపిక. దయచేసి చెల్లుబాటు అయ్యే పాఠశాలను ఎంచుకోండి.', 'தவறான தேர்வு. சரியான பள்ளியைத் தேர்ந்தெடுக்கவும்.', 'અમાન્ય પસંદગી. કૃપા કરીને માન્ય શાળા પસંદ કરો.', 'Nieprawidłowy wybór. Wybierz właściwą szkołę.', 'Недійсний вибір Будь ласка, виберіть дійсну школу.', 'ਅਵੈਧ ਚੋਣ ਕਿਰਪਾ ਕਰਕੇ ਵੈਧ ਸਕੂਲ ਚੁਣੋ', 'Selecție nevalidă. Alegeți o școală validă.', 'မှားနေသောရွေးချယ်ရေး။ ခိုင်လုံသောကျောင်း ကျေးဇူးပြု. ရွေးချယ်ပါ။', 'Aṣayan aiyipada. Jọwọ yan Ile-iṣẹ to wulo.', 'Zaɓin mara inganci. Don Allah a zabi Makaranta mai kyau.'),
(841, 'visit', 'Visit', 'পরিদর্শন', 'Visitar', 'يزور', 'पर जाएँ', 'ملاحظہ کریں', '访问', '訪問', 'Visita', 'Визит', 'Visite', '방문', 'Besuch', 'Visita', 'เยือน', 'Látogatás', 'Bezoek', 'visita', 'Mengunjungi', 'Ziyaret etmek', 'Επίσκεψη', 'بازدید', 'Lawati', 'సందర్శించండి', 'வருகை', 'મુલાકાત લો', 'Odwiedzić', 'Відвідайте', 'ਮੁਲਾਕਾਤ', 'Vizita', 'အလည်အပတ်', 'Ṣabẹwo', 'Ziyarci'),
(842, 'publish', 'Publish', 'প্রকাশিত', 'Publicar', 'نشر', 'प्रकाशित करना', 'شائع کریں', '发布', '公開する', 'Publicar', 'Публиковать', 'Publier', '게시', 'Veröffentlichen', 'Pubblicare', 'ประกาศ', 'közzétesz', 'Publiceren', 'publish', 'Menerbitkan', 'Yayınla', 'Δημοσιεύω', 'انتشار', 'Menerbitkan', 'ప్రచురించు', 'வெளியிடு', 'પ્રકાશિત કરો', 'Publikować', 'Опублікувати', 'ਪਬਲਿਸ਼ ਕਰੋ', 'Publica', 'ပုံနှိပ်ထုတ်ဝေ', 'Ṣe atẹjade', 'Buga'),
(843, 'unpublish', 'Unpublish', 'অপ্রকাশিত', 'No publicar', 'إلغاء النشر', 'अप्रकाशित', 'غیر اشاعت شدہ', '取消发布', '公開しない', 'Cancelar publicação', 'Отменить публикацию', 'Annuler la publication', '게시 취소', 'Veröffentlichung rückgängig machen', 'Non pubblicato', 'ยกเลิกการเผยแพร่', 'közzétételének', 'Publicatie ongedaan maken', 'Unpublishway', 'Batalkan publikasi', 'Yayından Kaldır', 'Κατάργηση δημοσίευσης', 'لغو انتشار', 'Tidak dapat menerbitkan', 'ప్రచురించని', 'வெளியிடாதே', 'અનપ્રકાશિત', 'Cofnij publikację', 'Скасувати публікацію', 'ਅਪ੍ਰਕਾਸ਼ਿਤ', 'Anulați publicarea', 'မထုတ်ဝေရသေးသော', 'Aṣejade', 'Unpublish'),
(844, 'detail', 'Detail', 'বিস্তারিত', 'Detalle', 'التفاصيل', 'विस्तार', 'تفصیل', '详情', '詳細', 'Detalhe', 'подробность', 'Détail', '세부 묘사', 'Detail', 'Dettaglio', 'รายละเอียด', 'Részlet', 'Detail', 'detail', 'Detail', 'detay', 'Λεπτομέρεια', 'جزئیات', 'Terperinci', 'వివరాలు', 'விவரம்', 'વિગતવાર', 'Szczegół', 'Подробиці', 'ਵੇਰਵੇ', 'Detaliu', 'အသေးစိတ်', 'Apejuwe', 'Detail'),
(845, 'school_lat', 'Latitude', 'অক্ষাংশ', 'Latitud', 'خط العرض', 'अक्षांश', 'طول', '纬度', '緯度', 'Latitude', 'широта', 'Latitude', '위도', 'Breite', 'Latitudine', 'ละติจูด', 'Szélességi kör', 'Breedtegraad', 'latitudo', 'Lintang', 'Enlem', 'Γεωγραφικό πλάτος', 'عرض جغرافیایی', 'Latitud', 'అక్షాంశం', 'அட்சரேகை', 'અક્ષાંશ', 'Szerokość', 'Широта', 'ਵਿਥਕਾਰ', 'Latitudine', 'လတီ္တတွဒ်', 'Iwọn', 'Latitude'),
(846, 'school_lng', 'Longitude', 'দ্রাঘিমা', 'Longitud', 'خط الطول', 'देशान्तर', 'لمبائی', '经度', '経度', 'Longitude', 'Долгота', 'Longitude', '경도', 'Längengrad', 'Longitudine', 'ลองจิจูด', 'Hosszúság', 'Lengtegraad', 'longitudo', 'Garis bujur', 'Boylam', 'Γεωγραφικό μήκος', 'عرض جغرافیایی', 'Longitud', 'రేఖాంశం', 'தீர்க்கரேகை', 'રેખાંશ', 'Długość geograficzna', 'Довгота', 'ਲੰਬਕਾਰ', 'Longitudine', 'လောင်ဂျီတွဒ်', 'Gunitude', 'Longitude'),
(847, 'galleries', 'Galleries', 'গ্যালারী', 'Galerias', 'المعارض', 'गैलरी', 'گیلریوں', '画廊', 'ギャラリー', 'Galerias', 'галереи', 'Galeries', '갤러리', 'Galerien', 'Gallerie', 'แกลลอรี่', 'galériák', 'Galleries', 'supportabant porticus', 'Galeri', 'Galeriler', 'Γκαλερί', 'گالری ها', 'Galeri', 'గ్యాలరీలు', 'காட்சியகங்கள்', 'ગેલેરીઓ', 'Galerie', 'Галереї', 'ਗੈਲਰੀਆਂ', 'Galerii', 'ပြခန်း', 'Awọn aworan aworan', 'Galleries'),
(848, 'events', 'Events', 'ইভেন্টস', 'Eventos', 'أحداث', 'आयोजन', 'تقریبات', '活动', 'イベント', 'Eventos', 'События', 'Événements', '이벤트', 'Veranstaltungen', 'eventi', 'เหตุการณ์ที่เกิดขึ้น', 'Események', 'Evenementen', 'Events', 'Acara', 'Olaylar', 'Εκδηλώσεις', 'مناسبت ها', 'Peristiwa', 'ఈవెంట్స్', 'நிகழ்வுகள்', 'ઘટનાઓ', 'Wydarzenia', 'Події', 'ਸਮਾਗਮ', 'Evenimente', 'ဖြစ်ရပ်များ', 'Awọn iṣẹlẹ', 'Events'),
(849, 'notices', 'Notices', 'নোটিশস', 'Avisos', 'إشعارات', 'नोटिस', 'نوٹس', '通告', '通知', 'Avisos', 'Извещения', 'Les avis', '공지 사항', 'Bemerkungen', 'Avvisi', 'การบอกกล่าว', 'közlemények', 'Mededelingen', 'III', 'Pemberitahuan', 'Uyarılar', 'Ειδοποιήσεις', 'اطلاعیه ها', 'Notis', 'నోటీసులు', 'அறிவிப்புகள்', 'સૂચનાઓ', 'Powiadomienia', 'Сповіщення', 'ਸੂਚਨਾਵਾਂ', 'Notificări', 'သတိပေးချက်များ', 'Awọn akiyesi', 'Sanarwa'),
(850, 'holidays', 'Holidays', 'হলিডেজ', 'Vacaciones', 'العطل', 'छुट्टियां', 'چھٹیوں', '假期', '休日', 'Feriados', 'каникулы', 'Vacances', '휴가', 'Ferien', 'Vacanze', 'วันหยุด', 'Ünnepek', 'Vakantie', 'feriae', 'Liburan', 'Bayram', 'Διακοπές', 'تعطیلات', 'Cuti', 'సెలవులు', 'விடுமுறை', 'રજાઓ', 'Wakacje', 'Свята', 'ਛੁੱਟੀਆਂ', 'concediu', 'အားလပ်ရက်', 'Awọn isinmi', 'Ranaku Masu Tsarki'),
(851, 'pls_remove_child_data', 'Please delete child data before delete this.', 'এই ডাটা  মুছে ফেলার আগে প্লিজ ডিলিট চাইল্ড ডাটা', 'Por favor, elimine los datos secundarios antes de eliminar esto.', 'يرجى حذف البيانات الفرعية قبل حذفها.', 'इसे हटाने से पहले कृपया बाल डेटा हटाएं।', 'براہ کرم اس کو حذف کرنے سے قبل بچے کے ڈیٹا کو حذف کریں.', '删除之前请删除子数据。', '削除する前に子データを削除してください。', 'Por favor, apague os dados da criança antes de deletar isto.', 'Удалите дочерние данные перед удалением.', 'Veuillez supprimer les données enfants avant de supprimer ceci.', '삭제하기 전에 하위 데이터를 삭제하십시오.', 'Bitte löschen Sie untergeordnete Daten, bevor Sie diese löschen.', 'Si prega di cancellare i dati figlio prima di eliminarlo.', 'โปรดลบข้อมูลเด็กก่อนลบข้อมูลนี้', 'Kérjük, törölje a gyermekadatokat a törlés előtt.', 'Wis onderliggende gegevens voordat u deze verwijdert.', 'Delete hoc in conspectu delete notitia puero placet.', 'Hapus data anak sebelum menghapus ini.', 'Lütfen bunu silmeden önce çocuk verilerini silin', 'Διαγράψτε τα δεδομένα παιδιού πριν διαγράψετε αυτό το θέμα.', 'لطفا قبل از حذف این اطلاعات فرزند را حذف کنید.', 'Sila padamkan data kanak-kanak sebelum memadamkannya.', 'దీన్ని తొలగించడానికి ముందు పిల్లల డేటాను తొలగించండి.', 'இதை நீக்குவதற்கு முன் குழந்தைத் தரவை நீக்குக.', 'કૃપા કરીને આને કાઢી નાખતા પહેલા બાળ ડેટા કાઢી નાખો.', 'Usuń dane podrzędne, zanim je usuniesz.', 'Будь ласка, видаліть дочірні дані, перш ніж видалити це.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸਨੂੰ ਮਿਟਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਬੱਚੇ ਦਾ ਡੇਟਾ ਮਿਟਾਓ.', 'Ștergeți datele copilului înainte de a șterge acest lucru.', 'မတိုင်မှီကဒီကိုဖျက်ကလေးက data တွေကိုဖျက်ပစ်ပါ။', 'Jọwọ pa awọn ọmọ ọmọkunrin rẹ ṣaaju ki o to paarẹ.', 'Da fatan a share bayanan jariri kafin a share wannan.'),
(852, 'wrong_username', 'You have entered wrong username', 'আপনি ভুল ব্যবহারকারীর নাম প্রবেশ করেছেন', 'You have entered wrong username', 'لقد أدخلت اسم مستخدم خاطئ', 'आपने गलत उपयोगकर्ता नाम दर्ज किया है', 'آپ نے غلط صارف نامہ درج کیا ہے', '您输入了错误的用户名', '間違ったユーザー名を入力しました', 'Você digitou o nome de usuário incorreto', 'Вы ввели неправильное имя пользователя', 'Vous avez entré un mauvais nom d\'utilisateur', '잘못된 사용자 이름을 입력했습니다.', 'Sie haben einen falschen Benutzernamen eingegeben', 'Hai inserito un nome utente errato', 'คุณป้อนชื่อผู้ใช้ผิด', 'Rossz felhasználónevet adott meg', 'U hebt de verkeerde gebruikersnaam ingevoerd', 'Et ingressi sunt mali nomen usoris', 'Anda memasukkan nama pengguna yang salah', 'Yanlış kullanıcı adı girdiniz', 'Έχετε εισάγει λάθος όνομα χρήστη', 'نام کاربری اشتباه وارد کرده اید', 'Anda telah memasukkan nama pengguna yang salah', 'మీరు తప్పు వినియోగదారు పేరును నమోదు చేసారు', 'தவறான பயனர்பெயரை உள்ளிட்டுள்ளீர்கள்', 'તમે ખોટી વપરાશકર્તાનામ દાખલ કર્યું છે', 'Podałeś błędną nazwę użytkownika', 'Ви ввели неправильне ім\'я користувача', 'ਤੁਸੀਂ ਗਲਤ ਉਪਭੋਗਤਾ ਨਾਮ ਦਰਜ ਕੀਤਾ ਹੈ', 'Ați introdus un nume de utilizator greșit', 'သငျသညျမှားယွင်းတဲ့အသုံးပြုသူအမည်ထဲသို့ဝင်ခဲ့ကြ', 'O ti tẹ orukọ olumulo ti ko tọ si', 'An shigar da sunan mai amfani mara kyau'),
(853, 'set_academic_year_for_school', 'Please set academic year for the associated school.', 'সংশ্লিষ্ট স্কুলর  জন্য একাডেমিক বছর সেট করুন।', 'Por favor, establezca el año académico para la escuela asociada.', 'يرجى تحديد العام الدراسي للمدرسة المرتبطة.', 'कृपया संबंधित स्कूल के लिए अकादमिक वर्ष निर्धारित करें।', 'برائے مہربانی تعلیمی سال متعلقہ اسکول کے لئے مقرر کریں.', '请为相关学校设置学年。', '関連する学校の学年を設定してください。', 'Por favor, defina o ano acadêmico para a escola associada.', 'Укажите учебный год для соответствующей школы.', 'Veuillez définir l\'année scolaire pour l\'école associée.', '해당 학교의 학년도를 설정하십시오.', 'Bitte legen Sie das Schuljahr für die zugehörige Schule fest.', 'Si prega di fissare l\'anno accademico per la scuola associata.', 'โปรดกำหนดปีการศึกษาสำหรับโรงเรียนที่เกี่ยวข้อง', 'Kérjük, állítsa be az akadémiai évet a társult iskola számára.', 'Stel het academisch jaar in voor de bijbehorende school.', 'Quaesumus eam selige academic consociata annum ad scholam.', 'Harap tetapkan tahun akademik untuk sekolah terkait.', 'Lütfen ilgili okul için akademik yılı ayarlayın.', 'Ορίστε ακαδημαϊκό έτος για το σχετικό σχολείο.', 'لطفا سال تحصیلی را برای مدرسه همراه تعیین کنید.', 'Sila tentukan tahun akademik untuk sekolah yang berkaitan.', 'దయచేసి అనుబంధ పాఠశాల కోసం విద్యా సంవత్సరం సెట్ చేయండి.', 'அதனுடன் தொடர்புடைய பள்ளிக்கு கல்விக் காலத்தை அமைத்திடுங்கள்.', 'કૃપા કરીને સંબંધિત શાળા માટે શૈક્ષણિક વર્ષ સેટ કરો.', 'Ustaw rok akademicki dla stowarzyszonej szkoły.', 'Будь ласка, встановіть навчальний рік для асоційованої школи.', 'ਕਿਰਪਾ ਕਰਕੇ ਸੰਬੰਧਿਤ ਸਕੂਲ ਲਈ ਅਕਾਦਮਿਕ ਸਾਲ ਸੈਟ ਕਰੋ.', 'Alegeți anul universitar pentru școala asociată.', 'ဆက်စပ်သောကြောငျးအတှကျပညာသင်နှစ်သတ်မှတ်ပါ။', 'Jowo ṣeto odun ẹkọ fun ile-iwe ti o ni nkan.', 'Don Allah a kafa shekara ta ilimi don makarantar hade.'),
(854, 'industry_type', 'Industry Type', 'ইন্ডাস্ট্রি টাইপ', 'Tipo de industria', 'نوع الصناعة', 'उद्योग के प्रकार', 'صنعت کی قسم', '行业类型', '業種別', 'tipo industrial', 'Тип промышленности', 'type d\'industrie', '업종', 'Branchentyp', 'Tipo d\'industria', 'ประเภทอุตสาหกรรม', 'Ipari típus', 'industrie type', 'Type Industry', 'Jenis Industri', 'Endüstri Tipi', 'Τύπος βιομηχανίας', 'نوع صنعت', 'Jenis Industri', 'పరిశ్రమ పద్ధతి', 'தொழில் வகை', 'ઉદ્યોગ પ્રકાર', 'typ przemysłu', 'Тип промисловості', 'ਉਦਯੋਗ ਕਿਸਮ', 'tipul industriei', 'စက်မှုအမျိုးအစား', 'Iru iṣẹ Iru', 'Masana\'antu'),
(855, 'approval', 'Approval', 'অনুমোদন', 'aprobación', 'موافقة', 'अनुमोदन', 'منظوری', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'academic', 'Academic', 'একাডেমিক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'deactivate', 'Deactivate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'finance', 'Financial statement', 'অর্থ বিবৃতি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `custom_member_id` varchar(20) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library_members`
--

INSERT INTO `library_members` (`id`, `school_id`, `user_id`, `custom_member_id`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(2, 1, 23, 'LM00001', 1, '2019-08-03 09:15:17', '0000-00-00 00:00:00', 1, 0),
(3, 18, 38, 'LM00003', 1, '2019-08-03 09:15:24', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `student_id` int(11) NULL,
  `grade_id` int(11) NULL,
  `written_mark` int(11) DEFAULT '0',
  `written_obtain` int(11) DEFAULT '0',
  `tutorial_mark` int(11) NULL DEFAULT '0',
  `tutorial_obtain` int(11) NULL DEFAULT '0',
  `practical_mark` int(11) NULL DEFAULT '0',
  `practical_obtain` int(11) NULL DEFAULT '0',
  `viva_mark` int(11) NULL DEFAULT '0',
  `viva_obtain` int(11) NULL DEFAULT '0',
  `exam_total_mark` int(11) NULL DEFAULT '0',
  `obtain_total_mark` int(11) NULL DEFAULT '0',
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `school_id`, `exam_id`, `class_id`, `section_id`, `subject_id`, `academic_year_id`, `student_id`, `grade_id`, `written_mark`, `written_obtain`, `tutorial_mark`, `tutorial_obtain`, `practical_mark`, `practical_obtain`, `viva_mark`, `viva_obtain`, `exam_total_mark`, `obtain_total_mark`, `remark`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 2, 1, 2, 50, 40, 4, 4, 50, 45, 5, 5, 100, 80, '', 1, '2019-06-26 11:39:10', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 1, 1, 1, 2, 2, 2, 40, 0, 0, 0, 0, 0, 0, 0, 100, 0, '', 1, '2019-06-04 10:56:20', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mark_emails`
--

CREATE TABLE `mark_emails` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `role_id` int(11) NULL,
  `receivers` text,
  `academic_year_id` int(11) NULL,
  `sender_role_id` int(11) NULL,
  `subject` varchar(255) NULL,
  `body` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mark_smses`
--

CREATE TABLE `mark_smses` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `role_id` int(11) NULL,
  `receivers` text NULL,
  `sms_gateway` varchar(50) NULL,
  `academic_year_id` int(11) NULL,
  `sender_role_id` int(11) NULL,
  `body` text NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `created_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `subject` varchar(255) NULL,
  `body` text,
  `attachment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message_relationships`
--

CREATE TABLE `message_relationships` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `message_id` int(11) NULL,
  `sender_id` int(11) NULL,
  `receiver_id` int(11) NULL,
  `owner_id` int(11) NULL,
  `role_id` int(11) NULL,
  `is_trash` tinyint(1) NULL,
  `is_draft` smallint(1) NULL,
  `is_favorite` tinyint(1) NULL,
  `is_read` tinyint(1) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NULL,
  `module_name` varchar(50) NULL,
  `module_slug` varchar(50) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_slug`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Setting', 'setting', 1, '2017-11-13 22:55:19', '2017-11-13 22:57:10', 1, 1),
(2, 'Theme', 'theme', 1, '2017-12-12 13:34:52', '0000-00-00 00:00:00', 1, 0),
(3, 'Language', 'language', 1, '2017-12-12 13:36:11', '0000-00-00 00:00:00', 1, 0),
(4, 'Administrator', 'administrator', 1, '2017-12-12 13:36:35', '0000-00-00 00:00:00', 1, 0),
(5, 'Human Resource', 'hrm', 1, '2017-12-12 13:38:30', '0000-00-00 00:00:00', 1, 0),
(6, 'Teacher', 'teacher', 1, '2017-12-12 13:39:01', '0000-00-00 00:00:00', 1, 0),
(7, 'Academic Activity', 'academic', 1, '2017-12-12 13:42:24', '0000-00-00 00:00:00', 1, 0),
(8, 'Guardian', 'guardian', 1, '2017-12-12 13:43:01', '0000-00-00 00:00:00', 1, 0),
(9, 'Student', 'student', 1, '2017-12-12 13:43:28', '0000-00-00 00:00:00', 1, 0),
(10, 'Attendance', 'attendance', 1, '2017-12-12 13:45:03', '0000-00-00 00:00:00', 1, 0),
(11, 'Assignment', 'assignment', 1, '2017-12-12 13:45:45', '0000-00-00 00:00:00', 1, 0),
(12, 'Exam', 'exam', 1, '2017-12-12 13:46:13', '0000-00-00 00:00:00', 1, 0),
(14, 'Library', 'library', 1, '2017-12-12 13:46:33', '0000-00-00 00:00:00', 1, 0),
(15, 'Transport', 'transport', 1, '2017-12-12 13:46:52', '0000-00-00 00:00:00', 1, 0),
(16, 'Hostel', 'hostel', 1, '2017-12-12 13:47:15', '0000-00-00 00:00:00', 1, 0),
(17, 'Message, Email & SMS', 'message', 1, '2017-12-12 13:47:48', '2017-12-14 08:48:49', 1, 1),
(18, 'Announcement', 'announcement', 1, '2017-12-12 13:48:23', '0000-00-00 00:00:00', 1, 0),
(19, 'Event', 'event', 1, '2017-12-12 13:48:36', '0000-00-00 00:00:00', 1, 0),
(20, 'Visitor Info', 'visitor', 1, '2017-12-12 13:49:05', '0000-00-00 00:00:00', 1, 0),
(21, 'Accounting', 'accounting', 1, '2017-12-12 13:49:32', '0000-00-00 00:00:00', 1, 0),
(22, 'Report', 'report', 1, '2017-12-12 13:51:09', '0000-00-00 00:00:00', 1, 0),
(13, 'Exam Mark', 'exam', 1, '2017-12-14 00:00:00', '2017-12-14 09:07:46', 1, 1),
(23, 'Certificate', 'certificate', 1, '2018-03-17 16:27:14', '0000-00-00 00:00:00', 2, 0),
(24, 'Media Gallery', 'gallery', 1, '2018-03-22 06:46:46', '0000-00-00 00:00:00', 1, 0),
(25, 'Frontend', 'frontend', 1, '2018-03-23 03:40:22', '0000-00-00 00:00:00', 1, 0),
(26, 'Payroll', 'payroll', 1, '2018-03-25 02:07:46', '0000-00-00 00:00:00', 1, 0),
(27, 'Financial Statement', 'finance', 1, '2019-09-23 00:00:00', '2019-09-23 00:00:00', 1, 1),
(28, 'Referral Users', 'referral ', 1, '2019-09-23 00:00:00', '2019-09-23 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `title` varchar(255) NULL,
  `date` date NULL,
  `image` varchar(255) DEFAULT NULL,
  `news` text,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `role_id` int(11) NULL,
  `title` varchar(255) NULL,
  `date` date NULL,
  `notice` text,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `school_id`, `role_id`, `title`, `date`, `notice`, `is_view_on_web`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 0, 'off day', '2019-06-29', 'off day', 1, 1, '2019-06-29 09:18:58', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_result`
--

CREATE TABLE `onlineexam_result` (
  `student_id` int(11) NULL,
  `school_id` int(11) NULL,
  `question_id` int(11) NULL,
  `total_marks` int(11) DEFAULT NULL,
  `status` int(11) NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_student_ans`
--

CREATE TABLE `onlineexam_student_ans` (
  `student_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `question_id` int(11) NULL,
  `question_no` int(11) NULL,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlineexam_student_ans`
--

INSERT INTO `onlineexam_student_ans` (`student_id`, `exam_id`, `question_id`, `question_no`, `answer`) VALUES
(45, 0, 5, 1, 'a'),
(45, 0, 5, 2, 'fsdf'),
(45, 0, 5, 3, 'b'),
(45, 0, 5, 4, 'd'),
(45, 0, 5, 5, 'dfsf');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_qsn_ans`
--

CREATE TABLE `online_exam_qsn_ans` (
  `question_id` int(11) NULL,
  `question_no` int(11) NULL,
  `quesion_type` varchar(20) NULL,
  `quesion_title` varchar(255) NULL,
  `option_one` varchar(255) DEFAULT NULL,
  `option_two` varchar(255) DEFAULT NULL,
  `option_three` varchar(255) DEFAULT NULL,
  `option_four` varchar(255) DEFAULT NULL,
  `answer` varchar(25) DEFAULT NULL,
  `mark` int(11) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_exam_qsn_ans`
--

INSERT INTO `online_exam_qsn_ans` (`question_id`, `question_no`, `quesion_type`, `quesion_title`, `option_one`, `option_two`, `option_three`, `option_four`, `answer`, `mark`) VALUES
(5, 1, 'multiple_choose', 'To be honest, a ternary operator would only make this worse, what i would suggest if making it simpler is what you are aiming ', 'php', 'java', 'python', 'c#', 'c', 1),
(5, 2, 'sort_question', 'Which as you can tell, only gets more complicated the more you add to it', NULL, NULL, NULL, NULL, NULL, 3),
(5, 3, 'true_false', 'Ternary statements are much more suited to boolean values and alternating logic.', 'true', 'false', NULL, NULL, 'b', 1),
(5, 4, 'multiple_choose', 'Just copy and paste the function anywhere you want in your php sourcecode and that\'s it! Hope this helps!', 'keyboard', 'mouse', 'scaner', 'printer', 'd', 1),
(5, 5, 'sort_question', 'The problem is I am getting wrong calculation of hours, probably due to my query.', NULL, NULL, NULL, NULL, NULL, 3),
(6, 1, 'multiple_choose', 'There is a simple text field called “email_address” and a submit button.', 'php', 'java', 'net', 'python', 'c', 1),
(6, 2, 'sort_question', 'This is a short and sweet tutorial on how to submit a PHP form (or any HTML form, for that matter) to a new tab using HTML’s target attribute.', NULL, NULL, NULL, NULL, NULL, 3),
(6, 3, 'true_false', 'There is a simple text field called “email_address” and a submit button', 'true', 'false', NULL, NULL, 'b', 1),
(6, 4, 'multiple_choose', 'Above, we’ve set the target attribute to “_blank”, which means that it will now submit to a new tab or window.', 'data connect', 'microsoft', 'amazon', 'ali baba', 'b', 1),
(6, 5, 'multiple_choose', 'This is a short and sweet tutorial on how to submit a PHP form (or any HTML form, for that matter) to a new tab using HTML’s target attribute.', 'mozila', 'charome', 'opera mini', 'teamviewer', 'd', 1),
(6, 6, 'sort_question', 'There is a simple text field called “email_address” and a submit button', NULL, NULL, NULL, NULL, NULL, 5),
(6, 7, 'sort_question', 'This is a short and sweet tutorial on how to submit a PHP form (or any HTML form, for that matter) to a new tab using HTML’s target attribute.', NULL, NULL, NULL, NULL, NULL, 1),
(6, 8, 'sort_question', 'Above, we’ve set the target attribute to “_blank”, which means that it will now submit to a new tab or window.', NULL, NULL, NULL, NULL, NULL, 2),
(7, 1, 'multiple_choose', 'fsadf asdfds', '', '', '', '', 'c', 1),
(7, 2, 'sort_question', 'fsdfsdf', NULL, NULL, NULL, NULL, NULL, 1),
(8, 1, 'sort_question', 'sdfsdf', NULL, NULL, NULL, NULL, NULL, 1),
(9, 1, 'sort_question', 'sfsfsf', NULL, NULL, NULL, NULL, NULL, 1),
(10, 1, 'sort_question', 'second', NULL, NULL, NULL, NULL, NULL, 1),
(11, 1, 'sort_question', 'fasdfsd adsf', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_question`
--

CREATE TABLE `online_exam_question` (
  `question_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `exam_date` varchar(50) NULL,
  `start_time` time NULL,
  `end_time` time NULL,
  `status` int(11) DEFAULT '1',
  `attend_student` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT NULL,
  `created_by` int(11) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_exam_question`
--

INSERT INTO `online_exam_question` (`question_id`, `exam_id`, `school_id`, `class_id`, `subject_id`, `exam_date`, `start_time`, `end_time`, `status`, `attend_student`, `created_at`, `modified_at`, `created_by`) VALUES
(5, 1, 1, 1, 1, '25-08-2019', '12:35:00', '01:39:00', 1, NULL, '2019-08-19 07:06:12', '2019-08-19 13:06:12', 1),
(6, 1, 1, 1, 1, '28-08-2019', '04:30:00', '05:45:00', 1, NULL, '2019-08-21 05:29:24', '2019-08-21 11:29:24', 1),
(7, 3, 1, 2, 4, '29-08-2019', '12:00:00', '01:00:00', 1, NULL, '2019-08-25 06:00:40', '2019-08-25 12:00:40', 3),
(8, 3, 1, 5, 5, '22-08-2019', '01:00:00', '02:00:00', 1, NULL, '2019-08-25 06:47:10', '2019-08-25 12:47:10', 1),
(9, 3, 1, 2, 3, '15-08-2019', '01:00:00', '02:00:00', 1, NULL, '2019-08-25 06:54:07', '2019-08-25 12:54:07', 28),
(10, 3, 1, 2, 3, '22-08-2019', '02:00:00', '02:00:00', 1, NULL, '2019-08-25 06:57:46', '2019-08-25 12:57:46', 28),
(11, 3, 1, 2, 7, '14-08-2019', '01:15:00', '01:15:00', 1, NULL, '2019-08-25 07:08:06', '2019-08-25 13:08:06', 28);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` int(11) NULL,
  `module_id` int(11) NULL,
  `operation_name` varchar(50) NULL,
  `operation_slug` varchar(50) NULL,
  `is_view_vissible` tinyint(1) DEFAULT '0',
  `is_add_vissible` tinyint(1) DEFAULT '0',
  `is_edit_vissible` tinyint(1) DEFAULT '0',
  `is_delete_vissible` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `module_id`, `operation_name`, `operation_slug`, `is_view_vissible`, `is_add_vissible`, `is_edit_vissible`, `is_delete_vissible`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'General Setting', 'setting', 1, 1, 1, 0, 1, '2017-12-12 16:06:25', '2018-02-09 01:24:50', 1, 1),
(2, 1, 'Payment Setting', 'payment', 1, 1, 1, 0, 1, '2017-12-12 16:06:55', '2018-02-09 01:24:40', 1, 1),
(3, 1, 'SMS Setting', 'sms', 1, 1, 1, 0, 1, '2017-12-12 16:07:07', '2018-02-09 01:05:32', 1, 1),
(4, 2, 'Theme', 'theme', 1, 0, 1, 0, 1, '2017-12-12 16:08:39', '2018-01-03 07:02:51', 1, 1),
(5, 3, 'Language', 'language', 1, 1, 1, 1, 1, '2017-12-12 16:09:22', '2018-01-03 07:03:03', 1, 1),
(6, 4, 'Academic Year', 'year', 1, 1, 1, 1, 1, '2017-12-12 16:10:34', '2018-01-03 07:03:18', 1, 1),
(7, 4, 'User Role', 'role', 1, 1, 1, 1, 1, '2017-12-12 16:10:55', '2018-01-03 07:03:31', 1, 1),
(8, 4, 'Role Permission', 'permission', 1, 0, 1, 0, 1, '2017-12-12 16:12:10', '2018-01-03 07:05:00', 1, 1),
(64, 4, 'Reset User Password', 'password', 0, 0, 1, 0, 1, '2017-12-13 20:14:23', '2018-01-03 07:05:11', 1, 1),
(10, 5, 'Designation', 'designation', 1, 1, 1, 1, 1, '2017-12-12 16:15:38', '2018-01-03 07:07:38', 1, 1),
(11, 5, 'Employee', 'employee', 1, 1, 1, 1, 1, '2017-12-12 16:15:55', '2018-01-03 07:19:54', 1, 1),
(12, 6, 'Teacher', 'teacher', 1, 1, 1, 1, 1, '2017-12-12 16:17:22', '2018-01-03 07:25:07', 1, 1),
(14, 7, 'Classes', 'classes', 1, 1, 1, 1, 1, '2017-12-12 16:19:01', '2018-01-03 07:25:17', 1, 1),
(15, 7, 'Section', 'section', 1, 1, 1, 1, 1, '2017-12-12 16:19:24', '2018-01-03 07:25:24', 1, 1),
(16, 7, 'Subject', 'subject', 1, 1, 1, 1, 1, '2017-12-12 16:19:48', '2018-01-03 07:25:33', 1, 1),
(17, 7, 'Syllabus', 'syllabus', 1, 1, 1, 1, 1, '2017-12-12 16:20:32', '2018-01-03 07:25:54', 1, 1),
(18, 7, 'Class Routine', 'routine', 1, 1, 1, 1, 1, '2017-12-12 16:20:56', '2018-01-03 07:26:13', 1, 1),
(19, 7, 'Promotion', 'promotion', 1, 1, 0, 0, 1, '2017-12-12 16:21:17', '2018-02-09 01:42:57', 1, 1),
(20, 8, 'Guardian', 'guardian', 1, 1, 1, 1, 1, '2017-12-12 16:23:32', '2018-01-03 07:29:06', 1, 1),
(21, 9, 'Student', 'student', 1, 1, 1, 1, 1, '2017-12-12 17:58:56', '2018-01-03 07:29:15', 1, 1),
(65, 4, 'Backup Database', 'backup', 1, 0, 0, 0, 1, '2017-12-13 20:14:39', '2018-02-09 01:29:33', 1, 1),
(23, 10, 'Employee Attendance', 'employee', 1, 1, 1, 0, 1, '2017-12-12 18:00:10', '2018-01-03 07:30:19', 1, 1),
(24, 10, 'Teacher Attendance', 'teacher', 1, 1, 1, 0, 1, '2017-12-12 18:00:51', '2018-01-03 07:29:52', 1, 1),
(25, 10, 'Student Attendance', 'student', 1, 1, 1, 0, 1, '2017-12-12 18:01:17', '2018-01-03 07:30:01', 1, 1),
(26, 11, 'Assignment', 'assignment', 1, 1, 1, 1, 1, '2017-12-12 18:02:08', '2018-01-03 07:30:40', 1, 1),
(28, 12, 'Exam Term', 'exam', 1, 1, 1, 1, 1, '2017-12-12 18:03:30', '2018-02-09 01:49:25', 1, 1),
(29, 12, 'Exam Grade', 'grade', 1, 1, 1, 1, 1, '2017-12-12 18:03:56', '2018-01-03 07:31:56', 1, 1),
(30, 12, 'Exam Schedule', 'schedule', 1, 1, 1, 1, 1, '2017-12-12 18:04:58', '2018-01-03 07:32:14', 1, 1),
(31, 12, 'Exam Suggestion', 'suggestion', 1, 1, 1, 1, 1, '2017-12-12 18:05:18', '2018-01-03 07:32:30', 1, 1),
(32, 12, 'Exam Attendance', 'attendance', 1, 1, 1, 0, 1, '2017-12-12 18:05:43', '2018-01-03 07:32:58', 1, 1),
(33, 13, 'Exam Mark', 'mark', 1, 1, 1, 0, 1, '2017-12-12 18:06:04', '2018-01-03 07:33:16', 1, 1),
(34, 13, 'Mark Sheet', 'marksheet', 1, 1, 1, 0, 1, '2017-12-12 18:06:24', '2018-01-03 07:34:08', 1, 1),
(35, 13, 'Result', 'result', 1, 1, 1, NULL, 1, '2017-12-12 18:06:41', '2018-09-02 12:40:01', 1, 1),
(37, 14, 'Library Book', 'book', 1, 1, 1, 1, 1, '2017-12-12 18:09:17', '2018-01-03 07:36:02', 1, 1),
(38, 14, 'Library Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:09:33', '2018-01-03 07:36:24', 1, 1),
(66, 14, 'Issue & Return', 'issue', 1, 1, 1, 0, 1, '2017-12-14 08:46:37', '2018-01-03 07:37:01', 1, 1),
(40, 15, 'Vehicle', 'vehicle', 1, 1, 1, 1, 1, '2017-12-12 18:10:49', '2018-01-03 07:37:11', 1, 1),
(41, 15, 'Transport Route', 'route', 1, 1, 1, 1, 1, '2017-12-12 18:11:17', '2018-01-03 07:41:27', 1, 1),
(42, 15, 'Transport Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:11:39', '2018-01-03 07:41:46', 1, 1),
(43, 16, 'Hostel', 'hostel', 1, 1, 1, 1, 1, '2017-12-12 18:12:16', '2018-01-03 07:41:55', 1, 1),
(44, 16, 'Hostel Room', 'room', 1, 1, 1, 1, 1, '2017-12-12 18:12:37', '2018-01-03 07:42:02', 1, 1),
(45, 16, 'Hostel Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:13:00', '2018-01-03 07:42:23', 1, 1),
(47, 17, 'Email', 'mail', 1, 1, 0, 1, 1, '2017-12-12 18:15:57', '2018-01-03 07:44:16', 1, 1),
(48, 17, 'Text SMS', 'text', 1, 1, 0, 1, 1, '2017-12-12 18:16:17', '2018-01-03 07:44:25', 1, 1),
(50, 18, 'Notice', 'notice', 1, 1, 1, 1, 1, '2017-12-12 18:20:38', '2018-01-03 07:47:39', 1, 1),
(51, 18, 'News', 'news', 1, 1, 1, 1, 1, '2017-12-12 18:20:54', '2018-01-03 07:47:46', 1, 1),
(52, 18, 'Holiday', 'holiday', 1, 1, 1, 1, 1, '2017-12-12 18:21:08', '2018-01-03 07:47:53', 1, 1),
(53, 19, 'Event', 'event', 1, 1, 1, 1, 1, '2017-12-12 18:21:35', '2018-01-03 07:48:00', 1, 1),
(54, 20, 'Visitor Info', 'visitor', 1, 1, 1, 1, 1, '2017-12-12 18:22:05', '2018-01-03 07:48:15', 1, 1),
(56, 21, 'Expenditure Head', 'exphead', 1, 1, 1, 1, 1, '2017-12-12 18:23:51', '2018-01-03 07:48:23', 1, 1),
(57, 21, 'Expenditure', 'expenditure', 1, 1, 1, 1, 1, '2017-12-12 18:24:14', '2018-01-03 07:48:32', 1, 1),
(58, 21, 'Income Head', 'incomehead', 1, 1, 1, 1, 1, '2017-12-12 18:24:42', '2018-01-03 07:48:39', 1, 1),
(59, 21, 'Income', 'income', 1, 1, 1, 1, 1, '2017-12-12 18:24:54', '2018-01-03 07:48:59', 1, 1),
(60, 21, 'Invoice', 'invoice', 1, 1, 1, 1, 1, '2017-12-12 18:25:16', '2018-01-03 07:49:12', 1, 1),
(61, 21, 'Payment', 'payment', 1, 1, 0, 0, 1, '2017-12-12 18:25:34', '2018-01-03 07:49:47', 1, 1),
(62, 22, 'Report', 'report', 1, 0, 0, 0, 1, '2017-12-12 18:26:16', '2018-01-03 07:50:00', 1, 1),
(63, 4, 'Manage User', 'user', 1, 0, 1, 0, 1, '2017-12-13 20:13:49', '2018-01-03 07:35:43', 1, 1),
(67, 13, 'Mark send by SMS', 'text', 1, 1, 0, 1, 1, '2017-12-14 09:09:58', '2018-01-03 07:34:45', 1, 1),
(68, 13, 'Mark send by Email', 'mail', 1, 1, 0, 1, 1, '2017-12-14 09:10:15', '2018-01-03 07:35:13', 1, 1),
(69, 17, 'message', 'message', 1, 1, 1, 1, 1, '2018-01-13 08:53:53', '2018-01-13 09:06:22', 2, 2),
(70, 23, 'CertificateType', 'type', 1, 1, 1, 1, 1, '2018-03-17 16:28:43', '0000-00-00 00:00:00', 2, 0),
(71, 23, 'Certificate', 'certificate', 1, NULL, NULL, NULL, 1, '2018-03-18 09:06:40', '0000-00-00 00:00:00', 1, 0),
(72, 24, 'Gallery', 'gallery', 1, 1, 1, 1, 1, '2018-03-22 06:47:27', '2018-03-22 06:48:03', 1, 1),
(73, 24, 'Image', 'image', 1, 1, 1, 1, 1, '2018-03-22 06:47:51', '0000-00-00 00:00:00', 1, 0),
(74, 25, 'Frontend', 'frontend', 1, 1, 1, 1, 1, '2018-03-23 05:06:49', '0000-00-00 00:00:00', 1, 0),
(75, 26, 'Salary Grade', 'grade', 1, 1, 1, 1, 1, '2018-03-25 02:08:21', '0000-00-00 00:00:00', 1, 0),
(76, 26, 'Payment', 'payment', 1, 1, 1, 1, 1, '2018-03-25 02:09:05', '0000-00-00 00:00:00', 1, 0),
(77, 25, 'Home Slider', 'slider', 1, 1, 1, 1, 1, '2018-03-27 18:04:48', '0000-00-00 00:00:00', 1, 0),
(78, 26, 'History', 'history', 1, NULL, NULL, NULL, 1, '2018-04-01 00:39:23', '0000-00-00 00:00:00', 1, 0),
(79, 4, 'School', 'school', 1, 1, 1, 1, 1, '2018-05-08 18:57:28', '0000-00-00 00:00:00', 1, 0),
(81, 4, 'Payment', 'payment', 1, 1, 1, 1, 1, '2018-08-15 00:43:44', '0000-00-00 00:00:00', 1, 0),
(82, 4, 'SMS', 'sms', 1, 1, 1, 1, 1, '2018-08-15 00:43:58', '0000-00-00 00:00:00', 1, 0),
(83, 4, 'SMS Template', 'smstemplate', 1, 1, 1, 1, 1, '2018-08-24 18:36:20', '0000-00-00 00:00:00', 1, 0),
(84, 4, 'Email Template', 'emailtemplate', 1, 1, 1, 1, 1, '2018-08-24 18:36:46', '0000-00-00 00:00:00', 1, 0),
(85, 4, 'Activity Log', 'activitylog', 1, NULL, NULL, 1, 1, '2018-08-24 18:42:49', '0000-00-00 00:00:00', 1, 0),
(86, 9, 'Bulk Import', 'bulk', 1, 1, NULL, NULL, 1, '2018-08-28 21:13:45', '0000-00-00 00:00:00', 1, 0),
(87, 9, 'Student Activity', 'activity', 1, 1, 1, 1, 1, '2018-08-28 21:14:33', '0000-00-00 00:00:00', 1, 0),
(88, 10, 'Absent Email', 'absentemail', 1, 1, NULL, 1, 1, '2018-09-01 08:51:33', '0000-00-00 00:00:00', 1, 0),
(89, 10, 'Absent SMS', 'absentsms', 1, 1, NULL, 1, 1, '2018-09-01 08:51:50', '0000-00-00 00:00:00', 1, 0),
(90, 13, 'Exam Result', 'examresult', 1, 1, 1, NULL, 1, '2018-09-02 12:38:31', '0000-00-00 00:00:00', 1, 0),
(91, 13, 'Final Result', 'finalresult', 1, 1, 1, NULL, 1, '2018-09-02 12:41:39', '0000-00-00 00:00:00', 1, 0),
(92, 13, 'Merit List', 'meritlist', 1, NULL, NULL, NULL, 1, '2018-09-02 12:42:23', '0000-00-00 00:00:00', 1, 0),
(93, 13, 'Result Email', 'resultemail', 1, 1, NULL, 1, 1, '2018-09-02 12:43:23', '0000-00-00 00:00:00', 1, 0),
(94, 13, 'Result SMS', 'resultsms', 1, 1, NULL, 1, 1, '2018-09-02 12:43:44', '0000-00-00 00:00:00', 1, 0),
(95, 13, 'Result Card', 'resultcard', 1, NULL, NULL, NULL, 1, '2018-09-02 12:44:43', '0000-00-00 00:00:00', 1, 0),
(96, 21, 'Discount', 'discount', 1, 1, 1, 1, 1, '2018-09-10 12:33:45', '0000-00-00 00:00:00', 1, 0),
(97, 21, 'Fee Type', 'feetype', 1, 1, 1, 1, 1, '2018-09-10 12:37:06', '0000-00-00 00:00:00', 1, 0),
(98, 21, 'Due Fee Email', 'duefeeemail', 1, 1, NULL, 1, 1, '2018-09-10 12:37:40', '0000-00-00 00:00:00', 1, 0),
(99, 21, 'Due Fee SMS', 'duefeesms', 1, 1, NULL, 1, 1, '2018-09-10 12:38:04', '0000-00-00 00:00:00', 1, 0),
(100, 4, 'Super Admin', 'superadmin', 1, 1, 1, 1, 1, '2018-09-14 17:50:59', '2018-09-14 17:51:53', 1, 1),
(101, 4, 'Guardian Feedback', 'feedback', 1, NULL, 1, 1, 1, '2018-09-14 17:55:09', '0000-00-00 00:00:00', 1, 0),
(102, 8, 'Feedback', 'feedback', 1, 1, 1, 1, 1, '2018-09-14 18:07:45', '0000-00-00 00:00:00', 1, 0),
(103, 4, 'General Setting', 'setting', 1, 1, 1, NULL, 1, '2018-09-15 16:00:20', '0000-00-00 00:00:00', 1, 0),
(104, 25, 'About', 'about', 1, 1, 1, NULL, 1, '2018-10-10 18:16:05', '0000-00-00 00:00:00', 1, 0),
(106, 12, 'Online Exam', 'online', 1, 1, 1, NULL, 1, '2019-08-19 00:00:00', '2019-08-19 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `page_location` varchar(50) NULL,
  `page_slug` varchar(100) NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_description` text,
  `page_image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `paypal_api_username` varchar(100) DEFAULT NULL,
  `paypal_api_password` varchar(100) DEFAULT NULL,
  `paypal_api_signature` varchar(100) DEFAULT NULL,
  `paypal_email` varchar(50) DEFAULT NULL,
  `paypal_demo` tinyint(1) DEFAULT NULL,
  `paypal_extra_charge` double(10,2) DEFAULT NULL,
  `paypal_status` tinyint(1) DEFAULT NULL,
  `stripe_secret` varchar(100) DEFAULT NULL,
  `stripe_demo` tinyint(1) DEFAULT NULL,
  `stripe_extra_charge` double(10,2) DEFAULT NULL,
  `stripe_status` tinyint(1) DEFAULT NULL,
  `payumoney_key` varchar(100) DEFAULT NULL,
  `payumoney_salt` varchar(100) DEFAULT NULL,
  `payumoney_demo` tinyint(1) DEFAULT NULL,
  `payu_extra_charge` double(10,2) DEFAULT NULL,
  `payumoney_status` tinyint(1) DEFAULT NULL,
  `ccavenue_key` varchar(100) DEFAULT NULL,
  `ccavenue_salt` varchar(100) DEFAULT NULL,
  `ccavenue_demo` tinyint(1) DEFAULT NULL,
  `ccavenue_extra_charge` double(10,2) DEFAULT NULL,
  `ccavenue_status` tinyint(1) DEFAULT NULL,
  `paytm_merchant_key` varchar(100) DEFAULT NULL,
  `paytm_merchant_mid` varchar(100) DEFAULT NULL,
  `paytm_merchant_website` text,
  `paytm_industry_type` text,
  `paytm_demo` tinyint(1) DEFAULT NULL,
  `paytm_extra_charge` double(10,2) DEFAULT NULL,
  `paytm_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `school_id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `paypal_email`, `paypal_demo`, `paypal_extra_charge`, `paypal_status`, `stripe_secret`, `stripe_demo`, `stripe_extra_charge`, `stripe_status`, `payumoney_key`, `payumoney_salt`, `payumoney_demo`, `payu_extra_charge`, `payumoney_status`, `ccavenue_key`, `ccavenue_salt`, `ccavenue_demo`, `ccavenue_extra_charge`, `ccavenue_status`, `paytm_merchant_key`, `paytm_merchant_mid`, `paytm_merchant_website`, `paytm_industry_type`, `paytm_demo`, `paytm_extra_charge`, `paytm_status`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 17, NULL, NULL, NULL, 'tesslkf@gmail.com', 1, 0.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-29 17:53:40', '0000-00-00 00:00:00', 33, 0),
(2, 1, NULL, NULL, NULL, 'kdfls@gmail.com', 1, 0.00, 1, NULL, NULL, NULL, NULL, 'fiodflksadjkf', 'fasdfsdf', 1, 0.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-01 13:06:35', '2019-09-01 13:06:48', 23, 23);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NULL,
  `role_id` int(11) NULL,
  `operation_id` int(11) NULL,
  `is_add` tinyint(1) NULL,
  `is_edit` tinyint(1) NULL,
  `is_view` tinyint(1) NULL,
  `is_delete` tinyint(1) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(2, 1, 2, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(3, 1, 3, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(4, 1, 4, 0, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(5, 1, 5, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(6, 1, 6, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(7, 1, 7, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(8, 1, 8, 0, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(9, 1, 64, 0, 1, 0, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(10, 1, 65, 0, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(11, 1, 63, 0, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(12, 1, 10, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(13, 1, 11, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(14, 1, 12, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(15, 1, 14, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(16, 1, 15, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(17, 1, 16, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(18, 1, 17, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(19, 1, 18, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(20, 1, 19, 1, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(21, 1, 20, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(22, 1, 21, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(23, 1, 23, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(24, 1, 24, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(25, 1, 25, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(26, 1, 26, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(27, 1, 27, 1, 1, 1, 1, 1, '2018-01-13 09:07:29', '0000-00-00 00:00:00', 2, 0),
(28, 1, 28, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(29, 1, 29, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(30, 1, 30, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(31, 1, 31, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(32, 1, 32, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(33, 1, 33, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(34, 1, 34, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(35, 1, 35, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(36, 1, 67, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(37, 1, 68, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(38, 1, 37, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(39, 1, 38, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(40, 1, 66, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(41, 1, 40, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(42, 1, 41, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(43, 1, 42, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(44, 1, 43, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(45, 1, 44, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(46, 1, 45, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(47, 1, 46, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(48, 1, 47, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(49, 1, 48, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(50, 1, 50, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(51, 1, 51, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(52, 1, 52, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(53, 1, 53, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(54, 1, 54, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(55, 1, 55, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(56, 1, 56, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(57, 1, 57, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(58, 1, 58, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(59, 1, 59, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(60, 1, 60, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(61, 1, 61, 1, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(62, 1, 62, 0, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(63, 3, 1, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(64, 3, 2, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(65, 3, 3, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(66, 3, 4, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(67, 3, 5, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(68, 3, 6, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(69, 3, 7, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(70, 3, 8, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(71, 3, 64, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(72, 3, 65, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(73, 3, 63, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(74, 3, 10, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(75, 3, 11, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(76, 3, 12, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(77, 3, 14, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(78, 3, 15, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(79, 3, 16, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(80, 3, 17, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(81, 3, 18, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(82, 3, 19, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(83, 3, 20, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(84, 3, 21, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(85, 3, 23, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(86, 3, 24, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(87, 3, 25, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(88, 3, 26, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(89, 3, 27, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(90, 3, 28, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(91, 3, 29, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(92, 3, 30, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(93, 3, 31, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(94, 3, 32, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(95, 3, 33, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(96, 3, 34, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(97, 3, 35, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(98, 3, 67, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(99, 3, 68, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(100, 3, 37, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(101, 3, 38, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(102, 3, 66, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(103, 3, 40, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(104, 3, 41, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(105, 3, 42, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(106, 3, 43, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(107, 3, 44, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(108, 3, 45, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(109, 3, 46, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(110, 3, 47, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(111, 3, 48, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(112, 3, 50, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(113, 3, 51, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(114, 3, 52, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(115, 3, 53, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(116, 3, 54, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(117, 3, 55, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(118, 3, 56, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(119, 3, 57, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(120, 3, 58, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(121, 3, 59, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(122, 3, 60, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(123, 3, 61, 1, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(124, 3, 62, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(125, 1, 69, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(126, 5, 1, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(127, 5, 2, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(128, 5, 3, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(129, 5, 4, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(130, 5, 5, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(131, 5, 6, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(132, 5, 7, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(133, 5, 8, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(134, 5, 64, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(135, 5, 65, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(136, 5, 63, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(137, 5, 10, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(138, 5, 11, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(139, 5, 12, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(140, 5, 14, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(141, 5, 15, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(142, 5, 16, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(143, 5, 17, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(144, 5, 18, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(145, 5, 19, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(146, 5, 20, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(147, 5, 21, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(148, 5, 23, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(149, 5, 24, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(150, 5, 25, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(151, 5, 26, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(152, 5, 27, 1, 1, 1, 0, 1, '2018-01-13 09:46:35', '0000-00-00 00:00:00', 1, 0),
(153, 5, 28, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(154, 5, 29, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(155, 5, 30, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(156, 5, 31, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(157, 5, 32, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(158, 5, 33, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(159, 5, 34, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(160, 5, 35, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(161, 5, 67, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(162, 5, 68, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(163, 5, 37, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(164, 5, 38, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(165, 5, 66, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(166, 5, 40, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(167, 5, 41, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(168, 5, 42, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(169, 5, 43, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(170, 5, 44, 0, 0, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(171, 5, 45, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(172, 5, 47, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(173, 5, 48, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(174, 5, 69, 1, 1, 1, 1, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(175, 5, 50, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(176, 5, 51, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(177, 5, 52, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(178, 5, 53, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(179, 5, 54, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(180, 5, 56, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(181, 5, 57, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(182, 5, 58, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(183, 5, 59, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(184, 5, 60, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(185, 5, 61, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(186, 5, 62, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(187, 13, 1, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(188, 13, 2, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(189, 13, 3, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(190, 13, 4, 0, 0, 0, 0, 1, '2018-04-16 07:42:12', '0000-00-00 00:00:00', 1, 0),
(191, 13, 5, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(192, 13, 6, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(193, 13, 7, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(194, 13, 8, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(195, 13, 64, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(196, 13, 65, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(197, 13, 63, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(198, 13, 10, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(199, 13, 11, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(200, 13, 12, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(201, 13, 14, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(202, 13, 15, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(203, 13, 16, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(204, 13, 17, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(205, 13, 18, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(206, 13, 19, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(207, 13, 20, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(208, 13, 21, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(209, 13, 23, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(210, 13, 24, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(211, 13, 25, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(212, 13, 26, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(213, 13, 27, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(214, 13, 28, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(215, 13, 29, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(216, 13, 30, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(217, 13, 31, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(218, 13, 32, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(219, 13, 33, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(220, 13, 34, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(221, 13, 35, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(222, 13, 67, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(223, 13, 68, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(224, 13, 37, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(225, 13, 38, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(226, 13, 66, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(227, 13, 40, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(228, 13, 41, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(229, 13, 42, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(230, 13, 43, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(231, 13, 44, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(232, 13, 45, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(233, 13, 47, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(234, 13, 48, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(235, 13, 69, 0, 0, 1, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(236, 13, 50, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(237, 13, 51, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(238, 13, 52, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(239, 13, 53, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(240, 13, 54, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(241, 13, 56, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(242, 13, 57, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(243, 13, 58, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(244, 13, 59, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(245, 13, 60, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(246, 13, 61, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(247, 13, 62, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(248, 3, 69, 1, 1, 1, 1, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(249, 2, 1, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(250, 2, 2, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(251, 2, 3, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(252, 2, 4, 0, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(253, 2, 5, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(254, 2, 6, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(255, 2, 7, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(256, 2, 8, 0, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(257, 2, 64, 0, 1, 0, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(258, 2, 65, 0, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(259, 2, 63, 0, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(260, 2, 10, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(261, 2, 11, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(262, 2, 12, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(263, 2, 14, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(264, 2, 15, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(265, 2, 16, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(266, 2, 17, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(267, 2, 18, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(268, 2, 19, 1, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(269, 2, 20, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(270, 2, 21, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(271, 2, 23, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(272, 2, 24, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(273, 2, 25, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(274, 2, 26, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(275, 2, 28, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(276, 2, 29, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(277, 2, 30, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(278, 2, 31, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(279, 2, 32, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(280, 2, 33, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(281, 2, 34, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(282, 2, 35, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(283, 2, 67, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(284, 2, 68, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(285, 2, 37, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(286, 2, 38, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(287, 2, 66, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(288, 2, 40, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(289, 2, 41, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(290, 2, 42, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(291, 2, 43, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(292, 2, 44, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(293, 2, 45, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(294, 2, 47, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(295, 2, 48, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(296, 2, 69, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(297, 2, 50, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(298, 2, 51, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(299, 2, 52, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(300, 2, 53, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(301, 2, 54, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(302, 2, 56, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(303, 2, 57, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(304, 2, 58, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(305, 2, 59, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(306, 2, 60, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(307, 2, 61, 1, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(308, 2, 62, 0, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(309, 4, 1, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(310, 4, 2, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(311, 4, 3, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(312, 4, 4, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(313, 4, 5, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(314, 4, 6, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(315, 4, 7, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(316, 4, 8, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(317, 4, 64, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(318, 4, 65, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(319, 4, 63, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(320, 4, 10, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(321, 4, 11, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(322, 4, 12, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(323, 4, 14, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(324, 4, 15, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(325, 4, 16, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(326, 4, 17, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(327, 4, 18, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(328, 4, 19, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(329, 4, 20, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(330, 4, 21, 0, 1, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(331, 4, 23, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(332, 4, 24, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(333, 4, 25, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(334, 4, 26, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(335, 4, 28, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(336, 4, 29, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(337, 4, 30, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(338, 4, 31, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(339, 4, 32, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(340, 4, 33, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(341, 4, 34, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(342, 4, 35, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(343, 4, 67, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(344, 4, 68, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(345, 4, 37, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(346, 4, 38, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(347, 4, 66, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(348, 4, 40, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(349, 4, 41, 0, 0, 1, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(350, 4, 42, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(351, 4, 43, 0, 0, 1, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(352, 4, 44, 0, 0, 1, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(353, 4, 45, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(354, 4, 47, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(355, 4, 48, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(356, 4, 69, 1, 1, 1, 1, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(357, 4, 50, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(358, 4, 51, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(359, 4, 52, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(360, 4, 53, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(361, 4, 54, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(362, 4, 56, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(363, 4, 57, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(364, 4, 58, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(365, 4, 59, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(366, 4, 60, 0, 0, 1, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(367, 4, 61, 1, 0, 1, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(368, 4, 62, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(369, 6, 1, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(370, 6, 2, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(371, 6, 3, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(372, 6, 4, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(373, 6, 5, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(374, 6, 6, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(375, 6, 7, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(376, 6, 8, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(377, 6, 64, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(378, 6, 65, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(379, 6, 63, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(380, 6, 10, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(381, 6, 11, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(382, 6, 12, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(383, 6, 14, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(384, 6, 15, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(385, 6, 16, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(386, 6, 17, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(387, 6, 18, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(388, 6, 19, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(389, 6, 20, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(390, 6, 21, 0, 0, 1, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(391, 6, 23, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(392, 6, 24, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(393, 6, 25, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(394, 6, 26, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(395, 6, 28, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(396, 6, 29, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(397, 6, 30, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(398, 6, 31, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(399, 6, 32, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(400, 6, 33, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(401, 6, 34, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(402, 6, 35, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(403, 6, 67, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(404, 6, 68, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(405, 6, 37, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(406, 6, 38, 0, 0, 0, 0, 1, '2018-04-16 08:15:42', '0000-00-00 00:00:00', 1, 0),
(407, 6, 66, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(408, 6, 40, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(409, 6, 41, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(410, 6, 42, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(411, 6, 43, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(412, 6, 44, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(413, 6, 45, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(414, 6, 47, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(415, 6, 48, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(416, 6, 69, 1, 1, 1, 1, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(417, 6, 50, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(418, 6, 51, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(419, 6, 52, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(420, 6, 53, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(421, 6, 54, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(422, 6, 56, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(423, 6, 57, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(424, 6, 58, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(425, 6, 59, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(426, 6, 60, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(427, 6, 61, 1, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(428, 6, 62, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(429, 7, 1, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(430, 7, 2, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(431, 7, 3, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(432, 7, 4, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(433, 7, 5, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(434, 7, 6, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(435, 7, 7, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(436, 7, 8, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(437, 7, 64, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(438, 7, 65, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(439, 7, 63, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(440, 7, 10, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(441, 7, 11, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(442, 7, 12, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(443, 7, 14, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(444, 7, 15, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(445, 7, 16, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(446, 7, 17, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(447, 7, 18, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(448, 7, 19, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(449, 7, 20, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(450, 7, 21, 0, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(451, 7, 23, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(452, 7, 24, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(453, 7, 25, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(454, 7, 26, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(455, 7, 28, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(456, 7, 29, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(457, 7, 30, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(458, 7, 31, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(459, 7, 32, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(460, 7, 33, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(461, 7, 34, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(462, 7, 35, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(463, 7, 67, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(464, 7, 68, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(465, 7, 37, 1, 1, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(466, 7, 38, 1, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(467, 7, 66, 1, 1, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(468, 7, 40, 0, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(469, 7, 41, 0, 0, 1, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(470, 7, 42, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(471, 7, 43, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(472, 7, 44, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(473, 7, 45, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(474, 7, 47, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(475, 7, 48, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(476, 7, 69, 1, 1, 1, 1, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(477, 7, 50, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(478, 7, 51, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(479, 7, 52, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(480, 7, 53, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(481, 7, 54, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(482, 7, 56, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(483, 7, 57, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(484, 7, 58, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(485, 7, 59, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(486, 7, 60, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(487, 7, 61, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(488, 7, 62, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(489, 8, 1, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(490, 8, 2, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(491, 8, 3, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(492, 8, 4, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(493, 8, 5, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(494, 8, 6, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(495, 8, 7, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(496, 8, 8, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(497, 8, 64, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(498, 8, 65, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(499, 8, 63, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(500, 8, 10, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(501, 8, 11, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(502, 8, 12, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(503, 8, 14, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(504, 8, 15, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(505, 8, 16, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(506, 8, 17, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(507, 8, 18, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(508, 8, 19, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(509, 8, 20, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(510, 8, 21, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(511, 8, 23, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(512, 8, 24, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(513, 8, 25, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(514, 8, 26, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(515, 8, 28, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(516, 8, 29, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(517, 8, 30, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(518, 8, 31, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(519, 8, 32, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(520, 8, 33, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(521, 8, 34, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(522, 8, 35, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(523, 8, 67, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(524, 8, 68, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(525, 8, 37, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(526, 8, 38, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(527, 8, 66, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(528, 8, 40, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(529, 8, 41, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(530, 8, 42, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(531, 8, 43, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(532, 8, 44, 0, 0, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(533, 8, 45, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(534, 8, 47, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(535, 8, 48, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(536, 8, 69, 1, 1, 1, 1, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(537, 8, 50, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(538, 8, 51, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(539, 8, 52, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(540, 8, 53, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(541, 8, 54, 1, 1, 1, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(542, 8, 56, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(543, 8, 57, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(544, 8, 58, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(545, 8, 59, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(546, 8, 60, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(547, 8, 61, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(548, 8, 62, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(549, 9, 1, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(550, 9, 2, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(551, 9, 3, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(552, 9, 4, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(553, 9, 5, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(554, 9, 6, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(555, 9, 7, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(556, 9, 8, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(557, 9, 64, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(558, 9, 65, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(559, 9, 63, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(560, 9, 10, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(561, 9, 11, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(562, 9, 12, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(563, 9, 14, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(564, 9, 15, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(565, 9, 16, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(566, 9, 17, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(567, 9, 18, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(568, 9, 19, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(569, 9, 20, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(570, 9, 21, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(571, 9, 23, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(572, 9, 24, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(573, 9, 25, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(574, 9, 26, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(575, 9, 28, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(576, 9, 29, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(577, 9, 30, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(578, 9, 31, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(579, 9, 32, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(580, 9, 33, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(581, 9, 34, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(582, 9, 35, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(583, 9, 67, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(584, 9, 68, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(585, 9, 37, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(586, 9, 38, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(587, 9, 66, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(588, 9, 40, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(589, 9, 41, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(590, 9, 42, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(591, 9, 43, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(592, 9, 44, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(593, 9, 45, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(594, 9, 47, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(595, 9, 48, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(596, 9, 69, 0, 0, 1, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(597, 9, 50, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(598, 9, 51, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(599, 9, 52, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(600, 9, 53, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(601, 9, 54, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(602, 9, 56, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(603, 9, 57, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(604, 9, 58, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(605, 9, 59, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(606, 9, 60, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(607, 9, 61, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(608, 9, 62, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(609, 1, 70, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(610, 1, 71, 0, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(611, 1, 72, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(612, 1, 73, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(613, 1, 74, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(614, 1, 75, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(615, 1, 76, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(616, 1, 77, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(617, 1, 78, 0, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(618, 4, 70, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(619, 4, 71, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(620, 4, 72, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(621, 4, 73, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(622, 4, 74, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(623, 4, 77, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(624, 4, 75, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(625, 4, 76, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(626, 4, 78, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(627, 14, 1, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(628, 14, 2, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(629, 14, 3, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(630, 14, 4, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(631, 14, 5, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(632, 14, 6, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0);
INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(633, 14, 7, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(634, 14, 8, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(635, 14, 64, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(636, 14, 65, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(637, 14, 63, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(638, 14, 10, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(639, 14, 11, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(640, 14, 12, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(641, 14, 14, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(642, 14, 15, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(643, 14, 16, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(644, 14, 17, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(645, 14, 18, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(646, 14, 19, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(647, 14, 20, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(648, 14, 21, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(649, 14, 23, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(650, 14, 24, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(651, 14, 25, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(652, 14, 26, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(653, 14, 28, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(654, 14, 29, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(655, 14, 30, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(656, 14, 31, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(657, 14, 32, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(658, 14, 33, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(659, 14, 34, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(660, 14, 35, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(661, 14, 67, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(662, 14, 68, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(663, 14, 37, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(664, 14, 38, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(665, 14, 66, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(666, 14, 40, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(667, 14, 41, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(668, 14, 42, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(669, 14, 43, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(670, 14, 44, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(671, 14, 45, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(672, 14, 47, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(673, 14, 48, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(674, 14, 69, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(675, 14, 50, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(676, 14, 51, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(677, 14, 52, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(678, 14, 53, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(679, 14, 54, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(680, 14, 56, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(681, 14, 57, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(682, 14, 58, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(683, 14, 59, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(684, 14, 60, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(685, 14, 61, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(686, 14, 62, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(687, 14, 70, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(688, 14, 71, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(689, 14, 72, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(690, 14, 73, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(691, 14, 74, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(692, 14, 77, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(693, 14, 75, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(694, 14, 76, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(695, 14, 78, 0, 0, 0, 0, 1, '2018-04-14 07:39:04', '0000-00-00 00:00:00', 1, 0),
(696, 3, 70, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(697, 3, 71, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(698, 3, 72, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(699, 3, 73, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(700, 3, 74, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(701, 3, 77, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(702, 3, 75, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(703, 3, 76, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(704, 3, 78, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(705, 9, 70, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(706, 9, 71, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(707, 9, 72, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(708, 9, 73, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(709, 9, 74, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(710, 9, 77, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(711, 9, 75, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(712, 9, 76, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(713, 9, 78, 0, 0, 0, 0, 1, '2018-04-16 07:42:50', '0000-00-00 00:00:00', 1, 0),
(714, 8, 70, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(715, 8, 71, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(716, 8, 72, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(717, 8, 73, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(718, 8, 74, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(719, 8, 77, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(720, 8, 75, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(721, 8, 76, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(722, 8, 78, 0, 0, 0, 0, 1, '2018-04-16 07:44:14', '0000-00-00 00:00:00', 1, 0),
(723, 7, 70, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(724, 7, 71, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(725, 7, 72, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(726, 7, 73, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(727, 7, 74, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(728, 7, 77, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(729, 7, 75, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(730, 7, 76, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(731, 7, 78, 0, 0, 0, 0, 1, '2018-04-16 07:44:59', '0000-00-00 00:00:00', 1, 0),
(732, 6, 70, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(733, 6, 71, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(734, 6, 72, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(735, 6, 73, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(736, 6, 74, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(737, 6, 77, 0, 0, 0, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(738, 6, 75, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(739, 6, 76, 1, 1, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(740, 6, 78, 0, 0, 1, 0, 1, '2018-04-16 08:15:43', '0000-00-00 00:00:00', 1, 0),
(741, 2, 70, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(742, 2, 71, 0, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(743, 2, 72, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(744, 2, 73, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(745, 2, 74, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(746, 2, 77, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(747, 2, 75, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(748, 2, 76, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(749, 2, 78, 0, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(750, 13, 70, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(751, 13, 71, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(752, 13, 72, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(753, 13, 73, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(754, 13, 74, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(755, 13, 77, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(756, 13, 75, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(757, 13, 76, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(758, 13, 78, 0, 0, 0, 0, 1, '2018-04-16 07:42:13', '0000-00-00 00:00:00', 1, 0),
(759, 5, 70, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(760, 5, 71, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(761, 5, 72, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(762, 5, 73, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(763, 5, 74, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(764, 5, 77, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(765, 5, 75, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(766, 5, 76, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(767, 5, 78, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(768, 1, 79, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(769, 2, 79, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(770, 1, 80, 1, 1, 1, 1, 1, '2018-10-09 13:40:38', '0000-00-00 00:00:00', 1, 0),
(771, 1, 81, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(772, 1, 82, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(773, 2, 80, 0, 0, 0, 0, 1, '2018-10-09 16:08:37', '0000-00-00 00:00:00', 1, 0),
(774, 2, 81, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(775, 2, 82, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(776, 1, 83, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(777, 1, 84, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(778, 1, 85, 0, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(779, 1, 100, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(780, 1, 101, 0, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(781, 1, 103, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(782, 1, 102, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(783, 1, 86, 1, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(784, 1, 87, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(785, 1, 88, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(786, 1, 89, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(787, 1, 90, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(788, 1, 91, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(789, 1, 92, 0, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(790, 1, 93, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(791, 1, 94, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(792, 1, 95, 0, 0, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(793, 1, 96, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(794, 1, 97, 1, 1, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(795, 1, 98, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(796, 1, 99, 1, 0, 1, 1, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(797, 1, 104, 1, 1, 1, 0, 1, '2018-10-10 18:16:54', '0000-00-00 00:00:00', 1, 0),
(798, 3, 79, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(799, 3, 81, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(800, 3, 82, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(801, 3, 83, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(802, 3, 84, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(803, 3, 85, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(804, 3, 100, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(805, 3, 101, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(806, 3, 103, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(807, 3, 102, 1, 1, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(808, 3, 86, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(809, 3, 87, 0, 0, 1, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(810, 3, 88, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(811, 3, 89, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(812, 3, 90, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(813, 3, 91, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(814, 3, 92, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(815, 3, 93, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(816, 3, 94, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(817, 3, 95, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(818, 3, 96, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(819, 3, 97, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(820, 3, 98, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(821, 3, 99, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(822, 3, 104, 0, 0, 0, 0, 1, '2018-10-14 22:27:47', '0000-00-00 00:00:00', 1, 0),
(823, 2, 83, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(824, 2, 84, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(825, 2, 85, 0, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(826, 2, 100, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(827, 2, 101, 0, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(828, 2, 103, 0, 0, 0, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(829, 2, 102, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(830, 2, 86, 1, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(831, 2, 87, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(832, 2, 88, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(833, 2, 89, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(834, 2, 90, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(835, 2, 91, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(836, 2, 92, 0, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(837, 2, 93, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(838, 2, 94, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(839, 2, 95, 0, 0, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(840, 2, 96, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(841, 2, 97, 1, 1, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(842, 2, 98, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(843, 2, 99, 1, 0, 1, 1, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(844, 2, 104, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0),
(845, 4, 79, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(846, 4, 81, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(847, 4, 82, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(848, 4, 83, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(849, 4, 84, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(850, 4, 85, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(851, 4, 100, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(852, 4, 101, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(853, 4, 103, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(854, 4, 102, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(855, 4, 86, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(856, 4, 87, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(857, 4, 88, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(858, 4, 89, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(859, 4, 90, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(860, 4, 91, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(861, 4, 92, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(862, 4, 93, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(863, 4, 94, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(864, 4, 95, 0, 0, 0, 0, 1, '2019-07-06 15:42:29', '0000-00-00 00:00:00', 1, 0),
(865, 4, 96, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(866, 4, 97, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(867, 4, 98, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(868, 4, 99, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(869, 4, 104, 0, 0, 0, 0, 1, '2019-07-06 15:42:30', '0000-00-00 00:00:00', 1, 0),
(870, 1, 106, 1, 1, 1, 0, 1, '2019-08-19 11:48:54', '0000-00-00 00:00:00', 1, 0),
(874, 5, 81, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(873, 5, 79, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(875, 5, 82, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(876, 5, 83, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(877, 5, 84, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(878, 5, 85, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(879, 5, 100, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(880, 5, 101, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(881, 5, 103, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(882, 5, 102, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(883, 5, 86, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(884, 5, 87, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(885, 5, 88, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(886, 5, 89, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(887, 5, 106, 1, 1, 1, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(888, 5, 90, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(889, 5, 91, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(890, 5, 92, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(891, 5, 93, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(892, 5, 94, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(893, 5, 95, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(894, 5, 96, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(895, 5, 97, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(896, 5, 98, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(897, 5, 99, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(898, 5, 104, 0, 0, 0, 0, 1, '2019-08-25 10:32:08', '0000-00-00 00:00:00', 1, 0),
(899, 2, 106, 1, 1, 1, 0, 1, '2019-12-23 10:29:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) DEFAULT NULL,
  `purchase_code` varchar(255) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `purchase_code`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'iqx245jkh7', 1, '2019-12-23 13:31:36', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_users`
--

CREATE TABLE `referral_users` (
  `ref_id` int(11) NULL,
  `ref_name` varchar(100) NULL,
  `ref_email` varchar(50) NULL,
  `ref_phone` varchar(20) NULL,
  `ref_country` int(11) NULL,
  `ref_state` int(11) NULL,
  `status` tinyint(4) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral_users`
--

INSERT INTO `referral_users` (`ref_id`, `ref_name`, `ref_email`, `ref_phone`, `ref_country`, `ref_state`, `status`, `created_at`, `modified_at`) VALUES
(3, 'kobir', 'neatymds@gmail.com', '4534534534535', 18, 347, 1, '2019-09-07 08:30:37', '2019-09-07 08:30:37'),
(4, 'akash', 'neatymds@gmail.com', '4534534534535', 18, 348, 0, '2019-09-08 09:04:52', '2019-09-08 09:04:52'),
(5, 'Neyamul', 'neatymds@gmail.com', '4534534534535', 18, 348, 0, '2019-09-08 09:04:52', '2019-09-08 09:04:52'),
(6, 'Manik', 'manik@gmail.com', '01345345345', 18, 349, 1, '2019-09-08 09:14:02', '2019-09-08 09:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NULL,
  `message_id` int(11) NULL,
  `sender_id` int(11) NULL,
  `receiver_id` int(11) NULL,
  `body` text,
  `attachment` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `student_id` int(11) NULL,
  `avg_grade_point` float(5,2) NULL,
  `exam_total_mark` int(11) NULL,
  `obtain_total_mark` int(11) NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NULL,
  `slug` varchar(50) NULL,
  `name` varchar(50) NULL,
  `note` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) NULL DEFAULT '1',
  `is_super_admin` tinyint(1) NULL DEFAULT '0',
  `status` tinyint(1) NULL DEFAULT '1',
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `note`, `is_default`, `is_super_admin`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin User', 1, 1, 1, '2017-08-13 12:15:17', '2018-02-09 01:58:57', 0, 1),
(2, 'admin', 'Admin', 'Admin User', 1, 0, 1, '2017-08-13 13:01:36', '0000-00-00 00:00:00', 0, 0),
(3, 'guardian', 'Guardian', 'Guardian/Parent User', 1, 0, 1, '2017-08-13 13:02:05', '2018-02-09 01:59:22', 0, 1),
(4, 'student', 'Student', 'Student User', 1, 0, 1, '2017-08-13 13:02:24', '2018-02-09 01:59:34', 0, 1),
(5, 'teacher', 'Teacher', 'Teacher User', 1, 0, 1, '2017-08-13 13:02:51', '2018-02-09 01:59:46', 0, 1),
(6, 'accountant', 'Accountant', 'Accountant User', 1, 0, 1, '2017-08-13 13:04:00', '2018-02-09 02:00:07', 0, 1),
(7, 'librarian', 'Librarian', 'Librarian User', 1, 0, 1, '2017-08-13 13:04:18', '2018-02-09 02:00:22', 0, 1),
(8, 'receptioniast', 'Receptioniast', 'Receptionist/ Front Desk User', 1, 0, 1, '2017-08-13 13:04:36', '2018-02-09 02:02:30', 0, 1),
(9, 'staff', 'Staff', 'General Staff User', 0, 0, 1, '2017-08-13 13:05:01', '2018-02-09 02:02:48', 0, 1),
(13, 'servent', 'Servent', 'Servant User', 0, 0, 1, '2018-02-04 04:40:37', '2018-02-09 02:03:09', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `hostel_id` int(11) NULL,
  `room_no` varchar(20) NULL,
  `room_type` varchar(10) NULL,
  `total_seat` varchar(50) NULL,
  `cost` decimal(10,2) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `school_id`, `hostel_id`, `room_no`, `room_type`, `total_seat`, `cost`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, '3', 'non_ac', '3', '2000.00', '', 1, '2019-08-03 09:17:57', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `vehicle_ids` varchar(150) NULL,
  `title` varchar(150) NULL,
  `route_start` varchar(255) NULL,
  `route_end` varchar(255) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `route_stops`
--

CREATE TABLE `route_stops` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `route_id` int(11) NULL,
  `stop_name` varchar(255) NULL,
  `stop_km` varchar(20) NULL,
  `stop_fare` double(10,2) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `teacher_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `day` varchar(20) NULL,
  `start_time` varchar(20) NULL,
  `end_time` varchar(20) NULL,
  `room_no` int(11) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `school_id`, `class_id`, `section_id`, `subject_id`, `teacher_id`, `academic_year_id`, `day`, `start_time`, `end_time`, `room_no`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 2, 'saturday', '10:30 AM', '10:30 AM', 121, 1, '2019-06-04 10:20:40', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary_grades`
--

CREATE TABLE `salary_grades` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `grade_name` varchar(50) NULL,
  `basic_salary` double(10,2) NULL,
  `house_rent` double(10,2) NULL,
  `transport` double(10,2) NULL,
  `medical` double(10,2) NULL,
  `over_time_hourly_rate` double(10,2) NULL,
  `provident_fund` double(10,2) NULL,
  `hourly_rate` double(10,2) NULL,
  `total_allowance` double(10,2) NULL,
  `total_deduction` double(10,2) NULL,
  `gross_salary` double(10,2) NULL,
  `net_salary` double(10,2) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_grades`
--

INSERT INTO `salary_grades` (`id`, `school_id`, `grade_name`, `basic_salary`, `house_rent`, `transport`, `medical`, `over_time_hourly_rate`, `provident_fund`, `hourly_rate`, `total_allowance`, `total_deduction`, `gross_salary`, `net_salary`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'teachar fee', 30000.00, 30.00, 30.00, 0.00, 0.00, 0.00, 100.00, 60.00, 0.00, 30060.00, 30060.00, '', 1, '2019-06-04 10:17:23', '0000-00-00 00:00:00', 1, 0),
(2, 9, 'first class', 4000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 600.00, 0.00, 0.00, 4000.00, 4000.00, '', 1, '2019-07-01 11:51:57', '0000-00-00 00:00:00', 7, 0),
(3, 14, 'first class', 2000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 500.00, 0.00, 0.00, 2000.00, 2000.00, '', 1, '2019-07-06 23:53:34', '0000-00-00 00:00:00', 19, 0),
(4, 18, 'first class', 30000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 700.00, 0.00, 0.00, 30000.00, 30000.00, '', 1, '2019-07-11 13:06:58', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary_payments`
--

CREATE TABLE `salary_payments` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `salary_grade_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `expenditure_id` int(11) NULL,
  `salary_type` varchar(20) NULL,
  `salary_month` varchar(100) NULL,
  `basic_salary` double(10,2) NULL,
  `house_rent` double(10,2) NULL,
  `transport` double(10,2) NULL,
  `medical` double(10,2) NULL,
  `bonus` double(10,2) NULL,
  `over_time_hourly_rate` double(10,2) NULL,
  `over_time_total_hour` double(10,2) NULL,
  `over_time_amount` double(10,2) NULL,
  `provident_fund` double(10,2) NULL,
  `penalty` double(10,2) NULL,
  `hourly_rate` double(10,2) DEFAULT '0.00',
  `total_hour` double(10,2) DEFAULT NULL,
  `gross_salary` double(10,2) NULL,
  `total_allowance` double(10,2) NULL,
  `total_deduction` double(10,2) NULL,
  `net_salary` double(10,2) NULL,
  `payment_method` varchar(20) NULL,
  `cheque_no` varchar(50) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `payment_to` varchar(20) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NULL,
  `school_name` varchar(255) NULL,
  `school_code` varchar(100) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(25) NULL,
  `state` varchar(25) NULL,
  `phone` varchar(15) NULL,
  `email` varchar(50) NULL,
  `package` int(11) DEFAULT NULL,
  `modules_id` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `pay_amount` double DEFAULT NULL,
  `ref_amount` double DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `footer` text,
  `logo` varchar(120) DEFAULT NULL,
  `session_start_month` varchar(50) DEFAULT NULL,
  `session_end_month` varchar(50) DEFAULT NULL,
  `academic_year_id` int(11) DEFAULT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `school_fax` varchar(50) DEFAULT NULL,
  `school_lat` varchar(100) DEFAULT NULL,
  `school_lng` varchar(100) DEFAULT NULL,
  `enable_frontend` tinyint(1) DEFAULT '1',
  `final_result_type` tinyint(1) NULL DEFAULT '0' COMMENT '1= Final Exam, 0 = Average all Exam',
  `theme_name` varchar(50) DEFAULT NULL,
  `about_text` text,
  `about_image` varchar(100) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT '1',
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `school_name`, `school_code`, `registration_date`, `address`, `country`, `state`, `phone`, `email`, `package`, `modules_id`, `currency`, `currency_symbol`, `pay_amount`, `ref_amount`, `ref_id`, `footer`, `logo`, `session_start_month`, `session_end_month`, `academic_year_id`, `academic_year`, `school_fax`, `school_lat`, `school_lng`, `enable_frontend`, `final_result_type`, `theme_name`, `about_text`, `about_image`, `facebook_url`, `twitter_url`, `linkedin_url`, `google_plus_url`, `youtube_url`, `instagram_url`, `pinterest_url`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Test and skills school', 'ASD23CR', '2019-05-07', '1215 dhaka', '18', '393', '0123456789', 'info@gmail.com', NULL, '1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,13,23,24,25,26,27,28', 'usd', '$', 20000, 10, 3, 'Copyright © test and skills school 2019', '1561526829-school-logo.jpg', 'june', 'july', 1, '2019 - 2020', '25435345', NULL, NULL, 1, 1, 'slate-gray', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,', '1539078689-about-image.jpg', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://plus.google.com/', 'https://www.youtube.com/', '', 'https://www.pinterest.com/', 1, '2017-08-23 09:40:28', '2019-07-06 11:32:24', 1, 1),
(21, 'mirbag model school ', NULL, NULL, '', '18', '339', '2343252352534', 'asik@gmail.com', NULL, NULL, NULL, NULL, 3000, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-08 08:09:53', '2019-09-08 08:09:53', 1, 0),
(22, 'dhaka new model school', NULL, NULL, '', '18', '348', '2343252352534', 'freelancer@gmail.com', NULL, '1,2,3,4,5,6,7,8,9,10,11,12,14,18,19,20,21,13,23,24,25,26', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-09-08 08:15:30', '2019-09-08 08:15:30', 1, 0),
(4, 'kursha hight school', NULL, NULL, 'address', '', '', '4654736655', 'owner@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-06-30 08:51:40', '2019-06-30 08:51:40', 1, 0),
(5, 'kursha hight schools', NULL, NULL, 'address', '', '', '4654736655', 'owner@gmail.com', NULL, NULL, NULL, NULL, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-06-30 08:53:10', '2019-06-30 08:53:10', 1, 0),
(7, 'kursha hi schoolssss', NULL, NULL, 'dfsd', '', '', '4654736634', 'owner@gmail.com', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-30 08:55:55', '2019-06-30 08:55:55', 1, 0),
(8, 'mirbag school', NULL, NULL, 'dhaka ', '', '', '23432523525', 'freelancer@gmail.com', NULL, '1,2,3', NULL, NULL, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'slate-gray', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-06-30 09:16:11', '2019-06-30 09:16:11', 1, 0),
(9, 'kursha high school', NULL, NULL, 'dfsd', '', '', '4654736634', 'amazon.seo123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-06-30 09:19:48', '2019-06-30 09:19:48', 1, 0),
(14, 'adnan school', NULL, NULL, 'dfsd', '', '', '4654736633', 'neyamulkn@gmail.com', NULL, '1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,13,23,24,25,26,27,28', NULL, NULL, 15000, 0, NULL, NULL, NULL, NULL, NULL, 4, '2018 - 2019', NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-06 19:49:40', '2019-07-06 19:49:40', 1, 0),
(15, 'boss school', NULL, NULL, '123456', '', '', '2343252352534', 'asik@gmail.com', NULL, NULL, NULL, NULL, 20000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-09 09:10:17', '2019-07-09 09:10:17', 1, 0),
(16, 'fasdf', NULL, NULL, 'fsdfsd sdfdsf', '', '', '2343252352534', 'asik@gmail.com', NULL, NULL, NULL, NULL, 20000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-09 09:15:29', '2019-07-09 09:15:29', 1, 0),
(17, 'dhaka uddan school', NULL, NULL, 'dhaka', '', '', '2343252352534', 'fasdfl@gmail.com', NULL, NULL, NULL, NULL, 15000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-11 06:19:43', '2019-07-11 06:19:43', 1, 0),
(18, 'dhaka school', NULL, NULL, '', '18', '393', '2343252352534', 'asik@gmail.com', NULL, NULL, NULL, NULL, 15000, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-11 07:33:50', '2019-07-11 07:33:50', 1, 0),
(19, 'dhaka school new', NULL, NULL, '', '18', '348', '017238434334', 'dhaka@gmail.com', NULL, NULL, NULL, NULL, 2000, 10, NULL, NULL, NULL, NULL, NULL, 5, '2018 - 2019', NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-06 06:54:02', '2019-08-06 06:54:02', 1, 0),
(20, 'mirbag new school', NULL, NULL, '', '18', '338', '2343252352534', 'asik@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-09-08 07:50:08', '2019-09-08 07:50:08', 1, 0),
(23, 'mirbag data school', NULL, NULL, '', '113', '2004', '2343252352534', 'freelancer@gmail.com', NULL, '1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,13,23,24,25,26,27,28', NULL, NULL, 20000, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-08 08:19:00', '2019-09-08 08:19:00', 1, 0),
(24, 'dhaka model school', NULL, NULL, '', '18', '347', '2343252352534', 'freelancer@gmail.com', NULL, NULL, NULL, NULL, 10000, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-08 09:15:58', '2019-09-08 09:15:58', 1, 0),
(25, 'mirbag schools', NULL, NULL, '', '18', '348', '2343252352534', 'freelancer@gmail.com', 1, '1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,13,23,24,25,26,27,28', NULL, NULL, 12000, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-08 11:21:56', '2019-09-08 11:21:56', 1, 0),
(26, 'kursha hight school32', NULL, NULL, '', '18', '337', '0465473663', 'author@gmail.com', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-12-23 05:20:37', '2019-12-23 05:20:37', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `teacher_id` int(11) NULL,
  `name` varchar(50) NULL,
  `note` text NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `school_id`, `class_id`, `teacher_id`, `name`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 'A', 'Default Section', 1, '2019-06-04 10:19:25', '0000-00-00 00:00:00', 1, 0),
(2, 1, 2, 1, 'A', 'Default Section', 1, '2019-06-26 11:30:13', '0000-00-00 00:00:00', 1, 0),
(3, 14, 3, 2, 'A', 'Default Section', 1, '2019-07-06 23:56:02', '0000-00-00 00:00:00', 19, 0),
(4, 14, 3, 2, 'Section A', '', 1, '2019-07-06 23:56:23', '0000-00-00 00:00:00', 19, 0),
(5, 18, 4, 4, 'A', 'Default Section', 1, '2019-07-11 13:08:10', '0000-00-00 00:00:00', 1, 0),
(6, 1, 5, 3, 'A', 'Default Section', 1, '2019-08-25 10:53:56', '0000-00-00 00:00:00', 1, 0),
(7, 1, 1, 1, 'B', '', 1, '2019-09-16 15:23:19', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) NULL,
  `status` tinyint(1) NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `school_id`, `title`, `image`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, 'slider image', 'home-slider-1561778857-sms.jpg', 1, 1, 1, '2019-06-29 09:16:24', '2019-06-29 09:27:37'),
(2, 1, 'student', 'home-slider-1561778904-sms.jpg', 1, 1, 1, '2019-06-29 09:27:10', '2019-06-29 09:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `clickatell_username` varchar(100) DEFAULT NULL,
  `clickatell_password` varchar(100) DEFAULT NULL,
  `clickatell_api_key` varchar(100) DEFAULT NULL,
  `clickatell_from_number` varchar(50) DEFAULT NULL,
  `clickatell_status` tinyint(1) DEFAULT NULL,
  `twilio_account_sid` varchar(100) DEFAULT NULL,
  `twilio_auth_token` varchar(100) DEFAULT NULL,
  `twilio_from_number` varchar(100) DEFAULT NULL,
  `clickatell_mo_no` varchar(50) DEFAULT NULL,
  `twilio_status` tinyint(1) DEFAULT NULL,
  `bulk_username` varchar(100) DEFAULT NULL,
  `bulk_password` varchar(100) DEFAULT NULL,
  `bulk_status` tinyint(1) DEFAULT NULL,
  `msg91_auth_key` varchar(100) DEFAULT NULL,
  `msg91_sender_id` varchar(100) DEFAULT NULL,
  `msg91_status` tinyint(1) DEFAULT NULL,
  `plivo_auth_id` varchar(100) DEFAULT NULL,
  `plivo_auth_token` varchar(100) DEFAULT NULL,
  `plivo_from_number` varchar(50) DEFAULT NULL,
  `plivo_status` tinyint(1) DEFAULT NULL,
  `textlocal_username` varchar(50) DEFAULT NULL,
  `textlocal_hash_key` varchar(100) DEFAULT NULL,
  `textlocal_sender_id` varchar(50) DEFAULT NULL,
  `textlocal_status` tinyint(1) DEFAULT NULL,
  `smscountry_username` varchar(50) DEFAULT NULL,
  `smscountry_password` varchar(100) DEFAULT NULL,
  `smscountry_sender_id` varchar(50) DEFAULT NULL,
  `smscountry_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `role_id` int(11) NULL,
  `title` varchar(255) NULL,
  `template` text NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NULL,
  `name` varchar(30) NULL,
  `country_id` int(11) NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Andaman and Nicobar Islands', 101),
(2, 'Andhra Pradesh', 101),
(3, 'Arunachal Pradesh', 101),
(4, 'Assam', 101),
(5, 'Bihar', 101),
(6, 'Chandigarh', 101),
(7, 'Chhattisgarh', 101),
(8, 'Dadra and Nagar Haveli', 101),
(9, 'Daman and Diu', 101),
(10, 'Delhi', 101),
(11, 'Goa', 101),
(12, 'Gujarat', 101),
(13, 'Haryana', 101),
(14, 'Himachal Pradesh', 101),
(15, 'Jammu and Kashmir', 101),
(16, 'Jharkhand', 101),
(17, 'Karnataka', 101),
(18, 'Kenmore', 101),
(19, 'Kerala', 101),
(20, 'Lakshadweep', 101),
(21, 'Madhya Pradesh', 101),
(22, 'Maharashtra', 101),
(23, 'Manipur', 101),
(24, 'Meghalaya', 101),
(25, 'Mizoram', 101),
(26, 'Nagaland', 101),
(27, 'Narora', 101),
(28, 'Natwar', 101),
(29, 'Odisha', 101),
(30, 'Paschim Medinipur', 101),
(31, 'Pondicherry', 101),
(32, 'Punjab', 101),
(33, 'Rajasthan', 101),
(34, 'Sikkim', 101),
(35, 'Tamil Nadu', 101),
(36, 'Telangana', 101),
(37, 'Tripura', 101),
(38, 'Uttar Pradesh', 101),
(39, 'Uttarakhand', 101),
(40, 'Vaishali', 101),
(41, 'West Bengal', 101),
(42, 'Badakhshan', 1),
(43, 'Badgis', 1),
(44, 'Baglan', 1),
(45, 'Balkh', 1),
(46, 'Bamiyan', 1),
(47, 'Farah', 1),
(48, 'Faryab', 1),
(49, 'Gawr', 1),
(50, 'Gazni', 1),
(51, 'Herat', 1),
(52, 'Hilmand', 1),
(53, 'Jawzjan', 1),
(54, 'Kabul', 1),
(55, 'Kapisa', 1),
(56, 'Khawst', 1),
(57, 'Kunar', 1),
(58, 'Lagman', 1),
(59, 'Lawghar', 1),
(60, 'Nangarhar', 1),
(61, 'Nimruz', 1),
(62, 'Nuristan', 1),
(63, 'Paktika', 1),
(64, 'Paktiya', 1),
(65, 'Parwan', 1),
(66, 'Qandahar', 1),
(67, 'Qunduz', 1),
(68, 'Samangan', 1),
(69, 'Sar-e Pul', 1),
(70, 'Takhar', 1),
(71, 'Uruzgan', 1),
(72, 'Wardag', 1),
(73, 'Zabul', 1),
(74, 'Berat', 2),
(75, 'Bulqize', 2),
(76, 'Delvine', 2),
(77, 'Devoll', 2),
(78, 'Dibre', 2),
(79, 'Durres', 2),
(80, 'Elbasan', 2),
(81, 'Fier', 2),
(82, 'Gjirokaster', 2),
(83, 'Gramsh', 2),
(84, 'Has', 2),
(85, 'Kavaje', 2),
(86, 'Kolonje', 2),
(87, 'Korce', 2),
(88, 'Kruje', 2),
(89, 'Kucove', 2),
(90, 'Kukes', 2),
(91, 'Kurbin', 2),
(92, 'Lezhe', 2),
(93, 'Librazhd', 2),
(94, 'Lushnje', 2),
(95, 'Mallakaster', 2),
(96, 'Malsi e Madhe', 2),
(97, 'Mat', 2),
(98, 'Mirdite', 2),
(99, 'Peqin', 2),
(100, 'Permet', 2),
(101, 'Pogradec', 2),
(102, 'Puke', 2),
(103, 'Sarande', 2),
(104, 'Shkoder', 2),
(105, 'Skrapar', 2),
(106, 'Tepelene', 2),
(107, 'Tirane', 2),
(108, 'Tropoje', 2),
(109, 'Vlore', 2),
(110, '\'Ayn Daflah', 3),
(111, '\'Ayn Tamushanat', 3),
(112, 'Adrar', 3),
(113, 'Algiers', 3),
(114, 'Annabah', 3),
(115, 'Bashshar', 3),
(116, 'Batnah', 3),
(117, 'Bijayah', 3),
(118, 'Biskrah', 3),
(119, 'Blidah', 3),
(120, 'Buirah', 3),
(121, 'Bumardas', 3),
(122, 'Burj Bu Arririj', 3),
(123, 'Ghalizan', 3),
(124, 'Ghardayah', 3),
(125, 'Ilizi', 3),
(126, 'Jijili', 3),
(127, 'Jilfah', 3),
(128, 'Khanshalah', 3),
(129, 'Masilah', 3),
(130, 'Midyah', 3),
(131, 'Milah', 3),
(132, 'Muaskar', 3),
(133, 'Mustaghanam', 3),
(134, 'Naama', 3),
(135, 'Oran', 3),
(136, 'Ouargla', 3),
(137, 'Qalmah', 3),
(138, 'Qustantinah', 3),
(139, 'Sakikdah', 3),
(140, 'Satif', 3),
(141, 'Sayda\'', 3),
(142, 'Sidi ban-al-\'Abbas', 3),
(143, 'Suq Ahras', 3),
(144, 'Tamanghasat', 3),
(145, 'Tibazah', 3),
(146, 'Tibissah', 3),
(147, 'Tilimsan', 3),
(148, 'Tinduf', 3),
(149, 'Tisamsilt', 3),
(150, 'Tiyarat', 3),
(151, 'Tizi Wazu', 3),
(152, 'Umm-al-Bawaghi', 3),
(153, 'Wahran', 3),
(154, 'Warqla', 3),
(155, 'Wilaya d Alger', 3),
(156, 'Wilaya de Bejaia', 3),
(157, 'Wilaya de Constantine', 3),
(158, 'al-Aghwat', 3),
(159, 'al-Bayadh', 3),
(160, 'al-Jaza\'ir', 3),
(161, 'al-Wad', 3),
(162, 'ash-Shalif', 3),
(163, 'at-Tarif', 3),
(164, 'Eastern', 4),
(165, 'Manu\'a', 4),
(166, 'Swains Island', 4),
(167, 'Western', 4),
(168, 'Andorra la Vella', 5),
(169, 'Canillo', 5),
(170, 'Encamp', 5),
(171, 'La Massana', 5),
(172, 'Les Escaldes', 5),
(173, 'Ordino', 5),
(174, 'Sant Julia de Loria', 5),
(175, 'Bengo', 6),
(176, 'Benguela', 6),
(177, 'Bie', 6),
(178, 'Cabinda', 6),
(179, 'Cunene', 6),
(180, 'Huambo', 6),
(181, 'Huila', 6),
(182, 'Kuando-Kubango', 6),
(183, 'Kwanza Norte', 6),
(184, 'Kwanza Sul', 6),
(185, 'Luanda', 6),
(186, 'Lunda Norte', 6),
(187, 'Lunda Sul', 6),
(188, 'Malanje', 6),
(189, 'Moxico', 6),
(190, 'Namibe', 6),
(191, 'Uige', 6),
(192, 'Zaire', 6),
(193, 'Other Provinces', 7),
(194, 'Sector claimed by Argentina/Ch', 8),
(195, 'Sector claimed by Argentina/UK', 8),
(196, 'Sector claimed by Australia', 8),
(197, 'Sector claimed by France', 8),
(198, 'Sector claimed by New Zealand', 8),
(199, 'Sector claimed by Norway', 8),
(200, 'Unclaimed Sector', 8),
(201, 'Barbuda', 9),
(202, 'Saint George', 9),
(203, 'Saint John', 9),
(204, 'Saint Mary', 9),
(205, 'Saint Paul', 9),
(206, 'Saint Peter', 9),
(207, 'Saint Philip', 9),
(208, 'Buenos Aires', 10),
(209, 'Catamarca', 10),
(210, 'Chaco', 10),
(211, 'Chubut', 10),
(212, 'Cordoba', 10),
(213, 'Corrientes', 10),
(214, 'Distrito Federal', 10),
(215, 'Entre Rios', 10),
(216, 'Formosa', 10),
(217, 'Jujuy', 10),
(218, 'La Pampa', 10),
(219, 'La Rioja', 10),
(220, 'Mendoza', 10),
(221, 'Misiones', 10),
(222, 'Neuquen', 10),
(223, 'Rio Negro', 10),
(224, 'Salta', 10),
(225, 'San Juan', 10),
(226, 'San Luis', 10),
(227, 'Santa Cruz', 10),
(228, 'Santa Fe', 10),
(229, 'Santiago del Estero', 10),
(230, 'Tierra del Fuego', 10),
(231, 'Tucuman', 10),
(232, 'Aragatsotn', 11),
(233, 'Ararat', 11),
(234, 'Armavir', 11),
(235, 'Gegharkunik', 11),
(236, 'Kotaik', 11),
(237, 'Lori', 11),
(238, 'Shirak', 11),
(239, 'Stepanakert', 11),
(240, 'Syunik', 11),
(241, 'Tavush', 11),
(242, 'Vayots Dzor', 11),
(243, 'Yerevan', 11),
(244, 'Aruba', 12),
(245, 'Auckland', 13),
(246, 'Australian Capital Territory', 13),
(247, 'Balgowlah', 13),
(248, 'Balmain', 13),
(249, 'Bankstown', 13),
(250, 'Baulkham Hills', 13),
(251, 'Bonnet Bay', 13),
(252, 'Camberwell', 13),
(253, 'Carole Park', 13),
(254, 'Castle Hill', 13),
(255, 'Caulfield', 13),
(256, 'Chatswood', 13),
(257, 'Cheltenham', 13),
(258, 'Cherrybrook', 13),
(259, 'Clayton', 13),
(260, 'Collingwood', 13),
(261, 'Frenchs Forest', 13),
(262, 'Hawthorn', 13),
(263, 'Jannnali', 13),
(264, 'Knoxfield', 13),
(265, 'Melbourne', 13),
(266, 'New South Wales', 13),
(267, 'Northern Territory', 13),
(268, 'Perth', 13),
(269, 'Queensland', 13),
(270, 'South Australia', 13),
(271, 'Tasmania', 13),
(272, 'Templestowe', 13),
(273, 'Victoria', 13),
(274, 'Werribee south', 13),
(275, 'Western Australia', 13),
(276, 'Wheeler', 13),
(277, 'Bundesland Salzburg', 14),
(278, 'Bundesland Steiermark', 14),
(279, 'Bundesland Tirol', 14),
(280, 'Burgenland', 14),
(281, 'Carinthia', 14),
(282, 'Karnten', 14),
(283, 'Liezen', 14),
(284, 'Lower Austria', 14),
(285, 'Niederosterreich', 14),
(286, 'Oberosterreich', 14),
(287, 'Salzburg', 14),
(288, 'Schleswig-Holstein', 14),
(289, 'Steiermark', 14),
(290, 'Styria', 14),
(291, 'Tirol', 14),
(292, 'Upper Austria', 14),
(293, 'Vorarlberg', 14),
(294, 'Wien', 14),
(295, 'Abseron', 15),
(296, 'Baki Sahari', 15),
(297, 'Ganca', 15),
(298, 'Ganja', 15),
(299, 'Kalbacar', 15),
(300, 'Lankaran', 15),
(301, 'Mil-Qarabax', 15),
(302, 'Mugan-Salyan', 15),
(303, 'Nagorni-Qarabax', 15),
(304, 'Naxcivan', 15),
(305, 'Priaraks', 15),
(306, 'Qazax', 15),
(307, 'Saki', 15),
(308, 'Sirvan', 15),
(309, 'Xacmaz', 15),
(310, 'Abaco', 16),
(311, 'Acklins Island', 16),
(312, 'Andros', 16),
(313, 'Berry Islands', 16),
(314, 'Biminis', 16),
(315, 'Cat Island', 16),
(316, 'Crooked Island', 16),
(317, 'Eleuthera', 16),
(318, 'Exuma and Cays', 16),
(319, 'Grand Bahama', 16),
(320, 'Inagua Islands', 16),
(321, 'Long Island', 16),
(322, 'Mayaguana', 16),
(323, 'New Providence', 16),
(324, 'Ragged Island', 16),
(325, 'Rum Cay', 16),
(326, 'San Salvador', 16),
(327, '\'Isa', 17),
(328, 'Badiyah', 17),
(329, 'Hidd', 17),
(330, 'Jidd Hafs', 17),
(331, 'Mahama', 17),
(332, 'Manama', 17),
(333, 'Sitrah', 17),
(334, 'al-Manamah', 17),
(335, 'al-Muharraq', 17),
(336, 'ar-Rifa\'a', 17),
(337, 'Bagar Hat', 18),
(338, 'Bandarban', 18),
(339, 'Barguna', 18),
(340, 'Barisal', 18),
(341, 'Bhola', 18),
(342, 'Bogora', 18),
(343, 'Brahman Bariya', 18),
(344, 'Chandpur', 18),
(345, 'Chattagam', 18),
(346, 'Chittagong Division', 18),
(347, 'Chuadanga', 18),
(348, 'Dhaka', 18),
(349, 'Dinajpur', 18),
(350, 'Faridpur', 18),
(351, 'Feni', 18),
(352, 'Gaybanda', 18),
(353, 'Gazipur', 18),
(354, 'Gopalganj', 18),
(355, 'Habiganj', 18),
(356, 'Jaipur Hat', 18),
(357, 'Jamalpur', 18),
(358, 'Jessor', 18),
(359, 'Jhalakati', 18),
(360, 'Jhanaydah', 18),
(361, 'Khagrachhari', 18),
(362, 'Khulna', 18),
(363, 'Kishorganj', 18),
(364, 'Koks Bazar', 18),
(365, 'Komilla', 18),
(366, 'Kurigram', 18),
(367, 'Kushtiya', 18),
(368, 'Lakshmipur', 18),
(369, 'Lalmanir Hat', 18),
(370, 'Madaripur', 18),
(371, 'Magura', 18),
(372, 'Maimansingh', 18),
(373, 'Manikganj', 18),
(374, 'Maulvi Bazar', 18),
(375, 'Meherpur', 18),
(376, 'Munshiganj', 18),
(377, 'Naral', 18),
(378, 'Narayanganj', 18),
(379, 'Narsingdi', 18),
(380, 'Nator', 18),
(381, 'Naugaon', 18),
(382, 'Nawabganj', 18),
(383, 'Netrakona', 18),
(384, 'Nilphamari', 18),
(385, 'Noakhali', 18),
(386, 'Pabna', 18),
(387, 'Panchagarh', 18),
(388, 'Patuakhali', 18),
(389, 'Pirojpur', 18),
(390, 'Rajbari', 18),
(391, 'Rajshahi', 18),
(392, 'Rangamati', 18),
(393, 'Rangpur', 18),
(394, 'Satkhira', 18),
(395, 'Shariatpur', 18),
(396, 'Sherpur', 18),
(397, 'Silhat', 18),
(398, 'Sirajganj', 18),
(399, 'Sunamganj', 18),
(400, 'Tangayal', 18),
(401, 'Thakurgaon', 18),
(402, 'Christ Church', 19),
(403, 'Saint Andrew', 19),
(404, 'Saint George', 19),
(405, 'Saint James', 19),
(406, 'Saint John', 19),
(407, 'Saint Joseph', 19),
(408, 'Saint Lucy', 19),
(409, 'Saint Michael', 19),
(410, 'Saint Peter', 19),
(411, 'Saint Philip', 19),
(412, 'Saint Thomas', 19),
(413, 'Brest', 20),
(414, 'Homjel\'', 20),
(415, 'Hrodna', 20),
(416, 'Mahiljow', 20),
(417, 'Mahilyowskaya Voblasts', 20),
(418, 'Minsk', 20),
(419, 'Minskaja Voblasts\'', 20),
(420, 'Petrik', 20),
(421, 'Vicebsk', 20),
(422, 'Antwerpen', 21),
(423, 'Berchem', 21),
(424, 'Brabant', 21),
(425, 'Brabant Wallon', 21),
(426, 'Brussel', 21),
(427, 'East Flanders', 21),
(428, 'Hainaut', 21),
(429, 'Liege', 21),
(430, 'Limburg', 21),
(431, 'Luxembourg', 21),
(432, 'Namur', 21),
(433, 'Ontario', 21),
(434, 'Oost-Vlaanderen', 21),
(435, 'Provincie Brabant', 21),
(436, 'Vlaams-Brabant', 21),
(437, 'Wallonne', 21),
(438, 'West-Vlaanderen', 21),
(439, 'Belize', 22),
(440, 'Cayo', 22),
(441, 'Corozal', 22),
(442, 'Orange Walk', 22),
(443, 'Stann Creek', 22),
(444, 'Toledo', 22),
(445, 'Alibori', 23),
(446, 'Atacora', 23),
(447, 'Atlantique', 23),
(448, 'Borgou', 23),
(449, 'Collines', 23),
(450, 'Couffo', 23),
(451, 'Donga', 23),
(452, 'Littoral', 23),
(453, 'Mono', 23),
(454, 'Oueme', 23),
(455, 'Plateau', 23),
(456, 'Zou', 23),
(457, 'Hamilton', 24),
(458, 'Saint George', 24),
(459, 'Bumthang', 25),
(460, 'Chhukha', 25),
(461, 'Chirang', 25),
(462, 'Daga', 25),
(463, 'Geylegphug', 25),
(464, 'Ha', 25),
(465, 'Lhuntshi', 25),
(466, 'Mongar', 25),
(467, 'Pemagatsel', 25),
(468, 'Punakha', 25),
(469, 'Rinpung', 25),
(470, 'Samchi', 25),
(471, 'Samdrup Jongkhar', 25),
(472, 'Shemgang', 25),
(473, 'Tashigang', 25),
(474, 'Timphu', 25),
(475, 'Tongsa', 25),
(476, 'Wangdiphodrang', 25),
(477, 'Beni', 26),
(478, 'Chuquisaca', 26),
(479, 'Cochabamba', 26),
(480, 'La Paz', 26),
(481, 'Oruro', 26),
(482, 'Pando', 26),
(483, 'Potosi', 26),
(484, 'Santa Cruz', 26),
(485, 'Tarija', 26),
(486, 'Federacija Bosna i Hercegovina', 27),
(487, 'Republika Srpska', 27),
(488, 'Central Bobonong', 28),
(489, 'Central Boteti', 28),
(490, 'Central Mahalapye', 28),
(491, 'Central Serowe-Palapye', 28),
(492, 'Central Tutume', 28),
(493, 'Chobe', 28),
(494, 'Francistown', 28),
(495, 'Gaborone', 28),
(496, 'Ghanzi', 28),
(497, 'Jwaneng', 28),
(498, 'Kgalagadi North', 28),
(499, 'Kgalagadi South', 28),
(500, 'Kgatleng', 28),
(501, 'Kweneng', 28),
(502, 'Lobatse', 28),
(503, 'Ngamiland', 28),
(504, 'Ngwaketse', 28),
(505, 'North East', 28),
(506, 'Okavango', 28),
(507, 'Orapa', 28),
(508, 'Selibe Phikwe', 28),
(509, 'South East', 28),
(510, 'Sowa', 28),
(511, 'Bouvet Island', 29),
(512, 'Acre', 30),
(513, 'Alagoas', 30),
(514, 'Amapa', 30),
(515, 'Amazonas', 30),
(516, 'Bahia', 30),
(517, 'Ceara', 30),
(518, 'Distrito Federal', 30),
(519, 'Espirito Santo', 30),
(520, 'Estado de Sao Paulo', 30),
(521, 'Goias', 30),
(522, 'Maranhao', 30),
(523, 'Mato Grosso', 30),
(524, 'Mato Grosso do Sul', 30),
(525, 'Minas Gerais', 30),
(526, 'Para', 30),
(527, 'Paraiba', 30),
(528, 'Parana', 30),
(529, 'Pernambuco', 30),
(530, 'Piaui', 30),
(531, 'Rio Grande do Norte', 30),
(532, 'Rio Grande do Sul', 30),
(533, 'Rio de Janeiro', 30),
(534, 'Rondonia', 30),
(535, 'Roraima', 30),
(536, 'Santa Catarina', 30),
(537, 'Sao Paulo', 30),
(538, 'Sergipe', 30),
(539, 'Tocantins', 30),
(540, 'British Indian Ocean Territory', 31),
(541, 'Belait', 32),
(542, 'Brunei-Muara', 32),
(543, 'Temburong', 32),
(544, 'Tutong', 32),
(545, 'Blagoevgrad', 33),
(546, 'Burgas', 33),
(547, 'Dobrich', 33),
(548, 'Gabrovo', 33),
(549, 'Haskovo', 33),
(550, 'Jambol', 33),
(551, 'Kardzhali', 33),
(552, 'Kjustendil', 33),
(553, 'Lovech', 33),
(554, 'Montana', 33),
(555, 'Oblast Sofiya-Grad', 33),
(556, 'Pazardzhik', 33),
(557, 'Pernik', 33),
(558, 'Pleven', 33),
(559, 'Plovdiv', 33),
(560, 'Razgrad', 33),
(561, 'Ruse', 33),
(562, 'Shumen', 33),
(563, 'Silistra', 33),
(564, 'Sliven', 33),
(565, 'Smoljan', 33),
(566, 'Sofija grad', 33),
(567, 'Sofijska oblast', 33),
(568, 'Stara Zagora', 33),
(569, 'Targovishte', 33),
(570, 'Varna', 33),
(571, 'Veliko Tarnovo', 33),
(572, 'Vidin', 33),
(573, 'Vraca', 33),
(574, 'Yablaniza', 33),
(575, 'Bale', 34),
(576, 'Bam', 34),
(577, 'Bazega', 34),
(578, 'Bougouriba', 34),
(579, 'Boulgou', 34),
(580, 'Boulkiemde', 34),
(581, 'Comoe', 34),
(582, 'Ganzourgou', 34),
(583, 'Gnagna', 34),
(584, 'Gourma', 34),
(585, 'Houet', 34),
(586, 'Ioba', 34),
(587, 'Kadiogo', 34),
(588, 'Kenedougou', 34),
(589, 'Komandjari', 34),
(590, 'Kompienga', 34),
(591, 'Kossi', 34),
(592, 'Kouritenga', 34),
(593, 'Kourweogo', 34),
(594, 'Leraba', 34),
(595, 'Mouhoun', 34),
(596, 'Nahouri', 34),
(597, 'Namentenga', 34),
(598, 'Noumbiel', 34),
(599, 'Oubritenga', 34),
(600, 'Oudalan', 34),
(601, 'Passore', 34),
(602, 'Poni', 34),
(603, 'Sanguie', 34),
(604, 'Sanmatenga', 34),
(605, 'Seno', 34),
(606, 'Sissili', 34),
(607, 'Soum', 34),
(608, 'Sourou', 34),
(609, 'Tapoa', 34),
(610, 'Tuy', 34),
(611, 'Yatenga', 34),
(612, 'Zondoma', 34),
(613, 'Zoundweogo', 34),
(614, 'Bubanza', 35),
(615, 'Bujumbura', 35),
(616, 'Bururi', 35),
(617, 'Cankuzo', 35),
(618, 'Cibitoke', 35),
(619, 'Gitega', 35),
(620, 'Karuzi', 35),
(621, 'Kayanza', 35),
(622, 'Kirundo', 35),
(623, 'Makamba', 35),
(624, 'Muramvya', 35),
(625, 'Muyinga', 35),
(626, 'Ngozi', 35),
(627, 'Rutana', 35),
(628, 'Ruyigi', 35),
(629, 'Banteay Mean Chey', 36),
(630, 'Bat Dambang', 36),
(631, 'Kampong Cham', 36),
(632, 'Kampong Chhnang', 36),
(633, 'Kampong Spoeu', 36),
(634, 'Kampong Thum', 36),
(635, 'Kampot', 36),
(636, 'Kandal', 36),
(637, 'Kaoh Kong', 36),
(638, 'Kracheh', 36),
(639, 'Krong Kaeb', 36),
(640, 'Krong Pailin', 36),
(641, 'Krong Preah Sihanouk', 36),
(642, 'Mondol Kiri', 36),
(643, 'Otdar Mean Chey', 36),
(644, 'Phnum Penh', 36),
(645, 'Pousat', 36),
(646, 'Preah Vihear', 36),
(647, 'Prey Veaeng', 36),
(648, 'Rotanak Kiri', 36),
(649, 'Siem Reab', 36),
(650, 'Stueng Traeng', 36),
(651, 'Svay Rieng', 36),
(652, 'Takaev', 36),
(653, 'Adamaoua', 37),
(654, 'Centre', 37),
(655, 'Est', 37),
(656, 'Littoral', 37),
(657, 'Nord', 37),
(658, 'Nord Extreme', 37),
(659, 'Nordouest', 37),
(660, 'Ouest', 37),
(661, 'Sud', 37),
(662, 'Sudouest', 37),
(663, 'Alberta', 38),
(664, 'British Columbia', 38),
(665, 'Manitoba', 38),
(666, 'New Brunswick', 38),
(667, 'Newfoundland and Labrador', 38),
(668, 'Northwest Territories', 38),
(669, 'Nova Scotia', 38),
(670, 'Nunavut', 38),
(671, 'Ontario', 38),
(672, 'Prince Edward Island', 38),
(673, 'Quebec', 38),
(674, 'Saskatchewan', 38),
(675, 'Yukon', 38),
(676, 'Boavista', 39),
(677, 'Brava', 39),
(678, 'Fogo', 39),
(679, 'Maio', 39),
(680, 'Sal', 39),
(681, 'Santo Antao', 39),
(682, 'Sao Nicolau', 39),
(683, 'Sao Tiago', 39),
(684, 'Sao Vicente', 39),
(685, 'Grand Cayman', 40),
(686, 'Bamingui-Bangoran', 41),
(687, 'Bangui', 41),
(688, 'Basse-Kotto', 41),
(689, 'Haut-Mbomou', 41),
(690, 'Haute-Kotto', 41),
(691, 'Kemo', 41),
(692, 'Lobaye', 41),
(693, 'Mambere-Kadei', 41),
(694, 'Mbomou', 41),
(695, 'Nana-Gribizi', 41),
(696, 'Nana-Mambere', 41),
(697, 'Ombella Mpoko', 41),
(698, 'Ouaka', 41),
(699, 'Ouham', 41),
(700, 'Ouham-Pende', 41),
(701, 'Sangha-Mbaere', 41),
(702, 'Vakaga', 41),
(703, 'Batha', 42),
(704, 'Biltine', 42),
(705, 'Bourkou-Ennedi-Tibesti', 42),
(706, 'Chari-Baguirmi', 42),
(707, 'Guera', 42),
(708, 'Kanem', 42),
(709, 'Lac', 42),
(710, 'Logone Occidental', 42),
(711, 'Logone Oriental', 42),
(712, 'Mayo-Kebbi', 42),
(713, 'Moyen-Chari', 42),
(714, 'Ouaddai', 42),
(715, 'Salamat', 42),
(716, 'Tandjile', 42),
(717, 'Aisen', 43),
(718, 'Antofagasta', 43),
(719, 'Araucania', 43),
(720, 'Atacama', 43),
(721, 'Bio Bio', 43),
(722, 'Coquimbo', 43),
(723, 'Libertador General Bernardo O\'', 43),
(724, 'Los Lagos', 43),
(725, 'Magellanes', 43),
(726, 'Maule', 43),
(727, 'Metropolitana', 43),
(728, 'Metropolitana de Santiago', 43),
(729, 'Tarapaca', 43),
(730, 'Valparaiso', 43),
(731, 'Anhui', 44),
(734, 'Aomen', 44),
(735, 'Beijing', 44),
(736, 'Beijing Shi', 44),
(737, 'Chongqing', 44),
(738, 'Fujian', 44),
(740, 'Gansu', 44),
(741, 'Guangdong', 44),
(743, 'Guangxi', 44),
(744, 'Guizhou', 44),
(745, 'Hainan', 44),
(746, 'Hebei', 44),
(747, 'Heilongjiang', 44),
(748, 'Henan', 44),
(749, 'Hubei', 44),
(750, 'Hunan', 44),
(751, 'Jiangsu', 44),
(753, 'Jiangxi', 44),
(754, 'Jilin', 44),
(755, 'Liaoning', 44),
(757, 'Nei Monggol', 44),
(758, 'Ningxia Hui', 44),
(759, 'Qinghai', 44),
(760, 'Shaanxi', 44),
(761, 'Shandong', 44),
(763, 'Shanghai', 44),
(764, 'Shanxi', 44),
(765, 'Sichuan', 44),
(766, 'Tianjin', 44),
(767, 'Xianggang', 44),
(768, 'Xinjiang', 44),
(769, 'Xizang', 44),
(770, 'Yunnan', 44),
(771, 'Zhejiang', 44),
(773, 'Christmas Island', 45),
(774, 'Cocos (Keeling) Islands', 46),
(775, 'Amazonas', 47),
(776, 'Antioquia', 47),
(777, 'Arauca', 47),
(778, 'Atlantico', 47),
(779, 'Bogota', 47),
(780, 'Bolivar', 47),
(781, 'Boyaca', 47),
(782, 'Caldas', 47),
(783, 'Caqueta', 47),
(784, 'Casanare', 47),
(785, 'Cauca', 47),
(786, 'Cesar', 47),
(787, 'Choco', 47),
(788, 'Cordoba', 47),
(789, 'Cundinamarca', 47),
(790, 'Guainia', 47),
(791, 'Guaviare', 47),
(792, 'Huila', 47),
(793, 'La Guajira', 47),
(794, 'Magdalena', 47),
(795, 'Meta', 47),
(796, 'Narino', 47),
(797, 'Norte de Santander', 47),
(798, 'Putumayo', 47),
(799, 'Quindio', 47),
(800, 'Risaralda', 47),
(801, 'San Andres y Providencia', 47),
(802, 'Santander', 47),
(803, 'Sucre', 47),
(804, 'Tolima', 47),
(805, 'Valle del Cauca', 47),
(806, 'Vaupes', 47),
(807, 'Vichada', 47),
(808, 'Mwali', 48),
(809, 'Njazidja', 48),
(810, 'Nzwani', 48),
(811, 'Bouenza', 49),
(812, 'Brazzaville', 49),
(813, 'Cuvette', 49),
(814, 'Kouilou', 49),
(815, 'Lekoumou', 49),
(816, 'Likouala', 49),
(817, 'Niari', 49),
(818, 'Plateaux', 49),
(819, 'Pool', 49),
(820, 'Sangha', 49),
(821, 'Bandundu', 50),
(822, 'Bas-Congo', 50),
(823, 'Equateur', 50),
(824, 'Haut-Congo', 50),
(825, 'Kasai-Occidental', 50),
(826, 'Kasai-Oriental', 50),
(827, 'Katanga', 50),
(828, 'Kinshasa', 50),
(829, 'Maniema', 50),
(830, 'Nord-Kivu', 50),
(831, 'Sud-Kivu', 50),
(832, 'Aitutaki', 51),
(833, 'Atiu', 51),
(834, 'Mangaia', 51),
(835, 'Manihiki', 51),
(836, 'Mauke', 51),
(837, 'Mitiaro', 51),
(838, 'Nassau', 51),
(839, 'Pukapuka', 51),
(840, 'Rakahanga', 51),
(841, 'Rarotonga', 51),
(842, 'Tongareva', 51),
(843, 'Alajuela', 52),
(844, 'Cartago', 52),
(845, 'Guanacaste', 52),
(846, 'Heredia', 52),
(847, 'Limon', 52),
(848, 'Puntarenas', 52),
(849, 'San Jose', 52),
(850, 'Abidjan', 53),
(851, 'Agneby', 53),
(852, 'Bafing', 53),
(853, 'Denguele', 53),
(854, 'Dix-huit Montagnes', 53),
(855, 'Fromager', 53),
(856, 'Haut-Sassandra', 53),
(857, 'Lacs', 53),
(858, 'Lagunes', 53),
(859, 'Marahoue', 53),
(860, 'Moyen-Cavally', 53),
(861, 'Moyen-Comoe', 53),
(862, 'N\'zi-Comoe', 53),
(863, 'Sassandra', 53),
(864, 'Savanes', 53),
(865, 'Sud-Bandama', 53),
(866, 'Sud-Comoe', 53),
(867, 'Vallee du Bandama', 53),
(868, 'Worodougou', 53),
(869, 'Zanzan', 53),
(870, 'Bjelovar-Bilogora', 54),
(871, 'Dubrovnik-Neretva', 54),
(872, 'Grad Zagreb', 54),
(873, 'Istra', 54),
(874, 'Karlovac', 54),
(875, 'Koprivnica-Krizhevci', 54),
(876, 'Krapina-Zagorje', 54),
(877, 'Lika-Senj', 54),
(878, 'Medhimurje', 54),
(879, 'Medimurska Zupanija', 54),
(880, 'Osijek-Baranja', 54),
(881, 'Osjecko-Baranjska Zupanija', 54),
(882, 'Pozhega-Slavonija', 54),
(883, 'Primorje-Gorski Kotar', 54),
(884, 'Shibenik-Knin', 54),
(885, 'Sisak-Moslavina', 54),
(886, 'Slavonski Brod-Posavina', 54),
(887, 'Split-Dalmacija', 54),
(888, 'Varazhdin', 54),
(889, 'Virovitica-Podravina', 54),
(890, 'Vukovar-Srijem', 54),
(891, 'Zadar', 54),
(892, 'Zagreb', 54),
(893, 'Camaguey', 55),
(894, 'Ciego de Avila', 55),
(895, 'Cienfuegos', 55),
(896, 'Ciudad de la Habana', 55),
(897, 'Granma', 55),
(898, 'Guantanamo', 55),
(899, 'Habana', 55),
(900, 'Holguin', 55),
(901, 'Isla de la Juventud', 55),
(902, 'La Habana', 55),
(903, 'Las Tunas', 55),
(904, 'Matanzas', 55),
(905, 'Pinar del Rio', 55),
(906, 'Sancti Spiritus', 55),
(907, 'Santiago de Cuba', 55),
(908, 'Villa Clara', 55),
(909, 'Government controlled area', 56),
(910, 'Limassol', 56),
(911, 'Nicosia District', 56),
(912, 'Paphos', 56),
(913, 'Turkish controlled area', 56),
(914, 'Central Bohemian', 57),
(915, 'Frycovice', 57),
(916, 'Jihocesky Kraj', 57),
(917, 'Jihochesky', 57),
(918, 'Jihomoravsky', 57),
(919, 'Karlovarsky', 57),
(920, 'Klecany', 57),
(921, 'Kralovehradecky', 57),
(922, 'Liberecky', 57),
(923, 'Lipov', 57),
(924, 'Moravskoslezsky', 57),
(925, 'Olomoucky', 57),
(926, 'Olomoucky Kraj', 57),
(927, 'Pardubicky', 57),
(928, 'Plzensky', 57),
(929, 'Praha', 57),
(930, 'Rajhrad', 57),
(931, 'Smirice', 57),
(932, 'South Moravian', 57),
(933, 'Straz nad Nisou', 57),
(934, 'Stredochesky', 57),
(935, 'Unicov', 57),
(936, 'Ustecky', 57),
(937, 'Valletta', 57),
(938, 'Velesin', 57),
(939, 'Vysochina', 57),
(940, 'Zlinsky', 57),
(941, 'Arhus', 58),
(942, 'Bornholm', 58),
(943, 'Frederiksborg', 58),
(944, 'Fyn', 58),
(945, 'Hovedstaden', 58),
(946, 'Kobenhavn', 58),
(947, 'Kobenhavns Amt', 58),
(948, 'Kobenhavns Kommune', 58),
(949, 'Nordjylland', 58),
(950, 'Ribe', 58),
(951, 'Ringkobing', 58),
(952, 'Roervig', 58),
(953, 'Roskilde', 58),
(954, 'Roslev', 58),
(955, 'Sjaelland', 58),
(956, 'Soeborg', 58),
(957, 'Sonderjylland', 58),
(958, 'Storstrom', 58),
(959, 'Syddanmark', 58),
(960, 'Toelloese', 58),
(961, 'Vejle', 58),
(962, 'Vestsjalland', 58),
(963, 'Viborg', 58),
(964, '\'Ali Sabih', 59),
(965, 'Dikhil', 59),
(966, 'Jibuti', 59),
(967, 'Tajurah', 59),
(968, 'Ubuk', 59),
(969, 'Saint Andrew', 60),
(970, 'Saint David', 60),
(971, 'Saint George', 60),
(972, 'Saint John', 60),
(973, 'Saint Joseph', 60),
(974, 'Saint Luke', 60),
(975, 'Saint Mark', 60),
(976, 'Saint Patrick', 60),
(977, 'Saint Paul', 60),
(978, 'Saint Peter', 60),
(979, 'Azua', 61),
(980, 'Bahoruco', 61),
(981, 'Barahona', 61),
(982, 'Dajabon', 61),
(983, 'Distrito Nacional', 61),
(984, 'Duarte', 61),
(985, 'El Seybo', 61),
(986, 'Elias Pina', 61),
(987, 'Espaillat', 61),
(988, 'Hato Mayor', 61),
(989, 'Independencia', 61),
(990, 'La Altagracia', 61),
(991, 'La Romana', 61),
(992, 'La Vega', 61),
(993, 'Maria Trinidad Sanchez', 61),
(994, 'Monsenor Nouel', 61),
(995, 'Monte Cristi', 61),
(996, 'Monte Plata', 61),
(997, 'Pedernales', 61),
(998, 'Peravia', 61),
(999, 'Puerto Plata', 61),
(1000, 'Salcedo', 61),
(1001, 'Samana', 61),
(1002, 'San Cristobal', 61),
(1003, 'San Juan', 61),
(1004, 'San Pedro de Macoris', 61),
(1005, 'Sanchez Ramirez', 61),
(1006, 'Santiago', 61),
(1007, 'Santiago Rodriguez', 61),
(1008, 'Valverde', 61),
(1009, 'Aileu', 62),
(1010, 'Ainaro', 62),
(1011, 'Ambeno', 62),
(1012, 'Baucau', 62),
(1013, 'Bobonaro', 62),
(1014, 'Cova Lima', 62),
(1015, 'Dili', 62),
(1016, 'Ermera', 62),
(1017, 'Lautem', 62),
(1018, 'Liquica', 62),
(1019, 'Manatuto', 62),
(1020, 'Manufahi', 62),
(1021, 'Viqueque', 62),
(1022, 'Azuay', 63),
(1023, 'Bolivar', 63),
(1024, 'Canar', 63),
(1025, 'Carchi', 63),
(1026, 'Chimborazo', 63),
(1027, 'Cotopaxi', 63),
(1028, 'El Oro', 63),
(1029, 'Esmeraldas', 63),
(1030, 'Galapagos', 63),
(1031, 'Guayas', 63),
(1032, 'Imbabura', 63),
(1033, 'Loja', 63),
(1034, 'Los Rios', 63),
(1035, 'Manabi', 63),
(1036, 'Morona Santiago', 63),
(1037, 'Napo', 63),
(1038, 'Orellana', 63),
(1039, 'Pastaza', 63),
(1040, 'Pichincha', 63),
(1041, 'Sucumbios', 63),
(1042, 'Tungurahua', 63),
(1043, 'Zamora Chinchipe', 63),
(1044, 'Aswan', 64),
(1045, 'Asyut', 64),
(1046, 'Bani Suwayf', 64),
(1047, 'Bur Sa\'id', 64),
(1048, 'Cairo', 64),
(1049, 'Dumyat', 64),
(1050, 'Kafr-ash-Shaykh', 64),
(1051, 'Matruh', 64),
(1052, 'Muhafazat ad Daqahliyah', 64),
(1053, 'Muhafazat al Fayyum', 64),
(1054, 'Muhafazat al Gharbiyah', 64),
(1055, 'Muhafazat al Iskandariyah', 64),
(1056, 'Muhafazat al Qahirah', 64),
(1057, 'Qina', 64),
(1058, 'Sawhaj', 64),
(1059, 'Sina al-Janubiyah', 64),
(1060, 'Sina ash-Shamaliyah', 64),
(1061, 'ad-Daqahliyah', 64),
(1062, 'al-Bahr-al-Ahmar', 64),
(1063, 'al-Buhayrah', 64),
(1064, 'al-Fayyum', 64),
(1065, 'al-Gharbiyah', 64),
(1066, 'al-Iskandariyah', 64),
(1067, 'al-Ismailiyah', 64),
(1068, 'al-Jizah', 64),
(1069, 'al-Minufiyah', 64),
(1070, 'al-Minya', 64),
(1071, 'al-Qahira', 64),
(1072, 'al-Qalyubiyah', 64),
(1073, 'al-Uqsur', 64),
(1074, 'al-Wadi al-Jadid', 64),
(1075, 'as-Suways', 64),
(1076, 'ash-Sharqiyah', 64),
(1077, 'Ahuachapan', 65),
(1078, 'Cabanas', 65),
(1079, 'Chalatenango', 65),
(1080, 'Cuscatlan', 65),
(1081, 'La Libertad', 65),
(1082, 'La Paz', 65),
(1083, 'La Union', 65),
(1084, 'Morazan', 65),
(1085, 'San Miguel', 65),
(1086, 'San Salvador', 65),
(1087, 'San Vicente', 65),
(1088, 'Santa Ana', 65),
(1089, 'Sonsonate', 65),
(1090, 'Usulutan', 65),
(1091, 'Annobon', 66),
(1092, 'Bioko Norte', 66),
(1093, 'Bioko Sur', 66),
(1094, 'Centro Sur', 66),
(1095, 'Kie-Ntem', 66),
(1096, 'Litoral', 66),
(1097, 'Wele-Nzas', 66),
(1098, 'Anseba', 67),
(1099, 'Debub', 67),
(1100, 'Debub-Keih-Bahri', 67),
(1101, 'Gash-Barka', 67),
(1102, 'Maekel', 67),
(1103, 'Semien-Keih-Bahri', 67),
(1104, 'Harju', 68),
(1105, 'Hiiu', 68),
(1106, 'Ida-Viru', 68),
(1107, 'Jarva', 68),
(1108, 'Jogeva', 68),
(1109, 'Laane', 68),
(1110, 'Laane-Viru', 68),
(1111, 'Parnu', 68),
(1112, 'Polva', 68),
(1113, 'Rapla', 68),
(1114, 'Saare', 68),
(1115, 'Tartu', 68),
(1116, 'Valga', 68),
(1117, 'Viljandi', 68),
(1118, 'Voru', 68),
(1119, 'Addis Abeba', 69),
(1120, 'Afar', 69),
(1121, 'Amhara', 69),
(1122, 'Benishangul', 69),
(1123, 'Diredawa', 69),
(1124, 'Gambella', 69),
(1125, 'Harar', 69),
(1126, 'Jigjiga', 69),
(1127, 'Mekele', 69),
(1128, 'Oromia', 69),
(1129, 'Somali', 69),
(1130, 'Southern', 69),
(1131, 'Tigray', 69),
(1132, 'Christmas Island', 70),
(1133, 'Cocos Islands', 70),
(1134, 'Coral Sea Islands', 70),
(1135, 'Falkland Islands', 71),
(1136, 'South Georgia', 71),
(1137, 'Klaksvik', 72),
(1138, 'Nor ara Eysturoy', 72),
(1139, 'Nor oy', 72),
(1140, 'Sandoy', 72),
(1141, 'Streymoy', 72),
(1142, 'Su uroy', 72),
(1143, 'Sy ra Eysturoy', 72),
(1144, 'Torshavn', 72),
(1145, 'Vaga', 72),
(1146, 'Central', 73),
(1147, 'Eastern', 73),
(1148, 'Northern', 73),
(1149, 'South Pacific', 73),
(1150, 'Western', 73),
(1151, 'Ahvenanmaa', 74),
(1152, 'Etela-Karjala', 74),
(1153, 'Etela-Pohjanmaa', 74),
(1154, 'Etela-Savo', 74),
(1155, 'Etela-Suomen Laani', 74),
(1156, 'Ita-Suomen Laani', 74),
(1157, 'Ita-Uusimaa', 74),
(1158, 'Kainuu', 74),
(1159, 'Kanta-Hame', 74),
(1160, 'Keski-Pohjanmaa', 74),
(1161, 'Keski-Suomi', 74),
(1162, 'Kymenlaakso', 74),
(1163, 'Lansi-Suomen Laani', 74),
(1164, 'Lappi', 74),
(1165, 'Northern Savonia', 74),
(1166, 'Ostrobothnia', 74),
(1167, 'Oulun Laani', 74),
(1168, 'Paijat-Hame', 74),
(1169, 'Pirkanmaa', 74),
(1170, 'Pohjanmaa', 74),
(1171, 'Pohjois-Karjala', 74),
(1172, 'Pohjois-Pohjanmaa', 74),
(1173, 'Pohjois-Savo', 74),
(1174, 'Saarijarvi', 74),
(1175, 'Satakunta', 74),
(1176, 'Southern Savonia', 74),
(1177, 'Tavastia Proper', 74),
(1178, 'Uleaborgs Lan', 74),
(1179, 'Uusimaa', 74),
(1180, 'Varsinais-Suomi', 74),
(1181, 'Ain', 75),
(1182, 'Aisne', 75),
(1183, 'Albi Le Sequestre', 75),
(1184, 'Allier', 75),
(1185, 'Alpes-Cote dAzur', 75),
(1186, 'Alpes-Maritimes', 75),
(1187, 'Alpes-de-Haute-Provence', 75),
(1188, 'Alsace', 75),
(1189, 'Aquitaine', 75),
(1190, 'Ardeche', 75),
(1191, 'Ardennes', 75),
(1192, 'Ariege', 75),
(1193, 'Aube', 75),
(1194, 'Aude', 75),
(1195, 'Auvergne', 75),
(1196, 'Aveyron', 75),
(1197, 'Bas-Rhin', 75),
(1198, 'Basse-Normandie', 75),
(1199, 'Bouches-du-Rhone', 75),
(1200, 'Bourgogne', 75),
(1201, 'Bretagne', 75),
(1202, 'Brittany', 75),
(1203, 'Burgundy', 75),
(1204, 'Calvados', 75),
(1205, 'Cantal', 75),
(1206, 'Cedex', 75),
(1207, 'Centre', 75),
(1208, 'Charente', 75),
(1209, 'Charente-Maritime', 75),
(1210, 'Cher', 75),
(1211, 'Correze', 75),
(1212, 'Corse-du-Sud', 75),
(1213, 'Cote-d\'Or', 75),
(1214, 'Cotes-d\'Armor', 75),
(1215, 'Creuse', 75),
(1216, 'Crolles', 75),
(1217, 'Deux-Sevres', 75),
(1218, 'Dordogne', 75),
(1219, 'Doubs', 75),
(1220, 'Drome', 75),
(1221, 'Essonne', 75),
(1222, 'Eure', 75),
(1223, 'Eure-et-Loir', 75),
(1224, 'Feucherolles', 75),
(1225, 'Finistere', 75),
(1226, 'Franche-Comte', 75),
(1227, 'Gard', 75),
(1228, 'Gers', 75),
(1229, 'Gironde', 75),
(1230, 'Haut-Rhin', 75),
(1231, 'Haute-Corse', 75),
(1232, 'Haute-Garonne', 75),
(1233, 'Haute-Loire', 75),
(1234, 'Haute-Marne', 75),
(1235, 'Haute-Saone', 75),
(1236, 'Haute-Savoie', 75),
(1237, 'Haute-Vienne', 75),
(1238, 'Hautes-Alpes', 75),
(1239, 'Hautes-Pyrenees', 75),
(1240, 'Hauts-de-Seine', 75),
(1241, 'Herault', 75),
(1242, 'Ile-de-France', 75),
(1243, 'Ille-et-Vilaine', 75),
(1244, 'Indre', 75),
(1245, 'Indre-et-Loire', 75),
(1246, 'Isere', 75),
(1247, 'Jura', 75),
(1248, 'Klagenfurt', 75),
(1249, 'Landes', 75),
(1250, 'Languedoc-Roussillon', 75),
(1251, 'Larcay', 75),
(1252, 'Le Castellet', 75),
(1253, 'Le Creusot', 75),
(1254, 'Limousin', 75),
(1255, 'Loir-et-Cher', 75),
(1256, 'Loire', 75),
(1257, 'Loire-Atlantique', 75),
(1258, 'Loiret', 75),
(1259, 'Lorraine', 75),
(1260, 'Lot', 75),
(1261, 'Lot-et-Garonne', 75),
(1262, 'Lower Normandy', 75),
(1263, 'Lozere', 75),
(1264, 'Maine-et-Loire', 75),
(1265, 'Manche', 75),
(1266, 'Marne', 75),
(1267, 'Mayenne', 75),
(1268, 'Meurthe-et-Moselle', 75),
(1269, 'Meuse', 75),
(1270, 'Midi-Pyrenees', 75),
(1271, 'Morbihan', 75),
(1272, 'Moselle', 75),
(1273, 'Nievre', 75),
(1274, 'Nord', 75),
(1275, 'Nord-Pas-de-Calais', 75),
(1276, 'Oise', 75),
(1277, 'Orne', 75),
(1278, 'Paris', 75),
(1279, 'Pas-de-Calais', 75),
(1280, 'Pays de la Loire', 75),
(1281, 'Pays-de-la-Loire', 75),
(1282, 'Picardy', 75),
(1283, 'Puy-de-Dome', 75),
(1284, 'Pyrenees-Atlantiques', 75),
(1285, 'Pyrenees-Orientales', 75),
(1286, 'Quelmes', 75),
(1287, 'Rhone', 75),
(1288, 'Rhone-Alpes', 75),
(1289, 'Saint Ouen', 75),
(1290, 'Saint Viatre', 75),
(1291, 'Saone-et-Loire', 75),
(1292, 'Sarthe', 75),
(1293, 'Savoie', 75),
(1294, 'Seine-Maritime', 75),
(1295, 'Seine-Saint-Denis', 75),
(1296, 'Seine-et-Marne', 75),
(1297, 'Somme', 75),
(1298, 'Sophia Antipolis', 75),
(1299, 'Souvans', 75),
(1300, 'Tarn', 75),
(1301, 'Tarn-et-Garonne', 75),
(1302, 'Territoire de Belfort', 75),
(1303, 'Treignac', 75),
(1304, 'Upper Normandy', 75),
(1305, 'Val-d\'Oise', 75),
(1306, 'Val-de-Marne', 75),
(1307, 'Var', 75),
(1308, 'Vaucluse', 75),
(1309, 'Vellise', 75),
(1310, 'Vendee', 75),
(1311, 'Vienne', 75),
(1312, 'Vosges', 75),
(1313, 'Yonne', 75),
(1314, 'Yvelines', 75),
(1315, 'Cayenne', 76),
(1316, 'Saint-Laurent-du-Maroni', 76),
(1317, 'Iles du Vent', 77),
(1318, 'Iles sous le Vent', 77),
(1319, 'Marquesas', 77),
(1320, 'Tuamotu', 77),
(1321, 'Tubuai', 77),
(1322, 'Amsterdam', 78),
(1323, 'Crozet Islands', 78),
(1324, 'Kerguelen', 78),
(1325, 'Estuaire', 79),
(1326, 'Haut-Ogooue', 79),
(1327, 'Moyen-Ogooue', 79),
(1328, 'Ngounie', 79),
(1329, 'Nyanga', 79),
(1330, 'Ogooue-Ivindo', 79),
(1331, 'Ogooue-Lolo', 79),
(1332, 'Ogooue-Maritime', 79),
(1333, 'Woleu-Ntem', 79),
(1334, 'Banjul', 80),
(1335, 'Basse', 80),
(1336, 'Brikama', 80),
(1337, 'Janjanbureh', 80),
(1338, 'Kanifing', 80),
(1339, 'Kerewan', 80),
(1340, 'Kuntaur', 80),
(1341, 'Mansakonko', 80),
(1342, 'Abhasia', 81),
(1343, 'Ajaria', 81),
(1344, 'Guria', 81),
(1345, 'Imereti', 81),
(1346, 'Kaheti', 81),
(1347, 'Kvemo Kartli', 81),
(1348, 'Mcheta-Mtianeti', 81),
(1349, 'Racha', 81),
(1350, 'Samagrelo-Zemo Svaneti', 81),
(1351, 'Samche-Zhavaheti', 81),
(1352, 'Shida Kartli', 81),
(1353, 'Tbilisi', 81),
(1354, 'Auvergne', 82),
(1355, 'Baden-Wurttemberg', 82),
(1356, 'Bavaria', 82),
(1357, 'Bayern', 82),
(1358, 'Beilstein Wurtt', 82),
(1359, 'Berlin', 82),
(1360, 'Brandenburg', 82),
(1361, 'Bremen', 82),
(1362, 'Dreisbach', 82),
(1363, 'Freistaat Bayern', 82),
(1364, 'Hamburg', 82),
(1365, 'Hannover', 82),
(1366, 'Heroldstatt', 82),
(1367, 'Hessen', 82),
(1368, 'Kortenberg', 82),
(1369, 'Laasdorf', 82),
(1370, 'Land Baden-Wurttemberg', 82),
(1371, 'Land Bayern', 82),
(1372, 'Land Brandenburg', 82),
(1373, 'Land Hessen', 82),
(1374, 'Land Mecklenburg-Vorpommern', 82),
(1375, 'Land Nordrhein-Westfalen', 82),
(1376, 'Land Rheinland-Pfalz', 82),
(1377, 'Land Sachsen', 82),
(1378, 'Land Sachsen-Anhalt', 82),
(1379, 'Land Thuringen', 82),
(1380, 'Lower Saxony', 82),
(1381, 'Mecklenburg-Vorpommern', 82),
(1382, 'Mulfingen', 82),
(1383, 'Munich', 82),
(1384, 'Neubeuern', 82),
(1385, 'Niedersachsen', 82),
(1386, 'Noord-Holland', 82),
(1387, 'Nordrhein-Westfalen', 82),
(1388, 'North Rhine-Westphalia', 82),
(1389, 'Osterode', 82),
(1390, 'Rheinland-Pfalz', 82),
(1391, 'Rhineland-Palatinate', 82),
(1392, 'Saarland', 82),
(1393, 'Sachsen', 82),
(1394, 'Sachsen-Anhalt', 82),
(1395, 'Saxony', 82),
(1396, 'Schleswig-Holstein', 82),
(1397, 'Thuringia', 82),
(1398, 'Webling', 82),
(1399, 'Weinstrabe', 82),
(1400, 'schlobborn', 82),
(1401, 'Ashanti', 83),
(1402, 'Brong-Ahafo', 83),
(1403, 'Central', 83),
(1404, 'Eastern', 83),
(1405, 'Greater Accra', 83),
(1406, 'Northern', 83),
(1407, 'Upper East', 83),
(1408, 'Upper West', 83),
(1409, 'Volta', 83),
(1410, 'Western', 83),
(1411, 'Gibraltar', 84),
(1412, 'Acharnes', 85),
(1413, 'Ahaia', 85),
(1414, 'Aitolia kai Akarnania', 85),
(1415, 'Argolis', 85),
(1416, 'Arkadia', 85),
(1417, 'Arta', 85),
(1418, 'Attica', 85),
(1419, 'Attiki', 85),
(1420, 'Ayion Oros', 85),
(1421, 'Crete', 85),
(1422, 'Dodekanisos', 85),
(1423, 'Drama', 85),
(1424, 'Evia', 85),
(1425, 'Evritania', 85),
(1426, 'Evros', 85),
(1427, 'Evvoia', 85),
(1428, 'Florina', 85),
(1429, 'Fokis', 85),
(1430, 'Fthiotis', 85),
(1431, 'Grevena', 85),
(1432, 'Halandri', 85),
(1433, 'Halkidiki', 85),
(1434, 'Hania', 85),
(1435, 'Heraklion', 85),
(1436, 'Hios', 85),
(1437, 'Ilia', 85),
(1438, 'Imathia', 85),
(1439, 'Ioannina', 85),
(1440, 'Iraklion', 85),
(1441, 'Karditsa', 85),
(1442, 'Kastoria', 85),
(1443, 'Kavala', 85),
(1444, 'Kefallinia', 85),
(1445, 'Kerkira', 85),
(1446, 'Kiklades', 85),
(1447, 'Kilkis', 85),
(1448, 'Korinthia', 85),
(1449, 'Kozani', 85),
(1450, 'Lakonia', 85),
(1451, 'Larisa', 85),
(1452, 'Lasithi', 85),
(1453, 'Lesvos', 85),
(1454, 'Levkas', 85),
(1455, 'Magnisia', 85),
(1456, 'Messinia', 85),
(1457, 'Nomos Attikis', 85),
(1458, 'Nomos Zakynthou', 85),
(1459, 'Pella', 85),
(1460, 'Pieria', 85),
(1461, 'Piraios', 85),
(1462, 'Preveza', 85),
(1463, 'Rethimni', 85),
(1464, 'Rodopi', 85),
(1465, 'Samos', 85),
(1466, 'Serrai', 85),
(1467, 'Thesprotia', 85),
(1468, 'Thessaloniki', 85),
(1469, 'Trikala', 85),
(1470, 'Voiotia', 85),
(1471, 'West Greece', 85),
(1472, 'Xanthi', 85),
(1473, 'Zakinthos', 85),
(1474, 'Aasiaat', 86),
(1475, 'Ammassalik', 86),
(1476, 'Illoqqortoormiut', 86),
(1477, 'Ilulissat', 86),
(1478, 'Ivittuut', 86),
(1479, 'Kangaatsiaq', 86),
(1480, 'Maniitsoq', 86),
(1481, 'Nanortalik', 86),
(1482, 'Narsaq', 86),
(1483, 'Nuuk', 86),
(1484, 'Paamiut', 86),
(1485, 'Qaanaaq', 86),
(1486, 'Qaqortoq', 86),
(1487, 'Qasigiannguit', 86),
(1488, 'Qeqertarsuaq', 86),
(1489, 'Sisimiut', 86),
(1490, 'Udenfor kommunal inddeling', 86),
(1491, 'Upernavik', 86),
(1492, 'Uummannaq', 86),
(1493, 'Carriacou-Petite Martinique', 87),
(1494, 'Saint Andrew', 87),
(1495, 'Saint Davids', 87),
(1496, 'Saint George\'s', 87),
(1497, 'Saint John', 87),
(1498, 'Saint Mark', 87),
(1499, 'Saint Patrick', 87),
(1500, 'Basse-Terre', 88),
(1501, 'Grande-Terre', 88),
(1502, 'Iles des Saintes', 88),
(1503, 'La Desirade', 88),
(1504, 'Marie-Galante', 88),
(1505, 'Saint Barthelemy', 88),
(1506, 'Saint Martin', 88),
(1507, 'Agana Heights', 89),
(1508, 'Agat', 89),
(1509, 'Barrigada', 89),
(1510, 'Chalan-Pago-Ordot', 89),
(1511, 'Dededo', 89),
(1512, 'Hagatna', 89),
(1513, 'Inarajan', 89),
(1514, 'Mangilao', 89),
(1515, 'Merizo', 89),
(1516, 'Mongmong-Toto-Maite', 89),
(1517, 'Santa Rita', 89),
(1518, 'Sinajana', 89),
(1519, 'Talofofo', 89),
(1520, 'Tamuning', 89),
(1521, 'Yigo', 89),
(1522, 'Yona', 89),
(1523, 'Alta Verapaz', 90),
(1524, 'Baja Verapaz', 90),
(1525, 'Chimaltenango', 90),
(1526, 'Chiquimula', 90),
(1527, 'El Progreso', 90),
(1528, 'Escuintla', 90),
(1529, 'Guatemala', 90),
(1530, 'Huehuetenango', 90),
(1531, 'Izabal', 90),
(1532, 'Jalapa', 90),
(1533, 'Jutiapa', 90),
(1534, 'Peten', 90),
(1535, 'Quezaltenango', 90),
(1536, 'Quiche', 90),
(1537, 'Retalhuleu', 90),
(1538, 'Sacatepequez', 90),
(1539, 'San Marcos', 90),
(1540, 'Santa Rosa', 90),
(1541, 'Solola', 90),
(1542, 'Suchitepequez', 90),
(1543, 'Totonicapan', 90),
(1544, 'Zacapa', 90),
(1545, 'Alderney', 91),
(1546, 'Castel', 91),
(1547, 'Forest', 91),
(1548, 'Saint Andrew', 91),
(1549, 'Saint Martin', 91),
(1550, 'Saint Peter Port', 91),
(1551, 'Saint Pierre du Bois', 91),
(1552, 'Saint Sampson', 91),
(1553, 'Saint Saviour', 91),
(1554, 'Sark', 91),
(1555, 'Torteval', 91),
(1556, 'Vale', 91),
(1557, 'Beyla', 92),
(1558, 'Boffa', 92),
(1559, 'Boke', 92),
(1560, 'Conakry', 92),
(1561, 'Coyah', 92),
(1562, 'Dabola', 92),
(1563, 'Dalaba', 92),
(1564, 'Dinguiraye', 92),
(1565, 'Faranah', 92),
(1566, 'Forecariah', 92),
(1567, 'Fria', 92),
(1568, 'Gaoual', 92),
(1569, 'Gueckedou', 92),
(1570, 'Kankan', 92),
(1571, 'Kerouane', 92),
(1572, 'Kindia', 92),
(1573, 'Kissidougou', 92),
(1574, 'Koubia', 92),
(1575, 'Koundara', 92),
(1576, 'Kouroussa', 92),
(1577, 'Labe', 92),
(1578, 'Lola', 92),
(1579, 'Macenta', 92),
(1580, 'Mali', 92),
(1581, 'Mamou', 92),
(1582, 'Mandiana', 92),
(1583, 'Nzerekore', 92),
(1584, 'Pita', 92),
(1585, 'Siguiri', 92),
(1586, 'Telimele', 92),
(1587, 'Tougue', 92),
(1588, 'Yomou', 92),
(1589, 'Bafata', 93),
(1590, 'Bissau', 93),
(1591, 'Bolama', 93),
(1592, 'Cacheu', 93),
(1593, 'Gabu', 93),
(1594, 'Oio', 93),
(1595, 'Quinara', 93),
(1596, 'Tombali', 93),
(1597, 'Barima-Waini', 94),
(1598, 'Cuyuni-Mazaruni', 94),
(1599, 'Demerara-Mahaica', 94),
(1600, 'East Berbice-Corentyne', 94),
(1601, 'Essequibo Islands-West Demerar', 94),
(1602, 'Mahaica-Berbice', 94),
(1603, 'Pomeroon-Supenaam', 94),
(1604, 'Potaro-Siparuni', 94),
(1605, 'Upper Demerara-Berbice', 94),
(1606, 'Upper Takutu-Upper Essequibo', 94),
(1607, 'Artibonite', 95),
(1608, 'Centre', 95),
(1609, 'Grand\'Anse', 95),
(1610, 'Nord', 95),
(1611, 'Nord-Est', 95),
(1612, 'Nord-Ouest', 95),
(1613, 'Ouest', 95),
(1614, 'Sud', 95),
(1615, 'Sud-Est', 95),
(1616, 'Heard and McDonald Islands', 96),
(1617, 'Atlantida', 97),
(1618, 'Choluteca', 97),
(1619, 'Colon', 97),
(1620, 'Comayagua', 97),
(1621, 'Copan', 97),
(1622, 'Cortes', 97),
(1623, 'Distrito Central', 97),
(1624, 'El Paraiso', 97),
(1625, 'Francisco Morazan', 97),
(1626, 'Gracias a Dios', 97),
(1627, 'Intibuca', 97),
(1628, 'Islas de la Bahia', 97),
(1629, 'La Paz', 97),
(1630, 'Lempira', 97),
(1631, 'Ocotepeque', 97),
(1632, 'Olancho', 97),
(1633, 'Santa Barbara', 97),
(1634, 'Valle', 97),
(1635, 'Yoro', 97),
(1636, 'Hong Kong', 98),
(1637, 'Bacs-Kiskun', 99),
(1638, 'Baranya', 99),
(1639, 'Bekes', 99),
(1640, 'Borsod-Abauj-Zemplen', 99),
(1641, 'Budapest', 99),
(1642, 'Csongrad', 99),
(1643, 'Fejer', 99),
(1644, 'Gyor-Moson-Sopron', 99),
(1645, 'Hajdu-Bihar', 99),
(1646, 'Heves', 99),
(1647, 'Jasz-Nagykun-Szolnok', 99),
(1648, 'Komarom-Esztergom', 99),
(1649, 'Nograd', 99),
(1650, 'Pest', 99),
(1651, 'Somogy', 99),
(1652, 'Szabolcs-Szatmar-Bereg', 99),
(1653, 'Tolna', 99),
(1654, 'Vas', 99),
(1655, 'Veszprem', 99),
(1656, 'Zala', 99),
(1657, 'Austurland', 100),
(1658, 'Gullbringusysla', 100),
(1659, 'Hofu borgarsva i', 100),
(1660, 'Nor urland eystra', 100),
(1661, 'Nor urland vestra', 100),
(1662, 'Su urland', 100),
(1663, 'Su urnes', 100),
(1664, 'Vestfir ir', 100),
(1665, 'Vesturland', 100),
(1666, 'Aceh', 102),
(1667, 'Bali', 102),
(1668, 'Bangka-Belitung', 102),
(1669, 'Banten', 102),
(1670, 'Bengkulu', 102),
(1671, 'Gandaria', 102),
(1672, 'Gorontalo', 102),
(1673, 'Jakarta', 102),
(1674, 'Jambi', 102),
(1675, 'Jawa Barat', 102),
(1676, 'Jawa Tengah', 102),
(1677, 'Jawa Timur', 102),
(1678, 'Kalimantan Barat', 102),
(1679, 'Kalimantan Selatan', 102),
(1680, 'Kalimantan Tengah', 102),
(1681, 'Kalimantan Timur', 102),
(1682, 'Kendal', 102),
(1683, 'Lampung', 102),
(1684, 'Maluku', 102),
(1685, 'Maluku Utara', 102),
(1686, 'Nusa Tenggara Barat', 102),
(1687, 'Nusa Tenggara Timur', 102),
(1688, 'Papua', 102),
(1689, 'Riau', 102),
(1690, 'Riau Kepulauan', 102),
(1691, 'Solo', 102),
(1692, 'Sulawesi Selatan', 102),
(1693, 'Sulawesi Tengah', 102),
(1694, 'Sulawesi Tenggara', 102),
(1695, 'Sulawesi Utara', 102),
(1696, 'Sumatera Barat', 102),
(1697, 'Sumatera Selatan', 102),
(1698, 'Sumatera Utara', 102),
(1699, 'Yogyakarta', 102),
(1700, 'Ardabil', 103),
(1701, 'Azarbayjan-e Bakhtari', 103),
(1702, 'Azarbayjan-e Khavari', 103),
(1703, 'Bushehr', 103),
(1704, 'Chahar Mahal-e Bakhtiari', 103),
(1705, 'Esfahan', 103),
(1706, 'Fars', 103),
(1707, 'Gilan', 103),
(1708, 'Golestan', 103),
(1709, 'Hamadan', 103),
(1710, 'Hormozgan', 103),
(1711, 'Ilam', 103),
(1712, 'Kerman', 103),
(1713, 'Kermanshah', 103),
(1714, 'Khorasan', 103),
(1715, 'Khuzestan', 103),
(1716, 'Kohgiluyeh-e Boyerahmad', 103),
(1717, 'Kordestan', 103),
(1718, 'Lorestan', 103),
(1719, 'Markazi', 103),
(1720, 'Mazandaran', 103),
(1721, 'Ostan-e Esfahan', 103),
(1722, 'Qazvin', 103),
(1723, 'Qom', 103),
(1724, 'Semnan', 103),
(1725, 'Sistan-e Baluchestan', 103),
(1726, 'Tehran', 103),
(1727, 'Yazd', 103),
(1728, 'Zanjan', 103),
(1729, 'Babil', 104),
(1730, 'Baghdad', 104),
(1731, 'Dahuk', 104),
(1732, 'Dhi Qar', 104),
(1733, 'Diyala', 104),
(1734, 'Erbil', 104),
(1735, 'Irbil', 104),
(1736, 'Karbala', 104),
(1737, 'Kurdistan', 104),
(1738, 'Maysan', 104),
(1739, 'Ninawa', 104),
(1740, 'Salah-ad-Din', 104),
(1741, 'Wasit', 104),
(1742, 'al-Anbar', 104),
(1743, 'al-Basrah', 104),
(1744, 'al-Muthanna', 104),
(1745, 'al-Qadisiyah', 104),
(1746, 'an-Najaf', 104),
(1747, 'as-Sulaymaniyah', 104),
(1748, 'at-Ta\'mim', 104),
(1749, 'Armagh', 105),
(1750, 'Carlow', 105),
(1751, 'Cavan', 105),
(1752, 'Clare', 105),
(1753, 'Cork', 105),
(1754, 'Donegal', 105),
(1755, 'Dublin', 105),
(1756, 'Galway', 105),
(1757, 'Kerry', 105),
(1758, 'Kildare', 105),
(1759, 'Kilkenny', 105),
(1760, 'Laois', 105),
(1761, 'Leinster', 105),
(1762, 'Leitrim', 105),
(1763, 'Limerick', 105),
(1764, 'Loch Garman', 105),
(1765, 'Longford', 105),
(1766, 'Louth', 105),
(1767, 'Mayo', 105),
(1768, 'Meath', 105),
(1769, 'Monaghan', 105),
(1770, 'Offaly', 105),
(1771, 'Roscommon', 105),
(1772, 'Sligo', 105),
(1773, 'Tipperary North Riding', 105),
(1774, 'Tipperary South Riding', 105),
(1775, 'Ulster', 105),
(1776, 'Waterford', 105),
(1777, 'Westmeath', 105),
(1778, 'Wexford', 105),
(1779, 'Wicklow', 105),
(1780, 'Beit Hanania', 106),
(1781, 'Ben Gurion Airport', 106),
(1782, 'Bethlehem', 106),
(1783, 'Caesarea', 106),
(1784, 'Centre', 106),
(1785, 'Gaza', 106),
(1786, 'Hadaron', 106),
(1787, 'Haifa District', 106),
(1788, 'Hamerkaz', 106),
(1789, 'Hazafon', 106),
(1790, 'Hebron', 106),
(1791, 'Jaffa', 106),
(1792, 'Jerusalem', 106),
(1793, 'Khefa', 106),
(1794, 'Kiryat Yam', 106),
(1795, 'Lower Galilee', 106),
(1796, 'Qalqilya', 106),
(1797, 'Talme Elazar', 106),
(1798, 'Tel Aviv', 106),
(1799, 'Tsafon', 106),
(1800, 'Umm El Fahem', 106),
(1801, 'Yerushalayim', 106),
(1802, 'Abruzzi', 107),
(1803, 'Abruzzo', 107),
(1804, 'Agrigento', 107),
(1805, 'Alessandria', 107),
(1806, 'Ancona', 107),
(1807, 'Arezzo', 107),
(1808, 'Ascoli Piceno', 107),
(1809, 'Asti', 107),
(1810, 'Avellino', 107),
(1811, 'Bari', 107),
(1812, 'Basilicata', 107),
(1813, 'Belluno', 107),
(1814, 'Benevento', 107),
(1815, 'Bergamo', 107),
(1816, 'Biella', 107),
(1817, 'Bologna', 107),
(1818, 'Bolzano', 107),
(1819, 'Brescia', 107),
(1820, 'Brindisi', 107),
(1821, 'Calabria', 107),
(1822, 'Campania', 107),
(1823, 'Cartoceto', 107),
(1824, 'Caserta', 107),
(1825, 'Catania', 107),
(1826, 'Chieti', 107),
(1827, 'Como', 107),
(1828, 'Cosenza', 107),
(1829, 'Cremona', 107),
(1830, 'Cuneo', 107),
(1831, 'Emilia-Romagna', 107),
(1832, 'Ferrara', 107),
(1833, 'Firenze', 107),
(1834, 'Florence', 107),
(1835, 'Forli-Cesena ', 107),
(1836, 'Friuli-Venezia Giulia', 107),
(1837, 'Frosinone', 107),
(1838, 'Genoa', 107),
(1839, 'Gorizia', 107),
(1840, 'L\'Aquila', 107),
(1841, 'Lazio', 107),
(1842, 'Lecce', 107),
(1843, 'Lecco', 107),
(1845, 'Liguria', 107),
(1846, 'Lodi', 107),
(1847, 'Lombardia', 107),
(1848, 'Lombardy', 107),
(1849, 'Macerata', 107),
(1850, 'Mantova', 107),
(1851, 'Marche', 107),
(1852, 'Messina', 107),
(1853, 'Milan', 107),
(1854, 'Modena', 107),
(1855, 'Molise', 107),
(1856, 'Molteno', 107),
(1857, 'Montenegro', 107),
(1858, 'Monza and Brianza', 107),
(1859, 'Naples', 107),
(1860, 'Novara', 107),
(1861, 'Padova', 107),
(1862, 'Parma', 107),
(1863, 'Pavia', 107),
(1864, 'Perugia', 107),
(1865, 'Pesaro-Urbino', 107),
(1866, 'Piacenza', 107),
(1867, 'Piedmont', 107),
(1868, 'Piemonte', 107),
(1869, 'Pisa', 107),
(1870, 'Pordenone', 107),
(1871, 'Potenza', 107),
(1872, 'Puglia', 107),
(1873, 'Reggio Emilia', 107),
(1874, 'Rimini', 107),
(1875, 'Roma', 107),
(1876, 'Salerno', 107),
(1877, 'Sardegna', 107),
(1878, 'Sassari', 107),
(1879, 'Savona', 107),
(1880, 'Sicilia', 107),
(1881, 'Siena', 107),
(1882, 'Sondrio', 107),
(1883, 'South Tyrol', 107),
(1884, 'Taranto', 107),
(1885, 'Teramo', 107),
(1886, 'Torino', 107),
(1887, 'Toscana', 107),
(1888, 'Trapani', 107),
(1889, 'Trentino-Alto Adige', 107),
(1890, 'Trento', 107),
(1891, 'Treviso', 107),
(1892, 'Udine', 107),
(1893, 'Umbria', 107),
(1894, 'Valle d\'Aosta', 107),
(1895, 'Varese', 107),
(1896, 'Veneto', 107),
(1897, 'Venezia', 107),
(1898, 'Verbano-Cusio-Ossola', 107),
(1899, 'Vercelli', 107),
(1900, 'Verona', 107),
(1901, 'Vicenza', 107),
(1902, 'Viterbo', 107),
(1903, 'Buxoro Viloyati', 108),
(1904, 'Clarendon', 108),
(1905, 'Hanover', 108),
(1906, 'Kingston', 108),
(1907, 'Manchester', 108),
(1908, 'Portland', 108),
(1909, 'Saint Andrews', 108),
(1910, 'Saint Ann', 108),
(1911, 'Saint Catherine', 108),
(1912, 'Saint Elizabeth', 108),
(1913, 'Saint James', 108),
(1914, 'Saint Mary', 108),
(1915, 'Saint Thomas', 108),
(1916, 'Trelawney', 108),
(1917, 'Westmoreland', 108),
(1918, 'Aichi', 109),
(1919, 'Akita', 109),
(1920, 'Aomori', 109),
(1921, 'Chiba', 109),
(1922, 'Ehime', 109),
(1923, 'Fukui', 109),
(1924, 'Fukuoka', 109),
(1925, 'Fukushima', 109),
(1926, 'Gifu', 109),
(1927, 'Gumma', 109),
(1928, 'Hiroshima', 109),
(1929, 'Hokkaido', 109),
(1930, 'Hyogo', 109),
(1931, 'Ibaraki', 109),
(1932, 'Ishikawa', 109),
(1933, 'Iwate', 109),
(1934, 'Kagawa', 109),
(1935, 'Kagoshima', 109),
(1936, 'Kanagawa', 109),
(1937, 'Kanto', 109),
(1938, 'Kochi', 109),
(1939, 'Kumamoto', 109),
(1940, 'Kyoto', 109),
(1941, 'Mie', 109),
(1942, 'Miyagi', 109),
(1943, 'Miyazaki', 109),
(1944, 'Nagano', 109),
(1945, 'Nagasaki', 109),
(1946, 'Nara', 109),
(1947, 'Niigata', 109),
(1948, 'Oita', 109),
(1949, 'Okayama', 109),
(1950, 'Okinawa', 109),
(1951, 'Osaka', 109),
(1952, 'Saga', 109),
(1953, 'Saitama', 109),
(1954, 'Shiga', 109),
(1955, 'Shimane', 109),
(1956, 'Shizuoka', 109),
(1957, 'Tochigi', 109),
(1958, 'Tokushima', 109),
(1959, 'Tokyo', 109),
(1960, 'Tottori', 109),
(1961, 'Toyama', 109),
(1962, 'Wakayama', 109),
(1963, 'Yamagata', 109),
(1964, 'Yamaguchi', 109),
(1965, 'Yamanashi', 109),
(1966, 'Grouville', 110),
(1967, 'Saint Brelade', 110),
(1968, 'Saint Clement', 110),
(1969, 'Saint Helier', 110),
(1970, 'Saint John', 110),
(1971, 'Saint Lawrence', 110),
(1972, 'Saint Martin', 110),
(1973, 'Saint Mary', 110),
(1974, 'Saint Peter', 110),
(1975, 'Saint Saviour', 110),
(1976, 'Trinity', 110),
(1977, '\'Ajlun', 111),
(1978, 'Amman', 111),
(1979, 'Irbid', 111),
(1980, 'Jarash', 111),
(1981, 'Ma\'an', 111),
(1982, 'Madaba', 111),
(1983, 'al-\'Aqabah', 111),
(1984, 'al-Balqa\'', 111),
(1985, 'al-Karak', 111),
(1986, 'al-Mafraq', 111),
(1987, 'at-Tafilah', 111),
(1988, 'az-Zarqa\'', 111),
(1989, 'Akmecet', 112),
(1990, 'Akmola', 112),
(1991, 'Aktobe', 112),
(1992, 'Almati', 112),
(1993, 'Atirau', 112),
(1994, 'Batis Kazakstan', 112),
(1995, 'Burlinsky Region', 112),
(1996, 'Karagandi', 112),
(1997, 'Kostanay', 112),
(1998, 'Mankistau', 112),
(1999, 'Ontustik Kazakstan', 112),
(2000, 'Pavlodar', 112),
(2001, 'Sigis Kazakstan', 112),
(2002, 'Soltustik Kazakstan', 112),
(2003, 'Taraz', 112),
(2004, 'Central', 113),
(2005, 'Coast', 113),
(2006, 'Eastern', 113),
(2007, 'Nairobi', 113),
(2008, 'North Eastern', 113),
(2009, 'Nyanza', 113),
(2010, 'Rift Valley', 113),
(2011, 'Western', 113),
(2012, 'Abaiang', 114),
(2013, 'Abemana', 114),
(2014, 'Aranuka', 114),
(2015, 'Arorae', 114),
(2016, 'Banaba', 114),
(2017, 'Beru', 114),
(2018, 'Butaritari', 114),
(2019, 'Kiritimati', 114),
(2020, 'Kuria', 114),
(2021, 'Maiana', 114),
(2022, 'Makin', 114),
(2023, 'Marakei', 114),
(2024, 'Nikunau', 114),
(2025, 'Nonouti', 114),
(2026, 'Onotoa', 114),
(2027, 'Phoenix Islands', 114),
(2028, 'Tabiteuea North', 114),
(2029, 'Tabiteuea South', 114),
(2030, 'Tabuaeran', 114),
(2031, 'Tamana', 114),
(2032, 'Tarawa North', 114),
(2033, 'Tarawa South', 114),
(2034, 'Teraina', 114),
(2035, 'Chagangdo', 115),
(2036, 'Hamgyeongbukto', 115),
(2037, 'Hamgyeongnamdo', 115),
(2038, 'Hwanghaebukto', 115),
(2039, 'Hwanghaenamdo', 115),
(2040, 'Kaeseong', 115),
(2041, 'Kangweon', 115),
(2042, 'Nampo', 115),
(2043, 'Pyeonganbukto', 115),
(2044, 'Pyeongannamdo', 115),
(2045, 'Pyeongyang', 115),
(2046, 'Yanggang', 115),
(2047, 'Busan', 116),
(2048, 'Cheju', 116),
(2049, 'Chollabuk', 116),
(2050, 'Chollanam', 116),
(2051, 'Chungbuk', 116),
(2052, 'Chungcheongbuk', 116),
(2053, 'Chungcheongnam', 116),
(2054, 'Chungnam', 116),
(2055, 'Daegu', 116),
(2056, 'Gangwon-do', 116),
(2057, 'Goyang-si', 116),
(2058, 'Gyeonggi-do', 116),
(2059, 'Gyeongsang ', 116),
(2060, 'Gyeongsangnam-do', 116),
(2061, 'Incheon', 116),
(2062, 'Jeju-Si', 116),
(2063, 'Jeonbuk', 116),
(2064, 'Kangweon', 116),
(2065, 'Kwangju', 116),
(2066, 'Kyeonggi', 116),
(2067, 'Kyeongsangbuk', 116),
(2068, 'Kyeongsangnam', 116),
(2069, 'Kyonggi-do', 116),
(2070, 'Kyungbuk-Do', 116),
(2071, 'Kyunggi-Do', 116),
(2072, 'Kyunggi-do', 116),
(2073, 'Pusan', 116),
(2074, 'Seoul', 116),
(2075, 'Sudogwon', 116),
(2076, 'Taegu', 116),
(2077, 'Taejeon', 116),
(2078, 'Taejon-gwangyoksi', 116),
(2079, 'Ulsan', 116),
(2080, 'Wonju', 116),
(2081, 'gwangyoksi', 116),
(2082, 'Al Asimah', 117),
(2083, 'Hawalli', 117),
(2084, 'Mishref', 117),
(2085, 'Qadesiya', 117),
(2086, 'Safat', 117),
(2087, 'Salmiya', 117),
(2088, 'al-Ahmadi', 117),
(2089, 'al-Farwaniyah', 117),
(2090, 'al-Jahra', 117),
(2091, 'al-Kuwayt', 117),
(2092, 'Batken', 118),
(2093, 'Bishkek', 118),
(2094, 'Chui', 118),
(2095, 'Issyk-Kul', 118),
(2096, 'Jalal-Abad', 118),
(2097, 'Naryn', 118),
(2098, 'Osh', 118),
(2099, 'Talas', 118),
(2100, 'Attopu', 119),
(2101, 'Bokeo', 119),
(2102, 'Bolikhamsay', 119),
(2103, 'Champasak', 119),
(2104, 'Houaphanh', 119),
(2105, 'Khammouane', 119),
(2106, 'Luang Nam Tha', 119),
(2107, 'Luang Prabang', 119),
(2108, 'Oudomxay', 119),
(2109, 'Phongsaly', 119),
(2110, 'Saravan', 119),
(2111, 'Savannakhet', 119),
(2112, 'Sekong', 119),
(2113, 'Viangchan Prefecture', 119),
(2114, 'Viangchan Province', 119),
(2115, 'Xaignabury', 119),
(2116, 'Xiang Khuang', 119),
(2117, 'Aizkraukles', 120),
(2118, 'Aluksnes', 120),
(2119, 'Balvu', 120),
(2120, 'Bauskas', 120),
(2121, 'Cesu', 120),
(2122, 'Daugavpils', 120),
(2123, 'Daugavpils City', 120),
(2124, 'Dobeles', 120),
(2125, 'Gulbenes', 120),
(2126, 'Jekabspils', 120),
(2127, 'Jelgava', 120),
(2128, 'Jelgavas', 120),
(2129, 'Jurmala City', 120),
(2130, 'Kraslavas', 120),
(2131, 'Kuldigas', 120),
(2132, 'Liepaja', 120),
(2133, 'Liepajas', 120),
(2134, 'Limbazhu', 120),
(2135, 'Ludzas', 120),
(2136, 'Madonas', 120),
(2137, 'Ogres', 120),
(2138, 'Preilu', 120),
(2139, 'Rezekne', 120),
(2140, 'Rezeknes', 120),
(2141, 'Riga', 120),
(2142, 'Rigas', 120),
(2143, 'Saldus', 120),
(2144, 'Talsu', 120),
(2145, 'Tukuma', 120),
(2146, 'Valkas', 120),
(2147, 'Valmieras', 120),
(2148, 'Ventspils', 120),
(2149, 'Ventspils City', 120),
(2150, 'Beirut', 121),
(2151, 'Jabal Lubnan', 121),
(2152, 'Mohafazat Liban-Nord', 121),
(2153, 'Mohafazat Mont-Liban', 121),
(2154, 'Sidon', 121),
(2155, 'al-Biqa', 121),
(2156, 'al-Janub', 121),
(2157, 'an-Nabatiyah', 121),
(2158, 'ash-Shamal', 121),
(2159, 'Berea', 122),
(2160, 'Butha-Buthe', 122),
(2161, 'Leribe', 122),
(2162, 'Mafeteng', 122),
(2163, 'Maseru', 122),
(2164, 'Mohale\'s Hoek', 122),
(2165, 'Mokhotlong', 122),
(2166, 'Qacha\'s Nek', 122),
(2167, 'Quthing', 122),
(2168, 'Thaba-Tseka', 122),
(2169, 'Bomi', 123),
(2170, 'Bong', 123),
(2171, 'Grand Bassa', 123),
(2172, 'Grand Cape Mount', 123),
(2173, 'Grand Gedeh', 123),
(2174, 'Loffa', 123),
(2175, 'Margibi', 123),
(2176, 'Maryland and Grand Kru', 123),
(2177, 'Montserrado', 123),
(2178, 'Nimba', 123),
(2179, 'Rivercess', 123),
(2180, 'Sinoe', 123),
(2181, 'Ajdabiya', 124),
(2182, 'Fezzan', 124),
(2183, 'Banghazi', 124),
(2184, 'Darnah', 124),
(2185, 'Ghadamis', 124),
(2186, 'Gharyan', 124),
(2187, 'Misratah', 124),
(2188, 'Murzuq', 124),
(2189, 'Sabha', 124),
(2190, 'Sawfajjin', 124),
(2191, 'Surt', 124),
(2192, 'Tarabulus', 124);
INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(2193, 'Tarhunah', 124),
(2194, 'Tripolitania', 124),
(2195, 'Tubruq', 124),
(2196, 'Yafran', 124),
(2197, 'Zlitan', 124),
(2198, 'al-\'Aziziyah', 124),
(2199, 'al-Fatih', 124),
(2200, 'al-Jabal al Akhdar', 124),
(2201, 'al-Jufrah', 124),
(2202, 'al-Khums', 124),
(2203, 'al-Kufrah', 124),
(2204, 'an-Nuqat al-Khams', 124),
(2205, 'ash-Shati\'', 124),
(2206, 'az-Zawiyah', 124),
(2207, 'Balzers', 125),
(2208, 'Eschen', 125),
(2209, 'Gamprin', 125),
(2210, 'Mauren', 125),
(2211, 'Planken', 125),
(2212, 'Ruggell', 125),
(2213, 'Schaan', 125),
(2214, 'Schellenberg', 125),
(2215, 'Triesen', 125),
(2216, 'Triesenberg', 125),
(2217, 'Vaduz', 125),
(2218, 'Alytaus', 126),
(2219, 'Anyksciai', 126),
(2220, 'Kauno', 126),
(2221, 'Klaipedos', 126),
(2222, 'Marijampoles', 126),
(2223, 'Panevezhio', 126),
(2224, 'Panevezys', 126),
(2225, 'Shiauliu', 126),
(2226, 'Taurages', 126),
(2227, 'Telshiu', 126),
(2228, 'Telsiai', 126),
(2229, 'Utenos', 126),
(2230, 'Vilniaus', 126),
(2231, 'Capellen', 127),
(2232, 'Clervaux', 127),
(2233, 'Diekirch', 127),
(2234, 'Echternach', 127),
(2235, 'Esch-sur-Alzette', 127),
(2236, 'Grevenmacher', 127),
(2237, 'Luxembourg', 127),
(2238, 'Mersch', 127),
(2239, 'Redange', 127),
(2240, 'Remich', 127),
(2241, 'Vianden', 127),
(2242, 'Wiltz', 127),
(2243, 'Macau', 128),
(2244, 'Berovo', 129),
(2245, 'Bitola', 129),
(2246, 'Brod', 129),
(2247, 'Debar', 129),
(2248, 'Delchevo', 129),
(2249, 'Demir Hisar', 129),
(2250, 'Gevgelija', 129),
(2251, 'Gostivar', 129),
(2252, 'Kavadarci', 129),
(2253, 'Kichevo', 129),
(2254, 'Kochani', 129),
(2255, 'Kratovo', 129),
(2256, 'Kriva Palanka', 129),
(2257, 'Krushevo', 129),
(2258, 'Kumanovo', 129),
(2259, 'Negotino', 129),
(2260, 'Ohrid', 129),
(2261, 'Prilep', 129),
(2262, 'Probishtip', 129),
(2263, 'Radovish', 129),
(2264, 'Resen', 129),
(2265, 'Shtip', 129),
(2266, 'Skopje', 129),
(2267, 'Struga', 129),
(2268, 'Strumica', 129),
(2269, 'Sveti Nikole', 129),
(2270, 'Tetovo', 129),
(2271, 'Valandovo', 129),
(2272, 'Veles', 129),
(2273, 'Vinica', 129),
(2274, 'Antananarivo', 130),
(2275, 'Antsiranana', 130),
(2276, 'Fianarantsoa', 130),
(2277, 'Mahajanga', 130),
(2278, 'Toamasina', 130),
(2279, 'Toliary', 130),
(2280, 'Balaka', 131),
(2281, 'Blantyre City', 131),
(2282, 'Chikwawa', 131),
(2283, 'Chiradzulu', 131),
(2284, 'Chitipa', 131),
(2285, 'Dedza', 131),
(2286, 'Dowa', 131),
(2287, 'Karonga', 131),
(2288, 'Kasungu', 131),
(2289, 'Lilongwe City', 131),
(2290, 'Machinga', 131),
(2291, 'Mangochi', 131),
(2292, 'Mchinji', 131),
(2293, 'Mulanje', 131),
(2294, 'Mwanza', 131),
(2295, 'Mzimba', 131),
(2296, 'Mzuzu City', 131),
(2297, 'Nkhata Bay', 131),
(2298, 'Nkhotakota', 131),
(2299, 'Nsanje', 131),
(2300, 'Ntcheu', 131),
(2301, 'Ntchisi', 131),
(2302, 'Phalombe', 131),
(2303, 'Rumphi', 131),
(2304, 'Salima', 131),
(2305, 'Thyolo', 131),
(2306, 'Zomba Municipality', 131),
(2307, 'Johor', 132),
(2308, 'Kedah', 132),
(2309, 'Kelantan', 132),
(2310, 'Kuala Lumpur', 132),
(2311, 'Labuan', 132),
(2312, 'Melaka', 132),
(2313, 'Negeri Johor', 132),
(2314, 'Negeri Sembilan', 132),
(2315, 'Pahang', 132),
(2316, 'Penang', 132),
(2317, 'Perak', 132),
(2318, 'Perlis', 132),
(2319, 'Pulau Pinang', 132),
(2320, 'Sabah', 132),
(2321, 'Sarawak', 132),
(2322, 'Selangor', 132),
(2323, 'Sembilan', 132),
(2324, 'Terengganu', 132),
(2325, 'Alif Alif', 133),
(2326, 'Alif Dhaal', 133),
(2327, 'Baa', 133),
(2328, 'Dhaal', 133),
(2329, 'Faaf', 133),
(2330, 'Gaaf Alif', 133),
(2331, 'Gaaf Dhaal', 133),
(2332, 'Ghaviyani', 133),
(2333, 'Haa Alif', 133),
(2334, 'Haa Dhaal', 133),
(2335, 'Kaaf', 133),
(2336, 'Laam', 133),
(2337, 'Lhaviyani', 133),
(2338, 'Male', 133),
(2339, 'Miim', 133),
(2340, 'Nuun', 133),
(2341, 'Raa', 133),
(2342, 'Shaviyani', 133),
(2343, 'Siin', 133),
(2344, 'Thaa', 133),
(2345, 'Vaav', 133),
(2346, 'Bamako', 134),
(2347, 'Gao', 134),
(2348, 'Kayes', 134),
(2349, 'Kidal', 134),
(2350, 'Koulikoro', 134),
(2351, 'Mopti', 134),
(2352, 'Segou', 134),
(2353, 'Sikasso', 134),
(2354, 'Tombouctou', 134),
(2355, 'Gozo and Comino', 135),
(2356, 'Inner Harbour', 135),
(2357, 'Northern', 135),
(2358, 'Outer Harbour', 135),
(2359, 'South Eastern', 135),
(2360, 'Valletta', 135),
(2361, 'Western', 135),
(2362, 'Castletown', 136),
(2363, 'Douglas', 136),
(2364, 'Laxey', 136),
(2365, 'Onchan', 136),
(2366, 'Peel', 136),
(2367, 'Port Erin', 136),
(2368, 'Port Saint Mary', 136),
(2369, 'Ramsey', 136),
(2370, 'Ailinlaplap', 137),
(2371, 'Ailuk', 137),
(2372, 'Arno', 137),
(2373, 'Aur', 137),
(2374, 'Bikini', 137),
(2375, 'Ebon', 137),
(2376, 'Enewetak', 137),
(2377, 'Jabat', 137),
(2378, 'Jaluit', 137),
(2379, 'Kili', 137),
(2380, 'Kwajalein', 137),
(2381, 'Lae', 137),
(2382, 'Lib', 137),
(2383, 'Likiep', 137),
(2384, 'Majuro', 137),
(2385, 'Maloelap', 137),
(2386, 'Mejit', 137),
(2387, 'Mili', 137),
(2388, 'Namorik', 137),
(2389, 'Namu', 137),
(2390, 'Rongelap', 137),
(2391, 'Ujae', 137),
(2392, 'Utrik', 137),
(2393, 'Wotho', 137),
(2394, 'Wotje', 137),
(2395, 'Fort-de-France', 138),
(2396, 'La Trinite', 138),
(2397, 'Le Marin', 138),
(2398, 'Saint-Pierre', 138),
(2399, 'Adrar', 139),
(2400, 'Assaba', 139),
(2401, 'Brakna', 139),
(2402, 'Dhakhlat Nawadibu', 139),
(2403, 'Hudh-al-Gharbi', 139),
(2404, 'Hudh-ash-Sharqi', 139),
(2405, 'Inshiri', 139),
(2406, 'Nawakshut', 139),
(2407, 'Qidimagha', 139),
(2408, 'Qurqul', 139),
(2409, 'Taqant', 139),
(2410, 'Tiris Zammur', 139),
(2411, 'Trarza', 139),
(2412, 'Black River', 140),
(2413, 'Eau Coulee', 140),
(2414, 'Flacq', 140),
(2415, 'Floreal', 140),
(2416, 'Grand Port', 140),
(2417, 'Moka', 140),
(2418, 'Pamplempousses', 140),
(2419, 'Plaines Wilhelm', 140),
(2420, 'Port Louis', 140),
(2421, 'Riviere du Rempart', 140),
(2422, 'Rodrigues', 140),
(2423, 'Rose Hill', 140),
(2424, 'Savanne', 140),
(2425, 'Mayotte', 141),
(2426, 'Pamanzi', 141),
(2427, 'Aguascalientes', 142),
(2428, 'Baja California', 142),
(2429, 'Baja California Sur', 142),
(2430, 'Campeche', 142),
(2431, 'Chiapas', 142),
(2432, 'Chihuahua', 142),
(2433, 'Coahuila', 142),
(2434, 'Colima', 142),
(2435, 'Distrito Federal', 142),
(2436, 'Durango', 142),
(2437, 'Estado de Mexico', 142),
(2438, 'Guanajuato', 142),
(2439, 'Guerrero', 142),
(2440, 'Hidalgo', 142),
(2441, 'Jalisco', 142),
(2442, 'Mexico', 142),
(2443, 'Michoacan', 142),
(2444, 'Morelos', 142),
(2445, 'Nayarit', 142),
(2446, 'Nuevo Leon', 142),
(2447, 'Oaxaca', 142),
(2448, 'Puebla', 142),
(2449, 'Queretaro', 142),
(2450, 'Quintana Roo', 142),
(2451, 'San Luis Potosi', 142),
(2452, 'Sinaloa', 142),
(2453, 'Sonora', 142),
(2454, 'Tabasco', 142),
(2455, 'Tamaulipas', 142),
(2456, 'Tlaxcala', 142),
(2457, 'Veracruz', 142),
(2458, 'Yucatan', 142),
(2459, 'Zacatecas', 142),
(2460, 'Chuuk', 143),
(2461, 'Kusaie', 143),
(2462, 'Pohnpei', 143),
(2463, 'Yap', 143),
(2464, 'Balti', 144),
(2465, 'Cahul', 144),
(2466, 'Chisinau', 144),
(2467, 'Chisinau Oras', 144),
(2468, 'Edinet', 144),
(2469, 'Gagauzia', 144),
(2470, 'Lapusna', 144),
(2471, 'Orhei', 144),
(2472, 'Soroca', 144),
(2473, 'Taraclia', 144),
(2474, 'Tighina', 144),
(2475, 'Transnistria', 144),
(2476, 'Ungheni', 144),
(2477, 'Fontvieille', 145),
(2478, 'La Condamine', 145),
(2479, 'Monaco-Ville', 145),
(2480, 'Monte Carlo', 145),
(2481, 'Arhangaj', 146),
(2482, 'Bajan-Olgij', 146),
(2483, 'Bajanhongor', 146),
(2484, 'Bulgan', 146),
(2485, 'Darhan-Uul', 146),
(2486, 'Dornod', 146),
(2487, 'Dornogovi', 146),
(2488, 'Dundgovi', 146),
(2489, 'Govi-Altaj', 146),
(2490, 'Govisumber', 146),
(2491, 'Hentij', 146),
(2492, 'Hovd', 146),
(2493, 'Hovsgol', 146),
(2494, 'Omnogovi', 146),
(2495, 'Orhon', 146),
(2496, 'Ovorhangaj', 146),
(2497, 'Selenge', 146),
(2498, 'Suhbaatar', 146),
(2499, 'Tov', 146),
(2500, 'Ulaanbaatar', 146),
(2501, 'Uvs', 146),
(2502, 'Zavhan', 146),
(2503, 'Montserrat', 147),
(2504, 'Agadir', 148),
(2505, 'Casablanca', 148),
(2506, 'Chaouia-Ouardigha', 148),
(2507, 'Doukkala-Abda', 148),
(2508, 'Fes-Boulemane', 148),
(2509, 'Gharb-Chrarda-Beni Hssen', 148),
(2510, 'Guelmim', 148),
(2511, 'Kenitra', 148),
(2512, 'Marrakech-Tensift-Al Haouz', 148),
(2513, 'Meknes-Tafilalet', 148),
(2514, 'Oriental', 148),
(2515, 'Oujda', 148),
(2516, 'Province de Tanger', 148),
(2517, 'Rabat-Sale-Zammour-Zaer', 148),
(2518, 'Sala Al Jadida', 148),
(2519, 'Settat', 148),
(2520, 'Souss Massa-Draa', 148),
(2521, 'Tadla-Azilal', 148),
(2522, 'Tangier-Tetouan', 148),
(2523, 'Taza-Al Hoceima-Taounate', 148),
(2524, 'Wilaya de Casablanca', 148),
(2525, 'Wilaya de Rabat-Sale', 148),
(2526, 'Cabo Delgado', 149),
(2527, 'Gaza', 149),
(2528, 'Inhambane', 149),
(2529, 'Manica', 149),
(2530, 'Maputo', 149),
(2531, 'Maputo Provincia', 149),
(2532, 'Nampula', 149),
(2533, 'Niassa', 149),
(2534, 'Sofala', 149),
(2535, 'Tete', 149),
(2536, 'Zambezia', 149),
(2537, 'Ayeyarwady', 150),
(2538, 'Bago', 150),
(2539, 'Chin', 150),
(2540, 'Kachin', 150),
(2541, 'Kayah', 150),
(2542, 'Kayin', 150),
(2543, 'Magway', 150),
(2544, 'Mandalay', 150),
(2545, 'Mon', 150),
(2546, 'Nay Pyi Taw', 150),
(2547, 'Rakhine', 150),
(2548, 'Sagaing', 150),
(2549, 'Shan', 150),
(2550, 'Tanintharyi', 150),
(2551, 'Yangon', 150),
(2552, 'Caprivi', 151),
(2553, 'Erongo', 151),
(2554, 'Hardap', 151),
(2555, 'Karas', 151),
(2556, 'Kavango', 151),
(2557, 'Khomas', 151),
(2558, 'Kunene', 151),
(2559, 'Ohangwena', 151),
(2560, 'Omaheke', 151),
(2561, 'Omusati', 151),
(2562, 'Oshana', 151),
(2563, 'Oshikoto', 151),
(2564, 'Otjozondjupa', 151),
(2565, 'Yaren', 152),
(2566, 'Bagmati', 153),
(2567, 'Bheri', 153),
(2568, 'Dhawalagiri', 153),
(2569, 'Gandaki', 153),
(2570, 'Janakpur', 153),
(2571, 'Karnali', 153),
(2572, 'Koshi', 153),
(2573, 'Lumbini', 153),
(2574, 'Mahakali', 153),
(2575, 'Mechi', 153),
(2576, 'Narayani', 153),
(2577, 'Rapti', 153),
(2578, 'Sagarmatha', 153),
(2579, 'Seti', 153),
(2580, 'Bonaire', 154),
(2581, 'Curacao', 154),
(2582, 'Saba', 154),
(2583, 'Sint Eustatius', 154),
(2584, 'Sint Maarten', 154),
(2585, 'Amsterdam', 155),
(2586, 'Benelux', 155),
(2587, 'Drenthe', 155),
(2588, 'Flevoland', 155),
(2589, 'Friesland', 155),
(2590, 'Gelderland', 155),
(2591, 'Groningen', 155),
(2592, 'Limburg', 155),
(2593, 'Noord-Brabant', 155),
(2594, 'Noord-Holland', 155),
(2595, 'Overijssel', 155),
(2596, 'South Holland', 155),
(2597, 'Utrecht', 155),
(2598, 'Zeeland', 155),
(2599, 'Zuid-Holland', 155),
(2600, 'Iles', 156),
(2601, 'Nord', 156),
(2602, 'Sud', 156),
(2603, 'Area Outside Region', 157),
(2604, 'Auckland', 157),
(2605, 'Bay of Plenty', 157),
(2606, 'Canterbury', 157),
(2607, 'Christchurch', 157),
(2608, 'Gisborne', 157),
(2609, 'Hawke\'s Bay', 157),
(2610, 'Manawatu-Wanganui', 157),
(2611, 'Marlborough', 157),
(2612, 'Nelson', 157),
(2613, 'Northland', 157),
(2614, 'Otago', 157),
(2615, 'Rodney', 157),
(2616, 'Southland', 157),
(2617, 'Taranaki', 157),
(2618, 'Tasman', 157),
(2619, 'Waikato', 157),
(2620, 'Wellington', 157),
(2621, 'West Coast', 157),
(2622, 'Atlantico Norte', 158),
(2623, 'Atlantico Sur', 158),
(2624, 'Boaco', 158),
(2625, 'Carazo', 158),
(2626, 'Chinandega', 158),
(2627, 'Chontales', 158),
(2628, 'Esteli', 158),
(2629, 'Granada', 158),
(2630, 'Jinotega', 158),
(2631, 'Leon', 158),
(2632, 'Madriz', 158),
(2633, 'Managua', 158),
(2634, 'Masaya', 158),
(2635, 'Matagalpa', 158),
(2636, 'Nueva Segovia', 158),
(2637, 'Rio San Juan', 158),
(2638, 'Rivas', 158),
(2639, 'Agadez', 159),
(2640, 'Diffa', 159),
(2641, 'Dosso', 159),
(2642, 'Maradi', 159),
(2643, 'Niamey', 159),
(2644, 'Tahoua', 159),
(2645, 'Tillabery', 159),
(2646, 'Zinder', 159),
(2647, 'Abia', 160),
(2648, 'Abuja Federal Capital Territor', 160),
(2649, 'Adamawa', 160),
(2650, 'Akwa Ibom', 160),
(2651, 'Anambra', 160),
(2652, 'Bauchi', 160),
(2653, 'Bayelsa', 160),
(2654, 'Benue', 160),
(2655, 'Borno', 160),
(2656, 'Cross River', 160),
(2657, 'Delta', 160),
(2658, 'Ebonyi', 160),
(2659, 'Edo', 160),
(2660, 'Ekiti', 160),
(2661, 'Enugu', 160),
(2662, 'Gombe', 160),
(2663, 'Imo', 160),
(2664, 'Jigawa', 160),
(2665, 'Kaduna', 160),
(2666, 'Kano', 160),
(2667, 'Katsina', 160),
(2668, 'Kebbi', 160),
(2669, 'Kogi', 160),
(2670, 'Kwara', 160),
(2671, 'Lagos', 160),
(2672, 'Nassarawa', 160),
(2673, 'Niger', 160),
(2674, 'Ogun', 160),
(2675, 'Ondo', 160),
(2676, 'Osun', 160),
(2677, 'Oyo', 160),
(2678, 'Plateau', 160),
(2679, 'Rivers', 160),
(2680, 'Sokoto', 160),
(2681, 'Taraba', 160),
(2682, 'Yobe', 160),
(2683, 'Zamfara', 160),
(2684, 'Niue', 161),
(2685, 'Norfolk Island', 162),
(2686, 'Northern Islands', 163),
(2687, 'Rota', 163),
(2688, 'Saipan', 163),
(2689, 'Tinian', 163),
(2690, 'Akershus', 164),
(2691, 'Aust Agder', 164),
(2692, 'Bergen', 164),
(2693, 'Buskerud', 164),
(2694, 'Finnmark', 164),
(2695, 'Hedmark', 164),
(2696, 'Hordaland', 164),
(2697, 'Moere og Romsdal', 164),
(2698, 'Nord Trondelag', 164),
(2699, 'Nordland', 164),
(2700, 'Oestfold', 164),
(2701, 'Oppland', 164),
(2702, 'Oslo', 164),
(2703, 'Rogaland', 164),
(2704, 'Soer Troendelag', 164),
(2705, 'Sogn og Fjordane', 164),
(2706, 'Stavern', 164),
(2707, 'Sykkylven', 164),
(2708, 'Telemark', 164),
(2709, 'Troms', 164),
(2710, 'Vest Agder', 164),
(2711, 'Vestfold', 164),
(2712, 'ÃƒÂ˜stfold', 164),
(2713, 'Al Buraimi', 165),
(2714, 'Dhufar', 165),
(2715, 'Masqat', 165),
(2716, 'Musandam', 165),
(2717, 'Rusayl', 165),
(2718, 'Wadi Kabir', 165),
(2719, 'ad-Dakhiliyah', 165),
(2720, 'adh-Dhahirah', 165),
(2721, 'al-Batinah', 165),
(2722, 'ash-Sharqiyah', 165),
(2723, 'Baluchistan', 166),
(2724, 'Federal Capital Area', 166),
(2725, 'Federally administered Tribal ', 166),
(2726, 'North-West Frontier', 166),
(2727, 'Northern Areas', 166),
(2728, 'Punjab', 166),
(2729, 'Sind', 166),
(2730, 'Aimeliik', 167),
(2731, 'Airai', 167),
(2732, 'Angaur', 167),
(2733, 'Hatobohei', 167),
(2734, 'Kayangel', 167),
(2735, 'Koror', 167),
(2736, 'Melekeok', 167),
(2737, 'Ngaraard', 167),
(2738, 'Ngardmau', 167),
(2739, 'Ngaremlengui', 167),
(2740, 'Ngatpang', 167),
(2741, 'Ngchesar', 167),
(2742, 'Ngerchelong', 167),
(2743, 'Ngiwal', 167),
(2744, 'Peleliu', 167),
(2745, 'Sonsorol', 167),
(2746, 'Ariha', 168),
(2747, 'Bayt Lahm', 168),
(2748, 'Bethlehem', 168),
(2749, 'Dayr-al-Balah', 168),
(2750, 'Ghazzah', 168),
(2751, 'Ghazzah ash-Shamaliyah', 168),
(2752, 'Janin', 168),
(2753, 'Khan Yunis', 168),
(2754, 'Nabulus', 168),
(2755, 'Qalqilyah', 168),
(2756, 'Rafah', 168),
(2757, 'Ram Allah wal-Birah', 168),
(2758, 'Salfit', 168),
(2759, 'Tubas', 168),
(2760, 'Tulkarm', 168),
(2761, 'al-Khalil', 168),
(2762, 'al-Quds', 168),
(2763, 'Bocas del Toro', 169),
(2764, 'Chiriqui', 169),
(2765, 'Cocle', 169),
(2766, 'Colon', 169),
(2767, 'Darien', 169),
(2768, 'Embera', 169),
(2769, 'Herrera', 169),
(2770, 'Kuna Yala', 169),
(2771, 'Los Santos', 169),
(2772, 'Ngobe Bugle', 169),
(2773, 'Panama', 169),
(2774, 'Veraguas', 169),
(2775, 'East New Britain', 170),
(2776, 'East Sepik', 170),
(2777, 'Eastern Highlands', 170),
(2778, 'Enga', 170),
(2779, 'Fly River', 170),
(2780, 'Gulf', 170),
(2781, 'Madang', 170),
(2782, 'Manus', 170),
(2783, 'Milne Bay', 170),
(2784, 'Morobe', 170),
(2785, 'National Capital District', 170),
(2786, 'New Ireland', 170),
(2787, 'North Solomons', 170),
(2788, 'Oro', 170),
(2789, 'Sandaun', 170),
(2790, 'Simbu', 170),
(2791, 'Southern Highlands', 170),
(2792, 'West New Britain', 170),
(2793, 'Western Highlands', 170),
(2794, 'Alto Paraguay', 171),
(2795, 'Alto Parana', 171),
(2796, 'Amambay', 171),
(2797, 'Asuncion', 171),
(2798, 'Boqueron', 171),
(2799, 'Caaguazu', 171),
(2800, 'Caazapa', 171),
(2801, 'Canendiyu', 171),
(2802, 'Central', 171),
(2803, 'Concepcion', 171),
(2804, 'Cordillera', 171),
(2805, 'Guaira', 171),
(2806, 'Itapua', 171),
(2807, 'Misiones', 171),
(2808, 'Neembucu', 171),
(2809, 'Paraguari', 171),
(2810, 'Presidente Hayes', 171),
(2811, 'San Pedro', 171),
(2812, 'Amazonas', 172),
(2813, 'Ancash', 172),
(2814, 'Apurimac', 172),
(2815, 'Arequipa', 172),
(2816, 'Ayacucho', 172),
(2817, 'Cajamarca', 172),
(2818, 'Cusco', 172),
(2819, 'Huancavelica', 172),
(2820, 'Huanuco', 172),
(2821, 'Ica', 172),
(2822, 'Junin', 172),
(2823, 'La Libertad', 172),
(2824, 'Lambayeque', 172),
(2825, 'Lima y Callao', 172),
(2826, 'Loreto', 172),
(2827, 'Madre de Dios', 172),
(2828, 'Moquegua', 172),
(2829, 'Pasco', 172),
(2830, 'Piura', 172),
(2831, 'Puno', 172),
(2832, 'San Martin', 172),
(2833, 'Tacna', 172),
(2834, 'Tumbes', 172),
(2835, 'Ucayali', 172),
(2836, 'Batangas', 173),
(2837, 'Bicol', 173),
(2838, 'Bulacan', 173),
(2839, 'Cagayan', 173),
(2840, 'Caraga', 173),
(2841, 'Central Luzon', 173),
(2842, 'Central Mindanao', 173),
(2843, 'Central Visayas', 173),
(2844, 'Cordillera', 173),
(2845, 'Davao', 173),
(2846, 'Eastern Visayas', 173),
(2847, 'Greater Metropolitan Area', 173),
(2848, 'Ilocos', 173),
(2849, 'Laguna', 173),
(2850, 'Luzon', 173),
(2851, 'Mactan', 173),
(2852, 'Metropolitan Manila Area', 173),
(2853, 'Muslim Mindanao', 173),
(2854, 'Northern Mindanao', 173),
(2855, 'Southern Mindanao', 173),
(2856, 'Southern Tagalog', 173),
(2857, 'Western Mindanao', 173),
(2858, 'Western Visayas', 173),
(2859, 'Pitcairn Island', 174),
(2860, 'Biale Blota', 175),
(2861, 'Dobroszyce', 175),
(2862, 'Dolnoslaskie', 175),
(2863, 'Dziekanow Lesny', 175),
(2864, 'Hopowo', 175),
(2865, 'Kartuzy', 175),
(2866, 'Koscian', 175),
(2867, 'Krakow', 175),
(2868, 'Kujawsko-Pomorskie', 175),
(2869, 'Lodzkie', 175),
(2870, 'Lubelskie', 175),
(2871, 'Lubuskie', 175),
(2872, 'Malomice', 175),
(2873, 'Malopolskie', 175),
(2874, 'Mazowieckie', 175),
(2875, 'Mirkow', 175),
(2876, 'Opolskie', 175),
(2877, 'Ostrowiec', 175),
(2878, 'Podkarpackie', 175),
(2879, 'Podlaskie', 175),
(2880, 'Polska', 175),
(2881, 'Pomorskie', 175),
(2882, 'Poznan', 175),
(2883, 'Pruszkow', 175),
(2884, 'Rymanowska', 175),
(2885, 'Rzeszow', 175),
(2886, 'Slaskie', 175),
(2887, 'Stare Pole', 175),
(2888, 'Swietokrzyskie', 175),
(2889, 'Warminsko-Mazurskie', 175),
(2890, 'Warsaw', 175),
(2891, 'Wejherowo', 175),
(2892, 'Wielkopolskie', 175),
(2893, 'Wroclaw', 175),
(2894, 'Zachodnio-Pomorskie', 175),
(2895, 'Zukowo', 175),
(2896, 'Abrantes', 176),
(2897, 'Acores', 176),
(2898, 'Alentejo', 176),
(2899, 'Algarve', 176),
(2900, 'Braga', 176),
(2901, 'Centro', 176),
(2902, 'Distrito de Leiria', 176),
(2903, 'Distrito de Viana do Castelo', 176),
(2904, 'Distrito de Vila Real', 176),
(2905, 'Distrito do Porto', 176),
(2906, 'Lisboa e Vale do Tejo', 176),
(2907, 'Madeira', 176),
(2908, 'Norte', 176),
(2909, 'Paivas', 176),
(2910, 'Arecibo', 177),
(2911, 'Bayamon', 177),
(2912, 'Carolina', 177),
(2913, 'Florida', 177),
(2914, 'Guayama', 177),
(2915, 'Humacao', 177),
(2916, 'Mayaguez-Aguadilla', 177),
(2917, 'Ponce', 177),
(2918, 'Salinas', 177),
(2919, 'San Juan', 177),
(2920, 'Doha', 178),
(2921, 'Jarian-al-Batnah', 178),
(2922, 'Umm Salal', 178),
(2923, 'ad-Dawhah', 178),
(2924, 'al-Ghuwayriyah', 178),
(2925, 'al-Jumayliyah', 178),
(2926, 'al-Khawr', 178),
(2927, 'al-Wakrah', 178),
(2928, 'ar-Rayyan', 178),
(2929, 'ash-Shamal', 178),
(2930, 'Saint-Benoit', 179),
(2931, 'Saint-Denis', 179),
(2932, 'Saint-Paul', 179),
(2933, 'Saint-Pierre', 179),
(2934, 'Alba', 180),
(2935, 'Arad', 180),
(2936, 'Arges', 180),
(2937, 'Bacau', 180),
(2938, 'Bihor', 180),
(2939, 'Bistrita-Nasaud', 180),
(2940, 'Botosani', 180),
(2941, 'Braila', 180),
(2942, 'Brasov', 180),
(2943, 'Bucuresti', 180),
(2944, 'Buzau', 180),
(2945, 'Calarasi', 180),
(2946, 'Caras-Severin', 180),
(2947, 'Cluj', 180),
(2948, 'Constanta', 180),
(2949, 'Covasna', 180),
(2950, 'Dambovita', 180),
(2951, 'Dolj', 180),
(2952, 'Galati', 180),
(2953, 'Giurgiu', 180),
(2954, 'Gorj', 180),
(2955, 'Harghita', 180),
(2956, 'Hunedoara', 180),
(2957, 'Ialomita', 180),
(2958, 'Iasi', 180),
(2959, 'Ilfov', 180),
(2960, 'Maramures', 180),
(2961, 'Mehedinti', 180),
(2962, 'Mures', 180),
(2963, 'Neamt', 180),
(2964, 'Olt', 180),
(2965, 'Prahova', 180),
(2966, 'Salaj', 180),
(2967, 'Satu Mare', 180),
(2968, 'Sibiu', 180),
(2969, 'Sondelor', 180),
(2970, 'Suceava', 180),
(2971, 'Teleorman', 180),
(2972, 'Timis', 180),
(2973, 'Tulcea', 180),
(2974, 'Valcea', 180),
(2975, 'Vaslui', 180),
(2976, 'Vrancea', 180),
(2977, 'Adygeja', 181),
(2978, 'Aga', 181),
(2979, 'Alanija', 181),
(2980, 'Altaj', 181),
(2981, 'Amur', 181),
(2982, 'Arhangelsk', 181),
(2983, 'Astrahan', 181),
(2984, 'Bashkortostan', 181),
(2985, 'Belgorod', 181),
(2986, 'Brjansk', 181),
(2987, 'Burjatija', 181),
(2988, 'Chechenija', 181),
(2989, 'Cheljabinsk', 181),
(2990, 'Chita', 181),
(2991, 'Chukotka', 181),
(2992, 'Chuvashija', 181),
(2993, 'Dagestan', 181),
(2994, 'Evenkija', 181),
(2995, 'Gorno-Altaj', 181),
(2996, 'Habarovsk', 181),
(2997, 'Hakasija', 181),
(2998, 'Hanty-Mansija', 181),
(2999, 'Ingusetija', 181),
(3000, 'Irkutsk', 181),
(3001, 'Ivanovo', 181),
(3002, 'Jamalo-Nenets', 181),
(3003, 'Jaroslavl', 181),
(3004, 'Jevrej', 181),
(3005, 'Kabardino-Balkarija', 181),
(3006, 'Kaliningrad', 181),
(3007, 'Kalmykija', 181),
(3008, 'Kaluga', 181),
(3009, 'Kamchatka', 181),
(3010, 'Karachaj-Cherkessija', 181),
(3011, 'Karelija', 181),
(3012, 'Kemerovo', 181),
(3013, 'Khabarovskiy Kray', 181),
(3014, 'Kirov', 181),
(3015, 'Komi', 181),
(3016, 'Komi-Permjakija', 181),
(3017, 'Korjakija', 181),
(3018, 'Kostroma', 181),
(3019, 'Krasnodar', 181),
(3020, 'Krasnojarsk', 181),
(3021, 'Krasnoyarskiy Kray', 181),
(3022, 'Kurgan', 181),
(3023, 'Kursk', 181),
(3024, 'Leningrad', 181),
(3025, 'Lipeck', 181),
(3026, 'Magadan', 181),
(3027, 'Marij El', 181),
(3028, 'Mordovija', 181),
(3029, 'Moscow', 181),
(3030, 'Moskovskaja Oblast', 181),
(3031, 'Moskovskaya Oblast', 181),
(3032, 'Moskva', 181),
(3033, 'Murmansk', 181),
(3034, 'Nenets', 181),
(3035, 'Nizhnij Novgorod', 181),
(3036, 'Novgorod', 181),
(3037, 'Novokusnezk', 181),
(3038, 'Novosibirsk', 181),
(3039, 'Omsk', 181),
(3040, 'Orenburg', 181),
(3041, 'Orjol', 181),
(3042, 'Penza', 181),
(3043, 'Perm', 181),
(3044, 'Primorje', 181),
(3045, 'Pskov', 181),
(3046, 'Pskovskaya Oblast', 181),
(3047, 'Rjazan', 181),
(3048, 'Rostov', 181),
(3049, 'Saha', 181),
(3050, 'Sahalin', 181),
(3051, 'Samara', 181),
(3052, 'Samarskaya', 181),
(3053, 'Sankt-Peterburg', 181),
(3054, 'Saratov', 181),
(3055, 'Smolensk', 181),
(3056, 'Stavropol', 181),
(3057, 'Sverdlovsk', 181),
(3058, 'Tajmyrija', 181),
(3059, 'Tambov', 181),
(3060, 'Tatarstan', 181),
(3061, 'Tjumen', 181),
(3062, 'Tomsk', 181),
(3063, 'Tula', 181),
(3064, 'Tver', 181),
(3065, 'Tyva', 181),
(3066, 'Udmurtija', 181),
(3067, 'Uljanovsk', 181),
(3068, 'Ulyanovskaya Oblast', 181),
(3069, 'Ust-Orda', 181),
(3070, 'Vladimir', 181),
(3071, 'Volgograd', 181),
(3072, 'Vologda', 181),
(3073, 'Voronezh', 181),
(3074, 'Butare', 182),
(3075, 'Byumba', 182),
(3076, 'Cyangugu', 182),
(3077, 'Gikongoro', 182),
(3078, 'Gisenyi', 182),
(3079, 'Gitarama', 182),
(3080, 'Kibungo', 182),
(3081, 'Kibuye', 182),
(3082, 'Kigali-ngali', 182),
(3083, 'Ruhengeri', 182),
(3084, 'Ascension', 183),
(3085, 'Gough Island', 183),
(3086, 'Saint Helena', 183),
(3087, 'Tristan da Cunha', 183),
(3088, 'Christ Church Nichola Town', 184),
(3089, 'Saint Anne Sandy Point', 184),
(3090, 'Saint George Basseterre', 184),
(3091, 'Saint George Gingerland', 184),
(3092, 'Saint James Windward', 184),
(3093, 'Saint John Capesterre', 184),
(3094, 'Saint John Figtree', 184),
(3095, 'Saint Mary Cayon', 184),
(3096, 'Saint Paul Capesterre', 184),
(3097, 'Saint Paul Charlestown', 184),
(3098, 'Saint Peter Basseterre', 184),
(3099, 'Saint Thomas Lowland', 184),
(3100, 'Saint Thomas Middle Island', 184),
(3101, 'Trinity Palmetto Point', 184),
(3102, 'Anse-la-Raye', 185),
(3103, 'Canaries', 185),
(3104, 'Castries', 185),
(3105, 'Choiseul', 185),
(3106, 'Dennery', 185),
(3107, 'Gros Inlet', 185),
(3108, 'Laborie', 185),
(3109, 'Micoud', 185),
(3110, 'Soufriere', 185),
(3111, 'Vieux Fort', 185),
(3112, 'Miquelon-Langlade', 186),
(3113, 'Saint-Pierre', 186),
(3114, 'Charlotte', 187),
(3115, 'Grenadines', 187),
(3116, 'Saint Andrew', 187),
(3117, 'Saint David', 187),
(3118, 'Saint George', 187),
(3119, 'Saint Patrick', 187),
(3120, 'A\'ana', 188),
(3121, 'Aiga-i-le-Tai', 188),
(3122, 'Atua', 188),
(3123, 'Fa\'asaleleaga', 188),
(3124, 'Gaga\'emauga', 188),
(3125, 'Gagaifomauga', 188),
(3126, 'Palauli', 188),
(3127, 'Satupa\'itea', 188),
(3128, 'Tuamasaga', 188),
(3129, 'Va\'a-o-Fonoti', 188),
(3130, 'Vaisigano', 188),
(3131, 'Acquaviva', 189),
(3132, 'Borgo Maggiore', 189),
(3133, 'Chiesanuova', 189),
(3134, 'Domagnano', 189),
(3135, 'Faetano', 189),
(3136, 'Fiorentino', 189),
(3137, 'Montegiardino', 189),
(3138, 'San Marino', 189),
(3139, 'Serravalle', 189),
(3140, 'Agua Grande', 190),
(3141, 'Cantagalo', 190),
(3142, 'Lemba', 190),
(3143, 'Lobata', 190),
(3144, 'Me-Zochi', 190),
(3145, 'Pague', 190),
(3146, 'Al Khobar', 191),
(3147, 'Aseer', 191),
(3148, 'Ash Sharqiyah', 191),
(3149, 'Asir', 191),
(3150, 'Central Province', 191),
(3151, 'Eastern Province', 191),
(3152, 'Ha\'il', 191),
(3153, 'Jawf', 191),
(3154, 'Jizan', 191),
(3155, 'Makkah', 191),
(3156, 'Najran', 191),
(3157, 'Qasim', 191),
(3158, 'Tabuk', 191),
(3159, 'Western Province', 191),
(3160, 'al-Bahah', 191),
(3161, 'al-Hudud-ash-Shamaliyah', 191),
(3162, 'al-Madinah', 191),
(3163, 'ar-Riyad', 191),
(3164, 'Dakar', 192),
(3165, 'Diourbel', 192),
(3166, 'Fatick', 192),
(3167, 'Kaolack', 192),
(3168, 'Kolda', 192),
(3169, 'Louga', 192),
(3170, 'Saint-Louis', 192),
(3171, 'Tambacounda', 192),
(3172, 'Thies', 192),
(3173, 'Ziguinchor', 192),
(3174, 'Central Serbia', 193),
(3175, 'Kosovo and Metohija', 193),
(3176, 'Vojvodina', 193),
(3177, 'Anse Boileau', 194),
(3178, 'Anse Royale', 194),
(3179, 'Cascade', 194),
(3180, 'Takamaka', 194),
(3181, 'Victoria', 194),
(3182, 'Eastern', 195),
(3183, 'Northern', 195),
(3184, 'Southern', 195),
(3185, 'Western', 195),
(3186, 'Singapore', 196),
(3187, 'Banskobystricky', 197),
(3188, 'Bratislavsky', 197),
(3189, 'Kosicky', 197),
(3190, 'Nitriansky', 197),
(3191, 'Presovsky', 197),
(3192, 'Trenciansky', 197),
(3193, 'Trnavsky', 197),
(3194, 'Zilinsky', 197),
(3195, 'Benedikt', 198),
(3196, 'Gorenjska', 198),
(3197, 'Gorishka', 198),
(3198, 'Jugovzhodna Slovenija', 198),
(3199, 'Koroshka', 198),
(3200, 'Notranjsko-krashka', 198),
(3201, 'Obalno-krashka', 198),
(3202, 'Obcina Domzale', 198),
(3203, 'Obcina Vitanje', 198),
(3204, 'Osrednjeslovenska', 198),
(3205, 'Podravska', 198),
(3206, 'Pomurska', 198),
(3207, 'Savinjska', 198),
(3208, 'Slovenian Littoral', 198),
(3209, 'Spodnjeposavska', 198),
(3210, 'Zasavska', 198),
(3211, 'Pitcairn', 199),
(3212, 'Central', 200),
(3213, 'Choiseul', 200),
(3214, 'Guadalcanal', 200),
(3215, 'Isabel', 200),
(3216, 'Makira and Ulawa', 200),
(3217, 'Malaita', 200),
(3218, 'Rennell and Bellona', 200),
(3219, 'Temotu', 200),
(3220, 'Western', 200),
(3221, 'Awdal', 201),
(3222, 'Bakol', 201),
(3223, 'Banadir', 201),
(3224, 'Bari', 201),
(3225, 'Bay', 201),
(3226, 'Galgudug', 201),
(3227, 'Gedo', 201),
(3228, 'Hiran', 201),
(3229, 'Jubbada Hose', 201),
(3230, 'Jubbadha Dexe', 201),
(3231, 'Mudug', 201),
(3232, 'Nugal', 201),
(3233, 'Sanag', 201),
(3234, 'Shabellaha Dhexe', 201),
(3235, 'Shabellaha Hose', 201),
(3236, 'Togdher', 201),
(3237, 'Woqoyi Galbed', 201),
(3238, 'Eastern Cape', 202),
(3239, 'Free State', 202),
(3240, 'Gauteng', 202),
(3241, 'Kempton Park', 202),
(3242, 'Kramerville', 202),
(3243, 'KwaZulu Natal', 202),
(3244, 'Limpopo', 202),
(3245, 'Mpumalanga', 202),
(3246, 'North West', 202),
(3247, 'Northern Cape', 202),
(3248, 'Parow', 202),
(3249, 'Table View', 202),
(3250, 'Umtentweni', 202),
(3251, 'Western Cape', 202),
(3252, 'South Georgia', 203),
(3253, 'Central Equatoria', 204),
(3254, 'A Coruna', 205),
(3255, 'Alacant', 205),
(3256, 'Alava', 205),
(3257, 'Albacete', 205),
(3258, 'Almeria', 205),
(3260, 'Asturias', 205),
(3261, 'Avila', 205),
(3262, 'Badajoz', 205),
(3263, 'Balears', 205),
(3264, 'Barcelona', 205),
(3267, 'Burgos', 205),
(3268, 'Caceres', 205),
(3269, 'Cadiz', 205),
(3270, 'Cantabria', 205),
(3271, 'Castello', 205),
(3273, 'Ceuta', 205),
(3274, 'Ciudad Real', 205),
(3281, 'Cordoba', 205),
(3282, 'Cuenca', 205),
(3284, 'Girona', 205),
(3285, 'Granada', 205),
(3286, 'Guadalajara', 205),
(3287, 'Guipuzcoa', 205),
(3288, 'Huelva', 205),
(3289, 'Huesca', 205),
(3290, 'Jaen', 205),
(3291, 'La Rioja', 205),
(3292, 'Las Palmas', 205),
(3293, 'Leon', 205),
(3295, 'Lleida', 205),
(3296, 'Lugo', 205),
(3297, 'Madrid', 205),
(3298, 'Malaga', 205),
(3299, 'Melilla', 205),
(3300, 'Murcia', 205),
(3301, 'Navarra', 205),
(3302, 'Ourense', 205),
(3303, 'Pais Vasco', 205),
(3304, 'Palencia', 205),
(3305, 'Pontevedra', 205),
(3306, 'Salamanca', 205),
(3308, 'Segovia', 205),
(3309, 'Sevilla', 205),
(3310, 'Soria', 205),
(3311, 'Tarragona', 205),
(3312, 'Santa Cruz de Tenerife', 205),
(3313, 'Teruel', 205),
(3314, 'Toledo', 205),
(3315, 'Valencia', 205),
(3316, 'Valladolid', 205),
(3317, 'Vizcaya', 205),
(3318, 'Zamora', 205),
(3319, 'Zaragoza', 205),
(3320, 'Amparai', 206),
(3321, 'Anuradhapuraya', 206),
(3322, 'Badulla', 206),
(3323, 'Boralesgamuwa', 206),
(3324, 'Colombo', 206),
(3325, 'Galla', 206),
(3326, 'Gampaha', 206),
(3327, 'Hambantota', 206),
(3328, 'Kalatura', 206),
(3329, 'Kegalla', 206),
(3330, 'Kilinochchi', 206),
(3331, 'Kurunegala', 206),
(3332, 'Madakalpuwa', 206),
(3333, 'Maha Nuwara', 206),
(3334, 'Malwana', 206),
(3335, 'Mannarama', 206),
(3336, 'Matale', 206),
(3337, 'Matara', 206),
(3338, 'Monaragala', 206),
(3339, 'Mullaitivu', 206),
(3340, 'North Eastern Province', 206),
(3341, 'North Western Province', 206),
(3342, 'Nuwara Eliya', 206),
(3343, 'Polonnaruwa', 206),
(3344, 'Puttalama', 206),
(3345, 'Ratnapuraya', 206),
(3346, 'Southern Province', 206),
(3347, 'Tirikunamalaya', 206),
(3348, 'Tuscany', 206),
(3349, 'Vavuniyawa', 206),
(3350, 'Western Province', 206),
(3351, 'Yapanaya', 206),
(3352, 'kadawatha', 206),
(3353, 'A\'ali-an-Nil', 207),
(3354, 'Bahr-al-Jabal', 207),
(3355, 'Central Equatoria', 207),
(3356, 'Gharb Bahr-al-Ghazal', 207),
(3357, 'Gharb Darfur', 207),
(3358, 'Gharb Kurdufan', 207),
(3359, 'Gharb-al-Istiwa\'iyah', 207),
(3360, 'Janub Darfur', 207),
(3361, 'Janub Kurdufan', 207),
(3362, 'Junqali', 207),
(3363, 'Kassala', 207),
(3364, 'Nahr-an-Nil', 207),
(3365, 'Shamal Bahr-al-Ghazal', 207),
(3366, 'Shamal Darfur', 207),
(3367, 'Shamal Kurdufan', 207),
(3368, 'Sharq-al-Istiwa\'iyah', 207),
(3369, 'Sinnar', 207),
(3370, 'Warab', 207),
(3371, 'Wilayat al Khartum', 207),
(3372, 'al-Bahr-al-Ahmar', 207),
(3373, 'al-Buhayrat', 207),
(3374, 'al-Jazirah', 207),
(3375, 'al-Khartum', 207),
(3376, 'al-Qadarif', 207),
(3377, 'al-Wahdah', 207),
(3378, 'an-Nil-al-Abyad', 207),
(3379, 'an-Nil-al-Azraq', 207),
(3380, 'ash-Shamaliyah', 207),
(3381, 'Brokopondo', 208),
(3382, 'Commewijne', 208),
(3383, 'Coronie', 208),
(3384, 'Marowijne', 208),
(3385, 'Nickerie', 208),
(3386, 'Para', 208),
(3387, 'Paramaribo', 208),
(3388, 'Saramacca', 208),
(3389, 'Wanica', 208),
(3390, 'Svalbard', 209),
(3391, 'Hhohho', 210),
(3392, 'Lubombo', 210),
(3393, 'Manzini', 210),
(3394, 'Shiselweni', 210),
(3395, 'Alvsborgs Lan', 211),
(3396, 'Angermanland', 211),
(3397, 'Blekinge', 211),
(3398, 'Bohuslan', 211),
(3399, 'Dalarna', 211),
(3400, 'Gavleborg', 211),
(3401, 'Gaza', 211),
(3402, 'Gotland', 211),
(3403, 'Halland', 211),
(3404, 'Jamtland', 211),
(3405, 'Jonkoping', 211),
(3406, 'Kalmar', 211),
(3407, 'Kristianstads', 211),
(3408, 'Kronoberg', 211),
(3409, 'Norrbotten', 211),
(3410, 'Orebro', 211),
(3411, 'Ostergotland', 211),
(3412, 'Saltsjo-Boo', 211),
(3413, 'Skane', 211),
(3414, 'Smaland', 211),
(3415, 'Sodermanland', 211),
(3416, 'Stockholm', 211),
(3417, 'Uppsala', 211),
(3418, 'Varmland', 211),
(3419, 'Vasterbotten', 211),
(3420, 'Vastergotland', 211),
(3421, 'Vasternorrland', 211),
(3422, 'Vastmanland', 211),
(3423, 'Vastra Gotaland', 211),
(3424, 'Aargau', 212),
(3425, 'Appenzell Inner-Rhoden', 212),
(3426, 'Appenzell-Ausser Rhoden', 212),
(3427, 'Basel-Landschaft', 212),
(3428, 'Basel-Stadt', 212),
(3429, 'Bern', 212),
(3430, 'Canton Ticino', 212),
(3431, 'Fribourg', 212),
(3432, 'Geneve', 212),
(3433, 'Glarus', 212),
(3434, 'Graubunden', 212),
(3435, 'Heerbrugg', 212),
(3436, 'Jura', 212),
(3437, 'Kanton Aargau', 212),
(3438, 'Luzern', 212),
(3439, 'Morbio Inferiore', 212),
(3440, 'Muhen', 212),
(3441, 'Neuchatel', 212),
(3442, 'Nidwalden', 212),
(3443, 'Obwalden', 212),
(3444, 'Sankt Gallen', 212),
(3445, 'Schaffhausen', 212),
(3446, 'Schwyz', 212),
(3447, 'Solothurn', 212),
(3448, 'Thurgau', 212),
(3449, 'Ticino', 212),
(3450, 'Uri', 212),
(3451, 'Valais', 212),
(3452, 'Vaud', 212),
(3453, 'Vauffelin', 212),
(3454, 'Zug', 212),
(3455, 'Zurich', 212),
(3456, 'Aleppo', 213),
(3457, 'Dar\'a', 213),
(3458, 'Dayr-az-Zawr', 213),
(3459, 'Dimashq', 213),
(3460, 'Halab', 213),
(3461, 'Hamah', 213),
(3462, 'Hims', 213),
(3463, 'Idlib', 213),
(3464, 'Madinat Dimashq', 213),
(3465, 'Tartus', 213),
(3466, 'al-Hasakah', 213),
(3467, 'al-Ladhiqiyah', 213),
(3468, 'al-Qunaytirah', 213),
(3469, 'ar-Raqqah', 213),
(3470, 'as-Suwayda', 213),
(3471, 'Changhua County', 214),
(3472, 'Chiayi County', 214),
(3473, 'Chiayi City', 214),
(3474, 'Taipei City', 214),
(3475, 'Hsinchu County', 214),
(3476, 'Hsinchu City', 214),
(3477, 'Hualien County', 214),
(3480, 'Kaohsiung City', 214),
(3481, 'Keelung City', 214),
(3482, 'Kinmen County', 214),
(3483, 'Miaoli County', 214),
(3484, 'Nantou County', 214),
(3486, 'Penghu County', 214),
(3487, 'Pingtung County', 214),
(3488, 'Taichung City', 214),
(3492, 'Tainan City', 214),
(3493, 'New Taipei City', 214),
(3495, 'Taitung County', 214),
(3496, 'Taoyuan City', 214),
(3497, 'Yilan County', 214),
(3498, 'YunLin County', 214),
(3500, 'Dushanbe', 215),
(3501, 'Gorno-Badakhshan', 215),
(3502, 'Karotegin', 215),
(3503, 'Khatlon', 215),
(3504, 'Sughd', 215),
(3505, 'Arusha', 216),
(3506, 'Dar es Salaam', 216),
(3507, 'Dodoma', 216),
(3508, 'Iringa', 216),
(3509, 'Kagera', 216),
(3510, 'Kigoma', 216),
(3511, 'Kilimanjaro', 216),
(3512, 'Lindi', 216),
(3513, 'Mara', 216),
(3514, 'Mbeya', 216),
(3515, 'Morogoro', 216),
(3516, 'Mtwara', 216),
(3517, 'Mwanza', 216),
(3518, 'Pwani', 216),
(3519, 'Rukwa', 216),
(3520, 'Ruvuma', 216),
(3521, 'Shinyanga', 216),
(3522, 'Singida', 216),
(3523, 'Tabora', 216),
(3524, 'Tanga', 216),
(3525, 'Zanzibar and Pemba', 216),
(3526, 'Amnat Charoen', 217),
(3527, 'Ang Thong', 217),
(3528, 'Bangkok', 217),
(3529, 'Buri Ram', 217),
(3530, 'Chachoengsao', 217),
(3531, 'Chai Nat', 217),
(3532, 'Chaiyaphum', 217),
(3533, 'Changwat Chaiyaphum', 217),
(3534, 'Chanthaburi', 217),
(3535, 'Chiang Mai', 217),
(3536, 'Chiang Rai', 217),
(3537, 'Chon Buri', 217),
(3538, 'Chumphon', 217),
(3539, 'Kalasin', 217),
(3540, 'Kamphaeng Phet', 217),
(3541, 'Kanchanaburi', 217),
(3542, 'Khon Kaen', 217),
(3543, 'Krabi', 217),
(3544, 'Krung Thep', 217),
(3545, 'Lampang', 217),
(3546, 'Lamphun', 217),
(3547, 'Loei', 217),
(3548, 'Lop Buri', 217),
(3549, 'Mae Hong Son', 217),
(3550, 'Maha Sarakham', 217),
(3551, 'Mukdahan', 217),
(3552, 'Nakhon Nayok', 217),
(3553, 'Nakhon Pathom', 217),
(3554, 'Nakhon Phanom', 217),
(3555, 'Nakhon Ratchasima', 217),
(3556, 'Nakhon Sawan', 217),
(3557, 'Nakhon Si Thammarat', 217),
(3558, 'Nan', 217),
(3559, 'Narathiwat', 217),
(3560, 'Nong Bua Lam Phu', 217),
(3561, 'Nong Khai', 217),
(3562, 'Nonthaburi', 217),
(3563, 'Pathum Thani', 217),
(3564, 'Pattani', 217),
(3565, 'Phangnga', 217),
(3566, 'Phatthalung', 217),
(3567, 'Phayao', 217),
(3568, 'Phetchabun', 217),
(3569, 'Phetchaburi', 217),
(3570, 'Phichit', 217),
(3571, 'Phitsanulok', 217),
(3572, 'Phra Nakhon Si Ayutthaya', 217),
(3573, 'Phrae', 217),
(3574, 'Phuket', 217),
(3575, 'Prachin Buri', 217),
(3576, 'Prachuap Khiri Khan', 217),
(3577, 'Ranong', 217),
(3578, 'Ratchaburi', 217),
(3579, 'Rayong', 217),
(3580, 'Roi Et', 217),
(3581, 'Sa Kaeo', 217),
(3582, 'Sakon Nakhon', 217),
(3583, 'Samut Prakan', 217),
(3584, 'Samut Sakhon', 217),
(3585, 'Samut Songkhran', 217),
(3586, 'Saraburi', 217),
(3587, 'Satun', 217),
(3588, 'Si Sa Ket', 217),
(3589, 'Sing Buri', 217),
(3590, 'Songkhla', 217),
(3591, 'Sukhothai', 217),
(3592, 'Suphan Buri', 217),
(3593, 'Surat Thani', 217),
(3594, 'Surin', 217),
(3595, 'Tak', 217),
(3596, 'Trang', 217),
(3597, 'Trat', 217),
(3598, 'Ubon Ratchathani', 217),
(3599, 'Udon Thani', 217),
(3600, 'Uthai Thani', 217),
(3601, 'Uttaradit', 217),
(3602, 'Yala', 217),
(3603, 'Yasothon', 217),
(3604, 'Centre', 218),
(3605, 'Kara', 218),
(3606, 'Maritime', 218),
(3607, 'Plateaux', 218),
(3608, 'Savanes', 218),
(3609, 'Atafu', 219),
(3610, 'Fakaofo', 219),
(3611, 'Nukunonu', 219),
(3612, 'Eua', 220),
(3613, 'Ha\'apai', 220),
(3614, 'Niuas', 220),
(3615, 'Tongatapu', 220),
(3616, 'Vava\'u', 220),
(3617, 'Arima-Tunapuna-Piarco', 221),
(3618, 'Caroni', 221),
(3619, 'Chaguanas', 221),
(3620, 'Couva-Tabaquite-Talparo', 221),
(3621, 'Diego Martin', 221),
(3622, 'Glencoe', 221),
(3623, 'Penal Debe', 221),
(3624, 'Point Fortin', 221),
(3625, 'Port of Spain', 221),
(3626, 'Princes Town', 221),
(3627, 'Saint George', 221),
(3628, 'San Fernando', 221),
(3629, 'San Juan', 221),
(3630, 'Sangre Grande', 221),
(3631, 'Siparia', 221),
(3632, 'Tobago', 221),
(3633, 'Aryanah', 222),
(3634, 'Bajah', 222),
(3635, 'Bin \'Arus', 222),
(3636, 'Binzart', 222),
(3637, 'Gouvernorat de Ariana', 222),
(3638, 'Gouvernorat de Nabeul', 222),
(3639, 'Gouvernorat de Sousse', 222),
(3640, 'Hammamet Yasmine', 222),
(3641, 'Jundubah', 222),
(3642, 'Madaniyin', 222),
(3643, 'Manubah', 222),
(3644, 'Monastir', 222),
(3645, 'Nabul', 222),
(3646, 'Qabis', 222),
(3647, 'Qafsah', 222),
(3648, 'Qibili', 222),
(3649, 'Safaqis', 222),
(3650, 'Sfax', 222),
(3651, 'Sidi Bu Zayd', 222),
(3652, 'Silyanah', 222),
(3653, 'Susah', 222),
(3654, 'Tatawin', 222),
(3655, 'Tawzar', 222),
(3656, 'Tunis', 222),
(3657, 'Zaghwan', 222),
(3658, 'al-Kaf', 222),
(3659, 'al-Mahdiyah', 222),
(3660, 'al-Munastir', 222),
(3661, 'al-Qasrayn', 222),
(3662, 'al-Qayrawan', 222),
(3663, 'Adana', 223),
(3664, 'Adiyaman', 223),
(3665, 'Afyon', 223),
(3666, 'Agri', 223),
(3667, 'Aksaray', 223),
(3668, 'Amasya', 223),
(3669, 'Ankara', 223),
(3670, 'Antalya', 223),
(3671, 'Ardahan', 223),
(3672, 'Artvin', 223),
(3673, 'Aydin', 223),
(3674, 'Balikesir', 223),
(3675, 'Bartin', 223),
(3676, 'Batman', 223),
(3677, 'Bayburt', 223),
(3678, 'Bilecik', 223),
(3679, 'Bingol', 223),
(3680, 'Bitlis', 223),
(3681, 'Bolu', 223),
(3682, 'Burdur', 223),
(3683, 'Bursa', 223),
(3684, 'Canakkale', 223),
(3685, 'Cankiri', 223),
(3686, 'Corum', 223),
(3687, 'Denizli', 223),
(3688, 'Diyarbakir', 223),
(3689, 'Duzce', 223),
(3690, 'Edirne', 223),
(3691, 'Elazig', 223),
(3692, 'Erzincan', 223),
(3693, 'Erzurum', 223),
(3694, 'Eskisehir', 223),
(3695, 'Gaziantep', 223),
(3696, 'Giresun', 223),
(3697, 'Gumushane', 223),
(3698, 'Hakkari', 223),
(3699, 'Hatay', 223),
(3700, 'Icel', 223),
(3701, 'Igdir', 223),
(3702, 'Isparta', 223),
(3703, 'Istanbul', 223),
(3704, 'Izmir', 223),
(3705, 'Kahramanmaras', 223),
(3706, 'Karabuk', 223),
(3707, 'Karaman', 223),
(3708, 'Kars', 223),
(3709, 'Karsiyaka', 223),
(3710, 'Kastamonu', 223),
(3711, 'Kayseri', 223),
(3712, 'Kilis', 223),
(3713, 'Kirikkale', 223),
(3714, 'Kirklareli', 223),
(3715, 'Kirsehir', 223),
(3716, 'Kocaeli', 223),
(3717, 'Konya', 223),
(3718, 'Kutahya', 223),
(3719, 'Lefkosa', 223),
(3720, 'Malatya', 223),
(3721, 'Manisa', 223),
(3722, 'Mardin', 223),
(3723, 'Mugla', 223),
(3724, 'Mus', 223),
(3725, 'Nevsehir', 223),
(3726, 'Nigde', 223),
(3727, 'Ordu', 223),
(3728, 'Osmaniye', 223),
(3729, 'Rize', 223),
(3730, 'Sakarya', 223),
(3731, 'Samsun', 223),
(3732, 'Sanliurfa', 223),
(3733, 'Siirt', 223),
(3734, 'Sinop', 223),
(3735, 'Sirnak', 223),
(3736, 'Sivas', 223),
(3737, 'Tekirdag', 223),
(3738, 'Tokat', 223),
(3739, 'Trabzon', 223),
(3740, 'Tunceli', 223),
(3741, 'Usak', 223),
(3742, 'Van', 223),
(3743, 'Yalova', 223),
(3744, 'Yozgat', 223),
(3745, 'Zonguldak', 223),
(3746, 'Ahal', 224),
(3747, 'Asgabat', 224),
(3748, 'Balkan', 224),
(3749, 'Dasoguz', 224),
(3750, 'Lebap', 224),
(3751, 'Mari', 224),
(3752, 'Grand Turk', 225),
(3753, 'South Caicos and East Caicos', 225),
(3754, 'Funafuti', 226),
(3755, 'Nanumanga', 226),
(3756, 'Nanumea', 226),
(3757, 'Niutao', 226),
(3758, 'Nui', 226),
(3759, 'Nukufetau', 226),
(3760, 'Nukulaelae', 226),
(3761, 'Vaitupu', 226),
(3762, 'Central', 227),
(3763, 'Eastern', 227),
(3764, 'Northern', 227),
(3765, 'Western', 227),
(3766, 'Cherkas\'ka', 228),
(3767, 'Chernihivs\'ka', 228),
(3768, 'Chernivets\'ka', 228),
(3769, 'Crimea', 228),
(3770, 'Dnipropetrovska', 228),
(3771, 'Donets\'ka', 228),
(3772, 'Ivano-Frankivs\'ka', 228),
(3773, 'Kharkiv', 228),
(3774, 'Kharkov', 228),
(3775, 'Khersonska', 228),
(3776, 'Khmel\'nyts\'ka', 228),
(3777, 'Kirovohrad', 228),
(3778, 'Krym', 228),
(3779, 'Kyyiv', 228),
(3780, 'Kyyivs\'ka', 228),
(3781, 'L\'vivs\'ka', 228),
(3782, 'Luhans\'ka', 228),
(3783, 'Mykolayivs\'ka', 228),
(3784, 'Odes\'ka', 228),
(3785, 'Odessa', 228),
(3786, 'Poltavs\'ka', 228),
(3787, 'Rivnens\'ka', 228),
(3788, 'Sevastopol\'', 228),
(3789, 'Sums\'ka', 228),
(3790, 'Ternopil\'s\'ka', 228),
(3791, 'Volyns\'ka', 228),
(3792, 'Vynnyts\'ka', 228),
(3793, 'Zakarpats\'ka', 228),
(3794, 'Zaporizhia', 228),
(3795, 'Zhytomyrs\'ka', 228),
(3796, 'Abu Zabi', 229),
(3797, 'Ajman', 229),
(3798, 'Dubai', 229),
(3799, 'Ras al-Khaymah', 229),
(3800, 'Sharjah', 229),
(3801, 'Sharjha', 229),
(3802, 'Umm al Qaywayn', 229),
(3803, 'al-Fujayrah', 229),
(3804, 'ash-Shariqah', 229),
(3805, 'Aberdeen', 230),
(3806, 'Aberdeenshire', 230),
(3807, 'Argyll', 230),
(3808, 'Armagh', 230),
(3809, 'Bedfordshire', 230),
(3810, 'Belfast', 230),
(3811, 'Berkshire', 230),
(3812, 'Birmingham', 230),
(3813, 'Brechin', 230),
(3814, 'Bridgnorth', 230),
(3815, 'Bristol', 230),
(3816, 'Buckinghamshire', 230),
(3817, 'Cambridge', 230),
(3818, 'Cambridgeshire', 230),
(3819, 'Channel Islands', 230),
(3820, 'Cheshire', 230),
(3821, 'Cleveland', 230),
(3822, 'Co Fermanagh', 230),
(3823, 'Conwy', 230),
(3824, 'Cornwall', 230),
(3825, 'Coventry', 230),
(3826, 'Craven Arms', 230),
(3827, 'Cumbria', 230),
(3828, 'Denbighshire', 230),
(3829, 'Derby', 230),
(3830, 'Derbyshire', 230),
(3831, 'Devon', 230),
(3832, 'Dial Code Dungannon', 230),
(3833, 'Didcot', 230),
(3834, 'Dorset', 230),
(3835, 'Dunbartonshire', 230),
(3836, 'Durham', 230),
(3837, 'East Dunbartonshire', 230),
(3838, 'East Lothian', 230),
(3839, 'East Midlands', 230),
(3840, 'East Sussex', 230),
(3841, 'East Yorkshire', 230),
(3842, 'England', 230),
(3843, 'Essex', 230),
(3844, 'Fermanagh', 230),
(3845, 'Fife', 230),
(3846, 'Flintshire', 230),
(3847, 'Fulham', 230),
(3848, 'Gainsborough', 230),
(3849, 'Glocestershire', 230),
(3850, 'Gwent', 230),
(3851, 'Hampshire', 230),
(3852, 'Hants', 230),
(3853, 'Herefordshire', 230),
(3854, 'Hertfordshire', 230),
(3855, 'Ireland', 230),
(3856, 'Isle Of Man', 230),
(3857, 'Isle of Wight', 230),
(3858, 'Kenford', 230),
(3859, 'Kent', 230),
(3860, 'Kilmarnock', 230),
(3861, 'Lanarkshire', 230),
(3862, 'Lancashire', 230),
(3863, 'Leicestershire', 230),
(3864, 'Lincolnshire', 230),
(3865, 'Llanymynech', 230),
(3866, 'London', 230),
(3867, 'Ludlow', 230),
(3868, 'Manchester', 230),
(3869, 'Mayfair', 230),
(3870, 'Merseyside', 230),
(3871, 'Mid Glamorgan', 230),
(3872, 'Middlesex', 230),
(3873, 'Mildenhall', 230),
(3874, 'Monmouthshire', 230),
(3875, 'Newton Stewart', 230),
(3876, 'Norfolk', 230),
(3877, 'North Humberside', 230),
(3878, 'North Yorkshire', 230),
(3879, 'Northamptonshire', 230),
(3880, 'Northants', 230),
(3881, 'Northern Ireland', 230),
(3882, 'Northumberland', 230),
(3883, 'Nottinghamshire', 230),
(3884, 'Oxford', 230),
(3885, 'Powys', 230),
(3886, 'Roos-shire', 230),
(3887, 'SUSSEX', 230),
(3888, 'Sark', 230),
(3889, 'Scotland', 230),
(3890, 'Scottish Borders', 230),
(3891, 'Shropshire', 230),
(3892, 'Somerset', 230),
(3893, 'South Glamorgan', 230),
(3894, 'South Wales', 230),
(3895, 'South Yorkshire', 230),
(3896, 'Southwell', 230),
(3897, 'Staffordshire', 230),
(3898, 'Strabane', 230),
(3899, 'Suffolk', 230),
(3900, 'Surrey', 230),
(3901, 'Sussex', 230),
(3902, 'Twickenham', 230),
(3903, 'Tyne and Wear', 230),
(3904, 'Tyrone', 230),
(3905, 'Utah', 230),
(3906, 'Wales', 230),
(3907, 'Warwickshire', 230),
(3908, 'West Lothian', 230),
(3909, 'West Midlands', 230),
(3910, 'West Sussex', 230),
(3911, 'West Yorkshire', 230),
(3912, 'Whissendine', 230),
(3913, 'Wiltshire', 230),
(3914, 'Wokingham', 230),
(3915, 'Worcestershire', 230),
(3916, 'Wrexham', 230),
(3917, 'Wurttemberg', 230),
(3918, 'Yorkshire', 230),
(3919, 'Alabama', 231),
(3920, 'Alaska', 231),
(3921, 'Arizona', 231),
(3922, 'Arkansas', 231),
(3923, 'Byram', 231),
(3924, 'California', 231),
(3925, 'Cokato', 231),
(3926, 'Colorado', 231),
(3927, 'Connecticut', 231),
(3928, 'Delaware', 231),
(3929, 'District of Columbia', 231),
(3930, 'Florida', 231),
(3931, 'Georgia', 231),
(3932, 'Hawaii', 231),
(3933, 'Idaho', 231),
(3934, 'Illinois', 231),
(3935, 'Indiana', 231),
(3936, 'Iowa', 231),
(3937, 'Kansas', 231),
(3938, 'Kentucky', 231),
(3939, 'Louisiana', 231),
(3940, 'Lowa', 231),
(3941, 'Maine', 231),
(3942, 'Maryland', 231),
(3943, 'Massachusetts', 231),
(3944, 'Medfield', 231),
(3945, 'Michigan', 231),
(3946, 'Minnesota', 231),
(3947, 'Mississippi', 231),
(3948, 'Missouri', 231),
(3949, 'Montana', 231),
(3950, 'Nebraska', 231),
(3951, 'Nevada', 231),
(3952, 'New Hampshire', 231),
(3953, 'New Jersey', 231),
(3954, 'New Jersy', 231),
(3955, 'New Mexico', 231),
(3956, 'New York', 231),
(3957, 'North Carolina', 231),
(3958, 'North Dakota', 231),
(3959, 'Ohio', 231),
(3960, 'Oklahoma', 231),
(3961, 'Ontario', 231),
(3962, 'Oregon', 231),
(3963, 'Pennsylvania', 231),
(3964, 'Ramey', 231),
(3965, 'Rhode Island', 231),
(3966, 'South Carolina', 231),
(3967, 'South Dakota', 231),
(3968, 'Sublimity', 231),
(3969, 'Tennessee', 231),
(3970, 'Texas', 231),
(3971, 'Trimble', 231),
(3972, 'Utah', 231),
(3973, 'Vermont', 231),
(3974, 'Virginia', 231),
(3975, 'Washington', 231),
(3976, 'West Virginia', 231),
(3977, 'Wisconsin', 231),
(3978, 'Wyoming', 231),
(3979, 'United States Minor Outlying I', 232),
(3980, 'Artigas', 233),
(3981, 'Canelones', 233),
(3982, 'Cerro Largo', 233),
(3983, 'Colonia', 233),
(3984, 'Durazno', 233),
(3985, 'FLorida', 233),
(3986, 'Flores', 233),
(3987, 'Lavalleja', 233),
(3988, 'Maldonado', 233),
(3989, 'Montevideo', 233),
(3990, 'Paysandu', 233),
(3991, 'Rio Negro', 233),
(3992, 'Rivera', 233),
(3993, 'Rocha', 233),
(3994, 'Salto', 233),
(3995, 'San Jose', 233),
(3996, 'Soriano', 233),
(3997, 'Tacuarembo', 233),
(3998, 'Treinta y Tres', 233),
(3999, 'Andijon', 234),
(4000, 'Buhoro', 234),
(4001, 'Buxoro Viloyati', 234),
(4002, 'Cizah', 234),
(4003, 'Fargona', 234),
(4004, 'Horazm', 234),
(4005, 'Kaskadar', 234),
(4006, 'Korakalpogiston', 234),
(4007, 'Namangan', 234),
(4008, 'Navoi', 234),
(4009, 'Samarkand', 234),
(4010, 'Sirdare', 234),
(4011, 'Surhondar', 234),
(4012, 'Toskent', 234),
(4013, 'Malampa', 235),
(4014, 'Penama', 235),
(4015, 'Sanma', 235),
(4016, 'Shefa', 235),
(4017, 'Tafea', 235),
(4018, 'Torba', 235),
(4019, 'Vatican City State (Holy See)', 236),
(4020, 'Amazonas', 237),
(4021, 'Anzoategui', 237),
(4022, 'Apure', 237),
(4023, 'Aragua', 237),
(4024, 'Barinas', 237),
(4025, 'Bolivar', 237),
(4026, 'Carabobo', 237),
(4027, 'Cojedes', 237),
(4028, 'Delta Amacuro', 237),
(4029, 'Distrito Federal', 237),
(4030, 'Falcon', 237),
(4031, 'Guarico', 237),
(4032, 'Lara', 237),
(4033, 'Merida', 237),
(4034, 'Miranda', 237),
(4035, 'Monagas', 237),
(4036, 'Nueva Esparta', 237),
(4037, 'Portuguesa', 237),
(4038, 'Sucre', 237),
(4039, 'Tachira', 237),
(4040, 'Trujillo', 237),
(4041, 'Vargas', 237),
(4042, 'Yaracuy', 237),
(4043, 'Zulia', 237),
(4044, 'Bac Giang', 238),
(4045, 'Binh Dinh', 238),
(4046, 'Binh Duong', 238),
(4047, 'Da Nang', 238),
(4048, 'Dong Bang Song Cuu Long', 238),
(4049, 'Dong Bang Song Hong', 238),
(4050, 'Dong Nai', 238),
(4051, 'Dong Nam Bo', 238),
(4052, 'Duyen Hai Mien Trung', 238),
(4053, 'Hanoi', 238),
(4054, 'Hung Yen', 238),
(4055, 'Khu Bon Cu', 238),
(4056, 'Long An', 238),
(4057, 'Mien Nui Va Trung Du', 238),
(4058, 'Thai Nguyen', 238),
(4059, 'Thanh Pho Ho Chi Minh', 238),
(4060, 'Thu Do Ha Noi', 238),
(4061, 'Tinh Can Tho', 238),
(4062, 'Tinh Da Nang', 238),
(4063, 'Tinh Gia Lai', 238),
(4064, 'Anegada', 239),
(4065, 'Jost van Dyke', 239),
(4066, 'Tortola', 239),
(4067, 'Saint Croix', 240),
(4068, 'Saint John', 240),
(4069, 'Saint Thomas', 240),
(4070, 'Alo', 241),
(4071, 'Singave', 241),
(4072, 'Wallis', 241),
(4073, 'Bu Jaydur', 242),
(4074, 'Wad-adh-Dhahab', 242),
(4075, 'al-\'Ayun', 242),
(4076, 'as-Samarah', 242),
(4077, '\'Adan', 243),
(4078, 'Abyan', 243),
(4079, 'Dhamar', 243),
(4080, 'Hadramaut', 243),
(4081, 'Hajjah', 243),
(4082, 'Hudaydah', 243),
(4083, 'Ibb', 243),
(4084, 'Lahij', 243),
(4085, 'Ma\'rib', 243),
(4086, 'Madinat San\'a', 243),
(4087, 'Sa\'dah', 243),
(4088, 'Sana', 243),
(4089, 'Shabwah', 243),
(4090, 'Ta\'izz', 243),
(4091, 'al-Bayda', 243),
(4092, 'al-Hudaydah', 243),
(4093, 'al-Jawf', 243),
(4094, 'al-Mahrah', 243),
(4095, 'al-Mahwit', 243),
(4096, 'Central Serbia', 244),
(4097, 'Kosovo and Metohija', 244),
(4098, 'Montenegro', 244),
(4099, 'Republic of Serbia', 244),
(4100, 'Serbia', 244),
(4101, 'Vojvodina', 244),
(4102, 'Central', 245),
(4103, 'Copperbelt', 245),
(4104, 'Eastern', 245),
(4105, 'Luapala', 245),
(4106, 'Lusaka', 245),
(4107, 'North-Western', 245),
(4108, 'Northern', 245),
(4109, 'Southern', 245),
(4110, 'Western', 245),
(4111, 'Bulawayo', 246),
(4112, 'Harare', 246),
(4113, 'Manicaland', 246),
(4114, 'Mashonaland Central', 246),
(4115, 'Mashonaland East', 246),
(4116, 'Mashonaland West', 246),
(4117, 'Masvingo', 246),
(4118, 'Matabeleland North', 246),
(4119, 'Matabeleland South', 246),
(4120, 'Midlands', 246),
(4121, 'Lienchiang County', 214);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `admission_no` varchar(50) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `guardian_id` int(11) NULL,
  `relation_with` varchar(100) DEFAULT NULL,
  `registration_no` varchar(50) NULL,
  `group` varchar(50) NULL,
  `name` varchar(100) NULL,
  `last_name` varchar(25) NULL,
  `phone` varchar(20) NULL,
  `email` varchar(50) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) NULL,
  `blood_group` varchar(10) NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NULL,
  `age` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `other_info` text,
  `is_library_member` tinyint(1) NULL DEFAULT '0',
  `is_hostel_member` tinyint(1) NULL DEFAULT '0',
  `is_transport_member` tinyint(1) NULL DEFAULT '0',
  `discount_id` int(11) DEFAULT '0',
  `previous_school` varchar(255) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `transfer_certificate` varchar(100) DEFAULT NULL,
  `health_condition` text,
  `national_id` varchar(100) DEFAULT NULL,
  `second_language` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(20) DEFAULT NULL,
  `father_education` varchar(100) DEFAULT NULL,
  `father_profession` varchar(100) DEFAULT NULL,
  `father_designation` varchar(100) DEFAULT NULL,
  `father_photo` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(20) DEFAULT NULL,
  `mother_education` varchar(100) DEFAULT NULL,
  `mother_profession` varchar(100) DEFAULT NULL,
  `mother_designation` varchar(100) DEFAULT NULL,
  `mother_photo` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_id`, `user_id`, `admission_no`, `admission_date`, `guardian_id`, `relation_with`, `registration_no`, `group`, `name`, `last_name`, `phone`, `email`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `age`, `photo`, `other_info`, `is_library_member`, `is_hostel_member`, `is_transport_member`, `discount_id`, `previous_school`, `previous_class`, `transfer_certificate`, `health_condition`, `national_id`, `second_language`, `father_name`, `father_phone`, `father_education`, `father_profession`, `father_designation`, `father_photo`, `mother_name`, `mother_phone`, `mother_education`, `mother_profession`, `mother_designation`, `mother_photo`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(3, 1, 11, '232', '2019-07-09', 1, 'father', '', 'science', 'neyamul', 'kobir', '0465473663444', NULL, 'dfsd', 'dfsd', 'male', 'a_negative', 'fasdf', '2019-07-12', -1, NULL, '', 0, 0, 0, 0, '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', NULL, 1, '2019-07-06 15:38:18', '0000-00-00 00:00:00', 1, 0),
(4, 1, 0, NULL, '2019-07-06', 0, NULL, '', '', 'neyamul ', 'kobir', '2343252352534', 'freelancer@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-06 12:15:59', '2019-07-06 12:15:59', 1, 0),
(12, 14, 22, '1', '2019-07-09', 2, 'brother', '', 'science', 'neyamul', 'kobr', '23042349832', NULL, '', '', 'male', '', '', '2019-07-11', -1, NULL, '', 0, 0, 0, 0, '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', NULL, 1, '2019-07-06 23:59:23', '0000-00-00 00:00:00', 19, 0),
(6, 1, 13, NULL, '2019-07-06', 0, NULL, '', '', 'neyamul kobir', 'kobir', '2343252352534', 'freelancer@gmail.com', NULL, NULL, 'female', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-06 12:54:58', '2019-07-06 12:54:58', 1, 0),
(13, 1, 23, NULL, '2019-07-09', 0, NULL, '', '', 'neyamul ', 'kobir', '465473663343', 'neyamulkn@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-09 06:59:11', '2019-07-09 06:59:11', 1, 1),
(10, 1, 17, NULL, '2019-07-06', 0, NULL, '', '', 'manik', 'mia', '2343252352534', 'freelancer@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-06 13:14:54', '2019-07-06 13:14:54', 1, 1),
(14, 14, 31, '434024', '2019-07-03', 2, 'father', '35252', 'science', 'Neyamul', 'kobir', '23042349832', NULL, 'ffadsfsdf', 'fsdf', 'male', 'a_negative', '', '2019-07-11', -1, NULL, 'fasdfsdf', 0, 0, 0, 0, 'fsadf', 'asdfs', NULL, 'dsfdsf', 'dsfasd', '', 'fasdf', 'fasdf', 'fasdf', 'fasdf', 'fasdf', NULL, 'fasdf', 'asdf', 'fasdf', 'fasdf', 'fasdf', NULL, 1, '2019-07-10 16:31:49', '0000-00-00 00:00:00', 19, 0),
(15, 14, 32, '423', '2019-07-08', 2, 'father', '', 'science', 'dsfsdf', 'fasdf', '23042349832', NULL, '', '', 'female', 'a_negative', '', '2019-07-16', -1, NULL, '', 0, 0, 0, 0, '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', NULL, 1, '2019-07-10 16:35:23', '0000-00-00 00:00:00', 19, 0),
(16, 18, 36, NULL, '2019-07-11', 0, NULL, '', '', 'neyamul', 'kobir', '46547366334', 'neyamulkn@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-11 10:18:17', '2019-07-11 10:18:17', 1, 0),
(17, 18, 37, NULL, '2019-07-11', 0, NULL, '', '', 'neyamul kobir', 'kobir', '46547366334', 'neyamulkn@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-11 10:26:02', '2019-07-11 10:26:02', 1, 0),
(18, 18, 38, NULL, '2019-07-11', 0, NULL, '', '', 'neyamul kobir', 'kobir', '46547366334', 'neyamulkn@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-11 10:27:49', '2019-07-11 10:27:49', 1, 0),
(20, 18, 40, '343', '2019-07-11', 1, 'va', '434', 'fadf', 'fs', '', '534535', 'flaksd@gmai.com', 'fadsf', 'fasdf', 'male', 'fadsf', 'fsdf', '2001-02-02', 18, NULL, '', 0, 0, 0, 0, '', NULL, NULL, '', '43', '', '', '', '', '', '', NULL, '', '', '', '', '', NULL, 1, '2019-07-11 14:38:28', '0000-00-00 00:00:00', 1, 0),
(21, 18, 43, NULL, '2019-08-06', 0, NULL, '', '', 'neyamul', 'kobir', '23432523525', 'asik@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-08-06 07:57:38', '2019-08-06 07:57:38', 1, 0),
(22, 1, 45, NULL, '2019-08-19', 0, NULL, '', '', 'neyamul', 'kobir', '23432523525', 'asik@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-19 11:35:25', '2019-08-19 11:35:25', 1, 1),
(23, 1, 46, NULL, '2019-08-25', 0, NULL, '', '', 'fsdf', 'fsdf', '2343252352534', 'freelancer@gmail.com', NULL, NULL, 'male', '', NULL, '0000-00-00', NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-08-25 12:38:15', '2019-08-25 12:38:15', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_activities`
--

CREATE TABLE `student_activities` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `student_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `activity` text NULL,
  `activity_date` datetime NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `student_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `class_id` int(11) NULL,
  `section_id` int(11) NULL,
  `month` varchar(10) NULL,
  `year` varchar(10) NULL,
  `day_1` varchar(1) DEFAULT NULL,
  `day_2` varchar(1) DEFAULT NULL,
  `day_3` varchar(1) DEFAULT NULL,
  `day_4` varchar(1) DEFAULT NULL,
  `day_5` varchar(1) DEFAULT NULL,
  `day_6` varchar(1) DEFAULT NULL,
  `day_7` varchar(1) DEFAULT NULL,
  `day_8` varchar(1) DEFAULT NULL,
  `day_9` varchar(1) DEFAULT NULL,
  `day_10` varchar(1) DEFAULT NULL,
  `day_11` varchar(1) DEFAULT NULL,
  `day_12` varchar(1) DEFAULT NULL,
  `day_13` varchar(1) DEFAULT NULL,
  `day_14` varchar(1) DEFAULT NULL,
  `day_15` varchar(1) DEFAULT NULL,
  `day_16` varchar(1) DEFAULT NULL,
  `day_17` varchar(1) DEFAULT NULL,
  `day_18` varchar(1) DEFAULT NULL,
  `day_19` varchar(1) DEFAULT NULL,
  `day_20` varchar(1) DEFAULT NULL,
  `day_21` varchar(1) DEFAULT NULL,
  `day_22` varchar(1) DEFAULT NULL,
  `day_23` varchar(1) DEFAULT NULL,
  `day_24` varchar(1) DEFAULT NULL,
  `day_25` varchar(1) DEFAULT NULL,
  `day_26` varchar(1) DEFAULT NULL,
  `day_27` varchar(1) DEFAULT NULL,
  `day_28` varchar(1) DEFAULT NULL,
  `day_29` varchar(1) DEFAULT NULL,
  `day_30` varchar(1) DEFAULT NULL,
  `day_31` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `school_id`, `student_id`, `academic_year_id`, `class_id`, `section_id`, `month`, `year`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 2, 1, 1, '06', '2019', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-04 10:51:52', '2019-06-04 10:51:59', 1, 0),
(2, 14, 15, 4, 3, 4, '07', '2019', 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-10 16:46:21', '2019-07-10 16:57:22', 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `teacher_id` int(11) NULL,
  `type` varchar(50) NULL,
  `name` varchar(255) NULL,
  `code` varchar(50) NULL,
  `author` varchar(100) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `school_id`, `class_id`, `teacher_id`, `type`, `name`, `code`, `author`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 'mandatory', 'bangla', '121', '', '', 1, '2019-06-04 10:20:10', '2019-08-25 12:42:41', 1, 1),
(2, 14, 3, 2, 'mandatory', 'bangla', '121', '', '', 1, '2019-07-06 23:56:47', '0000-00-00 00:00:00', 19, 0),
(3, 1, 2, 3, 'mandatory', 'Math', '232', 'neyamul', '', 1, '2019-08-19 11:26:14', '0000-00-00 00:00:00', 1, 0),
(4, 1, 2, 1, 'mandatory', 'english', '123', '', '', 1, '2019-08-25 12:00:11', '2019-08-25 12:37:52', 1, 1),
(5, 1, 5, 1, 'mandatory', 'ICT', '123', '', '', 1, '2019-08-25 12:45:47', '0000-00-00 00:00:00', 1, 0),
(6, 1, 5, 1, 'mandatory', 'Bangla', '121', '', '', 1, '2019-08-25 13:05:51', '0000-00-00 00:00:00', 1, 0),
(7, 1, 2, 3, '', 'Enlish', '', '', '', 1, '2019-08-25 13:07:45', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `exam_id` int(11) NULL,
  `class_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_estonian_ci,
  `suggestion` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `class_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `title` varchar(255) DEFAULT NULL,
  `syllabus` varchar(255) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syllabuses`
--

INSERT INTO `syllabuses` (`id`, `school_id`, `class_id`, `subject_id`, `academic_year_id`, `title`, `syllabus`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `modified_at`) VALUES
(1, 1, 1, 1, 2, 'class', 'syllabus-1559622638-sms.txt', '', 1, 1, 0, '2019-06-04 10:30:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_admin`
--

CREATE TABLE `system_admin` (
  `id` int(11) NULL,
  `user_id` int(11) NULL,
  `is_default` tinyint(1) NULL DEFAULT '0',
  `national_id` varchar(100) NULL,
  `theme_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(15) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_admin`
--

INSERT INTO `system_admin` (`id`, `user_id`, `is_default`, `national_id`, `theme_name`, `name`, `email`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `photo`, `resume`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, '125478658', 'black', 'Super Admin', 'superadmin@gmail.com', '78965424', '6160 Peachtree Dunwoody Rd Suite B100-A', '6160 Peachtree Dunwoody Rd Suite B100-A', 'male', 'b_positive', 'Islam', '1985-01-01', 'photo-1561526716-sms.jpg', '', 'Other test Info', 1, '0000-00-00 00:00:00', '2019-06-26 11:25:16', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NULL,
  `user_id` int(11) NULL,
  `school_id` int(11) NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `salary_grade_id` int(11) NULL,
  `salary_type` varchar(20) NULL,
  `responsibility` varchar(100) NULL,
  `name` varchar(100) NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) NULL,
  `blood_group` varchar(15) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `dob` date NULL,
  `joining_date` date NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `is_view_on_web` tinyint(1) NULL DEFAULT '0',
  `other_info` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `school_id`, `national_id`, `salary_grade_id`, `salary_type`, `responsibility`, `name`, `email`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `is_view_on_web`, `other_info`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 3, 1, '35363636', 1, 'monthly', 'class nia', 'neyamul', '', '0465473663', 'dfsd', 'dfsd', 'male', 'a_positive', 'fds', '2019-05-27', '2019-06-26', NULL, 'photo-1559621931-sms.jpg', NULL, '', '', '', '', '', '', '', 1, '', 1, '2019-06-04 10:18:34', '2019-06-04 10:18:51', 1, 1),
(2, 20, 14, '', 3, 'monthly', 'teachar', 'adnan', '', '465473663', 'dfsd', 'dfsd', 'male', 'a_positive', '', '2019-07-09', '2019-07-23', NULL, NULL, NULL, '', '', '', '', '', '', '', 1, '', 1, '2019-07-06 23:55:26', '2019-09-03 11:59:38', 19, 19),
(3, 28, 1, '', 1, 'monthly', 'teachar', 'neyamul kobir', 'neyamulkn@gmail.com', '465473663343', '', '', 'male', 'a_positive', '', '1970-01-01', '2019-07-09', NULL, NULL, NULL, '', '', '', '', '', '', '', 0, '', 1, '2019-07-09 07:52:58', '2019-08-25 12:52:54', 1, 1),
(4, 35, 18, '', 4, 'monthly', 'techar', 'teacharke', '', '45345345', '', '', 'male', 'b_positive', '', '2019-07-09', '2019-07-24', NULL, NULL, NULL, '', '', '', '', '', '', '', 1, '', 1, '2019-07-11 13:07:52', '0000-00-00 00:00:00', 1, 0),
(5, 41, 18, NULL, 0, '', '', 'neyamul kobir', 'neyamulkn@gmail.com', '465473663535', NULL, NULL, 'male', NULL, NULL, '0000-00-00', '2019-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, '2019-07-11 10:39:53', '2019-07-11 10:39:53', 1, 1),
(6, 44, 18, NULL, 0, '', '', 'neyamul kobir', 'neyamulkn@gmail.com', '465473663453453', NULL, NULL, 'male', NULL, NULL, '0000-00-00', '2019-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2019-08-07 05:54:19', '2019-08-07 05:54:19', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendances`
--

CREATE TABLE `teacher_attendances` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `teacher_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `month` varchar(10) NULL,
  `year` varchar(10) NULL,
  `day_1` varchar(1) DEFAULT NULL,
  `day_2` varchar(1) DEFAULT NULL,
  `day_3` varchar(1) DEFAULT NULL,
  `day_4` varchar(1) DEFAULT NULL,
  `day_5` varchar(1) DEFAULT NULL,
  `day_6` varchar(1) DEFAULT NULL,
  `day_7` varchar(1) DEFAULT NULL,
  `day_8` varchar(1) DEFAULT NULL,
  `day_9` varchar(1) DEFAULT NULL,
  `day_10` varchar(1) DEFAULT NULL,
  `day_11` varchar(1) DEFAULT NULL,
  `day_12` varchar(1) DEFAULT NULL,
  `day_13` varchar(1) DEFAULT NULL,
  `day_14` varchar(1) DEFAULT NULL,
  `day_15` varchar(1) DEFAULT NULL,
  `day_16` varchar(1) DEFAULT NULL,
  `day_17` varchar(1) DEFAULT NULL,
  `day_18` varchar(1) DEFAULT NULL,
  `day_19` varchar(1) DEFAULT NULL,
  `day_20` varchar(1) DEFAULT NULL,
  `day_21` varchar(1) DEFAULT NULL,
  `day_22` varchar(1) DEFAULT NULL,
  `day_23` varchar(1) DEFAULT NULL,
  `day_24` varchar(1) DEFAULT NULL,
  `day_25` varchar(1) DEFAULT NULL,
  `day_26` varchar(1) DEFAULT NULL,
  `day_27` varchar(1) DEFAULT NULL,
  `day_28` varchar(1) DEFAULT NULL,
  `day_29` varchar(1) DEFAULT NULL,
  `day_30` varchar(1) DEFAULT NULL,
  `day_31` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_attendances`
--

INSERT INTO `teacher_attendances` (`id`, `school_id`, `teacher_id`, `academic_year_id`, `month`, `year`, `day_1`, `day_2`, `day_3`, `day_4`, `day_5`, `day_6`, `day_7`, `day_8`, `day_9`, `day_10`, `day_11`, `day_12`, `day_13`, `day_14`, `day_15`, `day_16`, `day_17`, `day_18`, `day_19`, `day_20`, `day_21`, `day_22`, `day_23`, `day_24`, `day_25`, `day_26`, `day_27`, `day_28`, `day_29`, `day_30`, `day_31`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 2, '06', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-06-26 11:37:12', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `text_messages`
--

CREATE TABLE `text_messages` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `role_id` int(11) NULL,
  `sender_role_id` int(11) NULL,
  `receivers` text,
  `academic_year_id` int(11) NULL,
  `sms_gateway` varchar(20) NULL,
  `sms_type` varchar(50) NULL COMMENT '1. general, 2. Attendance, 3. Due Fee, 4. Result ',
  `body` text,
  `absent_date` date DEFAULT NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NULL,
  `name` varchar(120) NULL,
  `slug` varchar(120) NULL,
  `color_code` varchar(10) NULL,
  `description` text,
  `is_active` tinyint(1) NULL COMMENT '1 = Active, 0 = Inactive',
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `color_code`, `description`, `is_active`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'SlateGray ', 'slate-gray', '#2A3F54', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(2, 'Black ', 'black', '#23282d', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(3, 'LightSeaGreen ', 'light-sea-green', '#20B2AA', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(4, 'MediumPurple ', 'medium-purple', '#9370DB', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(5, 'Navy Blue', 'navy-blue', '#001f67', 'cbcvbced', 1, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(6, 'RebeccaPurple ', 'rebecca-purple', '#663399', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(7, 'Red', 'red', '#e80000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(8, 'DodgerBlue', 'dodger-blue', '#1E90FF', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(9, 'Maroon', 'maroon', '#800000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(10, 'DarkOrange', 'dark-orange', '#FF8C00', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(11, 'DeepPink', 'deep-pink', '#FF1493', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(12, 'LimeGreen', 'lime-green', '#32CD32', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `invoice_id` int(11) NULL,
  `amount` decimal(10,2) NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `pum_first_name` varchar(50) DEFAULT NULL,
  `pum_email` varchar(50) DEFAULT NULL,
  `pum_phone` varchar(20) DEFAULT NULL,
  `stripe_card_number` varchar(50) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `school_id`, `academic_year_id`, `invoice_id`, `amount`, `payment_method`, `bank_name`, `cheque_no`, `transaction_id`, `payment_date`, `pum_first_name`, `pum_email`, `pum_phone`, `stripe_card_number`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, '0.00', 'cash', '', '', NULL, '2019-08-26', NULL, NULL, NULL, NULL, '', 1, '2019-08-26 09:56:15', '0000-00-00 00:00:00', 1, 0),
(2, 1, 1, 3, '50.00', 'cash', '', '', NULL, '2019-09-24', NULL, NULL, NULL, NULL, '', 1, '2019-09-24 21:00:41', '0000-00-00 00:00:00', 1, 0),
(3, 1, 1, 4, '50.00', 'cash', '', '', NULL, '2019-09-24', NULL, NULL, NULL, NULL, '', 1, '2019-09-24 21:01:34', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 5, '0.00', 'cash', '', '', NULL, '2019-09-24', NULL, NULL, NULL, NULL, '', 1, '2019-09-24 21:02:31', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 6, '0.00', 'cash', '', '', NULL, '2019-10-17', NULL, NULL, NULL, NULL, '', 1, '2019-10-17 17:32:04', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transport_members`
--

CREATE TABLE `transport_members` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `user_id` int(11) NULL,
  `route_id` int(11) NULL,
  `route_stop_id` int(11) NULL,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NULL,
  `role_id` int(11) NULL,
  `school_id` int(11) NULL,
  `ref_id` int(11) DEFAULT NULL,
  `password` varchar(100) NULL,
  `temp_password` varchar(255) DEFAULT NULL,
  `username` varchar(50) NULL,
  `reset_key` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT '1' COMMENT '1= Active, 0 = InActive',
  `last_logged_in` datetime NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL DEFAULT '0',
  `modified_by` int(11) NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `school_id`, `ref_id`, `password`, `temp_password`, `username`, `reset_key`, `status`, `last_logged_in`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 0, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'superadmin', NULL, 1, '2019-12-23 05:22:15', '2013-11-15 20:33:03', '2018-11-30 14:13:42', 0, 1),
(49, 2, 3, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'neyamulkn', NULL, 0, '0000-00-00 00:00:00', '2019-09-07 08:30:37', '2019-09-07 08:30:37', 0, 0),
(3, 5, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'teachar', NULL, 1, '2019-09-28 16:39:09', '2019-06-04 10:18:34', '0000-00-00 00:00:00', 1, 0),
(11, 4, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'neyamul21', NULL, 1, '2019-07-06 11:41:29', '2019-07-06 15:38:18', '0000-00-00 00:00:00', 1, 0),
(6, 2, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'neyamul12', NULL, 1, '0000-00-00 00:00:00', '2019-06-30 13:07:08', '0000-00-00 00:00:00', 1, 0),
(22, 4, 14, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'kobir12', NULL, 1, '0000-00-00 00:00:00', '2019-07-06 23:59:23', '0000-00-00 00:00:00', 19, 0),
(60, 2, 26, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin232', NULL, 0, '0000-00-00 00:00:00', '2019-12-23 05:20:37', '2019-12-23 05:20:37', 0, 0),
(24, 2, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin', NULL, 1, '2019-12-23 13:31:41', '2019-07-09 07:07:24', '2019-07-09 07:07:24', 0, 0),
(23, 2, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adminvb', NULL, 1, '2019-09-01 08:26:43', '2019-07-09 06:59:11', '2019-07-09 06:59:11', 0, 1),
(19, 2, 14, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adnan12', NULL, 1, '2019-09-26 08:19:29', '2019-07-06 19:49:40', '2019-07-06 19:49:40', 0, 0),
(20, 5, 14, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'morshed', NULL, 1, '0000-00-00 00:00:00', '2019-07-06 23:55:26', '0000-00-00 00:00:00', 19, 0),
(21, 3, 14, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'manik', NULL, 1, '0000-00-00 00:00:00', '2019-07-06 23:57:51', '0000-00-00 00:00:00', 19, 0),
(17, 2, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'manik22', NULL, 1, '0000-00-00 00:00:00', '2019-07-06 13:14:54', '2019-07-06 13:14:54', 0, 1),
(25, 5, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adminfsf', NULL, 1, '0000-00-00 00:00:00', '2019-07-09 07:13:41', '2019-07-09 07:13:41', 0, 0),
(26, 5, 2, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'neyamulfsfs', NULL, 0, '0000-00-00 00:00:00', '2019-07-09 07:40:02', '2019-07-09 07:40:02', 0, 0),
(27, 5, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adminfasdf', NULL, 1, '2019-08-19 11:30:49', '2019-07-09 07:47:29', '2019-07-09 07:47:29', 0, 0),
(28, 5, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin3434', NULL, 1, '2019-08-25 08:53:06', '2019-07-09 07:52:58', '2019-07-09 07:52:58', 0, 1),
(29, 2, 15, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'neyamulfsfew', NULL, 1, '0000-00-00 00:00:00', '2019-07-09 09:10:17', '2019-07-09 09:10:17', 0, 0),
(30, 2, 16, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'fasdfsd', NULL, 1, '0000-00-00 00:00:00', '2019-07-09 09:15:29', '2019-07-09 09:15:29', 0, 0),
(31, 4, 14, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'newstudent', NULL, 1, '2019-07-16 07:45:11', '2019-07-10 16:31:49', '0000-00-00 00:00:00', 19, 0),
(32, 4, 14, NULL, '1828baf0209ea35eb09fd75b9a0887f9', 'bmV3c3R1ZGVudA==', 'newstudent1', NULL, 1, '0000-00-00 00:00:00', '2019-07-10 16:35:23', '0000-00-00 00:00:00', 19, 0),
(33, 2, 17, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin121', NULL, 1, '2019-09-25 13:04:34', '2019-07-11 06:19:43', '2019-07-11 06:19:43', 0, 0),
(34, 2, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'neyamulzz', NULL, 1, '0000-00-00 00:00:00', '2019-07-11 07:33:50', '2019-07-11 07:33:50', 0, 0),
(35, 5, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'neamulkn21', NULL, 1, '0000-00-00 00:00:00', '2019-07-11 13:07:52', '0000-00-00 00:00:00', 1, 0),
(36, 4, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adnan1212', NULL, 1, '0000-00-00 00:00:00', '2019-07-11 10:18:17', '2019-07-11 10:18:17', 0, 0),
(38, 4, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adnan12b', NULL, 1, '0000-00-00 00:00:00', '2019-07-11 10:27:49', '2019-07-11 10:27:49', 0, 0),
(40, 4, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'bulk123', NULL, 1, '0000-00-00 00:00:00', '2019-07-11 14:38:28', '0000-00-00 00:00:00', 1, 0),
(41, 5, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'adnan12zx', NULL, 1, '0000-00-00 00:00:00', '2019-07-11 10:39:53', '2019-07-11 10:39:53', 0, 1),
(42, 2, 19, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'schoolnew', NULL, 1, '2019-08-06 07:54:07', '2019-08-06 06:54:02', '2019-08-06 06:54:02', 0, 0),
(43, 4, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin12134', NULL, 1, '0000-00-00 00:00:00', '2019-08-06 07:57:38', '2019-08-06 07:57:38', 0, 0),
(44, 5, 18, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'student12', NULL, 1, '0000-00-00 00:00:00', '2019-08-07 05:54:19', '2019-08-07 05:54:19', 0, 0),
(45, 4, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'neyamulkn23', NULL, 1, '2019-09-01 08:25:25', '2019-08-19 11:35:25', '2019-08-19 11:35:25', 0, 1),
(46, 4, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'student', NULL, 1, '0000-00-00 00:00:00', '2019-08-25 12:38:15', '2019-08-25 12:38:15', 0, 0),
(47, 2, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'ref_user', NULL, 0, '0000-00-00 00:00:00', '2019-09-07 07:11:45', '2019-09-07 07:11:45', 0, 0),
(48, 2, 2, 4, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'referral', NULL, 1, '2019-09-07 09:03:03', '2019-09-07 08:20:21', '2019-09-07 08:20:21', 0, 0),
(50, 2, 4, 3, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'register', NULL, 1, '2019-09-08 08:59:55', '2019-09-07 08:45:52', '2019-09-07 08:45:52', 0, 0),
(51, 2, 0, 5, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'refuser', NULL, 0, '0000-00-00 00:00:00', '2019-09-07 08:54:44', '2019-09-07 08:54:44', 0, 0),
(52, 2, 20, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin44', NULL, 0, '0000-00-00 00:00:00', '2019-09-08 07:50:08', '2019-09-08 07:50:08', 0, 0),
(53, 2, 21, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin54', NULL, 1, '0000-00-00 00:00:00', '2019-09-08 08:09:54', '2019-09-08 08:09:54', 0, 0),
(54, 2, 22, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'neyamul32', NULL, 0, '0000-00-00 00:00:00', '2019-09-08 08:15:30', '2019-09-08 08:15:30', 0, 0),
(55, 2, 23, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin876', NULL, 1, '0000-00-00 00:00:00', '2019-09-08 08:19:00', '2019-09-08 08:19:00', 0, 0),
(56, 2, 0, 5, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'newref', NULL, 0, '2019-09-08 09:07:24', '2019-09-08 09:04:52', '2019-09-08 09:04:52', 0, 0),
(57, 2, 0, 6, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'manik11', NULL, 1, '2019-09-08 09:21:07', '2019-09-08 09:14:02', '2019-09-08 09:14:02', 0, 0),
(58, 2, 24, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'testschool1', NULL, 1, '0000-00-00 00:00:00', '2019-09-08 09:15:58', '2019-09-08 09:15:58', 0, 0),
(59, 2, 25, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin22', NULL, 1, '0000-00-00 00:00:00', '2019-09-08 11:21:56', '2019-09-08 11:21:56', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `number` varchar(100) NULL,
  `model` varchar(100) DEFAULT NULL,
  `driver` varchar(100) DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `is_allocated` tinyint(1) NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NULL,
  `school_id` int(11) NULL,
  `academic_year_id` int(11) NULL,
  `role_id` int(11) NULL,
  `user_id` int(11) NULL,
  `name` varchar(100) NULL,
  `phone` varchar(20) DEFAULT NULL,
  `coming_from` varchar(100) DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NULL,
  `created_at` datetime NULL,
  `modified_at` datetime NULL,
  `created_by` int(11) NULL,
  `modified_by` int(11) NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `fees_amount`
--
ALTER TABLE `fees_amount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `final_results`
--
ALTER TABLE `final_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `global_setting`
--
ALTER TABLE `global_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `guardian_feedbacks`
--
ALTER TABLE `guardian_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `income_heads`
--
ALTER TABLE `income_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mark_emails`
--
ALTER TABLE `mark_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mark_smses`
--
ALTER TABLE `mark_smses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `message_relationships`
--
ALTER TABLE `message_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `online_exam_question`
--
ALTER TABLE `online_exam_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD UNIQUE KEY `purchase_code` (`purchase_code`);

--
-- Indexes for table `referral_users`
--
ALTER TABLE `referral_users`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `route_stops`
--
ALTER TABLE `route_stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `salary_grades`
--
ALTER TABLE `salary_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `salary_payments`
--
ALTER TABLE `salary_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_name` (`school_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `system_admin`
--
ALTER TABLE `system_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `text_messages`
--
ALTER TABLE `text_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees_amount`
--
ALTER TABLE `fees_amount`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `final_results`
--
ALTER TABLE `final_results`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_setting`
--
ALTER TABLE `global_setting`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guardian_feedbacks`
--
ALTER TABLE `guardian_feedbacks`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostel_members`
--
ALTER TABLE `hostel_members`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income_heads`
--
ALTER TABLE `income_heads`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=860;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mark_emails`
--
ALTER TABLE `mark_emails`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark_smses`
--
ALTER TABLE `mark_smses`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_relationships`
--
ALTER TABLE `message_relationships`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_exam_question`
--
ALTER TABLE `online_exam_question`
  MODIFY `question_id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT for table `referral_users`
--
ALTER TABLE `referral_users`
  MODIFY `ref_id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_stops`
--
ALTER TABLE `route_stops`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary_grades`
--
ALTER TABLE `salary_grades`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_payments`
--
ALTER TABLE `salary_payments`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `student_activities`
--
ALTER TABLE `student_activities`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_admin`
--
ALTER TABLE `system_admin`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `text_messages`
--
ALTER TABLE `text_messages`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport_members`
--
ALTER TABLE `transport_members`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
