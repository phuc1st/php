-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2016 at 11:11 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pshop`
--

-- --------------------------------------------------------
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URLS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Birthday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `dienthoai` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `email`, `URLS`, `Name`, `Birthday`, `admin`, `dienthoai`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ngolequanit@gmail.com', '08 Núi thành, Đà Nẵng', 'le quan', '29/09/1990', 1, '0905710047'),
(2, 'quan', '21232f297a57a5a743894a0e4a801fc3', 'a@gmail.com', '01 Phan Bội Châu, Đà Nẵng', 'le the', '1/1/1990', 0, '0905798321');

-- --------------------------------------------------------

--
-- Table structure for table `menu_doc`
--

CREATE TABLE IF NOT EXISTS `menu_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `menu_ngang`
--

CREATE TABLE IF NOT EXISTS `menu_ngang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<p>Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /></p>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(3, 'Hướng dẫn mua hàng', 'Nội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>', ''),
(4, 'Cách mua hàng', 'Nội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>', ''),
(5, 'Liên hệ', 'Nội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>', '');

-- --------------------------------------------------------

-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `thuoc_menu`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(1, 'IPhone 15 Pro Max 256GB', 34490000, 'ip15p.webp', '<p>Nội dung của sản phẩm 1</p>', 1, 'co', '', 0),
(2, 'Samsung Galaxy S22 5G 128GB', 11990000, 's22.webp', '<p>Nội dung sản phẩm 3</p>', 1, '', 'co', 7),
(4, 'OPPO Reno8 T 4G 256GB', 6890000, 'reno8.webp', 'Nội dung của sản phẩm 1_3', 1, '', 'co', 3),
(5, 'Honor X8A 8GB-128GB', 3900000, 'x8a.webp', 'Nội dung của sản phẩm 1_4', 1, '', '', 0),
(3, 'Xiaomi Redmi Notr 12 4GB-128GB', 4290000, 'redmi12.webp', 'Nội dung của sản phẩm 1_2', 1, '', '', 0),
(6, 'Samsung Galaxy A05s 128GB', 3990000, 'a05s.webp', '<p>Nội dung của sản phẩm 1_5</p>', 1, '', 'co', 0),
(7, 'OPPO Reno10 5G 256GB', 10990000, 'reno10.webp', 'Nội dung của sản phẩm 1_6', 1, '', 'co', 2),
(8, 'Samsung Galaxy Z Flip4 5G 128GB', 12990000, 'flip4.webp', 'Nội dung của sản phẩm 1_7', 1, '', '', 0),
(9, 'Samsung Galaxy Z Flip5 5G 256GB', 19490000, 'flip5.webp', 'Nội dung của sản phẩm 1_8', 1, '', '', 0),
(10, 'Xiaomi 13 Lite 8GB-128GB', 7990000, 'xiaomi13.webp', 'Nội dung của sản phẩm 1_9', 1, '', 'co', 7),
(11, 'Laptop HP 15s fq2716TU i3 1115G4/8GB/512GB/Win11 (7C0X3PA)', 10590000, 'hp15s.jpg', '<p>Nội dung của sản phẩm 1_10</p>', 2, '', 'co', 0),
(12, 'Laptop HP 15s fq2716TU i3 1115G4/8GB/512GB/Win11 (7C0X3PA)', 32290000, 'm15.jpg', '<p>Nội dung của sản phẩm 1_11</p>', 2, '', 'co', 13),
(13, 'Asus Zenbook 14 Flip OLED UP3404VA i7', 30990000, 'as14.jpg', '<p>Nội dung của sản phẩm 1_12</p>', 2, '', '', 0),
(14, 'Asus Vivobook Pro 15 OLED K6502VU i5', 32990000, 'vi15.jpg', '<p>Nội dung của sản phẩm 1_13</p>', 2, '', 'co', 11),
(15, 'MacBook Pro 16 inch M2 Pro 2023 19-core GPU', 65990000, 'm16.jpg', '<p>Nội dung của sản phẩm 1_14</p>', 2, '', 'co', 0),
(16, 'MacBook Pro 16 inch M2 Pro 2023 19-core GPU', 53990000, 'envy16.jpg', 'Nội dung của sản phẩm 1_15', 2, 'co', 'co', 5),
(17, 'Asus Gaming ROG Zephyrus Duo 16 GX650P', 107990000, 'rog16.jpg', 'Nội dung của sản phẩm 1_16', 2, '', '', 0),
(18, 'Asus Gaming ROG Zephyrus Duo 16 GX650P', 65990000, 'xps15.jpg', '<p>Nội dung của sản phẩm 1_17</p>', 2, '', 'co', 1),
(19, 'Asus Gaming ROG Zephyrus Duo 16 GX650P', 44890000, 'lg.jpg', 'Nội dung của sản phẩm 1_18', 2, '', '', 0),
(20, 'Asus ExpertBook B9 OLED B9403CVA i7 1355U', 4999000, 'asb9.jpg', 'Nội dung của sản phẩm 1_19', 2, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 's_1.webp', '#'),
(2, 's_2.webp', '#');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_quan_tri`
--

CREATE TABLE IF NOT EXISTS `thong_tin_quan_tri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
