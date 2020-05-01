-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Waktu pembuatan: 01 Bulan Mei 2020 pada 18.58
-- Versi server: 5.7.28
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2-simpleapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id_booking` int(255) NOT NULL AUTO_INCREMENT,
  `nama_booking` varchar(255) NOT NULL,
  `tanggal_booking` date NOT NULL,
  `tanggal_checkout` date NOT NULL,
  PRIMARY KEY (`id_booking`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1588148622),
('m130524_201442_init', 1588148625),
('m190124_110200_add_verification_token_column_to_user_table', 1588148626);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(25) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'P8fkpsuZRM2GijwXg1tYXJkrVCL0vyaA', '$2y$13$Bqj.7SEXIES8JXusJaVOBeZSxucNf2LXTebByiQyI/uaMlzc4i5ne', NULL, 'admin@admin.com', 9, 1588149398, 1588149398, 'kaNiHTvegRxo6WtJBjP-CAVPj4YmOWUX_1588149398'),
(2, 'test', 'sTOtHxWxJZ4LKF7XXUZ6ssafs--r2n2w', '$2y$13$M74JTtDlxfCceZjHHLxGRO1BMk6hyD0/AjMcvKftWLuyoiOh67R8m', NULL, 'test@test.com', 9, 1588149625, 1588149625, 'MUtRAC6_3SqdSF7E9zTNG9tOF2d7ub7c_1588149625'),
(3, 'aa', 'aG6l1o-8H2ZhB6Hx0KpFUCIlnnaeyDMW', '$2y$13$2DQcdBGBZOpERhS22dwoceb6jt6aoKpb1VWDrlIRQMKOKP86EEqb.', NULL, 'admin12@admin.com', 1, 1588149770, 1588149770, 'TGXvZhNTZfN4XCPdjPMlpa5Cc6Ptryof_1588149770'),
(4, 'clouddark', '7YzE0JcH6p77h89DeyoAbbIbJjykmJ_5', '$2y$13$GaSHnS3XeX5Ecd3a59suO.kNeUVbVkYWlUq5sm0giUhOJS7nf6jaS', NULL, 'clouddark1798@gmail.com', 10, 1588224304, 1588224304, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
