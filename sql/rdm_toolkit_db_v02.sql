/**
* Copyright (C) 2015  WiSe Lab, Computer Science Department, Western Michigan University
*Project Members Involved: Ajay Gupta, Aakash Gupta, Baba Shiv, Praneet Soni, Shrey Gupta and Vinay B Gavirangaswamy
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>
*/

--
-- Database: `rdmtoolkit`
--
#refresh db to make clean slate
CREATE SCHEMA IF NOT EXISTS `rdmtoolkit` ;
USE rdmtoolkit;
-- --------------------------------------------------------
DROP TABLE IF EXISTS `rdm_user`;
DROP TABLE IF EXISTS `experiments`;
DROP TABLE IF EXISTS `experconfirmation`;
DROP TABLE IF EXISTS `tasks`;
DROP TABLE IF EXISTS `bart_expr_data`;
DROP TABLE IF EXISTS `cups_expr_data`;
DROP TABLE IF EXISTS `igt_score_cards`;
DROP TABLE IF EXISTS `igt_expr_data`;
DROP TABLE IF EXISTS `stroop_expr_data`;
DROP TABLE IF EXISTS `nback_expr_data`;
DROP TABLE IF EXISTS `nback_score_practice`;
DROP TABLE IF EXISTS `nback_score_values`;
DROP TABLE IF EXISTS `delayed_discount_que`;
DROP TABLE IF EXISTS `mouse_track`;
DROP TABLE IF EXISTS `mouse_offset_coords`;
DROP TABLE IF EXISTS `random_table`;

--
-- Table structure for table `bart_expr_data`
--

