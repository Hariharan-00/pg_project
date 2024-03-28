-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cs_materials`
--

CREATE TABLE `cs_materials` (
  `pk_material_id` int(11) NOT NULL,
  `materials_subject_id` int(11) NOT NULL,
  `materials_material_type` enum('pdf','video','image','word','excel') NOT NULL,
  `materials_material_title` varchar(255) NOT NULL,
  `materials_material_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cs_materials`
--

INSERT INTO `cs_materials` (`pk_material_id`, `materials_subject_id`, `materials_material_type`, `materials_material_title`, `materials_material_link`) VALUES
(1, 1, 'pdf', 'unit 1', 'https://docs.google.com/presentation/d/1l7kMb6bOhBOMHUwoF9iPwzpSfprJVNVQ/edit?usp=sharing&ouid=114327016950699486047&rtpof=true&sd=true'),
(2, 1, '', 'python Books', 'https://drive.google.com/drive/folders/1My92n5MiL9HU66OrlyY1VVDoSJqt72LF?usp=sharing'),
(4, 3, '', 'unit 1', ''),
(5, 4, '', 'unit 1', 'https://docs.google.com/presentation/d/1GmH6HSRDSfD3p0livRFsTZSVlh_8HIXY/edit?usp=sharing&ouid=114327016950699486047&rtpof=true&sd=true'),
(6, 5, '', 'unit 1', ''),
(7, 6, '', 'unit 1', ''),
(11, 6, 'pdf', 'unit 2', 'https://www.udemy.com/course/the-complete-python-course/?matchtype=b&msclkid=5e37b9320adb1c2edb07dce6c2160060&utm_campaign=BG-Python_v.PROF_la.EN_cc.INDIA_ti.7380&utm_content=deal4584&utm_medium=udemyads&utm_source=bing&utm_term=_._ag_1209463203221410_._a'),
(12, 3, 'pdf', 'unit 2', 'https://www.udemy.com/course/the-complete-python-course/?matchtype=b&msclkid=5e37b9320adb1c2edb07dce6c2160060&utm_campaign=BG-Python_v.PROF_la.EN_cc.INDIA_ti.7380&utm_content=deal4584&utm_medium=udemyads&utm_source=bing&utm_term=_._ag_1209463203221410_._a'),
(14, 2, '', 'unit 2', ''),
(15, 2, '', 'unit 3', ''),
(16, 2, '', 'unit 4', ''),
(17, 2, '', 'unit 5', ''),
(18, 3, 'pdf', 'unit 3', ''),
(19, 3, 'pdf', 'unit 4', ''),
(20, 3, 'pdf', 'unit 5', ''),
(21, 4, 'pdf', 'unit 2', 'https://docs.google.com/presentation/d/1477HD1wh3lTL0FE3QPz8lOm3qyBAj-vu/edit?usp=sharing&ouid=114327016950699486047&rtpof=true&sd=true'),
(24, 18, 'pdf', 'First semester question paper', 'https://drive.google.com/file/d/1WmR9e-cwVLJHsr-6NcUc0Em1mobGF5Em/view?usp=drive_link'),
(25, 9, 'pdf', 'Data mining Book', 'https://drive.google.com/file/d/1m6PgEK5XzYSUp2nv9NQf2KYYaedFI90P/view?usp=sharing'),
(26, 9, 'pdf', 'R programming', 'https://drive.google.com/drive/folders/1sXTbC_605jxb8TLz9ybBdCK-wl7w7oA1?usp=sharing'),
(27, 19, 'pdf', 'Second semester question paper', 'https://drive.google.com/file/d/1GmjmUeMOfX57qllfimHDHSgZbivKsbua/view?usp=sharing'),
(28, 15, 'pdf', 'BDA Book', 'https://drive.google.com/file/d/12IaTEjeuf8-uFCq-ARLQaRmGhGbmmVYi/view?usp=sharing'),
(29, 17, 'pdf', 'unit 1', 'https://docs.google.com/presentation/d/1FQU16m75cpB8iCWmc1u-UqbysWnIs1kP/edit?usp=sharing&ouid=114327016950699486047&rtpof=true&sd=true'),
(30, 17, 'pdf', 'unit 2', 'https://drive.google.com/file/d/13yyZliAyt6CwIxC2u23mvg2neOGljq_5/view?usp=sharing'),
(31, 16, 'pdf', 'wireless network topologies', 'https://drive.google.com/file/d/1fusgPDmCZ9VRplTEd8Y-kigm_dIIhn81/view?usp=sharing'),
(32, 16, 'pdf', 'unit 2', 'https://docs.google.com/presentation/d/1I9yGnIR-QuMXWaek9sTQ-k8dcFhWAXLC/edit?usp=sharing&ouid=114327016950699486047&rtpof=true&sd=true'),
(33, 16, 'pdf', 'wireless network ', 'https://drive.google.com/file/d/1kxuTnGvFdmcy-uxwk1xlzOm3UO1qUmY4/view?usp=sharing'),
(36, 20, 'pdf', 'visual programming', 'https://drive.google.com/file/d/1Y-sME2ko7jgu0p9GQhEPW0FfvDLk_iWZ/view?usp=sharing'),
(37, 20, 'pdf', 'third semester question paper', 'https://drive.google.com/file/d/1X-UmEPM-63sdQjchQ7hPXXsXfa9FCZNc/view?usp=sharing'),
(38, 1, 'image', 'questionpapers1', 'https://drive.google.com/file/d/1Y-sME2ko7jgu0p9GQhEPW0FfvDLk_iWZ/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `cs_signup`
--

CREATE TABLE `cs_signup` (
  `pk_id` int(11) NOT NULL,
  `signup_username` varchar(255) NOT NULL,
  `signup_register_number` varchar(20) NOT NULL,
  `signup_department` varchar(50) NOT NULL,
  `signup_course_name` varchar(50) NOT NULL,
  `signup_year` varchar(10) NOT NULL,
  `signup_phone_number` varchar(15) NOT NULL,
  `signup_password` varchar(255) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs_signup`
