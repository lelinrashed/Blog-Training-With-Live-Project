-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 10:32 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(3, 'HTML'),
(4, 'CSS'),
(7, 'java'),
(8, 'mysql');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(3, 'al amin', 'khan', 'khan@gmail.com', 'This is test message.This is test message.This is test message.This is test message.This is test message.This is test message.This is test message.This is test message.This is test message.This is test message.This is test message.', 1, '2017-07-11 16:01:58'),
(4, 'lelin', 'rashed', 'lelin.rashed@gmail.com', 'this is test message .this is test message .this is test message .this is test message .this is test message .this is test message .this is test massage.', 0, '2017-07-11 16:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'copyright rashed7.bd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About ', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 'Privacy', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'Terms and Condition', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\r\n<p><span><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\r\n<p><span><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(15, 7, 'Title for java', '<p>This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.</p>\r\n<p>This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.</p>\r\n<p>This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.This is for java.</p>', 'upload/e2ca854cee.jpg', 'rashed', 'java', '2017-07-06 18:30:13', 7),
(16, 2, 'Title for php', '<p>This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.</p>\r\n<p>This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.</p>\r\n<p>This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.This is for php.</p>', 'upload/a63193a7fc.jpg', 'rashed', 'php', '2017-07-06 18:31:03', 0),
(17, 3, 'Title for HTML', '<p>This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.</p>\r\n<p>This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.</p>\r\n<p>This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.This is for HTML.</p>', 'upload/23e0b2b075.png', 'rashed', 'html', '2017-07-06 18:31:51', 7),
(18, 4, 'Title for css', '<p>This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.</p>\r\n<p>This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.</p>\r\n<p>This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.This is for css.</p>', 'upload/6f27466abf.jpg', 'rashed', 'css', '2017-07-06 18:32:31', 7),
(19, 8, 'Title for mysql', '<p>This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.</p>\r\n<p>This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.</p>\r\n<p>This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.This is for mysql.</p>', 'upload/258bf2ead1.jpg', 'rashed', 'mysql, sql', '2017-07-06 18:33:04', 7),
(20, 3, 'html css js', '<p>This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.This is author content.</p>', 'upload/7938d3606a.jpg', 'author', 'author', '2017-07-14 15:30:29', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(5, 'fist title', 'upload/slider/9e15b1cb12.jpg'),
(6, 'second slider title', 'upload/slider/cfc482ec62.jpg'),
(7, 'third slider title 3', 'upload/slider/fba69d396a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/lelinrashed', 'http://twitter.com/lelinrashed', 'http://linkedin.com/', 'http://google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(6, 'rashed', 'admin', '202cb962ac59075b964b07152d234b70', 'lelin.rashed784@gmail.com', 'details', 0),
(7, 'lelin', 'editor', 'c281e134a564c8fb8cfd56a5d99121db', 'lelinbabu784@gmail.com', '<p>details</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Our site  title', 'Our site slogan', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
