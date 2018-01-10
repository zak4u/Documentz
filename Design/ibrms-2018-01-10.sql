-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 02:23 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay_profile`
--

CREATE TABLE `barangay_profile` (
  `bp_id` int(11) NOT NULL,
  `bp_name` text NOT NULL,
  `bp_address` text NOT NULL,
  `bp_captain` text NOT NULL,
  `bp_k1` text NOT NULL,
  `bp_k2` text NOT NULL,
  `bp_k3` text NOT NULL,
  `bp_k4` text NOT NULL,
  `bp_k5` text NOT NULL,
  `bp_k6` text NOT NULL,
  `bp_k7` text NOT NULL,
  `bp_secretary` text NOT NULL,
  `bp_treasurer` text NOT NULL,
  `bp_city` text NOT NULL,
  `bp_province` text NOT NULL,
  `bp_region` text NOT NULL,
  `bp_logo` text NOT NULL,
  `bp_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barangay_profile`
--

INSERT INTO `barangay_profile` (`bp_id`, `bp_name`, `bp_address`, `bp_captain`, `bp_k1`, `bp_k2`, `bp_k3`, `bp_k4`, `bp_k5`, `bp_k6`, `bp_k7`, `bp_secretary`, `bp_treasurer`, `bp_city`, `bp_province`, `bp_region`, `bp_logo`, `bp_update`) VALUES
(1, 'Brgy Zone 2', 'Add', 'Baroba', 'Aaa', 'Bbb', 'Ccc', 'Ddd', 'Eee', 'Fff', 'Ggg', 'Sec', 'Treas', 'Cadiz City', 'Negros Occidental', 'Region VI', '', '2017-11-22 13:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `clearance_business`
--

CREATE TABLE `clearance_business` (
  `bc_id` int(11) NOT NULL,
  `bc_idnumber` text NOT NULL,
  `bc_title` text NOT NULL,
  `bc_name` text NOT NULL,
  `bc_address` text NOT NULL,
  `bc_or_number` text NOT NULL,
  `bc_business_name` text NOT NULL,
  `bc_business_type` text NOT NULL,
  `bc_business_address` text NOT NULL,
  `bc_issued` text NOT NULL,
  `bc_validity` text NOT NULL,
  `bc_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clearance_business`
--

INSERT INTO `clearance_business` (`bc_id`, `bc_idnumber`, `bc_title`, `bc_name`, `bc_address`, `bc_or_number`, `bc_business_name`, `bc_business_type`, `bc_business_address`, `bc_issued`, `bc_validity`, `bc_created`) VALUES
(2, 'BBC-18-0108204151', 'Mr.', 'Test Owner', 'OwNer AdD', '34353', 'Tes Biz', 'Store', 'sviBis add', '01/08/2018', '12/12/2018', '1515415354');

-- --------------------------------------------------------

--
-- Table structure for table `clearance_resident`
--

CREATE TABLE `clearance_resident` (
  `rc_id` int(11) NOT NULL,
  `rc_idnumber` text NOT NULL,
  `rc_name` text NOT NULL,
  `rc_age` int(2) NOT NULL,
  `rc_address` text NOT NULL,
  `rc_purpose` text NOT NULL,
  `rc_issued` text NOT NULL,
  `rc_validity` text NOT NULL,
  `rc_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clearance_resident`
--

INSERT INTO `clearance_resident` (`rc_id`, `rc_idnumber`, `rc_name`, `rc_age`, `rc_address`, `rc_purpose`, `rc_issued`, `rc_validity`, `rc_created`) VALUES
(1, 'RBC-18-0105214532', 'Test1', 211, 'test add1', 'testing1', '01/05/2018', '12/12/2018', '1515159943');

-- --------------------------------------------------------

--
-- Table structure for table `household`
--

CREATE TABLE `household` (
  `hh_id` int(11) NOT NULL,
  `hh_idnumber` text NOT NULL,
  `hh_family_serial` text NOT NULL,
  `hh_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `household`
--

INSERT INTO `household` (`hh_id`, `hh_idnumber`, `hh_family_serial`, `hh_created`) VALUES
(1, 'HH-18-0108210632', '21', '1515416794');

-- --------------------------------------------------------

--
-- Table structure for table `purok`
--

