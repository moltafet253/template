-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2022 at 01:54 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jashnvareh_maghalat`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `number_of_pages` int NOT NULL COMMENT 'تعداد صفحات',
  `number_of_words` int DEFAULT NULL COMMENT 'تعداد کلمات',
  `article_type` int NOT NULL COMMENT 'نوع مقاله',
  `language` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'زبان اثر',
  `special_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'محور ویژه',
  `number_of_page_in_mag_from` int NOT NULL COMMENT 'شماره صفحه مقاله در نشریه (از)',
  `number_of_page_in_mag_to` int NOT NULL COMMENT 'شماره صفحه مقاله در نشریه (تا)',
  `properties` text CHARACTER SET utf8 COLLATE utf8_persian_ci COMMENT 'ویژگی های اثر',
  `mag_id` int NOT NULL,
  `research_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'نوع تحقیق',
  `scientific_group_1` int NOT NULL,
  `scientific_group_2` int DEFAULT NULL,
  `cooperation_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'نوع همکاری',
  `cooperators` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'همکاران',
  `word_file_url` text CHARACTER SET utf8 COLLATE utf8_persian_ci COMMENT 'آدرس فایل word',
  `pdf_file_url` text CHARACTER SET utf8 COLLATE utf8_persian_ci COMMENT 'آدرس فایل pdf',
  `rate_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'نوبت ارزیابی',
  `sum_ejmali` float DEFAULT NULL COMMENT 'نمره نهایی کل ارزیابی های اجمالی این اثر',
  `sum_tafsili` float DEFAULT NULL COMMENT 'میانگین کل ارزیابی های تفصیلی این اثر',
  `chosen_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'وضعیت برگزیدگی',
  `chosen_subject` varchar(30) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'نوع برگزیدگی این اثر',
  `adder` varchar(100) COLLATE utf8_persian_ci NOT NULL COMMENT 'ثبت کننده',
  `date_added` varchar(25) COLLATE utf8_persian_ci NOT NULL COMMENT 'تاریخ ثبت',
  `editor` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'ویرایش کننده',
  `edited_date` varchar(25) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'تاریخ ویرایش',
  `ejmali1_ratercode` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد ارزیاب اجمالی 1',
  `ejmali2_ratercode` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد ارزیاب اجمالی 2',
  `ejmali3_ratercode` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد ارزیاب اجمالی 3',
  `tafsili1_ratercode` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد ارزیاب تفصیلی 1',
  `tafsili2_ratercode` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد ارزیاب تفصیلی 2',
  `tafsili3_ratercode` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد ارزیاب تفصیلی 3',
  `tafsili1_set_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `tafsili2_set_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `tafsili3_set_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `ejmali1_set_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `ejmali2_set_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `ejmali3_set_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `tafsili1_registrar` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کاربر اختصاص دهنده به تفصیلی اول',
  `tafsili2_registrar` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کاربر اختصاص دهنده به تفصیلی دوم',
  `tafsili3_registrar` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کاربر اختصاص دهنده به تفصیلی سوم',
  `ejmali1_registrar` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کاربر اختصاص دهنده به اجمالی یکم',
  `ejmali2_registrar` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کاربر اختصاص دهنده به اجمالی دوم',
  `ejmali3_registrar` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کاربر اختصاص دهنده به اجمالی سوم',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for information of articles';

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for author informations';

-- --------------------------------------------------------

--
-- Table structure for table `bank_list`
--

DROP TABLE IF EXISTS `bank_list`;
CREATE TABLE IF NOT EXISTS `bank_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `bank_list`
--

INSERT INTO `bank_list` (`id`, `name`) VALUES
(1, 'آینده'),
(2, 'اقتصاد نوین'),
(3, 'ایران زمین'),
(4, 'پارسیان'),
(5, 'پاسارگاد'),
(6, 'پست بانک ایران'),
(7, 'تجارت'),
(8, 'توسعه تعاون'),
(9, 'توسعه صادرات ایران'),
(10, 'خاورمیانه'),
(11, 'دی'),
(12, 'رسالت'),
(13, 'رفاه'),
(14, 'سامان'),
(15, 'سپه'),
(16, 'سرمایه'),
(17, 'سینا'),
(18, 'شهر'),
(19, 'صادرات'),
(20, 'صنعت و معدن'),
(21, 'کارآفرین'),
(22, 'کشاورزی'),
(23, 'مسکن'),
(24, 'ملت'),
(25, 'ملی'),
(26, 'مهر ایران');

-- --------------------------------------------------------

--
-- Table structure for table `ejmali`
--

DROP TABLE IF EXISTS `ejmali`;
CREATE TABLE IF NOT EXISTS `ejmali` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_code` int NOT NULL,
  `r1` float NOT NULL COMMENT 'اولویت و روزآمدی مسئله یا موضوع',
  `r2` float NOT NULL COMMENT 'ارزش علمی و نو بودن محتوا',
  `r3` float NOT NULL COMMENT 'استفاده مناسب از منابع معتبر',
  `r4` float NOT NULL COMMENT 'اثربخشی و میزان تاثیرگذاری در حل مشکلات علمی و کاربردی',
  `sum` float NOT NULL,
  `level` int NOT NULL COMMENT 'نوبت اجمالی (منظور تعدادی است که از کد این ردیف ارزیابی اجمالی صورت گرفته است)',
  `rater` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `rate_date` varchar(25) COLLATE utf8_persian_ci NOT NULL,
  `editor` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `edited_date` varchar(25) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for ejmali rates';

-- --------------------------------------------------------

