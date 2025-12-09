-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2025 at 09:24 AM
-- Server version: 8.0.42-cll-lve
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programm_quotes_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_ads`
--

CREATE TABLE `banner_ads` (
  `id` int NOT NULL,
  `ad_unit_id` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banner_ads`
--

INSERT INTO `banner_ads` (`id`, `ad_unit_id`, `is_active`, `created_at`) VALUES
(1, 'ca-app-pub-3940256099942544/9214589741', 1, '2025-12-08 16:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `created_at`) VALUES
(34, 'Love', '1764865602_9583.jpg', '2025-12-04 16:26:42'),
(35, 'Friendship', '1764865678_1946.jpg', '2025-12-04 16:27:58'),
(36, 'Motivate', '1764865722_1886.jpg', '2025-12-04 16:28:42'),
(37, 'Funny', '1764865846_8782.jpg', '2025-12-04 16:30:46'),
(38, 'Travel', '1764865878_5961.jpg', '2025-12-04 16:31:18'),
(39, 'Nature', '1764865913_6133.jpg', '2025-12-04 16:31:53'),
(40, 'Music', '1764865946_4282.jpg', '2025-12-04 16:32:26'),
(41, 'Sad', '1764865974_8015.jpg', '2025-12-04 16:32:54'),
(42, 'Attitude', '1764866018_2696.jpg', '2025-12-04 16:33:38'),
(43, 'Quran', '1764866088_3658.jpg', '2025-12-04 16:34:48'),
(44, 'Islamic', '1764866118_5516.jpg', '2025-12-04 16:35:18'),
(45, 'Social', '1764866167_3877.jpg', '2025-12-04 16:36:07'),
(46, 'Animal', '1764948003_2790.jpg', '2025-12-05 15:20:03'),
(47, 'Cat', '1765000148_5531.jpg', '2025-12-06 05:49:08'),
(48, 'Islam', '1765000162_7264.jpg', '2025-12-06 05:49:22'),
(49, 'Alone', '1765000190_6615.jpg', '2025-12-06 05:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `monishider`
--

CREATE TABLE `monishider` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monishider`
--

INSERT INTO `monishider` (`id`, `name`, `image`, `created_at`) VALUES
(31, 'Kazi Nazrul', 'uploads/monishi/1764999374_1000000244.jpg', '2025-12-06 05:36:14'),
(32, 'Rabindranath', 'uploads/monishi/1764999406_1000000245.jpg', '2025-12-06 05:36:46'),
(33, 'Jasimuddin', 'uploads/monishi/1764999441_1000000246.jpg', '2025-12-06 05:37:21'),
(34, 'Selina', 'uploads/monishi/1764999481_1000000247.jpg', '2025-12-06 05:38:01'),
(35, 'Humayun', 'uploads/monishi/1764999506_1000000248.jpg', '2025-12-06 05:38:26'),
(36, 'Mahmud Hossain', 'uploads/monishi/1764999541_1000000249.jpg', '2025-12-06 05:39:01'),
(37, 'Nurul Haq', 'uploads/monishi/1764999576_1000000250.jpg', '2025-12-06 05:39:36'),
(38, 'Zafar Iqbal', 'uploads/monishi/1764999618_1000000251.jpg', '2025-12-06 05:40:18'),
(39, 'Yunus', 'uploads/monishi/1764999667_1000000252.jpg', '2025-12-06 05:41:07'),
(40, 'Elias', 'uploads/monishi/1764999699_1000000253.jpg', '2025-12-06 05:41:39'),
(41, 'Anisuzzaman', 'uploads/monishi/1764999814_1000000254.jpg', '2025-12-06 05:43:34'),
(42, 'Humayun', 'uploads/monishi/1765118737_1000000125.jpg', '2025-12-07 14:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `monishider_quotes`
--

CREATE TABLE `monishider_quotes` (
  `id` int NOT NULL,
  `monishi_id` int NOT NULL,
  `monishi_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quote` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monishider_quotes`
--

INSERT INTO `monishider_quotes` (`id`, `monishi_id`, `monishi_name`, `quote`, `created_at`) VALUES
(22, 31, 'Kazi Nazrul', 'Rise like the sun, break every chain,\nTurn your sorrow into hope again.\nStand with courage, speak the truth,\nLet your heart remain forever youth.', '2025-12-06 05:45:03'),
(23, 31, 'Kazi Nazrul', 'Dream beyond the sky so wide,\nLet no fear ever reside.\nFight for justice, love, and peace,\nAnd let your inner strength never cease.', '2025-12-06 05:45:14'),
(24, 31, 'Kazi Nazrul', 'Freedom starts within your soul,\nLet your passion be the goal.\nMarch against the dark, embrace the light,\nKeep your spirit strong and bright.', '2025-12-06 05:45:25'),
(25, 31, 'Kazi Nazrul', 'Hope is the fire that never dies,\nEven when the world around you cries.\nCarry the torch, brave and free,\nBe the change you wish to see.', '2025-12-06 05:45:41'),
(26, 31, 'Kazi Nazrul', 'Love and kindness conquer all,\nEven when the mighty fall.\nRaise your voice, let truth be heard,\nLet your actions match every word.', '2025-12-06 05:45:55'),
(27, 31, 'Kazi Nazrul', 'Hope is the fire that never dies,\nEven when the world around you cries.\nCarry the torch, brave and free,\nBe the change you wish to see.', '2025-12-06 05:46:05'),
(28, 31, 'Kazi Nazrul', 'No chains can bind a fearless mind,\nSeek the truth, leave fear behind.\nSing the song of love and peace,\nLet your inspiration never cease.', '2025-12-06 05:46:15'),
(29, 31, 'Kazi Nazrul', 'Every heart can spark a flame,\nEvery soul can change the game.\nFight for justice, fight for love,\nLet your courage rise above.', '2025-12-06 05:46:26'),
(30, 31, 'Kazi Nazrul', 'Believe in dreams, in truth, in you,\nLet no shadow dim your view.\nStep with courage, walk with pride,\nWith hope and love as your guide.', '2025-12-06 05:46:36'),
(31, 32, 'Rabindranath', 'Believe in dreams, in truth, in you,\nLet no shadow dim your view.\nStep with courage, walk with pride,\nWith hope and love as your guide.', '2025-12-06 05:46:52'),
(32, 31, 'Kazi Nazrul', 'Freedom starts within your soul,\nLet your passion be the goal.\nMarch against the dark, embrace the light,\nKeep your spirit strong and bright.', '2025-12-06 05:46:59'),
(33, 42, 'Humayun', 'While coming to Earth, each person brings a lantern of aladdin ... but very few people can awaken sleeping monsters from that lamps.', '2025-12-07 14:46:45'),
(34, 42, 'Humayun', 'There are many types of torture in the world. The torture of love is the most terrible torture. There is nothing to say against this tyranny, just have to endure', '2025-12-07 14:46:57'),
(35, 42, 'Humayun', 'Almost everyone on the earth falls in love with the opposite nature', '2025-12-07 14:47:14'),
(36, 42, 'Humayun', 'Suddenly the emotions of young girls suddenly leave. If the emotion is not given to the wind, the emotions are aerial matter, it increases with the wind. Do not grow anything else', '2025-12-07 14:47:27'),
(37, 42, 'Humayun', 'Everyone will hurt you, but you have to find someone who can bear the suffering given to them', '2025-12-07 14:47:39'),
(38, 42, 'Humayun', 'Most people are beautiful, or beautiful, from imagination. Attraction decreases when approaching. People are the same. The less I know about someone, the better people are.', '2025-12-07 14:47:51'),
(39, 42, 'Humayun', 'While coming to Earth, each person brings a lantern of aladdin ... but very few people can awaken sleeping monsters from that lamps.', '2025-12-07 14:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quote_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `category_id`, `category_name`, `quote_text`, `created_at`) VALUES
(26, 34, 'Love', 'I found love in you,\npeace in your arms,\nand forever in your eyes.', '2025-12-04 16:37:18'),
(27, 34, 'Love', 'Every moment with you feels new,\nevery memory feels warm,\nevery heartbeat feels yours.', '2025-12-04 16:37:28'),
(28, 34, 'Love', 'You came softly,\nstayed gently,\nand became everything.', '2025-12-04 16:37:40'),
(29, 34, 'Love', 'Your love is a feeling,\na place,\nand a forever I never want to lose.', '2025-12-04 16:37:51'),
(30, 34, 'Love', 'Two hearts,\none journey,\nendless love.', '2025-12-04 16:38:02'),
(31, 34, 'Love', 'Loving you is easy,\nmissing you is hard,\nbut having you is everything.', '2025-12-04 16:38:13'),
(32, 34, 'Love', 'Your smile speaks,\nmy heart listens,\nand love happens.', '2025-12-04 16:38:24'),
(33, 34, 'Love', 'In this busy world,\nyou are my pause,\nmy peace.', '2025-12-04 16:38:33'),
(34, 34, 'Love', 'Hold my hand today,\nhold my heart forever,\nand stay in my story always.', '2025-12-04 16:38:41'),
(35, 34, 'Love', 'Two hearts,\none journey,\nendless love.', '2025-12-04 16:38:48'),
(36, 35, 'Friendship', 'Friends by chance,\nfamily by choice,\nforever by heart.', '2025-12-05 12:06:24'),
(37, 35, 'Friendship', 'Different paths,\nsame vibes,\none unbreakable bond.', '2025-12-05 12:06:35'),
(38, 35, 'Friendship', 'Good times shared,\nbad times survived,\nfriendship strengthened.', '2025-12-05 12:06:48'),
(39, 35, 'Friendship', 'Laughter louder,\nmemories sweeter,\nbecause youâ€™re here.', '2025-12-05 12:06:59'),
(40, 35, 'Friendship', 'Your presence comforts,\nyour words cheer,\nyour friendship heals.', '2025-12-05 12:10:12'),
(41, 35, 'Friendship', 'Crazy moments,\nendless talks,\nfriendship that never fades.', '2025-12-05 12:10:18'),
(42, 35, 'Friendship', 'We grow,\nwe change,\nbut we stay friends.', '2025-12-05 12:10:56'),
(43, 35, 'Friendship', 'We grow,\nwe change,\nbut we stay friends.', '2025-12-05 12:10:56'),
(44, 35, 'Friendship', 'Real friends listen,\nuplift,\nand stay.', '2025-12-05 12:11:37'),
(45, 45, 'Social', 'We post smiles,\nhide struggles,\nand call it social life.', '2025-12-05 12:16:17'),
(46, 45, 'Social', 'Before you judge,\ntry to understand,\neveryone fights silent battles.', '2025-12-05 12:16:31'),
(47, 45, 'Social', 'Be kind,\nbe aware,\nbe human.', '2025-12-05 12:16:41'),
(48, 45, 'Social', 'Small actions matter,\nsmall voices rise,\nsmall choices change.', '2025-12-05 12:16:52'),
(49, 45, 'Social', 'Raise your words,\nnot your hate,\nthe world needs calm.', '2025-12-05 12:17:01'),
(50, 45, 'Social', 'Respect differences,\nembrace diversity,\nspread humanity.', '2025-12-05 12:17:10'),
(51, 45, 'Social', 'A like fades,\na share moves on,\nbut actions stay.', '2025-12-05 12:17:22'),
(52, 45, 'Social', 'A like fades,\na share moves on,\nbut actions stay.', '2025-12-05 12:17:22'),
(53, 45, 'Social', 'Heal the world,\nhelp the weak,\nbe the change.', '2025-12-05 12:17:32'),
(54, 45, 'Social', 'Less judgment,\nmore empathy,\nthatâ€™s real progress.', '2025-12-05 12:17:41'),
(55, 45, 'Social', 'Laughter louder,\nmemories sweeter,\nbecause youâ€™re here.', '2025-12-05 12:17:55'),
(56, 45, 'Social', 'Laughter louder,\nmemories sweeter,\nbecause youâ€™re here.', '2025-12-05 12:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `image`, `created_at`) VALUES
(37, '6931b94e8199d.jpg', '2025-12-04 16:39:42'),
(38, '6931b9602ab85.jpg', '2025-12-04 16:40:00'),
(39, '6931b9763701b.jpg', '2025-12-04 16:40:22'),
(40, '6931b99795f68.jpg', '2025-12-04 16:40:55'),
(41, '6931b9b59b222.jpg', '2025-12-04 16:41:25'),
(42, '6931b9cc42323.jpg', '2025-12-04 16:41:48'),
(43, '6931b9e170f2d.jpg', '2025-12-04 16:42:09'),
(44, '6931ba231697b.jpg', '2025-12-04 16:43:15'),
(45, '6931ba262c611.jpg', '2025-12-04 16:43:18'),
(46, '6931ba3c3f9fc.jpg', '2025-12-04 16:43:40'),
(47, '6933c360b7187.jpg', '2025-12-06 05:47:12'),
(48, '6933c3728e868.jpg', '2025-12-06 05:47:30'),
(49, '6933c37d8a353.jpg', '2025-12-06 05:47:41'),
(50, '6933c3842736f.jpg', '2025-12-06 05:47:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_ads`
--
ALTER TABLE `banner_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monishider`
--
ALTER TABLE `monishider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monishider_quotes`
--
ALTER TABLE `monishider_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monishi_id` (`monishi_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_ads`
--
ALTER TABLE `banner_ads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `monishider`
--
ALTER TABLE `monishider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `monishider_quotes`
--
ALTER TABLE `monishider_quotes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `monishider_quotes`
--
ALTER TABLE `monishider_quotes`
  ADD CONSTRAINT `monishider_quotes_ibfk_1` FOREIGN KEY (`monishi_id`) REFERENCES `monishider` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
