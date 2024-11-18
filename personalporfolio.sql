-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2024 at 07:50 AM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personalporfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
CREATE TABLE IF NOT EXISTS `educations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Degree` varchar(100) NOT NULL,
  `FieldOfStudy` varchar(100) DEFAULT NULL,
  `School` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `GraduationDate` date DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`ID`, `Degree`, `FieldOfStudy`, `School`, `Location`, `GraduationDate`, `createdAt`, `updatedAt`) VALUES
(1, 'Bachelor', 'Information Technology', 'National Technical Training Institute', 'Phnom Penh', '2025-01-01', '2024-10-09 03:27:10', '2024-10-09 03:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `personalinfos`
--

DROP TABLE IF EXISTS `personalinfos`;
CREATE TABLE IF NOT EXISTS `personalinfos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `LinkedInProfile` varchar(200) DEFAULT NULL,
  `GitHubProfile` varchar(200) DEFAULT NULL,
  `YouTubeProfile` varchar(200) DEFAULT NULL,
  `FacebookProfile` varchar(200) DEFAULT NULL,
  `Website` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Summary` text,
  `ImageFileName` varchar(255) NOT NULL,
  `ImagePath` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfos`
--

INSERT INTO `personalinfos` (`ID`, `FullName`, `Email`, `Phone`, `LinkedInProfile`, `GitHubProfile`, `YouTubeProfile`, `FacebookProfile`, `Website`, `Address`, `Summary`, `ImageFileName`, `ImagePath`, `createdAt`, `updatedAt`) VALUES
(1, 'Nov Vanna', 'vannanov385@gmail.com', '068676213', NULL, NULL, NULL, NULL, NULL, 'Phnom Penh', 'A web developer with three years of experience specializing in HTML5, JavaScript, PHP, MySQL, database design, and front-end development.', 'FileImage-1728443753193.jpg', 'uploads\\FileImage-1728443753193.jpg', '2024-10-09 03:15:53', '2024-10-09 03:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` text,
  `Technologies` varchar(200) DEFAULT NULL,
  `ProjectLink` varchar(200) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ImageFileName` varchar(255) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ID`, `Title`, `Description`, `Technologies`, `ProjectLink`, `StartDate`, `EndDate`, `ImageFileName`, `ImagePath`, `createdAt`, `updatedAt`) VALUES
(1, 'E-commerce Website', 'An ecommerce website is an online store where customers can find products, browse offerings, and place purchases online.', 'React JS and Tailwind CSS', 'https://vanna-techshop.netlify.app/', '2024-05-06', '2024-05-08', 'FileImage-1728444085058.png', 'uploads\\FileImage-1728444085058.png', '2024-10-09 03:21:25', '2024-10-09 03:21:25'),
(2, 'Movies Website', 'Best Film website examples for your inspiration. Get inspired by the best website examples with full-page video recordings.', 'React JS and Tailwind CSS', 'https://vanna-movies.netlify.app', '2023-11-20', '2023-11-22', 'FileImage-1728444334552.png', 'uploads\\FileImage-1728444334552.png', '2024-10-09 03:25:34', '2024-10-09 03:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SkillName` varchar(100) NOT NULL,
  `Proficiency` enum('Beginner','Intermediate','Advance','Expert') DEFAULT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`ID`, `SkillName`, `Proficiency`, `createdAt`, `updatedAt`) VALUES
(1, 'front End Developer', 'Advance', '2024-10-09 03:28:13', '2024-10-09 03:28:13'),
(2, 'Back End Developer', 'Intermediate', '2024-10-09 03:28:48', '2024-10-09 03:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Vanna', 'vanna@gmail.com', '$2b$10$Hp2oo5t.ZFxLGR5cW7dAOegRlnx8Wxi3OOSMtnDHDdj5ijFnmLNhG', '2024-09-23 06:46:59', '2024-09-23 06:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `workexperiences`
--

DROP TABLE IF EXISTS `workexperiences`;
CREATE TABLE IF NOT EXISTS `workexperiences` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JobTitle` varchar(100) NOT NULL,
  `Company` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Responsibilities` text,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workexperiences`
--

INSERT INTO `workexperiences` (`ID`, `JobTitle`, `Company`, `Location`, `StartDate`, `EndDate`, `Responsibilities`, `createdAt`, `updatedAt`) VALUES
(1, 'OTT Operator', 'CDTV Cambodia', 'Phnom Penh', '2024-03-01', '2024-12-31', 'se any equipment (including personal protective equipment) safely and correctly', '2024-10-09 03:29:37', '2024-10-09 03:29:37'),
(2, 'Map Operator', 'Grab Cambodia', 'Phnom Penh', '2023-06-05', '2023-12-30', 'se any equipment (including personal protective equipment) safely and correctly', '2024-10-09 03:30:28', '2024-10-09 03:30:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