--
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
CREATE TABLE IF NOT EXISTS `festival` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `start_date` varchar(25) COLLATE utf8_persian_ci NOT NULL,
  `starter` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `extension_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `extensioner` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `finish_date` varchar(25) COLLATE utf8_persian_ci DEFAULT NULL,
  `finisher` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for administration of festivals';

--
-- Dumping data for table `festival`
--

INSERT INTO `festival` (`id`, `name`, `start_date`, `starter`, `extension_date`, `extensioner`, `finish_date`, `finisher`) VALUES
(1, 'اول', '1401/9/21 12:57', '5', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `operation` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `url` varchar(1000) COLLATE utf8_persian_ci NOT NULL,
  `dateandtime` varchar(25) COLLATE utf8_persian_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `browser` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  PRIMARY KEY (`id`),
  KEY `fk_logs_users_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Logs\nincludes:\n1- logins\n2- operations\n3- logouts';

-- --------------------------------------------------------

--
-- Table structure for table `mag`
--

DROP TABLE IF EXISTS `mag`;
CREATE TABLE IF NOT EXISTS `mag` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scientific_group`
--

DROP TABLE IF EXISTS `scientific_group`;
CREATE TABLE IF NOT EXISTS `scientific_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for managing scientific groups';

--
-- Dumping data for table `scientific_group`
--

INSERT INTO `scientific_group` (`id`, `name`) VALUES
(1, 'تفسیر و علوم قرآن'),
(2, 'حدیث، درایه و رجال'),
(3, 'فلسفه'),
(4, 'اخلاق و عرفان'),
(5, 'تاریخ، سیره و تراجم'),
(6, 'فقه و اصول'),
(7, 'کتب مرجع'),
(8, 'ادبیات و هنر'),
(9, 'علوم اجتماعی'),
(10, 'تصحیح و تعلیق'),
(11, 'ترجمه'),
(12, 'کلام'),
(13, 'انقلاب اسلامی ایران'),
(14, 'اقتصاد'),
(15, 'حقوق'),
(16, 'روانشناسی'),
(17, 'علوم تربیتی'),
(18, 'علوم سیاسی'),
(19, 'مدیریت');

-- --------------------------------------------------------

--
-- Table structure for table `tafsili`
--

DROP TABLE IF EXISTS `tafsili`;
CREATE TABLE IF NOT EXISTS `tafsili` (
  `id` int NOT NULL,
  `article_code` int NOT NULL,
  `r1` float NOT NULL COMMENT 'روزآمدی موضوع و ابتنای آن بر نیاز جامعه و نظام',
  `r1_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r2` float NOT NULL COMMENT 'رعایت شاخص های محتوایی و ساختاری مقالات علمی پژوهشی',
  `r2_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r3` float NOT NULL COMMENT 'رعایت روشمندی متناسب با مسئله',
  `r3_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r4` float NOT NULL COMMENT 'میزان نوآوری در تولید نظریه و اهمیت آن در دانش',
  `r4_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r5` float NOT NULL COMMENT 'میزان خلاقیت و نوآوری در تولید روش و ساختار دانشی جدید',
  `r5_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r6` float NOT NULL COMMENT 'نوآوری در نقد نظریه یا دفاع از نظریه و اصلاح و ارتقای آن',
  `r6_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r7` float NOT NULL COMMENT 'جامعیت و غنای علمی و اتقان تحلیل و استدلال',
  `r7_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r8` float NOT NULL COMMENT 'میزان تاثیرگذاری بر حل مشکلات عملی و کاربردی جامعه یا پاسخ به شبهات علمی موجود',
  `r8_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r9-1` float NOT NULL COMMENT 'امتیاز ویژه - الف\nپاسداری و حراست از ارزش های دینی و انقلابی',
  `r9_1_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `r9-2` float NOT NULL COMMENT 'امتیاز ویژه - ب\nاثربخشی فوق العاده، برجستگی و جذابیت ویژه در نگارش',
  `r9_2_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci,
  `sum` float NOT NULL,
  `general_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'اظهار نظر کلی داور',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `rater` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `rate_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `edited_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for tafsili rates';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `family` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `national_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_persian_ci DEFAULT NULL,
  `bank_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `date_added` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `edited_date` varchar(25) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `shaba` varchar(24) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `bank_id` int DEFAULT NULL,
  `debit_card_id` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `approved` tinyint NOT NULL DEFAULT '1',
  `scientific_group` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `registrar` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `editor` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users.bank_id to bank_list.id` (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_persian_ci COMMENT='Table for All users.\nincluding:\n1- Raters\n2- Admins\n3- Headers\n4- Viewers';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `family`, `gender`, `national_code`, `phone`, `address`, `bank_name`, `date_added`, `edited_date`, `shaba`, `bank_id`, `debit_card_id`, `type`, `approved`, `scientific_group`, `registrar`, `editor`) VALUES
(4, 'Ali', '234234234', 'mohammad', 'asadi', 'مرد', '78978', '09398888226', 'یسبیسبسیبسس', NULL, '', NULL, '', NULL, 0, '2', 1, NULL, '', NULL),
(5, 'saeed', '$argon2i$v=19$m=65536,t=4,p=1$NU52RExRekEzd2dPM1RwLg$kfO/AgItBI2wqTtyExlEwazmcDjZa6eGuz27JN9X4Qs', 'saaed', 'saeedi', 'مرد', 'saeed', '23423423', '', '', '1401/9/20 23:05', NULL, '', 0, 0, '1', 1, 'اقتصاد', 'me', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_logs_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
