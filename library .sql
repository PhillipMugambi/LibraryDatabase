-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 02:58 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_id` int(200) NOT NULL,
  `book_name` varchar(20) DEFAULT NULL,
  `book_price` int(200) DEFAULT NULL,
  `book_genre` varchar(20) DEFAULT NULL,
  `book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_id`, `book_name`, `book_price`, `book_genre`, `book_status`) VALUES
(1, 'example', 300, 'HISTORY', 'borrowed'),
(2, 'example', 300, 'HISTORY', 'borrowed'),
(3, 'example', 300, 'HISTORY', 'Available'),
(4, 'example', 300, 'HISTORY', 'borrowed'),
(6565, 'Living Things', 450, 'SCIENCE', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `book_id` int(200) DEFAULT NULL,
  `book_name` varchar(20) DEFAULT NULL,
  `issued_date` varchar(20) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `adm_No` int(200) DEFAULT NULL,
  `book_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`book_id`, `book_name`, `issued_date`, `return_date`, `adm_No`, `book_status`) VALUES
(2, 'example', '2021-09-02 00:00:00', '2021-09-09 00:00:00', 5446, 'Available'),
(3, 'example', '2022-02-02 00:00:00', '2022-02-10 00:00:00', 1234, 'Available'),
(2, 'example', '2022-02-01 00:00:00', '2021-02-02 00:00:00', 3543, 'Available'),
(6565, 'Living Things', '2022-02-01 00:00:00', '2023-02-10 00:00:00', 87678, 'Available'),
(6565, 'Living Things', '2021-02-01 00:00:00', '2022-02-04 00:00:00', 5446, 'Available'),
(2, 'example', '2021-02-01 00:00:00', '2022-02-09 00:00:00', 1234, 'Available'),
(3, 'example', '2021-02-01 00:00:00', '2022-02-09 00:00:00', 1234, 'Available'),
(1, 'example', '2021-02-01 00:00:00', '2022-02-09 00:00:00', 1234, 'borrowed'),
(2, 'example', '2022-02-10 00:00:00', '2022-02-16 00:00:00', 5446, 'borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `ID` int(100) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `course`) VALUES
(1, 'ICT'),
(2, 'COMPUTER_SCIENCE'),
(3, 'CATERING');

-- --------------------------------------------------------

--
-- Table structure for table `returned_books`
--

CREATE TABLE `returned_books` (
  `book_name` varchar(20) DEFAULT NULL,
  `adm_No` int(200) DEFAULT NULL,
  `book_id` int(200) DEFAULT NULL,
  `issue_date` varchar(200) NOT NULL,
  `return_date` varchar(200) NOT NULL,
  `book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_books`
--

INSERT INTO `returned_books` (`book_name`, `adm_No`, `book_id`, `issue_date`, `return_date`, `book_status`) VALUES
('example', 87678, 1, 'Nov 14, 2020', 'Nov 20, 2020', 'Available'),
('example', 1234, 2, 'Nov 6, 2020', 'Nov 26, 2020', 'Available'),
('example', 233, 4, 'Nov 6, 2020', 'Nov 26, 2020', 'Available'),
('example', 230, 2, 'Dec 10, 2020', 'Dec 17, 2020', 'Available'),
('example', 28138, 3, 'Dec 4, 2020', 'Dec 17, 2020', 'Available'),
('example', 1234, 4, 'Dec 3, 2020', 'Dec 16, 2020', 'Available'),
('example', 3543, 1, '2021-09-03 00:00:00', '2021-09-17 00:00:00', 'Available'),
('example', 1234, 3, '2022-01-13 00:00:00', '2022-01-20 00:00:00', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `roll_no` int(100) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `Course` varchar(20) DEFAULT NULL,
  `adm_No` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`roll_no`, `first_name`, `last_name`, `Course`, `adm_No`) VALUES
(1, 'Brian', 'Mwambia', 'ICT', 233),
(2, 'Phillip', 'Mugambi', 'COMPUTER_SCIENCE', 3543),
(3, 'Erick', 'Mutugi', 'ICT', 87678),
(4, 'Dennis', 'Mwenda', NULL, 5446),
(5, 'clinton', 'mbaka', NULL, 1234),
(6, 'clinton', 'mbaka', NULL, 1234),
(7, 'clinton', 'mbaka', NULL, 1234),
(8, 'clinton', 'mbaka', NULL, 1234),
(9, 'phillipp', 'WEER', NULL, 45455),
(10, 'Collins', 'mwenda', NULL, 230),
(11, 'erick', 'bundi', NULL, 28138),
(12, 'JKJKJK', 'NNMN', NULL, 8989),
(13, 'maxwell', 'mwenda', NULL, 344);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `ID` int(100) NOT NULL,
  `genre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`ID`, `genre`) VALUES
(1, 'HISTORY'),
(2, 'SCIENCE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('Phillip', '2020'),
('Magenka', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6566;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `roll_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
