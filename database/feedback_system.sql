-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 12:20 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `Date`) VALUES
(5, 'dfd', 'sanjeevtech2@gmail.com', 9015501897, 'ddd', '2016-06-29 17:53:28'),
(6, 'dfd', 'sanjeevtech2@gmail.com', 9015501897, 'ddd', '2016-06-29 17:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `programme` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `department` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_alias`, `Name`, `designation`, `programme`, `semester`, `department`, `email`, `password`, `mobile`, `date`, `status`) VALUES
(7, 'ravm5454', 'select faculty', 'Associate Professior', 'B.Tech', 'i', 'CSE', 'selectfaculty@gmail.com', 'faculty', 9015501998, '2016-07-13 14:30:53', 0),
(8, 'sanj9015', 'sanjeev kumar', 'Developer', 'B.tech', 'ii', 'cse', 'sanjeevtech2@gmail.com', '2ddea1', 9015501897, '2016-07-13 14:37:35', 0),
(11, 'sanj9015', 'sanjeev kuma', 'aaaa', 'B.tec', 'i', 'eee', 'sanjeevtechh2@gmail.com', 'dfdfd', 901550189, '2016-07-13 14:40:35', 0),
(12, 'bala1234', 'bala ambedkar', 'hod', 'c', 'viii', 'cse', 'bala@gmail.com', 'bala', 1234567892, '2020-02-18 11:28:31', 0),
(13, 'kira7989', 'kiran', 'hod', 'c', 'viii', 'CSE', 'kiran@gmail.com', 'kiran', 7989940865, '2020-02-19 11:31:53', 0),
(14, 'srin7998', 'srinivas', 'hod', 'c', 'viii', 'CSE', 'srinivas@gmail.com', 'srinu', 7998885786, '2020-02-19 11:54:07', 0),
(15, 'srav4654', 'sravani', 'mam', 'btech', 'viii', 'CSE', 'sra@gmail.com', 'sravs', 4654476455, '2020-07-02 16:11:48', 0),
(16, 'moun7659', 'mouni', 'mam', 'btech', 'viii', 'CSE', 'mouni@gmail.com', 'mouni', 7659998666, '2020-07-07 12:27:38', 0),
(17, 'liki7659', 'liki', 'mam', 'btech', 'viii', 'CSE', 'liki@gmail.com', 'liki', 7659998600, '2020-07-07 12:40:40', 0),
(18, 'hi7659', 'hi', 'mam', 'btech', 'i', 'CSE', 'hi@gmail.com', 'hi', 7659998655, '2020-07-07 12:45:49', 0),
(19, 'oh7659', 'oh', 'mam', 'btech', 'i', 'CSE', 'oh@gmail.com', 'oh', 7659998611, '2020-07-07 12:53:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` text NOT NULL,
  `faculty_id` text NOT NULL,
  `lol` enum('5','4','3','2','1') NOT NULL,
  `ball` enum('5','4','3','2','1') NOT NULL,
  `sell` enum('5','4','3','2','1') NOT NULL,
  `mall` enum('5','4','3','2','1') NOT NULL,
  `doll` enum('5','4','3','2','1') NOT NULL,
  `low` enum('5','4','3','2','1') NOT NULL,
  `high` enum('5','4','3','2','1') NOT NULL,
  `may` enum('5','4','3','2','1') NOT NULL,
  `june` enum('5','4','3','2','1') NOT NULL,
  `july` enum('5','4','3','2','1') NOT NULL,
  `aug` enum('5','4','3','2','1') NOT NULL,
  `sep` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `lol`, `ball`, `sell`, `mall`, `doll`, `low`, `high`, `may`, `june`, `july`, `aug`, `sep`, `What I liked about the course`, `Why I disliked about the course`, `date`) VALUES
(16, '', 'rav@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nddddddddddddd', 'aa', '2016-07-15'),
(17, '', 'rav@gmail.com', '5', '3', '1', '5', '5', '3', '3', '3', '3', '5', '5', '5', '\r\n', '\r\n', '2016-07-15'),
(18, '', 'rav@gmail.com', '5', '5', '5', '2', '1', '5', '5', '4', '5', '5', '5', '5', '\r\ndfdfdfdfdfd', '\r\n', '2016-07-17'),
(19, '', 'bala@gmail.com', '3', '3', '4', '4', '2', '3', '1', '1', '1', '1', '3', '4', '\r\nnothing', 'worst', '2020-02-18'),
(20, '', '', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'gfhgfh\r\n', 'ffhtf\r\n', '2020-02-20'),
(21, '', 'bala@gmail.com', '4', '4', '3', '4', '4', '4', '4', '4', '4', '4', '3', '3', '\r\nerege', '\r\ngeeee', '2020-02-21'),
(22, '', 'bala@gmail.com', '4', '4', '3', '4', '4', '4', '4', '4', '4', '4', '3', '3', '\r\nerege', '\r\ngeeee', '2020-02-21'),
(23, '', 'bala@gmail.com', '4', '4', '3', '4', '4', '4', '4', '4', '4', '4', '3', '3', '\r\nerege', '\r\ngeeee', '2020-02-21'),
(32, '', 'bala@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '2', '2', 'vsvs\r\n', '\r\nvsvsvsv', '2020-02-21'),
(33, '', 'srinivas@gmail.com', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '\r\nyaaaaaaaaaaaa', '\r\nyaaaaaaaaaa', '2020-02-21'),
(34, '', 'srinivas@gmail.com', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', 'yyyyyyyyyyy\r\n', 'sssssssssss\r\n', '2020-02-21'),
(35, '', 'srinivas@gmail.com', '2', '4', '4', '4', '4', '3', '3', '3', '2', '2', '1', '1', 'dog\r\n', 'god\r\n', '2020-02-21'),
(36, 'avinash123ankana@gmail.com', 'srinivas@gmail.com', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', 'gggggggggg\r\n', '\r\nnnnnnnnnnnnnn', '2020-02-22'),
(38, 'bunny@gmail.com', 'kiran@gmail.com', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '\r\nlove', 'u\r\n', '2020-02-25'),
(39, 'alekhya@gmai.com', 'srinivas@gmail.com', '4', '4', '4', '3', '3', '3', '3', '3', '3', '3', '3', '3', '\r\nhi', 'hrllo\r\n', '2020-02-25'),
(40, 'pra@gmail.com', 'bala@gmail.com', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '\r\nbala', '\r\nsravani', '2020-07-02'),
(41, 'pra@gmail.com', 'mouni@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'o\r\n', 'p\r\n', '2020-07-07'),
(42, 'pra@gmail.com', 'liki@gmail.com', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '\r\nd', 'dd\r\n', '2020-07-07'),
(43, '', 'srinivas@gmail.com', '4', '4', '4', '2', '2', '2', '2', '2', '2', '2', '2', '2', '\r\n00', '\r\n00', '2020-07-07'),
(44, '', 'srinivas@gmail.com', '5', '5', '5', '2', '2', '2', '2', '2', '2', '2', '1', '1', '77\r\n', '99\r\n', '2020-07-07'),
(45, '', 'srinivas@gmail.com', '5', '5', '5', '1', '1', '1', '1', '1', '1', '1', '5', '5', '\r\nuuuu', '\r\nuuuuuuu', '2020-07-07'),
(46, '', 'srinivas@gmail.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '\r\navi', 'avi\r\n', '2020-07-07'),
(47, 'avinash123ankana@gmail.com', 'bala@gmail.com', '5', '5', '5', '1', '1', '1', '1', '1', '1', '1', '5', '5', '\r\neeee', 'www\r\n', '2020-07-08'),
(48, '', 'bala@gmail.com', '4', '4', '4', '3', '3', '3', '3', '3', '3', '3', '4', '4', '\r\nm', '\r\nn', '2020-07-08'),
(49, '', 'kiran@gmail.com', '4', '4', '4', '2', '2', '2', '2', '2', '2', '2', '1', '1', '\r\noy', 'ah\r\n', '2020-07-08'),
(50, '', 'sra@gmail.com', '5', '5', '3', '2', '2', '2', '2', '2', '2', '2', '3', '3', '\r\nrrrrrrr', '\r\nhhhhhhhhh', '2020-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`notice_id`, `attachment`, `subject`, `Description`, `Date`) VALUES
(8, 'AteekCV_java (1).docx', 'aaaaa', 'dfdfdfd', '2016-07-03 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `kiet`
--

CREATE TABLE `kiet` (
  `id` int(11) NOT NULL,
  `faculty_id` text NOT NULL,
  `PLEASE ENTER YOUR INSTUTUTION NAME` text NOT NULL,
  `who r u` enum('5','4','3','2','1') NOT NULL,
  `what r u` enum('5','4','3','2','1') NOT NULL,
  `ok` enum('5','4','3','2','1') NOT NULL,
  `what  are` enum('5','4','3','2','1') NOT NULL,
  `single` enum('5','4','3','2','1') NOT NULL,
  `kids` enum('5','4','3','2','1') NOT NULL,
  `salary` enum('5','4','3','2','1') NOT NULL,
  `teacher` enum('5','4','3','2','1') NOT NULL,
  `hard` enum('5','4','3','2','1') NOT NULL,
  `smile` enum('5','4','3','2','1') NOT NULL,
  `best` enum('5','4','3','2','1') NOT NULL,
  `satisfy` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kiet`
--

INSERT INTO `kiet` (`id`, `faculty_id`, `PLEASE ENTER YOUR INSTUTUTION NAME`, `who r u`, `what r u`, `ok`, `what  are`, `single`, `kids`, `salary`, `teacher`, `hard`, `smile`, `best`, `satisfy`, `What I liked about the course`, `Why I disliked about the course`, `date`) VALUES
(1, 'bala@gmail.com', '', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'heloo', 'haaaaaaaaaaaaaaaai', '2020-02-22'),
(5, '', '\r\nkietw', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', 'tag\r\n', '\r\nmag', '2020-02-23'),
(6, '', 'kiet+\r\n', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '2', 'big\r\n', '\r\nboss', '2020-02-24'),
(7, '', '\r\nkiettt', '4', '4', '4', '1', '1', '1', '1', '1', '1', '1', '3', '3', '\r\nbbbbb', '\r\nssssss', '2020-02-25'),
(8, '', '\r\nkiettt', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nhaaa', '\r\nmaaaa', '2020-02-25'),
(9, '', '\r\nkietw', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '\r\nhhhhhhh', '\r\nerrrrrrrrrrrrrrrr', '2020-02-25'),
(10, '', 'upma\r\n', '5', '5', '5', '5', '5', '5', '1', '1', '1', '1', '1', '1', '\r\nbagundi', 'bale\r\n', '2020-06-15'),
(11, '', 'kiet\r\n', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', 'goods\r\n', '\r\nbads', '2020-07-02'),
(12, '', 'kiet\r\n', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '\r\nk', 'l\r\n', '2020-07-02'),
(13, '', '\r\nPG', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nHH', '\r\nHH', '2020-07-02'),
(16, '', 'G\r\n', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nh', '\r\no', '2020-07-02'),
(17, '', 'G', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nh', '\r\no', '2020-07-02'),
(18, '', '\r\nG', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nh', 'o\r\n', '2020-07-02'),
(19, '', '\r\nkiet', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', 'ra\r\n', '\r\npo', '2020-07-02'),
(20, '', 'kiet\r\n', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '\r\nra', 'po\r\n', '2020-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` text NOT NULL,
  `student_id` text NOT NULL,
  `q1` text NOT NULL,
  `q2` text NOT NULL,
  `q3` text NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `q7` int(11) NOT NULL,
  `q8` int(11) NOT NULL,
  `q9` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `student_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`) VALUES
('', '', '5', '5', '5', 4, 4, 5, 5, 5, 2),
('', '', '5', '5', '5', 4, 4, 5, 5, 5, 2),
('', '', '5', '5', '5', 4, 4, 5, 5, 5, 2),
('', '', '', '', '', 0, 0, 0, 0, 0, 0),
('', '', '', '', '', 0, 0, 0, 0, 0, 0),
('', '', '', '', '', 0, 0, 0, 0, 0, 0),
('', '', '', '', '', 0, 0, 0, 0, 0, 0),
('', '', '4', '2', '2', 2, 2, 2, 2, 2, 2),
('', '', '2', '2', '2', 2, 2, 2, 2, 2, 2),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 3),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 3),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 3),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 3),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '1', '1', '1', 1, 1, 1, 1, 1, 1),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 3),
('', '', '4', '4', '4', 4, 4, 4, 4, 4, 4),
('', '', '2', '2', '2', 2, 2, 2, 2, 2, 2),
('', '', '5', '4', '3', 2, 1, 1, 2, 3, 4),
('', '', '', '', '', 0, 0, 0, 0, 0, 0),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 1),
('', '', '2', '2', '2', 2, 2, 2, 2, 2, 2),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 1),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 1),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 1),
('', '', '3', '3', '3', 3, 3, 3, 3, 3, 3),
('', '', '1', '2', '1', 2, 1, 2, 1, 2, 1),
('', '', '1', '2', '1', 2, 1, 2, 1, 2, 1),
('', '', '2', '3', '2', 1, 3, 1, 5, 3, 4),
('', '', '3', '3', '5', 5, 2, 2, 2, 4, 4),
('', '', '3', '3', '5', 5, 2, 2, 2, 4, 4),
('', '', '3', '3', '5', 5, 2, 2, 2, 4, 4),
('', '', '3', '3', '3', 3, 3, 2, 2, 2, 2),
('', '', '1', '2', '3', 2, 3, 1, 3, 4, 5),
('', '', '3', '2', '1', 3, 4, 5, 3, 2, 1),
('', '', '4', '3', '2', 3, 2, 2, 2, 2, 2),
('', '', '4', '3', '2', 3, 2, 2, 2, 2, 2),
('', '', '4', '3', '2', 3, 2, 2, 2, 2, 2),
('', '', '1', '1', '1', 1, 2, 2, 2, 2, 2),
('', '', '4', '4', '3', 3, 1, 1, 3, 3, 4),
('', '', '4', '4', '3', 3, 1, 1, 3, 3, 4),
('', '', '4', '4', '3', 3, 1, 1, 3, 3, 4),
('', '', '3', '3', '3', 3, 2, 2, 2, 2, 1),
('', '', '4', '3', '4', 3, 4, 3, 4, 3, 1),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5),
('', '', '5', '5', '5', 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `labss`
--

CREATE TABLE `labss` (
  `id` text NOT NULL,
  `student_id` text NOT NULL,
  `q1` text NOT NULL,
  `q2` text NOT NULL,
  `q3` text NOT NULL,
  `q4` text NOT NULL,
  `q5` text NOT NULL,
  `q6` text NOT NULL,
  `q7` text NOT NULL,
  `q8` text NOT NULL,
  `q9` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labss`
--

INSERT INTO `labss` (`id`, `student_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`) VALUES
('', '', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('', '', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('', '', '4', '4', '4', '4', '4', '4', '4', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `labsss`
--

CREATE TABLE `labsss` (
  `id` text NOT NULL,
  `student_id` text NOT NULL,
  `q1` text NOT NULL,
  `q2` text NOT NULL,
  `q3` text NOT NULL,
  `q4` text NOT NULL,
  `q5` text NOT NULL,
  `q6` text NOT NULL,
  `q7` text NOT NULL,
  `q8` text NOT NULL,
  `q9` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labsss`
--

INSERT INTO `labsss` (`id`, `student_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`) VALUES
('', '', '4', '4', '4', '4', '4', '4', '4', '3', '3'),
('', '', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '3', '3', '3', '3', '3', '3', '3', '3', '3'),
('', '', '5', '4', '3', '2', '1', '2', '3', '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `programme`, `semester`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(10, 'sanjeev kumar', 'sanjeevtech2@gmail.com', '98d34c1758b15b5a359b69c2b08c5767', 9015501897, 'B.tech', '3rd', 'm', 'reading,playing', 'Jellyfish.jpg', '1961-09-15', '2147483647'),
(12, 'ravi', 'ravi@gmail.com', '63dd3e154ca6d948fc380fa576343ba6', 9015501897, 'M.Tech', 'ii', 'm', 'reading', 'Desert.jpg', '1965-10-15', '2016-07-13 15:52:01'),
(13, 'warda', 'warda@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 32457895212, 'BCA', 'ii', 'f', 'reading', 'Koala - Copy.jpg', '1965-10-06', '2016-07-17 15:39:08'),
(14, 'test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 989898989, 'MCA', 'i', 'm', 'reading,singin', 'Chrysanthemum.jpg', '1963-08-12', '2017-02-10 16:04:10'),
(20, 'prabhu', 'prabhu@gmail.com', 'dcddeca0df007ea104c728a160d509ea', 7659998663, 'B.Tech', 'viii', 'm', 'reading', 'pingu.jpg', '1955-10-14', '2020-02-26 10:24:55'),
(21, 'Ankana.Chandra phani sri Avinash', 'avinash123ankana@gmail.com', '3fca379b3f0e322b7b7967bfcfb948ad', 7799136333, 'B.Tech', 'viii', 'm', 'singin,playing', 'yuvi.jpg', '1964-05-10', '2020-02-26 10:36:40'),
(23, 'sai sowmya', 'bunny@gmail.com', 'd95679752134a2d9eb61dbd7b91c4bcc', 7659998699, 'B.Tech', 'viii', 'f', 'playing', 'bunny.jpg', '1964-08-13', '2020-02-26 10:41:23'),
(24, 'prabhu', 'pra@gmail.com', '3c24ca7afbc8766f1acb7d67893ec16d', 35343634634634, 'B.Tech', 'viii', 'm', 'phone charging', 'hii.jpg', '1967-12-18', '2020-07-02 15:53:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `kiet`
--
ALTER TABLE `kiet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kiet`
--
ALTER TABLE `kiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
