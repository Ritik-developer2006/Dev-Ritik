-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2025 at 04:06 PM
-- Server version: 10.6.21-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rk_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `twitter_link` varchar(500) NOT NULL,
  `instagram_link` varchar(500) NOT NULL,
  `linkdin_link` varchar(500) NOT NULL,
  `github_link` varchar(500) NOT NULL,
  `facebook_link` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `heading`, `description`, `image`, `twitter_link`, `instagram_link`, `linkdin_link`, `github_link`, `facebook_link`, `created_at`, `updated_at`) VALUES
(1, 'Ritik Kumar — End-to-End Web Application Development Specialist', 'I am a full-stack developer based in India with a strong focus on delivering high-quality, scalable web applications. My expertise spans both front-end and back-end development, enabling me to translate complex ideas into fully functional, intuitive digital solutions. I bring a product-driven approach to development, emphasizing efficient prioritization, rapid iteration, and long-term scalability. By continuously aligning with the latest industry standards and technologies, I deliver seamless, performance-driven applications that balance design excellence with technical precision.', 'WhatsApp Image 2025-12-14 at 13.32.35_d8dfae31.jpg', '#', '#', '#', 'https://github.com/Ritik-developer2006', '#', '2025-12-13 18:16:15', '2025-12-13 18:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `basic_detail`
--

CREATE TABLE `basic_detail` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` char(50) NOT NULL,
  `age` char(20) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `resume` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basic_detail`
--

INSERT INTO `basic_detail` (`id`, `full_name`, `email`, `number`, `age`, `address`, `state`, `country`, `resume`, `created_at`, `updated_at`) VALUES
(1, 'Ritik Kumar', 'rk5771829@gmail.com', '9354607685', '21', 'H-no. 121 Meethapur village, Badarpur, New delhi-110044, India.', 'Delhi', 'India', NULL, '2025-12-13 14:41:15', '2025-12-13 14:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `email`, `password`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'ritik_dev', 'rk5771829@gmail.com', 'ritik@135#!', 0, '2025-12-19 16:09:45', '2025-12-19 16:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `card_image` varchar(250) NOT NULL,
  `document` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `multiple_img` varchar(250) NOT NULL,
  `video` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `title`, `card_image`, `document`, `description`, `multiple_img`, `video`, `created_at`, `updated_at`) VALUES
(1, 'Top tools for Photographers', 'post-1.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, porro rem quod illo quam, eum alias id, repellendus magni, quas.', '', '', '2025-12-21 16:00:55', '2025-12-21 16:00:55'),
(2, 'Take a tour of my office', 'post-2.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, porro rem quod illo quam, eum alias id, repellendus magni, quas.', '', '', '2025-12-21 16:00:55', '2025-12-21 16:00:55'),
(3, 'How i became a Web Designer', 'post-3.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, porro rem quod illo quam, eum alias id, repellendus magni, quas.', '', '', '2025-12-21 16:00:55', '2025-12-21 16:00:55'),
(4, 'How to improve work performance', 'post-4.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, porro rem quod illo quam, eum alias id, repellendus magni, quas.', '', '', '2025-12-21 16:00:55', '2025-12-21 16:00:55'),
(5, 'How to work from home', 'post-5.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, porro rem quod illo quam, eum alias id, repellendus magni, quas.', '', '', '2025-12-21 16:00:55', '2025-12-21 16:00:55'),
(6, 'How to enjoy your business trip', 'post-6.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, porro rem quod illo quam, eum alias id, repellendus magni, quas.', '', '', '2025-12-21 16:00:55', '2025-12-21 16:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_filter`
--

CREATE TABLE `tbl_data_filter` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education`
--

CREATE TABLE `tbl_education` (
  `id` int(11) NOT NULL,
  `education_name` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `from_year` char(10) NOT NULL,
  `to_year` char(10) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_education`
--

INSERT INTO `tbl_education` (`id`, `education_name`, `university`, `from_year`, `to_year`, `college_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Diploma', 'NSIC(National Small Industries Corporation)', '2022-12-12', '2022-12-12', 'NSIC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae.', '2025-12-14 09:11:57', '2025-12-14 09:11:57'),
(2, 'Bachelor Degree', 'IGNOU(Indira Gandhi National Open University)', '2022-12-12', '2022-12-12', 'MERIT', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae.', '2025-12-14 09:13:09', '2025-12-14 09:13:09'),
(3, 'Master Degree', 'IGNOU(Indira Gandhi National Open University)', '2022-12-12', '2022-12-12', 'MERIT', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae.', '2025-12-14 09:14:27', '2025-12-14 09:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experiences`
--

CREATE TABLE `tbl_experiences` (
  `id` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `from_year` char(20) NOT NULL,
  `to_year` char(20) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_experiences`
--

INSERT INTO `tbl_experiences` (`id`, `job_title`, `company_name`, `from_year`, `to_year`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineer', 'Adobe', '2015-12-20', '2015-12-20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae.', '2025-12-14 09:30:50', '2025-12-14 09:30:50'),
(2, 'Software Engineer', 'Back-End Developer', '2015-12-20', '2015-12-20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae.', '2025-12-14 09:31:07', '2025-12-14 09:31:07'),
(3, 'UI/UX Designer', 'Back-End Developer', '2015-12-20', '2015-12-20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae.', '2025-12-14 09:31:20', '2025-12-14 09:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `images` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `data_filter_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `heading` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `icon`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"icon service-icon ion-logo-css3\"></i>', 'Web Designing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2025-12-13 18:46:10', '2025-12-13 18:46:10'),
(2, '<i class=\"icon service-icon ion-md-images\"></i>', 'Web Hosting', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2025-12-13 18:50:05', '2025-12-13 18:50:05'),
(3, '<i class=\"icon service-icon ion-logo-ionic\"></i>', 'Customer Support', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2025-12-13 18:50:49', '2025-12-13 18:50:49'),
(4, '<i class=\"icon service-icon ion-logo-wordpress\"></i>', 'Web Development', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2025-12-13 18:51:15', '2025-12-13 18:51:15'),
(5, '<i class=\"icon service-icon ion-md-move\"></i>', 'Fully Responsive', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2025-12-13 18:51:36', '2025-12-13 18:51:36'),
(6, '<i class=\"icon service-icon ion-ios-rocket\"></i>', 'API Development', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2025-12-13 18:51:53', '2025-12-13 18:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skills`
--

CREATE TABLE `tbl_skills` (
  `id` int(11) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `per_knowledge` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_skills`
--

INSERT INTO `tbl_skills` (`id`, `skill`, `per_knowledge`, `created_at`, `updated_at`) VALUES
(1, 'HTML/CSS', 95, '2025-12-14 09:40:26', '2025-12-14 09:40:26'),
(2, 'Web Design', 80, '2025-12-14 09:40:49', '2025-12-14 09:40:49'),
(3, 'jQuery', 76, '2025-12-14 09:41:15', '2025-12-14 09:41:15'),
(4, 'React JS', 55, '2025-12-14 09:41:30', '2025-12-14 09:41:30'),
(5, 'Express.js', 90, '2025-12-14 09:41:48', '2025-12-14 09:41:48'),
(6, 'TypeScript', 70, '2025-12-14 09:42:06', '2025-12-14 09:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `full_name`, `email`, `subject`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Julia Sakura', 'ev@gamil.com', 'Envato Customer', 'Emma did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. She worked with us the entire way. Highly recommended.', 'client-1.jpg', '2025-12-14 07:17:18', '2025-12-14 07:17:18'),
(2, 'John Santana', 'ev@gamil.com', 'Entrepreneur', 'Emma did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. She worked with us the entire way. Highly recommended.', 'client-2.jpg', '2025-12-14 07:18:17', '2025-12-14 07:18:17'),
(3, 'Maria Wilson', 'ev@gamil.com', 'Envato Customer', 'Emma did an excellent creative job, addressing our request quickly, and also providing her own graphic insight, being open to feedback and changes or edits when they arose. She worked with us the entire way. Highly recommended.', 'client-3.jpg', '2025-12-14 07:18:59', '2025-12-14 07:18:59'),
(5, 'Neeraj Kumar', 'rk577@gmail.com', 'Accountant', 'By using remove.bg you agree to the use of cookies. You can find details on how we use cookies in our Cookie Policy. By using remove.bg you agree to the use of cookies. You can find details on how we use cookies in our Cookie Policy.', '693ebaaacacc2.jpeg', '2025-12-14 13:24:58', '2025-12-14 13:24:58'),
(6, 'Richa Kumar', 'nk1234@gmail.com', 'Designer', 'This is very helpful portfolio', '693ed6363e2cd.png', '2025-12-14 15:22:30', '2025-12-14 15:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE `user_message` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_message`
--

INSERT INTO `user_message` (`id`, `full_name`, `email`, `subject`, `message`, `file`, `created_at`, `updated_at`) VALUES
(19, 'Neeraj', 'itsritik2004@gmail.com', 'for back end developer', 'By using remove.bg you agree to the use of cookies. You can find details on how we use cookies in our Cookie Policy.', '693ec6561eab1.pdf', '2025-12-14 14:14:46', '2025-12-14 14:14:46'),
(21, 'Atanta', 'ritik@atlantasys.com', 'For Leave holiday', 'By using remove.bg you agree to the use of cookies. You can find details on how we use cookies in our Cookie Policy.\\r\\nBy using remove.bg you agree to the use of cookies. You can find details on how we use cookies in our Cookie Policy.', '693ec8cb3954a.jpg', '2025-12-14 14:25:15', '2025-12-14 14:25:15'),
(22, 'Neeraj', 'nk1234@gmail.com', 'Testing Today', 'This keeps Gmail happy and allows replies to go to the user.\\r\\nThis keeps Gmail happy and allows replies to go to the user.\\r\\nThis keeps Gmail happy and allows replies to go to the user.\\r\\nThis keeps Gmail happy and allows replies to go to the user.', '693ecb3610644.pdf', '2025-12-14 14:35:34', '2025-12-14 14:35:34'),
(23, 'Neeraj', 'itsritik2004@gmail.com', 'for bacj-end developer', 'djksagdhggghdbvcjdfh i am hiring pleae cntact me', '693ed663a735c.pdf', '2025-12-14 15:23:15', '2025-12-14 15:23:15'),
(24, 'ritik kumar', 'nk1234@gmail.com', 'dadsdsd', 'hello', NULL, '2025-12-20 16:05:40', '2025-12-20 16:05:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_detail`
--
ALTER TABLE `basic_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_filter`
--
ALTER TABLE `tbl_data_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_education`
--
ALTER TABLE `tbl_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experiences`
--
ALTER TABLE `tbl_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skills`
--
ALTER TABLE `tbl_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_detail`
--
ALTER TABLE `basic_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_data_filter`
--
ALTER TABLE `tbl_data_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_education`
--
ALTER TABLE `tbl_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_experiences`
--
ALTER TABLE `tbl_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_skills`
--
ALTER TABLE `tbl_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_message`
--
ALTER TABLE `user_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
