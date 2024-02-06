-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2024 at 12:47 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authorization`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_password`
--

CREATE TABLE `wp_password` (
  `ID` bigint UNSIGNED NOT NULL,
  `login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `repass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_password`
--

INSERT INTO `wp_password` (`ID`, `login`, `pass`, `repass`) VALUES
(34, 'dfgag', '12131241', 'MTIxMzEyNDE='),
(35, 'BVDLVD', '11111111', 'MTExMTExMTE='),
(36, 'Trixia', 'JQRkW25C 123 41324 NoXaUJhrgf ds9OxOvBHHdf adf', 'SlFSa1cyNUMgMTIzIDQxMzI0IE5vWGFVSmhyZ2YgZHM5T3hPdkJISGRmIGFkZg=='),
(37, 'KAIANGEL', 'fgerhbqb3g45fw', 'ZmdlcmhicWIzZzQ1Znc='),
(38, 'Kjdslf', '^BlRop(%3bwYUZvql%DA2b$5', 'XkJsUm9wKCUzYndZVVp2cWwlREEyYiQ1'),
(39, 'dfsgf', '8mYKqS(uMCjJ&F$Y2CBp*ELUwefgf', 'OG1ZS3FTKHVNQ2pKJkYkWTJDQnAqRUxVd2VmZ2Y='),
(40, 'dfg', 'LR4&YQ^CacK7Q#yR*0Kq)XW)', 'TFI0JllRXkNhY0s3USN5UiowS3EpWFcp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_password`
--
ALTER TABLE `wp_password`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_password`
--
ALTER TABLE `wp_password`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
