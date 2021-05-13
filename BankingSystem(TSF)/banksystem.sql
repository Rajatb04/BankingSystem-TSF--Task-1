-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 08:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `banksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Acc_Number` int(25) NOT NULL,
  `IFSC` varchar(20) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`UserID`, `Name`, `Email`, `Acc_Number`, `IFSC`, `Balance`) VALUES
(10000001,'Rajat','rajat4@gmail.com',123689,'SYON689',100000),
(10000002,'Mohit','mohit4@gmail.com',563923,'SUNF568923',68000),
(10000003,'Dinesh','dinesh54@gmail.com',296623,'SYB9623',99300),
(10000004,'Kunal','kunal27@gmail.com',124578,'ASSA124578',60000),
(10000005,'Deepak','Deepak1@gmail.com',437812,'SUHF457812',50000),
(10000006,'Dara','dhara10@gmail.com',723124,'SEWE3784124',40000),
(10000007,'Harsh','harsh11@gmail.com',152525,'SYHD872625',20000),
(10000008,'Ankit','ankit6@gmail.com',425958,'SGJG485923',10000),
(10000009,'kanha','kanha8@gmail.com',452329,'SDSE442329',90000),
(10000010,'Darshan','darshan111@gmail.com',894567,'SUNR894534',35000);

----------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `s_name` varchar(10) NOT NULL,
  `s_acc_no` int(11) NOT NULL,
  `r_name` varchar(10) NOT NULL,
  `r_acc_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`s_name`, `s_acc_no`, `r_name`, `r_acc_no`, `amount`, `date_time`) VALUES ('Rajat', 123689, 'Mohit', 563923, 1000, 2021-05-12 14:38:21);



----------------------------------------------------------