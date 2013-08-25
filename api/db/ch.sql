-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 25 Agu 2013 pada 14.46
-- Versi Server: 5.6.12-log
-- Versi PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `ch`
--
CREATE DATABASE IF NOT EXISTS `ch` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ch`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `creators`
--

CREATE TABLE IF NOT EXISTS `creators` (
  `creator_id` bigint(9) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` text,
  `description` text NOT NULL,
  `autosave` tinyint(1) NOT NULL,
  PRIMARY KEY (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `creators`
--

INSERT INTO `creators` (`creator_id`, `title`, `type`, `image`, `description`, `autosave`) VALUES
(1377345120349, 'HTML5, Learning 24 hours, Contest', 'banner', 'http://dev.angularjs/_learn_/require-angular-banner-creator-master/images/upload/1377345120349/banner_like.jpg', 'HTML5 learning courses 24 hours', 1),
(1377408793809, 'HTML5, Company Contest, Contest', 'banner', 'images/upload/1377408793809/banner_like.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, fugit hic tempora dolorem non sunt incidunt velit quam distinctio cum.', 1),
(1377409082277, 'HTML5, Company Contest, Contest', 'banner', 'images/upload/1377409082277/banner_like.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, fugit hic tempora dolorem non sunt incidunt velit quam distinctio cum.', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `creator_meta`
--

CREATE TABLE IF NOT EXISTS `creator_meta` (
  `cmeta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(9) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`cmeta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `creator_meta`
--

INSERT INTO `creator_meta` (`cmeta_id`, `creator_id`, `meta_key`, `meta_value`) VALUES
(1, 1377345120349, 'mtitle', 'a:3:{s:4:"text";s:33:"HTML5, Learning 24 hours, Contest";s:5:"limit";i:17;s:7:"counter";i:50;}'),
(2, 1377345120349, 'mdescription', 'a:3:{s:4:"text";s:133:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, fugit hic tempora dolorem non sunt incidunt velit quam distinctio cum.";s:5:"limit";i:122;s:7:"counter";i:255;}'),
(3, 1377345120349, 'background', 'a:5:{s:6:"enable";b:0;s:4:"type";s:1:"1";s:3:"set";s:5:"grass";s:8:"uploaded";b:0;s:5:"image";s:0:"";}'),
(4, 1377345120349, 'logo', 'a:8:{s:4:"hide";b:0;s:11:"placeholder";b:1;s:1:"w";i:122;s:1:"h";i:80;s:8:"uploaded";b:1;s:5:"image";s:36:"images/upload/1377345120349/logo.png";s:1:"x";i:25;s:1:"y";i:10;}'),
(5, 1377345120349, 'prize', 'a:4:{s:5:"title";s:19:"This Month''s Prizes";s:3:"one";a:5:{s:4:"text";s:18:"Comic the Avengers";s:5:"limit";i:75;s:7:"counter";i:57;s:8:"uploaded";b:1;s:5:"image";s:39:"images/upload/1377345120349/prize_1.jpg";}s:3:"two";a:5:{s:4:"text";s:25:"Enter prize 2 description";s:5:"limit";i:75;s:7:"counter";i:50;s:8:"uploaded";b:0;s:5:"image";s:24:"images/dummy/340x183.png";}s:5:"three";a:5:{s:4:"text";s:25:"Enter prize 3 description";s:5:"limit";i:75;s:7:"counter";i:50;s:8:"uploaded";b:0;s:5:"image";s:24:"images/dummy/340x183.png";}}'),
(6, 1377345120349, 'selected', '1'),
(7, 1377345120349, 'fb', 'a:2:{s:1:"w";i:283;s:1:"h";i:67;}'),
(8, 1377408793809, 'mtitle', 'a:3:{s:4:"text";s:31:"HTML5, Company Contest, Contest";s:5:"limit";i:19;s:7:"counter";i:50;}'),
(9, 1377408793809, 'mdescription', 'a:3:{s:4:"text";s:133:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, fugit hic tempora dolorem non sunt incidunt velit quam distinctio cum.";s:5:"limit";i:122;s:7:"counter";i:255;}'),
(10, 1377408793809, 'background', 'a:5:{s:6:"enable";b:1;s:4:"type";s:1:"2";s:3:"set";s:6:"upload";s:8:"uploaded";b:1;s:5:"image";s:42:"images/upload/1377408793809/background.jpg";}'),
(11, 1377408793809, 'logo', 'a:8:{s:4:"hide";b:0;s:11:"placeholder";b:1;s:1:"w";i:122;s:1:"h";i:80;s:8:"uploaded";b:1;s:5:"image";s:36:"images/upload/1377408793809/logo.png";s:1:"x";i:25;s:1:"y";i:10;}'),
(12, 1377408793809, 'prize', 'a:4:{s:5:"title";s:19:"This Month''s Prizes";s:3:"one";a:5:{s:4:"text";s:16:"The Fallen Angel";s:5:"limit";i:75;s:7:"counter";i:59;s:8:"uploaded";b:1;s:5:"image";s:39:"images/upload/1377408793809/prize_1.jpg";}s:3:"two";a:5:{s:4:"text";s:10:"Cute Kitty";s:5:"limit";i:75;s:7:"counter";i:65;s:8:"uploaded";b:1;s:5:"image";s:39:"images/upload/1377408793809/prize_2.jpg";}s:5:"three";a:5:{s:4:"text";s:25:"Enter prize 3 description";s:5:"limit";i:75;s:7:"counter";i:50;s:8:"uploaded";b:0;s:5:"image";s:24:"images/dummy/203x130.png";}}'),
(13, 1377408793809, 'selected', '2'),
(14, 1377408793809, 'fb', 'a:2:{s:1:"w";i:283;s:1:"h";i:67;}'),
(15, 1377409082277, 'mtitle', 'a:3:{s:4:"text";s:31:"HTML5, Company Contest, Contest";s:5:"limit";i:19;s:7:"counter";i:50;}'),
(16, 1377409082277, 'mdescription', 'a:3:{s:4:"text";s:133:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, fugit hic tempora dolorem non sunt incidunt velit quam distinctio cum.";s:5:"limit";i:122;s:7:"counter";i:255;}'),
(17, 1377409082277, 'background', 'a:5:{s:6:"enable";b:0;s:4:"type";s:1:"3";s:3:"set";s:5:"young";s:8:"uploaded";b:0;s:5:"image";s:0:"";}'),
(18, 1377409082277, 'logo', 'a:8:{s:4:"hide";b:0;s:11:"placeholder";b:1;s:1:"w";i:122;s:1:"h";i:80;s:8:"uploaded";b:1;s:5:"image";s:36:"images/upload/1377409082277/logo.png";s:1:"x";i:45;s:1:"y";i:10;}'),
(19, 1377409082277, 'prize', 'a:4:{s:5:"title";s:19:"This Month''s Prizes";s:3:"one";a:5:{s:4:"text";s:10:"CUte Kitty";s:5:"limit";i:75;s:7:"counter";i:65;s:8:"uploaded";b:1;s:5:"image";s:39:"images/upload/1377409082277/prize_1.jpg";}s:3:"two";a:5:{s:4:"text";s:18:"Comic The Avengers";s:5:"limit";i:75;s:7:"counter";i:57;s:8:"uploaded";b:1;s:5:"image";s:39:"images/upload/1377409082277/prize_2.jpg";}s:5:"three";a:5:{s:4:"text";s:12:"Blue Bubbles";s:5:"limit";i:75;s:7:"counter";i:63;s:8:"uploaded";b:1;s:5:"image";s:39:"images/upload/1377409082277/prize_3.jpg";}}'),
(20, 1377409082277, 'selected', '3'),
(21, 1377409082277, 'fb', 'a:2:{s:1:"w";i:283;s:1:"h";i:67;}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;