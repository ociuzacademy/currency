-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 11:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fake`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tbl_ user', 7, 'add_tbl_user'),
(26, 'Can change tbl_ user', 7, 'change_tbl_user'),
(27, 'Can delete tbl_ user', 7, 'delete_tbl_user'),
(28, 'Can view tbl_ user', 7, 'view_tbl_user'),
(29, 'Can add tbl_ note', 8, 'add_tbl_note'),
(30, 'Can change tbl_ note', 8, 'change_tbl_note'),
(31, 'Can delete tbl_ note', 8, 'delete_tbl_note'),
(32, 'Can view tbl_ note', 8, 'view_tbl_note'),
(33, 'Can add tbl_ currency', 9, 'add_tbl_currency'),
(34, 'Can change tbl_ currency', 9, 'change_tbl_currency'),
(35, 'Can delete tbl_ currency', 9, 'delete_tbl_currency'),
(36, 'Can view tbl_ currency', 9, 'view_tbl_currency'),
(37, 'Can add tbl_ feedback', 10, 'add_tbl_feedback'),
(38, 'Can change tbl_ feedback', 10, 'change_tbl_feedback'),
(39, 'Can delete tbl_ feedback', 10, 'delete_tbl_feedback'),
(40, 'Can view tbl_ feedback', 10, 'view_tbl_feedback'),
(41, 'Can add tbl_police', 11, 'add_tbl_police'),
(42, 'Can change tbl_police', 11, 'change_tbl_police'),
(43, 'Can delete tbl_police', 11, 'delete_tbl_police'),
(44, 'Can view tbl_police', 11, 'view_tbl_police');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currencyapp_tbl_currency`
--

CREATE TABLE `currencyapp_tbl_currency` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `note_id_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencyapp_tbl_currency`
--

