-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2016 at 05:45 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `running_session`
--

DROP TABLE IF EXISTS `running_session`;
CREATE TABLE IF NOT EXISTS `running_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `running_session`
--

INSERT INTO `running_session` (`id`, `session`, `active`) VALUES
(1, '2016-2017', 1),
(2, '2017-2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_account_fees`
--

DROP TABLE IF EXISTS `sms_account_fees`;
CREATE TABLE IF NOT EXISTS `sms_account_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_type` mediumint(9) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_account_fees`
--

INSERT INTO `sms_account_fees` (`id`, `ac_type`, `class_id`, `amount`, `session_id`) VALUES
(26, 1, 1, 100, 1),
(27, 2, 1, 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_account_month`
--

DROP TABLE IF EXISTS `sms_account_month`;
CREATE TABLE IF NOT EXISTS `sms_account_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_account_month`
--

INSERT INTO `sms_account_month` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `sms_account_monthly_payment`
--

DROP TABLE IF EXISTS `sms_account_monthly_payment`;
CREATE TABLE IF NOT EXISTS `sms_account_monthly_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_account_monthly_payment`
--

INSERT INTO `sms_account_monthly_payment` (`id`, `student_id`, `month`, `amount`, `session_id`) VALUES
(39, 43, '12', 200, 1),
(38, 43, '11', 200, 1),
(37, 43, '9', 200, 1),
(36, 43, '7', 200, 1),
(35, 43, '6', 200, 1),
(34, 43, '5', 200, 1),
(33, 43, '4', 200, 1),
(32, 43, '2', 200, 1),
(29, 43, '3', 200, 1),
(31, 43, '1', 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_account_type`
--

DROP TABLE IF EXISTS `sms_account_type`;
CREATE TABLE IF NOT EXISTS `sms_account_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_account_type`
--

INSERT INTO `sms_account_type` (`id`, `name`, `session_id`) VALUES
(1, 'Admission', 1),
(2, 'Monthly', 1),
(3, 'Examination', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_attendance`
--

DROP TABLE IF EXISTS `sms_attendance`;
CREATE TABLE IF NOT EXISTS `sms_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `dt` date NOT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_attendance`
--

INSERT INTO `sms_attendance` (`id`, `student_id`, `class_id`, `section_id`, `dt`, `session_id`) VALUES
(18, 45, 1, 21, '2016-09-25', 1),
(17, 43, 1, 21, '2016-09-25', 1),
(19, 43, 1, 21, '2016-09-26', 1),
(20, 45, 1, 21, '2016-09-26', 1),
(21, 43, 1, 21, '2016-09-27', 1),
(22, 45, 1, 21, '2016-09-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_class`
--

DROP TABLE IF EXISTS `sms_class`;
CREATE TABLE IF NOT EXISTS `sms_class` (
  `name` varchar(20) NOT NULL,
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_class`
--

INSERT INTO `sms_class` (`name`, `id`, `num`, `teacher_id`) VALUES
('One', 1, 1, 37),
('Eight', 36, 8, NULL),
('Seven', 35, 7, NULL),
('Six', 34, 6, NULL),
('Five', 33, 5, NULL),
('Three', 31, 3, NULL),
('Four', 32, 4, NULL),
('Two', 30, 2, 38),
('Nine', 37, 9, NULL),
('Ten', 41, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_class_section`
--

DROP TABLE IF EXISTS `sms_class_section`;
CREATE TABLE IF NOT EXISTS `sms_class_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_class_section`
--

INSERT INTO `sms_class_section` (`id`, `name`, `class_id`, `teacher_id`) VALUES
(34, 'A', 32, NULL),
(35, 'A', 33, NULL),
(21, 'A', 1, 37),
(33, 'A', 31, NULL),
(44, 'A', 41, NULL),
(31, 'A', 24, NULL),
(36, 'A', 34, NULL),
(37, 'A', 35, NULL),
(38, 'A', 36, NULL),
(39, 'A', 37, NULL),
(40, 'A', 38, NULL),
(41, 'A', 39, NULL),
(42, 'A', 40, NULL),
(43, 'B', 1, 38),
(46, 'A', 30, NULL),
(47, 'D', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_exam_marks`
--

DROP TABLE IF EXISTS `sms_exam_marks`;
CREATE TABLE IF NOT EXISTS `sms_exam_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_exam_marks`
--

INSERT INTO `sms_exam_marks` (`id`, `class_id`, `exam_id`, `subject_id`, `student_id`, `marks`, `session_id`, `created_at`, `updated_at`) VALUES
(19, 1, 60, 1, 45, 43, 1, '2016-09-26 20:09:07', '2016-09-26 20:09:07'),
(18, 1, 60, 1, 43, 65, 1, '2016-09-26 20:09:07', '2016-09-26 20:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `sms_exam_routine`
--

DROP TABLE IF EXISTS `sms_exam_routine`;
CREATE TABLE IF NOT EXISTS `sms_exam_routine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `name` text,
  `routine` text,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_exam_routine`
--

INSERT INTO `sms_exam_routine` (`id`, `class_id`, `exam_id`, `name`, `routine`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 60, 'map.PNG', '00edf6f4945408057dbca2d985dad557.PNG', 1, '2016-09-26 21:41:06', '2016-09-26 21:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `sms_exam_type`
--

DROP TABLE IF EXISTS `sms_exam_type`;
CREATE TABLE IF NOT EXISTS `sms_exam_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_exam_type`
--

INSERT INTO `sms_exam_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(60, '1st Term', '2016-09-05 09:40:22', '2016-09-05 09:40:22'),
(62, '3rd Term', '2016-09-13 13:29:22', '2016-09-13 13:29:22'),
(59, '2nd term', '2016-09-05 09:40:16', '2016-09-05 09:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `sms_groups`
--

DROP TABLE IF EXISTS `sms_groups`;
CREATE TABLE IF NOT EXISTS `sms_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_groups`
--

INSERT INTO `sms_groups` (`id`, `name`, `definition`) VALUES
(1, 'Admin', 'Super Admin Group'),
(2, 'Teacher', 'Teacher Access Group'),
(3, 'Student', 'Student Access Group'),
(4, 'Parent', 'Parent Access Group');

-- --------------------------------------------------------

--
-- Table structure for table `sms_group_to_group`
--

DROP TABLE IF EXISTS `sms_group_to_group`;
CREATE TABLE IF NOT EXISTS `sms_group_to_group` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `subgroup_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`,`subgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_library`
--

DROP TABLE IF EXISTS `sms_library`;
CREATE TABLE IF NOT EXISTS `sms_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `publication` varchar(30) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_library`
--

INSERT INTO `sms_library` (`id`, `name`, `publication`, `author`, `class_id`, `subject_id`, `updated_at`, `created_at`) VALUES
(20, 'Basic English', 'Haude Book PVT', 'Saroj HUmagain', 1, 1, '2016-09-23 06:00:48', '2016-09-23 06:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `sms_notice`
--

DROP TABLE IF EXISTS `sms_notice`;
CREATE TABLE IF NOT EXISTS `sms_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_notice`
--

INSERT INTO `sms_notice` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Testing', 'message 123...', '2016-09-26 22:25:17', '2016-09-26 22:25:17'),
(2, 'Tommorow is holiday', 'Bholi chutti ho mkkai bhutti', '2016-09-26 22:36:34', '2016-09-26 22:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `sms_perms`
--

DROP TABLE IF EXISTS `sms_perms`;
CREATE TABLE IF NOT EXISTS `sms_perms` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_perms`
--

INSERT INTO `sms_perms` (`id`, `name`, `definition`) VALUES
(1, 'Admin', 'Administration only'),
(2, 'Teacher', 'teacher'),
(3, 'Student', NULL),
(4, 'Parent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_perm_to_group`
--

DROP TABLE IF EXISTS `sms_perm_to_group`;
CREATE TABLE IF NOT EXISTS `sms_perm_to_group` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`perm_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_perm_to_group`
--

INSERT INTO `sms_perm_to_group` (`perm_id`, `group_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sms_perm_to_user`
--

DROP TABLE IF EXISTS `sms_perm_to_user`;
CREATE TABLE IF NOT EXISTS `sms_perm_to_user` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`perm_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_perm_to_user`
--

INSERT INTO `sms_perm_to_user` (`perm_id`, `user_id`) VALUES
(1, 1),
(1, 44),
(2, 37),
(3, 38),
(3, 43),
(3, 45),
(4, 40),
(4, 41),
(4, 42);

-- --------------------------------------------------------

--
-- Table structure for table `sms_pms`
--

DROP TABLE IF EXISTS `sms_pms`;
CREATE TABLE IF NOT EXISTS `sms_pms` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `full_index` (`id`,`sender_id`,`receiver_id`,`date_read`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_pms`
--

INSERT INTO `sms_pms` (`id`, `sender_id`, `receiver_id`, `title`, `message`, `date_sent`, `date_read`) VALUES
(1, 37, 1, 'Hello', 'Oei k cha', '2016-07-21 00:00:00', '2016-09-26 23:37:44'),
(3, 1, 38, 'Ke cha hau sarkar', '<p>Testing mail from Googel Chrome. <b>Bold test. <u>Underline <br></u></b></p><p><b><u><img src="http://sms/uploads/pro_pic/13083296_1110489132305037_2731460347279600354_n2.jpg" title="Image: http://sms/uploads/pro_pic/13083296_1110489132305037_2731460347279600354_n2.jpg"></u></b><br></p><br><br>', '2016-09-26 23:56:11', '2016-09-27 06:35:11'),
(4, 38, 1, 'Sab thik cha', '<p>Feeling good. <br></p>', '2016-09-26 23:57:55', '2016-11-23 07:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `sms_security`
--

DROP TABLE IF EXISTS `sms_security`;
CREATE TABLE IF NOT EXISTS `sms_security` (
  `user_id` int(11) NOT NULL,
  `warning` int(11) DEFAULT '0',
  `log` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_security`
--

INSERT INTO `sms_security` (`user_id`, `warning`, `log`) VALUES
(38, 0, NULL),
(1, 0, NULL),
(43, 0, NULL),
(44, 0, NULL),
(45, 0, NULL),
(37, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_student`
--

DROP TABLE IF EXISTS `sms_student`;
CREATE TABLE IF NOT EXISTS `sms_student` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`student_id`),
  KEY `id` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_student`
--

INSERT INTO `sms_student` (`student_id`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `hostel_id`, `session_id`, `created_at`, `updated_at`) VALUES
(43, 1, 21, 1, 1, 0, 0, 1, '2016-09-26 12:03:56', '2016-09-26 12:03:56'),
(45, 1, 21, 1, 2, 0, 0, 1, '2016-09-26 12:03:56', '2016-09-26 12:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `sms_student_account`
--

DROP TABLE IF EXISTS `sms_student_account`;
CREATE TABLE IF NOT EXISTS `sms_student_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `month` varchar(15) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_studycomments`
--

DROP TABLE IF EXISTS `sms_studycomments`;
CREATE TABLE IF NOT EXISTS `sms_studycomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_studymaterial`
--

DROP TABLE IF EXISTS `sms_studymaterial`;
CREATE TABLE IF NOT EXISTS `sms_studymaterial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `detail` text,
  `file` text NOT NULL,
  `count` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_studymaterial`
--

INSERT INTO `sms_studymaterial` (`id`, `name`, `class_id`, `section_id`, `subject_id`, `detail`, `file`, `count`, `user_id`, `created_at`, `updated_at`, `session_id`) VALUES
(10, 'AbstractWavyDesignColorfulBackgroundVector.jpg', 1, 21, 78, 'Health Homework- ', '57f3d9382c9868fe02c7f266c1f0c63f.jpg', 2, 38, '2016-09-26 18:14:08', '2016-09-26 18:14:08', 1),
(9, 'neon-lights-graphic-design-abstract-background-vector-1490190.jpg', 1, 21, 3, 'Modern Circle', 'e1d3c2bccf8d4c3a307e7a97dc541faa.jpg', 0, 1, '2016-09-26 07:45:58', '2016-09-26 07:45:58', 1),
(8, 'design.PNG', 1, 21, 1, 'Business Letter pad Sample', 'bc1f5ebeb5399a311a0dbce7f3d29a9a.PNG', 2, 1, '2016-09-26 07:45:39', '2016-09-26 07:45:39', 1),
(4, 'avatar04.png', 30, 46, 60, 'Math first post', 'e42b69dbf733249db2715ac34ebac10d.png', 0, 1, '2016-09-23 08:59:42', '2016-09-23 08:59:42', 1),
(7, 'yehi_dekhna_baki_theo.jpg', 1, 21, 2, 'Nepali Troll', '118f568c3f17c89b0fcd7a7c23caedd8.jpg', 2, 1, '2016-09-26 07:37:49', '2016-09-26 07:37:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_subject`
--

DROP TABLE IF EXISTS `sms_subject`;
CREATE TABLE IF NOT EXISTS `sms_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT '0',
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_subject`
--

INSERT INTO `sms_subject` (`id`, `name`, `teacher_id`, `class_id`) VALUES
(1, 'English', 37, 1),
(2, 'Nepali', 38, 1),
(3, 'Math', 0, 1),
(61, 'Science', 0, 1),
(71, 'Math', 0, 37),
(72, 'Nepali', 0, 37),
(73, 'Social', 0, 37),
(75, 'Account', 0, 37),
(74, 'EPH', 0, 37),
(70, 'Nepali', 0, 32),
(69, 'English', 0, 31),
(64, 'English', 0, 36),
(63, 'English', 0, 37),
(60, 'Math', 0, 30),
(59, 'Nepali', 0, 30),
(58, 'Science', 0, 30),
(68, 'English', 0, 32),
(67, 'English', 0, 33),
(66, 'English', 0, 34),
(65, 'English', 0, 35),
(77, 'OPT Math', 0, 37),
(76, 'Science', 0, 37),
(78, 'Health', 0, 1),
(79, 'Nepali', 0, 31);

-- --------------------------------------------------------

--
-- Table structure for table `sms_syllabus`
--

DROP TABLE IF EXISTS `sms_syllabus`;
CREATE TABLE IF NOT EXISTS `sms_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` text NOT NULL,
  `count` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_system_variables`
--

DROP TABLE IF EXISTS `sms_system_variables`;
CREATE TABLE IF NOT EXISTS `sms_system_variables` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_key` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_transport`
--

DROP TABLE IF EXISTS `sms_transport`;
CREATE TABLE IF NOT EXISTS `sms_transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver` varchar(30) DEFAULT NULL,
  `bus` varchar(10) DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_users`
--

DROP TABLE IF EXISTS `sms_users`;
CREATE TABLE IF NOT EXISTS `sms_users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(7) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `dob` text NOT NULL,
  `pro_pic` text NOT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_login_attempt` datetime DEFAULT NULL,
  `forgot_exp` text,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `verification_code` text,
  `totp_secret` varchar(16) DEFAULT NULL,
  `ip_address` text,
  `login_attempts` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_users`
--

INSERT INTO `sms_users` (`id`, `email`, `pass`, `name`, `role`, `gender`, `full_name`, `contact`, `address`, `dob`, `pro_pic`, `banned`, `last_login`, `last_activity`, `last_login_attempt`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `totp_secret`, `ip_address`, `login_attempts`) VALUES
(1, 'ronash@outlook.com', '0dfa9d2681c715c5fe74bc76de9f5bd5a80d111cf6c6758d89e888e8c0b6ff37', 'ronash', 'Admin', '', 'Ronash Dhakal', '9841131037', 'Kathmandu, Nepal', '1996/08/06', '13083296_1110489132305037_2731460347279600354_n2.jpg', 0, '2016-12-05 07:11:44', '2016-12-05 07:12:50', '2016-12-05 07:00:00', NULL, NULL, NULL, NULL, NULL, '::1', NULL),
(37, 'kodstack@gmail.com', '9b8e1e7cced886ba930d33f9b7979a564cca7f8e000541ca96221df317add2ee', 'katman', 'Teacher', 'male', 'Lokesh Dhakal', '+(047) 7671-46425', 'Malmo, Sweden', '07/12/2016', '12931232_1332997793393293_4611127535228523960_n.jpg', 0, '2016-09-05 10:47:14', '2016-09-05 10:47:14', '2016-09-05 10:00:00', NULL, NULL, NULL, '', NULL, '::1', NULL),
(38, 'ronashmail@gmail.com', 'be54cd6b1afd756b89f667f587158adcb0df5d0c3214899801b7c8d10df4f53d', 'amrit', 'Teacher', 'male', 'Amrit Dahal', '+(977) 9889-723432', 'Kathmandu, Nepal', '07/17/1996', 'avatar5.png', 0, '2016-09-27 06:33:28', '2016-09-27 06:33:28', '2016-09-27 06:00:00', NULL, NULL, NULL, '', NULL, '::1', NULL),
(40, 'dhlokendra@gmail.com', 'c201d0697d8a833c703cb7581f2666cb4fcfd8194b3278e804149726fa57f825', 'dhlokendra', 'Parent', 'male', 'Lokesh Dhakal', '+(977) 9841-131037', 'Duwakot-1, Bhaktapur', '06/20/1995', 'avatar.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'VZZs2odTxix8hGSw', NULL, NULL, 0),
(41, 'ronashdkl@gmail.com', '68f00be35c17d837ddae6bd9a9875df58c8a605bbfe7d728feb741b4f9e6e654', 'mithaiji', 'Parent', 'male', 'Mithai Lal Jyadav', '+(989) 8434-235237', 'Sarlahi, India', '07/05/2016', 'avatar1.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'nBQO6mert9i4zYNF', NULL, NULL, 0),
(42, 'humansaroj@gmail.com', '58bc6f9d25988ed5e1dda828fe1ddb0539f787dffae675d43e983c0f5ecb34bf', 'saroj', 'Parent', 'male', 'Saroj Humagain', '+(977) 9860-024139', 'Bhakunde', '06/12/1985', 'mina.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'KBqPbOkVnPLnLTKM', NULL, NULL, 0),
(43, 'saroj@sms.com', '2ebc4a9fd7170145446482ec36de82de1ac69fcadcb5f993dfc4005c47e88b03', 'aakash', 'Student', 'male', 'Saroj Humagain', '+(977) 9890-809798', 'Bhaktapur', '07/19/2016', 'pro_pic.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '6dtJCQYrJWcpZ2yg', NULL, NULL, 0),
(44, 'admin@ronash.com.np', '77793c62ef24d87681db476c839a167856171699a5084591f873493ae6e55058', 'admin', 'Admin', 'male', 'Administration', '+(977) 9808-775660', 'Kathmandu, Nepal', '08/08/1956', 'mina1.png', 0, '2016-07-17 13:12:59', '2016-07-17 13:12:59', '2016-07-17 13:00:00', NULL, NULL, NULL, '', NULL, '::1', NULL),
(45, 'prayash@ronash.com.np', 'e0bd25218a77bf5b67af826cb5232210cdbec9fd1bfb1eb882e1fe1e55484acf', 'Pratik', 'Student', 'male', 'Pratik Timalsina', '+(976) 7867-867967', 'kathmandu', '07/27/2016', 'PhoXo1.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '4QxzCkaMQRi5Orct', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_user_to_group`
--

DROP TABLE IF EXISTS `sms_user_to_group`;
CREATE TABLE IF NOT EXISTS `sms_user_to_group` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_user_to_group`
--

INSERT INTO `sms_user_to_group` (`user_id`, `group_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(37, 2),
(38, 2),
(40, 4),
(41, 4),
(42, 4),
(43, 3),
(44, 1),
(45, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sms_user_variables`
--

DROP TABLE IF EXISTS `sms_user_variables`;
CREATE TABLE IF NOT EXISTS `sms_user_variables` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_sessions`
--

DROP TABLE IF EXISTS `system_sessions`;
CREATE TABLE IF NOT EXISTS `system_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_sessions`
--

INSERT INTO `system_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('b366d86579b4c8f4a3b72b981b9be5a0', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1481953495, ''),
('c9a62c0fe6190b5f21d4dfe3e0159f1b', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1481953465, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