CREATE TABLE IF NOT EXISTS `bart_expr_data` (
  `id` int(50) NOT NULL,
  `mid` varchar(60) NOT NULL,
  `experid` varchar(50) NOT NULL,
  `trialstopindex` int(5) NOT NULL,
  `noofpumps` int(5) NOT NULL,
  `trial_pts` varchar(50) NOT NULL,
  `total_pts` varchar(50) NOT NULL,
  `trialno` int(5) NOT NULL,
  `tracktime` double NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(60) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cups_expr_data`
--

CREATE TABLE IF NOT EXISTS `cups_expr_data` (
  `id` int(50) NOT NULL,
  `mid` varchar(60) NOT NULL,
  `experid` varchar(50) NOT NULL,
  `cupsnumber` int(5) NOT NULL,
  `amountshown` varchar(5) NOT NULL,
  `paychoice` int(5) NOT NULL,
  `position` varchar(5) NOT NULL,
  `participantchoice` int(5) NOT NULL,
  `participantposition` varchar(5) NOT NULL,
  `trialno` int(5) NOT NULL,
  `trial_pts` varchar(50) NOT NULL,
  `total_pts` varchar(50) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(60) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `tracktime` double NOT NULL,
  `cup_color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delayed_discount_que`
--

CREATE TABLE IF NOT EXISTS `delayed_discount_que` (
  `id` int(11) NOT NULL,
  `option_b` varchar(100) NOT NULL,
  `option_a` varchar(100) NOT NULL,
  `correct_option` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delayed_discount_que`
--

INSERT INTO `delayed_discount_que` (`id`, `option_b`, `option_a`, `correct_option`) VALUES
(1, '$44 10 years', '$22 now', 1),
(5, '$10 with 50% chance', '$3.5 for sure', 0),
(9, '$10 in 3 Days', '$1 now', 0),
(10, '$10 in 365 days', '$4.5 now', 0),
(11, '$10 in 2 days', '$1 now', 0),
(13, '$10 with 90% chance', '$0.5 for sure', 0),
(14, '$10 in 180 days', '$1.5 now', 0),
(15, '$10 in 30 days', '$2 now', 0),
(16, '$10 with 90% chance', '$0.5 for sure', 0),
(17, '$10 in 180 days', '$1.5 now', 0),
(18, '$10 in 30 days', '$2 now', 0),
(19, '$10 with 90% chance', '$0.5 for sure', 0),
(20, '$10 in 180 days', '$1.5 now', 0),
(21, '$10 in 30 days', '$2 now', 0),
(22, '$10 with 90% chance', '$0.5 for sure', 0),
(23, '$10 in 180 days', '$1.5 now', 0),
(24, '$10 in 30 days', '$2 now', 0),
(25, '$10 with 90% chance', '$0.5 for sure', 0),
(26, '$10 in 180 days', '$1.5 now', 0),
(27, '$10 in 30 days', '$2 now', 0),
(28, '$10 in 7 days', '$1 right now', 0),
(29, '$100 in 1 year', '$1 right now', 0);

-- --------------------------------------------------------

--
-- Table structure for table `experconfirmation`
--

CREATE TABLE IF NOT EXISTS `experconfirmation` (
  `id` int(10) unsigned NOT NULL,
  `confirmation_type` varchar(150) NOT NULL,
  `confirmation_page_route` varchar(150) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experconfirmation`
--

INSERT INTO `experconfirmation` (`id`, `confirmation_type`, `confirmation_page_route`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'CUSTOM_TXT', '#', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27'),
(2, 'DEFAULT', 'end.php', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE IF NOT EXISTS `experiments` (
  `id` varchar(50) NOT NULL,
  `expername` varchar(150) NOT NULL,
  `expertype` varchar(100) NOT NULL,
  `nooftrials` int(10) NOT NULL,
  `expertrial_outcome_type` varchar(50) NOT NULL,
  `confirmationcode` varchar(100) DEFAULT NULL,
  `experend_conf_page_type` varchar(200) NOT NULL,
  `experend_conf_customtext` varchar(1000) DEFAULT NULL,
  `urllink` varchar(350) NOT NULL,
  `mouse_track` int(11) NOT NULL DEFAULT '0',
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiments`
--



-- --------------------------------------------------------

--
-- Table structure for table `igt_expr_data`
--

CREATE TABLE IF NOT EXISTS `igt_expr_data` (
  `id` int(50) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `experid` char(36) NOT NULL,
  `trialno` int(100) NOT NULL,
  `initial_total` int(100) NOT NULL,
  `cash_A_win` int(100) NOT NULL,
  `cash_A_lose` int(100) NOT NULL,
  `cash_B_win` int(100) NOT NULL,
  `cash_B_lose` int(100) NOT NULL,
  `cash_C_win` int(100) NOT NULL,
  `cash_C_lose` int(100) NOT NULL,
  `cash_D_win` int(100) NOT NULL,
  `cash_D_lose` int(100) NOT NULL,
  `selected_card` varchar(50) NOT NULL,
  `final_total` int(100) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tracktime` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `igt_score_cards`
--

CREATE TABLE IF NOT EXISTS `igt_score_cards` (
  `s.no` int(50) NOT NULL,
  `card_A_win` int(100) NOT NULL,
  `card_A_lose` int(100) NOT NULL,
  `card_B_win` int(100) NOT NULL,
  `card_B_lose` int(100) NOT NULL,
  `card_C_win` int(100) NOT NULL,
  `card_C_lose` int(100) NOT NULL,
  `card_D_win` int(100) NOT NULL,
  `card_D_lose` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `igt_score_cards`
--

INSERT INTO `igt_score_cards` (`s.no`, `card_A_win`, `card_A_lose`, `card_B_win`, `card_B_lose`, `card_C_win`, `card_C_lose`, `card_D_win`, `card_D_lose`) VALUES
(1, 80, -350, 100, -1250, 60, -25, 60, -250),
(2, 90, 0, 80, 0, 50, 0, 55, 0),
(3, 100, -250, 110, 0, 60, 0, 45, 0),
(4, 80, -350, 100, -1250, 60, -25, 60, -250),
(5, 90, 0, 80, 0, 50, 0, 55, 0),
(6, 100, -250, 110, 0, 60, 0, 45, 0),
(7, 120, 0, 120, 0, 45, -25, 55, 0),
(8, 100, -300, 90, 0, 50, -50, 60, 0),
(9, 110, 0, 100, 0, 45, 0, 60, 0),
(10, 80, -200, 90, 0, 55, -50, 40, 0),
(11, 120, 0, 120, 0, 45, 0, 45, 0),
(12, 110, 0, 110, 0, 50, -50, 50, 0),
(13, 90, -150, 80, 0, 40, -50, 40, 0),
(14, 110, -350, 110, -1500, 70, 0, 55, 0),
(15, 130, 0, 100, 0, 55, -25, 60, -275),
(16, 90, -300, 90, 0, 65, -75, 40, 0),
(17, 100, 0, 130, 0, 45, 0, 40, 0),
(18, 120, -200, 120, 0, 55, -25, 45, 0),
(19, 110, 0, 130, 0, 40, 0, 55, 0),
(20, 90, -250, 110, 0, 70, -25, 65, 0),
(21, 130, -150, 90, 0, 60, -75, 70, 0),
(22, 120, -250, 100, 0, 50, 0, 50, 0),
(23, 100, 0, 120, 0, 40, -50, 70, 0),
(24, 120, -250, 120, 0, 60, 0, 60, 0),
(25, 140, -300, 110, -1750, 65, -25, 55, 0),
(26, 110, 0, 140, 0, 55, 0, 65, 0),
(27, 110, -350, 130, 0, 80, -50, 80, 0),
(28, 100, 0, 100, 0, 40, -25, 40, 0),
(29, 120, -200, 110, 0, 60, -50, 80, 0),
(30, 130, -250, 120, 0, 55, 0, 40, 0),
(31, 110, -150, 120, 0, 65, -25, 65, 0),
(32, 140, -250, 140, 0, 40, -75, 55, -300),
(33, 120, 0, 110, 0, 80, -50, 60, 0),
(34, 130, -350, 130, 0, 65, -25, 65, 0),
(35, 120, -200, 140, 0, 75, 0, 75, 0),
(36, 140, -250, 120, -2000, 55, -25, 60, 0),
(37, 130, -250, 110, 0, 60, -25, 65, 0),
(38, 110, -150, 130, 0, 70, -25, 75, -325),
(39, 150, 0, 150, 0, 65, 0, 85, 0),
(40, 140, -150, 110, 0, 55, -75, 45, 0),
(41, 120, -300, 150, 0, 75, -25, 55, 0),
(42, 150, -350, 120, 0, 45, -50, 70, 0),
(43, 110, 0, 140, 0, 85, -75, 55, 0),
(44, 140, -350, 140, 0, 70, -25, 70, 0),
(45, 130, -200, 150, 0, 80, 0, 80, 0),
(46, 150, -250, 130, 0, 60, -25, 65, 0),
(47, 140, -250, 120, 0, 65, -25, 70, 0),
(48, 120, -150, 140, 0, 75, -25, 80, -350),
(49, 160, 0, 160, -2250, 70, -25, 90, 0),
(50, 150, -150, 120, 0, 60, -75, 50, 0),
(51, 130, -300, 160, 0, 80, -25, 60, 0),
(52, 160, -350, 130, 0, 50, -50, 75, 0),
(53, 120, -250, 150, 0, 90, -75, 60, 0),
(54, 150, -350, 150, 0, 75, -25, 75, 0),
(55, 140, -200, 160, 0, 85, -25, 85, 0),
(56, 160, -250, 140, 0, 65, -25, 70, 0),
(57, 150, -250, 130, 0, 70, -25, 75, 0),
(58, 130, -150, 150, 0, 80, -25, 85, 0),
(59, 170, -250, 170, 0, 75, -25, 95, 0),
(60, 160, -150, 130, 0, 65, -75, 55, 0),
(61, 140, -300, 170, -2500, 85, -25, 65, -375),
(62, 170, -350, 140, 0, 55, -50, 80, 0),
(63, 130, -250, 160, 0, 95, -75, 65, 0),
(64, 170, -350, 140, 0, 65, -25, 95, 0),
(65, 130, -200, 140, 0, 95, -75, 65, -375),
(66, 130, -250, 150, -2500, 65, -25, 75, 0),
(67, 140, -150, 130, 0, 55, -25, 65, 0),
(68, 150, -350, 160, 0, 70, -25, 80, 0),
(69, 160, -300, 170, 0, 80, -25, 85, 0),
(70, 160, -250, 170, 0, 75, -25, 80, 0),
(71, 150, -150, 170, 0, 75, -25, 75, 0),
(72, 170, -150, 150, 0, 55, -25, 55, 0),
(73, 140, -300, 160, 0, 75, -25, 75, 0),
(74, 130, -350, 140, 0, 70, -75, 55, 0),
(75, 160, -250, 160, -2500, 85, -25, 65, -375),
(76, 140, -350, 140, 0, 95, -25, 85, 0),
(77, 150, -250, 130, 0, 85, -50, 65, 0),
(78, 130, -250, 150, 0, 75, -50, 70, 0),
(79, 140, -200, 160, 0, 85, -25, 85, 0),
(80, 170, -250, 130, 0, 65, -75, 70, 0),
(81, 160, -250, 130, 0, 80, -25, 75, 0),
(82, 150, -150, 170, 0, 65, -25, 85, 0),
(83, 170, -250, 150, 0, 85, -75, 95, 0),
(84, 140, -300, 160, 0, 80, -25, 85, 0),
(85, 170, -300, 150, 0, 75, -25, 65, 0),
(86, 160, -150, 140, 0, 75, -75, 75, -375),
(87, 130, -150, 130, 0, 55, -25, 95, 0),
(88, 130, -200, 150, 0, 80, -25, 75, 0),
(89, 130, -250, 130, 0, 65, -25, 65, 0),
(90, 170, -250, 130, 0, 95, -25, 80, 0),
(91, 160, -150, 160, -2500, 70, -75, 85, 0),
(92, 150, -250, 150, 0, 75, -25, 95, 0),
(93, 160, -350, 170, 0, 85, -75, 65, 0),
(94, 140, -250, 140, 0, 85, -25, 70, 0),
(95, 150, -250, 140, 0, 65, -50, 85, 0),
(96, 130, -250, 150, 0, 55, -75, 85, -375),
(97, 170, -350, 170, -2500, 95, -25, 75, 0),
(98, 140, -200, 130, 0, 65, -25, 65, 0),
(99, 150, -250, 170, 0, 85, -25, 75, 0),
(100, 160, -350, 140, 0, 65, -25, 55, 0),
(101, 170, -250, 160, 0, 75, -25, 70, 0),
(102, 140, -350, 160, 0, 70, -25, 55, 0),
(103, 150, -150, 170, 0, 85, -50, 80, 0),
(104, 170, -350, 140, 0, 65, -25, 95, 0),
(105, 130, -200, 140, 0, 95, -75, 65, -375),
(106, 130, -250, 150, -2500, 65, -25, 75, 0),
(107, 140, -150, 130, 0, 55, -25, 65, 0),
(108, 150, -350, 160, 0, 70, -25, 80, 0),
(109, 160, -300, 170, 0, 80, -25, 85, 0),
(110, 160, -250, 170, 0, 75, -25, 80, 0),
(111, 150, -150, 170, 0, 75, -25, 75, 0),
(112, 170, -150, 150, 0, 55, -25, 55, 0),
(113, 140, -300, 160, 0, 75, -25, 75, 0),
(114, 130, -350, 140, 0, 70, -75, 55, 0),
(115, 160, -250, 160, -2500, 85, -25, 65, -375),
(116, 140, -350, 140, 0, 95, -25, 85, 0),
(117, 150, -250, 130, 0, 85, -50, 65, 0),
(118, 130, -250, 150, 0, 75, -50, 70, 0),
(119, 140, -200, 160, 0, 85, -25, 85, 0),
(120, 170, -250, 130, 0, 65, -75, 70, 0),
(121, 160, -250, 130, 0, 80, -25, 75, 0),
(122, 150, -150, 170, 0, 65, -25, 85, 0),
(123, 170, -250, 150, 0, 85, -75, 95, 0),
(124, 140, -300, 160, 0, 80, -25, 85, 0),
(125, 170, -300, 150, 0, 75, -25, 65, 0),
(126, 160, -150, 140, 0, 75, -75, 75, -375),
(127, 130, -150, 130, 0, 55, -25, 95, 0),
(128, 130, -200, 150, 0, 80, -25, 75, 0),
(129, 130, -250, 130, 0, 65, -25, 65, 0),
(130, 170, -250, 130, 0, 95, -25, 80, 0),
(131, 160, -150, 160, -2500, 70, -75, 85, 0),
(132, 150, -250, 150, 0, 75, -25, 95, 0),
(133, 160, -350, 170, 0, 85, -75, 65, 0),
(134, 140, -250, 140, 0, 85, -25, 70, 0),
(135, 150, -250, 140, 0, 65, -50, 85, 0),
(136, 130, -250, 150, 0, 55, -75, 85, -375),
(137, 170, -350, 170, -2500, 95, -25, 75, 0),
(138, 140, -200, 130, 0, 65, -25, 65, 0),
(139, 150, -250, 170, 0, 85, -25, 75, 0),
(140, 160, -350, 140, 0, 65, -25, 55, 0),
(141, 170, -250, 160, 0, 75, -25, 70, 0),
(142, 140, -350, 160, 0, 70, -25, 55, 0),
(143, 150, -150, 170, 0, 85, -50, 80, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mouse_offset_coords`
--

CREATE TABLE IF NOT EXISTS `mouse_offset_coords` (
  `id` int(11) NOT NULL,
  `exptype` varchar(100) NOT NULL,
  `coords` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mouse_offset_coords`
--



-- --------------------------------------------------------

--
-- Table structure for table `mouse_track`
--

CREATE TABLE IF NOT EXISTS `mouse_track` (
  `id` int(11) NOT NULL,
  `expid` varchar(1000) NOT NULL,
  `expertype` varchar(100) NOT NULL,
  `mid` varchar(1000) NOT NULL,
  `x_coord` int(11) NOT NULL,
  `y_coord` int(11) NOT NULL,
  `time_spent` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nback_expr_data`
--

CREATE TABLE IF NOT EXISTS `nback_expr_data` (
  `id` int(50) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `experid` char(36) NOT NULL,
  `trialno` int(100) NOT NULL,
  `stimuli` char(1) NOT NULL,
  `corres` int(100) NOT NULL,
  `response` int(100) NOT NULL,
  `score` int(200) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `exp_flag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `nback_score_practice`
--

CREATE TABLE IF NOT EXISTS `nback_score_practice` (
  `s.no` int(11) DEFAULT NULL,
  `score_values` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nback_score_practice`
--

INSERT INTO `nback_score_practice` (`s.no`, `score_values`) VALUES
(1, 'a'),
(2, 'm'),
(3, 'e'),
(4, 'm'),
(5, 'y'),
(6, 'p'),
(7, 'v'),
(8, 'w'),
(9, 'v'),
(10, 't'),
(11, 'r'),
(12, 't'),
(13, 'o'),
(14, 'd'),
(15, 'b'),
(16, 'd'),
(17, 'o'),
(18, 'c'),
(19, 'o'),
(20, 'u'),
(21, 'o');

-- --------------------------------------------------------

--
-- Table structure for table `nback_score_values`
--

CREATE TABLE IF NOT EXISTS `nback_score_values` (
  `s.no` int(11) NOT NULL,
  `char_value` char(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nback_score_values`
--

INSERT INTO `nback_score_values` (`s.no`, `char_value`) VALUES
(1, 'a'),
(2, 'y'),
(3, 's'),
(4, 'f'),
(5, 'k'),
(6, 'f'),
(7, 'p'),
(8, 'w'),
(9, 'o'),
(10, 'e'),
(11, 'o'),
(12, 'r'),
(13, 'n'),
(14, 'v'),
(15, 'x'),
(16, 'a'),
(17, 'x'),
(18, 'c'),
(19, 'k'),
(20, 'p'),
(21, 'q'),
(22, 'p'),
(23, 'f'),
(24, 'a'),
(25, 'y'),
(26, 'h'),
(27, 'y'),
(28, 'r'),
(29, 'e'),
(30, 'u'),
(31, 'm'),
(32, 'a'),
(33, 'i'),
(34, 'f'),
(35, 'e'),
(36, 'f'),
(37, 'j'),
(38, 'a'),
(39, 'r'),
(40, 'e'),
(41, 'r'),
(42, 'k'),
(43, 'y'),
(44, 'e'),
(45, 'a'),
(46, 'c'),
(47, 'q'),
(48, 'n'),
(49, 'q'),
(50, 'f'),
(51, 'c'),
(52, 'a'),
(53, 'k'),
(54, 'd'),
(55, 'k'),
(56, 'j'),
(57, 'v'),
(58, 's'),
(59, 'a'),
(60, 'e'),
(61, 'a'),
(62, 'e'),
(63, 'd'),
(64, 'y'),
(65, 'b'),
(66, 'm'),
(67, 'w'),
(68, 'p'),
(69, 'w'),
(70, 'm'),
(71, 'x'),
(72, 'o'),
(73, 'g'),
(74, 'h'),
(75, 'g'),
(76, 'r'),
(77, 's'),
(78, 'f'),
(79, 'y'),
(80, 'f'),
(81, 'o'),
(82, 'j'),
(83, 'm'),
(84, 'n'),
(85, 'f'),
(86, 't'),
(87, 'b'),
(88, 't'),
(89, 'd'),
(90, 'f'),
(91, 'g'),
(92, 'h'),
(93, 'g'),
(94, 'k'),
(95, 't'),
(96, 'i');

-- --------------------------------------------------------

--
-- Table structure for table `random_table`
--

CREATE TABLE IF NOT EXISTS `random_table` (
  `dorandom` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `random_table`
--

INSERT INTO `random_table` (`dorandom`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `rdm_user`
--

CREATE TABLE IF NOT EXISTS `rdm_user` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `role` varchar(500) NOT NULL DEFAULT 'END_USER',
  `email` varchar(300) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdm_user`
--



-- --------------------------------------------------------

--
-- Table structure for table `stroop_expr_data`
--

CREATE TABLE IF NOT EXISTS `stroop_expr_data` (
  `id` int(50) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `experid` char(36) NOT NULL,
  `trialno` int(100) NOT NULL,
  `word` varchar(50) NOT NULL,
  `corres` varchar(100) NOT NULL,
  `response` varchar(100) NOT NULL,
  `score` int(200) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `exp_flag` varchar(50) NOT NULL,
  `tracktime` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` varchar(50) NOT NULL,
  `taskname` varchar(150) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `taskname`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
('BART', 'Balloon Task', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27'),
('CUPS', 'Cups Task', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27'),
('DelayD', 'Delayed Discounting Task', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27'),
('IGT', 'Iowa Gambling Task', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27'),
('NBACK', 'N Back', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27'),
('STROOP', 'Stroop', 'ADMIN', 'ADMIN', '2015-07-05 19:27:27', '2015-07-05 19:27:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bart_expr_data`
--
ALTER TABLE `bart_expr_data`
  ADD PRIMARY KEY (`id`), ADD KEY `experid` (`experid`);

--
-- Indexes for table `cups_expr_data`
--
ALTER TABLE `cups_expr_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delayed_discount_que`
--
ALTER TABLE `delayed_discount_que`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experconfirmation`
--
ALTER TABLE `experconfirmation`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `igt_expr_data`
--
ALTER TABLE `igt_expr_data`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `igt_score_cards`
--
ALTER TABLE `igt_score_cards`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `mouse_offset_coords`
--
ALTER TABLE `mouse_offset_coords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mouse_track`
--
ALTER TABLE `mouse_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nback_expr_data`
--
ALTER TABLE `nback_expr_data`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `nback_score_values`
--
ALTER TABLE `nback_score_values`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `rdm_user`
--
ALTER TABLE `rdm_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stroop_expr_data`
--
ALTER TABLE `stroop_expr_data`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bart_expr_data`
--
ALTER TABLE `bart_expr_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cups_expr_data`
--
ALTER TABLE `cups_expr_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delayed_discount_que`
--
ALTER TABLE `delayed_discount_que`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `experconfirmation`
--
ALTER TABLE `experconfirmation`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `igt_expr_data`
--
ALTER TABLE `igt_expr_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `igt_score_cards`
--
ALTER TABLE `igt_score_cards`
  MODIFY `s.no` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `mouse_offset_coords`
--
ALTER TABLE `mouse_offset_coords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mouse_track`
--
ALTER TABLE `mouse_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nback_expr_data`
--
ALTER TABLE `nback_expr_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nback_score_values`
--
ALTER TABLE `nback_score_values`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `rdm_user`
--
ALTER TABLE `rdm_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stroop_expr_data`
--
ALTER TABLE `stroop_expr_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;