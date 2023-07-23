-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 07:39 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE IF NOT EXISTS `admin1` (
  `Aid` int(6) NOT NULL AUTO_INCREMENT,
  `Aname` varchar(200) NOT NULL,
  `Anic` varchar(15) NOT NULL,
  `Aaddress` varchar(100) NOT NULL,
  `Aemail` varchar(100) NOT NULL,
  `pNo` varchar(10) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer1`
--

CREATE TABLE IF NOT EXISTS `customer1` (
  `Cid` int(6) NOT NULL,
  `Cname` varchar(200) NOT NULL,
  `nation` varchar(100) NOT NULL,
  `Adate` varchar(30) NOT NULL,
  `Ddate` varchar(30) NOT NULL,
  `NoD` varchar(30) NOT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer1`
--

INSERT INTO `customer1` (`Cid`, `Cname`, `nation`, `Adate`, `Ddate`, `NoD`) VALUES
(3, 'Sadun Pereradd', 'rr', '2022-03-12', '2022-03-08', '12'),
(4, 'Sadun Perera', 'ww', '2022-03-02', '2022-03-16', '4');

-- --------------------------------------------------------

--
-- Table structure for table `driver1`
--

CREATE TABLE IF NOT EXISTS `driver1` (
  `Did` int(11) NOT NULL AUTO_INCREMENT,
  `Dname` varchar(200) NOT NULL,
  `Dnic` varchar(15) NOT NULL,
  `DLno` int(200) NOT NULL,
  `Dgen` varchar(200) NOT NULL,
  `dcNO` varchar(10) NOT NULL,
  PRIMARY KEY (`Did`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `driver1`
--

INSERT INTO `driver1` (`Did`, `Dname`, `Dnic`, `DLno`, `Dgen`, `dcNO`) VALUES
(1, 'Saman', '232', 1313, 'fw', '13');

-- --------------------------------------------------------

--
-- Table structure for table `guide1`
--

CREATE TABLE IF NOT EXISTS `guide1` (
  `Gid` int(6) NOT NULL AUTO_INCREMENT,
  `Gname` varchar(200) NOT NULL,
  `Gaddress` varchar(200) NOT NULL,
  `Gnic` varchar(200) NOT NULL,
  `Gemail` varchar(200) NOT NULL,
  `Gpno` varchar(10) NOT NULL,
  PRIMARY KEY (`Gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `hotel1`
--

CREATE TABLE IF NOT EXISTS `hotel1` (
  `Hid` int(6) NOT NULL AUTO_INCREMENT,
  `HregNo` varchar(200) NOT NULL,
  `Hname` varchar(200) NOT NULL,
  `Hloca` varchar(200) NOT NULL,
  `Hemail` varchar(200) NOT NULL,
  `HpNo` varchar(10) NOT NULL,
  PRIMARY KEY (`Hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `pack1`
--

CREATE TABLE IF NOT EXISTS `pack1` (
  `Pid` int(6) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(200) NOT NULL,
  `NoOfper` varchar(20) NOT NULL,
  `Pdate` varchar(20) NOT NULL,
  `NoOfDay` varchar(20) NOT NULL,
  `Vdetails` varchar(50) NOT NULL,
  PRIMARY KEY (`Pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `place1`
--

CREATE TABLE IF NOT EXISTS `place1` (
  `PLid` int(6) NOT NULL AUTO_INCREMENT,
  `PLname` varchar(200) NOT NULL,
  `CofPl` varchar(50) NOT NULL,
  `EnFee` varchar(20) NOT NULL,
  `rules` varchar(200) NOT NULL,
  `PLdesc` varchar(200) NOT NULL,
  PRIMARY KEY (`PLid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `place1`
--

INSERT INTO `place1` (`PLid`, `PLname`, `CofPl`, `EnFee`, `rules`, `PLdesc`) VALUES
(3, 'fdwa', 'fsfgsd', '2022-03-03', 'fas', 'fqf');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle1`
--

CREATE TABLE IF NOT EXISTS `vehicle1` (
  `Vid` int(6) NOT NULL AUTO_INCREMENT,
  `Vmodel` varchar(30) NOT NULL,
  `Vno` varchar(10) NOT NULL,
  `Vbrand` varchar(40) NOT NULL,
  `OwnerName` varchar(60) NOT NULL,
  `Vpno` varchar(10) NOT NULL,
  PRIMARY KEY (`Vid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vehicle1`
--

INSERT INTO `vehicle1` (`Vid`, `Vmodel`, `Vno`, `Vbrand`, `OwnerName`, `Vpno`) VALUES
(2, 'car', 'KA-4512', 'sada', 'as', '11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