--

INSERT INTO `cs_signup` (`pk_id`, `signup_username`, `signup_register_number`, `signup_department`, `signup_course_name`, `signup_year`, `signup_phone_number`, `signup_password`, `Role`) VALUES
(1, 'hari', '12345', 'cs', 'cs', '2022', '9025122156', '$2y$10$XOW7UpL.BVyomxCvSSOBW.4Cdt8/6T8IAKPXQHBkTozyUo7tKAZPq', ''),
(3, 'hari', '123457', 'cs', 'cs', '2022', '9025122156', '$2y$10$hTDHeDvNo1/NvlsEEYO72e018fGdkJh98/M6f8jftAnYRghOFRG3y', ''),
(4, 'hariharan', '22csee07', 'Computer science ', 'm.sc computer science', '2022-2024', '9025122156', '$2y$10$truTuhGQjn.QdR3JFA3QrOl7Ub.H7EBaocjbDPy8BxFg9p9gFtYVS', ''),
(5, 'manimaran', '22csee14', 'cs', 'cs', '2022-2024', '8087575664', '$2y$10$rla3pfUCIHN7nS/4G1Nb8eSxu46RMZvzLpdYmKZOvm2TbCv.KYq6C', ''),
(6, 'yogeshwara', '22csee38', 'cs', 'cs', '2022-2024', '808757566', '$2y$10$1aL1/Gfg30Aa.uqwvYDWH.fFoj3JCamM2yKKX9aeQeoTEmJhjq6NW', ''),
(8, 'krishana kumar', '22csee12', 'cs', 'cs', '2022-2024', '7847874484', '$2y$10$e/b8Tk6BzP4kf0DRWMpw9uxBiApgbSzxhJa6vHjEmr7w1S0mBjdli', ''),
(9, 'sathish', '22csee23', 'cs', 'cs', '2022-2024', '6385835979', '$2y$10$ib7uzCu8hcMN8HZLcabawuqMoxKPz4Czdnbnz3injiVsLdIDqzNZq', ''),
(10, 'krishna', '22csee50', 'cs', 'm.sc computer science', '2022-2024', '1234567890', '$2y$10$xRfUuFrK6ftQOQc6G14xvuRyPp9cw2LEokuk3SvvriK6rVoePcUXi', ''),
(12, 'pankajavalli', '22csee100', 'cs', 'm.sc computer science', '2022-2024', '9025122156', '$2y$10$6NGA79mQMXy8vanbJg4t9OZ8q9q2Pd7d1thM61.Gd38zxS3xsYSuK', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `cs_subjects`
--

CREATE TABLE `cs_subjects` (
  `pk_id` int(11) NOT NULL,
  `subjects_subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cs_subjects`
--

INSERT INTO `cs_subjects` (`pk_id`, `subjects_subject_name`) VALUES
(1, 'python programming\r\n'),
(2, 'Advance operating system'),
(3, 'compiler design '),
(4, 'Data structures and Algorithms'),
(5, 'mathematical foundation for computer science'),
(6, 'Artificial intelligence'),
(7, 'Linux programming\r\n'),
(8, 'Internet of things\r\n'),
(9, 'Data mining techniques and tools\r\n'),
(10, 'Database management system and administration\r\n'),
(11, 'Machine learning\r\n'),
(12, '\r\nSoftware project management\r\n\r\n'),
(13, 'Cloud computing\r\n'),
(14, 'Big data analytics\r\n'),
(15, 'Wireless networks\r\n'),
(16, 'Deep learning techniques'),
(17, 'previous semester papers'),
(18, 'previous semester papers'),
(19, 'previous semester papers'),
(20, 'previous semester question paper');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cs_materials`
--
ALTER TABLE `cs_materials`
  ADD PRIMARY KEY (`pk_material_id`),
  ADD KEY `materials_subject_id` (`materials_subject_id`);

--
-- Indexes for table `cs_signup`
--
ALTER TABLE `cs_signup`
  ADD PRIMARY KEY (`pk_id`),
  ADD UNIQUE KEY `signup_register_number` (`signup_register_number`);

--
-- Indexes for table `cs_subjects`
--
ALTER TABLE `cs_subjects`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cs_materials`
--
ALTER TABLE `cs_materials`
  MODIFY `pk_material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cs_signup`
--
ALTER TABLE `cs_signup`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cs_subjects`
--
ALTER TABLE `cs_subjects`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cs_materials`
--
ALTER TABLE `cs_materials`
  ADD CONSTRAINT `cs_materials_ibfk_1` FOREIGN KEY (`materials_subject_id`) REFERENCES `cs_subjects` (`pk_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
