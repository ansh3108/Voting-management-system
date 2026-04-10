-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 04:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(6, 'president'),
(7, 'Deputy president');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'passwordx123', 1),
(2, 'Kapeesh Chhikara', '3851', 1111, 2),
(3, 'Surabhi Tiwari', '3871', 1111, 2),
(4, 'Garvit Virmani', '3887', 1111, 2),
(5, 'Atharva Chaturvedi', '3906', 1111, 2),
(6, 'Rudra Bansal', '3911', 1111, 2),
(7, 'Aditya Chaturvedi', '3935', 1111, 2),
(8, 'Madhav Tanwar', '3942', 1111, 2),
(9, 'Jai Sharma', '3947', 1111, 2),
(10, 'Krishna Bisht', '4006', 1111, 2),
(11, 'Aradhya Singh (Staff)', '4078', 1111, 2),
(12, 'Shaurya Shukla', '4172', 1111, 2),
(13, 'Aaradhya', '4246', 1111, 2),
(14, 'Kavya Garg', '4325', 1111, 2),
(15, 'Siddhant Hira', '4330', 1111, 2),
(16, 'Srishti', '4419', 1111, 2),
(17, 'Parantap Upadhyay', '4471', 1111, 2),
(18, 'Lakshita', '4475', 1111, 2),
(19, 'Mohak Sahni', '4524', 1111, 2),
(20, 'Shaurya Sharma', '4548', 1111, 2),
(21, 'Tarun', '4624', 1111, 2),
(22, 'Vihaan', '4648', 1111, 2),
(23, 'Shanifa Zehra', '4698', 1111, 2),
(24, 'Tanvi Khatana', '4728', 1111, 2),
(25, 'Lakshya Chaurasiya', '4737', 1111, 2),
(26, 'Dhruv Sharma', '4740', 1111, 2),
(27, 'Rahini', '4742', 1111, 2),
(28, 'Anjika Singh', '4788', 1111, 2),
(29, 'Lavika', '4847', 1111, 2),
(30, 'Harshna Goel', '4860', 1111, 2),
(31, 'Rhythm', '4880', 1111, 2),
(32, 'Riddhi Alawadhi', '4942', 1111, 2),
(33, 'Mishika Singh', '4954', 1111, 2),
(34, 'Amogh Sharma', '5010', 1111, 2),
(35, 'Avleen Dhanda', '5036', 1111, 2),
(36, 'Rohan Kumar', '5044', 1111, 2),
(37, 'Ayaansh Attri', '5053', 1111, 2),
(38, 'Anuyesh Tripathy', '5082', 1111, 2),
(39, 'Aradhya Sharma', '5143', 1111, 2),
(40, 'Rhythm Sharma', '5150', 1111, 2),
(41, 'Tanmay Dinesh Thakur', '5183', 1111, 2),
(42, 'Devansh Sharma', '3832', 1111, 2),
(43, 'Lovepreet Singh', '3850', 1111, 2),
(44, 'Aarav Gupta', '3855', 1111, 2),
(45, 'Darshna', '3863', 1111, 2),
(46, 'Farhan Saifi', '3960', 1111, 2),
(47, 'Avneet Kaur', '3974', 1111, 2),
(48, 'Pranshi Kukreja', '3976', 1111, 2),
(49, 'Gagan Ram Kendal', '3983', 1111, 2),
(50, 'Mayank Kendal', '3985', 1111, 2),
(51, 'Kanishk Tanwar', '3987', 1111, 2),
(52, 'Chavi', '3999', 1111, 2),
(53, 'Tanush Choudhary', '4167', 1111, 2),
(54, 'Bhavika', '4178', 1111, 2),
(55, 'Himansh Dhiman', '4187', 1111, 2),
(56, 'Nishtha', '4191', 1111, 2),
(57, 'Madhav Gupta', '4228', 1111, 2),
(58, 'Jahnvi', '4236', 1111, 2),
(59, 'Aalok Mishra', '4317', 1111, 2),
(60, 'Anshuman Agrahari', '4371', 1111, 2),
(61, 'Vivaan Sharma', '4391', 1111, 2),
(62, 'Divansh Sharma', '4396', 1111, 2),
(63, 'Jashandeep Singh', '4401', 1111, 2),
(64, 'Monish Goyal', '4402', 1111, 2),
(65, 'Manvi', '4404', 1111, 2),
(66, 'Abhijeet Tiwari', '4405', 1111, 2),
(67, 'Shaurya Sharma', '4408', 1111, 2),
(68, 'Kavya Gupta', '4485', 1111, 2),
(69, 'Ansh Rawat', '4489', 1111, 2),
(70, 'Moksha', '4491', 1111, 2),
(71, 'Japji Kaur', '4508', 1111, 2),
(72, 'Aarav Nougain', '4564', 1111, 2),
(73, 'Aditya Sharma', '4613', 1111, 2),
(74, 'Yash', '4621', 1111, 2),
(75, 'Lakshit Chauhan', '4666', 1111, 2),
(76, 'Aarohi Negi', '4745', 1111, 2),
(77, 'Urvish Arora', '5025', 1111, 2),
(78, 'Kavya', '5074', 1111, 2),
(79, 'Kartik Rajput', '5175', 1111, 2),
(80, 'Aanya Bhati', '5213', 1111, 2),
(81, 'Abhavya Singhel', '4083', 1111, 2),
(82, 'Raavi Sharma', '4084', 1111, 2),
(83, 'Pranay Kaushal', '4086', 1111, 2),
(84, 'Kovid Prasad', '4096', 1111, 2),
(85, 'Rudraksh Bhatia', '4108', 1111, 2),
(86, 'Reyansh Gupta', '4114', 1111, 2),
(87, 'Kanav Panchal', '4116', 1111, 2),
(88, 'Gauransh Nijhawan', '4117', 1111, 2),
(89, 'Navya', '4120', 1111, 2),
(90, 'Nivriti Singh', '4127', 1111, 2),
(91, 'Sanskar Chandila', '4131', 1111, 2),
(92, 'Ishit Saini', '4133', 1111, 2),
(93, 'Anant Singh', '4139', 1111, 2),
(94, 'Inayah Tanweer', '4147', 1111, 2),
(95, 'Aadvik Sharma', '4150', 1111, 2),
(96, 'Gaurvik Rai', '4151', 1111, 2),
(97, 'Manav Jaswal', '4155', 1111, 2),
(98, 'Agamjot Singh', '4161', 1111, 2),
(99, 'Manasvi Dixit', '4162', 1111, 2),
(100, 'Sanvi Singh', '4163', 1111, 2),
(101, 'Drishya Aggarwal', '4363', 1111, 2),
(102, 'Sarakshi Sharma', '4376', 1111, 2),
(103, 'Prithul Saini', '4388', 1111, 2),
(104, 'Ganishkha', '4394', 1111, 2),
(105, 'Tanishka Agarwal', '4566', 1111, 2),
(106, 'Riyansh Chauhan', '4662', 1111, 2),
(107, 'Samarth Taluja', '4736', 1111, 2),
(108, 'Harshita', '4854', 1111, 2),
(109, 'Aaradhya Vaishnav', '4990', 1111, 2),
(110, 'Dhruv Awasthi', '4166', 1111, 2),
(111, 'Shreyans Chaturvedi', '4192', 1111, 2),
(112, 'Navya Kuntal', '4312', 1111, 2),
(113, 'Hanny', '4367', 1111, 2),
(114, 'Shagun', '4512', 1111, 2),
(115, 'Mayan Singh', '4542', 1111, 2),
(116, 'Divyanshu Deep', '4632', 1111, 2),
(117, 'Vrishank Mishra', '4747', 1111, 2),
(118, 'Kanishk Dubey', '4865', 1111, 2),
(119, 'Chhaya Sharma', '5179', 1111, 2),
(120, 'Aradhya', '5195', 1111, 2),
(121, 'Lakshit Kumar', '5207', 1111, 2),
(122, 'Lavanya Sharma', '3203', 1111, 2),
(123, 'Veer Chaudhary', '3348', 1111, 2),
(124, 'Ishi', '3349', 1111, 2),
(125, 'Atharva', '3472', 1111, 2),
(126, 'Kaashwini', '3554', 1111, 2),
(127, 'Ojass Jangid', '3602', 1111, 2),
(128, 'Chetanya Upadhyay', '3631', 1111, 2),
(129, 'Kavya Verma', '3637', 1111, 2),
(130, 'Karan Chandila', '3650', 1111, 2),
(131, 'Nainika Singh', '3674', 1111, 2),
(132, 'Lubhan Makhija', '3719', 1111, 2),
(133, 'Unnati', '3745', 1111, 2),
(134, 'Aarav Atrey', '3827', 1111, 2),
(135, 'Kaavya Singh', '3848', 1111, 2),
(136, 'Naman Vats', '3858', 1111, 2),
(137, 'Natik Lohiya', '3868', 1111, 2),
(138, 'Jatin', '3873', 1111, 2),
(139, 'Charit Beniwal', '3874', 1111, 2),
(140, 'Vishrut Garg', '3875', 1111, 2),
(141, 'Vansh Bansal', '3881', 1111, 2),
(142, 'Diksha Dwivedi', '3892', 1111, 2),
(143, 'Ansh Mishra', '3907', 1111, 2),
(144, 'Charvi Chauhan', '4145', 1111, 2),
(145, 'Mayank', '4254', 1111, 2),
(146, 'Ansh Sajwan', '4265', 1111, 2),
(147, 'Jasleen Kaur', '4381', 1111, 2),
(148, 'Japneet Singh', '4473', 1111, 2),
(149, 'Shaurya', '4544', 1111, 2),
(150, 'Gazal Yadav', '4668', 1111, 2),
(151, 'Ishika Bharara', '4771', 1111, 2),
(152, 'Ananya Negi', '4898', 1111, 2),
(187, 'Jatin Lohia', '2828', 1111, 2),
(188, 'Anirudh Vashist', '3508', 1111, 2),
(189, 'Agrima Aswal', '3517', 1111, 2),
(190, 'Vansh Goel', '3518', 1111, 2),
(191, 'Aadrika Jaiswal', '3521', 1111, 2),
(192, 'Dhruv Kumar', '3524', 1111, 2),
(193, 'Gurliv Kaur', '3525', 1111, 2),
(194, 'Abhinav Singh Rawat', '3526', 1111, 2),
(195, 'Kartikey', '3528', 1111, 2),
(196, 'Aarna Tiwari', '3536', 1111, 2),
(197, 'Dhriti Sharma', '3545', 1111, 2),
(198, 'Ridhman Kaur', '3551', 1111, 2),
(199, 'Kashika', '3573', 1111, 2),
(200, 'Sanchit Goyal', '3605', 1111, 2),
(201, 'Kavya Ratra', '3658', 1111, 2),
(202, 'Anushri Dudpuri', '3675', 1111, 2),
(203, 'Tanmayi', '3682', 1111, 2),
(204, 'Sartaj Singh Sandhu', '3763', 1111, 2),
(205, 'Divyanshi', '4202', 1111, 2),
(206, 'Anika', '4203', 1111, 2),
(207, 'Riya Dalal', '4213', 1111, 2),
(208, 'Abhinav Kumar', '4339', 1111, 2),
(209, 'Aditya Baghel', '4343', 1111, 2),
(210, 'Bhuvi', '4511', 1111, 2),
(211, 'Herman Nanda', '4633', 1111, 2),
(212, 'Adhyan Uppal', '4746', 1111, 2),
(213, 'Anshul Verma', '4750', 1111, 2),
(214, 'Kashvi Sharma', '4798', 1111, 2),
(215, 'Kartik Bisht', '4819', 1111, 2),
(216, 'Ayush', '5013', 1111, 2),
(217, 'Pallavi', '2889', 1111, 2),
(218, 'Aarush Rana', '2903', 1111, 2),
(219, 'Aarush Chandila', '2942', 1111, 2),
(220, 'Tanish Lekhra', '2950', 1111, 2),
(221, 'Harshvardhan Singh', '2961', 1111, 2),
(222, 'Mukul Gaur', '3016', 1111, 2),
(223, 'Lakshita Arora', '3021', 1111, 2),
(224, 'Yashita', '3030', 1111, 2),
(225, 'Tatav Bhardwaj', '3032', 1111, 2),
(226, 'Alisha Saifi', '3039', 1111, 2),
(227, 'Vansh Chandila', '3073', 1111, 2),
(228, 'Pari Yadav', '3130', 1111, 2),
(229, 'Naksh', '3147', 1111, 2),
(230, 'Manav', '3160', 1111, 2),
(231, 'Ishan Singh', '3300', 1111, 2),
(232, 'Ashutosh Sinha', '3326', 1111, 2),
(233, 'Kumar Chaitanya', '3344', 1111, 2),
(234, 'Armaan Khan', '3455', 1111, 2),
(235, 'Navya Chauhan', '3567', 1111, 2),
(236, 'Bhumika Sharma', '3580', 1111, 2),
(237, 'Divyansh Raj', '3607', 1111, 2),
(238, 'Parth', '3626', 1111, 2),
(239, 'Lavanya', '3630', 1111, 2),
(240, 'Kumari Nikita', '4280', 1111, 2),
(241, 'Tani Rani', '4284', 1111, 2),
(242, 'Divyanshi Saini', '4390', 1111, 2),
(243, 'Yashvi Khurana', '4503', 1111, 2),
(244, 'Arayana', '4558', 1111, 2),
(245, 'Samaira Rana', '4724', 1111, 2),
(246, 'Anvi Kapoor', '2891', 1111, 2),
(247, 'Kartikey Bisht', '2892', 1111, 2),
(248, 'Tanvi Kathuria', '2913', 1111, 2),
(249, 'Lakshay Chhonkar', '2933', 1111, 2),
(250, 'Nishka', '3077', 1111, 2),
(251, 'Ritesh Kumar Rai', '3103', 1111, 2),
(252, 'Kashish Narula', '3156', 1111, 2),
(253, 'Ojasvi Verma', '3273', 1111, 2),
(254, 'Aradhya', '3298', 1111, 2),
(255, 'Dhwani Arora', '3305', 1111, 2),
(256, 'Vaibhav Chaudhary', '3311', 1111, 2),
(257, 'Aaradhya', '3312', 1111, 2),
(258, 'Ojaswani', '3327', 1111, 2),
(259, 'Ananya Bhardwaj', '3360', 1111, 2),
(260, 'Anmol Singla', '3570', 1111, 2),
(261, 'Anshdeep Kaur', '3610', 1111, 2),
(262, 'Nirbhay Chandila', '3737', 1111, 2),
(263, 'Harshit Yadav', '3835', 1111, 2),
(264, 'Himanshu Chahal', '3846', 1111, 2),
(265, 'Ridhi Rawat', '3922', 1111, 2),
(266, 'Ayush Yadav', '3955', 1111, 2),
(267, 'Mohd Zaid', '3981', 1111, 2),
(268, 'Sakshi Rani', '3984', 1111, 2),
(269, 'Bhawi Tanwar', '3986', 1111, 2),
(270, 'Charu Sharma', '4013', 1111, 2),
(271, 'Dhruv', '4015', 1111, 2),
(272, 'Chesta', '4285', 1111, 2),
(273, 'Abhishek Meena', '3012', 1111, 2),
(274, 'Ayush Rawat', '3194', 1111, 2),
(275, 'Aradhya Parashar', '3211', 1111, 2),
(276, 'Navya Bhatia', '3215', 1111, 2),
(277, 'Prisha Patwal', '3230', 1111, 2),
(278, 'Dolcy Aggarwal', '3283', 1111, 2),
(279, 'Anandita Makhija', '3309', 1111, 2),
(280, 'Gautam Kumar', '3321', 1111, 2),
(281, 'Shivam Tewatía', '3380', 1111, 2),
(282, 'Arman', '3394', 1111, 2),
(283, 'Harshvardhan Singh Bisht', '3410', 1111, 2),
(284, 'Aashish Singh', '3421', 1111, 2),
(285, 'Tanisha', '3465', 1111, 2),
(286, 'Nandini Sharma', '3529', 1111, 2),
(287, 'Aafia Mahtab', '3643', 1111, 2),
(288, 'Ananya Pandey', '3657', 1111, 2),
(289, 'Achintya Singh', '3683', 1111, 2),
(290, 'Jayesh Pal', '3790', 1111, 2),
(291, 'Palak Rawat', '3885', 1111, 2),
(292, 'Parul', '3853', 1111, 2),
(293, 'Tanishka Singh', '3910', 1111, 2),
(294, 'Hayyan Zaka Gheyasi', '3977', 1111, 2),
(295, 'Ananya', '4070', 1111, 2),
(296, 'Anshu', '4240', 1111, 2),
(297, 'Avigna Kashyap', '4350', 1111, 2),
(298, 'Rudra Rajput', '4420', 1111, 2),
(299, 'Shray', '4598', 1111, 2),
(300, 'Srishti', '4672', 1111, 2),
(301, 'Aarav Baisoya', '4773', 1111, 2),
(302, 'Deepanshu Verma', '4786', 1111, 2),
(303, 'Aryan', '3509', 1111, 2),
(304, 'Samaira Jaiswal', '3514', 1111, 2),
(305, 'Chaitanye Batra', '3535', 1111, 2),
(306, 'Pahal Baweja', '3537', 1111, 2),
(307, 'Mayank Jha', '3539', 1111, 2),
(308, 'Devansh Jawane', '3558', 1111, 2),
(309, 'Sanskar Shrivastava', '3649', 1111, 2),
(310, 'Hardik Singh', '3681', 1111, 2),
(311, 'Manvi Sharma', '3708', 1111, 2),
(312, 'Armaan', '3750', 1111, 2),
(313, 'Pawni Kapoor', '3810', 1111, 2),
(314, 'Ekamdeep Singh', '3918', 1111, 2),
(315, 'Arjun Nagar', '3939', 1111, 2),
(316, 'Drishtika Singh', '3963', 1111, 2),
(317, 'Bhavya Bhardwaj', '4091', 1111, 2),
(318, 'Navdeep Singh Saini', '4099', 1111, 2),
(319, 'Rayansh Barua', '4100', 1111, 2),
(320, 'Bhavneet Kaur', '4105', 1111, 2),
(321, 'Adarsh Singh Negi', '4106', 1111, 2),
(322, 'Herit Saini', '4107', 1111, 2),
(323, 'Dakshansh Singh', '4123', 1111, 2),
(324, 'Aaradhaya', '4149', 1111, 2),
(325, 'Yugal Kaushik', '4247', 1111, 2),
(326, 'Parth Aneja', '4359', 1111, 2),
(327, 'Aradhya', '4418', 1111, 2),
(328, 'Ramneet Kaur', '4426', 1111, 2),
(329, 'Arnav Sharma', '4459', 1111, 2),
(330, 'Anishka', '4583', 1111, 2),
(331, 'Gayathri Aradhya Duvvi', '4643', 1111, 2),
(332, 'Som Jain', '4744', 1111, 2),
(333, 'Vansh Tomar', '4769', 1111, 2),
(334, 'Chirakshi Aggarwal', '4850', 1111, 2),
(335, 'Saanvi Raghav', '4875', 1111, 2),
(336, 'Sanchi Bansal', '5152', 1111, 2),
(337, 'Shivansh Thakur', '3822', 1111, 2),
(338, 'Koustubhya Prasad', '3824', 1111, 2),
(339, 'Aaryaveer Kataria', '3825', 1111, 2),
(340, 'Aakriti Rawat', '3830', 1111, 2),
(341, 'Moukthika', '3834', 1111, 2),
(342, 'Niharika Nagar', '3837', 1111, 2),
(343, 'Saksham Sharma', '3849', 1111, 2),
(344, 'Laksh Kheterpal', '3856', 1111, 2),
(345, 'Yaksh Khatrí', '3857', 1111, 2),
(346, 'Nipun Singh', '3864', 1111, 2),
(347, 'Piyush Manhas', '3865', 1111, 2),
(348, 'Dheerendra Singh', '3890', 1111, 2),
(349, 'Garvit Taneja', '3891', 1111, 2),
(350, 'Pratyaksh Sharma', '3893', 1111, 2),
(351, 'Arnav Gogar', '3903', 1111, 2),
(352, 'Mehul Gandhi', '3909', 1111, 2),
(353, 'Avni Sorout', '3913', 1111, 2),
(354, 'Sanvi Kaushik', '3948', 1111, 2),
(355, 'Swastika Verma', '4044', 1111, 2),
(356, 'Akshat Kumar', '4197', 1111, 2),
(357, 'Prabhnoor Kaur', '4198', 1111, 2),
(358, 'Rupanshi', '4199', 1111, 2),
(359, 'Abhijeet Yadav', '4270', 1111, 2),
(360, 'Srishti Kalra', '4306', 1111, 2),
(361, 'Raghav Bhardwaj', '4316', 1111, 2),
(362, 'Dishant Tiwari', '4326', 1111, 2),
(363, 'Saksham Jayes', '4337', 1111, 2),
(364, 'Vanshika', '4366', 1111, 2),
(365, 'Chetanya Vishnawat', '4436', 1111, 2),
(366, 'Kavyansh Ranjan', '4474', 1111, 2),
(367, 'Mayank', '4971', 1111, 2),
(368, 'Vaibhav Sharma', '5180', 1111, 2),
(369, 'Vibhor Raj Monga', '2624', 1111, 2),
(370, 'Anshuman Choudhary', '2626', 1111, 2),
(371, 'Harleen Kaur', '2888', 1111, 2),
(372, 'Aastha Arora', '2918', 1111, 2),
(373, 'Anushk Chaturvedi', '2957', 1111, 2),
(374, 'Vedant Chauhan', '2964', 1111, 2),
(375, 'Kanan Tripathi', '2984', 1111, 2),
(376, 'Aditya Iyer', '3086', 1111, 2),
(377, 'Bhavi', '3101', 1111, 2),
(378, 'Randeep Kaur', '3224', 1111, 2),
(379, 'Shraddha', '3249', 1111, 2),
(380, 'Divyansh Verma', '3266', 1111, 2),
(381, 'Kumar Sanskar', '3302', 1111, 2),
(382, 'Kartik Manuja', '3314', 1111, 2),
(383, 'Shivani Kumari', '3478', 1111, 2),
(384, 'Donisha Garg', '3493', 1111, 2),
(385, 'Pragun Paliwal', '3540', 1111, 2),
(386, 'Madhav Sharma', '3578', 1111, 2),
(387, 'Chakshan Tanwar', '3587', 1111, 2),
(388, 'Anshi Bisht', '3795', 1111, 2),
(389, 'Yauvini Gulati', '4234', 1111, 2),
(390, 'Daksh Kumar Garg', '4307', 1111, 2),
(391, 'Kunjal', '4521', 1111, 2),
(392, 'Mohd Ayan', '4553', 1111, 2),
(393, 'Abhiraj Singh', '4562', 1111, 2),
(394, 'Abhi Verma', '4749', 1111, 2),
(395, 'Harshita Bhowmic', '4902', 1111, 2),
(396, 'Udit Verma', '2682', 1111, 2),
(397, 'Sachin', '2744', 1111, 2),
(398, 'Ishmeet Singh', '2784', 1111, 2),
(399, 'Anshika', '2860', 1111, 2),
(400, 'Sahil Kumar Singh', '2905', 1111, 2),
(401, 'Yugansh Satija', '2934', 1111, 2),
(402, 'Siddharth Chandila', '3054', 1111, 2),
(403, 'Devanshi Bhardwaj', '3068', 1111, 2),
(404, 'Lucky', '3190', 1111, 2),
(405, 'Rashi Rawat', '3193', 1111, 2),
(406, 'Kirti Mishra', '3276', 1111, 2),
(407, 'Avni Sharma', '3308', 1111, 2),
(408, 'Simar Shrama', '3405', 1111, 2),
(409, 'Rudransh', '3458', 1111, 2),
(410, 'Aditya Pandey', '3592', 1111, 2),
(411, 'Navya', '3666', 1111, 2),
(412, 'Simarjeet Singh', '3728', 1111, 2),
(413, 'Tarun Yadav', '3898', 1111, 2),
(414, 'Gunjan Rawat', '3900', 1111, 2),
(415, 'Dhruv Bhardwaj', '3930', 1111, 2),
(416, 'Aditya', '4018', 1111, 2),
(417, 'Rudraksh Kumar', '4067', 1111, 2),
(418, 'Anash', '4073', 1111, 2),
(419, 'Arjun Chauhan', '4409', 1111, 2),
(420, 'Garv Kumar', '4806', 1111, 2),
(421, 'Shaurya Bist', '2675', 1111, 2),
(422, 'Kush Ambawata', '2759', 1111, 2),
(423, 'Shashank Singh', '2792', 1111, 2),
(424, 'Jasika Lohiya', '2829', 1111, 2),
(425, 'Albina Taleem', '2853', 1111, 2),
(426, 'Ananya Dwivedi', '2894', 1111, 2),
(427, 'Bhavya Rawat', '2925', 1111, 2),
(428, 'Devanshi Sharma', '2929', 1111, 2),
(429, 'Bhumi Chandila', '2944', 1111, 2),
(430, 'Tanishq Bhatia', '2963', 1111, 2),
(431, 'Nirbhay Singh', '2966', 1111, 2),
(432, 'Shachi Vishwakarma', '2999', 1111, 2),
(433, 'Mohit Lamba', '3001', 1111, 2),
(434, 'Mohit Kumar Gola', '3007', 1111, 2),
(435, 'Akshit Agrawal', '3317', 1111, 2),
(436, 'Krishna Singh', '3430', 1111, 2),
(437, 'Anmol Kumar', '3676', 1111, 2),
(438, 'Laxman Sharma', '3686', 1111, 2),
(439, 'Jayesh', '3746', 1111, 2),
(440, 'Dipanshu', '3784', 1111, 2),
(441, 'Parth Singh Matela', '3905', 1111, 2),
(442, 'Dhanvi Mehta', '4000', 1111, 2),
(443, 'Sudeep Negi', '4001', 1111, 2),
(444, 'Shreya Sharma', '4570', 1111, 2),
(445, 'Aratrika Satish Ramavat', '5096', 1111, 2),
(446, 'Mansi Singh', '2373', 1111, 2),
(447, 'Nihal Sivadas', '2380', 1111, 2),
(448, 'Amit Yadav', '2403', 1111, 2),
(449, 'Harshita Raj', '2612', 1111, 2),
(450, 'Isha Rawat', '2643', 1111, 2),
(451, 'Dhairya Verma', '2679', 1111, 2),
(452, 'Nitya Makkar', '2709', 1111, 2),
(453, 'Yatharth Joshi', '2740', 1111, 2),
(454, 'Siddharth Singh Chauhan', '2781', 1111, 2),
(455, 'Siddharth Vats', '2789', 1111, 2),
(456, 'Piyush Badeshra', '3220', 1111, 2),
(457, 'Aditya Sinha', '3237', 1111, 2),
(458, 'Divya Sharma', '3328', 1111, 2),
(459, 'Divyanshu Singh', '3359', 1111, 2),
(460, 'Shaurya Sharma', '3381', 1111, 2),
(461, 'Shreya Agarwal', '3443', 1111, 2),
(462, 'Disha Sharma (Staff)', '3568', 1111, 2),
(463, 'Mannat Sidheshwar', '3594', 1111, 2),
(464, 'Hardik Vashishth', '3753', 1111, 2),
(465, 'Sanskriti Verma', '4043', 1111, 2),
(466, 'Pushkar Chauhan', '4259', 1111, 2),
(467, 'Aditi Verma', '4348', 1111, 2),
(468, 'Tanish Sharma', '4618', 1111, 2),
(469, 'Shourya Bhardwaj', '2384', 1111, 2),
(470, 'K. Anish Sharma', '2394', 1111, 2),
(471, 'Pari Aggarwal', '2402', 1111, 2),
(472, 'Kartik Ratra', '2428', 1111, 2),
(473, 'Aditya Bist', '2457', 1111, 2),
(474, 'Lakshya Dhamija', '2467', 1111, 2),
(475, 'Aaditya Aggarwal', '2476', 1111, 2),
(476, 'Anmol Sharma', '2506', 1111, 2),
(477, 'Khushi', '2540', 1111, 2),
(478, 'Niti Goyal', '2659', 1111, 2),
(479, 'Kartik Sharma', '2743', 1111, 2),
(480, 'Virat', '2754', 1111, 2),
(481, 'Avika Malik', '2770', 1111, 2),
(482, 'Granth Chandela', '2943', 1111, 2),
(483, 'Sahib Chawla', '2850', 1111, 2),
(484, 'Vaishnavi', '2980', 1111, 2),
(485, 'Krish Sepehya', '3025', 1111, 2),
(486, 'Vansh Chauhan', '3136', 1111, 2),
(487, 'Ashna Parashar', '3216', 1111, 2),
(488, 'Jai Aditya', '3261', 1111, 2),
(489, 'Harsh Kumar', '3264', 1111, 2),
(490, 'Kartik Singh Rawat', '3293', 1111, 2),
(491, 'Vaishnavi Verma', '3395', 1111, 2),
(492, 'Avika Shrivastava', '3533', 1111, 2),
(493, 'Manvik Kumar', '3677', 1111, 2),
(494, 'Yash Baghel', '3419', 1111, 2),
(495, 'Vanshika Sharma', '3895', 1111, 2),
(496, 'Yash Dahiya', '3965', 1111, 2),
(497, 'Chetna Ranjan', '4075', 1111, 2),
(498, 'Reia Kheterpal', '4176', 1111, 2),
(499, 'Vibhor Dhingra', '4567', 1111, 2),
(500, 'Tanmay Gaur', '2370', 1111, 2),
(501, 'Gatik Kumar', '2411', 1111, 2),
(502, 'Harsh Bhati', '2439', 1111, 2),
(503, 'Diya Sharma', '2482', 1111, 2),
(504, 'Naman Sharma', '2618', 1111, 2),
(505, 'Jasmine Kaur Randhawa', '2625', 1111, 2),
(506, 'Sifa Khan', '2692', 1111, 2),
(507, 'Guramrit Kaur', '2955', 1111, 2),
(508, 'Anirudh Sharma', '3175', 1111, 2),
(509, 'Vanshika', '3301', 1111, 2),
(510, 'Namrata Singh', '3372', 1111, 2),
(511, 'Akshra Tewatia', '3379', 1111, 2),
(512, 'Divija', '3959', 1111, 2),
(513, 'Tashu', '4283', 1111, 2),
(514, 'Bhavishya Singh', '4360', 1111, 2),
(515, 'Sourabh Nain', '4453', 1111, 2),
(516, 'Akshith Duvvi', '4644', 1111, 2),
(517, 'Avnit Kaur', '4839', 1111, 2),
(518, 'Vaishnavi Gaur', '4846', 1111, 2),
(519, 'Yogishta Anand', '5215', 1111, 2),
(520, 'Yashika Yadav', '2481', 1111, 2),
(521, 'Soham Bhardwaj', '2501', 1111, 2),
(522, 'Gautami Manwani', '2686', 1111, 2),
(523, 'Tatvansh Singh', '2715', 1111, 2),
(524, 'Cheshta Chawla', '2897', 1111, 2),
(525, 'Aarav Nahar', '2958', 1111, 2),
(526, 'Turvi Malhotra', '3046', 1111, 2),
(527, 'Prince Choudhary', '3097', 1111, 2),
(528, 'Samiksha Aggarwal', '3242', 1111, 2),
(529, 'Aayushi Raghav', '3315', 1111, 2),
(530, 'Anshika Malik', '3352', 1111, 2),
(531, 'Pranjal Soni', '4028', 1111, 2),
(532, 'Snigdha Sharma', '4297', 1111, 2),
(533, 'Gagan Chandila', '5164', 1111, 2),
(534, 'Aaron Stephen ', '5191', 1111, 2);