CREATE TABLE `purok` (
  `purok_id` int(11) NOT NULL,
  `purok_idnumber` text NOT NULL,
  `purok_name` text NOT NULL,
  `purok_address` text NOT NULL,
  `purok_lat` text NOT NULL,
  `purok_long` text NOT NULL,
  `purok_president` text NOT NULL,
  `purok_vice_president` text NOT NULL,
  `purok_secretary` text NOT NULL,
  `purok_treasurer` text NOT NULL,
  `purok_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purok`
--

INSERT INTO `purok` (`purok_id`, `purok_idnumber`, `purok_name`, `purok_address`, `purok_lat`, `purok_long`, `purok_president`, `purok_vice_president`, `purok_secretary`, `purok_treasurer`, `purok_created`) VALUES
(2, 'prk-17-1227161919', 'Mahidaiton', 'Andrea Village', '10.9534402', '123.3038267', 'Ppres', 'Vpress', 'Sect', 'Treas', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE `resident` (
  `res_id` int(11) NOT NULL,
  `res_idnumber` text NOT NULL,
  `res_firstname` text NOT NULL,
  `res_middlename` text NOT NULL,
  `res_lastname` text NOT NULL,
  `res_extension` text NOT NULL,
  `res_dob` text NOT NULL,
  `res_pob` text NOT NULL,
  `res_nationality` text NOT NULL,
  `res_religion` text NOT NULL,
  `res_gender` text NOT NULL,
  `res_is_pwd` int(1) NOT NULL,
  `res_is_deceased` int(1) NOT NULL,
  `res_bloodtype` text NOT NULL,
  `res_height` text NOT NULL,
  `res_weight` text NOT NULL,
  `res_civil_status` text NOT NULL,
  `res_spouse` text NOT NULL,
  `res_fathers_name` text NOT NULL,
  `res_mothers_name` text NOT NULL,
  `res_photo` text NOT NULL,
  `res_home_ownership` text NOT NULL,
  `res_house_number` text NOT NULL,
  `res_street` text NOT NULL,
  `res_purok` text NOT NULL,
  `res_barangay` text NOT NULL,
  `res_city` text NOT NULL,
  `res_province` text NOT NULL,
  `res_region` text NOT NULL,
  `res_household_id` text NOT NULL,
  `res_neighbors` text NOT NULL,
  `res_contact_number` text NOT NULL,
  `res_email` text NOT NULL,
  `res_education` text NOT NULL,
  `res_employment_status` text NOT NULL,
  `res_is_dswdnths` int(1) NOT NULL,
  `res_is_4ps` int(1) NOT NULL,
  `res_philhealth_id` text NOT NULL,
  `res_philhealth_category` text NOT NULL,
  `res_is_pcb` int(1) NOT NULL,
  `res_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`res_id`, `res_idnumber`, `res_firstname`, `res_middlename`, `res_lastname`, `res_extension`, `res_dob`, `res_pob`, `res_nationality`, `res_religion`, `res_gender`, `res_is_pwd`, `res_is_deceased`, `res_bloodtype`, `res_height`, `res_weight`, `res_civil_status`, `res_spouse`, `res_fathers_name`, `res_mothers_name`, `res_photo`, `res_home_ownership`, `res_house_number`, `res_street`, `res_purok`, `res_barangay`, `res_city`, `res_province`, `res_region`, `res_household_id`, `res_neighbors`, `res_contact_number`, `res_email`, `res_education`, `res_employment_status`, `res_is_dswdnths`, `res_is_4ps`, `res_philhealth_id`, `res_philhealth_category`, `res_is_pcb`, `res_created`) VALUES
(2, '17-1227221654', 'Lyndon', 'Ast1', 'Mondragon2', 'III', '03/04/1980', 'Cadiz City', 'Filipino', 'Buddhism', 'Male', 0, 0, 'A+', '172', '85', 'Single', '', 'Father', 'Mother', '', 'Owned', '1232', 'Talisay Street', 'Mahidaiton', 'Zone 2', 'Cadiz City', 'Negros Occidental', 'Region VI', '', '', '', '', 'Post-graduate', 'Student', 0, 0, '', 'Other', 0, '1514384240'),
(3, '18-0108214031', 'Q', 'Zx', 'Zxczx', '', '03/24/2042', 'ddv', 'Dasd', 'Ada', 'Male', 0, 0, 'A+', '', '', 'Single', '', 'asda', 'asda', '', 'Owned', '', '', 'asdad', 'Barangay Zone 2', 'Cadiz City', 'Negros Occidental', 'Region VI', '', '', '', '', '', '', 0, 0, '', '', 0, '1515418867');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(99) NOT NULL,
  `user_firstname` text NOT NULL,
  `user_lastname` text NOT NULL,
  `user_dob` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_name` text NOT NULL,
  `user_password` text NOT NULL,
  `user_role` text NOT NULL,
  `user_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_dob`, `user_gender`, `user_name`, `user_password`, `user_role`, `user_created`) VALUES
(1, 'Lyndon', 'Astorga', '09/26/1999', 'Male', 'lyndonlyndon', 'c13137b5c17e14dfd865e72f361d0f80', 'Administrator', '1511336843'),
(5, 'Administrator', 'Administrator', '02/23/2031', 'Male', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'System Manager', '1511352766'),
(6, 'Aaa2z', 'Aaaz', '02/03/2042', 'Male', 'aaaaaaaaaa', 'e179902ddcdb84524c7cb423884a5621', 'Encoder', '1511360443');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay_profile`
--
ALTER TABLE `barangay_profile`
  ADD PRIMARY KEY (`bp_id`);

--
-- Indexes for table `clearance_business`
--
ALTER TABLE `clearance_business`
  ADD PRIMARY KEY (`bc_id`);

--
-- Indexes for table `clearance_resident`
--
ALTER TABLE `clearance_resident`
  ADD PRIMARY KEY (`rc_id`);

--
-- Indexes for table `household`
--
ALTER TABLE `household`
  ADD PRIMARY KEY (`hh_id`);

--
-- Indexes for table `purok`
--
ALTER TABLE `purok`
  ADD PRIMARY KEY (`purok_id`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangay_profile`
--
ALTER TABLE `barangay_profile`
  MODIFY `bp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clearance_business`
--
ALTER TABLE `clearance_business`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `clearance_resident`
--
ALTER TABLE `clearance_resident`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `household`
--
ALTER TABLE `household`
  MODIFY `hh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `purok`
--
ALTER TABLE `purok`
  MODIFY `purok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `resident`
--
ALTER TABLE `resident`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
