-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Agu 2021 pada 20.09
-- Versi server: 10.3.30-MariaDB-log-cll-lve
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pukamiam_ekattor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`, `phone`, `address`) VALUES
(1, 'admin', 'admin@admin.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_routine_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_copies` int(11) DEFAULT NULL,
  `issued_copies` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_request`
--

CREATE TABLE `book_request` (
  `book_request_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_start_date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_end_date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1di4ql0trrp58s3dsr30h4old1k6h9rm', '103.157.191.254', 1629636777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632393633363737373b),
('28s7akjd9reu70sbi35n6mrebdp2g015', '114.79.20.87', 1624445388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343434353338383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2261646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('80sv3j5jgusal9h06e3luo8eeco9tuqr', '103.157.191.254', 1624441159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343434313135393b),
('lnnic6sg90mmtmnbbf2moqngm113lnuv', '101.203.171.70', 1624439436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343433393433363b),
('lnts41qc1ge3adggpi8d20h3232kj1ei', '18.182.82.42', 1624439488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343433393438383b),
('np5ief10li9jbo4h24m6nl6c5ipjr7oj', '103.157.191.254', 1624439443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343433393434333b),
('o4j08cmnrav6h4uo5e1ekmi2ounk7sui', '103.157.191.254', 1624439554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343433393533333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2261646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('qei20l28jifmr8ib98s7oo2pht69l6p0', '114.79.20.87', 1624445449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343434353338383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a353a2261646d696e223b6c6f67696e5f747970657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` varchar(11) COLLATE utf8_unicode_ci DEFAULT '',
  `name_numeric` varchar(3) COLLATE utf8_unicode_ci DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_end` int(11) DEFAULT NULL,
  `time_start_min` int(11) DEFAULT NULL,
  `time_end_min` int(11) DEFAULT NULL,
  `day` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL,
  `enroll_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `date_added` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_events`
--

CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_gallery`
--

CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `show_on_website` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_gallery_image`
--

CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_general_settings`
--

CREATE TABLE `frontend_general_settings` (
  `frontend_general_settings_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `frontend_general_settings`
--

INSERT INTO `frontend_general_settings` (`frontend_general_settings_id`, `type`, `description`) VALUES
(1, 'about_us', ''),
(2, 'terms_conditions', ''),
(3, 'privacy_policy', ''),
(4, 'social_links', '[{\"facebook\":\"https://web.facebook.com/almuayyad.windan.7\",\"twitter\":\"http://twitter.com\",\"linkedin\":\"http://linkedin.com\",\"google\":\"http://google.com\",\"youtube\":\"http://youtube.com\",\"instagram\":\"https://www.instagram.com/almuayyad_windan/?hl=id\"}]'),
(5, 'school_title', ''),
(6, 'school_logo', ''),
(7, 'school_location', '51.7548164,-1.2565555'),
(8, 'address', ''),
(9, 'phone', ''),
(10, 'email', ''),
(11, 'fax', ''),
(12, 'header_logo', ''),
(13, 'footer_logo', ''),
(14, 'copyright_text', ''),
(15, 'about_us_image', 'about_us.png'),
(16, 'slider_images', '[{\"title\":\"Al-Muayyad Windan\",\"description\":\"Karta Budi Luhuring Ngabekti \",\"image\":\"1.jpg\"},{\"title\":\"Al-Muayyad Windan\",\"description\":\"Karta Budi Luhuring Ngabekti \",\"image\":\"2.jpg\"},{\"title\":\"Karta Budi Luhuring Ngabekti\",\"description\":\"Karta Budi Luhuring Ngabekti \",\"image\":\"3.jpg\"}]'),
(17, 'theme', 'ultimate'),
(18, 'homepage_note_title', ''),
(19, 'homepage_note_description', ''),
(20, 'recaptcha_site_key', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_news`
--

CREATE TABLE `frontend_news` (
  `frontend_news_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` int(11) DEFAULT NULL,
  `mark_upto` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_message`
--

CREATE TABLE `group_message` (
  `group_message_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_message_thread`
--

CREATE TABLE `group_message_thread` (
  `group_message_thread_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `members` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `due` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_timestamp` int(11) DEFAULT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `english` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bangali` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `librarian`
--

CREATE TABLE `librarian` (
  `librarian_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT NULL,
  `mark_total` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_on_website` int(11) DEFAULT 0,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `online_exam`
--

CREATE TABLE `online_exam` (
  `online_exam_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` int(11) DEFAULT NULL,
  `time_start` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'duration in second',
  `minimum_percentage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instruction` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `running_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `online_exam_result`
--

CREATE TABLE `online_exam_result` (
  `online_exam_result_id` int(11) UNSIGNED NOT NULL,
  `online_exam_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `answer_script` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `obtained_mark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_started_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_bank`
--

CREATE TABLE `question_bank` (
  `question_bank_id` int(11) UNSIGNED NOT NULL,
  `online_exam_id` int(11) DEFAULT NULL,
  `question_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_paper`
--

CREATE TABLE `question_paper` (
  `question_paper_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_paper` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Test'),
(2, 'system_title', 'School Management System'),
(3, 'address', 'Address'),
(4, 'phone', '+8012654159'),
(5, 'paypal_email', NULL),
(6, 'currency', 'usd'),
(7, 'system_email', 'school@school.com'),
(20, 'active_sms_service', 'disabled'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(13, 'clickatell_user', ''),
(14, 'clickatell_password', ''),
(15, 'clickatell_api_id', ''),
(16, 'skin_colour', 'default'),
(17, 'twilio_account_sid', ''),
(18, 'twilio_auth_token', ''),
(19, 'twilio_sender_phone_number', ''),
(21, 'running_year', '2020-2021'),
(22, 'payumoney_merchant_key', 'sad'),
(23, 'payumoney_salt_id', 'asd'),
(24, 'msg91_authentication_key', NULL),
(25, 'msg91_sender_ID', NULL),
(26, 'msg91_route', NULL),
(27, 'msg91_country_code', NULL),
(28, 'purchase_code', 'your purchase code'),
(29, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"SomeId\"}]'),
(30, 'stripe_keys', '[{\"active\":\"0\",\"testmode\":\"on\",\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(31, 'disable_frontend', '0'),
(32, 'protocol', 'smtp'),
(33, 'smtp_host', 'ssl://smtp.googlemail.com'),
(34, 'smtp_port', '465'),
(35, 'smtp_user', ''),
(36, 'smtp_pass', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `dormitory_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`academic_syllabus_id`);

--
-- Indeks untuk tabel `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indeks untuk tabel `book_request`
--
ALTER TABLE `book_request`
  ADD PRIMARY KEY (`book_request_id`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indeks untuk tabel `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indeks untuk tabel `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indeks untuk tabel `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indeks untuk tabel `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indeks untuk tabel `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indeks untuk tabel `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indeks untuk tabel `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indeks untuk tabel `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indeks untuk tabel `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indeks untuk tabel `frontend_general_settings`
--
ALTER TABLE `frontend_general_settings`
  ADD PRIMARY KEY (`frontend_general_settings_id`);

--
-- Indeks untuk tabel `frontend_news`
--
ALTER TABLE `frontend_news`
  ADD PRIMARY KEY (`frontend_news_id`);

--
-- Indeks untuk tabel `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indeks untuk tabel `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`group_message_id`);

--
-- Indeks untuk tabel `group_message_thread`
--
ALTER TABLE `group_message_thread`
  ADD PRIMARY KEY (`group_message_thread_id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indeks untuk tabel `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarian_id`);

--
-- Indeks untuk tabel `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indeks untuk tabel `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indeks untuk tabel `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indeks untuk tabel `online_exam`
--
ALTER TABLE `online_exam`
  ADD PRIMARY KEY (`online_exam_id`);

--
-- Indeks untuk tabel `online_exam_result`
--
ALTER TABLE `online_exam_result`
  ADD PRIMARY KEY (`online_exam_result_id`);

--
-- Indeks untuk tabel `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`question_bank_id`);

--
-- Indeks untuk tabel `question_paper`
--
ALTER TABLE `question_paper`
  ADD PRIMARY KEY (`question_paper_id`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indeks untuk tabel `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indeks untuk tabel `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indeks untuk tabel `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `book_request`
--
ALTER TABLE `book_request`
  MODIFY `book_request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `frontend_general_settings`
--
ALTER TABLE `frontend_general_settings`
  MODIFY `frontend_general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `frontend_news`
--
ALTER TABLE `frontend_news`
  MODIFY `frontend_news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `group_message`
--
ALTER TABLE `group_message`
  MODIFY `group_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `group_message_thread`
--
ALTER TABLE `group_message_thread`
  MODIFY `group_message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `librarian`
--
ALTER TABLE `librarian`
  MODIFY `librarian_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `online_exam`
--
ALTER TABLE `online_exam`
  MODIFY `online_exam_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `online_exam_result`
--
ALTER TABLE `online_exam_result`
  MODIFY `online_exam_result_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `question_bank_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `question_paper`
--
ALTER TABLE `question_paper`
  MODIFY `question_paper_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
