-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2020 at 11:48 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ardb`
--
CREATE DATABASE IF NOT EXISTS `ardb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ardb`;

-- --------------------------------------------------------

--
-- Table structure for table `tdmodels`
--

CREATE TABLE `tdmodels` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(16) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `contact_number`, `created_at`) VALUES
(1, 'administrator', 'admin', 'admin123', 'admin@example.com', '0126313572', '0000-00-00 00:00:00'),
(2, 'test', 'test', 'test123', 'test@example.com', '0123-4566788', '0000-00-00 00:00:00'),
(4, 'testing', 'test234', '$2a$10$AQwpeuWXJaGjP1OX97ZIhOBLa9nXqZjZkCXW4Cy6aF9G0UZ4jSCM.', 'test@example.com', '012-6313572', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tdmodels`
--
ALTER TABLE `tdmodels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tdmodels`
--
ALTER TABLE `tdmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ardb\",\"table\":\"tdmodels\"},{\"db\":\"ardb\",\"table\":\"users\"},{\"db\":\"armiddleware\",\"table\":\"users\"},{\"db\":\"zerowaste\",\"table\":\"bins\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-27 09:45:59', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `zerowaste`
--
CREATE DATABASE IF NOT EXISTS `zerowaste` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zerowaste`;

-- --------------------------------------------------------

--
-- Table structure for table `audittrails`
--

CREATE TABLE `audittrails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audittrails`
--

