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
(1, 'Administrator', 'admin', 'password', 1),
(2, 'Kapeesh Chhikara', '3851', 388951, 2),
(3, 'Surabhi Tiwari', '3871', 390971, 2),
(4, 'Garvit Virmani', '3887', 392587, 2),
(5, 'Atharva Chaturvedi', '3906', 394506, 2),
(6, 'Rudra Bansal', '3911', 395011, 2),
(7, 'Aditya Chaturvedi', '3935', 397435, 2),
(8, 'Madhav Tanwar', '3942', 398142, 2),
(9, 'Jai Sharma', '3947', 398647, 2),
(10, 'Krishna Bisht', '4006', 404606, 2),
(11, 'Aradhya Singh (Staff)', '4078', 411878, 2),
(12, 'Shaurya Shukla', '4172', 421372, 2),
(13, 'Aaradhya', '4246', 428846, 2),
(14, 'Kavya Garg', '4325', 436825, 2),
(15, 'Siddhant Hira', '4330', 437330, 2),
(16, 'Srishti', '4419', 446319, 2),
(17, 'Parantap Upadhyay', '4471', 451571, 2),
(18, 'Lakshita', '4475', 451975, 2),
(19, 'Mohak Sahni', '4524', 456924, 2),
(20, 'Shaurya Sharma', '4548', 459348, 2),
(21, 'Tarun', '4624', 467024, 2),
(22, 'Vihaan', '4648', 469448, 2),
(23, 'Shanifa Zehra', '4698', 474498, 2),
(24, 'Tanvi Khatana', '4728', 477528, 2),
(25, 'Lakshya Chaurasiya', '4737', 478437, 2),
(26, 'Dhruv Sharma', '4740', 478740, 2),
(27, 'Rahini', '4742', 478942, 2),
(28, 'Anjika Singh', '4788', 483588, 2),
(29, 'Lavika', '4847', 489547, 2),
(30, 'Harshna Goel', '4860', 490860, 2),
(31, 'Rhythm', '4880', 492880, 2),
(32, 'Riddhi Alawadhi', '4942', 499142, 2),
(33, 'Mishika Singh', '4954', 500354, 2),
(34, 'Amogh Sharma', '5010', 506010, 2),
(35, 'Avleen Dhanda', '5036', 508636, 2),
(36, 'Rohan Kumar', '5044', 509444, 2),
(37, 'Ayaansh Attri', '5053', 510353, 2),
(38, 'Anuyesh Tripathy', '5082', 513282, 2),
(39, 'Aradhya Sharma', '5143', 519443, 2),
(40, 'Rhythm Sharma', '5150', 520150, 2),
(41, 'Tanmay Dinesh Thakur', '5183', 523483, 2),
(42, 'Devansh Sharma', '3832', 387032, 2),
(43, 'Lovepreet Singh', '3850', 388850, 2),
(44, 'Aarav Gupta', '3855', 389355, 2),
(45, 'Darshna', '3863', 390163, 2),
(46, 'Farhan Saifi', '3960', 399960, 2),
(47, 'Avneet Kaur', '3974', 401374, 2),
(48, 'Pranshi Kukreja', '3976', 401576, 2),
(49, 'Gagan Ram Kendal', '3983', 402283, 2),
(50, 'Mayank Kendal', '3985', 402485, 2),
(51, 'Kanishk Tanwar', '3987', 402687, 2),
(52, 'Chavi', '3999', 403899, 2),
(53, 'Tanush Choudhary', '4167', 420867, 2),
(54, 'Bhavika', '4178', 421978, 2),
(55, 'Himansh Dhiman', '4187', 422887, 2),
(56, 'Nishtha', '4191', 423291, 2),
(57, 'Madhav Gupta', '4228', 427028, 2),
(58, 'Jahnvi', '4236', 427836, 2),
(59, 'Aalok Mishra', '4317', 436017, 2),
(60, 'Anshuman Agrahari', '4371', 441471, 2),
(61, 'Vivaan Sharma', '4391', 443491, 2),
(62, 'Divansh Sharma', '4396', 443996, 2),
(63, 'Jashandeep Singh', '4401', 444501, 2),
(64, 'Monish Goyal', '4402', 444602, 2),
(65, 'Manvi', '4404', 444804, 2),
(66, 'Abhijeet Tiwari', '4405', 444905, 2),
(67, 'Shaurya Sharma', '4408', 445208, 2),
(68, 'Kavya Gupta', '4485', 452985, 2),
(69, 'Ansh Rawat', '4489', 453389, 2),
(70, 'Moksha', '4491', 453591, 2),
(71, 'Japji Kaur', '4508', 455308, 2),
(72, 'Aarav Nougain', '4564', 460964, 2),
(73, 'Aditya Sharma', '4613', 465913, 2),
(74, 'Yash', '4621', 466721, 2),
(75, 'Lakshit Chauhan', '4666', 471266, 2),
(76, 'Aarohi Negi', '4745', 479245, 2),
(77, 'Urvish Arora', '5025', 507525, 2),
(78, 'Kavya', '5074', 512474, 2),
(79, 'Kartik Rajput', '5175', 522675, 2),
(80, 'Aanya Bhati', '5213', 526513, 2),
(81, 'Abhavya Singhel', '4083', 412383, 2),
(82, 'Raavi Sharma', '4084', 412484, 2),
(83, 'Pranay Kaushal', '4086', 412686, 2),
(84, 'Kovid Prasad', '4096', 413696, 2),
(85, 'Rudraksh Bhatia', '4108', 415108, 2),
(86, 'Reyansh Gupta', '4114', 415514, 2),
(87, 'Kanav Panchal', '4116', 415716, 2),
(88, 'Gauransh Nijhawan', '4117', 415817, 2),
(89, 'Navya', '4120', 416120, 2),
(90, 'Nivriti Singh', '4127', 416927, 2),
(91, 'Sanskar Chandila', '4131', 417431, 2),
(92, 'Ishit Saini', '4133', 417633, 2),
(93, 'Anant Singh', '4139', 418239, 2),
(94, 'Inayah Tanweer', '4147', 418847, 2),
(95, 'Aadvik Sharma', '4150', 419150, 2),
(96, 'Gaurvik Rai', '4151', 419251, 2),
(97, 'Manav Jaswal', '4155', 419655, 2),
(98, 'Agamjot Singh', '4161', 420261, 2),
(99, 'Manasvi Dixit', '4162', 420362, 2),
(100, 'Sanvi Singh', '4163', 420463, 2),
(101, 'Drishya Aggarwal', '4363', 440963, 2),
(102, 'Sarakshi Sharma', '4376', 442376, 2),
(103, 'Prithul Saini', '4388', 443788, 2),
(104, 'Ganishkha', '4394', 444394, 2),
(105, 'Tanishka Agarwal', '4566', 461166, 2),
(106, 'Riyansh Chauhan', '4662', 471462, 2),
(107, 'Samarth Taluja', '4736', 478336, 2),
(108, 'Harshita', '4854', 490254, 2),
(109, 'Aaradhya Vaishnav', '4990', 504990, 2),
(110, 'Dhruv Awasthi', '4166', 420766, 2),
(111, 'Shreyans Chaturvedi', '4192', 423392, 2),
(112, 'Navya Kuntal', '4312', 435512, 2),
(113, 'Hanny', '4367', 441067, 2),
(114, 'Shagun', '4512', 456712, 2),
(115, 'Mayan Singh', '4542', 459942, 2),
(116, 'Divyanshu Deep', '4632', 467832, 2),
(117, 'Vrishank Mishra', '4747', 479447, 2),
(118, 'Kanishk Dubey', '4865', 491365, 2),
(119, 'Chhaya Sharma', '5179', 523079, 2),
(120, 'Aradhya', '5195', 524695, 2),
(121, 'Lakshit Kumar', '5207', 525907, 2),
(122, 'Lavanya Sharma', '3203', 323503, 2),
(123, 'Veer Chaudhary', '3348', 338148, 2),
(124, 'Ishi', '3349', 338249, 2),
(125, 'Atharva', '3472', 350672, 2),
(126, 'Kaashwini', '3554', 358954, 2),
(127, 'Ojass Jangid', '3602', 363802, 2),
(128, 'Chetanya Upadhyay', '3631', 366931, 2),
(129, 'Kavya Verma', '3637', 367337, 2),
(130, 'Karan Chandila', '3650', 368150, 2),
(131, 'Nainika Singh', '3674', 370474, 2),
(132, 'Lubhan Makhija', '3719', 375119, 2),
(133, 'Unnati', '3745', 377245, 2),
(134, 'Aarav Atrey', '3827', 386127, 2),
(135, 'Kaavya Singh', '3848', 388248, 2),
(136, 'Naman Vats', '3858', 389358, 2),
(137, 'Natik Lohiya', '3868', 390468, 2),
(138, 'Jatin', '3873', 390873, 2),
(139, 'Charit Beniwal', '3874', 390974, 2),
(140, 'Vishrut Garg', '3875', 391075, 2),
(141, 'Vansh Bansal', '3881', 391681, 2),
(142, 'Diksha Dwivedi', '3892', 392692, 2),
(143, 'Ansh Mishra', '3907', 394007, 2),
(144, 'Charvi Chauhan', '4145', 418645, 2),
(145, 'Mayank', '4254', 429654, 2),
(146, 'Ansh Sajwan', '4265', 430765, 2),
(147, 'Jasleen Kaur', '4381', 442481, 2),
(148, 'Japneet Singh', '4473', 451773, 2),
(149, 'Shaurya', '4544', 458944, 2),
(150, 'Gazal Yadav', '4668', 471468, 2),
(151, 'Ishika Bharara', '4771', 481871, 2),
(152, 'Ananya Negi', '4898', 494798, 2),
(187, 'Jatin Lohia', '2828', 285628, 2),
(188, 'Anirudh Vashist', '3508', 354308, 2),
(189, 'Agrima Aswal', '3517', 355217, 2),
(190, 'Vansh Goel', '3518', 355318, 2),
(191, 'Aadrika Jaiswal', '3521', 355621, 2),
(192, 'Dhruv Kumar', '3524', 355924, 2),
(193, 'Gurliv Kaur', '3525', 356025, 2),
(194, 'Abhinav Singh Rawat', '3526', 356126, 2),
(195, 'Kartikey', '3528', 356328, 2),
(196, 'Aarna Tiwari', '3536', 357136, 2),
(197, 'Dhriti Sharma', '3545', 358045, 2),
(198, 'Ridhman Kaur', '3551', 358551, 2),
(199, 'Kashika', '3573', 360873, 2),
(200, 'Sanchit Goyal', '3605', 364505, 2),
(201, 'Kavya Ratra', '3658', 369458, 2),
(202, 'Anushri Dudpuri', '3675', 371175, 2),
(203, 'Tanmayi', '3682', 371882, 2),
(204, 'Sartaj Singh Sandhu', '3763', 380063, 2),
(205, 'Divyanshi', '4202', 424402, 2),
(206, 'Anika', '4203', 424503, 2),
(207, 'Riya Dalal', '4213', 425713, 2),
(208, 'Abhinav Kumar', '4339', 438239, 2),
(209, 'Aditya Baghel', '4343', 438643, 2),
(210, 'Bhuvi', '4511', 455611, 2),
(211, 'Herman Nanda', '4633', 467933, 2),
(212, 'Adhyan Uppal', '4746', 479246, 2),
(213, 'Anshul Verma', '4750', 479650, 2),
(214, 'Kashvi Sharma', '4798', 484598, 2),
(215, 'Kartik Bisht', '4819', 486919, 2),
(216, 'Ayush', '5013', 506313, 2),
(217, 'Pallavi', '2889', 291789, 2),
(218, 'Aarush Rana', '2903', 293203, 2),
(219, 'Aarush Chandila', '2942', 297742, 2),
(220, 'Tanish Lekhra', '2950', 298450, 2),
(221, 'Harshvardhan Singh', '2961', 299661, 2),
(222, 'Mukul Gaur', '3016', 304616, 2),
(223, 'Lakshita Arora', '3021', 305121, 2),
(224, 'Yashita', '3030', 306330, 2),
(225, 'Tatav Bhardwaj', '3032', 306532, 2),
(226, 'Alisha Saifi', '3039', 307239, 2),
(227, 'Vansh Chandila', '3073', 310373, 2),
(228, 'Pari Yadav', '3130', 316430, 2),
(229, 'Naksh', '3147', 318147, 2),
(230, 'Manav', '3160', 319760, 2),
(231, 'Ishan Singh', '3300', 333300, 2),
(232, 'Ashutosh Sinha', '3326', 335926, 2),
(233, 'Kumar Chaitanya', '3344', 337744, 2),
(234, 'Armaan Khan', '3455', 349955, 2),
(235, 'Navya Chauhan', '3567', 360267, 2),
(236, 'Bhumika Sharma', '3580', 361580, 2),
(237, 'Divyansh Raj', '3607', 364307, 2),
(238, 'Parth', '3626', 366826, 2),
(239, 'Lavanya', '3630', 367230, 2),
(240, 'Kumari Nikita', '4280', 432080, 2),
(241, 'Tani Rani', '4284', 432484, 2),
(242, 'Divyanshi Saini', '4390', 443290, 2),
(243, 'Yashvi Khurana', '4503', 455803, 2),
(244, 'Arayana', '4558', 460358, 2),
(245, 'Samaira Rana', '4724', 477124, 2),
(246, 'Anvi Kapoor', '2891', 292991, 2),
(247, 'Kartikey Bisht', '2892', 293092, 2),
(248, 'Tanvi Kathuria', '2913', 294213, 2),
(249, 'Lakshay Chhonkar', '2933', 296233, 2),
(250, 'Nishka', '3077', 310777, 2),
(251, 'Ritesh Kumar Rai', '3103', 313403, 2),
(252, 'Kashish Narula', '3156', 318756, 2),
(253, 'Ojasvi Verma', '3273', 330573, 2),
(254, 'Aradhya', '3298', 333298, 2),
(255, 'Dhwani Arora', '3305', 333805, 2),
(256, 'Vaibhav Chaudhary', '3311', 334411, 2),
(257, 'Aaradhya', '3312', 334512, 2),
(258, 'Ojaswani', '3327', 335727, 2),
(259, 'Ananya Bhardwaj', '3360', 339360, 2),
(260, 'Anmol Singla', '3570', 360570, 2),
(261, 'Anshdeep Kaur', '3610', 364610, 2),
(262, 'Nirbhay Chandila', '3737', 377037, 2),
(263, 'Harshit Yadav', '3835', 387135, 2),
(264, 'Himanshu Chahal', '3846', 388446, 2),
(265, 'Ridhi Rawat', '3922', 396122, 2),
(266, 'Ayush Yadav', '3955', 399455, 2),
(267, 'Mohd Zaid', '3981', 402781, 2),
(268, 'Sakshi Rani', '3984', 403084, 2),
(269, 'Bhawi Tanwar', '3986', 403286, 2),
(270, 'Charu Sharma', '4013', 405313, 2),
(271, 'Dhruv', '4015', 405515, 2),
(272, 'Chesta', '4285', 432785, 2),
(273, 'Abhishek Meena', '3012', 304212, 2),
(274, 'Ayush Rawat', '3194', 322594, 2),
(275, 'Aradhya Parashar', '3211', 324311, 2),
(276, 'Navya Bhatia', '3215', 324715, 2),
(277, 'Prisha Patwal', '3230', 326230, 2),
(278, 'Dolcy Aggarwal', '3283', 331483, 2),
(279, 'Anandita Makhija', '3309', 334209, 2),
(280, 'Gautam Kumar', '3321', 335421, 2),
(281, 'Shivam Tewatía', '3380', 341180, 2),
(282, 'Arman', '3394', 342794, 2),
(283, 'Harshvardhan Singh Bisht', '3410', 344510, 2),
(284, 'Aashish Singh', '3421', 345621, 2),
(285, 'Tanisha', '3465', 350865, 2),
(286, 'Nandini Sharma', '3529', 356429, 2),
(287, 'Aafia Mahtab', '3643', 368043, 2),
(288, 'Ananya Pandey', '3657', 369357, 2),
(289, 'Achintya Singh', '3683', 371783, 2),
(290, 'Jayesh Pal', '3790', 382790, 2),
(291, 'Palak Rawat', '3885', 392385, 2),
(292, 'Parul', '3853', 389353, 2),
(293, 'Tanishka Singh', '3910', 395010, 2),
(294, 'Hayyan Zaka Gheyasi', '3977', 401677, 2),
(295, 'Ananya', '4070', 411070, 2),
(296, 'Anshu', '4240', 428440, 2),
(297, 'Avigna Kashyap', '4350', 439350, 2),
(298, 'Rudra Rajput', '4420', 446420, 2),
(299, 'Shray', '4598', 464498, 2),
(300, 'Srishti', '4672', 471872, 2),
(301, 'Aarav Baisoya', '4773', 481773, 2),
(302, 'Deepanshu Verma', '4786', 483586, 2),
(303, 'Aryan', '3509', 354409, 2),
(304, 'Samaira Jaiswal', '3514', 355914, 2),
(305, 'Chaitanye Batra', '3535', 357035, 2),
(306, 'Pahal Baweja', '3537', 357237, 2),
(307, 'Mayank Jha', '3539', 357439, 2),
(308, 'Devansh Jawane', '3558', 359358, 2),
(309, 'Sanskar Shrivastava', '3649', 368149, 2),
(310, 'Hardik Singh', '3681', 371481, 2),
(311, 'Manvi Sharma', '3708', 374508, 2),
(312, 'Armaan', '3750', 378750, 2),
(313, 'Pawni Kapoor', '3810', 384810, 2),
(314, 'Ekamdeep Singh', '3918', 395118, 2),
(315, 'Arjun Nagar', '3939', 397239, 2),
(316, 'Drishtika Singh', '3963', 400563, 2),
(317, 'Bhavya Bhardwaj', '4091', 413191, 2),
(318, 'Navdeep Singh Saini', '4099', 413999, 2),
(319, 'Rayansh Barua', '4100', 414100, 2),
(320, 'Bhavneet Kaur', '4105', 414605, 2),
(321, 'Adarsh Singh Negi', '4106', 414706, 2),
(322, 'Herit Saini', '4107', 414807, 2),
(323, 'Dakshansh Singh', '4123', 416423, 2),
(324, 'Aaradhaya', '4149', 418449, 2),
(325, 'Yugal Kaushik', '4247', 428747, 2),
(326, 'Parth Aneja', '4359', 439959, 2),
(327, 'Aradhya', '4418', 445218, 2),
(328, 'Ramneet Kaur', '4426', 446426, 2),
(329, 'Arnav Sharma', '4459', 449959, 2),
(330, 'Anishka', '4583', 463883, 2),
(331, 'Gayathri Aradhya Duvvi', '4643', 468943, 2),
(332, 'Som Jain', '4744', 479144, 2),
(333, 'Vansh Tomar', '4769', 481469, 2),
(334, 'Chirakshi Aggarwal', '4850', 490350, 2),
(335, 'Saanvi Raghav', '4875', 492375, 2),
(336, 'Sanchi Bansal', '5152', 520552, 2),
(337, 'Shivansh Thakur', '3822', 386022, 2),
(338, 'Koustubhya Prasad', '3824', 386224, 2),
(339, 'Aaryaveer Kataria', '3825', 386325, 2),
(340, 'Aakriti Rawat', '3830', 386830, 2),
(341, 'Moukthika', '3834', 387234, 2),
(342, 'Niharika Nagar', '3837', 387537, 2),
(343, 'Saksham Sharma', '3849', 388449, 2),
(344, 'Laksh Kheterpal', '3856', 389056, 2),
(345, 'Yaksh Khatrí', '3857', 389157, 2),
(346, 'Nipun Singh', '3864', 389664, 2),
(347, 'Piyush Manhas', '3865', 389765, 2),
(348, 'Dheerendra Singh', '3890', 392890, 2),
(349, 'Garvit Taneja', '3891', 392991, 2),
(350, 'Pratyaksh Sharma', '3893', 393193, 2),
(351, 'Arnav Gogar', '3903', 394203, 2),
(352, 'Mehul Gandhi', '3909', 394809, 2),
(353, 'Avni Sorout', '3913', 395213, 2),
(354, 'Sanvi Kaushik', '3948', 398748, 2),
(355, 'Swastika Verma', '4044', 408444, 2),
(356, 'Akshat Kumar', '4197', 423897, 2),
(357, 'Prabhnoor Kaur', '4198', 423998, 2),
(358, 'Rupanshi', '4199', 424099, 2),
(359, 'Abhijeet Yadav', '4270', 431770, 2),
(360, 'Srishti Kalra', '4306', 435906, 2),
(361, 'Raghav Bhardwaj', '4316', 436916, 2),
(362, 'Dishant Tiwari', '4326', 437926, 2),
(363, 'Saksham Jayes', '4337', 439037, 2),
(364, 'Vanshika', '4366', 441766, 2),
(365, 'Chetanya Vishnawat', '4436', 447236, 2),
(366, 'Kavyansh Ranjan', '4474', 451874, 2),
(367, 'Mayank', '4971', 502071, 2),
(368, 'Vaibhav Sharma', '5180', 523180, 2),
(369, 'Vibhor Raj Monga', '2624', 265024, 2),
(370, 'Anshuman Choudhary', '2626', 265226, 2),
(371, 'Harleen Kaur', '2888', 291688, 2),
(372, 'Aastha Arora', '2918', 294918, 2),
(373, 'Anushk Chaturvedi', '2957', 298757, 2),
(374, 'Vedant Chauhan', '2964', 299964, 2),
(375, 'Kanan Tripathi', '2984', 302184, 2),
(376, 'Aditya Iyer', '3086', 311686, 2),
(377, 'Bhavi', '3101', 314201, 2),
(378, 'Randeep Kaur', '3224', 325624, 2),
(379, 'Shraddha', '3249', 328749, 2),
(380, 'Divyansh Verma', '3266', 330866, 2),
(381, 'Kumar Sanskar', '3302', 333602, 2),
(382, 'Kartik Manuja', '3314', 334814, 2),
(383, 'Shivani Kumari', '3478', 351278, 2),
(384, 'Donisha Garg', '3493', 352793, 2),
(385, 'Pragun Paliwal', '3540', 357540, 2),
(386, 'Madhav Sharma', '3578', 361078, 2),
(387, 'Chakshan Tanwar', '3587', 361787, 2),
(388, 'Anshi Bisht', '3795', 383295, 2),
(389, 'Yauvini Gulati', '4234', 427634, 2),
(390, 'Daksh Kumar Garg', '4307', 434807, 2),
(391, 'Kunjal', '4521', 456621, 2),
(392, 'Mohd Ayan', '4553', 460053, 2),
(393, 'Abhiraj Singh', '4562', 460662, 2),
(394, 'Abhi Verma', '4749', 479249, 2),
(395, 'Harshita Bhowmic', '4902', 495102, 2),
(396, 'Udit Verma', '2682', 271482, 2),
(397, 'Sachin', '2744', 277144, 2),
(398, 'Ishmeet Singh', '2784', 281184, 2),
(399, 'Anshika', '2860', 289460, 2),
(400, 'Sahil Kumar Singh', '2905', 293505, 2),
(401, 'Yugansh Satija', '2934', 296634, 2),
(402, 'Siddharth Chandila', '3054', 308454, 2),
(403, 'Devanshi Bhardwaj', '3068', 309868, 2),
(404, 'Lucky', '3190', 322090, 2),
(405, 'Rashi Rawat', '3193', 322393, 2),
(406, 'Kirti Mishra', '3276', 330876, 2),
(407, 'Avni Sharma', '3308', 334108, 2),
(408, 'Simar Shrama', '3405', 344505, 2),
(409, 'Rudransh', '3458', 349858, 2),
(410, 'Aditya Pandey', '3592', 362792, 2),
(411, 'Navya', '3666', 370266, 2),
(412, 'Simarjeet Singh', '3728', 376528, 2),
(413, 'Tarun Yadav', '3898', 393898, 2),
(414, 'Gunjan Rawat', '3900', 394100, 2),
(415, 'Dhruv Bhardwaj', '3930', 397230, 2),
(416, 'Aditya', '4018', 405818, 2),
(417, 'Rudraksh Kumar', '4067', 410767, 2),
(418, 'Anash', '4073', 411373, 2),
(419, 'Arjun Chauhan', '4409', 445009, 2),
(420, 'Garv Kumar', '4806', 485406, 2),
(421, 'Shaurya Bist', '2675', 270175, 2),
(422, 'Kush Ambawata', '2759', 278359, 2),
(423, 'Shashank Singh', '2792', 282992, 2),
(424, 'Jasika Lohiya', '2829', 286029, 2),
(425, 'Albina Taleem', '2853', 288453, 2),
(426, 'Ananya Dwivedi', '2894', 292294, 2),
(427, 'Bhavya Rawat', '2925', 295725, 2),
(428, 'Devanshi Sharma', '2929', 296129, 2),
(429, 'Bhumi Chandila', '2944', 297344, 2),
(430, 'Tanishq Bhatia', '2963', 299863, 2),
(431, 'Nirbhay Singh', '2966', 300166, 2),
(432, 'Shachi Vishwakarma', '2999', 302899, 2),
(433, 'Mohit Lamba', '3001', 303101, 2),
(434, 'Mohit Kumar Gola', '3007', 303707, 2),
(435, 'Akshit Agrawal', '3317', 334917, 2),
(436, 'Krishna Singh', '3430', 347330, 2),
(437, 'Anmol Kumar', '3676', 371276, 2),
(438, 'Laxman Sharma', '3686', 372486, 2),
(439, 'Jayesh', '3746', 378246, 2),
(440, 'Dipanshu', '3784', 382184, 2),
(441, 'Parth Singh Matela', '3905', 394505, 2),
(442, 'Dhanvi Mehta', '4000', 404000, 2),
(443, 'Sudeep Negi', '4001', 404101, 2),
(444, 'Shreya Sharma', '4570', 461570, 2),
(445, 'Aratrika Satish Ramavat', '5096', 514696, 2),
(446, 'Mansi Singh', '2373', 239073, 2),
(447, 'Nihal Sivadas', '2380', 240380, 2),
(448, 'Amit Yadav', '2403', 243243, 2),
(449, 'Harshita Raj', '2612', 264812, 2),
(450, 'Isha Rawat', '2643', 267843, 2),
(451, 'Dhairya Verma', '2679', 271479, 2),
(452, 'Nitya Makkar', '2709', 274809, 2),
(453, 'Yatharth Joshi', '2740', 277740, 2),
(454, 'Siddharth Singh Chauhan', '2781', 281781, 2),
(455, 'Siddharth Vats', '2789', 281989, 2),
(456, 'Piyush Badeshra', '3220', 325420, 2),
(457, 'Aditya Sinha', '3237', 326937, 2),
(458, 'Divya Sharma', '3328', 336128, 2),
(459, 'Divyanshu Singh', '3359', 339259, 2),
(460, 'Shaurya Sharma', '3381', 341481, 2),
(461, 'Shreya Agarwal', '3443', 347843, 2),
(462, 'Disha Sharma (Staff)', '3568', 360368, 2),
(463, 'Mannat Sidheshwar', '3594', 362994, 2),
(464, 'Hardik Vashishth', '3753', 378753, 2),
(465, 'Sanskriti Verma', '4043', 408343, 2),
(466, 'Pushkar Chauhan', '4259', 429659, 2),
(467, 'Aditi Verma', '4348', 438248, 2),
(468, 'Tanish Sharma', '4618', 466018, 2),
(469, 'Shourya Bhardwaj', '2384', 240984, 2),
(470, 'K. Anish Sharma', '2394', 242394, 2),
(471, 'Pari Aggarwal', '2402', 243202, 2),
(472, 'Kartik Ratra', '2428', 246428, 2),
(473, 'Aditya Bist', '2457', 249057, 2),
(474, 'Lakshya Dhamija', '2467', 250167, 2),
(475, 'Aaditya Aggarwal', '2476', 250876, 2),
(476, 'Anmol Sharma', '2506', 254106, 2),
(477, 'Khushi', '2540', 257540, 2),
(478, 'Niti Goyal', '2659', 269559, 2),
(479, 'Kartik Sharma', '2743', 277143, 2),
(480, 'Virat', '2754', 278454, 2),
(481, 'Avika Malik', '2770', 280770, 2),
(482, 'Granth Chandela', '2943', 297243, 2),
(483, 'Sahib Chawla', '2850', 288350, 2),
(484, 'Vaishnavi', '2980', 301780, 2),
(485, 'Krish Sepehya', '3025', 306525, 2),
(486, 'Vansh Chauhan', '3136', 317536, 2),
(487, 'Ashna Parashar', '3216', 324816, 2),
(488, 'Jai Aditya', '3261', 329361, 2),
(489, 'Harsh Kumar', '3264', 329664, 2),
(490, 'Kartik Singh Rawat', '3293', 332593, 2),
(491, 'Vaishnavi Verma', '3395', 342895, 2),
(492, 'Avika Shrivastava', '3533', 356833, 2),
(493, 'Manvik Kumar', '3677', 371377, 2),
(494, 'Yash Baghel', '3419', 345319, 2),
(495, 'Vanshika Sharma', '3895', 393395, 2),
(496, 'Yash Dahiya', '3965', 400565, 2),
(497, 'Chetna Ranjan', '4075', 411475, 2),
(498, 'Reia Kheterpal', '4176', 421776, 2),
(499, 'Vibhor Dhingra', '4567', 461267, 2),
(500, 'Tanmay Gaur', '2370', 239070, 2),
(501, 'Gatik Kumar', '2411', 244511, 2),
(502, 'Harsh Bhati', '2439', 247839, 2),
(503, 'Diya Sharma', '2482', 251682, 2),
(504, 'Naman Sharma', '2618', 265418, 2),
(505, 'Jasmine Kaur Randhawa', '2625', 265725, 2),
(506, 'Sifa Khan', '2692', 272892, 2),
(507, 'Guramrit Kaur', '2955', 298455, 2),
(508, 'Anirudh Sharma', '3175', 320875, 2),
(509, 'Vanshika', '3301', 333401, 2),
(510, 'Namrata Singh', '3372', 340572, 2),
(511, 'Akshra Tewatia', '3379', 341779, 2),
(512, 'Divija', '3959', 399459, 2),
(513, 'Tashu', '4283', 432583, 2),
(514, 'Bhavishya Singh', '4360', 440360, 2),
(515, 'Sourabh Nain', '4453', 449853, 2),
(516, 'Akshith Duvvi', '4644', 468844, 2),
(517, 'Avnit Kaur', '4839', 488139, 2),
(518, 'Vaishnavi Gaur', '4846', 488646, 2),
(519, 'Yogishta Anand', '5215', 526715, 2),
(520, 'Yashika Yadav', '2481', 251481, 2),
(521, 'Soham Bhardwaj', '2501', 253601, 2),
(522, 'Gautami Manwani', '2686', 272486, 2),
(523, 'Tatvansh Singh', '2715', 275715, 2),
(524, 'Cheshta Chawla', '2897', 292797, 2),
(525, 'Aarav Nahar', '2958', 298658, 2),
(526, 'Turvi Malhotra', '3046', 307646, 2),
(527, 'Prince Choudhary', '3097', 313797, 2),
(528, 'Samiksha Aggarwal', '3242', 327642, 2),
(529, 'Aayushi Raghav', '3315', 334815, 2),
(530, 'Anshika Malik', '3352', 338752, 2),
(531, 'Pranjal Soni', '4028', 406828, 2),
(532, 'Snigdha Sharma', '4297', 434197, 2),
(533, 'Gagan Chandila', '5164', 521664, 2),
(534, 'Aaron Stephen ', '5191', 524291, 2),
(535, 'Vaidaansh Kashmira', '2101', 213201, 2),
(536, 'Vineet Negi', '2138', 216938, 2),
(537, 'Harshit Yadav', '2153', 218653, 2),
(538, 'Soumay Manderna', '2259', 228759, 2),
(539, 'Ankit Kodan', '2301', 233401, 2),
(540, 'Cheshta Khatter', '2362', 239562, 2),
(541, 'Sanidhya Nagar', '2371', 240471, 2),
(542, 'Harshit Mishra', '2406', 244506, 2),
(543, 'Mayank Malhotra', '2425', 246725, 2),
(544, 'Srishti Chandila', '2521', 255721, 2),
(545, 'Vani Awasthi', '2655', 268155, 2),
(546, 'Krishna Sahni', '2663', 268963, 2),
(547, 'Navdeep Singh', '2691', 272791, 2),
(548, 'Rudra Pratap Singh', '2939', 297339, 2),
(549, 'Vineet Papnai', '3262', 329862, 2),
(550, 'Gaurav Bhardwaj', '3356', 338956, 2),
(551, 'Prerit Singh', '3366', 339966, 2),
(552, 'Jitesh Sharma', '3404', 343804, 2),
(553, 'Ansh Kumar', '3588', 362388, 2),
(554, 'Harshita', '3671', 370471, 2),
(555, 'Harsh Kumar', '3725', 376225, 2),
(556, 'Cherry Lamba', '3761', 379861, 2),
(557, 'Kunal', '3990', 402990, 2),
(558, 'Mehul Singh', '4156', 419756, 2),
(559, 'Aakash Sharma', '4461', 450561, 2),
(560, 'Piyush Mandal', '4478', 452278, 2),
(561, 'Bhavika Bisht', '4590', 463590, 2),
(562, 'Siya Chaudhary', '2110', 214210, 2),
(563, 'Vanshika Chauhan', '2206', 223806, 2),
(564, 'Vansh Chauhan', '2207', 223907, 2),
(565, 'Manya Chibber', '2228', 226028, 2),
(566, 'Mayank Singh', '2333', 236633, 2),
(567, 'Ananya Singh', '2342', 237642, 2),
(568, 'Kanishka Nagar', '2344', 237844, 2),
(569, 'Sreshtha Mitra', '2349', 238349, 2),
(570, 'Vanshika Verma', '2353', 238753, 2),
(571, 'Yuvika Chaprana', '2361', 239461, 2),
(572, 'Himanshu Redhu', '2408', 244608, 2),
(573, 'Kartik Taneja', '2443', 247843, 2),
(574, 'Himangi Narula', '2494', 252494, 2),
(575, 'Bhupender Khatana', '2511', 254611, 2),
(576, 'Vasu Chauhan', '2518', 255818, 2),
(577, 'Yuvraj Singh Chauhan', '2587', 262387, 2),
(578, 'Harshit Shrivastava', '2863', 289663, 2),
(579, 'Jatin Singh Tomar', '2910', 294310, 2),
(580, 'Dhanvi Singh', '2912', 294512, 2),
(581, 'Jaanvi', '2916', 294916, 2),
(582, 'Kanishka Singh', '2927', 296127, 2),
(583, 'Aarti Nain', '3056', 308656, 2),
(584, 'Aditya Garkoti', '3066', 309666, 2),
(585, 'Geetika Arora', '3121', 315321, 2),
(586, 'Nikhil Chauhan', '3124', 315624, 2),
(587, 'Rishika Kashyap', '3126', 315826, 2),
(588, 'Mokshaa Kohli', '3144', 318144, 2),
(589, 'Dishita', '3146', 318346, 2),
(590, 'Rayanshi Bhardwaj', '3164', 320564, 2),
(591, 'Yashvi Singh', '3179', 321979, 2),
(592, 'Mannat Mehndiratta', '3239', 327239, 2),
(593, 'Charvi Tyagi', '3467', 350867, 2),
(594, 'Khyati Bisht', '3693', 372993, 2),
(595, 'Kashish', '3982', 402382, 2),
(596, 'Urvashi Verma', '4214', 425614, 2),
(597, 'Gurleen Kaur Maini', '4345', 438445, 2),
(598, 'Tanya Arora', '4721', 476121, 2),
(599, 'Sanchi Arora', '2128', 216328, 2),
(600, 'Dhwani Bhardwaj', '2173', 220573, 2),
(601, 'Vanshika Dhoundiyal', '2195', 222695, 2),
(602, 'Yashika Rathi', '2258', 229058, 2),
(603, 'Vinay', '2283', 231783, 2),
(604, 'Ridhi Gupta', '2345', 237845, 2),
(605, 'Rabnoor Uppal', '2356', 239256, 2),
(606, 'Vaibhav', '2427', 246727, 2),
(607, 'Vanshika Singh', '2627', 265327, 2),
(608, 'Angel Bansal', '2654', 268154, 2),
(609, 'Nilesh Kumar', '2677', 271477, 2),
(610, 'Jai Gupta', '2705', 274505, 2),
(611, 'Niyati', '3047', 307747, 2),
(612, 'Anmol', '3114', 314514, 2),
(613, 'Tanya', '3143', 317943, 2),
(614, 'Ronit Panchal', '3258', 329658, 2),
(615, 'Kanak Kumari', '3862', 389462, 2),
(616, 'Ashawani Kumar', '3938', 397238, 2),
(617, 'Gurneet Kaur', '4472', 451772, 2),
(618, 'Yahvi Dhiman', '4843', 489343, 2),
(619, 'Test User 1', 'user1', '1user', 2),
(620, 'Test User 2', 'user2', '2user', 2),
(621, 'Test User 3', 'user3', '3user', 2),
(622, 'Test User 4', 'user4', '4user', 2),
(623, 'Test User 5', 'user5', '5user', 2),
(624, 'Test User 6', 'user6', '6user', 2),
(625, 'Test User 7', 'user7', '7user', 2),
(626, 'Test User 8', 'user8', '8user', 2),
(627, 'Test User 9', 'user9', '9user', 2),
(628, 'Test User 10', 'user10', '10user', 2),
(629, 'Test User 11', 'user11', '11user', 2),
(630, 'Test User 12', 'user12', '12user', 2),
(631, 'Test User 13', 'user13', '13user', 2),
(632, 'Test User 14', 'user14', '14user', 2),
(633, 'Test User 15', 'user15', '15user', 2),
(634, 'Test User 16', 'user16', '16user', 2),
(635, 'Test User 17', 'user17', '17user', 2),
(636, 'Test User 18', 'user18', '18user', 2),
(637, 'Test User 19', 'user19', '19user', 2),
(638, 'Test User 20', 'user20', '20user', 2),
(639, 'Test User 21', 'user21', '21user', 2),
(640, 'Test User 22', 'user22', '22user', 2),
(641, 'Test User 23', 'user23', '23user', 2),
(642, 'Test User 24', 'user24', '24user', 2),
(643, 'Test User 25', 'user25', '25user', 2),
(644, 'Test User 26', 'user26', '26user', 2),
(645, 'Test User 27', 'user27', '27user', 2),
(646, 'Test User 28', 'user28', '28user', 2),
(647, 'Test User 29', 'user29', '29user', 2),
(648, 'Test User 30', 'user30', '30user', 2);






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
(5, 'Sample', 'this is a sample', 1);

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
