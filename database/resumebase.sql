-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 06:10 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resumebase`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_data`
--

CREATE TABLE `additional_data` (
  `ADDTNL_ID` int(11) NOT NULL,
  `STDNT_ID` int(11) DEFAULT NULL,
  `DSCRPTN` varchar(200) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additional_data`
--

INSERT INTO `additional_data` (`ADDTNL_ID`, `STDNT_ID`, `DSCRPTN`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'I know about C programing , c++ programming, Html, css, javascript and also worked on linux operating system.', '2020-01-10 07:59:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `educational_data`
--

CREATE TABLE `educational_data` (
  `DCTN_ID` int(11) NOT NULL,
  `STDNT_ID` int(11) DEFAULT NULL,
  `LVL_NM` varchar(150) DEFAULT NULL,
  `CLLG_NM` varchar(150) DEFAULT NULL,
  `SSN` varchar(50) DEFAULT NULL,
  `CGPA` varchar(5) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educational_data`
--

INSERT INTO `educational_data` (`DCTN_ID`, `STDNT_ID`, `LVL_NM`, `CLLG_NM`, `SSN`, `CGPA`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'Bachelor of Engineering (B.E), Computer Science & Engineering ', 'Rajiv Gandhi Technical University,Bhopal', '2016-2020', '7.20', '2020-01-10 07:49:36', '0000-00-00 00:00:00'),
(2, 1, 'XII (Senior Secondary), Science ', 'S.B.Mills Sr. Sec. School', '2015 - 2016', '7.8', '2020-01-10 07:49:36', '0000-00-00 00:00:00'),
(3, 1, 'X (Secondary) ', 'S.B.Mills Sr. Sec. School', '2013 - 2014', '7.8', '2020-01-10 07:50:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `internship_data`
--

CREATE TABLE `internship_data` (
  `NTRNSHP_ID` int(11) NOT NULL,
  `STDNT_ID` int(11) DEFAULT NULL,
  `PST` varchar(100) DEFAULT NULL,
  `CMPNY_NM` varchar(150) DEFAULT NULL,
  `DSCRPTN` varchar(200) DEFAULT NULL,
  `PRD` varchar(50) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internship_data`
--

INSERT INTO `internship_data` (`NTRNSHP_ID`, `STDNT_ID`, `PST`, `CMPNY_NM`, `DSCRPTN`, `PRD`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'Web Developer', 'Mydea Venture Private Limited (Delhi)', 'At Mydea Venture I worked as a web developer and work in the development of web applications. here I worked on the project from scratch for developing a web application like ERP system.', 'jan 2019 - june 2019', '2020-01-10 07:52:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_data`
--

CREATE TABLE `personal_data` (
  `RSM_ID` int(11) NOT NULL,
  `STDNT_NM` varchar(100) DEFAULT NULL,
  `STDNT_ML` varchar(100) DEFAULT NULL,
  `STDNT_MBL` varchar(15) DEFAULT NULL,
  `STDNT_CTY` varchar(100) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_data`
--

INSERT INTO `personal_data` (`RSM_ID`, `STDNT_NM`, `STDNT_ML`, `STDNT_MBL`, `STDNT_CTY`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 'Rishabh Pandey', 'pandey.rajat05@gmail.com', '9810160562', 'Bhopal', '2020-01-10 07:46:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `skill_data`
--

CREATE TABLE `skill_data` (
  `SKLL_ID` int(11) NOT NULL,
  `STDNT_ID` int(11) DEFAULT NULL,
  `SKLL_NM` varchar(100) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill_data`
--

INSERT INTO `skill_data` (`SKLL_ID`, `STDNT_ID`, `SKLL_NM`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'HTML', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(2, 1, 'CSS', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(3, 1, 'Javascript', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(4, 1, 'Jquery', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(5, 1, 'PHP', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(6, 1, 'MYSql', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(7, 1, 'Laravel', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(8, 1, 'Vue js', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(9, 1, 'Wordpress', '2020-01-10 07:57:46', '0000-00-00 00:00:00'),
(10, 1, 'CodeIgniter', '2020-01-10 07:57:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_data`
--

CREATE TABLE `training_data` (
  `TRNNG_ID` int(11) NOT NULL,
  `STDNT_ID` int(11) DEFAULT NULL,
  `TRNNG_NM` varchar(150) DEFAULT NULL,
  `NSTT_NM` varchar(150) DEFAULT NULL,
  `DSCRPTN` varchar(200) DEFAULT NULL,
  `PRD` varchar(50) NOT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_data`
--

INSERT INTO `training_data` (`TRNNG_ID`, `STDNT_ID`, `TRNNG_NM`, `NSTT_NM`, `DSCRPTN`, `PRD`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'Web Development', 'Appin Technology Lab ', 'Here I learn how to develop websites and web applications. and here I learn web development technologies like HTML, css3, bootstrap4, MySQL, PHP and many more.', 'Dec 2017 - Mar 2018', '2020-01-10 07:53:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `worksample_data`
--

CREATE TABLE `worksample_data` (
  `WRK_ID` int(11) NOT NULL,
  `STDNT_ID` int(11) DEFAULT NULL,
  `PRFL_NM` varchar(100) DEFAULT NULL,
  `PRFL_LNK` varchar(1000) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worksample_data`
--

INSERT INTO `worksample_data` (`WRK_ID`, `STDNT_ID`, `PRFL_NM`, `PRFL_LNK`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 1, 'Github', 'https://github.com/Rishabh0507/Project-E2', '2020-01-10 07:58:55', '0000-00-00 00:00:00'),
(2, 1, 'Portfolio', 'https://github.com/Rishabh0507/VuejsProject', '2020-01-10 07:58:55', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_data`
--
ALTER TABLE `additional_data`
  ADD PRIMARY KEY (`ADDTNL_ID`);

--
-- Indexes for table `educational_data`
--
ALTER TABLE `educational_data`
  ADD PRIMARY KEY (`DCTN_ID`),
  ADD KEY `STDNT_ID` (`STDNT_ID`);

--
-- Indexes for table `internship_data`
--
ALTER TABLE `internship_data`
  ADD PRIMARY KEY (`NTRNSHP_ID`),
  ADD KEY `STDNT_ID` (`STDNT_ID`);

--
-- Indexes for table `personal_data`
--
ALTER TABLE `personal_data`
  ADD PRIMARY KEY (`RSM_ID`);

--
-- Indexes for table `skill_data`
--
ALTER TABLE `skill_data`
  ADD PRIMARY KEY (`SKLL_ID`),
  ADD KEY `STDNT_ID` (`STDNT_ID`);

--
-- Indexes for table `training_data`
--
ALTER TABLE `training_data`
  ADD PRIMARY KEY (`TRNNG_ID`),
  ADD KEY `STDNT_ID` (`STDNT_ID`);

--
-- Indexes for table `worksample_data`
--
ALTER TABLE `worksample_data`
  ADD PRIMARY KEY (`WRK_ID`),
  ADD KEY `STDNT_ID` (`STDNT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_data`
--
ALTER TABLE `additional_data`
  MODIFY `ADDTNL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `educational_data`
--
ALTER TABLE `educational_data`
  MODIFY `DCTN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `internship_data`
--
ALTER TABLE `internship_data`
  MODIFY `NTRNSHP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_data`
--
ALTER TABLE `personal_data`
  MODIFY `RSM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skill_data`
--
ALTER TABLE `skill_data`
  MODIFY `SKLL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `training_data`
--
ALTER TABLE `training_data`
  MODIFY `TRNNG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `worksample_data`
--
ALTER TABLE `worksample_data`
  MODIFY `WRK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `educational_data`
--
ALTER TABLE `educational_data`
  ADD CONSTRAINT `educational_data_ibfk_1` FOREIGN KEY (`STDNT_ID`) REFERENCES `personal_data` (`RSM_ID`);

--
-- Constraints for table `internship_data`
--
ALTER TABLE `internship_data`
  ADD CONSTRAINT `internship_data_ibfk_1` FOREIGN KEY (`STDNT_ID`) REFERENCES `personal_data` (`RSM_ID`);

--
-- Constraints for table `skill_data`
--
ALTER TABLE `skill_data`
  ADD CONSTRAINT `skill_data_ibfk_1` FOREIGN KEY (`STDNT_ID`) REFERENCES `personal_data` (`RSM_ID`);

--
-- Constraints for table `training_data`
--
ALTER TABLE `training_data`
  ADD CONSTRAINT `training_data_ibfk_1` FOREIGN KEY (`STDNT_ID`) REFERENCES `personal_data` (`RSM_ID`);

--
-- Constraints for table `worksample_data`
--
ALTER TABLE `worksample_data`
  ADD CONSTRAINT `worksample_data_ibfk_1` FOREIGN KEY (`STDNT_ID`) REFERENCES `personal_data` (`RSM_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
