-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2022 at 10:47 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rigardz_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_cards`
--

CREATE TABLE `business_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EN',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `card_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_cards`
--

INSERT INTO `business_cards` (`id`, `card_id`, `user_id`, `theme_id`, `theme_color`, `card_lang`, `cover`, `profile`, `card_url`, `card_type`, `title`, `sub_title`, `description`, `card_status`, `status`, `created_at`, `updated_at`) VALUES
(1, '62f7d69e8af52', '62f7d1d67f080', '7ccc432a06vhd', 'blue', 'en', '/backend/img/vCards/IMG-62f7d69e8b9e8-Screenshot_20220813-221615_Google.jpg.jpg', '/backend/img/vCards/IMG-62f7d69e8b8c1-Screenshot_20220813-221615_Google.jpg.jpg', '62f7d69e8af52', 'vcard', 'Country club', 'Mumbai', 'Vacation Membership', 'activated', '1', '2022-08-14 02:21:42', '2022-08-14 02:21:42'),
(2, '62f88e6939925', '62f53ad1e6010', '7ccc432a06vhd', 'blue', 'en', '/backend/img/vCards/IMG-62f88e693a340-group-of-friends-using-smart-phone-sharing-funny-2022-01-24-22-41-30-utc.jpeg.jpg', '/backend/img/vCards/IMG-62f88e693a235-rigardz-qr-code.png.png', '62f88e6939925', 'vcard', 'Rigardz- Digital Business Card Maker', '#fastest growing digital business card maker for Entrepreneurs', 'Rigardz is a Digital Business Card Maker suitable for professionals, Entrepreneurs who are constantly meeting people and sharing their business cards. Rigardz makes sharing simple and effective.', 'activated', '1', '2022-08-14 15:25:53', '2022-08-16 17:18:34'),
(3, '6310e06477b6a', '6310dff97f8d1', '7ccc432a06hju', 'blue', 'en', '/backend/img/vCards/IMG-6310e0647864e-62e93889627d8.png.png', '/backend/img/vCards/IMG-6310e0647853f-62e93889627d8.png.png', '6310e06477b6a', 'store', 'Test store', 'Test store', '{\"whatsapp_no\":\"919876543210\",\"whatsapp_msg\":\"Thanks for shopping with us.\",\"currency\":\"\\u20b9\"}', 'activated', '1', '2022-09-02 02:10:04', '2022-09-02 02:10:04'),
(4, '6314a684080e1', '63148b80cc121', '7ccc432a06cth', 'purple', 'en', '/backend/img/vCards/IMG-6314a68408b77-image-cropped.jpg.jpg', '/backend/img/vCards/IMG-6314a68408a95-image-cropped.jpg.jpg', '6314a684080e1', 'vcard', 'krishna', 'php developer', 'hi i am web developer.', 'inactive', '1', '2022-09-04 22:52:12', '2022-09-04 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `business_fields`
--

CREATE TABLE `business_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_fields`
--

INSERT INTO `business_fields` (`id`, `card_id`, `type`, `icon`, `label`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, '62f7d69e8af52', 'text', 'far fa-address-book', 'Country Club', 'Resorts n Clubs', '1', '1', '2022-08-14 02:23:36', '2022-08-14 02:23:36'),
(7, '62f88e6939925', 'address', 'fas fa-location-arrow', 'Currently Located', 'Mumbai | India', '1', '1', '2022-08-16 17:18:44', '2022-08-16 17:18:44'),
(8, '62f88e6939925', 'tel', 'fas fa-phone-volume', 'Hand Phone', '+919769366953', '2', '1', '2022-08-16 17:18:44', '2022-08-16 17:18:44'),
(9, '62f88e6939925', 'url', 'fas fa-calendar-alt', 'Book my Calendar', 'https://calendly.com/asinha-xpc/15min', '3', '1', '2022-08-16 17:18:44', '2022-08-16 17:18:44'),
(10, '62f88e6939925', 'email', 'fas fa-at', 'Email Id', 'asinha@xpcover.com', '4', '1', '2022-08-16 17:18:44', '2022-08-16 17:18:44'),
(11, '62f88e6939925', 'url', 'fab fa-linkedin', 'My Linkedin Profile', 'https://www.linkedin.com/in/abhisheksinha-in/', '5', '1', '2022-08-16 17:18:44', '2022-08-16 17:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `business_hours`
--

CREATE TABLE `business_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Monday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tuesday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Wednesday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Thursday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Friday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Saturday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sunday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_always_open` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_display` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_hours`
--

INSERT INTO `business_hours` (`id`, `card_id`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `is_always_open`, `is_display`, `status`, `created_at`, `updated_at`) VALUES
(1, '62f88e6939925', '09:00 - 18:30', '09:00 - 18:30', '09:00 - 18:30', '09:00 - 18:30', '09:00 - 18:30', 'Closed', 'Closed', 'Closed', '1', '1', '2022-08-14 15:42:49', '2022-08-14 15:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Rigardz', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(2, 'currency', 'INR', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(3, 'timezone', 'Asia/Kolkata', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(4, 'paypal_mode', 'sandbox', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(5, 'paypal_client_id', 'YOUR_PAYPAL_CLIENT_ID', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(6, 'paypal_secret', 'YOUR_PAYPAL_SECRET', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(7, 'razorpay_key', 'rzp_live_2aLq8vhJg8kSoI', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(8, 'razorpay_secret', 'jQe7yeR9CCKDGEwmL5fPp18c', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(9, 'term', 'yearly', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(10, 'stripe_publishable_key', 'YOUR_STRIPE_PUB_KEY', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(11, 'stripe_secret', 'YOUR_STRIPE_SECRET', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(12, 'app_theme', 'blue', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(13, 'primary_image', '/images/web/elements/62e9388964d3e.svg', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(14, 'secondary_image', '/frontend/assets/elements/home.svg', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(15, 'tax_type', 'exclusive', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(16, 'invoice_prefix', 'RGD-', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(17, 'invoice_name', 'Rigardz', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(18, 'invoice_email', 'hi@rigardz.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(19, 'invoice_phone', '+919392806717', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(20, 'invoice_address', 'BKC', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(21, 'invoice_city', 'Mumbai', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(22, 'invoice_state', 'Maharashtra', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(23, 'invoice_zipcode', '400001', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(24, 'invoice_country', 'India', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(25, 'tax_name', 'Goods and Service Tax', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(26, 'tax_value', '18', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(27, 'tax_number', 'SPN125553322', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(28, 'email_heading', 'Thanks for using GoBiz. This is an invoice for your recent purchase.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(29, 'email_footer', 'If you’re having trouble with the button above, please login into your web browser.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(30, 'invoice_footer', 'Thank you very much for doing business with us. We look forward to working with you again!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(31, 'share_content', 'Welcome to { business_name }, Here is my digital vCard, { business_url } \r\nPowered by: { appName }', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(32, 'bank_transfer', 'Bank: FARM CREDIT BANK DN P&I\r\nBank Account Number: 18539734757                     \r\nRouting Number: 21054734\r\nIBAN: IN94769888520201207044719366\r\n\r\nBank: FARM CREDIT BANK DN P&I\r\nBank Account Number: 18539734757                     \r\nRouting Number: 21054734\r\nIBAN: IN94769888520201207044719366', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(33, 'app_version', '5.0.1', '2022-08-02 11:17:20', '2022-08-02 11:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `priority` int(11) NOT NULL,
  `iso_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subunit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subunit_to_unit` int(11) NOT NULL,
  `symbol_first` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_entity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thousands_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_numeric` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `priority`, `iso_code`, `name`, `symbol`, `subunit`, `subunit_to_unit`, `symbol_first`, `html_entity`, `decimal_mark`, `thousands_separator`, `iso_numeric`) VALUES
(1, 100, 'AED', 'United Arab Emirates Dirham', 'د.إ', 'Fils', 100, 'true', '', '.', ',', 784),
(2, 100, 'AFN', 'Afghan Afghani', '؋', 'Pul', 100, 'false', '', '.', ',', 971),
(3, 100, 'ALL', 'Albanian Lek', 'L', 'Qintar', 100, 'false', '', '.', ',', 8),
(4, 100, 'AMD', 'Armenian Dram', 'դր.', 'Luma', 100, 'false', '', '.', ',', 51),
(5, 100, 'ANG', 'Netherlands Antillean Gulden', 'ƒ', 'Cent', 100, 'true', '&#x0192;', ',', '.', 532),
(6, 100, 'AOA', 'Angolan Kwanza', 'Kz', 'Cêntimo', 100, 'false', '', '.', ',', 973),
(7, 100, 'ARS', 'Argentine Peso', '$', 'Centavo', 100, 'true', '&#x20B1;', ',', '.', 32),
(8, 4, 'AUD', 'Australian Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 36),
(9, 100, 'AWG', 'Aruban Florin', 'ƒ', 'Cent', 100, 'false', '&#x0192;', '.', ',', 533),
(10, 100, 'AZN', 'Azerbaijani Manat', 'null', 'Qəpik', 100, 'true', '', '.', ',', 944),
(11, 100, 'BAM', 'Bosnia and Herzegovina Convertible Mark', 'КМ', 'Fening', 100, 'true', '', '.', ',', 977),
(12, 100, 'BBD', 'Barbadian Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 52),
(13, 100, 'BDT', 'Bangladeshi Taka', '৳', 'Paisa', 100, 'true', '', '.', ',', 50),
(14, 100, 'BGN', 'Bulgarian Lev', 'лв', 'Stotinka', 100, 'false', '', '.', ',', 975),
(15, 100, 'BHD', 'Bahraini Dinar', 'ب.د', 'Fils', 1000, 'true', '', '.', ',', 48),
(16, 100, 'BIF', 'Burundian Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 108),
(17, 100, 'BMD', 'Bermudian Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 60),
(18, 100, 'BND', 'Brunei Dollar', '$', 'Sen', 100, 'true', '$', '.', ',', 96),
(19, 100, 'BOB', 'Bolivian Boliviano', 'Bs.', 'Centavo', 100, 'true', '', '.', ',', 68),
(20, 100, 'BRL', 'Brazilian Real', 'R$', 'Centavo', 100, 'true', 'R$', ',', '.', 986),
(21, 100, 'BSD', 'Bahamian Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 44),
(22, 100, 'BTN', 'Bhutanese Ngultrum', 'Nu.', 'Chertrum', 100, 'false', '', '.', ',', 64),
(23, 100, 'BWP', 'Botswana Pula', 'P', 'Thebe', 100, 'true', '', '.', ',', 72),
(24, 100, 'BYR', 'Belarusian Ruble', 'Br', 'Kapyeyka', 100, 'false', '', '.', ',', 974),
(25, 100, 'BZD', 'Belize Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 84),
(26, 5, 'CAD', 'Canadian Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 124),
(27, 100, 'CDF', 'Congolese Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 976),
(28, 100, 'CHF', 'Swiss Franc', 'Fr', 'Rappen', 100, 'true', '', '.', ',', 756),
(29, 100, 'CLF', 'Unidad de Fomento', 'UF', 'Peso', 1, 'true', '&#x20B1;', ',', '.', 990),
(30, 100, 'CLP', 'Chilean Peso', '$', 'Peso', 1, 'true', '&#36;', ',', '.', 152),
(31, 100, 'CNY', 'Chinese Renminbi Yuan', '¥', 'Fen', 100, 'true', '&#20803;', '.', ',', 156),
(32, 100, 'COP', 'Colombian Peso', '$', 'Centavo', 100, 'true', '&#x20B1;', ',', '.', 170),
(33, 100, 'CRC', 'Costa Rican Colón', '₡', 'Céntimo', 100, 'true', '&#x20A1;', ',', '.', 188),
(34, 100, 'CUC', 'Cuban Convertible Peso', '$', 'Centavo', 100, 'false', '', '.', ',', 931),
(35, 100, 'CUP', 'Cuban Peso', '$', 'Centavo', 100, 'true', '&#x20B1;', '.', ',', 192),
(36, 100, 'CVE', 'Cape Verdean Escudo', '$', 'Centavo', 100, 'false', '', '.', ',', 132),
(37, 100, 'CZK', 'Czech Koruna', 'Kč', 'Haléř', 100, 'true', '', ',', '.', 203),
(38, 100, 'DJF', 'Djiboutian Franc', 'Fdj', 'Centime', 100, 'false', '', '.', ',', 262),
(39, 100, 'DKK', 'Danish Krone', 'kr', 'Øre', 100, 'false', '', ',', '.', 208),
(40, 100, 'DOP', 'Dominican Peso', '$', 'Centavo', 100, 'true', '&#x20B1;', '.', ',', 214),
(41, 100, 'DZD', 'Algerian Dinar', 'د.ج', 'Centime', 100, 'false', '', '.', ',', 12),
(42, 100, 'EGP', 'Egyptian Pound', 'ج.م', 'Piastre', 100, 'true', '&#x00A3;', '.', ',', 818),
(43, 100, 'ERN', 'Eritrean Nakfa', 'Nfk', 'Cent', 100, 'false', '', '.', ',', 232),
(44, 100, 'ETB', 'Ethiopian Birr', 'Br', 'Santim', 100, 'false', '', '.', ',', 230),
(45, 2, 'EUR', 'Euro', '€', 'Cent', 100, 'true', '&#x20AC;', ',', '.', 978),
(46, 100, 'FJD', 'Fijian Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 242),
(47, 100, 'FKP', 'Falkland Pound', '£', 'Penny', 100, 'false', '&#x00A3;', '.', ',', 238),
(48, 3, 'GBP', 'British Pound', '£', 'Penny', 100, 'true', '&#x00A3;', '.', ',', 826),
(49, 100, 'GEL', 'Georgian Lari', 'ლ', 'Tetri', 100, 'false', '', '.', ',', 981),
(50, 100, 'GHS', 'Ghanaian Cedi', '₵', 'Pesewa', 100, 'true', '&#x20B5;', '.', ',', 936),
(51, 100, 'GIP', 'Gibraltar Pound', '£', 'Penny', 100, 'true', '&#x00A3;', '.', ',', 292),
(52, 100, 'GMD', 'Gambian Dalasi', 'D', 'Butut', 100, 'false', '', '.', ',', 270),
(53, 100, 'GNF', 'Guinean Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 324),
(54, 100, 'GTQ', 'Guatemalan Quetzal', 'Q', 'Centavo', 100, 'true', '', '.', ',', 320),
(55, 100, 'GYD', 'Guyanese Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 328),
(56, 100, 'HKD', 'Hong Kong Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 344),
(57, 100, 'HNL', 'Honduran Lempira', 'L', 'Centavo', 100, 'true', '', '.', ',', 340),
(58, 100, 'HRK', 'Croatian Kuna', 'kn', 'Lipa', 100, 'true', '', ',', '.', 191),
(59, 100, 'HTG', 'Haitian Gourde', 'G', 'Centime', 100, 'false', '', '.', ',', 332),
(60, 100, 'HUF', 'Hungarian Forint', 'Ft', 'Fillér', 100, 'false', '', ',', '.', 348),
(61, 100, 'IDR', 'Indonesian Rupiah', 'Rp', 'Sen', 100, 'true', '', ',', '.', 360),
(62, 100, 'ILS', 'Israeli New Sheqel', '₪', 'Agora', 100, 'true', '&#x20AA;', '.', ',', 376),
(63, 100, 'INR', 'Indian Rupee', '₹', 'Paisa', 100, 'true', '&#x20b9;', '.', ',', 356),
(64, 100, 'IQD', 'Iraqi Dinar', 'ع.د', 'Fils', 1000, 'false', '', '.', ',', 368),
(65, 100, 'IRR', 'Iranian Rial', '﷼', 'Dinar', 100, 'true', '&#xFDFC;', '.', ',', 364),
(66, 100, 'ISK', 'Icelandic Króna', 'kr', 'Eyrir', 100, 'true', '', ',', '.', 352),
(67, 100, 'JMD', 'Jamaican Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 388),
(68, 100, 'JOD', 'Jordanian Dinar', 'د.ا', 'Piastre', 100, 'true', '', '.', ',', 400),
(69, 6, 'JPY', 'Japanese Yen', '¥', 'null', 1, 'true', '&#x00A5;', '.', ',', 392),
(70, 100, 'KES', 'Kenyan Shilling', 'KSh', 'Cent', 100, 'true', '', '.', ',', 404),
(71, 100, 'KGS', 'Kyrgyzstani Som', 'som', 'Tyiyn', 100, 'false', '', '.', ',', 417),
(72, 100, 'KHR', 'Cambodian Riel', '៛', 'Sen', 100, 'false', '&#x17DB;', '.', ',', 116),
(73, 100, 'KMF', 'Comorian Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 174),
(74, 100, 'KPW', 'North Korean Won', '₩', 'Chŏn', 100, 'false', '&#x20A9;', '.', ',', 408),
(75, 100, 'KRW', 'South Korean Won', '₩', 'null', 1, 'true', '&#x20A9;', '.', ',', 410),
(76, 100, 'KWD', 'Kuwaiti Dinar', 'د.ك', 'Fils', 1000, 'true', '', '.', ',', 414),
(77, 100, 'KYD', 'Cayman Islands Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 136),
(78, 100, 'KZT', 'Kazakhstani Tenge', '〒', 'Tiyn', 100, 'false', '', '.', ',', 398),
(79, 100, 'LAK', 'Lao Kip', '₭', 'Att', 100, 'false', '&#x20AD;', '.', ',', 418),
(80, 100, 'LBP', 'Lebanese Pound', 'ل.ل', 'Piastre', 100, 'true', '&#x00A3;', '.', ',', 422),
(81, 100, 'LKR', 'Sri Lankan Rupee', '₨', 'Cent', 100, 'false', '&#x0BF9;', '.', ',', 144),
(82, 100, 'LRD', 'Liberian Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 430),
(83, 100, 'LSL', 'Lesotho Loti', 'L', 'Sente', 100, 'false', '', '.', ',', 426),
(84, 100, 'LTL', 'Lithuanian Litas', 'Lt', 'Centas', 100, 'false', '', '.', ',', 440),
(85, 100, 'LVL', 'Latvian Lats', 'Ls', 'Santīms', 100, 'true', '', '.', ',', 428),
(86, 100, 'LYD', 'Libyan Dinar', 'ل.د', 'Dirham', 1000, 'false', '', '.', ',', 434),
(87, 100, 'MAD', 'Moroccan Dirham', 'د.م.', 'Centime', 100, 'false', '', '.', ',', 504),
(88, 100, 'MDL', 'Moldovan Leu', 'L', 'Ban', 100, 'false', '', '.', ',', 498),
(89, 100, 'MGA', 'Malagasy Ariary', 'Ar', 'Iraimbilanja', 5, 'true', '', '.', ',', 969),
(90, 100, 'MKD', 'Macedonian Denar', 'ден', 'Deni', 100, 'false', '', '.', ',', 807),
(91, 100, 'MMK', 'Myanmar Kyat', 'K', 'Pya', 100, 'false', '', '.', ',', 104),
(92, 100, 'MNT', 'Mongolian Tögrög', '₮', 'Möngö', 100, 'false', '&#x20AE;', '.', ',', 496),
(93, 100, 'MOP', 'Macanese Pataca', 'P', 'Avo', 100, 'false', '', '.', ',', 446),
(94, 100, 'MRO', 'Mauritanian Ouguiya', 'UM', 'Khoums', 5, 'false', '', '.', ',', 478),
(95, 100, 'MUR', 'Mauritian Rupee', '₨', 'Cent', 100, 'true', '&#x20A8;', '.', ',', 480),
(96, 100, 'MVR', 'Maldivian Rufiyaa', 'MVR', 'Laari', 100, 'false', '', '.', ',', 462),
(97, 100, 'MWK', 'Malawian Kwacha', 'MK', 'Tambala', 100, 'false', '', '.', ',', 454),
(98, 100, 'MXN', 'Mexican Peso', '$', 'Centavo', 100, 'true', '$', '.', ',', 484),
(99, 100, 'MYR', 'Malaysian Ringgit', 'RM', 'Sen', 100, 'true', '', '.', ',', 458),
(100, 100, 'MZN', 'Mozambican Metical', 'MTn', 'Centavo', 100, 'true', '', ',', '.', 943),
(101, 100, 'NAD', 'Namibian Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 516),
(102, 100, 'NGN', 'Nigerian Naira', '₦', 'Kobo', 100, 'false', '&#x20A6;', '.', ',', 566),
(103, 100, 'NIO', 'Nicaraguan Córdoba', 'C$', 'Centavo', 100, 'false', '', '.', ',', 558),
(104, 100, 'NOK', 'Norwegian Krone', 'kr', 'Øre', 100, 'true', 'kr', ',', '.', 578),
(105, 100, 'NPR', 'Nepalese Rupee', '₨', 'Paisa', 100, 'true', '&#x20A8;', '.', ',', 524),
(106, 100, 'NZD', 'New Zealand Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 554),
(107, 100, 'OMR', 'Omani Rial', 'ر.ع.', 'Baisa', 1000, 'true', '&#xFDFC;', '.', ',', 512),
(108, 100, 'PAB', 'Panamanian Balboa', 'B/.', 'Centésimo', 100, 'false', '', '.', ',', 590),
(109, 100, 'PEN', 'Peruvian Nuevo Sol', 'S/.', 'Céntimo', 100, 'true', 'S/.', '.', ',', 604),
(110, 100, 'PGK', 'Papua New Guinean Kina', 'K', 'Toea', 100, 'false', '', '.', ',', 598),
(111, 100, 'PHP', 'Philippine Peso', '₱', 'Centavo', 100, 'true', '&#x20B1;', '.', ',', 608),
(112, 100, 'PKR', 'Pakistani Rupee', '₨', 'Paisa', 100, 'true', '&#x20A8;', '.', ',', 586),
(113, 100, 'PLN', 'Polish Złoty', 'zł', 'Grosz', 100, 'false', 'z&#322;', ',', '', 985),
(114, 100, 'PYG', 'Paraguayan Guaraní', '₲', 'Céntimo', 100, 'true', '&#x20B2;', '.', ',', 600),
(115, 100, 'QAR', 'Qatari Riyal', 'ر.ق', 'Dirham', 100, 'false', '&#xFDFC;', '.', ',', 634),
(116, 100, 'RON', 'Romanian Leu', 'Lei', 'Bani', 100, 'true', '', ',', '.', 946),
(117, 100, 'RSD', 'Serbian Dinar', 'РСД', 'Para', 100, 'true', '', '.', ',', 941),
(118, 100, 'RUB', 'Russian Ruble', 'р.', 'Kopek', 100, 'false', '&#x0440;&#x0443;&#x0431;', ',', '.', 643),
(119, 100, 'RWF', 'Rwandan Franc', 'FRw', 'Centime', 100, 'false', '', '.', ',', 646),
(120, 100, 'SAR', 'Saudi Riyal', 'ر.س', 'Hallallah', 100, 'true', '&#xFDFC;', '.', ',', 682),
(121, 100, 'SBD', 'Solomon Islands Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 90),
(122, 100, 'SCR', 'Seychellois Rupee', '₨', 'Cent', 100, 'false', '&#x20A8;', '.', ',', 690),
(123, 100, 'SDG', 'Sudanese Pound', '£', 'Piastre', 100, 'true', '', '.', ',', 938),
(124, 100, 'SEK', 'Swedish Krona', 'kr', 'Öre', 100, 'false', '', ',', '', 752),
(125, 100, 'SGD', 'Singapore Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 702),
(126, 100, 'SHP', 'Saint Helenian Pound', '£', 'Penny', 100, 'false', '&#x00A3;', '.', ',', 654),
(127, 100, 'SKK', 'Slovak Koruna', 'Sk', 'Halier', 100, 'true', '', '.', ',', 703),
(128, 100, 'SLL', 'Sierra Leonean Leone', 'Le', 'Cent', 100, 'false', '', '.', ',', 694),
(129, 100, 'SOS', 'Somali Shilling', 'Sh', 'Cent', 100, 'false', '', '.', ',', 706),
(130, 100, 'SRD', 'Surinamese Dollar', '$', 'Cent', 100, 'false', '', '.', ',', 968),
(131, 100, 'SSP', 'South Sudanese Pound', '£', 'piaster', 100, 'false', '&#x00A3;', '.', ',', 728),
(132, 100, 'STD', 'São Tomé and Príncipe Dobra', 'Db', 'Cêntimo', 100, 'false', '', '.', ',', 678),
(133, 100, 'SVC', 'Salvadoran Colón', '₡', 'Centavo', 100, 'true', '&#x20A1;', '.', ',', 222),
(134, 100, 'SYP', 'Syrian Pound', '£S', 'Piastre', 100, 'false', '&#x00A3;', '.', ',', 760),
(135, 100, 'SZL', 'Swazi Lilangeni', 'L', 'Cent', 100, 'true', '', '.', ',', 748),
(136, 100, 'THB', 'Thai Baht', '฿', 'Satang', 100, 'true', '&#x0E3F;', '.', ',', 764),
(137, 100, 'TJS', 'Tajikistani Somoni', 'ЅМ', 'Diram', 100, 'false', '', '.', ',', 972),
(138, 100, 'TMT', 'Turkmenistani Manat', 'T', 'Tenge', 100, 'false', '', '.', ',', 934),
(139, 100, 'TND', 'Tunisian Dinar', 'د.ت', 'Millime', 1000, 'false', '', '.', ',', 788),
(140, 100, 'TOP', 'Tongan Paʻanga', 'T$', 'Seniti', 100, 'true', '', '.', ',', 776),
(141, 100, 'TRY', 'Turkish Lira', 'TL', 'kuruş', 100, 'false', '', ',', '.', 949),
(142, 100, 'TTD', 'Trinidad and Tobago Dollar', '$', 'Cent', 100, 'false', '$', '.', ',', 780),
(143, 100, 'TWD', 'New Taiwan Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 901),
(144, 100, 'TZS', 'Tanzanian Shilling', 'Sh', 'Cent', 100, 'true', '', '.', ',', 834),
(145, 100, 'UAH', 'Ukrainian Hryvnia', '₴', 'Kopiyka', 100, 'false', '&#x20B4;', '.', ',', 980),
(146, 100, 'UGX', 'Ugandan Shilling', 'USh', 'Cent', 100, 'false', '', '.', ',', 800),
(147, 1, 'USD', 'United States Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 840),
(148, 100, 'UYU', 'Uruguayan Peso', '$', 'Centésimo', 100, 'true', '&#x20B1;', ',', '.', 858),
(149, 100, 'UZS', 'Uzbekistani Som', 'null', 'Tiyin', 100, 'false', '', '.', ',', 860),
(150, 100, 'VEF', 'Venezuelan Bolívar', 'Bs F', 'Céntimo', 100, 'true', '', ',', '.', 937),
(151, 100, 'VND', 'Vietnamese Đồng', '₫', 'Hào', 10, 'true', '&#x20AB;', ',', '.', 704),
(152, 100, 'VUV', 'Vanuatu Vatu', 'Vt', 'null', 1, 'true', '', '.', ',', 548),
(153, 100, 'WST', 'Samoan Tala', 'T', 'Sene', 100, 'false', '', '.', ',', 882),
(154, 100, 'XAF', 'Central African Cfa Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 950),
(155, 100, 'XAG', 'Silver (Troy Ounce)', 'oz t', 'oz', 1, 'false', '', '.', ',', 961),
(156, 100, 'XAU', 'Gold (Troy Ounce)', 'oz t', 'oz', 1, 'false', '', '.', ',', 959),
(157, 100, 'XCD', 'East Caribbean Dollar', '$', 'Cent', 100, 'true', '$', '.', ',', 951),
(158, 100, 'XDR', 'Special Drawing Rights', 'SDR', '', 1, 'false', '$', '.', ',', 960),
(159, 100, 'XOF', 'West African Cfa Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 952),
(160, 100, 'XPF', 'Cfp Franc', 'Fr', 'Centime', 100, 'false', '', '.', ',', 953),
(161, 100, 'YER', 'Yemeni Rial', '﷼', 'Fils', 100, 'false', '&#xFDFC;', '.', ',', 886),
(162, 100, 'ZAR', 'South African Rand', 'R', 'Cent', 100, 'true', '&#x0052;', '.', ',', 710),
(163, 100, 'ZMK', 'Zambian Kwacha', 'ZK', 'Ngwee', 100, 'false', '', '.', ',', 894),
(164, 100, 'ZMW', 'Zambian Kwacha', 'ZK', 'Ngwee', 100, 'false', '', '.', ',', 967);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `card_id`, `caption`, `gallery_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '62f88e6939925', 'Develop Skills', 'images/62f53ad1e6010-62f89201b8bca.png', '1', '2022-08-14 15:42:29', '2022-08-14 15:42:29'),
(2, '62f88e6939925', 'Right Investments', 'images/62f53ad1e6010-62f892026787d.png', '1', '2022-08-14 15:42:29', '2022-08-14 15:42:29'),
(3, '62f88e6939925', 'Be Number Friendly', 'images/62f53ad1e6010-62f892021b0e2.png', '1', '2022-08-14 15:42:29', '2022-08-14 15:42:29'),
(4, '62f88e6939925', 'Know More', 'images/62f53ad1e6010-62f8920232c2c.png', '1', '2022-08-14 15:42:29', '2022-08-14 15:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `payment_gateway_id`, `payment_gateway_logo`, `payment_gateway_name`, `display_name`, `client_id`, `secret_key`, `is_status`, `status`, `created_at`, `updated_at`) VALUES
(1, '60964401751ab', '/backend/img/payment-method/paypal.png', 'Paypal', 'Paypal', '5', '6', 'enabled', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(2, '60964410731d9', '/backend/img/payment-method/razorpay.png', 'Razorpay', 'Razorpay', '7', '8', 'enabled', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(3, '60964410732t9', '/backend/img/payment-method/stripe.png', 'Stripe', 'Stripe', '10', '11', 'enabled', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(4, '659644107y2g5', '/backend/img/payment-method/bank-transfer.png', 'Bank Transfer', 'Bank Transfer', '12', '13', 'enabled', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'en', '2022-08-02 15:17:20', '2022-08-02 15:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `media_id`, `user_id`, `media_name`, `media_url`, `created_at`, `updated_at`) VALUES
(1, '62f8914ed1bac', '62f53ad1e6010', 'service-1.png', 'images/62f53ad1e6010-62f8914ed1bac.png', '2022-08-14 15:38:14', '2022-08-14 15:38:14'),
(2, '62f89201b8bca', '62f53ad1e6010', '2.png', 'images/62f53ad1e6010-62f89201b8bca.png', '2022-08-14 15:41:13', '2022-08-14 15:41:13'),
(3, '62f89201b959d', '62f53ad1e6010', '3.png', 'images/62f53ad1e6010-62f89201b959d.png', '2022-08-14 15:41:13', '2022-08-14 15:41:13'),
(4, '62f892021b0e2', '62f53ad1e6010', '4.png', 'images/62f53ad1e6010-62f892021b0e2.png', '2022-08-14 15:41:14', '2022-08-14 15:41:14'),
(5, '62f8920232c2c', '62f53ad1e6010', '5.png', 'images/62f53ad1e6010-62f8920232c2c.png', '2022-08-14 15:41:14', '2022-08-14 15:41:14'),
(6, '62f892026787d', '62f53ad1e6010', '6.png', 'images/62f53ad1e6010-62f892026787d.png', '2022-08-14 15:41:14', '2022-08-14 15:41:14'),
(7, '6315cc84c53cc', '63148b80cc121', 'download (3).png', 'images/63148b80cc121-6315cc84c53cc.png', '2022-09-05 19:46:36', '2022-09-05 19:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_03_31_131010_create_roles_table', 1),
(7, '2021_04_01_151204_create_themes_table', 1),
(8, '2021_04_01_151457_create_plans_table', 1),
(9, '2021_04_01_151522_create_business_cards_table', 1),
(10, '2021_04_01_151647_create_services_table', 1),
(11, '2021_04_01_151712_create_galleries_table', 1),
(12, '2021_04_01_151730_create_payments_table', 1),
(13, '2021_04_01_151755_create_business_hours_table', 1),
(14, '2021_04_01_151814_create_settings_table', 1),
(15, '2021_04_01_151835_create_gateways_table', 1),
(16, '2021_04_01_151858_create_transactions_table', 1),
(17, '2021_05_10_140547_create_currencies_table', 1),
(18, '2021_07_27_190247_create_config_table', 1),
(19, '2021_07_29_140453_create_pages_table', 1),
(20, '2021_08_03_171614_create_business_fields_table', 1),
(21, '2021_08_23_184731_create_store_products_table', 1),
(22, '2021_09_21_132016_create_medias_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `section_name`, `section_title`, `section_content`, `created_at`, `updated_at`) VALUES
(1, 'home', 'banner', 'banner_title', 'Create your Digital Business Card', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(2, 'home', 'banner', 'banner_description', 'Rigardz is a Digital Business Card Maker. You can create your own digital vcard to attract your customers.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(3, 'home', 'banner', 'banner_button_1', 'Sign up now', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(4, 'home', 'banner', 'banner_button_1_link', '/register', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(5, 'home', 'banner', 'banner_button_2', 'How it works', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(6, 'home', 'banner', 'banner_button_2_link', '#how-it-works', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(7, 'home', 'works', 'work_mini_title', 'How it works?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(8, 'home', 'works', 'work_title', 'Create, share & get more customers', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(9, 'home', 'works', 'work_description', 'Register a new account, create your own digital business card, share your unique link and get more customers.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(10, 'home', 'works', 'work_li_title_1', 'Create business card', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(11, 'home', 'works', 'work_li_title_2', 'Share your link', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(12, 'home', 'works', 'work_li_title_3', 'Get more customers', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(13, 'home', 'works', 'work_card_title_1', 'Photo gallery', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(14, 'home', 'works', 'work_card_description_1', 'You can show case your product images on your business card.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(15, 'home', 'works', 'work_card_title_2', 'Services Listing', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(16, 'home', 'works', 'work_card_description_2', 'You can list your services with explaination content and enquiry button. This helps you for high chance to convert your visitor into business lead.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(17, 'home', 'works', 'work_card_title_3', 'Save vCard', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(18, 'home', 'works', 'work_card_description_3', 'Visitor can save your phone number as vCard file format.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(19, 'home', 'works', 'work_card_title_4', 'Best for Businesses', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(20, 'home', 'works', 'work_card_description_4', 'GoBiz Digital Business cards will help you to transform your card visitors into customers.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(21, 'home', 'features', 'feature_mini_title', 'Why Digital Business Card?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(22, 'home', 'features', 'feature_title', 'vCard Features', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(23, 'home', 'features', 'feature_card_title_1', 'WhatsApp Enabled', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(24, 'home', 'features', 'feature_card_description_1', 'You can enable and disable WhatsApp Chat Feature in your digital business card.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(25, 'home', 'features', 'feature_card_description_2', 'Photo Gallery', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(26, 'home', 'features', 'feature_card_description_2', 'You can upload product photos or any business related photos in your gallery section.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(27, 'home', 'features', 'feature_card_description_3', 'Services Section', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(28, 'home', 'features', 'feature_card_description_3', 'You can list your all services with image and description in this section.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(29, 'home', 'features', 'feature_card_description_4', 'Payment Details', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(30, 'home', 'features', 'feature_card_description_4', 'You can list your all accepted payment methods in your digital business card.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(31, 'home', 'features', 'feature_card_description_5', 'Business Hours', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(32, 'home', 'features', 'feature_card_description_5', 'You can display your business opening hours. Your customer can easily understand when you are available.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(33, 'home', 'features', 'feature_card_description_6', 'YouTube Link Integraion', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(34, 'home', 'features', 'feature_card_description_6', 'You can integrate your YouTube Link with your digital business card.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(35, 'home', 'features', 'feature_card_description_7', 'Google Maps Integraion', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(36, 'home', 'features', 'feature_card_description_7', 'You can display your shop / business location in google maps. Visitors can easily find you.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(37, 'home', 'features', 'feature_card_description_8', 'Social Media Links', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(38, 'home', 'features', 'feature_card_description_8', 'Your all social media presence in one digital business card. Stay connect with your customers.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(39, 'home', 'features', 'feature_card_description_9', 'Modern Theme', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(40, 'home', 'features', 'feature_card_description_9', 'We used modern theme for user interface. It is fully responsive.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(41, 'home', 'features', 'feature_card_description_10', 'Clean UI Design', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(42, 'home', 'features', 'feature_card_description_10', 'We creafted all designs professionally. It made with latest frameworks.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(43, 'home', 'features', 'feature_card_description_11', 'Faster Loading', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(44, 'home', 'features', 'feature_card_description_11', 'We give more importance for page load. Your digital card load faster than normal webpages.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(45, 'home', 'features', 'feature_card_description_12', 'Unique Link', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(46, 'home', 'features', 'feature_card_description_12', 'Your name or business whatever it is. You can generate your business card link as per your choice.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(47, 'home', 'pricing', 'pricing_mini_title', 'Pricing', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(48, 'home', 'pricing', 'pricing_title', 'Choose your best plan', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(49, 'home', 'pricing', 'pricing_subtitle', 'Good investments will gives you 10x more revenue.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(50, 'faq', 'faq', 'faq_title', 'Frequently Asked Question', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(51, 'faq', 'faq', 'faq_description', 'The most common questions about how our business works and what can do for you.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(52, 'faq', 'faq', 'faq_question_1', 'How Long is this site live?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(53, 'faq', 'faq', 'faq_answer_1', 'Laboris qui labore cillum culpa in sunt quis sint veniam. Dolore ex aute deserunt esse ipsum elit aliqua. Aute quis minim velit nostrud pariatur culpa magna in aute.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(54, 'faq', 'faq', 'faq_question_2', 'Can I install/upload anything I want on there?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(55, 'faq', 'faq', 'faq_answer_2', 'Laboris qui labore cillum culpa in sunt quis sint veniam. Dolore ex aute deserunt esse ipsum elit aliqua. Aute quis minim velit nostrud pariatur culpa magna in aute.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(56, 'faq', 'faq', 'faq_question_3', 'How can I migrate to another site?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(57, 'faq', 'faq', 'faq_answer_3', 'Laboris qui labore cillum culpa in sunt quis sint veniam. Dolore ex aute deserunt esse ipsum elit aliqua. Aute quis minim velit nostrud pariatur culpa magna in aute.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(58, 'faq', 'faq', 'faq_question_4', 'Can I change the domain you give me?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(59, 'faq', 'faq', 'faq_answer_4', 'Laboris qui labore cillum culpa in sunt quis sint veniam. Dolore ex aute deserunt esse ipsum elit aliqua. Aute quis minim velit nostrud pariatur culpa magna in aute.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(60, 'faq', 'faq', 'faq_question_5', 'How many sites I can create at once?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(61, 'faq', 'faq', 'faq_answer_5', 'Laboris qui labore cillum culpa in sunt quis sint veniam. Dolore ex aute deserunt esse ipsum elit aliqua. Aute quis minim velit nostrud pariatur culpa magna in aute.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(62, 'faq', 'faq', 'faq_question_6', 'How can I communicate with you?', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(63, 'faq', 'faq', 'faq_answer_6', 'Laboris qui labore cillum culpa in sunt quis sint veniam. Dolore ex aute deserunt esse ipsum elit aliqua. Aute quis minim velit nostrud pariatur culpa magna in aute.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(64, 'footer support email', 'support', 'support_email', 'support@rigardz.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(65, 'privacy', 'privacy', 'privacy_title', 'Privacy Policy for GoBiz', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(66, 'privacy', 'privacy', 'privacy_content_description', 'At GoBiz, accessible from https://gobiz.goapps.online/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by GoBiz and how we use it.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(67, 'privacy', 'privacy', 'privacy_content_description', 'If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(68, 'privacy', 'privacy', 'privacy_content_description', 'This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in GoBiz. This policy is not applicable to any information collected offline or via channels other than this website.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(69, 'privacy', 'privacy', 'privacy_content_title', 'Consent', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(70, 'privacy', 'privacy', 'privacy_content_description', 'By using our website, you hereby consent to our Privacy Policy and agree to its terms.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(71, 'privacy', 'privacy', 'privacy_content_title', 'Information we collect', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(72, 'privacy', 'privacy', 'privacy_content_description', 'The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(73, 'privacy', 'privacy', 'privacy_content_description', 'If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(74, 'privacy', 'privacy', 'privacy_content_description', 'When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(75, 'privacy', 'privacy', 'privacy_content_title', 'How we use your information', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(76, 'privacy', 'privacy', 'privacy_content_description', 'We use the information we collect in various ways, including to:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(77, 'privacy', 'privacy', 'privacy_content_description', '\n            1. Provide, operate, and maintain our website\n            2. Improve, personalize, and expand our website\n            3. Understand and analyze how you use our website\n            4. Develop new products, services, features, and functionality\n            5. Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes\n            6. Send you emails\n            7. Find and prevent fraud\n            ', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(78, 'privacy', 'privacy', 'privacy_content_title', 'Log Files', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(79, 'privacy', 'privacy', 'privacy_content_description', 'GoBiz follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services analytics.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(80, 'privacy', 'privacy', 'privacy_content_description', 'The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users movement on the website, and gathering demographic information.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(81, 'privacy', 'privacy', 'privacy_content_title', 'Cookies and Web Beacons', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(82, 'privacy', 'privacy', 'privacy_content_description', 'Like any other website, GoBiz uses cookies. These cookies are used to store information including visitors preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users experience by customizing our web page content based on visitors browser type and/or other information.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(83, 'privacy', 'privacy', 'privacy_content_description', 'For more general information on cookies, please read \"What Are Cookies\".', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(84, 'privacy', 'privacy', 'privacy_content_title', 'Advertising Partners Privacy Policies', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(85, 'privacy', 'privacy', 'privacy_content_description', 'You may consult this list to find the Privacy Policy for each of the advertising partners of GoBiz.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(86, 'privacy', 'privacy', 'privacy_content_description', 'Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on GoBiz, which are sent directly to users browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(87, 'privacy', 'privacy', 'privacy_content_description', 'Note that GoBiz has no access to or control over these cookies that are used by third-party advertisers.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(88, 'privacy', 'privacy', 'privacy_content_title', 'Third Party Privacy Policies', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(89, 'privacy', 'privacy', 'privacy_content_description', 'GoBizs Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(90, 'privacy', 'privacy', 'privacy_content_description', 'You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers respective websites.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(91, 'privacy', 'privacy', 'privacy_content_title', 'CCPA Privacy Rights (Do Not Sell My Personal Information)', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(92, 'privacy', 'privacy', 'privacy_content_description', 'Under the CCPA, among other rights, California consumers have the right to:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(93, 'privacy', 'privacy', 'privacy_content_description', 'Request that a business that collects a consumers personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(94, 'privacy', 'privacy', 'privacy_content_description', 'Request that a business delete any personal data about the consumer that a business has collected.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(95, 'privacy', 'privacy', 'privacy_content_description', 'Request that a business that sells a consumers personal data, not sell the consumers personal data.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(96, 'privacy', 'privacy', 'privacy_content_description', 'If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(97, 'privacy', 'privacy', 'privacy_content_title', 'GDPR Data Protection Rights', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(98, 'privacy', 'privacy', 'privacy_content_description', 'We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(99, 'privacy', 'privacy', 'privacy_content_description', 'The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(100, 'privacy', 'privacy', 'privacy_content_description', 'The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(101, 'privacy', 'privacy', 'privacy_content_description', 'The right to erasure – You have the right to request that we erase your personal data, under certain conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(102, 'privacy', 'privacy', 'privacy_content_description', 'The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(103, 'privacy', 'privacy', 'privacy_content_description', 'The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(104, 'privacy', 'privacy', 'privacy_content_description', 'The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(105, 'privacy', 'privacy', 'privacy_content_description', 'If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(106, 'privacy', 'privacy', 'privacy_content_title', 'Childrens Information', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(107, 'privacy', 'privacy', 'privacy_content_description', 'Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(108, 'privacy', 'privacy', 'privacy_content_description', 'GoBiz does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(109, 'terms', 'terms', 'term_content_title', 'Terms and Conditions', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(110, 'terms', 'terms', 'term_content_description', 'Welcome to Rigardz!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(111, 'terms', 'terms', 'term_content_description', 'These terms and conditions outline the rules and regulations for the use of Rigardz Website, located at https://rigardz.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(112, 'terms', 'terms', 'term_content_description', 'By accessing this website we assume you accept these terms and conditions. Do not continue to use Rigardz if you do not agree to take all of the terms and conditions stated on this page.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(113, 'terms', 'terms', 'term_content_description', 'The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(114, 'terms', 'terms', 'term_content_title', 'Cookies', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(115, 'terms', 'terms', 'term_content_description', 'We employ the use of cookies. By accessing Rigardz, you agreed to use cookies in agreement with the Rigardz Privacy Policy.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(116, 'terms', 'terms', 'term_content_description', 'Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(117, 'terms', 'terms', 'term_content_title', 'License', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(118, 'terms', 'terms', 'term_content_description', 'Unless otherwise stated, Rigardz and/or its licensors own the intellectual property rights for all material on Rigardz. All intellectual property rights are reserved. You may access this from Rigardz for your own personal use subjected to restrictions set in these terms and conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(119, 'terms', 'terms', 'term_content_description', 'You must not:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(120, 'terms', 'terms', 'term_content_description', '1. Republish material from Rigardz\r\n            2. Sell, rent or sub-license material from Rigardz\r\n            3. Reproduce, duplicate or copy material from Rigardz\r\n            4. Redistribute content from Rigardz', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(121, 'terms', 'terms', 'term_content_description', 'This Agreement shall begin on the date hereof.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(122, 'terms', 'terms', 'term_content_description', 'Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Rigardz does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Rigardz,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Rigardz shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(123, 'terms', 'terms', 'term_content_description', 'Rigardz reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(124, 'terms', 'terms', 'term_content_description', 'You warrant and represent that:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(125, 'terms', 'terms', 'term_content_description', '1. You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;\r\n            2. The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;\r\n            3. The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy\r\n            4. The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(126, 'terms', 'terms', 'term_content_description', 'You hereby grant Rigardz a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(127, 'terms', 'terms', 'term_content_title', 'Hyperlinking to our Content', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(128, 'terms', 'terms', 'term_content_description', 'The following organizations may link to our Website without prior written approval:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(129, 'terms', 'terms', 'term_content_description', '1. Government agencies;\r\n            2. Search engines;\r\n            3. News organizations;\r\n            4. Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and\r\n            5. System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(130, 'terms', 'terms', 'term_content_description', 'These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(131, 'terms', 'terms', 'term_content_description', 'We may consider and approve other link requests from the following types of organizations:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(132, 'terms', 'terms', 'term_content_description', '1. commonly-known consumer and/or business information sources;\r\n            2. dot.com community sites;\r\n            3. associations or other groups representing charities;\r\n            4. online directory distributors;\r\n            5. internet portals;\r\n            6. accounting, law and consulting firms; and\r\n            7. educational institutions and trade associations.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(133, 'terms', 'terms', 'term_content_description', 'We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Rigardz; and (d) the link is in the context of general resource information.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(134, 'terms', 'terms', 'term_content_description', 'These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(135, 'terms', 'terms', 'term_content_description', 'If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Rigardz. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(136, 'terms', 'terms', 'term_content_description', 'Approved organizations may hyperlink to our Website as follows:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(137, 'terms', 'terms', 'term_content_description', '1. By use of our corporate name; or\r\n            2. By use of the uniform resource locator being linked to; or\r\n            3. By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(138, 'terms', 'terms', 'term_content_description', 'No use of Rigardz logo or other artwork will be allowed for linking absent a trademark license agreement.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(139, 'terms', 'terms', 'term_content_title', 'iFrames', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(140, 'terms', 'terms', 'term_content_description', 'Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(141, 'terms', 'terms', 'term_content_title', 'Content Liability', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(142, 'terms', 'terms', 'term_content_description', 'We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(143, 'terms', 'terms', 'term_content_title', 'Reservation of Rights', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(144, 'terms', 'terms', 'term_content_description', 'We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(145, 'terms', 'terms', 'term_content_title', 'Removal of links from our website', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(146, 'terms', 'terms', 'term_content_description', 'If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(147, 'terms', 'terms', 'term_content_description', 'We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(148, 'terms', 'terms', 'term_content_title', 'Disclaimer', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(149, 'terms', 'terms', 'term_content_description', 'To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(150, 'terms', 'terms', 'term_content_description', '1. limit or exclude our or your liability for death or personal injury;\r\n            2. limit or exclude our or your liability for fraud or fraudulent misrepresentation;\r\n            3. limit any of our or your liabilities in any way that is not permitted under applicable law; or\r\n            4. exclude any of our or your liabilities that may not be excluded under applicable law.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(151, 'terms', 'terms', 'term_content_description', 'The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(152, 'terms', 'terms', 'term_content_description', 'As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(153, 'footer', 'footer', 'social-facebook', '#', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(154, 'footer', 'footer', 'social-twitter', '#', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(155, 'footer', 'footer', 'social-instagram', '#', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(156, 'footer', 'footer', 'social-linkedIn', '#', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(157, 'refund', 'refund', 'refund-title', 'Return and Refund Policy', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(158, 'refund', 'refund', 'refund-desc', 'Last updated: August 20, 2021', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(159, 'refund', 'refund', 'desc', 'Thank you for shopping at Rigrdz.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(160, 'refund', 'refund', 'desc', 'If, for any reason, You are not completely satisfied with a purchase We invite You to review our policy on refunds and returns.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(161, 'refund', 'refund', 'desc', 'The following terms are applicable for any products that You purchased with Us.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(162, 'refund', 'refund', 'desc', 'Interpretation and Definitions', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(163, 'refund', 'refund', 'desc', 'Interpretation', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(164, 'refund', 'refund', 'desc', 'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(165, 'refund', 'refund', 'desc', 'Definitions', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(166, 'refund', 'refund', 'desc', 'For the purposes of this Return and Refund Policy:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(167, 'refund', 'refund', 'desc', '1. Company referred to as either the Company We, Us or Our in this Agreement) refers to Digitalibi Technologies, Mumbai.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(168, 'refund', 'refund', 'desc', '2. Goods refer to the items offered for sale on the Service.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(169, 'refund', 'refund', 'desc', '3. Orders mean a request by You to purchase Goods from Us.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(170, 'refund', 'refund', 'desc', '4. Service refers to the Website.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(171, 'refund', 'refund', 'desc', '5. Website refers to Rigardz, accessible from https://rigardz.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(172, 'refund', 'refund', 'desc', '6. You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(173, 'refund', 'refund', 'desc', 'Your Order Cancellation Rights', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(174, 'refund', 'refund', 'desc', 'You are entitled to cancel Your Order within 7 days without giving any reason for doing so.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(175, 'refund', 'refund', 'desc', 'The deadline for cancelling an Order is 7 days from the date on which You received the Goods or on which a third party you have appointed, who is not the carrier, takes possession of the product delivered.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(176, 'refund', 'refund', 'desc', 'In order to exercise Your right of cancellation, You must inform Us of your decision by means of a clear statement. You can inform us of your decision by:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(177, 'refund', 'refund', 'desc', 'By email: support@rigardz.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(178, 'refund', 'refund', 'desc', 'We will reimburse You no later than 14 days from the day on which We receive the returned Goods. We will use the same means of payment as You used for the Order, and You will not incur any fees for such reimbursement.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(179, 'refund', 'refund', 'desc', 'Conditions for Returns', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(180, 'refund', 'refund', 'desc', 'In order for the Goods to be eligible for a return, please make sure that:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(181, 'refund', 'refund', 'desc', '1. The Goods were purchased in the last 7 days', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(182, 'refund', 'refund', 'desc', 'The following Goods cannot be returned:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(183, 'refund', 'refund', 'desc', '1. The supply of Goods made to Your specifications or clearly personalized.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(184, 'refund', 'refund', 'desc', '2. The supply of Goods which according to their nature are not suitable to be returned, deteriorate rapidly or where the date of expiry is over.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(185, 'refund', 'refund', 'desc', '3. The supply of Goods which are not suitable for return due to health protection or hygiene reasons and were unsealed after delivery.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(186, 'refund', 'refund', 'desc', '4. The supply of Goods which are, after delivery, according to their nature, inseparably mixed with other items.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(187, 'refund', 'refund', 'desc', 'We reserve the right to refuse returns of any merchandise that does not meet the above return conditions in our sole discretion.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(188, 'refund', 'refund', 'desc', 'Only regular priced Goods may be refunded. Unfortunately, Goods on sale cannot be refunded. This exclusion may not apply to You if it is not permitted by applicable law.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(189, 'refund', 'refund', 'desc', 'Returning Goods', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(190, 'refund', 'refund', 'desc', 'You are responsible for the cost and risk of returning the Goods to Us. You should send the Goods at the following address:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(191, 'refund', 'refund', 'desc', 'Mumbai,\r\n            Maharashtra, 400607\r\n            India', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(192, 'refund', 'refund', 'desc', 'We cannot be held responsible for Goods damaged or lost in return shipment. Therefore, We recommend an insured and trackable mail service. We are unable to issue a refund without actual receipt of the Goods or proof of received return delivery.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(193, 'refund', 'refund', 'desc', 'Contact Us', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(194, 'refund', 'refund', 'desc', 'If you have any questions about our Returns and Refunds Policy, please contact us:', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(195, 'refund', 'refund', 'desc', 'By email: support@rigardz.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(196, 'contact', 'contact', 'page_name', 'Contact', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(197, 'contact', 'contact', 'page_subtitle', 'Got any question? Let’s talk about it.', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(198, 'contact', 'contact', 'page_section_1', 'Office', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(199, 'contact', 'contact', 'page_section_1_content_1', '359 Hidden', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(200, 'contact', 'contact', 'page_section_1_content_2', 'Valley Road, NY', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(201, 'contact', 'contact', 'page_section_2', 'Contacts', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(202, 'contact', 'contact', 'page_section_2_content_1', 'hello@gmail.com', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(203, 'contact', 'contact', 'page_section_2_content_1', '+48 698 033 101', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(204, 'contact', 'contact', 'page_section_3', 'Socials', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(205, 'about', 'about', 'about_content_title', 'About us', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(206, 'about', 'about', 'about_content_description', 'Welcome to GoBiz!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(207, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(208, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(209, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(210, 'about', 'about', 'about_content_title', 'About the company', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(211, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(212, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(213, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(214, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(215, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(216, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(217, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(218, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(219, 'about', 'about', 'about_content_description', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Non, dolorum. Id labore nulla ullam eius, dolor maxime quas repudiandae officia doloribus debitis eos reprehenderit odit!', '2022-08-02 11:17:20', '2022-08-02 11:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shiv.d@absionmarcom.com', '$2y$10$Wx6/lJ8t9QLcD4FXpK5cKu1NLlcuQULYLa/7rw9WAFnThOkAqSLqC', '2022-08-14 01:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_description` longtext COLLATE utf8mb4_unicode_ci,
  `plan_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_vcards` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_services` int(11) NOT NULL,
  `no_of_galleries` int(11) NOT NULL,
  `no_of_features` int(11) NOT NULL,
  `no_of_payments` int(11) NOT NULL,
  `personalized_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide_branding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_setup` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_support` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommended` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_id`, `plan_name`, `plan_description`, `plan_price`, `validity`, `no_of_vcards`, `no_of_services`, `no_of_galleries`, `no_of_features`, `no_of_payments`, `personalized_link`, `hide_branding`, `free_setup`, `free_support`, `recommended`, `is_private`, `status`, `created_at`, `updated_at`) VALUES
(1, '60673288f0d35', 'Beginner', 'Suitable for students and freelancers working on part-time projects', '0', '31', '1', 1, 1, 3, 1, '0', '0', '0', '0', '0', '0', '1', '2022-08-02 11:17:20', '2022-08-16 16:02:40'),
(2, '606732aa4fb58', 'Intermediate', 'For Professionals to create right image for themselves', '240', '365', '3', 10, 10, 10, 10, '1', '1', '0', '0', '1', '0', '1', '2022-08-02 11:17:20', '2022-08-16 16:19:03'),
(3, '606732cb4ec9b', 'Professional', 'For active professional or micro entrepreneurs having customers across multiple geographies', '1200', '365', '999', 999, 999, 999, 999, '1', '1', '1', '1', '0', '0', '1', '2022-08-02 11:17:20', '2022-08-08 17:23:32'),
(4, '62fb409702a7d', 'Gold Plan', 'For special people having network of professionals around him', '400', '365', '10', 40, 10, 12, 10, '1', '1', '0', '0', '0', '1', '1', '2022-08-16 16:30:39', '2022-08-16 16:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` longtext COLLATE utf8mb4_unicode_ci,
  `enable_enquiry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `card_id`, `service_name`, `service_image`, `service_description`, `enable_enquiry`, `status`, `created_at`, `updated_at`) VALUES
(1, '62f88e6939925', 'Growth Consultant', 'images/62f53ad1e6010-62f8914ed1bac.png', 'Get guidance on growing your business, key insights on strategies and focus areas', 'Enabled', '1', '2022-08-14 15:39:04', '2022-08-14 15:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` longtext COLLATE utf8mb4_unicode_ci,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `seo_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_chat_bot_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int(11) NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `google_key`, `google_analytics_id`, `google_adsense_code`, `site_name`, `site_logo`, `favicon`, `seo_meta_description`, `seo_keywords`, `seo_image`, `tawk_chat_bot_key`, `name`, `address`, `driver`, `host`, `port`, `encryption`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, '254212fdd454', NULL, NULL, 'Rigardz', '/images/web/elements/62e93889627d8.png', '/images/web/elements/62e909afe8d49.png', 'Digital Business Card for better networking and profile sharing with people. Get more business from QR code enable profiles', 'QR Code Store, Digital Business Card, QR Code Contact, Instant Stores', '/backend/img/logo.png', '62f0be5e37898912e961ce25/1g9u6f90q', 'GoBiz', 'noreply@gobiz.com', 'smtp', 'smtp.mailtrap.io', 2525, 'tls', '', '', '1', '2022-08-02 11:17:20', '2022-08-08 17:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `store_products`
--

CREATE TABLE `store_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_subtitle` longtext COLLATE utf8mb4_unicode_ci,
  `regular_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_rigardz_upload`
--

CREATE TABLE `test_rigardz_upload` (
  `name` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email_verified_at` int(11) DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `auth_type` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `profile_image` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `plan_details` int(11) DEFAULT NULL,
  `plan_validity` int(11) DEFAULT NULL,
  `plan_activation_date` int(11) DEFAULT NULL,
  `billing_name` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `vat_number` int(11) DEFAULT NULL,
  `billing_address` int(11) DEFAULT NULL,
  `billing_city` int(11) DEFAULT NULL,
  `billing_state` int(11) DEFAULT NULL,
  `billing_zipcode` int(11) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `billing_phone` int(11) DEFAULT NULL,
  `billing_email` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `Column_27` int(11) DEFAULT NULL,
  `Column_28` int(11) DEFAULT NULL,
  `Column_29` int(11) DEFAULT NULL,
  `Column_2` int(11) DEFAULT NULL,
  `NULL` int(11) DEFAULT NULL,
  `Column_32` int(11) DEFAULT NULL,
  `NULL_1` int(11) DEFAULT NULL,
  `NULL_2` int(11) DEFAULT NULL,
  `NULL_3` int(11) DEFAULT NULL,
  `NULL_4` int(11) DEFAULT NULL,
  `NULL_5` int(11) DEFAULT NULL,
  `NULL_6` int(11) DEFAULT NULL,
  `NULL_7` int(11) DEFAULT NULL,
  `NULL_8` int(11) DEFAULT NULL,
  `NULL_9` int(11) DEFAULT NULL,
  `NULL_10` int(11) DEFAULT NULL,
  `NULL_11` int(11) DEFAULT NULL,
  `NULL_12` int(11) DEFAULT NULL,
  `NULL_13` int(11) DEFAULT NULL,
  `NULL_14` int(11) DEFAULT NULL,
  `NULL_15` int(11) DEFAULT NULL,
  `NULL_16` int(11) DEFAULT NULL,
  `NULL_17` int(11) DEFAULT NULL,
  `Column_1` int(11) DEFAULT NULL,
  `NULL_18` int(11) DEFAULT NULL,
  `CURRENT_TIMESTAMP` int(11) DEFAULT NULL,
  `CURRENT_TIMESTAMP_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_rigardz_upload`
--

INSERT INTO `test_rigardz_upload` (`name`, `email`, `role_id`, `email_verified_at`, `password`, `auth_type`, `profile_image`, `plan_id`, `term`, `plan_details`, `plan_validity`, `plan_activation_date`, `billing_name`, `type`, `vat_number`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_country`, `billing_phone`, `billing_email`, `status`, `remember_token`, `created_at`, `updated_at`, `Column_27`, `Column_28`, `Column_29`, `Column_2`, `NULL`, `Column_32`, `NULL_1`, `NULL_2`, `NULL_3`, `NULL_4`, `NULL_5`, `NULL_6`, `NULL_7`, `NULL_8`, `NULL_9`, `NULL_10`, `NULL_11`, `NULL_12`, `NULL_13`, `NULL_14`, `NULL_15`, `NULL_16`, `NULL_17`, `Column_1`, `NULL_18`, `CURRENT_TIMESTAMP`, `CURRENT_TIMESTAMP_1`) VALUES
('abhishek', 'asinha@xpcover.com', 2, NULL, 'Daispl@123', 'Email', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_id`, `theme_name`, `theme_description`, `theme_thumbnail`, `theme_price`, `status`, `created_at`, `updated_at`) VALUES
(1, '7ccc432a06caa', 'Modern vCard Light', 'vCard', 'modern-light.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(2, '7ccc432a06vta', 'Modern vCard Dark', 'vCard', 'modern-dark.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(3, '7ccc432a06cth', 'Classic vCard Light', 'vCard', 'classic-light.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(4, '7ccc432a06vyw', 'Classic vCard Dark', 'vCard', 'classic-dark.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(5, '7ccc432a06ctw', 'Metro vCard Light', 'vCard', 'metro-light.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(6, '7ccc432a06vhd', 'Metro vCard Dark', 'vCard', 'metro-dark.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(7, '7ccc432a06hty', 'Modern Store Light', 'WhatsApp Store', 'modern-store-light.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20'),
(8, '7ccc432a06hju', 'Modern Store Dark', 'WhatsApp Store', 'modern-store-dark.png', 'Free', '1', '2022-08-02 11:17:20', '2022-08-02 11:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `gobiz_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desciption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `gobiz_transaction_id`, `transaction_date`, `transaction_id`, `user_id`, `plan_id`, `desciption`, `payment_gateway_name`, `transaction_currency`, `transaction_amount`, `invoice_number`, `invoice_prefix`, `invoice_details`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, '62f53b550ba57', '2022-08-11 22:54:37', '62f53b550babd', '2', '60673288f0d35', 'Beginner Plan', 'FREE', 'INR', '0', NULL, NULL, '{\"from_billing_name\":\"Rigardz\",\"from_billing_address\":\"BKC\",\"from_billing_city\":\"Mumbai\",\"from_billing_state\":\"Maharashtra\",\"from_billing_zipcode\":\"400001\",\"from_billing_country\":\"India\",\"from_vat_number\":\"SPN125553322\",\"from_billing_phone\":\"+919392806717\",\"from_billing_email\":\"hi@rigardz.com\",\"to_billing_name\":\"Abhishek Sinha\",\"to_billing_address\":null,\"to_billing_city\":null,\"to_billing_state\":null,\"to_billing_zipcode\":null,\"to_billing_country\":null,\"to_billing_phone\":\"9769366953\",\"to_billing_email\":\"asinha@xpcover.com\",\"to_vat_number\":null,\"tax_name\":\"Goods and Service Tax\",\"tax_type\":\"exclusive\",\"tax_value\":\"18\",\"invoice_amount\":0,\"subtotal\":0,\"tax_amount\":0}', 'SUCCESS', '1', '2022-08-12 02:54:37', '2022-08-12 02:54:37'),
(2, '62f79bc32e92f', '2022-08-13 18:10:35', '62f79bc32e98d', '4', '60673288f0d35', 'Beginner Plan', 'FREE', 'INR', '0', NULL, NULL, '{\"from_billing_name\":\"Rigardz\",\"from_billing_address\":\"BKC\",\"from_billing_city\":\"Mumbai\",\"from_billing_state\":\"Maharashtra\",\"from_billing_zipcode\":\"400001\",\"from_billing_country\":\"India\",\"from_vat_number\":\"SPN125553322\",\"from_billing_phone\":\"+919392806717\",\"from_billing_email\":\"hi@rigardz.com\",\"to_billing_name\":null,\"to_billing_address\":null,\"to_billing_city\":null,\"to_billing_state\":null,\"to_billing_zipcode\":null,\"to_billing_country\":null,\"to_billing_phone\":null,\"to_billing_email\":null,\"to_vat_number\":null,\"tax_name\":\"Goods and Service Tax\",\"tax_type\":\"exclusive\",\"tax_value\":\"18\",\"invoice_amount\":0,\"subtotal\":0,\"tax_amount\":0}', 'SUCCESS', '1', '2022-08-13 22:10:35', '2022-08-13 22:10:35'),
(3, '62f7d4be0b7ea', '2022-08-13 22:13:42', '62f7d4be0b848', '6', '60673288f0d35', 'Beginner Plan', 'FREE', 'INR', '0', NULL, NULL, '{\"from_billing_name\":\"Rigardz\",\"from_billing_address\":\"BKC\",\"from_billing_city\":\"Mumbai\",\"from_billing_state\":\"Maharashtra\",\"from_billing_zipcode\":\"400001\",\"from_billing_country\":\"India\",\"from_vat_number\":\"SPN125553322\",\"from_billing_phone\":\"+919392806717\",\"from_billing_email\":\"hi@rigardz.com\",\"to_billing_name\":\"Yogesh Dubey\",\"to_billing_address\":\"Room no. 9, Y.T road, Rajendra Nagar, daisar east\",\"to_billing_city\":\"Mumbai\",\"to_billing_state\":\"Maharashtra\",\"to_billing_zipcode\":\"400068\",\"to_billing_country\":\"India\",\"to_billing_phone\":\"8928046774\",\"to_billing_email\":\"shiv.d@absionmarcom.com\",\"to_vat_number\":null,\"tax_name\":\"Goods and Service Tax\",\"tax_type\":\"exclusive\",\"tax_value\":\"18\",\"invoice_amount\":0,\"subtotal\":0,\"tax_amount\":0}', 'SUCCESS', '1', '2022-08-14 02:13:42', '2022-08-14 02:13:42'),
(4, '6310e03ae7695', '2022-09-01 22:09:22', '6310e03ae7702', '7', '60673288f0d35', 'Beginner Plan', 'FREE', 'INR', '0', NULL, NULL, '{\"from_billing_name\":\"Rigardz\",\"from_billing_address\":\"BKC\",\"from_billing_city\":\"Mumbai\",\"from_billing_state\":\"Maharashtra\",\"from_billing_zipcode\":\"400001\",\"from_billing_country\":\"India\",\"from_vat_number\":\"SPN125553322\",\"from_billing_phone\":\"+919392806717\",\"from_billing_email\":\"hi@rigardz.com\",\"to_billing_name\":\"Surendhar\",\"to_billing_address\":\"India\",\"to_billing_city\":\"India\",\"to_billing_state\":\"India\",\"to_billing_zipcode\":\"654987\",\"to_billing_country\":\"India\",\"to_billing_phone\":\"9876543210\",\"to_billing_email\":\"sdsuren515@gmail.com\",\"to_vat_number\":null,\"tax_name\":\"Goods and Service Tax\",\"tax_type\":\"exclusive\",\"tax_value\":\"18\",\"invoice_amount\":0,\"subtotal\":0,\"tax_amount\":0}', 'SUCCESS', '1', '2022-09-02 02:09:22', '2022-09-02 02:09:22'),
(5, '6314a60f923ba', '2022-09-04 18:50:15', '6314a60f9242b', '8', '60673288f0d35', 'Beginner Plan', 'FREE', 'INR', '0', NULL, NULL, '{\"from_billing_name\":\"Rigardz\",\"from_billing_address\":\"BKC\",\"from_billing_city\":\"Mumbai\",\"from_billing_state\":\"Maharashtra\",\"from_billing_zipcode\":\"400001\",\"from_billing_country\":\"India\",\"from_vat_number\":\"SPN125553322\",\"from_billing_phone\":\"+919392806717\",\"from_billing_email\":\"hi@rigardz.com\",\"to_billing_name\":null,\"to_billing_address\":null,\"to_billing_city\":null,\"to_billing_state\":null,\"to_billing_zipcode\":null,\"to_billing_country\":null,\"to_billing_phone\":null,\"to_billing_email\":null,\"to_vat_number\":null,\"tax_name\":\"Goods and Service Tax\",\"tax_type\":\"exclusive\",\"tax_value\":\"18\",\"invoice_amount\":0,\"subtotal\":0,\"tax_amount\":0}', 'SUCCESS', '1', '2022-09-04 22:50:15', '2022-09-04 22:50:15'),
(6, '6314abb3603b6', '2022-09-04 19:14:19', '', '8', '606732cb4ec9b', 'Professional Plan', 'Offline', 'INR', '1416', '1', 'RGD-', '{\"from_billing_name\":\"Rigardz\",\"from_billing_address\":\"BKC\",\"from_billing_city\":\"Mumbai\",\"from_billing_state\":\"Maharashtra\",\"from_billing_zipcode\":\"400001\",\"from_billing_country\":\"India\",\"from_vat_number\":\"SPN125553322\",\"from_billing_phone\":\"+919392806717\",\"from_billing_email\":\"hi@rigardz.com\",\"to_billing_name\":null,\"to_billing_address\":null,\"to_billing_city\":null,\"to_billing_state\":null,\"to_billing_zipcode\":null,\"to_billing_country\":null,\"to_billing_phone\":null,\"to_billing_email\":null,\"to_vat_number\":null,\"tax_name\":\"Goods and Service Tax\",\"tax_type\":\"exclusive\",\"tax_value\":\"18\",\"invoice_amount\":1416,\"subtotal\":\"1200\",\"tax_amount\":216}', 'SUCCESS', '1', '2022-09-04 23:14:19', '2022-09-04 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` longtext COLLATE utf8mb4_unicode_ci,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_details` longtext COLLATE utf8mb4_unicode_ci,
  `plan_validity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_activation_date` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` longtext COLLATE utf8mb4_unicode_ci,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `auth_type`, `profile_image`, `plan_id`, `term`, `plan_details`, `plan_validity`, `plan_activation_date`, `billing_name`, `type`, `vat_number`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_country`, `billing_phone`, `billing_email`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '609c03880ee47', 'Rigardz', 'hi@rigardz.com', 1, NULL, '$2y$10$E7/TzG6J9PnxWuR1TrIrU.UUvYwxtKIWxwZhbmBHGpHZzrKead5WO', 'Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-08-02 11:17:20', '2022-08-12 02:51:25'),
(2, '62f53ad1e6010', 'Abhishek Sinha', 'asinha@xpcover.com', 2, NULL, '$2y$10$PnzWeVi6tCsJ0ckxM/uYzuDUSZNBg.HPNKwqo7Z6V/Jsk9cZuIZYy', 'Email', NULL, '60673288f0d35', '9999', '{\"id\":1,\"plan_id\":\"60673288f0d35\",\"plan_name\":\"Beginner\",\"plan_description\":\"Nullam diam arcu, sodales quis convallis sit amet, sagittis varius ligula.\",\"plan_price\":\"0\",\"validity\":\"31\",\"no_of_vcards\":\"1\",\"no_of_services\":5,\"no_of_galleries\":5,\"no_of_features\":5,\"no_of_payments\":5,\"personalized_link\":\"0\",\"hide_branding\":\"0\",\"free_setup\":\"0\",\"free_support\":\"0\",\"recommended\":null,\"is_private\":\"0\",\"status\":\"1\",\"created_at\":\"2022-08-02T01:47:20.000000Z\",\"updated_at\":\"2022-08-02T01:47:20.000000Z\"}', '2022-09-11 22:54:37', '2022-08-12 02:54:37', 'Abhishek Sinha', 'personal', NULL, NULL, NULL, NULL, NULL, NULL, '9769366953', 'asinha@xpcover.com', 1, NULL, '2022-08-12 02:52:26', '2022-08-12 02:54:37'),
(3, '62f54ad1e6012', 'Test Sinha', 'test1@test.com', 2, NULL, '$2y$10$tvTc62ZY3AhKd6QObL12mOx/en7T7LXfYeVkXFJg9SwUYd3TqG6Uu', 'Email', NULL, ' ', ' ', '', ' ', NULL, ' ', 'personal', ' ', ' ', NULL, NULL, NULL, NULL, ' ', ' ', 1, NULL, '2008-12-22 12:52:00', '2008-12-22 12:54:00'),
(4, '62f793ab17d46', 'test sen', 'abhishek@digitalibi.net', 2, NULL, '$2y$10$C0lzjBCHAhCervKyfw38RO9I67rNtWm/wzYjVYsW7I49SVi4T49Fa', 'Email', NULL, '60673288f0d35', '9999', '{\"id\":1,\"plan_id\":\"60673288f0d35\",\"plan_name\":\"Beginner\",\"plan_description\":\"Nullam diam arcu, sodales quis convallis sit amet, sagittis varius ligula.\",\"plan_price\":\"0\",\"validity\":\"31\",\"no_of_vcards\":\"1\",\"no_of_services\":5,\"no_of_galleries\":5,\"no_of_features\":5,\"no_of_payments\":5,\"personalized_link\":\"0\",\"hide_branding\":\"0\",\"free_setup\":\"0\",\"free_support\":\"0\",\"recommended\":null,\"is_private\":\"0\",\"status\":\"1\",\"created_at\":\"2022-08-02T01:47:20.000000Z\",\"updated_at\":\"2022-08-02T01:47:20.000000Z\"}', '2022-09-13 18:10:35', '2022-08-13 22:10:35', NULL, 'personal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-08-13 21:36:03', '2022-08-13 22:10:35'),
(5, '62f7cffb9be75', 'Yogesh Dubey', 'shiv.d@absionmarcom.com', 2, NULL, '$2y$10$u0.eskijVGDdWUHu9MJ/X.H.TDVTmYC/wLjkz4EaSP7U3o9CU6OQi', 'Email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-08-14 01:53:23', '2022-08-14 01:53:23'),
(6, '62f7d1d67f080', 'Yogesh Dubey', 'yogesh_dubey7@yahoo.com', 2, NULL, '$2y$10$OdVOxuVnrHYDA4b.rYM6w.lEY0KNt.w70iMiiaXxAbcnW688MTXty', 'Email', NULL, '60673288f0d35', '9999', '{\"id\":1,\"plan_id\":\"60673288f0d35\",\"plan_name\":\"Beginner\",\"plan_description\":\"Nullam diam arcu, sodales quis convallis sit amet, sagittis varius ligula.\",\"plan_price\":\"0\",\"validity\":\"31\",\"no_of_vcards\":\"1\",\"no_of_services\":5,\"no_of_galleries\":5,\"no_of_features\":5,\"no_of_payments\":5,\"personalized_link\":\"0\",\"hide_branding\":\"0\",\"free_setup\":\"0\",\"free_support\":\"0\",\"recommended\":null,\"is_private\":\"0\",\"status\":\"1\",\"created_at\":\"2022-08-02T01:47:20.000000Z\",\"updated_at\":\"2022-08-02T01:47:20.000000Z\"}', '2022-09-13 22:13:42', '2022-08-14 02:13:42', 'Yogesh Dubey', 'personal', NULL, 'Room no. 9, Y.T road, Rajendra Nagar, daisar east', 'Mumbai', 'Maharashtra', '400068', 'India', '8928046774', 'shiv.d@absionmarcom.com', 1, NULL, '2022-08-14 02:01:18', '2022-08-14 02:13:42'),
(7, '6310dff97f8d1', 'Surendhar Nagarajan', 'sdsuren515@gmail.com', 2, NULL, '$2y$10$3oPt6nN8gQTF3e5gaTaW2umyH0sdFlMVJvAWl3aog7YN9DOryS5M.', 'Email', NULL, '60673288f0d35', '9999', '{\"id\":1,\"plan_id\":\"60673288f0d35\",\"plan_name\":\"Beginner\",\"plan_description\":\"Suitable for students and freelancers working on part-time projects\",\"plan_price\":\"0\",\"validity\":\"31\",\"no_of_vcards\":\"1\",\"no_of_services\":1,\"no_of_galleries\":1,\"no_of_features\":3,\"no_of_payments\":1,\"personalized_link\":\"0\",\"hide_branding\":\"0\",\"free_setup\":\"0\",\"free_support\":\"0\",\"recommended\":\"0\",\"is_private\":\"0\",\"status\":\"1\",\"created_at\":\"2022-08-02T01:47:20.000000Z\",\"updated_at\":\"2022-08-16T06:32:40.000000Z\"}', '2022-10-02 22:09:22', '2022-09-02 02:09:22', 'Surendhar', 'personal', NULL, 'India', 'India', 'India', '654987', 'India', '9876543210', 'sdsuren515@gmail.com', 1, NULL, '2022-09-02 02:08:17', '2022-09-02 02:09:22'),
(8, '63148b80cc121', 'krishna', 'krishnavaghela10@gmail.com', 2, NULL, '$2y$10$BRJWUGYSu1S1HU2AyY66huGGLWvwv96BBo/DlcrW7CDK2B.cGEfem', 'Email', 'profile_images/IMG-6315cc711ab2e-1662372977.png', '606732cb4ec9b', '365', '{\"id\":3,\"plan_id\":\"606732cb4ec9b\",\"plan_name\":\"Professional\",\"plan_description\":\"For active professional or micro entrepreneurs having customers across multiple geographies\",\"plan_price\":\"1200\",\"validity\":\"365\",\"no_of_vcards\":\"999\",\"no_of_services\":999,\"no_of_galleries\":999,\"no_of_features\":999,\"no_of_payments\":999,\"personalized_link\":\"1\",\"hide_branding\":\"1\",\"free_setup\":\"1\",\"free_support\":\"1\",\"recommended\":\"0\",\"is_private\":\"0\",\"status\":\"1\",\"created_at\":\"2022-08-02T01:47:20.000000Z\",\"updated_at\":\"2022-08-08T07:53:32.000000Z\"}', '2023-09-04 19:14:19', '2022-09-04 23:14:19', NULL, 'personal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-09-04 20:56:56', '2022-09-05 19:46:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_cards`
--
ALTER TABLE `business_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_cards_card_url_unique` (`card_url`);

--
-- Indexes for table `business_fields`
--
ALTER TABLE `business_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_hours`
--
ALTER TABLE `business_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_products`
--
ALTER TABLE `store_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_cards`
--
ALTER TABLE `business_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `business_fields`
--
ALTER TABLE `business_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `business_hours`
--
ALTER TABLE `business_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_products`
--
ALTER TABLE `store_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