INSERT INTO `currencyapp_tbl_currency` (`id`, `name`, `note_id_id`, `user_id_id`, `image`) VALUES
(48, 'test_20_4.jpg', NULL, 20, 'currency/test_20_4.jpg'),
(49, '20.jpg', NULL, 20, 'currency/20.jpg'),
(50, '100_2.jpg', NULL, 20, 'currency/100_2.jpg'),
(51, '_flickr1.jpg', NULL, 20, 'currency/_flickr1.jpg'),
(52, '_flickr2.jpg', NULL, 20, 'currency/_flickr2.jpg'),
(53, 'test_100_3.jpg', NULL, 20, 'currency/test_100_3.jpg'),
(54, '20.jpg', NULL, 21, 'currency/20_tOc7ddb.jpg'),
(55, 'test_50.jpeg', NULL, 21, 'currency/test_50.jpeg'),
(56, 'test_100.jpeg', NULL, 21, 'currency/test_100.jpeg'),
(57, '100_2.jpg', NULL, 21, 'currency/100_2_kZKeMRB.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `currencyapp_tbl_feedback`
--

CREATE TABLE `currencyapp_tbl_feedback` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencyapp_tbl_feedback`
--

INSERT INTO `currencyapp_tbl_feedback` (`id`, `name`, `email`, `subject`) VALUES
(2, 'riya', 'admin@gmail.com', 'xcsdzfgdgd'),
(6, 'kukj', 'gh@gmail.com', 'gghghg');

-- --------------------------------------------------------

--
-- Table structure for table `currencyapp_tbl_note`
--

CREATE TABLE `currencyapp_tbl_note` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) NOT NULL,
  `slnumber` varchar(50) NOT NULL,
  `note_type` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencyapp_tbl_note`
--

INSERT INTO `currencyapp_tbl_note` (`id`, `name`, `slnumber`, `note_type`, `amount`) VALUES
(1, '20.jpg', '03F 806422', 'Genuine ', '20'),
(3, '50.jpg', '7DV 152258', 'Genuine ', '50'),
(4, '100.jpg', '0AM 555745', 'Genuine ', '100'),
(5, '100_2.jpg', '0GQ *004J06', ' Counterfeit ', '100'),
(6, '100_3.jpg', '0AD 753561', 'Genuine ', '100'),
(7, '500.jpg', '5KA 903804 ', ' Counterfeit ', '500'),
(8, 'test_20_1.jpg', '03F 806450', 'Genuine ', '20'),
(9, 'test_20_4.jpg', '23D 449120', 'Genuine ', '20'),
(10, 'test_50_1.jpg', '4GC 491861', 'Genuine ', '50'),
(11, 'test_100_1.jpg', '6UV 322677', 'Genuine ', '100'),
(12, 'test_100_3.jpg', 'OCL 528908', 'Genuine ', '100'),
(13, 'fake_500.jpg', '8GV 727202', ' Counterfeit ', '500'),
(14, 'test_500_1.jpg', '1LF 182452', ' Counterfeit ', '500'),
(15, 'test_100.jpeg', 'ONE HUNDRED COUPON', 'Counterfeit', '100'),
(16, 'test_10.jpeg', '49EJ52682', 'Genuine', '10'),
(17, 'test_50.jpeg', '7AL008446', 'Genuine', '50');

-- --------------------------------------------------------

--
-- Table structure for table `currencyapp_tbl_police`
--

CREATE TABLE `currencyapp_tbl_police` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencyapp_tbl_police`
--

INSERT INTO `currencyapp_tbl_police` (`id`, `name`, `password`, `email`, `phone`, `user_type`, `place`, `img`) VALUES
(1, 'ghghg', '123', 'linn@gmail.com', '3434343434', 'police', 'thrissur', 'policeimg/testimonial-2.jpg'),
(2, 'anjali', '123', 'anjali@gmail.com', '5454545454', 'police', 'Anthikad', 'policeimg/testimonial-2_IusEQ7A.jpg'),
(3, 'anu', '123', 'anuu@gmail.com', '45545454', 'police', 'thrissur', 'policeimg/testimonial-2_SyyRHA5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `currencyapp_tbl_user`
--

CREATE TABLE `currencyapp_tbl_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencyapp_tbl_user`
--

INSERT INTO `currencyapp_tbl_user` (`id`, `name`, `password`, `email`, `phone`, `user_type`, `place`) VALUES
(7, 'vinduja vijay', '123', 'admin@gmail.com', '9847070320', 'admin', 'Thrissur'),
(20, 'vinduja', '123', 'vinduja@gmail.com', '8978787744', 'User', 'palarivattam'),
(21, 'anu', '123', 'anu@gmail.com', '7657567567', 'User', 'Thrissur ');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'currencyApp', 'tbl_currency'),
(10, 'currencyApp', 'tbl_feedback'),
(8, 'currencyApp', 'tbl_note'),
(11, 'currencyApp', 'tbl_police'),
(7, 'currencyApp', 'tbl_user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-17 10:20:45.628388'),
(2, 'auth', '0001_initial', '2021-11-17 10:21:02.417348'),
(3, 'admin', '0001_initial', '2021-11-17 10:21:06.470580'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-17 10:21:06.491581'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-17 10:21:06.511582'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-17 10:21:06.994610'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-17 10:21:07.726652'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-17 10:21:07.870660'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-17 10:21:07.930664'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-17 10:21:09.326743'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-17 10:21:09.376746'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-17 10:21:09.489753'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-17 10:21:09.568757'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-17 10:21:09.658762'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-17 10:21:09.768769'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-17 10:21:09.843773'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-17 10:21:10.236796'),
(18, 'sessions', '0001_initial', '2021-11-17 10:21:12.278912'),
(19, 'currencyApp', '0001_initial', '2021-11-17 11:25:28.169457'),
(20, 'currencyApp', '0002_tbl_user_place', '2021-11-18 04:20:24.471752'),
(21, 'currencyApp', '0003_auto_20211118_1437', '2021-11-18 09:07:38.309471'),
(22, 'currencyApp', '0004_tbl_currency', '2021-11-18 10:47:42.343882'),
(23, 'currencyApp', '0005_auto_20211118_1635', '2021-11-18 11:05:22.975547'),
(24, 'currencyApp', '0006_tbl_currency_image', '2021-11-18 11:25:31.308659'),
(25, 'currencyApp', '0007_tbl_feedback', '2021-11-19 11:17:04.788572'),
(26, 'currencyApp', '0008_tbl_police', '2022-03-19 04:43:53.039096');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3f3thdae0ty7h3end2bo5kro7chtheie', 'eyJpZCI6MjB9:1mp5Q6:Z-M1WHAHBmJf2kO1e5zK3KmHW-E6Oy6bjn1aiPiMcWM', '2021-12-06 09:15:26.925057'),
('7qi0sl4lzqoyfy4toxxjgs1jlcn1rwo7', 'eyJpZCI6MjB9:1nU2N6:VQJfqE0oOkQrXYkD0b1eOcrbZDV7-afsumGNWFDmtZM', '2022-03-29 08:17:36.350835'),
('bceutoray7sevucevi3e831hsj5zx7se', 'eyJpZCI6M30:1nY3Ll:oGLEElHYxTP-1GiTxJd31OJjSgToSTBj3RuDOfUcaOQ', '2022-04-09 10:08:49.706145'),
('cideuj2ffoh9e2ur0bay8qhz4yg39egi', 'eyJpZCI6MjB9:1mvXrf:BUUX8brwKpnzh3Sp1mQqMI3TARi5HFTuhuM1UvY-lyA', '2021-12-24 04:50:35.700956'),
('h81ugg1tweinid25rfk5pbe6q3q142er', 'e30:1mp6Qf:g9B2EENThDR5Zf7r8pFWuxN-28yDf4_FTcjao7XqbTs', '2021-12-06 10:20:05.958925'),
('mpga836qd9d83am89mvwbpjc1nvngyjy', 'e30:1mxohN:N9Pj1UYioi-cKYCz9SHntaVLU_W5CiRlT_89aNNZ55A', '2021-12-30 11:13:21.431776'),
('njhtnbwbtosjon6ax7ris6wy6iapvweo', 'e30:1nVQcP:-zTOeuTLMpC362HHBFGylwl3Nw_vTr3nVyt7ateWlDs', '2022-04-02 04:23:09.084946'),
('ol358s9qzm49ph6v7b5gjrt0xqkliewf', 'eyJpZCI6MjB9:1mxQQd:v5M3TELzIlvYmUucS6WsshteQj1XsNIJqOlGEyVYPzk', '2021-12-29 09:18:27.011895'),
('pven2ymkosk8ys119e630quodf0w5y1w', 'eyJpZCI6MjB9:1mxSUp:vy3xOzYMqDq003vnRuOA5dmoLzlXz-Mg3Orbto3gsWg', '2021-12-29 11:30:55.285511'),
('qxfkg007xuxnb7kq7crjrqmsb9d5y8jl', 'eyJpZCI6N30:1mneV5:wER8zCwsfnC_t2wZtVPbF6O7HIve0jcE_Cl1H6oJDOs', '2021-12-02 10:18:39.777213'),
('w9q2dm4uhj6n9tg2g9qtyr06a8f1ndkh', 'eyJpZCI6MjF9:1nW9n0:MeaEHqofQMwE-xqm_eUNjRw1Sg4QbLWjp6zvVJnfmJw', '2022-04-04 04:37:06.659201'),
('z9dw1mgvvxteq7owdl5xrpmbyuwyf7x3', 'eyJpZCI6MjB9:1n6rTZ:ZlB6DCYWFxYJTGj0N_Ryek6aMf5VB5EKbcUugPvCrm0', '2022-01-24 10:00:29.219726');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `currencyapp_tbl_currency`
--
ALTER TABLE `currencyapp_tbl_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencyApp_tbl_curr_user_id_id_8398c6c3_fk_currencyA` (`user_id_id`),
  ADD KEY `currencyApp_tbl_curr_note_id_id_2211525c_fk_currencyA` (`note_id_id`);

--
-- Indexes for table `currencyapp_tbl_feedback`
--
ALTER TABLE `currencyapp_tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencyapp_tbl_note`
--
ALTER TABLE `currencyapp_tbl_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencyapp_tbl_police`
--
ALTER TABLE `currencyapp_tbl_police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencyapp_tbl_user`
--
ALTER TABLE `currencyapp_tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencyapp_tbl_currency`
--
ALTER TABLE `currencyapp_tbl_currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `currencyapp_tbl_feedback`
--
ALTER TABLE `currencyapp_tbl_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencyapp_tbl_note`
--
ALTER TABLE `currencyapp_tbl_note`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `currencyapp_tbl_police`
--
ALTER TABLE `currencyapp_tbl_police`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencyapp_tbl_user`
--
ALTER TABLE `currencyapp_tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `currencyapp_tbl_currency`
--
ALTER TABLE `currencyapp_tbl_currency`
  ADD CONSTRAINT `currencyApp_tbl_curr_note_id_id_2211525c_fk_currencyA` FOREIGN KEY (`note_id_id`) REFERENCES `currencyapp_tbl_note` (`id`),
  ADD CONSTRAINT `currencyApp_tbl_curr_user_id_id_8398c6c3_fk_currencyA` FOREIGN KEY (`user_id_id`) REFERENCES `currencyapp_tbl_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
