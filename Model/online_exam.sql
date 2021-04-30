-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 04:56 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_exam`
--
CREATE DATABASE IF NOT EXISTS `online_exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `online_exam`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'elmztab@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `profile id` int(8) NOT NULL,
  `course code` varchar(8) NOT NULL,
  `exam id` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_code` varchar(8) NOT NULL,
  `course_title` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `exam_id` varchar(50) NOT NULL,
  `students` varchar(1000) NOT NULL,
  `d_quiz` date DEFAULT NULL,
  `q_quiz` varchar(100) DEFAULT NULL,
  `a_quiz` varchar(100) DEFAULT NULL,
  `r_quiz` varchar(100) NOT NULL,
  `d_mid` date NOT NULL,
  `q_mid` varchar(100) NOT NULL,
  `a_mid` varchar(100) NOT NULL,
  `r_mid` varchar(100) NOT NULL,
  `d_final` date NOT NULL,
  `q_final` varchar(100) NOT NULL,
  `a_final` varchar(100) NOT NULL,
  `r_final` varchar(100) NOT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_title`, `email`, `exam_id`, `students`, `d_quiz`, `q_quiz`, `a_quiz`, `r_quiz`, `d_mid`, `q_mid`, `a_mid`, `r_mid`, `d_final`, `q_final`, `a_final`, `r_final`) VALUES
('101', 'Computer Fundamentals', 'elmztab@gmail.com', '0', '', '2021-05-06', '', '', '', '2021-06-23', './upload/press.docx', './upload/Signature.jpg', '', '0000-00-00', '', '', ''),
('102', 'Introduction to Programming', 'elmztab@gmail.com', '0', 'keyasarker08@gmail.com,kawshikdebanth@yahoo.com', '2021-05-28', './upload/press.docx', '', '', '2021-07-29', './upload/18.09.18_Press release1.pdf', './upload/Signature - Copy.jpg', '', '0000-00-00', '', '', ''),
('401', 'Artificial Intelligence', 'elmztab@gmail.com', '0', 'anika223@gmail.com,keyasarker08@gmail.com', '0000-00-00', '', '', '', '2021-10-28', './upload/press.docx', './upload/Signature.jpg', '', '0000-00-00', '', './upload/press.docx', '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(8) NOT NULL,
  `exam type` varchar(20) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `deadline` date NOT NULL,
  `question` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `exam type`, `course_code`, `deadline`, `question`, `status`) VALUES
(608, 'M', '101', '2021-05-08', './upload/18.09.18_Press release.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `profile id` int(8) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `dept` text NOT NULL,
  PRIMARY KEY (`profile id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `profile id` int(8) NOT NULL,
  `course code` varchar(8) NOT NULL,
  `exam id` int(8) NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Name` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `department` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(12) NOT NULL,
  `password` varchar(10) NOT NULL,
  `session` tinyint(1) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `gender`, `department`, `email`, `mobile`, `password`, `session`) VALUES
('Kawshik Debnath', 'M', 'Computer Science and Engineeri', 'kawshikdebnath@yahoo.com', 1842717263, 'abcd4321', 0),
('Keya', 'F', 'Computer Science', 'keyasarker08@gmail.com', 1675887769, 'abcd4321', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