INSERT INTO `audittrails` (`id`, `user_id`, `activity`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tambah Kumpulan Pengguna', '2019-12-03 07:42:36', '2019-12-03 07:42:36'),
(2, 1, 'Tambah Maklumat Institut', '2019-12-04 05:21:57', '2019-12-04 05:21:57'),
(3, 1, 'Tambah Maklumat Institut', '2019-12-04 05:44:17', '2019-12-04 05:44:17'),
(4, 1, 'Tambah Maklumat Institut', '2019-12-04 05:44:43', '2019-12-04 05:44:43'),
(5, 1, 'Hapus Maklumat Institut', '2019-12-04 05:44:54', '2019-12-04 05:44:54'),
(6, 1, 'Tambah Maklumat Institut', '2019-12-04 05:45:00', '2019-12-04 05:45:00'),
(7, 1, 'Hapus Maklumat Institut', '2019-12-04 05:45:04', '2019-12-04 05:45:04'),
(8, 1, 'Hapus Maklumat Institut', '2019-12-04 05:45:08', '2019-12-04 05:45:08'),
(9, 1, 'Tambah Maklumat Institut', '2019-12-04 05:50:41', '2019-12-04 05:50:41'),
(10, 1, 'Tambah Maklumat Institut', '2019-12-04 05:50:51', '2019-12-04 05:50:51'),
(11, 1, 'Hapus Maklumat Institut', '2019-12-04 05:50:54', '2019-12-04 05:50:54'),
(12, 1, 'Tambah Maklumat Institut', '2019-12-04 05:53:41', '2019-12-04 05:53:41'),
(13, 1, 'Hapus Maklumat Institut', '2019-12-04 05:53:48', '2019-12-04 05:53:48'),
(14, 1, 'Tambah Maklumat Institut', '2019-12-04 05:55:38', '2019-12-04 05:55:38'),
(15, 1, 'Hapus Maklumat Institut', '2019-12-04 05:55:45', '2019-12-04 05:55:45'),
(16, 1, 'Tambah Maklumat Institut', '2019-12-04 07:51:17', '2019-12-04 07:51:17'),
(17, 1, 'Hapus Maklumat Institut', '2019-12-04 07:51:41', '2019-12-04 07:51:41'),
(18, 1, 'Kemaskini Maklumat Institut', '2019-12-04 07:52:43', '2019-12-04 07:52:43'),
(19, 1, 'Kemaskini Maklumat Institut', '2019-12-04 07:52:50', '2019-12-04 07:52:50'),
(20, 1, 'Tambah Maklumat Fakulti', '2019-12-04 08:24:20', '2019-12-04 08:24:20'),
(21, 1, 'Tambah Maklumat Institut', '2019-12-05 09:07:05', '2019-12-05 09:07:05'),
(22, 1, 'Hapus Maklumat Institut', '2019-12-05 09:07:12', '2019-12-05 09:07:12'),
(23, 1, 'Tambah Maklumat Zon', '2019-12-13 03:19:31', '2019-12-13 03:19:31'),
(24, 1, 'Tambah Maklumat Zon', '2019-12-13 03:19:46', '2019-12-13 03:19:46'),
(25, 1, 'Kemaskini Maklumat Zon', '2019-12-13 03:23:20', '2019-12-13 03:23:20'),
(26, 1, 'Kemaskini Maklumat Zon', '2019-12-13 03:23:31', '2019-12-13 03:23:31'),
(27, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-18 08:42:14', '2019-12-18 08:42:14'),
(28, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-18 08:42:39', '2019-12-18 08:42:39'),
(29, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-18 08:44:07', '2019-12-18 08:44:07'),
(34, 1, 'Tambah Set Data', '2019-12-18 09:14:28', '2019-12-18 09:14:28'),
(35, 1, 'Tambah Set Data', '2019-12-18 09:15:07', '2019-12-18 09:15:07'),
(36, 1, 'Tambah Set Data', '2019-12-18 09:18:14', '2019-12-18 09:18:14'),
(37, 1, 'Tambah Set Data', '2019-12-19 05:02:38', '2019-12-19 05:02:38'),
(38, 1, 'Kemaskini Kumpulan Pengguna', '2019-12-19 05:12:31', '2019-12-19 05:12:31'),
(39, 1, 'Kemaskini Kumpulan Pengguna', '2019-12-19 05:12:47', '2019-12-19 05:12:47'),
(40, 1, 'Kemaskini Kumpulan Pengguna', '2019-12-19 05:12:59', '2019-12-19 05:12:59'),
(41, 1, 'Kemaskini Kumpulan Pengguna', '2019-12-19 05:13:11', '2019-12-19 05:13:11'),
(42, 1, 'Kemaskini Kumpulan Pengguna', '2019-12-19 05:13:23', '2019-12-19 05:13:23'),
(43, 1, 'Tambah Set Data', '2019-12-19 05:23:11', '2019-12-19 05:23:11'),
(44, 1, 'Tambah Set Data', '2019-12-19 05:23:54', '2019-12-19 05:23:54'),
(45, 1, 'Tambah Set Data', '2019-12-19 05:24:05', '2019-12-19 05:24:05'),
(46, 1, 'Hapus Set Data', '2019-12-19 05:26:10', '2019-12-19 05:26:10'),
(47, 1, 'Tambah Set Data', '2019-12-19 05:27:23', '2019-12-19 05:27:23'),
(48, 1, 'Tambah Set Data', '2019-12-19 05:29:47', '2019-12-19 05:29:47'),
(49, 1, 'Tambah Set Data', '2019-12-19 05:30:26', '2019-12-19 05:30:26'),
(50, 1, 'Tambah Set Data', '2019-12-19 05:37:01', '2019-12-19 05:37:01'),
(51, 1, 'Tambah Set Data', '2019-12-19 05:37:25', '2019-12-19 05:37:25'),
(52, 1, 'Hapus Set Data', '2019-12-19 05:37:31', '2019-12-19 05:37:31'),
(53, 1, 'Tambah Set Data', '2019-12-19 05:38:20', '2019-12-19 05:38:20'),
(54, 1, 'Tambah Set Data', '2019-12-19 05:38:51', '2019-12-19 05:38:51'),
(55, 1, 'Hapus Set Data', '2019-12-19 05:39:09', '2019-12-19 05:39:09'),
(56, 1, 'Tambah Set Data', '2019-12-19 05:39:30', '2019-12-19 05:39:30'),
(57, 1, 'Tambah Set Data', '2019-12-19 05:40:02', '2019-12-19 05:40:02'),
(58, 1, 'Tambah Set Data', '2019-12-19 05:40:48', '2019-12-19 05:40:48'),
(59, 1, 'Tambah Set Data', '2019-12-19 05:41:21', '2019-12-19 05:41:21'),
(60, 1, 'Tambah Set Data', '2019-12-19 05:42:29', '2019-12-19 05:42:29'),
(61, 1, 'Tambah Set Data', '2019-12-19 05:45:00', '2019-12-19 05:45:00'),
(62, 1, 'Tambah Set Data', '2019-12-19 05:46:17', '2019-12-19 05:46:17'),
(63, 1, 'Tambah Set Data', '2019-12-19 05:49:20', '2019-12-19 05:49:20'),
(64, 1, 'Hapus Set Data', '2019-12-19 05:49:59', '2019-12-19 05:49:59'),
(65, 1, 'Tambah Set Data', '2019-12-19 05:50:52', '2019-12-19 05:50:52'),
(66, 1, 'Hapus Set Data', '2019-12-19 05:51:15', '2019-12-19 05:51:15'),
(67, 1, 'Kemaskini Set Data', '2019-12-19 05:51:58', '2019-12-19 05:51:58'),
(68, 1, 'Kemaskini Set Data', '2019-12-19 05:52:12', '2019-12-19 05:52:12'),
(69, 1, 'Kemaskini Set Data', '2019-12-19 05:52:20', '2019-12-19 05:52:20'),
(70, 1, 'Kemaskini Set Data', '2019-12-19 05:52:40', '2019-12-19 05:52:40'),
(71, 1, 'Tambah Set Data', '2019-12-19 05:54:00', '2019-12-19 05:54:00'),
(72, 1, 'Tambah Set Data', '2019-12-19 05:56:01', '2019-12-19 05:56:01'),
(73, 1, 'Tambah Set Data', '2019-12-19 05:56:57', '2019-12-19 05:56:57'),
(74, 1, 'Tambah Set Data', '2019-12-19 05:57:41', '2019-12-19 05:57:41'),
(75, 1, 'Tambah Set Data', '2019-12-19 05:58:37', '2019-12-19 05:58:37'),
(76, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-19 07:15:56', '2019-12-19 07:15:56'),
(77, 1, 'Tambah Set Data', '2019-12-19 07:16:24', '2019-12-19 07:16:24'),
(78, 1, 'Tambah Set Data', '2019-12-19 07:16:41', '2019-12-19 07:16:41'),
(79, 1, 'Tambah Set Data', '2019-12-19 07:17:05', '2019-12-19 07:17:05'),
(80, 1, 'Kemaskini Set Data', '2019-12-19 07:17:22', '2019-12-19 07:17:22'),
(81, 1, 'Tambah Set Data', '2019-12-19 07:17:47', '2019-12-19 07:17:47'),
(82, 1, 'Tambah Set Data', '2019-12-19 07:18:09', '2019-12-19 07:18:09'),
(83, 1, 'Tambah Set Data', '2019-12-19 07:18:31', '2019-12-19 07:18:31'),
(84, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-19 07:19:48', '2019-12-19 07:19:48'),
(85, 1, 'Tambah Set Data', '2019-12-19 07:20:24', '2019-12-19 07:20:24'),
(86, 1, 'Tambah Set Data', '2019-12-19 07:20:53', '2019-12-19 07:20:53'),
(87, 1, 'Kemaskini Set Data', '2019-12-19 07:21:18', '2019-12-19 07:21:18'),
(88, 1, 'Tambah Maklumat Fakulti', '2019-12-19 08:09:30', '2019-12-19 08:09:30'),
(89, 1, 'Tambah Maklumat Fakulti', '2019-12-19 08:09:49', '2019-12-19 08:09:49'),
(90, 1, 'Tambah Maklumat Fakulti', '2019-12-19 08:10:11', '2019-12-19 08:10:11'),
(91, 1, 'Tambah Maklumat Fakulti', '2019-12-19 08:11:46', '2019-12-19 08:11:46'),
(92, 1, 'Tambah Maklumat Fakulti', '2019-12-19 08:15:20', '2019-12-19 08:15:20'),
(93, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-19 08:53:15', '2019-12-19 08:53:15'),
(94, 1, 'Tambah Set Data', '2019-12-19 08:53:48', '2019-12-19 08:53:48'),
(95, 1, 'Tambah Set Data', '2019-12-19 08:54:17', '2019-12-19 08:54:17'),
(96, 1, 'Tambah Set Data', '2019-12-19 09:07:02', '2019-12-19 09:07:02'),
(97, 1, 'Tambah Set Data', '2019-12-19 09:07:46', '2019-12-19 09:07:46'),
(98, 1, 'Tambah Set Data', '2019-12-19 09:09:16', '2019-12-19 09:09:16'),
(99, 1, 'Tambah Set Data', '2019-12-19 09:10:37', '2019-12-19 09:10:37'),
(100, 1, 'Tambah Set Data', '2019-12-19 09:17:10', '2019-12-19 09:17:10'),
(101, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-23 03:38:17', '2019-12-23 03:38:17'),
(102, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-23 03:40:34', '2019-12-23 03:40:34'),
(103, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-23 08:00:39', '2019-12-23 08:00:39'),
(104, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-23 08:51:01', '2019-12-23 08:51:01'),
(105, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-23 08:52:47', '2019-12-23 08:52:47'),
(106, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-23 08:54:18', '2019-12-23 08:54:18'),
(107, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:47:30', '2019-12-24 06:47:30'),
(108, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:48:50', '2019-12-24 06:48:50'),
(109, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:54:02', '2019-12-24 06:54:02'),
(110, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:54:46', '2019-12-24 06:54:46'),
(111, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:55:40', '2019-12-24 06:55:40'),
(112, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:56:13', '2019-12-24 06:56:13'),
(113, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:57:29', '2019-12-24 06:57:29'),
(114, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:58:24', '2019-12-24 06:58:24'),
(115, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 06:59:17', '2019-12-24 06:59:17'),
(116, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 06:59:31', '2019-12-24 06:59:31'),
(117, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 07:00:15', '2019-12-24 07:00:15'),
(118, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 07:00:24', '2019-12-24 07:00:24'),
(119, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:01:04', '2019-12-24 07:01:04'),
(120, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:02:25', '2019-12-24 07:02:25'),
(121, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:06:32', '2019-12-24 07:06:32'),
(122, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:07:21', '2019-12-24 07:07:21'),
(123, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:07:56', '2019-12-24 07:07:56'),
(124, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:08:24', '2019-12-24 07:08:24'),
(125, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:10:13', '2019-12-24 07:10:13'),
(126, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:11:02', '2019-12-24 07:11:02'),
(127, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:17:01', '2019-12-24 07:17:01'),
(128, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:17:57', '2019-12-24 07:17:57'),
(129, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:18:46', '2019-12-24 07:18:46'),
(130, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:21:00', '2019-12-24 07:21:00'),
(131, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:21:36', '2019-12-24 07:21:36'),
(132, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:22:16', '2019-12-24 07:22:16'),
(133, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:27:14', '2019-12-24 07:27:14'),
(134, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 07:27:56', '2019-12-24 07:27:56'),
(135, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 07:28:25', '2019-12-24 07:28:25'),
(136, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 07:28:45', '2019-12-24 07:28:45'),
(137, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-24 07:28:54', '2019-12-24 07:28:54'),
(138, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:31:40', '2019-12-24 07:31:40'),
(139, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:32:39', '2019-12-24 07:32:39'),
(140, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:34:20', '2019-12-24 07:34:20'),
(141, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:36:29', '2019-12-24 07:36:29'),
(142, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 07:37:26', '2019-12-24 07:37:26'),
(143, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 08:08:33', '2019-12-24 08:08:33'),
(144, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 08:09:19', '2019-12-24 08:09:19'),
(145, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 08:41:49', '2019-12-24 08:41:49'),
(146, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-24 08:48:01', '2019-12-24 08:48:01'),
(147, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-25 14:51:05', '2019-12-25 14:51:05'),
(148, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-25 14:52:18', '2019-12-25 14:52:18'),
(149, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-25 15:32:35', '2019-12-25 15:32:35'),
(150, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-25 15:41:58', '2019-12-25 15:41:58'),
(151, 1, 'Kemaskini Maklumat Rumah Sampah', '2019-12-25 16:07:47', '2019-12-25 16:07:47'),
(152, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-25 16:09:02', '2019-12-25 16:09:02'),
(153, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-25 16:10:04', '2019-12-25 16:10:04'),
(154, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-25 16:10:21', '2019-12-25 16:10:21'),
(155, 1, 'Tambah Maklumat Rumah Sampah', '2019-12-25 16:14:19', '2019-12-25 16:14:19'),
(156, 1, 'Tambah Maklumat Tong Sampah', '2019-12-26 04:47:04', '2019-12-26 04:47:04'),
(157, 1, 'Tambah Maklumat Tong Sampah', '2019-12-26 04:47:22', '2019-12-26 04:47:22'),
(158, 1, 'Tambah Maklumat Tong Sampah', '2019-12-26 04:47:46', '2019-12-26 04:47:46'),
(159, 1, 'Tambah Maklumat Tong Sampah', '2019-12-26 04:48:41', '2019-12-26 04:48:41'),
(160, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:30:24', '2019-12-26 06:30:24'),
(161, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:30:57', '2019-12-26 06:30:57'),
(162, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:31:44', '2019-12-26 06:31:44'),
(163, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:57:14', '2019-12-26 06:57:14'),
(164, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:58:07', '2019-12-26 06:58:07'),
(165, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:58:31', '2019-12-26 06:58:31'),
(166, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 06:59:33', '2019-12-26 06:59:33'),
(167, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 07:01:11', '2019-12-26 07:01:11'),
(168, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 07:02:03', '2019-12-26 07:02:03'),
(169, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 07:03:09', '2019-12-26 07:03:09'),
(170, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 07:05:43', '2019-12-26 07:05:43'),
(171, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 07:06:09', '2019-12-26 07:06:09'),
(172, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2019-12-26 07:07:06', '2019-12-26 07:07:06'),
(173, 1, 'Hapus Maklumat Kolej Kediaman', '2019-12-26 07:23:37', '2019-12-26 07:23:37'),
(174, 1, 'Hapus Maklumat Kolej Kediaman', '2019-12-26 07:23:41', '2019-12-26 07:23:41'),
(175, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:42:10', '2019-12-26 07:42:10'),
(176, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:48:58', '2019-12-26 07:48:58'),
(177, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:49:10', '2019-12-26 07:49:10'),
(178, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:54:50', '2019-12-26 07:54:50'),
(179, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:55:16', '2019-12-26 07:55:16'),
(180, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:55:46', '2019-12-26 07:55:46'),
(181, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:56:56', '2019-12-26 07:56:56'),
(182, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:59:24', '2019-12-26 07:59:24'),
(183, 1, 'Tambah Bangunan Fakulti', '2019-12-26 07:59:58', '2019-12-26 07:59:58'),
(184, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:19:49', '2019-12-26 08:19:49'),
(185, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:20:28', '2019-12-26 08:20:28'),
(186, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:21:17', '2019-12-26 08:21:17'),
(187, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:22:53', '2019-12-26 08:22:53'),
(188, 1, 'Kemaskini Maklumat Fakulti', '2019-12-26 08:23:22', '2019-12-26 08:23:22'),
(189, 1, 'Kemaskini Maklumat Fakulti', '2019-12-26 08:23:32', '2019-12-26 08:23:32'),
(190, 1, 'Kemaskini Bangunan Fakulti', '2019-12-26 08:23:43', '2019-12-26 08:23:43'),
(191, 1, 'Kemaskini Bangunan Fakulti', '2019-12-26 08:23:53', '2019-12-26 08:23:53'),
(192, 1, 'Kemaskini Bangunan Fakulti', '2019-12-26 08:24:06', '2019-12-26 08:24:06'),
(193, 1, 'Kemaskini Bangunan Fakulti', '2019-12-26 08:24:56', '2019-12-26 08:24:56'),
(194, 1, 'Kemaskini Bangunan Fakulti', '2019-12-26 08:25:05', '2019-12-26 08:25:05'),
(195, 1, 'Hapus Bangunan Fakulti', '2019-12-26 08:25:16', '2019-12-26 08:25:16'),
(196, 1, 'Kemaskini Bangunan Fakulti', '2019-12-26 08:25:25', '2019-12-26 08:25:25'),
(197, 1, 'Tambah Maklumat Fakulti', '2019-12-26 08:27:36', '2019-12-26 08:27:36'),
(198, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:28:15', '2019-12-26 08:28:15'),
(199, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:28:54', '2019-12-26 08:28:54'),
(200, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:29:09', '2019-12-26 08:29:09'),
(201, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:30:42', '2019-12-26 08:30:42'),
(202, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:31:14', '2019-12-26 08:31:14'),
(203, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:31:48', '2019-12-26 08:31:48'),
(204, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:32:01', '2019-12-26 08:32:01'),
(205, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:32:19', '2019-12-26 08:32:19'),
(206, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:32:49', '2019-12-26 08:32:49'),
(207, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:33:09', '2019-12-26 08:33:09'),
(208, 1, 'Tambah Bangunan Fakulti', '2019-12-26 08:33:38', '2019-12-26 08:33:38'),
(209, 1, 'Tambah Bangunan Institut', '2019-12-26 09:11:36', '2019-12-26 09:11:36'),
(210, 1, 'Hapus Bangunan Institut', '2019-12-26 09:11:51', '2019-12-26 09:11:51'),
(211, 1, 'Tambah Bangunan Fakulti', '2019-12-26 09:23:40', '2019-12-26 09:23:40'),
(212, 1, 'Tambah Bangunan Fakulti', '2019-12-26 09:24:27', '2019-12-26 09:24:27'),
(213, 1, 'Tambah Bangunan Fakulti', '2019-12-27 04:46:17', '2019-12-27 04:46:17'),
(214, 1, 'Tambah Bangunan Fakulti', '2019-12-27 04:46:46', '2019-12-27 04:46:46'),
(215, 1, 'Tambah Bangunan Fakulti', '2019-12-27 04:47:32', '2019-12-27 04:47:32'),
(216, 1, 'Tambah Bangunan Fakulti', '2019-12-27 04:47:57', '2019-12-27 04:47:57'),
(217, 1, 'Tambah Bangunan Fakulti', '2019-12-27 04:48:27', '2019-12-27 04:48:27'),
(218, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:23:53', '2019-12-27 08:23:53'),
(219, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:24:05', '2019-12-27 08:24:05'),
(220, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:25:38', '2019-12-27 08:25:38'),
(221, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:26:05', '2019-12-27 08:26:05'),
(222, 1, 'Kemaskini Bangunan Fakulti', '2019-12-27 08:26:18', '2019-12-27 08:26:18'),
(223, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:26:43', '2019-12-27 08:26:43'),
(224, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:26:55', '2019-12-27 08:26:55'),
(225, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:27:33', '2019-12-27 08:27:33'),
(226, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:28:10', '2019-12-27 08:28:10'),
(227, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:31:19', '2019-12-27 08:31:19'),
(228, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:31:45', '2019-12-27 08:31:45'),
(229, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:32:54', '2019-12-27 08:32:54'),
(230, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:33:32', '2019-12-27 08:33:32'),
(231, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:33:50', '2019-12-27 08:33:50'),
(232, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:34:03', '2019-12-27 08:34:03'),
(233, 1, 'Tambah Maklumat Fakulti', '2019-12-27 08:34:26', '2019-12-27 08:34:26'),
(234, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:35:18', '2019-12-27 08:35:18'),
(235, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:35:37', '2019-12-27 08:35:37'),
(236, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:35:58', '2019-12-27 08:35:58'),
(237, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:36:26', '2019-12-27 08:36:26'),
(238, 1, 'Hapus Maklumat Fakulti', '2019-12-27 08:37:13', '2019-12-27 08:37:13'),
(239, 1, 'Tambah Maklumat Fakulti', '2019-12-27 08:37:30', '2019-12-27 08:37:30'),
(240, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:38:03', '2019-12-27 08:38:03'),
(241, 1, 'Tambah Bangunan Fakulti', '2019-12-27 08:38:24', '2019-12-27 08:38:24'),
(242, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:47:24', '2019-12-27 08:47:24'),
(243, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:47:43', '2019-12-27 08:47:43'),
(244, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:48:30', '2019-12-27 08:48:30'),
(245, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:49:00', '2019-12-27 08:49:00'),
(246, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:50:38', '2019-12-27 08:50:38'),
(247, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:51:02', '2019-12-27 08:51:02'),
(248, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:51:18', '2019-12-27 08:51:18'),
(249, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:51:28', '2019-12-27 08:51:28'),
(250, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:52:16', '2019-12-27 08:52:16'),
(251, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:53:08', '2019-12-27 08:53:08'),
(252, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:53:26', '2019-12-27 08:53:26'),
(253, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:53:39', '2019-12-27 08:53:39'),
(254, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:54:00', '2019-12-27 08:54:00'),
(255, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:54:11', '2019-12-27 08:54:11'),
(256, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:54:33', '2019-12-27 08:54:33'),
(257, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:54:41', '2019-12-27 08:54:41'),
(258, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 08:55:05', '2019-12-27 08:55:05'),
(259, 1, 'Tambah Bangunan Kolej Kediaman', '2019-12-27 17:55:42', '2019-12-27 17:55:42'),
(260, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 17:56:41', '2019-12-27 17:56:41'),
(261, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 17:57:43', '2019-12-27 17:57:43'),
(262, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 17:57:54', '2019-12-27 17:57:54'),
(263, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 17:59:01', '2019-12-27 17:59:01'),
(264, 1, 'Hapus Bangunan Kolej Kediaman', '2019-12-27 17:59:08', '2019-12-27 17:59:08'),
(265, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 17:59:30', '2019-12-27 17:59:30'),
(266, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 17:59:58', '2019-12-27 17:59:58'),
(267, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:00:06', '2019-12-27 18:00:06'),
(268, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:01:04', '2019-12-27 18:01:04'),
(269, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:01:13', '2019-12-27 18:01:13'),
(270, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:01:22', '2019-12-27 18:01:22'),
(271, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:01:29', '2019-12-27 18:01:29'),
(272, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:01:37', '2019-12-27 18:01:37'),
(273, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:05:57', '2019-12-27 18:05:57'),
(274, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:06:06', '2019-12-27 18:06:06'),
(275, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:06:14', '2019-12-27 18:06:14'),
(276, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:06:25', '2019-12-27 18:06:25'),
(277, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:06:34', '2019-12-27 18:06:34'),
(278, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:09:21', '2019-12-27 18:09:21'),
(279, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:09:28', '2019-12-27 18:09:28'),
(280, 1, 'Kemaskini Bangunan Kolej Kediaman', '2019-12-27 18:09:39', '2019-12-27 18:09:39'),
(281, 1, 'Tambah Bangunan/Lokasi Fakulti', '2019-12-30 03:15:48', '2019-12-30 03:15:48'),
(282, 1, 'Hapus Bangunan/Lokasi Fakulti', '2019-12-30 03:16:55', '2019-12-30 03:16:55'),
(283, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-30 04:16:02', '2019-12-30 04:16:02'),
(284, 1, 'Hapus Maklumat Kumpulan Data', '2019-12-30 04:16:08', '2019-12-30 04:16:08'),
(285, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-30 06:57:31', '2019-12-30 06:57:31'),
(286, 1, 'Tambah Set Data', '2019-12-30 07:10:32', '2019-12-30 07:10:32'),
(287, 1, 'Tambah Set Data', '2019-12-30 07:11:40', '2019-12-30 07:11:40'),
(288, 1, 'Tambah Set Data', '2019-12-30 07:11:56', '2019-12-30 07:11:56'),
(289, 1, 'Tambah Set Data', '2019-12-30 07:12:36', '2019-12-30 07:12:36'),
(290, 1, 'Tambah Set Data', '2019-12-30 07:12:54', '2019-12-30 07:12:54'),
(291, 1, 'Tambah Set Data', '2019-12-30 07:13:11', '2019-12-30 07:13:11'),
(292, 1, 'Tambah Set Data', '2019-12-30 07:13:34', '2019-12-30 07:13:34'),
(293, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:04:39', '2019-12-30 08:04:39'),
(294, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:04:50', '2019-12-30 08:04:50'),
(295, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:05:01', '2019-12-30 08:05:01'),
(296, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:05:10', '2019-12-30 08:05:10'),
(297, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:05:27', '2019-12-30 08:05:27'),
(298, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:05:44', '2019-12-30 08:05:44'),
(299, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:05:56', '2019-12-30 08:05:56'),
(300, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-30 08:06:27', '2019-12-30 08:06:27'),
(301, 1, 'Tambah Set Data', '2019-12-30 08:07:04', '2019-12-30 08:07:04'),
(302, 1, 'Kemaskini Maklumat Fakulti', '2019-12-30 08:09:00', '2019-12-30 08:09:00'),
(303, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-30 08:09:59', '2019-12-30 08:09:59'),
(304, 1, 'Tambah Set Data', '2019-12-30 08:10:21', '2019-12-30 08:10:21'),
(305, 1, 'Tambah Set Data', '2019-12-30 08:10:39', '2019-12-30 08:10:39'),
(306, 1, 'Tambah Set Data', '2019-12-30 08:10:57', '2019-12-30 08:10:57'),
(307, 1, 'Tambah Set Data', '2019-12-30 08:11:41', '2019-12-30 08:11:41'),
(308, 1, 'Kemaskini Set Data', '2019-12-30 08:16:49', '2019-12-30 08:16:49'),
(309, 1, 'Hapus Maklumat Kumpulan Data', '2019-12-30 08:18:04', '2019-12-30 08:18:04'),
(310, 1, 'Hapus Maklumat Kumpulan Data', '2019-12-30 08:18:08', '2019-12-30 08:18:08'),
(311, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-30 08:50:00', '2019-12-30 08:50:00'),
(312, 1, 'Tambah Set Data', '2019-12-30 08:50:18', '2019-12-30 08:50:18'),
(313, 1, 'Tambah Set Data', '2019-12-30 08:50:26', '2019-12-30 08:50:26'),
(314, 1, 'Tambah Maklumat Kumpulan Data', '2019-12-30 09:02:06', '2019-12-30 09:02:06'),
(315, 1, 'Tambah Set Data', '2019-12-30 09:02:31', '2019-12-30 09:02:31'),
(316, 1, 'Tambah Set Data', '2019-12-30 09:03:14', '2019-12-30 09:03:14'),
(317, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 04:20:04', '2020-01-06 04:20:04'),
(318, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 04:52:16', '2020-01-06 04:52:16'),
(319, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 04:54:15', '2020-01-06 04:54:15'),
(320, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 04:55:02', '2020-01-06 04:55:02'),
(321, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 05:57:04', '2020-01-06 05:57:04'),
(322, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 05:57:12', '2020-01-06 05:57:12'),
(323, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 05:57:34', '2020-01-06 05:57:34'),
(324, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 05:58:56', '2020-01-06 05:58:56'),
(325, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 05:59:30', '2020-01-06 05:59:30'),
(326, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:00:49', '2020-01-06 06:00:49'),
(327, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:03:20', '2020-01-06 06:03:20'),
(328, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:05:30', '2020-01-06 06:05:30'),
(329, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:05:54', '2020-01-06 06:05:54'),
(330, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:07:36', '2020-01-06 06:07:36'),
(331, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:13:01', '2020-01-06 06:13:01'),
(332, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 06:13:23', '2020-01-06 06:13:23'),
(333, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:04:47', '2020-01-06 07:04:47'),
(334, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:07:09', '2020-01-06 07:07:09'),
(335, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:09:22', '2020-01-06 07:09:22'),
(336, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:10:24', '2020-01-06 07:10:24'),
(337, 1, 'Hapus Maklumat Lokasi Tong Sampah', '2020-01-06 07:20:15', '2020-01-06 07:20:15'),
(338, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:28:36', '2020-01-06 07:28:36'),
(339, 1, 'Hapus Maklumat Lokasi Tong Sampah', '2020-01-06 07:29:10', '2020-01-06 07:29:10'),
(340, 1, 'Hapus Maklumat Lokasi Tong Sampah', '2020-01-06 07:29:53', '2020-01-06 07:29:53'),
(341, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:30:15', '2020-01-06 07:30:15'),
(342, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:30:21', '2020-01-06 07:30:21'),
(343, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:30:29', '2020-01-06 07:30:29'),
(344, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:30:36', '2020-01-06 07:30:36'),
(345, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:30:49', '2020-01-06 07:30:49'),
(346, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:31:02', '2020-01-06 07:31:02'),
(347, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:31:16', '2020-01-06 07:31:16'),
(348, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:31:27', '2020-01-06 07:31:27'),
(349, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:31:32', '2020-01-06 07:31:32'),
(350, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:31:46', '2020-01-06 07:31:46'),
(351, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:31:57', '2020-01-06 07:31:57'),
(352, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:32:01', '2020-01-06 07:32:01'),
(353, 1, 'Hapus Maklumat Tong Sampah', '2020-01-06 07:32:06', '2020-01-06 07:32:06'),
(354, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:32:18', '2020-01-06 07:32:18'),
(355, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:32:26', '2020-01-06 07:32:26'),
(356, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:33:57', '2020-01-06 07:33:57'),
(357, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:41:37', '2020-01-06 07:41:37'),
(358, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:42:20', '2020-01-06 07:42:20'),
(359, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:44:12', '2020-01-06 07:44:12'),
(360, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:44:57', '2020-01-06 07:44:57'),
(361, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:45:48', '2020-01-06 07:45:48'),
(362, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 07:47:30', '2020-01-06 07:47:30'),
(363, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:50:01', '2020-01-06 07:50:01'),
(364, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:50:54', '2020-01-06 07:50:54'),
(365, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:52:34', '2020-01-06 07:52:34'),
(366, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:52:45', '2020-01-06 07:52:45'),
(367, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:53:35', '2020-01-06 07:53:35'),
(368, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 07:53:46', '2020-01-06 07:53:46'),
(369, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:54:26', '2020-01-06 07:54:26'),
(370, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:54:50', '2020-01-06 07:54:50'),
(371, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:56:52', '2020-01-06 07:56:52'),
(372, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 07:59:27', '2020-01-06 07:59:27'),
(373, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:00:06', '2020-01-06 08:00:06'),
(374, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:01:15', '2020-01-06 08:01:15'),
(375, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:01:50', '2020-01-06 08:01:50'),
(376, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:02:23', '2020-01-06 08:02:23'),
(377, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:03:00', '2020-01-06 08:03:00'),
(378, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:03:42', '2020-01-06 08:03:42'),
(379, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:04:16', '2020-01-06 08:04:16'),
(380, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:04:53', '2020-01-06 08:04:53'),
(381, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-06 08:05:37', '2020-01-06 08:05:37'),
(382, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:06:16', '2020-01-06 08:06:16'),
(383, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:06:53', '2020-01-06 08:06:53'),
(384, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:07:22', '2020-01-06 08:07:22'),
(385, 1, 'Tambah Maklumat Tong Sampah', '2020-01-06 08:07:40', '2020-01-06 08:07:40'),
(386, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:18:45', '2020-01-06 08:18:45'),
(387, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:19:35', '2020-01-06 08:19:35'),
(388, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:20:21', '2020-01-06 08:20:21'),
(389, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:22:17', '2020-01-06 08:22:17'),
(390, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:23:09', '2020-01-06 08:23:09'),
(391, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:24:36', '2020-01-06 08:24:36'),
(392, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:25:30', '2020-01-06 08:25:30'),
(393, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:26:14', '2020-01-06 08:26:14'),
(394, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:38:56', '2020-01-06 08:38:56'),
(395, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:39:44', '2020-01-06 08:39:44'),
(396, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:43:17', '2020-01-06 08:43:17'),
(397, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:56:19', '2020-01-06 08:56:19'),
(398, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:57:21', '2020-01-06 08:57:21'),
(399, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:58:09', '2020-01-06 08:58:09'),
(400, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:58:44', '2020-01-06 08:58:44'),
(401, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:59:11', '2020-01-06 08:59:11'),
(402, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 08:59:40', '2020-01-06 08:59:40'),
(403, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 09:00:09', '2020-01-06 09:00:09'),
(404, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-06 09:00:43', '2020-01-06 09:00:43'),
(405, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:34:49', '2020-01-06 15:34:49'),
(406, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:35:19', '2020-01-06 15:35:19'),
(407, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:35:34', '2020-01-06 15:35:34'),
(408, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:35:51', '2020-01-06 15:35:51'),
(409, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:36:06', '2020-01-06 15:36:06'),
(410, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:36:39', '2020-01-06 15:36:39'),
(411, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:36:56', '2020-01-06 15:36:56'),
(412, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:37:11', '2020-01-06 15:37:11'),
(413, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:37:52', '2020-01-06 15:37:52'),
(414, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:38:13', '2020-01-06 15:38:13'),
(415, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:38:32', '2020-01-06 15:38:32'),
(416, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:39:02', '2020-01-06 15:39:02'),
(417, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:39:19', '2020-01-06 15:39:19'),
(418, 1, 'Tambah Maklumat Kolej Kediaman', '2020-01-06 15:39:53', '2020-01-06 15:39:53'),
(419, 1, 'Tambah Maklumat Kolej Kediaman', '2020-01-06 15:40:26', '2020-01-06 15:40:26'),
(420, 1, 'Tambah Maklumat Kolej Kediaman', '2020-01-06 15:40:46', '2020-01-06 15:40:46'),
(421, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:41:36', '2020-01-06 15:41:36'),
(422, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:41:51', '2020-01-06 15:41:51'),
(423, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:42:13', '2020-01-06 15:42:13'),
(424, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:43:22', '2020-01-06 15:43:22'),
(425, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:44:34', '2020-01-06 15:44:34'),
(426, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:45:20', '2020-01-06 15:45:20'),
(427, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:45:53', '2020-01-06 15:45:53'),
(428, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:46:21', '2020-01-06 15:46:21'),
(429, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:46:41', '2020-01-06 15:46:41'),
(430, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:46:55', '2020-01-06 15:46:55'),
(431, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:47:08', '2020-01-06 15:47:08'),
(432, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:47:25', '2020-01-06 15:47:25'),
(433, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:47:45', '2020-01-06 15:47:45'),
(434, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:48:01', '2020-01-06 15:48:01'),
(435, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:48:21', '2020-01-06 15:48:21'),
(436, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:48:40', '2020-01-06 15:48:40'),
(437, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 15:49:14', '2020-01-06 15:49:14'),
(438, 1, 'Hapus Bangunan Kolej Kediaman', '2020-01-06 16:08:08', '2020-01-06 16:08:08'),
(439, 1, 'Kemaskini Maklumat Kolej Kediaman', '2020-01-06 16:08:36', '2020-01-06 16:08:36'),
(440, 1, 'Kemaskini Maklumat Kolej Kediaman', '2020-01-06 16:08:53', '2020-01-06 16:08:53'),
(441, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:09:18', '2020-01-06 16:09:18'),
(442, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:10:44', '2020-01-06 16:10:44'),
(443, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:11:28', '2020-01-06 16:11:28'),
(444, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:12:47', '2020-01-06 16:12:47'),
(445, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:12:59', '2020-01-06 16:12:59'),
(446, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:13:10', '2020-01-06 16:13:10'),
(447, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:14:43', '2020-01-06 16:14:43'),
(448, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:14:55', '2020-01-06 16:14:55'),
(449, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-06 16:15:10', '2020-01-06 16:15:10'),
(450, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-07 05:06:48', '2020-01-07 05:06:48'),
(451, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-07 05:08:05', '2020-01-07 05:08:05'),
(452, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-07 05:08:34', '2020-01-07 05:08:34'),
(453, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-07 05:08:57', '2020-01-07 05:08:57'),
(454, 1, 'Kemaskini Bangunan/Lokasi Kolej Kediaman', '2020-01-07 05:09:34', '2020-01-07 05:09:34'),
(455, 1, 'Tambah Bangunan/Lokasi Kolej Kediaman', '2020-01-07 05:11:29', '2020-01-07 05:11:29'),
(456, 1, 'Tambah Maklumat Institut', '2020-01-07 05:13:14', '2020-01-07 05:13:14'),
(457, 1, 'Tambah Maklumat Institut', '2020-01-07 05:15:19', '2020-01-07 05:15:19'),
(458, 1, 'Tambah Maklumat Institut', '2020-01-07 05:19:29', '2020-01-07 05:19:29'),
(459, 1, 'Tambah Maklumat Institut', '2020-01-07 05:20:13', '2020-01-07 05:20:13'),
(460, 1, 'Tambah Maklumat Institut', '2020-01-07 05:21:18', '2020-01-07 05:21:18'),
(461, 1, 'Tambah Maklumat Fakulti', '2020-01-07 05:26:10', '2020-01-07 05:26:10'),
(462, 1, 'Tambah Bangunan/Lokasi Fakulti', '2020-01-07 05:36:09', '2020-01-07 05:36:09'),
(463, 1, 'Tambah Bangunan/Lokasi Fakulti', '2020-01-07 05:36:34', '2020-01-07 05:36:34'),
(464, 1, 'Tambah Bangunan/Lokasi Fakulti', '2020-01-07 05:36:51', '2020-01-07 05:36:51'),
(465, 1, 'Tambah Bangunan/Lokasi Fakulti', '2020-01-07 05:37:07', '2020-01-07 05:37:07'),
(466, 1, 'Tambah Bangunan/Lokasi Fakulti', '2020-01-07 05:37:24', '2020-01-07 05:37:24'),
(467, 1, 'Tambah Bangunan/Lokasi Fakulti', '2020-01-07 05:37:37', '2020-01-07 05:37:37'),
(468, 1, 'Hapus Maklumat Bangunan/Lokasi Lain', '2020-01-07 05:37:56', '2020-01-07 05:37:56'),
(469, 1, 'Tambah Maklumat Fakulti', '2020-01-07 05:40:47', '2020-01-07 05:40:47'),
(470, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:43:27', '2020-01-07 05:43:27'),
(471, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:43:59', '2020-01-07 05:43:59'),
(472, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:44:28', '2020-01-07 05:44:28'),
(473, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:45:20', '2020-01-07 05:45:20'),
(474, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:45:53', '2020-01-07 05:45:53'),
(475, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:47:07', '2020-01-07 05:47:07'),
(476, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:47:32', '2020-01-07 05:47:32'),
(477, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:48:00', '2020-01-07 05:48:00'),
(478, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:48:32', '2020-01-07 05:48:32'),
(479, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:49:12', '2020-01-07 05:49:12'),
(480, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:49:46', '2020-01-07 05:49:46'),
(481, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:50:20', '2020-01-07 05:50:20'),
(482, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:50:47', '2020-01-07 05:50:47'),
(483, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:51:14', '2020-01-07 05:51:14'),
(484, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:51:44', '2020-01-07 05:51:44'),
(485, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 05:52:16', '2020-01-07 05:52:16'),
(486, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:22:17', '2020-01-07 06:22:17'),
(487, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:22:59', '2020-01-07 06:22:59'),
(488, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:23:20', '2020-01-07 06:23:20'),
(489, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:23:51', '2020-01-07 06:23:51'),
(490, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:25:25', '2020-01-07 06:25:25'),
(491, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:26:02', '2020-01-07 06:26:02'),
(492, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:26:54', '2020-01-07 06:26:54'),
(493, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:27:20', '2020-01-07 06:27:20'),
(494, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:27:45', '2020-01-07 06:27:45'),
(495, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:29:05', '2020-01-07 06:29:05'),
(496, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:29:23', '2020-01-07 06:29:23'),
(497, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:29:45', '2020-01-07 06:29:45'),
(498, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:30:07', '2020-01-07 06:30:07'),
(499, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:30:25', '2020-01-07 06:30:25'),
(500, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:30:48', '2020-01-07 06:30:48'),
(501, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:31:17', '2020-01-07 06:31:17'),
(502, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:31:37', '2020-01-07 06:31:37'),
(503, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:32:03', '2020-01-07 06:32:03'),
(504, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 06:48:08', '2020-01-07 06:48:08'),
(505, 1, 'Tambah Set Data', '2020-01-07 07:29:11', '2020-01-07 07:29:11'),
(506, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 07:30:03', '2020-01-07 07:30:03'),
(507, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 07:30:24', '2020-01-07 07:30:24'),
(508, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:19:22', '2020-01-07 08:19:22'),
(509, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:20:45', '2020-01-07 08:20:45'),
(510, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:21:38', '2020-01-07 08:21:38'),
(511, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:22:20', '2020-01-07 08:22:20'),
(512, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:23:12', '2020-01-07 08:23:12'),
(513, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:24:07', '2020-01-07 08:24:07'),
(514, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:24:48', '2020-01-07 08:24:48'),
(515, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:26:31', '2020-01-07 08:26:31'),
(516, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:31:51', '2020-01-07 08:31:51'),
(517, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:32:31', '2020-01-07 08:32:31'),
(518, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:33:24', '2020-01-07 08:33:24'),
(519, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:36:10', '2020-01-07 08:36:10'),
(520, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:37:02', '2020-01-07 08:37:02'),
(521, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:37:50', '2020-01-07 08:37:50'),
(522, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:38:28', '2020-01-07 08:38:28'),
(523, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:39:07', '2020-01-07 08:39:07'),
(524, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:39:47', '2020-01-07 08:39:47'),
(525, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:44:05', '2020-01-07 08:44:05'),
(526, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:44:54', '2020-01-07 08:44:54'),
(527, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:45:43', '2020-01-07 08:45:43'),
(528, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:46:25', '2020-01-07 08:46:25'),
(529, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:47:10', '2020-01-07 08:47:10'),
(530, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-07 08:48:33', '2020-01-07 08:48:33'),
(531, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 08:51:17', '2020-01-07 08:51:17'),
(532, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 09:00:04', '2020-01-07 09:00:04'),
(533, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 09:03:05', '2020-01-07 09:03:05'),
(534, 1, 'Tambah Maklumat Tong Sampah', '2020-01-07 09:03:55', '2020-01-07 09:03:55'),
(535, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-08 04:08:56', '2020-01-08 04:08:56'),
(536, 1, 'Kemaskini Maklumat Tong Sampah', '2020-01-08 04:11:08', '2020-01-08 04:11:08'),
(537, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:14:06', '2020-01-08 04:14:06'),
(538, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:14:51', '2020-01-08 04:14:51'),
(539, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:17:45', '2020-01-08 04:17:45'),
(540, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:18:09', '2020-01-08 04:18:09'),
(541, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:18:30', '2020-01-08 04:18:30'),
(542, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:18:53', '2020-01-08 04:18:53'),
(543, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:19:10', '2020-01-08 04:19:10'),
(544, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:19:31', '2020-01-08 04:19:31'),
(545, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:19:49', '2020-01-08 04:19:49'),
(546, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:20:44', '2020-01-08 04:20:44'),
(547, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:21:10', '2020-01-08 04:21:10'),
(548, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:21:30', '2020-01-08 04:21:30'),
(549, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:22:04', '2020-01-08 04:22:04'),
(550, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:22:26', '2020-01-08 04:22:26'),
(551, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:22:52', '2020-01-08 04:22:52'),
(552, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:23:18', '2020-01-08 04:23:18'),
(553, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:23:47', '2020-01-08 04:23:47'),
(554, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:24:43', '2020-01-08 04:24:43'),
(555, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:25:03', '2020-01-08 04:25:03'),
(556, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:25:26', '2020-01-08 04:25:26'),
(557, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:25:43', '2020-01-08 04:25:43'),
(558, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:26:15', '2020-01-08 04:26:15'),
(559, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:26:39', '2020-01-08 04:26:39'),
(560, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:26:55', '2020-01-08 04:26:55'),
(561, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:27:14', '2020-01-08 04:27:14'),
(562, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:27:36', '2020-01-08 04:27:36'),
(563, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:27:57', '2020-01-08 04:27:57'),
(564, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:28:19', '2020-01-08 04:28:19'),
(565, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:28:52', '2020-01-08 04:28:52'),
(566, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:29:31', '2020-01-08 04:29:31'),
(567, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:29:51', '2020-01-08 04:29:51'),
(568, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:30:12', '2020-01-08 04:30:12'),
(569, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:30:36', '2020-01-08 04:30:36'),
(570, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:30:54', '2020-01-08 04:30:54'),
(571, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:31:10', '2020-01-08 04:31:10'),
(572, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:31:31', '2020-01-08 04:31:31'),
(573, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:32:06', '2020-01-08 04:32:06'),
(574, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:32:25', '2020-01-08 04:32:25'),
(575, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:32:44', '2020-01-08 04:32:44'),
(576, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:33:04', '2020-01-08 04:33:04'),
(577, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:33:27', '2020-01-08 04:33:27'),
(578, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:33:48', '2020-01-08 04:33:48'),
(579, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:34:10', '2020-01-08 04:34:10'),
(580, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:34:27', '2020-01-08 04:34:27'),
(581, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:34:48', '2020-01-08 04:34:48'),
(582, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:35:04', '2020-01-08 04:35:04'),
(583, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:35:20', '2020-01-08 04:35:20'),
(584, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:35:39', '2020-01-08 04:35:39'),
(585, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:35:58', '2020-01-08 04:35:58'),
(586, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:36:13', '2020-01-08 04:36:13'),
(587, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:36:30', '2020-01-08 04:36:30'),
(588, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:36:48', '2020-01-08 04:36:48'),
(589, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:37:04', '2020-01-08 04:37:04'),
(590, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:39:12', '2020-01-08 04:39:12');
INSERT INTO `audittrails` (`id`, `user_id`, `activity`, `created_at`, `updated_at`) VALUES
(591, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:39:29', '2020-01-08 04:39:29'),
(592, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:39:47', '2020-01-08 04:39:47'),
(593, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:40:04', '2020-01-08 04:40:04'),
(594, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:40:21', '2020-01-08 04:40:21'),
(595, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:40:36', '2020-01-08 04:40:36'),
(596, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:40:56', '2020-01-08 04:40:56'),
(597, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:41:15', '2020-01-08 04:41:15'),
(598, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:41:30', '2020-01-08 04:41:30'),
(599, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:41:50', '2020-01-08 04:41:50'),
(600, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:42:12', '2020-01-08 04:42:12'),
(601, 1, 'Tambah Maklumat Tong Sampah', '2020-01-08 04:43:58', '2020-01-08 04:43:58'),
(602, 1, 'Kemaskini Maklumat Lokasi Tong Sampah', '2020-01-08 04:46:19', '2020-01-08 04:46:19'),
(603, 1, 'Kemaskini Maklumat Lokasi Tong Sampah', '2020-01-08 04:46:29', '2020-01-08 04:46:29'),
(604, 1, 'Hapus Maklumat Lokasi Tong Sampah', '2020-01-08 04:46:39', '2020-01-08 04:46:39'),
(605, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:47:39', '2020-01-08 04:47:39'),
(606, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:48:42', '2020-01-08 04:48:42'),
(607, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:49:26', '2020-01-08 04:49:26'),
(608, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:51:31', '2020-01-08 04:51:31'),
(609, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:52:25', '2020-01-08 04:52:25'),
(610, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:53:18', '2020-01-08 04:53:18'),
(611, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:54:06', '2020-01-08 04:54:06'),
(612, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:55:31', '2020-01-08 04:55:31'),
(613, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:56:15', '2020-01-08 04:56:15'),
(614, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:57:05', '2020-01-08 04:57:05'),
(615, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:57:47', '2020-01-08 04:57:47'),
(616, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:58:57', '2020-01-08 04:58:57'),
(617, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 04:59:51', '2020-01-08 04:59:51'),
(618, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:00:28', '2020-01-08 05:00:28'),
(619, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:01:11', '2020-01-08 05:01:11'),
(620, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:02:13', '2020-01-08 05:02:13'),
(621, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:03:57', '2020-01-08 05:03:57'),
(622, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:04:40', '2020-01-08 05:04:40'),
(623, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:05:16', '2020-01-08 05:05:16'),
(624, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:08:34', '2020-01-08 05:08:34'),
(625, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:09:12', '2020-01-08 05:09:12'),
(626, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:10:29', '2020-01-08 05:10:29'),
(627, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:11:20', '2020-01-08 05:11:20'),
(628, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:12:40', '2020-01-08 05:12:40'),
(629, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:13:23', '2020-01-08 05:13:23'),
(630, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:16:39', '2020-01-08 05:16:39'),
(631, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:17:20', '2020-01-08 05:17:20'),
(632, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:18:12', '2020-01-08 05:18:12'),
(633, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:19:06', '2020-01-08 05:19:06'),
(634, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:19:59', '2020-01-08 05:19:59'),
(635, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:20:47', '2020-01-08 05:20:47'),
(636, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:21:31', '2020-01-08 05:21:31'),
(637, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:22:12', '2020-01-08 05:22:12'),
(638, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:22:53', '2020-01-08 05:22:53'),
(639, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:23:56', '2020-01-08 05:23:56'),
(640, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:24:43', '2020-01-08 05:24:43'),
(641, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:25:42', '2020-01-08 05:25:42'),
(642, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:26:35', '2020-01-08 05:26:35'),
(643, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:27:08', '2020-01-08 05:27:08'),
(644, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:27:52', '2020-01-08 05:27:52'),
(645, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:28:28', '2020-01-08 05:28:28'),
(646, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:29:24', '2020-01-08 05:29:24'),
(647, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:30:14', '2020-01-08 05:30:14'),
(648, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:30:50', '2020-01-08 05:30:50'),
(649, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:31:29', '2020-01-08 05:31:29'),
(650, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:32:02', '2020-01-08 05:32:02'),
(651, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:32:35', '2020-01-08 05:32:35'),
(652, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:33:10', '2020-01-08 05:33:10'),
(653, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:33:52', '2020-01-08 05:33:52'),
(654, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:34:40', '2020-01-08 05:34:40'),
(655, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:35:25', '2020-01-08 05:35:25'),
(656, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:36:14', '2020-01-08 05:36:14'),
(657, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:36:59', '2020-01-08 05:36:59'),
(658, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:38:59', '2020-01-08 05:38:59'),
(659, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:39:49', '2020-01-08 05:39:49'),
(660, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:40:20', '2020-01-08 05:40:20'),
(661, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:42:48', '2020-01-08 05:42:48'),
(662, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:43:24', '2020-01-08 05:43:24'),
(663, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:44:10', '2020-01-08 05:44:10'),
(664, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 05:45:35', '2020-01-08 05:45:35'),
(665, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:36:46', '2020-01-08 06:36:46'),
(666, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:37:28', '2020-01-08 06:37:28'),
(667, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:38:39', '2020-01-08 06:38:39'),
(668, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:39:21', '2020-01-08 06:39:21'),
(669, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:40:18', '2020-01-08 06:40:18'),
(670, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:40:59', '2020-01-08 06:40:59'),
(671, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:41:35', '2020-01-08 06:41:35'),
(672, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:42:30', '2020-01-08 06:42:30'),
(673, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:43:01', '2020-01-08 06:43:01'),
(674, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:43:44', '2020-01-08 06:43:44'),
(675, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:44:32', '2020-01-08 06:44:32'),
(676, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:45:10', '2020-01-08 06:45:10'),
(677, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:45:42', '2020-01-08 06:45:42'),
(678, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:46:12', '2020-01-08 06:46:12'),
(679, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:46:43', '2020-01-08 06:46:43'),
(680, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:47:11', '2020-01-08 06:47:11'),
(681, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:47:52', '2020-01-08 06:47:52'),
(682, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:48:41', '2020-01-08 06:48:41'),
(683, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:49:11', '2020-01-08 06:49:11'),
(684, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:49:45', '2020-01-08 06:49:45'),
(685, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:51:01', '2020-01-08 06:51:01'),
(686, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:51:39', '2020-01-08 06:51:39'),
(687, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:52:17', '2020-01-08 06:52:17'),
(688, 1, 'Tambah Maklumat Lokasi Tong Sampah', '2020-01-08 06:52:48', '2020-01-08 06:52:48'),
(689, 1, 'Tambah Maklumat Bangunan/Lokasi Lain', '2020-01-08 09:02:04', '2020-01-08 09:02:04'),
(690, 1, 'Hapus Maklumat Bangunan/Lokasi Lain', '2020-01-08 09:02:35', '2020-01-08 09:02:35'),
(691, 1, 'Kemaskini Set Data', '2020-01-09 15:47:56', '2020-01-09 15:47:56'),
(692, 1, 'Kemaskini Set Data', '2020-03-12 00:31:51', '2020-03-12 00:31:51'),
(693, 1, 'Kemaskini Set Data', '2020-03-12 00:32:01', '2020-03-12 00:32:01'),
(694, 1, 'Kemaskini Set Data', '2020-03-12 05:22:37', '2020-03-12 05:22:37'),
(695, 1, 'Kemaskini Set Data', '2020-03-12 05:22:51', '2020-03-12 05:22:51'),
(696, 1, 'Kemaskini Set Data', '2020-03-12 05:23:20', '2020-03-12 05:23:20'),
(697, 1, 'Kemaskini Set Data', '2020-03-12 05:23:30', '2020-03-12 05:23:30'),
(698, 1, 'Kemaskini Set Data', '2020-03-12 05:23:45', '2020-03-12 05:23:45'),
(699, 1, 'Kemaskini Set Data', '2020-03-12 05:24:00', '2020-03-12 05:24:00'),
(700, 1, 'Kemaskini Set Data', '2020-03-12 05:24:10', '2020-03-12 05:24:10'),
(701, 1, 'Kemaskini Set Data', '2020-03-12 05:24:36', '2020-03-12 05:24:36'),
(702, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:03:20', '2020-03-12 06:03:20'),
(703, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:04:50', '2020-03-12 06:04:50'),
(704, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:05:07', '2020-03-12 06:05:07'),
(705, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:05:41', '2020-03-12 06:05:41'),
(706, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:05:54', '2020-03-12 06:05:54'),
(707, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:06:10', '2020-03-12 06:06:10'),
(708, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:06:24', '2020-03-12 06:06:24'),
(709, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:06:44', '2020-03-12 06:06:44'),
(710, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 06:07:49', '2020-03-12 06:07:49'),
(711, 1, 'Add Data Group', '2020-03-12 07:44:05', '2020-03-12 07:44:05'),
(712, 1, 'Kemaskini Maklumat Fakulti', '2020-03-12 07:45:07', '2020-03-12 07:45:07'),
(713, 1, 'Destroy Data Group', '2020-03-12 07:45:18', '2020-03-12 07:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `bins`
--

CREATE TABLE `bins` (
  `id` int(11) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_type` int(1) NOT NULL COMMENT 'rujuk table gb_datagroup dn gb_dataset',
  `bin_class` int(1) DEFAULT NULL COMMENT '1- Plastik, 2- Aluminium, 3- Kertas, 4-Kaca',
  `bin_aras` int(11) NOT NULL,
  `bin_total` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bins`
--

INSERT INTO `bins` (`id`, `bin_name`, `bin_type`, `bin_class`, `bin_aras`, `bin_total`, `created_at`, `updated_at`) VALUES
(2, 'KPZB_A1', 12, 33, 0, NULL, '2020-01-06 07:30:49', '2020-01-06 07:30:49'),
(5, 'KPZB_A2', 12, 33, 0, NULL, '2020-01-06 07:31:02', '2020-01-06 07:31:02'),
(8, 'KPZB_C1', 12, 33, 0, NULL, '2020-01-06 07:31:15', '2020-01-06 07:31:15'),
(11, 'KPZB_C2', 12, 33, 0, NULL, '2020-01-06 06:03:20', '2020-01-06 06:03:20'),
(12, 'KPZB_D1', 12, 33, 2, NULL, '2020-01-06 07:31:46', '2020-01-06 07:31:46'),
(14, 'KPZB_D2', 12, 33, 2, NULL, '2020-01-06 06:07:36', '2020-01-06 06:07:36'),
(15, 'KPZB_E1', 12, 33, 1, NULL, '2020-01-06 07:32:26', '2020-01-06 07:32:26'),
(17, 'KPZB_E2', 12, 33, 1, NULL, '2020-01-06 07:04:47', '2020-01-06 07:04:47'),
(18, 'KPZB_F1', 12, 33, 0, NULL, '2020-01-06 07:32:18', '2020-01-06 07:32:18'),
(19, 'KPZB_F2', 12, 33, 0, NULL, '2020-01-06 07:50:01', '2020-01-06 07:50:01'),
(20, 'KPZB_G1_01', 13, 33, 0, NULL, '2020-01-06 07:53:35', '2020-01-06 07:53:35'),
(21, 'KPZB_G1_02', 13, 33, 0, NULL, '2020-01-06 07:53:46', '2020-01-06 07:53:46'),
(22, 'KPZB_G2_01', 13, 33, 0, NULL, '2020-01-06 07:54:26', '2020-01-06 07:54:26'),
(23, 'KPZB_G2_02', 13, 33, 0, NULL, '2020-01-06 07:54:50', '2020-01-06 07:54:50'),
(24, 'KPZB_H1_01', 13, 33, 1, NULL, '2020-01-06 07:56:52', '2020-01-06 07:56:52'),
(25, 'KPZB_H1_02', 13, 33, 1, NULL, '2020-01-06 07:59:26', '2020-01-06 07:59:26'),
(26, 'KPZB_H2_01', 13, 33, 1, NULL, '2020-01-06 08:00:06', '2020-01-06 08:00:06'),
(27, 'KPZB_H2_02', 13, 33, 1, NULL, '2020-01-06 08:01:14', '2020-01-06 08:01:14'),
(28, 'KPZB_INN_01', 15, 33, 0, NULL, '2020-01-06 08:01:50', '2020-01-06 08:01:50'),
(29, 'KPZB_INN_02', 15, 33, 1, NULL, '2020-01-06 08:02:23', '2020-01-06 08:02:23'),
(30, 'KPZB_INN_03', 15, 33, 2, NULL, '2020-01-06 08:03:00', '2020-01-06 08:03:00'),
(31, 'KPZB_INN_04', 15, 33, 3, NULL, '2020-01-06 08:03:42', '2020-01-06 08:03:42'),
(32, 'KPZB_INN_05', 15, 33, 4, NULL, '2020-01-06 08:04:15', '2020-01-06 08:04:15'),
(33, 'KPZB_INN_06', 15, 33, 1, NULL, '2020-01-06 08:05:37', '2020-01-06 08:05:37'),
(34, 'KPZB_INN_07', 15, 33, 1, NULL, '2020-01-06 08:06:16', '2020-01-06 08:06:16'),
(35, 'KPZB_INN_08', 15, 33, 2, NULL, '2020-01-06 08:06:52', '2020-01-06 08:06:52'),
(36, 'KPZB_INN_09', 15, 33, 3, NULL, '2020-01-06 08:07:22', '2020-01-06 08:07:22'),
(37, 'KPZB_INN_10', 15, 33, 4, NULL, '2020-01-06 08:07:40', '2020-01-06 08:07:40'),
(38, 'KBHFP_K10B', 16, 33, 1, NULL, '2020-01-07 05:43:27', '2020-01-07 05:43:27'),
(39, 'KBHFP_K10C', 16, 33, 1, NULL, '2020-01-07 05:43:58', '2020-01-07 05:43:58'),
(40, 'KBHFP_K10D', 16, 33, 1, NULL, '2020-01-07 05:44:28', '2020-01-07 05:44:28'),
(41, 'KBHFP_K10E', 16, 33, 1, NULL, '2020-01-07 05:45:20', '2020-01-07 05:45:20'),
(42, 'KBHFP_K10F', 16, 33, 1, NULL, '2020-01-07 05:45:52', '2020-01-07 05:45:52'),
(43, 'KBHFP_K10G', 16, 33, 1, NULL, '2020-01-07 05:47:07', '2020-01-07 05:47:07'),
(44, 'KBHFP_K10H', 16, 33, 1, NULL, '2020-01-07 05:47:32', '2020-01-07 05:47:32'),
(45, 'KBHFP_K10J', 16, 33, 1, NULL, '2020-01-07 05:48:00', '2020-01-07 05:48:00'),
(46, 'KBHFP_K10K', 16, 33, 1, NULL, '2020-01-07 05:48:32', '2020-01-07 05:48:32'),
(47, 'KBHFP_K10L', 16, 33, 1, NULL, '2020-01-07 05:49:12', '2020-01-07 05:49:12'),
(48, 'KBH_F1', 17, 33, 0, NULL, '2020-01-07 05:49:46', '2020-01-07 05:49:46'),
(49, 'KBH_F2', 17, 33, 0, NULL, '2020-01-07 05:50:20', '2020-01-07 05:50:20'),
(50, 'KBH_F3', 17, 33, 0, NULL, '2020-01-07 05:50:47', '2020-01-07 05:50:47'),
(51, 'KBH_F4', 17, 33, 0, NULL, '2020-01-07 05:51:14', '2020-01-07 05:51:14'),
(52, 'KBH_kafe', 13, 33, 0, NULL, '2020-01-07 05:51:44', '2020-01-07 05:51:44'),
(53, 'KBHB_L', 18, 33, 0, NULL, '2020-01-07 05:52:16', '2020-01-07 05:52:16'),
(54, 'KUOB_bin1', 12, 33, 1, NULL, '2020-01-07 06:22:17', '2020-01-07 06:22:17'),
(55, 'KUOB_bin2', 12, 33, 1, NULL, '2020-01-07 06:22:59', '2020-01-07 06:22:59'),
(56, 'KUOB_bin3', 12, 33, 1, NULL, '2020-01-07 06:23:20', '2020-01-07 06:23:20'),
(57, 'KUOB_bin4', 12, 33, 1, NULL, '2020-01-07 06:23:51', '2020-01-07 06:23:51'),
(58, 'KUOB_bin5', 12, 33, 1, NULL, '2020-01-07 06:25:25', '2020-01-07 06:25:25'),
(59, 'KUOB_bin6', 12, 33, 1, NULL, '2020-01-07 06:26:01', '2020-01-07 06:26:01'),
(60, 'KUOF_bin7', 12, 33, 1, NULL, '2020-01-07 06:26:54', '2020-01-07 06:26:54'),
(61, 'KUOF_bin8', 12, 33, 1, NULL, '2020-01-07 06:27:19', '2020-01-07 06:27:19'),
(62, 'KUOF_bin9', 12, 33, 1, NULL, '2020-01-07 06:27:45', '2020-01-07 06:27:45'),
(63, 'KUOF_bin2', 12, 33, 1, NULL, '2020-01-08 04:08:55', '2020-01-08 04:08:55'),
(64, 'KUOF_bin11', 12, 33, 1, NULL, '2020-01-07 06:29:23', '2020-01-07 06:29:23'),
(65, 'KUOF_bin12', 12, 33, 1, NULL, '2020-01-07 06:29:44', '2020-01-07 06:29:44'),
(66, 'KUOF_bin13', 12, 33, 1, NULL, '2020-01-07 06:30:07', '2020-01-07 06:30:07'),
(67, 'KUOF_bin14', 12, 33, 1, NULL, '2020-01-07 06:30:25', '2020-01-07 06:30:25'),
(68, 'KUOF_bin15', 12, 33, 1, NULL, '2020-01-07 06:30:48', '2020-01-07 06:30:48'),
(69, 'KUOF_bin16', 12, 33, 1, NULL, '2020-01-07 06:31:17', '2020-01-07 06:31:17'),
(70, 'KUOF_bin17', 12, 33, 1, NULL, '2020-01-07 06:31:37', '2020-01-07 06:31:37'),
(71, 'KUOF_bin18', 12, 33, 1, NULL, '2020-01-07 06:32:03', '2020-01-07 06:32:03'),
(72, 'KKMK_bin1', 19, 34, 1, NULL, '2020-01-07 06:48:07', '2020-01-07 06:48:07'),
(73, 'KKMB_bin1', 59, 33, 1, NULL, '2020-01-07 07:30:03', '2020-01-07 07:30:03'),
(74, 'KKMB_bin2', 59, 33, 1, NULL, '2020-01-07 07:30:24', '2020-01-07 07:30:24'),
(75, 'KUOF_bin1', 12, 33, 1, NULL, '2020-01-07 08:51:17', '2020-01-07 08:51:17'),
(76, 'KUOF_bin10', 12, 33, 1, NULL, '2020-01-08 04:11:08', '2020-01-08 04:11:08'),
(77, 'KUOF_bin3', 12, 33, 1, NULL, '2020-01-07 09:03:05', '2020-01-07 09:03:05'),
(78, 'KUOF_bin4', 12, 33, 1, NULL, '2020-01-07 09:03:54', '2020-01-07 09:03:54'),
(79, 'KUOF_bin5', 12, 33, 1, NULL, '2020-01-08 04:14:06', '2020-01-08 04:14:06'),
(80, 'KUOF_bin6', 12, 33, 1, NULL, '2020-01-08 04:14:51', '2020-01-08 04:14:51'),
(81, 'KKMB_bin3', 59, 33, 1, NULL, '2020-01-08 04:17:45', '2020-01-08 04:17:45'),
(82, 'KKMB_bin4', 59, 33, 1, NULL, '2020-01-08 04:18:09', '2020-01-08 04:18:09'),
(83, 'KKMB_bin5', 59, 33, 1, NULL, '2020-01-08 04:18:30', '2020-01-08 04:18:30'),
(84, 'KKMB_bin6', 59, 33, 1, NULL, '2020-01-08 04:18:52', '2020-01-08 04:18:52'),
(85, 'KKMB_bin7', 59, 33, 1, NULL, '2020-01-08 04:19:10', '2020-01-08 04:19:10'),
(86, 'KKMB_bin8', 59, 33, 1, NULL, '2020-01-08 04:19:31', '2020-01-08 04:19:31'),
(87, 'KKMB_bin9', 59, 33, 1, NULL, '2020-01-08 04:19:49', '2020-01-08 04:19:49'),
(88, 'KIZB_bin1', 19, 33, 1, NULL, '2020-01-08 04:20:44', '2020-01-08 04:20:44'),
(89, 'KIZB_bin2', 19, 33, 1, NULL, '2020-01-08 04:21:10', '2020-01-08 04:21:10'),
(90, 'KIZB_bin3', 19, 33, 1, NULL, '2020-01-08 04:21:30', '2020-01-08 04:21:30'),
(91, 'KIZB_bin4', 19, 33, 1, NULL, '2020-01-08 04:22:04', '2020-01-08 04:22:04'),
(92, 'KIZK_bin5', 19, 33, 1, NULL, '2020-01-08 04:22:26', '2020-01-08 04:22:26'),
(93, 'KIZB_bin6', 19, 33, 1, NULL, '2020-01-08 04:22:52', '2020-01-08 04:22:52'),
(94, 'KIZB_bin7', 19, 33, 1, NULL, '2020-01-08 04:23:18', '2020-01-08 04:23:18'),
(95, 'KRK_bin1', 59, 33, 1, NULL, '2020-01-08 04:23:47', '2020-01-08 04:23:47'),
(96, 'KRK_bin2', 59, 33, 1, NULL, '2020-01-08 04:24:42', '2020-01-08 04:24:42'),
(97, 'KRK_bin3', 59, 33, 1, NULL, '2020-01-08 04:25:03', '2020-01-08 04:25:03'),
(98, 'KRK_bin4', 59, 33, 1, NULL, '2020-01-08 04:25:26', '2020-01-08 04:25:26'),
(99, 'KRK_bin5', 59, 33, 1, NULL, '2020-01-08 04:25:43', '2020-01-08 04:25:43'),
(100, 'KRK_bin6', 59, 33, 1, NULL, '2020-01-08 04:26:15', '2020-01-08 04:26:15'),
(101, 'KRK_bin7', 59, 33, 1, NULL, '2020-01-08 04:26:39', '2020-01-08 04:26:39'),
(102, 'KRK_bin8', 59, 33, 1, NULL, '2020-01-08 04:26:55', '2020-01-08 04:26:55'),
(103, 'KRK_bin9', 59, 33, 1, NULL, '2020-01-08 04:27:14', '2020-01-08 04:27:14'),
(104, 'KRK_bin10', 59, 33, 1, NULL, '2020-01-08 04:27:36', '2020-01-08 04:27:36'),
(105, 'KRK_bin11', 59, 33, 1, NULL, '2020-01-08 04:27:56', '2020-01-08 04:27:56'),
(106, 'KRK_bin12', 59, 33, 1, NULL, '2020-01-08 04:28:19', '2020-01-08 04:28:19'),
(107, 'KRK_bin13', 59, 33, 1, NULL, '2020-01-08 04:28:52', '2020-01-08 04:28:52'),
(108, 'KRK_bin14', 59, 33, 1, NULL, '2020-01-08 04:29:31', '2020-01-08 04:29:31'),
(109, 'KRK_bin15', 59, 33, 1, NULL, '2020-01-08 04:29:51', '2020-01-08 04:29:51'),
(110, 'KRK_bin16', 59, 33, 1, NULL, '2020-01-08 04:30:12', '2020-01-08 04:30:12'),
(111, 'KRK_bin17', 59, 33, 1, NULL, '2020-01-08 04:30:36', '2020-01-08 04:30:36'),
(112, 'KRK_bin18', 59, 33, 1, NULL, '2020-01-08 04:30:53', '2020-01-08 04:30:53'),
(113, 'KRK_bin19', 59, 33, 1, NULL, '2020-01-08 04:31:10', '2020-01-08 04:31:10'),
(114, 'KRK_bin20', 59, 33, 1, NULL, '2020-01-08 04:31:31', '2020-01-08 04:31:31'),
(115, 'KAB_bin1', 59, 33, 1, NULL, '2020-01-08 04:32:06', '2020-01-08 04:32:06'),
(116, 'KAB_bin2', 59, 33, 1, NULL, '2020-01-08 04:32:25', '2020-01-08 04:32:25'),
(117, 'KAB_bin3', 59, 33, 1, NULL, '2020-01-08 04:32:44', '2020-01-08 04:32:44'),
(118, 'KAB_bin4', 59, 33, 1, NULL, '2020-01-08 04:33:04', '2020-01-08 04:33:04'),
(119, 'KAB_bin5', 59, 33, 1, NULL, '2020-01-08 04:33:27', '2020-01-08 04:33:27'),
(120, 'KAB_bin6', 59, 33, 1, NULL, '2020-01-08 04:33:48', '2020-01-08 04:33:48'),
(121, 'KAB_bin7', 59, 33, 1, NULL, '2020-01-08 04:34:10', '2020-01-08 04:34:10'),
(122, 'KAB_bin8', 59, 33, 1, NULL, '2020-01-08 04:34:27', '2020-01-08 04:34:27'),
(123, 'KAB_bin9', 59, 33, 1, NULL, '2020-01-08 04:34:48', '2020-01-08 04:34:48'),
(124, 'KAB_bin10', 59, 33, 1, NULL, '2020-01-08 04:35:04', '2020-01-08 04:35:04'),
(125, 'KAB_bin11', 59, 33, 1, NULL, '2020-01-08 04:35:20', '2020-01-08 04:35:20'),
(126, 'KAB_bin12', 59, 33, 1, NULL, '2020-01-08 04:35:39', '2020-01-08 04:35:39'),
(127, 'KAB_bin13', 59, 33, 1, NULL, '2020-01-08 04:35:57', '2020-01-08 04:35:57'),
(128, 'KAB_bin14', 59, 33, 1, NULL, '2020-01-08 04:36:13', '2020-01-08 04:36:13'),
(129, 'KAB_bin15', 59, 33, 1, NULL, '2020-01-08 04:36:29', '2020-01-08 04:36:29'),
(130, 'KAB_bin16', 59, 33, 1, NULL, '2020-01-08 04:36:48', '2020-01-08 04:36:48'),
(131, 'KAB_bin17', 59, 33, 1, NULL, '2020-01-08 04:37:04', '2020-01-08 04:37:04'),
(132, 'KAB_bin18', 59, 33, 1, NULL, '2020-01-08 04:39:12', '2020-01-08 04:39:12'),
(133, 'KAB_bin19', 59, 33, 1, NULL, '2020-01-08 04:39:29', '2020-01-08 04:39:29'),
(134, 'KAB_bin20', 59, 33, 1, NULL, '2020-01-08 04:39:47', '2020-01-08 04:39:47'),
(135, 'KAB_bin21', 59, 33, 1, NULL, '2020-01-08 04:40:03', '2020-01-08 04:40:03'),
(136, 'KAB_bin22', 59, 33, 1, NULL, '2020-01-08 04:40:21', '2020-01-08 04:40:21'),
(137, 'KAB_bin23', 59, 33, 1, NULL, '2020-01-08 04:40:36', '2020-01-08 04:40:36'),
(138, 'KAB_bin24', 59, 33, 1, NULL, '2020-01-08 04:40:56', '2020-01-08 04:40:56'),
(139, 'KAB_bin25', 59, 33, 1, NULL, '2020-01-08 04:41:15', '2020-01-08 04:41:15'),
(140, 'KAB_bin26', 59, 33, 1, NULL, '2020-01-08 04:41:30', '2020-01-08 04:41:30'),
(141, 'KAB_bin27', 59, 33, 1, NULL, '2020-01-08 04:41:50', '2020-01-08 04:41:50'),
(142, 'KAB_bin28', 59, 33, 1, NULL, '2020-01-08 04:42:12', '2020-01-08 04:42:12'),
(143, 'KUOB_bin7', 12, 33, 1, NULL, '2020-01-08 04:43:58', '2020-01-08 04:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `bin_locations`
--

CREATE TABLE `bin_locations` (
  `id` int(11) NOT NULL,
  `bin_type` int(1) NOT NULL COMMENT '0- Rumah Sampah, 1- Dalam Bangunan',
  `bin_id` int(11) NOT NULL,
  `main_location_type` int(11) NOT NULL,
  `main_location_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL COMMENT 'Id akan dirujuk pada building_id di table building',
  `bin_status` int(1) NOT NULL,
  `bin_latitude` double NOT NULL,
  `bin_longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bin_locations`
--

INSERT INTO `bin_locations` (`id`, `bin_type`, `bin_id`, `main_location_type`, `main_location_id`, `location_id`, `bin_status`, `bin_latitude`, `bin_longitude`, `created_at`, `updated_at`) VALUES
(1, 57, 2, 44, 2, 3, 56, 2.92035, 101.77432, '2020-02-16 07:56:35', '2020-01-06 04:20:04'),
(4, 57, 5, 44, 2, 4, 56, 2.9205, 101.77462, '2020-01-06 04:55:02', '2020-01-06 04:55:02'),
(8, 57, 8, 44, 2, 5, 56, 2.91957, 101.77369, '2020-01-06 07:33:57', '2020-01-06 07:33:57'),
(9, 57, 11, 44, 2, 6, 56, 2.91933, 101.77371, '2020-01-06 07:41:37', '2020-01-06 07:41:37'),
(10, 57, 12, 44, 2, 7, 56, 2.91938, 101.7741, '2020-01-06 07:42:20', '2020-01-06 07:42:20'),
(11, 57, 14, 44, 2, 8, 56, 2.91938, 101.77446, '2020-01-06 07:44:12', '2020-01-06 07:44:12'),
(12, 57, 15, 44, 2, 8, 56, 2.91898, 101.7738, '2020-01-06 07:44:57', '2020-01-06 07:44:57'),
(13, 57, 17, 44, 2, 10, 56, 2.91878, 101.77383, '2020-01-06 07:45:48', '2020-01-06 07:45:48'),
(14, 57, 18, 44, 2, 11, 56, 2.91908, 101.77482, '2020-01-06 07:47:30', '2020-01-06 07:47:30'),
(15, 57, 19, 44, 2, 12, 56, 2.91891, 101.77485, '2020-01-06 08:18:44', '2020-01-06 08:18:44'),
(16, 57, 20, 44, 2, 13, 56, 2.9196, 101.77555, '2020-01-06 08:19:35', '2020-01-06 08:19:35'),
(17, 57, 21, 44, 2, 13, 56, 2.91963, 101.77596, '2020-01-06 08:20:21', '2020-01-06 08:20:21'),
(18, 57, 22, 44, 2, 14, 56, 2.91979, 101.77553, '2020-01-06 08:22:17', '2020-01-06 08:22:17'),
(19, 57, 23, 44, 2, 14, 56, 2.91981, 101.77596, '2020-01-06 08:23:09', '2020-01-06 08:23:09'),
(20, 57, 24, 44, 2, 15, 56, 2.91913, 101.77559, '2020-01-06 08:24:36', '2020-01-06 08:24:36'),
(21, 57, 25, 44, 2, 15, 56, 2.91917, 101.77595, '2020-01-06 08:25:30', '2020-01-06 08:25:30'),
(22, 57, 26, 44, 2, 16, 56, 2.91896, 101.77561, '2020-01-06 08:26:13', '2020-01-06 08:26:13'),
(23, 57, 27, 44, 2, 16, 56, 2.91901, 101.77597, '2020-01-06 08:38:56', '2020-01-06 08:38:56'),
(24, 57, 28, 44, 2, 17, 56, 2.92026, 101.77558, '2020-01-06 08:39:44', '2020-01-06 08:39:44'),
(25, 57, 29, 44, 2, 17, 56, 2.92026, 101.77558, '2020-01-06 08:43:16', '2020-01-06 08:43:16'),
(26, 57, 30, 44, 2, 17, 56, 2.92026, 101.77558, '2020-01-06 08:56:19', '2020-01-06 08:56:19'),
(27, 57, 31, 44, 2, 17, 56, 2.92026, 101.77558, '2020-01-06 08:57:21', '2020-01-06 08:57:21'),
(28, 57, 32, 44, 2, 17, 56, 2.92026, 101.77558, '2020-01-06 08:58:09', '2020-01-06 08:58:09'),
(29, 57, 33, 44, 2, 17, 56, 2.92044, 101.77558, '2020-01-06 08:58:44', '2020-01-06 08:58:44'),
(30, 57, 34, 44, 2, 17, 56, 2.92044, 101.77558, '2020-01-06 08:59:10', '2020-01-06 08:59:10'),
(31, 57, 35, 44, 2, 17, 56, 2.92044, 101.77558, '2020-01-06 08:59:40', '2020-01-06 08:59:40'),
(32, 57, 36, 44, 2, 17, 56, 2.92044, 101.77558, '2020-01-06 09:00:09', '2020-01-06 09:00:09'),
(33, 57, 37, 44, 2, 17, 56, 2.92044, 101.77558, '2020-01-06 09:00:43', '2020-01-06 09:00:43'),
(34, 57, 38, 44, 4, 19, 56, 2.92658, 101.77828, '2020-01-07 08:19:22', '2020-01-07 08:19:22'),
(35, 57, 39, 44, 4, 20, 56, 2.92635, 101.77845, '2020-01-07 08:20:45', '2020-01-07 08:20:45'),
(36, 57, 40, 44, 4, 21, 56, 2.92618, 101.77861, '2020-01-07 08:21:38', '2020-01-07 08:21:38'),
(37, 57, 41, 44, 4, 22, 56, 2.9261, 101.77875, '2020-01-07 08:22:20', '2020-01-07 08:22:20'),
(38, 57, 42, 44, 4, 23, 56, 2.92607, 101.77884, '2020-01-07 08:23:12', '2020-01-07 08:23:12'),
(39, 57, 43, 44, 4, 24, 56, 2.92619, 101.7789, '2020-01-07 08:24:07', '2020-01-07 08:24:07'),
(40, 57, 44, 44, 4, 25, 56, 2.9263, 101.77878, '2020-01-07 08:24:48', '2020-01-07 08:24:48'),
(41, 57, 45, 44, 4, 26, 56, 2.92645, 101.77862, '2020-01-07 08:26:31', '2020-01-07 08:26:31'),
(42, 57, 46, 44, 4, 27, 56, 2.92658, 101.77851, '2020-01-07 08:31:51', '2020-01-07 08:31:51'),
(43, 57, 47, 44, 4, 28, 56, 2.92669, 101.77848, '2020-01-07 08:32:30', '2020-01-07 08:32:30'),
(44, 57, 48, 44, 4, 29, 56, 2.92746, 101.77677, '2020-01-07 08:33:24', '2020-01-07 08:33:24'),
(45, 57, 49, 44, 4, 29, 56, 2.92768, 101.77687, '2020-01-07 08:36:09', '2020-01-07 08:36:09'),
(46, 57, 50, 44, 4, 29, 56, 2.92776, 101.7771, '2020-01-07 08:37:02', '2020-01-07 08:37:02'),
(47, 57, 51, 44, 4, 29, 56, 2.92777, 101.77746, '2020-01-07 08:37:50', '2020-01-07 08:37:50'),
(48, 57, 52, 44, 4, 30, 56, 2.92767, 101.77774, '2020-01-07 08:38:28', '2020-01-07 08:38:28'),
(49, 57, 53, 44, 4, 31, 56, 2.92751, 101.77711, '2020-01-07 08:39:07', '2020-01-07 08:39:07'),
(50, 57, 54, 44, 3, 32, 56, 2.92404, 101.77983, '2020-01-07 08:39:47', '2020-01-07 08:39:47'),
(51, 57, 55, 44, 3, 33, 56, 2.92429, 101.77997, '2020-01-07 08:44:05', '2020-01-07 08:44:05'),
(52, 57, 56, 44, 3, 34, 56, 2.9243, 101.78047, '2020-01-07 08:44:54', '2020-01-07 08:44:54'),
(53, 57, 57, 44, 3, 35, 56, 2.92433, 101.78095, '2020-01-07 08:45:42', '2020-01-07 08:45:42'),
(54, 57, 58, 44, 3, 36, 56, 2.92474, 101.77945, '2020-01-07 08:46:24', '2020-01-07 08:46:24'),
(55, 57, 59, 44, 3, 37, 56, 2.92502, 101.77936, '2020-01-07 08:47:10', '2020-01-07 08:47:10'),
(57, 57, 143, 44, 3, 38, 56, 2.92533, 101.77933, '2020-01-08 04:47:39', '2020-01-08 04:47:39'),
(58, 57, 75, 44, 3, 39, 56, 2.92464, 101.77974, '2020-01-08 04:48:42', '2020-01-08 04:48:42'),
(59, 57, 63, 44, 3, 40, 56, 2.92456, 101.77986, '2020-01-08 04:49:26', '2020-01-08 04:49:26'),
(60, 57, 77, 44, 3, 41, 56, 2.92486, 101.77974, '2020-01-08 04:51:31', '2020-01-08 04:51:31'),
(61, 57, 78, 44, 3, 42, 56, 2.92485, 101.7799, '2020-01-08 04:52:25', '2020-01-08 04:52:25'),
(62, 57, 79, 44, 3, 43, 56, 2.92458, 101.78004, '2020-01-08 04:53:17', '2020-01-08 04:53:17'),
(63, 57, 80, 44, 3, 44, 56, 2.92462, 101.78025, '2020-01-08 04:54:06', '2020-01-08 04:54:06'),
(64, 57, 60, 44, 3, 45, 56, 2.92478, 101.78007, '2020-01-08 04:55:31', '2020-01-08 04:55:31'),
(65, 57, 61, 44, 3, 46, 56, 2.95477, 101.78029, '2020-01-08 04:56:15', '2020-01-08 04:56:15'),
(66, 57, 62, 44, 3, 47, 56, 2.92454, 101.78103, '2020-01-08 04:57:05', '2020-01-08 04:57:05'),
(67, 57, 76, 44, 3, 49, 56, 2.92466, 101.78112, '2020-01-08 04:57:47', '2020-01-08 04:57:47'),
(68, 57, 64, 44, 3, 50, 56, 2.92462, 101.78083, '2020-01-08 04:58:56', '2020-01-08 04:58:56'),
(69, 57, 65, 44, 3, 51, 56, 2.92474, 101.78091, '2020-01-08 04:59:51', '2020-01-08 04:59:51'),
(70, 57, 66, 44, 3, 52, 56, 2.92483, 101.78113, '2020-01-08 05:00:27', '2020-01-08 05:00:27'),
(71, 57, 67, 44, 3, 53, 56, 2.9249, 101.78099, '2020-01-08 05:01:11', '2020-01-08 05:01:11'),
(72, 57, 68, 44, 3, 54, 56, 2.92494, 101.78078, '2020-01-08 05:02:13', '2020-01-08 05:02:13'),
(73, 57, 69, 44, 3, 55, 56, 2.92508, 101.78091, '2020-01-08 05:03:57', '2020-01-08 05:03:57'),
(74, 57, 70, 44, 3, 56, 56, 2.9251, 101.78072, '2020-01-08 05:04:40', '2020-01-08 05:04:40'),
(75, 57, 71, 44, 3, 57, 56, 2.92523, 101.78081, '2020-01-08 05:05:16', '2020-01-08 05:05:16'),
(76, 57, 72, 44, 1, 1, 56, 2.92677, 101.7892, '2020-01-08 05:08:34', '2020-01-08 05:08:34'),
(77, 57, 73, 44, 1, 2, 56, 2.92826, 101.78835, '2020-01-08 05:09:12', '2020-01-08 05:09:12'),
(78, 57, 74, 44, 1, 2, 56, 2.92781, 101.78866, '2020-01-08 05:10:29', '2020-01-08 05:10:29'),
(79, 57, 81, 44, 1, 2, 56, 2.92707, 101.78841, '2020-01-08 05:11:19', '2020-01-08 05:11:19'),
(80, 57, 82, 44, 1, 2, 56, 2.92618, 101.78965, '2020-01-08 05:12:40', '2020-01-08 05:12:40'),
(81, 57, 83, 44, 1, 2, 56, 2.92604, 101.79016, '2020-01-08 05:13:23', '2020-01-08 05:13:23'),
(82, 57, 84, 44, 1, 2, 56, 2.92591, 101.79064, '2020-01-08 05:16:39', '2020-01-08 05:16:39'),
(83, 57, 85, 44, 1, 2, 56, 2.92655, 101.79051, '2020-01-08 05:17:20', '2020-01-08 05:17:20'),
(84, 57, 86, 44, 1, 2, 56, 2.92678, 101.79096, '2020-01-08 05:18:12', '2020-01-08 05:18:12'),
(85, 57, 87, 44, 1, 2, 56, 2.92649, 101.79106, '2020-01-08 05:19:05', '2020-01-08 05:19:05'),
(86, 57, 88, 44, 9, 58, 56, 2.92894, 101.78186, '2020-01-08 05:19:59', '2020-01-08 05:19:59'),
(87, 57, 89, 44, 9, 58, 56, 2.92956, 101.7821, '2020-01-08 05:20:47', '2020-01-08 05:20:47'),
(88, 57, 90, 44, 9, 58, 56, 2.93016, 101.78231, '2020-01-08 05:21:30', '2020-01-08 05:21:30'),
(89, 57, 91, 44, 9, 58, 56, 2.93048, 101.78278, '2020-01-08 05:22:12', '2020-01-08 05:22:12'),
(90, 57, 92, 44, 1, 1, 56, 2.92917, 101.78456, '2020-01-08 05:22:53', '2020-01-08 05:22:53'),
(91, 57, 93, 44, 9, 58, 56, 2.92995, 101.78362, '2020-01-08 05:23:56', '2020-01-08 05:23:56'),
(92, 57, 94, 44, 9, 58, 56, 2.92962, 101.78368, '2020-01-08 05:24:43', '2020-01-08 05:24:43'),
(93, 57, 95, 44, 10, 60, 56, 2.93248, 101.7835, '2020-01-08 05:25:42', '2020-01-08 05:25:42'),
(94, 57, 96, 44, 10, 60, 56, 2.93263, 101.7835, '2020-01-08 05:26:35', '2020-01-08 05:26:35'),
(95, 57, 97, 44, 10, 60, 56, 2.93231, 101.78336, '2020-01-08 05:27:07', '2020-01-08 05:27:07'),
(96, 57, 98, 44, 10, 60, 56, 2.93235, 101.7832, '2020-01-08 05:27:52', '2020-01-08 05:27:52'),
(97, 57, 99, 44, 10, 60, 56, 2.93258, 101.78328, '2020-01-08 05:28:28', '2020-01-08 05:28:28'),
(98, 57, 100, 44, 10, 60, 56, 2.93248, 101.7831, '2020-01-08 05:29:24', '2020-01-08 05:29:24'),
(99, 57, 101, 44, 10, 60, 56, 2.93234, 101.78293, '2020-01-08 05:30:14', '2020-01-08 05:30:14'),
(100, 57, 102, 44, 10, 60, 56, 2.93222, 101.783, '2020-01-08 05:30:49', '2020-01-08 05:30:49'),
(101, 57, 103, 44, 10, 60, 56, 2.93203, 101.78298, '2020-01-08 05:31:29', '2020-01-08 05:31:29'),
(102, 57, 104, 44, 10, 60, 56, 2.93193, 101.78285, '2020-01-08 05:32:02', '2020-01-08 05:32:02'),
(103, 57, 105, 44, 10, 60, 56, 2.93192, 101.78268, '2020-01-08 05:32:35', '2020-01-08 05:32:35'),
(104, 57, 106, 44, 10, 60, 56, 2.93199, 101.78255, '2020-01-08 05:33:10', '2020-01-08 05:33:10'),
(105, 57, 107, 44, 10, 60, 56, 2.93227, 101.78271, '2020-01-08 05:33:52', '2020-01-08 05:33:52'),
(106, 57, 108, 44, 10, 60, 56, 2.93216, 101.78255, '2020-01-08 05:34:40', '2020-01-08 05:34:40'),
(107, 57, 109, 44, 10, 60, 56, 2.93328, 101.78352, '2020-01-08 05:35:25', '2020-01-08 05:35:25'),
(108, 57, 110, 44, 10, 60, 56, 2.93335, 101.78411, '2020-01-08 05:36:14', '2020-01-08 05:36:14'),
(109, 57, 111, 44, 10, 60, 56, 2.93306, 101.78424, '2020-01-08 05:36:59', '2020-01-08 05:36:59'),
(110, 57, 112, 44, 10, 60, 56, 2.9329, 101.78274, '2020-01-08 05:38:58', '2020-01-08 05:38:58'),
(111, 57, 113, 44, 10, 60, 56, 2.93262, 101.78229, '2020-01-08 05:39:49', '2020-01-08 05:39:49'),
(112, 57, 114, 44, 10, 60, 56, 2.93237, 101.78215, '2020-01-08 05:40:20', '2020-01-08 05:40:20'),
(113, 57, 115, 44, 8, 61, 56, 2.92362, 101.78356, '2020-01-08 05:42:48', '2020-01-08 05:42:48'),
(114, 57, 116, 44, 8, 61, 56, 2.92372, 101.78383, '2020-01-08 05:43:24', '2020-01-08 05:43:24'),
(115, 57, 117, 44, 8, 61, 56, 2.92399, 101.78411, '2020-01-08 05:44:10', '2020-01-08 05:44:10'),
(116, 57, 118, 44, 8, 61, 56, 2.92432, 101.78431, '2020-01-08 05:45:34', '2020-01-08 05:45:34'),
(117, 57, 119, 44, 8, 62, 56, 2.92398, 101.78354, '2020-01-08 06:36:46', '2020-01-08 06:36:46'),
(118, 57, 120, 44, 8, 62, 56, 2.92424, 101.78367, '2020-01-08 06:37:27', '2020-01-08 06:37:27'),
(119, 57, 121, 44, 8, 62, 56, 2.92398, 101.78375, '2020-01-08 06:38:39', '2020-01-08 06:38:39'),
(120, 57, 122, 44, 8, 62, 56, 2.92405, 101.78388, '2020-01-08 06:39:20', '2020-01-08 06:39:20'),
(121, 57, 123, 44, 8, 62, 56, 2.9243, 101.78382, '2020-01-08 06:40:18', '2020-01-08 06:40:18'),
(122, 57, 124, 44, 8, 62, 56, 2.92422, 101.78409, '2020-01-08 06:40:59', '2020-01-08 06:40:59'),
(123, 57, 125, 44, 8, 62, 56, 2.92435, 101.78401, '2020-01-08 06:41:35', '2020-01-08 06:41:35'),
(124, 57, 126, 44, 8, 62, 56, 2.92454, 101.78377, '2020-01-08 06:42:30', '2020-01-08 06:42:30'),
(125, 57, 127, 44, 8, 62, 56, 2.92465, 101.78362, '2020-01-08 06:43:01', '2020-01-08 06:43:01'),
(126, 57, 128, 44, 8, 62, 56, 2.92465, 101.78343, '2020-01-08 06:43:44', '2020-01-08 06:43:44'),
(127, 57, 129, 44, 8, 62, 56, 2.92444, 101.78348, '2020-01-08 06:44:32', '2020-01-08 06:44:32'),
(128, 57, 130, 44, 8, 62, 56, 2.92496, 101.78371, '2020-01-08 06:45:10', '2020-01-08 06:45:10'),
(129, 57, 131, 44, 8, 62, 56, 2.92542, 101.78837, '2020-01-08 06:45:42', '2020-01-08 06:45:42'),
(130, 57, 132, 44, 8, 62, 56, 2.92595, 101.78344, '2020-01-08 06:46:12', '2020-01-08 06:46:12'),
(131, 57, 133, 44, 8, 62, 56, 2.92627, 101.78318, '2020-01-08 06:46:43', '2020-01-08 06:46:43'),
(132, 57, 134, 44, 8, 62, 56, 2.92647, 101.78328, '2020-01-08 06:47:11', '2020-01-08 06:47:11'),
(133, 57, 135, 44, 8, 62, 56, 2.92637, 101.78304, '2020-01-08 06:47:52', '2020-01-08 06:47:52'),
(134, 57, 136, 44, 8, 62, 56, 2.92658, 101.78317, '2020-01-08 06:48:40', '2020-01-08 06:48:40'),
(135, 57, 137, 44, 8, 62, 56, 2.92656, 101.78294, '2020-01-08 06:49:10', '2020-01-08 06:49:10'),
(136, 57, 138, 44, 8, 62, 56, 2.92674, 101.78304, '2020-01-08 06:49:45', '2020-01-08 06:49:45'),
(137, 57, 139, 44, 8, 62, 56, 2.92667, 101.78285, '2020-01-08 06:51:01', '2020-01-08 06:51:01'),
(138, 57, 140, 44, 8, 62, 56, 2.9271, 101.78277, '2020-01-08 06:51:39', '2020-01-08 06:51:39'),
(139, 57, 141, 44, 8, 62, 56, 2.92695, 101.78258, '2020-01-08 06:52:16', '2020-01-08 06:52:16'),
(140, 57, 142, 44, 8, 62, 56, 2.92692, 101.7824, '2020-01-08 08:10:54', '2020-01-08 06:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `chancelleries`
--

CREATE TABLE `chancelleries` (
  `id` int(11) NOT NULL,
  `chancel_code` varchar(255) NOT NULL,
  `chancel_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `coll_code` varchar(10) NOT NULL,
  `coll_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `coll_code`, `coll_name`, `created_at`, `updated_at`) VALUES
(1, 'KKM', 'Kolej Keris Mas', '2019-11-06 03:50:24', '2019-11-06 03:50:24'),
(2, 'KPZ', 'Kolej Pendeta Za’ba', '2019-11-06 03:54:33', '2019-11-06 03:54:33'),
(3, 'KUO', 'Kolej Ungku Omar', '2020-01-06 16:08:36', '2020-01-06 16:08:36'),
(4, 'KBH', 'Kolej Burhanuddin Helmi', '2019-11-06 03:58:05', '2019-11-06 03:58:05'),
(8, 'KAB', 'Kolej Aminuddin Baki', '2020-01-06 16:08:53', '2020-01-06 16:08:53'),
(9, 'KIZ', 'Kolej Ibu Zain', '2020-01-06 15:40:26', '2020-01-06 15:40:26'),
(10, 'KRK', 'Kolej Rahim Kajai', '2020-01-06 15:40:46', '2020-01-06 15:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `college_buildings`
--

CREATE TABLE `college_buildings` (
  `id` int(11) NOT NULL,
  `coll_code` varchar(255) NOT NULL,
  `building_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_buildings`
--

INSERT INTO `college_buildings` (`id`, `coll_code`, `building_name`, `created_at`, `updated_at`) VALUES
(1, '1', 'Kafe Kolej', '2019-12-27 17:59:01', '2019-12-27 17:59:01'),
(2, '1', 'Bangunan Kediaman', '2019-12-27 17:59:30', '2019-12-27 17:59:30'),
(3, '2', 'Blok A1', '2019-12-27 17:59:58', '2019-12-27 17:59:58'),
(4, '2', 'Blok A2', '2019-12-27 18:00:06', '2019-12-27 18:00:06'),
(5, '2', 'Blok C1', '2019-12-27 18:01:04', '2019-12-27 18:01:04'),
(6, '2', 'Blok C2', '2019-12-27 18:01:13', '2019-12-27 18:01:13'),
(7, '2', 'Blok D1', '2019-12-27 18:01:21', '2019-12-27 18:01:21'),
(8, '2', 'Blok D2', '2019-12-27 18:01:29', '2019-12-27 18:01:29'),
(9, '2', 'Blok E1', '2019-12-27 18:01:37', '2019-12-27 18:01:37'),
(10, '2', 'Blok E2', '2019-12-27 18:05:57', '2019-12-27 18:05:57'),
(11, '2', 'Blok F1', '2019-12-27 18:06:06', '2019-12-27 18:06:06'),
(12, '2', 'Blok F2', '2019-12-27 18:06:14', '2019-12-27 18:06:14'),
(13, '2', 'Blok G1', '2019-12-27 18:06:25', '2019-12-27 18:06:25'),
(14, '2', 'Blok G2', '2019-12-27 18:06:34', '2019-12-27 18:06:34'),
(15, '2', 'Blok H1', '2019-12-27 18:09:21', '2019-12-27 18:09:21'),
(16, '2', 'Blok H2', '2019-12-27 18:09:28', '2019-12-27 18:09:28'),
(17, '2', 'Blok KPZ Inn', '2019-12-27 18:09:39', '2019-12-27 18:09:39'),
(19, '4', 'KBH Flatlet P K10B', '2020-01-06 15:34:49', '2020-01-06 15:34:49'),
(20, '4', 'KBH Flatlet P K10C', '2020-01-06 15:35:19', '2020-01-06 15:35:19'),
(21, '4', 'KBH Flatlet P K10D', '2020-01-06 15:35:34', '2020-01-06 15:35:34'),
(22, '4', 'KBH Flatlet P K10E', '2020-01-06 15:35:51', '2020-01-06 15:35:51'),
(23, '4', 'KBH Flatlet P K10F', '2020-01-06 15:36:06', '2020-01-06 15:36:06'),
(24, '4', 'KBH Flatlet P K10G', '2020-01-06 15:36:39', '2020-01-06 15:36:39'),
(25, '4', 'KBH Flatlet P K10H', '2020-01-06 15:36:56', '2020-01-06 15:36:56'),
(26, '4', 'KBH Flatlet P K10J', '2020-01-06 15:37:10', '2020-01-06 15:37:10'),
(27, '4', 'KBH Flatlet P K10K', '2020-01-06 15:37:52', '2020-01-06 15:37:52'),
(28, '4', 'KBH Flatlet P K10L', '2020-01-06 15:38:12', '2020-01-06 15:38:12'),
(29, '4', 'KBH Flatlet Lelaki', '2020-01-06 15:38:32', '2020-01-06 15:38:32'),
(30, '4', 'KBH Kafe', '2020-01-06 15:39:02', '2020-01-06 15:39:02'),
(31, '4', 'KBH Blok Lelaki', '2020-01-06 15:39:19', '2020-01-06 15:39:19'),
(32, '3', 'KUO Blok 1', '2020-01-06 15:41:36', '2020-01-06 15:41:36'),
(33, '3', 'KUO Blok 2', '2020-01-06 15:41:51', '2020-01-06 15:41:51'),
(34, '3', 'KUO Blok 3', '2020-01-06 15:42:13', '2020-01-06 15:42:13'),
(35, '3', 'KUO Blok 4', '2020-01-06 15:43:22', '2020-01-06 15:43:22'),
(36, '3', 'KUO Blok 5', '2020-01-06 15:44:34', '2020-01-06 15:44:34'),
(37, '3', 'KUO Blok 6', '2020-01-06 15:45:20', '2020-01-06 15:45:20'),
(38, '3', 'KUO Blok 7', '2020-01-06 15:45:53', '2020-01-06 15:45:53'),
(39, '3', 'KUO Flatlet 1', '2020-01-06 15:46:21', '2020-01-06 15:46:21'),
(40, '3', 'KUO Flatlet 2', '2020-01-06 15:46:41', '2020-01-06 15:46:41'),
(41, '3', 'KUO Flatlet 3', '2020-01-06 15:46:55', '2020-01-06 15:46:55'),
(42, '3', 'KUO Flatlet 4', '2020-01-06 15:47:08', '2020-01-06 15:47:08'),
(43, '3', 'KUO Flatlet 5', '2020-01-06 15:47:25', '2020-01-06 15:47:25'),
(44, '3', 'KUO Flatlet 6', '2020-01-06 15:47:44', '2020-01-06 15:47:44'),
(45, '3', 'KUO Flatlet 7', '2020-01-06 15:48:01', '2020-01-06 15:48:01'),
(46, '3', 'KUO Flatlet 8', '2020-01-06 15:48:21', '2020-01-06 15:48:21'),
(47, '3', 'KUO Flatlet 9', '2020-01-06 15:48:40', '2020-01-06 15:48:40'),
(49, '3', 'KUO Flatlet 10', '2020-01-06 16:09:18', '2020-01-06 16:09:18'),
(50, '3', 'KUO Flatlet 11', '2020-01-06 16:10:44', '2020-01-06 16:10:44'),
(51, '3', 'KUO Flatlet 12', '2020-01-06 16:11:28', '2020-01-06 16:11:28'),
(52, '3', 'KUO Flatlet 13', '2020-01-06 16:12:47', '2020-01-06 16:12:47'),
(53, '3', 'KUO Flatlet 14', '2020-01-06 16:12:58', '2020-01-06 16:12:58'),
(54, '3', 'KUO Flatlet 15', '2020-01-06 16:13:10', '2020-01-06 16:13:10'),
(55, '3', 'KUO Flatlet 16', '2020-01-06 16:14:43', '2020-01-06 16:14:43'),
(56, '3', 'KUO Flatlet 17', '2020-01-06 16:14:55', '2020-01-06 16:14:55'),
(57, '3', 'KUO Flatlet 18', '2020-01-06 16:15:10', '2020-01-06 16:15:10'),
(58, '9', 'Bangunan Kediaman', '2020-01-07 05:06:48', '2020-01-07 05:06:48'),
(59, '9', 'Kafetaria', '2020-01-07 05:08:05', '2020-01-07 05:08:05'),
(60, '10', 'Bangunan Kediaman', '2020-01-07 05:08:34', '2020-01-07 05:08:34'),
(61, '8', 'KAB Rumah Tetamu', '2020-01-07 05:09:34', '2020-01-07 05:09:34'),
(62, '8', 'Bangunan Kediaman', '2020-01-07 05:11:29', '2020-01-07 05:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `complaint_title` varchar(255) NOT NULL,
  `complaint_content` text NOT NULL,
  `complaint_img` varchar(255) NOT NULL,
  `complaint_type` int(11) NOT NULL COMMENT 'jenis komplen',
  `complaint_type_id` int(11) NOT NULL COMMENT 'Jika aduan berkaitan tong sampah, simpan id bin',
  `incident_location` int(11) NOT NULL COMMENT 'lokasi kejadian',
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contractors`
--

CREATE TABLE `contractors` (
  `id` int(11) NOT NULL,
  `comp_no` varchar(255) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `comp_addr` text NOT NULL,
  `comp_tel` varchar(12) NOT NULL,
  `comp_fax` varchar(14) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contractorstaff_details`
--

CREATE TABLE `contractorstaff_details` (
  `id` int(11) NOT NULL,
  `member_id` varchar(4) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `ic_no` varchar(14) NOT NULL,
  `phone_no` varchar(14) NOT NULL,
  `usergroup_id` int(2) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_staffs`
--

CREATE TABLE `contractor_staffs` (
  `id` int(11) NOT NULL,
  `contractor_id` int(11) NOT NULL,
  `contractorstaff_id` varchar(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_vehicles`
--

CREATE TABLE `contractor_vehicles` (
  `id` int(11) NOT NULL,
  `contractor_id` int(11) NOT NULL,
  `plat_no` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datagroups`
--

CREATE TABLE `datagroups` (
  `id` int(11) NOT NULL,
  `data_code` varchar(255) NOT NULL,
  `data_desc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datagroups`
--

INSERT INTO `datagroups` (`id`, `data_code`, `data_desc`, `created_at`, `updated_at`) VALUES
(1, 'bin_type', 'Type of Bin', '2020-03-12 06:03:20', '2020-03-12 06:03:20'),
(2, 'wdh_type', 'Type of Waste Disposal House', '2020-03-12 06:04:50', '2020-03-12 06:04:50'),
(3, 'usergroup_type', 'Type of User Group', '2020-03-12 06:05:07', '2020-03-12 06:05:07'),
(4, 'bin_class', 'Class of Garbage Bin', '2020-03-12 06:05:41', '2020-03-12 06:05:41'),
(5, 'type_complaint', 'Type of Complaint', '2020-03-12 06:05:54', '2020-03-12 06:05:54'),
(6, 'zone_collection', 'Zone of Waste Collection', '2020-03-12 06:06:10', '2020-03-12 06:06:10'),
(8, 'main_location_type', 'Type of Main Location', '2020-03-12 06:06:24', '2020-03-12 06:06:24'),
(11, 'bin_status', 'Status of Garbage Bin', '2020-03-12 06:06:44', '2020-03-12 06:06:44'),
(12, 'bin_loc_type', 'Type of Garbage Bin\'s Location', '2020-03-12 06:07:49', '2020-03-12 06:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `datasets`
--

CREATE TABLE `datasets` (
  `id` int(11) NOT NULL,
  `datagroup_code` int(11) NOT NULL,
  `dataset_desc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datasets`
--

INSERT INTO `datasets` (`id`, `datagroup_code`, `dataset_desc`, `created_at`, `updated_at`) VALUES
(1, 3, 'Kontraktor', '2019-12-18 09:14:28', '2019-12-18 09:14:28'),
(2, 3, 'Pengurusan', '2019-12-18 09:15:06', '2019-12-18 09:15:06'),
(3, 3, 'Pelajar', '2019-12-18 09:18:13', '2019-12-18 09:18:13'),
(4, 3, 'Staf UKM', '2019-12-19 05:02:38', '2019-12-19 05:02:38'),
(5, 2, 'MGB120I', '2019-12-19 05:23:11', '2019-12-19 05:23:11'),
(7, 2, 'Tong Konkrit', '2019-12-19 05:24:04', '2019-12-19 05:24:04'),
(8, 2, 'MGB', '2019-12-19 05:27:23', '2019-12-19 05:27:23'),
(9, 2, 'Rumah Sampah', '2019-12-19 05:29:46', '2019-12-19 05:29:46'),
(10, 2, 'MGB660I', '2019-12-19 05:30:26', '2019-12-19 05:30:26'),
(12, 1, 'Tong Sampah Hijau Plastik', '2019-12-19 05:37:25', '2019-12-19 05:37:25'),
(13, 1, 'MGB120 (tong roda)', '2019-12-19 05:52:39', '2019-12-19 05:52:39'),
(15, 1, 'Tong Hitam Bulat', '2019-12-19 05:39:30', '2019-12-19 05:39:30'),
(16, 1, 'Orkid 120', '2019-12-19 05:40:02', '2019-12-19 05:40:02'),
(17, 1, 'Tong Petak', '2019-12-19 05:52:20', '2019-12-19 05:52:20'),
(18, 1, 'MGB660', '2019-12-19 05:41:21', '2019-12-19 05:41:21'),
(19, 1, 'Tong Kitar Semula', '2019-12-19 05:42:29', '2019-12-19 05:42:29'),
(20, 1, 'Jasmine 85', '2019-12-19 05:52:11', '2019-12-19 05:52:11'),
(21, 1, 'Tong Petak 120', '2019-12-19 05:46:17', '2019-12-19 05:46:17'),
(24, 1, 'Tong Sampah Hitam', '2019-12-19 05:54:00', '2019-12-19 05:54:00'),
(25, 1, 'Tong Stainless Steel', '2019-12-19 05:56:01', '2019-12-19 05:56:01'),
(26, 1, 'Tong Sampah Hijau', '2019-12-19 05:56:57', '2019-12-19 05:56:57'),
(27, 1, 'Tong Sampah Biasa', '2019-12-19 05:57:41', '2019-12-19 05:57:41'),
(28, 1, 'Tong Sampah Oren', '2019-12-19 05:58:37', '2019-12-19 05:58:37'),
(29, 4, 'Plastik', '2019-12-19 07:16:24', '2019-12-19 07:16:24'),
(30, 4, 'Aluminium', '2019-12-19 07:16:41', '2019-12-19 07:16:41'),
(31, 4, 'Kertas', '2019-12-19 07:17:22', '2019-12-19 07:17:22'),
(32, 4, 'Kaca', '2019-12-19 07:17:47', '2019-12-19 07:17:47'),
(33, 4, 'Lain-lain', '2019-12-19 07:18:08', '2019-12-19 07:18:08'),
(34, 4, 'Sisa Organik', '2019-12-19 07:18:31', '2019-12-19 07:18:31'),
(35, 5, 'Masalah Laluan Kutipan', '2019-12-19 07:21:18', '2019-12-19 07:21:18'),
(36, 5, 'Masalah Tong Sampah', '2019-12-19 07:20:53', '2019-12-19 07:20:53'),
(37, 6, 'Zon 1', '2019-12-19 08:53:47', '2019-12-19 08:53:47'),
(38, 6, 'Zon 2', '2019-12-19 08:54:17', '2019-12-19 08:54:17'),
(39, 1, 'Tong Oren Bulat', '2019-12-19 09:07:02', '2019-12-19 09:07:02'),
(40, 1, 'Tong Putih Separa Bulat', '2019-12-19 09:07:46', '2019-12-19 09:07:46'),
(41, 1, 'Tong Aluminium', '2019-12-19 09:09:16', '2019-12-19 09:09:16'),
(42, 2, 'Tong Beroda', '2019-12-19 09:10:36', '2019-12-19 09:10:36'),
(43, 1, 'Tong Kitar Semula Aluminium', '2019-12-19 09:17:10', '2019-12-19 09:17:10'),
(44, 8, 'College', '2020-03-12 05:23:20', '2020-03-12 05:23:20'),
(45, 8, 'Faculty', '2020-03-12 05:23:29', '2020-03-12 05:23:29'),
(46, 8, 'Building/Other Location', '2020-03-12 05:23:45', '2020-03-12 05:23:45'),
(47, 8, 'Institute', '2020-03-12 05:24:00', '2020-03-12 05:24:00'),
(48, 8, 'Chancellery', '2020-03-12 05:24:10', '2020-03-12 05:24:10'),
(49, 8, 'Library and Main Office', '2020-03-12 05:24:35', '2020-03-12 05:24:35'),
(50, 9, 'Kafe Kolej', '2019-12-30 08:07:04', '2019-12-30 08:07:04'),
(51, 10, 'Kolej Keris Mas', '2019-12-30 08:16:49', '2019-12-30 08:16:49'),
(52, 10, 'Kolej Pendeta Za\'ba', '2019-12-30 08:10:39', '2019-12-30 08:10:39'),
(53, 10, 'Kolej Aminuddin Baki', '2019-12-30 08:10:56', '2019-12-30 08:10:56'),
(54, 10, 'Kolej Burhanuddin Helmi', '2019-12-30 08:11:41', '2019-12-30 08:11:41'),
(55, 11, 'Full', '2020-03-12 00:31:51', '2020-03-12 00:31:51'),
(56, 11, 'Empty', '2020-03-12 00:32:01', '2020-03-12 00:32:01'),
(57, 12, 'Inside Building', '2020-03-12 05:22:37', '2020-03-12 05:22:37'),
(58, 12, 'Waste Disposal House', '2020-03-12 05:22:51', '2020-03-12 05:22:51'),
(59, 1, 'Tong Sampah Beroda', '2020-01-07 07:29:11', '2020-01-07 07:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `fac_code` varchar(10) NOT NULL,
  `fac_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `fac_code`, `fac_name`, `created_at`, `updated_at`) VALUES
(1, 'FTSM', 'Fakulti Teknologi dan Sains Maklumat', '2019-12-04 08:24:20', '2019-12-04 08:24:20'),
(2, 'FKAB_01', 'Fakulti Kejuruteraan dan Alam Bina (Baru)', '2019-12-26 08:23:32', '2019-12-26 08:23:32'),
(3, 'FPEND', 'Fakulti Pendidikan', '2019-12-19 08:09:49', '2019-12-19 08:09:49'),
(4, 'FPI', 'Fakulti Pengajian Islam', '2019-12-19 08:10:11', '2019-12-19 08:10:11'),
(6, 'FUU', 'Fakulti Undang-Undang', '2019-12-19 08:15:19', '2019-12-19 08:15:19'),
(7, 'FKAB_02', 'Fakulti Kejuruteraan dan Alam Bina (Lama)', '2019-12-26 08:27:36', '2019-12-26 08:27:36'),
(8, 'FSSK', 'Fakulti Sains Sosial dan Kemanusiaan', '2019-12-27 08:34:26', '2019-12-27 08:34:26'),
(9, 'FST', 'Fakulti Sains dan Teknologi', '2019-12-27 08:37:30', '2019-12-27 08:37:30'),
(10, 'UKM-GSB', 'UKM-GSB Pusat Pengajian Siswazah Perniagaan', '2020-01-07 05:26:10', '2020-01-07 05:26:10'),
(11, 'PERMATA', 'Pusat GENIUS@Pintar Negara, UKM', '2020-01-07 05:40:47', '2020-01-07 05:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_buildings`
--

CREATE TABLE `faculty_buildings` (
  `id` int(11) NOT NULL,
  `fac_code` int(11) NOT NULL,
  `building_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_buildings`
--

INSERT INTO `faculty_buildings` (`id`, `fac_code`, `building_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dewan Kuliah', '2019-12-26 07:42:10', '2019-12-26 07:42:10'),
(2, 1, 'Blok B', '2019-12-26 07:48:57', '2019-12-26 07:48:57'),
(3, 1, 'Blok C', '2019-12-26 07:49:10', '2019-12-26 07:49:10'),
(4, 1, 'Blok G', '2019-12-26 07:54:50', '2019-12-26 07:54:50'),
(5, 1, 'Blok G depan Kafetaria', '2019-12-26 07:55:15', '2019-12-26 07:55:15'),
(6, 1, 'Blok H', '2019-12-26 07:55:46', '2019-12-26 07:55:46'),
(7, 2, 'Tepi Tangga', '2019-12-26 08:23:43', '2019-12-26 08:23:43'),
(8, 2, 'Pejabat Jabatan Mekanik', '2019-12-26 08:23:52', '2019-12-26 08:23:52'),
(9, 2, 'Pejabat Jabatan Kejuruteraan Awam', '2019-12-26 08:24:05', '2019-12-26 08:24:05'),
(10, 2, 'Depan Lif', '2019-12-26 08:24:56', '2019-12-26 08:24:56'),
(11, 2, 'Studio 3', '2019-12-26 08:25:05', '2019-12-26 08:25:05'),
(13, 2, 'Arkib Seni Bina', '2019-12-26 08:25:25', '2019-12-26 08:25:25'),
(14, 7, 'Kafetaria', '2019-12-26 08:28:14', '2019-12-26 08:28:14'),
(15, 7, 'BS 3', '2019-12-26 08:28:54', '2019-12-26 08:28:54'),
(16, 2, 'Laman', '2019-12-26 08:29:08', '2019-12-26 08:29:08'),
(17, 7, 'Bilik Chem', '2019-12-26 08:30:42', '2019-12-26 08:30:42'),
(18, 7, 'Makmal Tek. Proses Biorefineri', '2019-12-26 08:31:13', '2019-12-26 08:31:13'),
(19, 7, 'Dewan Kuliah 4', '2019-12-26 08:31:48', '2019-12-26 08:31:48'),
(20, 7, 'Dewan Kuliah 5', '2019-12-26 08:32:01', '2019-12-26 08:32:01'),
(21, 7, 'Dewan Kuliah 6', '2019-12-26 08:32:19', '2019-12-26 08:32:19'),
(22, 7, 'Dewan Kuliah 7', '2019-12-26 08:32:49', '2019-12-26 08:32:49'),
(23, 7, 'Bilik Pensyarah', '2019-12-26 08:33:09', '2019-12-26 08:33:09'),
(24, 7, 'Tandas Khas', '2019-12-26 08:33:38', '2019-12-26 08:33:38'),
(25, 7, 'Pintu Belakang DK1', '2019-12-27 04:46:17', '2019-12-27 04:46:17'),
(26, 7, 'Pintu Belakang DK2', '2019-12-27 04:46:46', '2019-12-27 04:46:46'),
(27, 7, 'Pintu Belakang Surau Perempuan', '2019-12-27 04:47:31', '2019-12-27 04:47:31'),
(28, 7, 'Tandas Perempuan', '2019-12-27 04:47:57', '2019-12-27 04:47:57'),
(29, 7, 'Kawasan Makmal', '2019-12-27 04:48:27', '2019-12-27 04:48:27'),
(30, 7, 'Foyer Bawah', '2019-12-27 08:23:53', '2019-12-27 08:23:53'),
(31, 7, 'Foyer Atas', '2019-12-27 08:24:05', '2019-12-27 08:24:05'),
(32, 3, 'Kafetaria', '2019-12-27 08:25:38', '2019-12-27 08:25:38'),
(33, 3, 'Linguistik', '2019-12-27 08:26:18', '2019-12-27 08:26:18'),
(34, 3, 'Sebelah Ramp', '2019-12-27 08:26:43', '2019-12-27 08:26:43'),
(35, 3, 'Sebelah Pondok', '2019-12-27 08:26:55', '2019-12-27 08:26:55'),
(36, 4, 'Bangunan Utama', '2019-12-27 08:27:33', '2019-12-27 08:27:33'),
(37, 2, 'Bangunan Utama', '2019-12-27 08:28:10', '2019-12-27 08:28:10'),
(38, 7, 'Bangunan Utama', '2019-12-27 08:31:19', '2019-12-27 08:31:19'),
(39, 3, 'Bangunan Utama', '2019-12-27 08:31:45', '2019-12-27 08:31:45'),
(40, 1, 'Bangunan Utama', '2019-12-27 08:32:54', '2019-12-27 08:32:54'),
(41, 6, 'Bangunan Utama', '2019-12-27 08:33:32', '2019-12-27 08:33:32'),
(42, 6, 'Perpustakaan', '2019-12-27 08:33:50', '2019-12-27 08:33:50'),
(43, 6, 'MOOC Court', '2019-12-27 08:34:02', '2019-12-27 08:34:02'),
(44, 8, 'Bangunan Utama', '2019-12-27 08:35:18', '2019-12-27 08:35:18'),
(45, 8, 'Depan Pusat Sumber', '2019-12-27 08:35:37', '2019-12-27 08:35:37'),
(46, 8, 'Bilik Pensyarah', '2019-12-27 08:35:57', '2019-12-27 08:35:57'),
(47, 8, 'Gerai Makanan', '2019-12-27 08:36:26', '2019-12-27 08:36:26'),
(48, 9, 'Bangunan Sains Geologi', '2019-12-27 08:38:03', '2019-12-27 08:38:03'),
(49, 9, 'Bangunan Sains Matematik', '2019-12-27 08:38:24', '2019-12-27 08:38:24'),
(51, 10, 'Bangunan Utama', '2020-01-07 05:36:09', '2020-01-07 05:36:09'),
(52, 10, 'Depan Pusat Pelajar', '2020-01-07 05:36:34', '2020-01-07 05:36:34'),
(53, 10, 'Bilik Seminar 1', '2020-01-07 05:36:51', '2020-01-07 05:36:51'),
(54, 10, 'Bilik Seminar 2', '2020-01-07 05:37:07', '2020-01-07 05:37:07'),
(55, 10, 'Depan Tangga', '2020-01-07 05:37:24', '2020-01-07 05:37:24'),
(56, 10, 'Blok B', '2020-01-07 05:37:37', '2020-01-07 05:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(11) NOT NULL,
  `insti_code` varchar(20) NOT NULL,
  `insti_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `insti_code`, `insti_name`, `created_at`, `updated_at`) VALUES
(1, 'SELFUEL', 'Institut Sel Fuel', '2019-12-04 05:21:57', '2019-12-04 05:21:57'),
(5, 'IVI', 'Institut Informasi Visual', '2019-12-04 07:52:50', '2019-12-04 07:52:50'),
(11, 'SERI', 'Institut Penyelidikan Tenaga Suria', '2020-01-07 05:13:14', '2020-01-07 05:13:14'),
(12, 'IKMAS', 'Institut Kajian Malaysia dan Antarabangsa', '2020-01-07 05:15:19', '2020-01-07 05:15:19'),
(13, 'INBIOSIS', 'Institut Biologi Sistem', '2020-01-07 05:19:29', '2020-01-07 05:19:29'),
(14, 'HADHARI', 'Institut Islam Hadhari', '2020-01-07 05:20:13', '2020-01-07 05:20:13'),
(15, 'IPI', 'Institut Perubahan Iklim', '2020-01-07 05:21:18', '2020-01-07 05:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `institute_buildings`
--

CREATE TABLE `institute_buildings` (
  `id` int(11) NOT NULL,
  `insti_code` int(11) NOT NULL,
  `building_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `location_type` int(11) NOT NULL COMMENT '0-Kafe, 1- Bangunan Utama',
  `is_college` int(11) DEFAULT NULL COMMENT 'Jika jenis lokasi berjenis kolej kediaman, simpan id kolej',
  `is_fac` int(11) DEFAULT NULL COMMENT 'Jika jenis lokasi berjenis fakulti, simpan id fakulti',
  `is_institute` int(11) DEFAULT NULL COMMENT 'Jika jenis lokasi berjenis institute, simpan id institute',
  `is_main_library` int(11) DEFAULT NULL COMMENT 'Jika jenis lokasi main office dn library',
  `is_chancellory` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menu_code` varchar(2) NOT NULL,
  `menu_bm` varchar(255) NOT NULL,
  `menu_bi` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `location` int(1) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `office_libraries`
--

CREATE TABLE `office_libraries` (
  `id` int(11) NOT NULL,
  `officelib_code` varchar(255) NOT NULL,
  `officelib_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `other_buildings`
--

CREATE TABLE `other_buildings` (
  `id` int(11) NOT NULL,
  `building_code` varchar(255) NOT NULL,
  `building_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_buildings`
--

INSERT INTO `other_buildings` (`id`, `building_code`, `building_name`, `created_at`, `updated_at`) VALUES
(1, 'STN_KOM', 'Stesen Komuter', '2019-12-26 06:30:24', '2019-12-26 06:30:24'),
(2, 'BLOK_KAYU', 'Blok Rumah Kayu', '2019-12-26 06:30:57', '2019-12-26 06:30:57'),
(3, 'STN_ELEKTRIK', 'Stesen Janakuasa Elektrik', '2019-12-26 06:31:43', '2019-12-26 06:31:43'),
(4, 'FP1D', 'Tapak Perkomposan (Belakan Fren)', '2019-12-26 06:57:14', '2019-12-26 06:57:14'),
(5, 'PURI', 'Puri Pujangga', '2019-12-26 06:58:07', '2019-12-26 06:58:07'),
(6, 'STADIUM', 'Stadium Universiti', '2019-12-26 06:58:30', '2019-12-26 06:58:30'),
(7, 'RT1E', 'Kompleks Rumah Tumbuhan', '2019-12-26 06:59:33', '2019-12-26 06:59:33'),
(8, 'MASJID', 'Masjid Universiti', '2019-12-26 07:01:11', '2019-12-26 07:01:11'),
(9, 'R_HAIWAN', 'Kompleks Rumah Haiwan', '2019-12-26 07:02:03', '2019-12-26 07:02:03'),
(10, 'TUNAS', 'Tunas Permata Pintar', '2019-12-26 07:03:09', '2019-12-26 07:03:09'),
(11, 'FUTSAL', 'Gelanggang Futsal', '2019-12-26 07:05:43', '2019-12-26 07:05:43'),
(12, 'SQUASH', 'Gelanggang Squash', '2019-12-26 07:06:09', '2019-12-26 07:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `route_details`
--

CREATE TABLE `route_details` (
  `id` int(11) NOT NULL,
  `origin_addresses` varchar(255) NOT NULL,
  `destination_addresses` varchar(255) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0- Ada Gangguan, 1- Lancar',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `ug_code` varchar(5) NOT NULL,
  `ug_desc` varchar(255) NOT NULL,
  `ug_type` int(1) NOT NULL COMMENT '0-Management, 1-Contractor',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`id`, `ug_code`, `ug_desc`, `ug_type`, `created_at`, `updated_at`) VALUES
(1, 'SA', 'Super Admin', 4, '2019-12-19 05:13:11', '2019-12-19 05:13:11'),
(2, 'KON', 'Kontraktor', 1, '2019-12-03 07:40:40', '2019-12-03 07:40:40'),
(7, 'LAN', 'Landskap', 2, '2019-12-19 05:12:59', '2019-12-19 05:12:59'),
(8, 'PUB', 'Awam', 2, '2019-12-19 05:12:47', '2019-12-19 05:12:47'),
(9, 'STU', 'Pelajar', 3, '2019-12-19 05:12:31', '2019-12-19 05:12:31'),
(10, 'STA', 'Staf', 1, '2019-12-19 05:13:23', '2019-12-19 05:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usergroup_id` int(2) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `usergroup_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 'M001', 'programmer', 1, '$2y$10$8wCZsZRDaICigN//j/kpRutLqDHws3tPEjTR7kEKgH9zLtpjxt9tq', '2019-10-10 23:06:57', '2019-10-10 23:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `wastedisposalhouses`
--

CREATE TABLE `wastedisposalhouses` (
  `id` int(11) NOT NULL,
  `wdh_name` varchar(255) NOT NULL,
  `wdh_type` int(1) NOT NULL COMMENT 'rujuk table gb_datagroup dn gb_dataset',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wastedisposalhouses`
--

INSERT INTO `wastedisposalhouses` (`id`, `wdh_name`, `wdh_type`, `created_at`, `updated_at`) VALUES
(1, 'SERI_01', 5, '2019-12-25 16:07:47', '2019-12-25 16:07:47'),
(2, 'SERI_02', 5, '2019-12-25 16:09:02', '2019-12-25 16:09:02'),
(3, 'SERI_03', 5, '2019-12-25 16:10:04', '2019-12-25 16:10:04'),
(4, 'SERI_04', 5, '2019-12-25 16:10:21', '2019-12-25 16:10:21'),
(5, 'UPA1-MGB660', 10, '2019-12-25 16:14:19', '2019-12-25 16:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audittrails`
--
ALTER TABLE `audittrails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bins`
--
ALTER TABLE `bins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bin_locations`
--
ALTER TABLE `bin_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chancelleries`
--
ALTER TABLE `chancelleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_buildings`
--
ALTER TABLE `college_buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractors`
--
ALTER TABLE `contractors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractorstaff_details`
--
ALTER TABLE `contractorstaff_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractor_staffs`
--
ALTER TABLE `contractor_staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractor_vehicles`
--
ALTER TABLE `contractor_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datagroups`
--
ALTER TABLE `datagroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasets`
--
ALTER TABLE `datasets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_buildings`
--
ALTER TABLE `faculty_buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_buildings`
--
ALTER TABLE `institute_buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_libraries`
--
ALTER TABLE `office_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_buildings`
--
ALTER TABLE `other_buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_details`
--
ALTER TABLE `route_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wastedisposalhouses`
--
ALTER TABLE `wastedisposalhouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audittrails`
--
ALTER TABLE `audittrails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;

--
-- AUTO_INCREMENT for table `bins`
--
ALTER TABLE `bins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `bin_locations`
--
ALTER TABLE `bin_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `chancelleries`
--
ALTER TABLE `chancelleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `college_buildings`
--
ALTER TABLE `college_buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contractors`
--
ALTER TABLE `contractors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contractorstaff_details`
--
ALTER TABLE `contractorstaff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contractor_staffs`
--
ALTER TABLE `contractor_staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contractor_vehicles`
--
ALTER TABLE `contractor_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datagroups`
--
ALTER TABLE `datagroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `datasets`
--
ALTER TABLE `datasets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculty_buildings`
--
ALTER TABLE `faculty_buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `institute_buildings`
--
ALTER TABLE `institute_buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `office_libraries`
--
ALTER TABLE `office_libraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_buildings`
--
ALTER TABLE `other_buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_details`
--
ALTER TABLE `route_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wastedisposalhouses`
--
ALTER TABLE `wastedisposalhouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