-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `voting_opt_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(1, 1, 1, 1, 3),
(2, 1, 3, 5, 3),
(3, 1, 4, 6, 3),
(4, 1, 4, 7, 3),
(5, 1, 4, 8, 3),
(6, 1, 4, 9, 3),
(7, 1, 1, 3, 4),
(8, 1, 3, 12, 4),
(9, 1, 4, 6, 4),
(10, 1, 4, 8, 4),
(11, 1, 4, 10, 4),
(12, 1, 4, 11, 4),
(13, 1, 1, 3, 5),
(14, 1, 3, 5, 5),
(15, 1, 4, 6, 5),
(16, 1, 4, 7, 5),
(17, 1, 4, 8, 5),
(18, 1, 4, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `voting_cat_settings`
--

CREATE TABLE `voting_cat_settings` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `max_selection` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_cat_settings`
--

INSERT INTO `voting_cat_settings` (`id`, `voting_id`, `category_id`, `max_selection`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `voting_list`
--

CREATE TABLE `voting_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_list`
--

INSERT INTO `voting_list` (`id`, `title`, `description`, `is_default`) VALUES
(5, '2026', 'Elections for year', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting_opt`
--

CREATE TABLE `voting_opt` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_opt`
--

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`) VALUES
(18, 5, 7, '1661957820_1.jpg', 'victor'),
(19, 5, 7, '1661957820_2.jpg', 'sam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_list`
--
ALTER TABLE `voting_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_opt`
--
ALTER TABLE `voting_opt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voting_list`
--
ALTER TABLE `voting_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voting_opt`
--
ALTER TABLE `voting_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
