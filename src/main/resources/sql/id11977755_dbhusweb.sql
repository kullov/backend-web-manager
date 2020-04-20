-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2020 at 03:12 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11977755_dbhusweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ability_dictionary`
--

CREATE TABLE `ability_dictionary` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `ability_dictionary`
--

INSERT INTO `ability_dictionary` (`id`, `name`, `type_id`, `description`) VALUES
(1, 'Java', 1, '10'),
(2, 'Python', 1, '10'),
(3, 'PHP', 1, '10'),
(4, 'HTML', 1, '10'),
(31, 'CSS', 1, '10'),
(32, 'JavaScript', 1, '10'),
(33, 'C/C++', 1, '10'),
(34, 'MySQL', 1, '10'),
(35, 'NodeJs', 1, '10'),
(36, 'CTDL', 1, '10'),
(37, 'AI', 1, '10'),
(38, 'TKDGTT', 1, '10'),
(40, 'LTHDT', 1, '10'),
(41, 'TOEIC', 2, '10'),
(42, 'IELTS', 2, '10'),
(43, 'HSK', 2, '10');

-- --------------------------------------------------------

--
-- Table structure for table `ability_type`
--

CREATE TABLE `ability_type` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `ability_type`
--

INSERT INTO `ability_type` (`id`, `name`) VALUES
(1, 'lập trình'),
(2, 'kĩ năng mềm');

-- --------------------------------------------------------

--
-- Table structure for table `intern_ability`
--

CREATE TABLE `intern_ability` (
  `intern_id` int(11) NOT NULL,
  `ability_id` int(11) NOT NULL,
  `rate` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `intern_ability`
--

INSERT INTO `intern_ability` (`intern_id`, `ability_id`, `rate`) VALUES
(1, 1, '10'),
(2, 1, '9'),
(1, 2, '10'),
(101, 3, '11'),
(101, 2, '50'),
(101, 4, '55'),
(101, 34, '100'),
(101, 38, '70'),
(102, 1, '80'),
(102, 4, '90'),
(102, 31, '90'),
(102, 32, '60'),
(102, 34, '60'),
(102, 35, '65'),
(103, 1, '80'),
(103, 3, '90'),
(103, 31, '85'),
(103, 34, '68'),
(103, 35, '60'),
(103, 41, '55'),
(104, 1, '89'),
(104, 42, '95'),
(104, 35, '78'),
(104, 4, '98'),
(104, 31, '89'),
(104, 34, '56'),
(104, 32, '69'),
(105, 43, '67'),
(105, 37, '89'),
(105, 42, '90'),
(105, 35, '89'),
(105, 32, '67'),
(105, 2, '98'),
(105, 38, '57'),
(106, 2, '69'),
(106, 4, '89'),
(106, 38, '67'),
(106, 35, '98'),
(106, 32, '87'),
(106, 37, '59'),
(106, 40, '78'),
(101, 32, '55');

-- --------------------------------------------------------

--
-- Table structure for table `intern_profile`
--

CREATE TABLE `intern_profile` (
  `id` int(11) NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `join_date` date NOT NULL,
  `class_name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `avatar` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `address` varchar(400) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `intern_profile`
--

INSERT INTO `intern_profile` (`id`, `code`, `first_name`, `last_name`, `date_of_birth`, `join_date`, `class_name`, `avatar`, `password`, `email`, `phone`, `description`, `address`) VALUES
(1, '38602084', 'Abie', 'Hayfield', '2000-04-23', '2019-04-25', 'K61A3', 'https://robohash.org/dolorsitsoluta.png?size=50x50&set=set1', 'bXLBsb6SSB', 'ahayfield0@intel.com', '521-145-3569', 'Ṱ̺̺̕o͞ ̷i̲̬͇̪͙n̝̗͕v̟̜̘̦͟o̶̙̰̠kè͚̮̺̪̹̱̤ ̖t̝͕̳̣̻̪͞h̼͓̲̦̳̘̲e͇̣̰̦̬͎ ̢̼̻̱̘h͚͎͙̜̣̲ͅi̦̲̣̰̤v̻͍e̺̭̳̪̰-m̢iͅn̖̺̞̲̯̰d̵̼̟͙̩̼̘̳ ̞̥̱̳̭r̛̗̘e͙p͠r̼̞̻̭̗e̺̠̣͟s̘͇̳͍̝͉e͉̥̯̞̲͚̬͜ǹ̬͎͎̟̖͇̤t͍̬̤͓̼̭͘ͅi̪̱n͠g̴͉ ͏͉ͅc̬̟h͡a̫̻̯͘o̫̟̖͍̙̝͉s̗̦̲.̨̹͈̣', NULL),
(2, '15276747', 'Taddeusz', 'Pollack', '1999-04-16', '2018-05-21', 'K69A4', 'https://robohash.org/necessitatibusautemquam.png?size=50x50&set=set1', 'foJwce', 'tpollack1@wp.com', '999-976-8263', '❤️ ? ? ? ? ? ? ? ? ? ? ? ? ? ?', NULL),
(3, '67360751', 'Ingelbert', 'Greser', '1999-06-25', '2018-12-15', 'K69A8', 'https://robohash.org/aliasomniscum.bmp?size=50x50&set=set1', 'xQaIPZ', 'igreser2@canalblog.com', '209-500-7960', '̡͓̞ͅI̗̘̦͝n͇͇͙v̮̫ok̲̫̙͈i̖͙̭̹̠̞n̡̻̮̣̺g̲͈͙̭͙̬͎ ̰t͔̦h̞̲e̢̤ ͍̬̲͖f̴̘͕̣è͖ẹ̥̩l͖͔͚i͓͚̦͠n͖͍̗͓̳̮g͍ ̨o͚̪͡f̘̣̬ ̖̘͖̟͙̮c҉͔̫͖͓͇͖ͅh̵̤̣͚͔á̗̼͕ͅo̼̣̥s̱͈̺̖̦̻͢.̛̖̞̠̫̰', NULL),
(4, '30502184', 'Chicky', 'Dutnall', '2000-01-22', '2018-02-06', 'K62A3', 'https://robohash.org/ipsalaboredolor.jpg?size=50x50&set=set1', '8GsxHCQJ3', 'cdutnall3@comsenz.com', '178-397-2156', '\"\'\'\'\'\"\'\"', NULL),
(5, '60882087', 'Teresina', 'Banbrigge', '2001-02-25', '2018-03-07', 'K64A1', 'https://robohash.org/quamveniamrerum.bmp?size=50x50&set=set1', '3lYXK1mu51VV', 'tbanbrigge4@free.fr', '356-216-6670', '社會科學院語學研究所', NULL),
(6, '27397600', 'Maureene', 'Lydiatt', '2000-04-03', '2018-04-23', 'K66A0', 'https://robohash.org/etdoloressit.jpg?size=50x50&set=set1', 'MDgRCeA7H', 'mlydiatt5@google.fr', '606-988-9917', '̗̺͖̹̯͓Ṯ̤͍̥͇͈h̲́e͏͓̼̗̙̼̣͔ ͇̜̱̠͓͍ͅN͕͠e̗̱z̘̝̜̺͙p̤̺̹͍̯͚e̠̻̠͜r̨̤͍̺̖͔̖̖d̠̟̭̬̝͟i̦͖̩͓͔̤a̠̗̬͉̙n͚͜ ̻̞̰͚ͅh̵͉i̳̞v̢͇ḙ͎͟-҉̭̩̼͔m̤̭̫i͕͇̝̦n̗͙ḍ̟ ̯̲͕͞ǫ̟̯̰̲͙̻̝f ̪̰̰̗̖̭̘͘c̦͍̲̞͍̩̙ḥ͚a̮͎̟̙͜ơ̩̹͎s̤.̝̝ ҉Z̡̖̜͖̰̣͉̜a͖̰͙̬͡l̲̫̳͍̩g̡̟̼̱͚̞̬ͅo̗͜.̟', NULL),
(7, '63583475', 'Netti', 'Lathwell', '2001-06-23', '2018-05-22', 'K63A2', 'https://robohash.org/cumquesaepecupiditate.jpg?size=50x50&set=set1', 'sGPOWEc', 'nlathwell6@amazon.co.jp', '209-956-9192', 'œ∑´®†¥¨ˆøπ“‘', NULL),
(8, '95891386', 'Rainer', 'McCaughen', '2001-08-29', '2018-06-28', 'K66A6', 'https://robohash.org/fugaquisquamconsequatur.png?size=50x50&set=set1', 'YcykHJq', 'rmccaughen7@instagram.com', '752-619-0232', '␢', NULL),
(9, '96284140', 'Demetria', 'Bexon', '2001-03-23', '2017-09-06', 'K62A5', 'https://robohash.org/etametconsequatur.bmp?size=50x50&set=set1', 'Bc8AebmGx', 'dbexon8@blogger.com', '118-848-4130', '../../../../../../../../../../../etc/passwd%00', NULL),
(10, '21940617', 'Willdon', 'Williamson', '2000-09-25', '2018-06-22', 'K63A3', 'https://robohash.org/fugaquiarchitecto.jpg?size=50x50&set=set1', 'yRTbt5KlY', 'wwilliamson9@sphinn.com', '286-837-4586', ',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’', NULL),
(11, '12171242', 'Luci', 'Chaise', '2000-10-02', '2017-01-23', 'K69A8', 'https://robohash.org/eosrerumquia.jpg?size=50x50&set=set1', 'w7p1q3', 'lchaisea@hubpages.com', '478-485-0194', 'NIL', NULL),
(12, '72652661', 'Trisha', 'Tomini', '2001-06-26', '2016-12-05', 'K66A6', 'https://robohash.org/siteligendipossimus.jpg?size=50x50&set=set1', 'w12aRsxyqLe', 'ttominib@people.com.cn', '765-479-3755', '<>?:\"{}|_+', NULL),
(13, '54367298', 'Cassandre', 'Althrope', '2000-05-12', '2018-05-30', 'K62A8', 'https://robohash.org/omnisvoluptatumnihil.bmp?size=50x50&set=set1', 'HsHFiBc', 'calthropec@huffingtonpost.com', '523-150-5586', '˙ɐnbᴉlɐ ɐuƃɐɯ ǝɹolop ʇǝ ǝɹoqɐl ʇn ʇunpᴉpᴉɔuᴉ ɹodɯǝʇ poɯsnᴉǝ op pǝs \'ʇᴉlǝ ƃuᴉɔsᴉdᴉpɐ ɹnʇǝʇɔǝsuoɔ \'ʇǝɯɐ ʇᴉs ɹolop ɯnsdᴉ ɯǝɹo˥', NULL),
(14, '49675398', 'Kittie', 'Halsho', '2001-06-18', '2019-05-18', 'K65A8', 'https://robohash.org/molestiasisteut.jpg?size=50x50&set=set1', 'aWLdD0d5', 'khalshod@yellowbook.com', '571-276-7245', '(｡◕ ∀ ◕｡)', NULL),
(15, '58579799', 'Flin', 'Halwill', '1999-03-24', '2018-05-08', 'K63A7', 'https://robohash.org/dolorumvelitdolor.jpg?size=50x50&set=set1', 'ZTmc64377', 'fhalwille@narod.ru', '419-768-7826', '\"\"', NULL),
(16, '23312449', 'Gabbie', 'Brundell', '2001-05-19', '2018-01-29', 'K61A0', 'https://robohash.org/commodiilloex.bmp?size=50x50&set=set1', 'URTZTqWrW', 'gbrundellf@army.mil', '161-848-7995', 'Z̮̞̠͙͔ͅḀ̗̞͈̻̗Ḷ͙͎̯̹̞͓G̻O̭̗̮', NULL),
(17, '28562587', 'Gideon', 'Swyne', '1999-08-24', '2018-07-26', 'K66A8', 'https://robohash.org/etsitperferendis.jpg?size=50x50&set=set1', 'PfEDWKBG5N', 'gswyneg@wp.com', '160-261-2464', '̗̺͖̹̯͓Ṯ̤͍̥͇͈h̲́e͏͓̼̗̙̼̣͔ ͇̜̱̠͓͍ͅN͕͠e̗̱z̘̝̜̺͙p̤̺̹͍̯͚e̠̻̠͜r̨̤͍̺̖͔̖̖d̠̟̭̬̝͟i̦͖̩͓͔̤a̠̗̬͉̙n͚͜ ̻̞̰͚ͅh̵͉i̳̞v̢͇ḙ͎͟-҉̭̩̼͔m̤̭̫i͕͇̝̦n̗͙ḍ̟ ̯̲͕͞ǫ̟̯̰̲͙̻̝f ̪̰̰̗̖̭̘͘c̦͍̲̞͍̩̙ḥ͚a̮͎̟̙͜ơ̩̹͎s̤.̝̝ ҉Z̡̖̜͖̰̣͉̜a͖̰͙̬͡l̲̫̳͍̩g̡̟̼̱͚̞̬ͅo̗͜.̟', NULL),
(18, '08276898', 'Katine', 'Bissell', '1999-07-31', '2018-07-18', 'K66A2', 'https://robohash.org/etculparerum.png?size=50x50&set=set1', 'Z7R0ixrsB', 'kbissellh@ox.ac.uk', '622-253-4116', 'null', NULL),
(19, '81193254', 'Lela', 'Matous', '1999-10-03', '2019-09-20', 'K63A4', 'https://robohash.org/vitaeeosreiciendis.jpg?size=50x50&set=set1', 'LBm2zRd', 'lmatousi@dagondesign.com', '815-274-8725', '1', NULL),
(20, '66985440', 'Agosto', 'Pheazey', '2000-10-17', '2017-01-15', 'K61A3', 'https://robohash.org/exercitationemofficiaut.jpg?size=50x50&set=set1', 'zJf1YWNPYe', 'apheazeyj@salon.com', '518-931-7382', '/dev/null; touch /tmp/blns.fail ; echo', NULL),
(21, '15730740', 'Meara', 'Bettlestone', '2000-08-14', '2019-01-23', 'K62A1', 'https://robohash.org/occaecativoluptatumtempore.jpg?size=50x50&set=set1', 'N6p126XOy6', 'mbettlestonek@elpais.com', '464-616-6267', '‪‪test‪', NULL),
(22, '30765414', 'Ignacius', 'Quenell', '1999-12-09', '2019-02-13', 'K62A8', 'https://robohash.org/inventorequamvelit.bmp?size=50x50&set=set1', 'H45q69R2tvW', 'iquenelll@economist.com', '743-485-1856', '˙ɐnbᴉlɐ ɐuƃɐɯ ǝɹolop ʇǝ ǝɹoqɐl ʇn ʇunpᴉpᴉɔuᴉ ɹodɯǝʇ poɯsnᴉǝ op pǝs \'ʇᴉlǝ ƃuᴉɔsᴉdᴉpɐ ɹnʇǝʇɔǝsuoɔ \'ʇǝɯɐ ʇᴉs ɹolop ɯnsdᴉ ɯǝɹo˥', NULL),
(23, '99501555', 'Anett', 'Swendell', '1999-10-08', '2017-06-28', 'K67A5', 'https://robohash.org/culpavoluptatemipsum.png?size=50x50&set=set1', 'BqnrD2uLJA3n', 'aswendellm@flickr.com', '315-619-1414', '¡™£¢∞§¶•ªº–≠', NULL),
(24, '01865285', 'Marthena', 'Schuh', '2000-07-22', '2016-11-29', 'K65A5', 'https://robohash.org/corruptideseruntrerum.png?size=50x50&set=set1', 'VDOQ2sml', 'mschuhn@ovh.net', '937-326-8629', '١٢٣', NULL),
(25, '56146101', 'Lorita', 'Balcon', '1999-05-23', '2017-10-11', 'K69A4', 'https://robohash.org/doloremquirerum.jpg?size=50x50&set=set1', 'XmSvcCFH', 'lbalcono@deliciousdays.com', '421-285-1167', '-1E+02', NULL),
(26, '71314003', 'Culley', 'Broderick', '2000-08-08', '2019-08-05', 'K65A1', 'https://robohash.org/liberofacerealiquam.bmp?size=50x50&set=set1', 'yBtd33Dc', 'cbroderickp@a8.net', '540-351-2161', 'test⁠test‫', NULL),
(27, '45884562', 'Editha', 'Sheriff', '2001-04-12', '2018-11-20', 'K63A8', 'https://robohash.org/harumsimiliqueaut.png?size=50x50&set=set1', 'L1HR9H', 'esheriffq@goodreads.com', '517-254-0847', '✋? ?? ?? ?? ?? ??', NULL),
(28, '37834039', 'Editha', 'Hackelton', '2000-07-26', '2019-03-09', 'K68A5', 'https://robohash.org/aetquasi.png?size=50x50&set=set1', '4W4KFdBj', 'ehackeltonr@multiply.com', '512-729-5013', '(｡◕ ∀ ◕｡)', NULL),
(29, '88560549', 'Abeu', 'Passo', '2001-08-07', '2018-05-18', 'K67A2', 'https://robohash.org/etadipisciaut.bmp?size=50x50&set=set1', 'dVDoE4adxghT', 'apassos@disqus.com', '583-672-3799', '울란바토르', NULL),
(30, '52051900', 'Clair', 'Rodbourne', '2000-05-29', '2019-05-06', 'K61A5', 'https://robohash.org/utnihiliste.bmp?size=50x50&set=set1', 'jc40Rf', 'crodbournet@nytimes.com', '581-966-4416', '1/0', NULL),
(31, '64050849', 'Gerrilee', 'Joel', '2000-06-30', '2018-07-23', 'K65A5', 'https://robohash.org/consequaturcumquenesciunt.png?size=50x50&set=set1', 'Ju5DxFU2', 'gjoelu@google.co.uk', '554-459-7235', '$1.00', NULL),
(32, '76614587', 'Vin', 'Brittian', '2001-04-12', '2018-05-25', 'K66A8', 'https://robohash.org/voluptatesconsequunturaut.jpg?size=50x50&set=set1', 'jEDPIc8Q', 'vbrittianv@mail.ru', '309-933-9327', 'パーティーへ行かないか', NULL),
(33, '46253983', 'Worthy', 'Conlaund', '1999-10-30', '2018-03-19', 'K67A8', 'https://robohash.org/sequiadet.png?size=50x50&set=set1', 'kOay7Yh4TKKH', 'wconlaundw@techcrunch.com', '922-767-2040', 'ヽ༼ຈل͜ຈ༽ﾉ ヽ༼ຈل͜ຈ༽ﾉ ', NULL),
(34, '31485300', 'Gibbie', 'Purple', '1999-04-21', '2019-05-15', 'K64A0', 'https://robohash.org/quasdistinctioharum.png?size=50x50&set=set1', '93IqHfQBU', 'gpurplex@multiply.com', '454-794-5812', '<script>alert(\'hi\')</script>', NULL),
(35, '38599449', 'Jan', 'Rymer', '1999-08-29', '2018-11-07', 'K66A9', 'https://robohash.org/ducimusblanditiisfugit.png?size=50x50&set=set1', 'aAB106R', 'jrymery@live.com', '341-538-4627', '␢', NULL),
(36, '82554695', 'Phillipe', 'Fildery', '1999-04-27', '2019-10-04', 'K63A5', 'https://robohash.org/magnammaioresdolorem.bmp?size=50x50&set=set1', 'NwDQdLZYw0kP', 'pfilderyz@google.com', '981-340-9648', '‪‪test‪', NULL),
(37, '77284946', 'Antonetta', 'Stubbings', '1998-12-15', '2018-01-31', 'K60A9', 'https://robohash.org/fugitquosut.png?size=50x50&set=set1', 'wRzoJKx', 'astubbings10@php.net', '853-381-9409', '部落格', NULL),
(38, '31419790', 'Finn', 'Rosario', '2001-01-08', '2019-09-01', 'K66A8', 'https://robohash.org/etnisiea.png?size=50x50&set=set1', 'zDVlJOI7', 'frosario11@gravatar.com', '911-753-6447', '울란바토르', NULL),
(39, '34819084', 'Lynda', 'Goss', '1999-09-30', '2019-02-14', 'K69A6', 'https://robohash.org/utlaborelaudantium.jpg?size=50x50&set=set1', 'ChC50tb65qX', 'lgoss12@comsenz.com', '246-763-3731', '? ? ? ?', NULL),
(40, '12395640', 'Megen', 'Wainwright', '2001-04-22', '2017-07-10', 'K61A9', 'https://robohash.org/laboreexplicaboexpedita.jpg?size=50x50&set=set1', 'yhttOfQz', 'mwainwright13@wikispaces.com', '784-845-5659', '`⁄€‹›ﬁﬂ‡°·‚—±', NULL),
(41, '55446408', 'Sianna', 'Hearnah', '1999-03-08', '2019-04-30', 'K65A7', 'https://robohash.org/placeatutcum.bmp?size=50x50&set=set1', 't7xgkt', 'shearnah14@t-online.de', '659-107-3257', '<script>alert(\'hi\')</script>', NULL),
(42, '12570308', 'Filmer', 'Skade', '1999-06-07', '2019-04-05', 'K64A0', 'https://robohash.org/minusnamipsam.png?size=50x50&set=set1', 'RCMWZIZk', 'fskade15@globo.com', '556-544-9203', '1E02', NULL),
(43, '58773563', 'Deidre', 'Muncer', '1999-03-29', '2017-07-20', 'K62A7', 'https://robohash.org/autadreprehenderit.jpg?size=50x50&set=set1', 'Qj2TaCWF2ocK', 'dmuncer16@yellowpages.com', '888-614-6303', '✋? ?? ?? ?? ?? ??', NULL),
(44, '61643763', 'Burg', 'Duffield', '2001-09-08', '2018-01-01', 'K66A7', 'https://robohash.org/odioteneturculpa.bmp?size=50x50&set=set1', 'Zpmg9tSCNUg', 'bduffield17@mozilla.org', '363-874-6799', '1E02', NULL),
(45, '34725943', 'Thibaud', 'Stocken', '2000-06-12', '2019-05-09', 'K60A0', 'https://robohash.org/natusveleos.png?size=50x50&set=set1', 'wgoFlUG', 'tstocken18@imageshack.us', '334-900-1116', 'test⁠test‫', NULL),
(46, '71905987', 'Lyndell', 'Gove', '2001-04-14', '2018-04-05', 'K66A4', 'https://robohash.org/aperiamdelectussint.jpg?size=50x50&set=set1', '8aNgHndLd', 'lgove19@infoseek.co.jp', '113-898-0670', '・(￣∀￣)・:*:', NULL),
(47, '31112205', 'Albrecht', 'Nuton', '2000-06-30', '2018-01-29', 'K64A2', 'https://robohash.org/voluptatumquifugiat.bmp?size=50x50&set=set1', 'kZUQ0iBXgED', 'anuton1a@joomla.org', '657-360-5458', '\"', NULL),
(48, '12441507', 'Heather', 'Hulk', '2000-06-30', '2018-11-23', 'K60A5', 'https://robohash.org/velaccusamuscorporis.jpg?size=50x50&set=set1', 'GnvsXnaf9sP', 'hhulk1b@oakley.com', '566-937-2289', '-1.00', NULL),
(49, '02276132', 'Marlie', 'Caffin', '1999-01-30', '2019-05-08', 'K61A2', 'https://robohash.org/modisuscipitsed.png?size=50x50&set=set1', 'VSCAoxJkTBle', 'mcaffin1c@reference.com', '850-887-6994', '() { 0; }; touch /tmp/blns.shellshock1.fail;', NULL),
(50, '38208577', 'Howie', 'Mintoft', '2000-05-27', '2018-01-14', 'K69A1', 'https://robohash.org/sedcumrecusandae.jpg?size=50x50&set=set1', 'thpNlCcy', 'hmintoft1d@marketwatch.com', '559-694-9105', 'パーティーへ行かないか', NULL),
(51, '54236180', 'Candy', 'Banat', '1999-01-14', '2018-06-06', 'K64A7', 'https://robohash.org/etestharum.jpg?size=50x50&set=set1', 'YVaHGEy', 'cbanat1e@ebay.com', '539-718-0544', '❤️ ? ? ? ? ? ? ? ? ? ? ? ? ? ?', NULL),
(52, '50016065', 'Arlina', 'Crisford', '2000-07-14', '2018-09-23', 'K65A6', 'https://robohash.org/uteoset.jpg?size=50x50&set=set1', 'nWXOxlSy', 'acrisford1f@jugem.jp', '605-249-8830', 'ÅÍÎÏ˝ÓÔÒÚÆ☃', NULL),
(53, '26590291', 'Reider', 'Fenge', '2001-06-13', '2019-02-09', 'K65A4', 'https://robohash.org/utquimagnam.jpg?size=50x50&set=set1', 'fjyxLm', 'rfenge1g@comcast.net', '884-554-7493', '/dev/null; touch /tmp/blns.fail ; echo', NULL),
(54, '92830981', 'Skipp', 'Launder', '2001-10-04', '2017-09-26', 'K64A0', 'https://robohash.org/natusmagnised.bmp?size=50x50&set=set1', 'ZspCGMB0AFb', 'slaunder1h@si.edu', '845-847-1683', '1.00', NULL),
(55, '24196661', 'Rosemarie', 'McNay', '2000-04-14', '2018-07-30', 'K62A3', 'https://robohash.org/veritatisasperioreset.bmp?size=50x50&set=set1', 'XdIMSuqD2adk', 'rmcnay1i@wordpress.com', '739-760-2682', '? ? ? ? ? ? ? ?', NULL),
(56, '13597446', 'Dulsea', 'Blondell', '2001-05-21', '2017-10-16', 'K61A4', 'https://robohash.org/quiquiaipsam.jpg?size=50x50&set=set1', 'gAQupPtGqn', 'dblondell1j@zimbio.com', '841-807-2485', 'åß∂ƒ©˙∆˚¬…æ', NULL),
(57, '68766589', 'Webb', 'Hurt', '2000-05-08', '2018-05-21', 'K63A9', 'https://robohash.org/doloremvoluptatibuslaudantium.png?size=50x50&set=set1', 'REkmyV', 'whurt1k@army.mil', '275-450-2648', '␡', NULL),
(58, '82166962', 'Karlis', 'Backs', '2001-07-16', '2018-01-24', 'K69A2', 'https://robohash.org/nihilvoluptatesaut.bmp?size=50x50&set=set1', '8ZbGKNJSod8s', 'kbacks1l@miitbeian.gov.cn', '676-718-8625', '-1/2', NULL),
(59, '15717150', 'Jan', 'Shakelade', '2001-11-07', '2018-02-18', 'K66A8', 'https://robohash.org/quisquamverocommodi.png?size=50x50&set=set1', 'msIBOMrzKk', 'jshakelade1m@paginegialle.it', '317-657-3531', '사회과학원 어학연구소', NULL),
(60, '09957678', 'Fran', 'Tracy', '2000-04-23', '2019-10-05', 'K60A2', 'https://robohash.org/nesciuntetvelit.bmp?size=50x50&set=set1', '5QqoP3pjGp', 'ftracy1n@walmart.com', '847-979-4721', 'ﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ', NULL),
(61, '28137516', 'Angel', 'Callery', '2001-04-15', '2017-09-17', 'K68A5', 'https://robohash.org/facereetexercitationem.jpg?size=50x50&set=set1', '5gwvrl9', 'acallery1o@spiegel.de', '349-372-8939', '(ﾉಥ益ಥ）ﾉ﻿ ┻━┻', NULL),
(62, '36719069', 'Calvin', 'Elsdon', '2000-04-25', '2017-09-13', 'K69A8', 'https://robohash.org/perferendisdoloremcupiditate.jpg?size=50x50&set=set1', 'o9oWUp8EZS', 'celsdon1p@amazon.de', '479-150-1026', '̡͓̞ͅI̗̘̦͝n͇͇͙v̮̫ok̲̫̙͈i̖͙̭̹̠̞n̡̻̮̣̺g̲͈͙̭͙̬͎ ̰t͔̦h̞̲e̢̤ ͍̬̲͖f̴̘͕̣è͖ẹ̥̩l͖͔͚i͓͚̦͠n͖͍̗͓̳̮g͍ ̨o͚̪͡f̘̣̬ ̖̘͖̟͙̮c҉͔̫͖͓͇͖ͅh̵̤̣͚͔á̗̼͕ͅo̼̣̥s̱͈̺̖̦̻͢.̛̖̞̠̫̰', NULL),
(63, '65470080', 'Gav', 'Comberbeach', '1999-09-05', '2017-09-08', 'K68A3', 'https://robohash.org/deseruntminimaoccaecati.bmp?size=50x50&set=set1', 'Yo0qq34snMnv', 'gcomberbeach1q@google.de', '589-314-6361', '$1.00', NULL),
(64, '86976944', 'Dasya', 'Mowat', '2000-12-08', '2019-03-20', 'K63A6', 'https://robohash.org/nostrumautut.jpg?size=50x50&set=set1', 'k2k9zyHYbZbG', 'dmowat1r@twitpic.com', '237-772-2875', '-1E02', NULL),
(65, '45752665', 'Carree', 'Matherson', '2000-12-22', '2019-04-08', 'K60A3', 'https://robohash.org/quamquidemnon.jpg?size=50x50&set=set1', '8ljDdP', 'cmatherson1s@discuz.net', '101-414-0526', 'nil', NULL),
(66, '48497912', 'Harland', 'Arrington', '2001-11-05', '2019-07-08', 'K65A9', 'https://robohash.org/quiamollitiaquo.jpg?size=50x50&set=set1', 'jstq5KzF4', 'harrington1t@sphinn.com', '898-552-0992', '̡͓̞ͅI̗̘̦͝n͇͇͙v̮̫ok̲̫̙͈i̖͙̭̹̠̞n̡̻̮̣̺g̲͈͙̭͙̬͎ ̰t͔̦h̞̲e̢̤ ͍̬̲͖f̴̘͕̣è͖ẹ̥̩l͖͔͚i͓͚̦͠n͖͍̗͓̳̮g͍ ̨o͚̪͡f̘̣̬ ̖̘͖̟͙̮c҉͔̫͖͓͇͖ͅh̵̤̣͚͔á̗̼͕ͅo̼̣̥s̱͈̺̖̦̻͢.̛̖̞̠̫̰', NULL),
(67, '53025576', 'Paxton', 'Jurczyk', '1999-04-09', '2019-06-04', 'K63A6', 'https://robohash.org/etnonunde.png?size=50x50&set=set1', 'V1Nz4mb5', 'pjurczyk1u@nsw.gov.au', '486-170-0209', '1', NULL),
(68, '87518826', 'Rosemaria', 'Wyles', '2001-04-25', '2018-09-04', 'K69A2', 'https://robohash.org/maximeseddolorum.bmp?size=50x50&set=set1', 'JxQShOGnvfG', 'rwyles1v@exblog.jp', '448-931-0827', 'Œ„´‰ˇÁ¨ˆØ∏”’', NULL),
(69, '61153525', 'Marya', 'Demann', '2001-08-18', '2016-11-20', 'K62A9', 'https://robohash.org/commodidebitisipsa.bmp?size=50x50&set=set1', 'gXU6TsKHa', 'mdemann1w@mashable.com', '894-925-5537', '1E+02', NULL),
(70, '71851934', 'Solly', 'Whibley', '2001-06-27', '2019-06-17', 'K69A0', 'https://robohash.org/doloresquaeratmodi.jpg?size=50x50&set=set1', '3fIuKlyE', 'swhibley1x@yandex.ru', '914-322-4281', '␣', NULL),
(71, '54675663', 'Maxwell', 'Horrod', '1999-02-13', '2019-02-22', 'K69A0', 'https://robohash.org/laboreveritatisut.bmp?size=50x50&set=set1', 'XV5roPRHCYc', 'mhorrod1y@themeforest.net', '675-783-9856', 'ヽ༼ຈل͜ຈ༽ﾉ ヽ༼ຈل͜ຈ༽ﾉ ', NULL),
(72, '12391087', 'Jackquelin', 'Adrien', '1999-08-11', '2019-01-05', 'K64A7', 'https://robohash.org/velnonerror.png?size=50x50&set=set1', 'vPmcj5', 'jadrien1z@pagesperso-orange.fr', '427-901-2598', 'בְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ', NULL),
(73, '73265682', 'Desiri', 'Hincham', '2000-05-29', '2016-12-04', 'K67A8', 'https://robohash.org/ipsumetnostrum.jpg?size=50x50&set=set1', 'meA4f0oQdyL', 'dhincham20@mail.ru', '927-654-5681', '../../../../../../../../../../../etc/hosts', NULL),
(74, '06128505', 'Arie', 'Alessandretti', '1999-02-23', '2017-02-02', 'K63A3', 'https://robohash.org/harumadvoluptas.png?size=50x50&set=set1', '9v5DrUowI', 'aalessandretti21@themeforest.net', '754-584-9393', '1E2', NULL),
(75, '06743858', 'Roland', 'Forsdyke', '1999-07-26', '2017-08-31', 'K68A7', 'https://robohash.org/sitnumquamet.png?size=50x50&set=set1', 'vbtGNKb6t', 'rforsdyke22@google.com.br', '859-965-8625', '1\'; DROP TABLE users--', NULL),
(76, '11016943', 'Leelah', 'Coll', '2000-04-05', '2018-07-30', 'K64A2', 'https://robohash.org/cupiditateomnisipsam.png?size=50x50&set=set1', 'NzjeDtVv', 'lcoll23@merriam-webster.com', '439-620-2487', '​', NULL),
(77, '53064069', 'Newton', 'Seamer', '1999-12-26', '2017-05-21', 'K69A6', 'https://robohash.org/iustomaximefugiat.bmp?size=50x50&set=set1', 'GRiycP8IyD', 'nseamer24@nature.com', '747-922-4003', '1\'; DROP TABLE users--', NULL),
(78, '60224247', 'Linzy', 'Stuke', '2000-12-23', '2019-09-03', 'K61A2', 'https://robohash.org/eumearem.png?size=50x50&set=set1', 'fKpbFlmNiFP', 'lstuke25@dailymail.co.uk', '688-762-6167', '1E+02', NULL),
(79, '11084374', 'Alie', 'Hollingdale', '1999-03-22', '2017-01-27', 'K65A7', 'https://robohash.org/praesentiumteneturexercitationem.png?size=50x50&set=set1', 'Ta3uNnP', 'ahollingdale26@over-blog.com', '671-177-5741', '-1E+02', NULL),
(80, '32286232', 'Pascale', 'Ballintyne', '2000-12-30', '2019-08-02', 'K67A2', 'https://robohash.org/quiapariaturmolestias.png?size=50x50&set=set1', 'tqbZ3t', 'pballintyne27@wsj.com', '502-124-4218', '\"\"', NULL),
(81, '05040838', 'Bevvy', 'Gonthier', '2000-10-01', '2018-02-10', 'K61A0', 'https://robohash.org/nulladoloribusrepellendus.bmp?size=50x50&set=set1', 'JuV8PPL9', 'bgonthier28@accuweather.com', '320-754-4091', '␡', NULL),
(82, '14082972', 'Brantley', 'Goodlatt', '2000-03-03', '2018-07-09', 'K66A8', 'https://robohash.org/maioreseosdebitis.bmp?size=50x50&set=set1', 'dKA01JHxSJOF', 'bgoodlatt29@photobucket.com', '924-875-8607', ',./;\'[]-=', NULL),
(83, '69650502', 'Joellyn', 'Menelaws', '1999-03-28', '2017-10-22', 'K60A1', 'https://robohash.org/erroranimieum.bmp?size=50x50&set=set1', 'mP4PUiQFoq', 'jmenelaws2a@timesonline.co.uk', '514-915-2479', '-1/2', NULL),
(84, '37385370', 'Eileen', 'Lippini', '2000-10-04', '2019-09-27', 'K66A5', 'https://robohash.org/namvoluptaseum.jpg?size=50x50&set=set1', 'GsbQums9uD3f', 'elippini2b@unblog.fr', '496-725-1881', 'åß∂ƒ©˙∆˚¬…æ', NULL),
(85, '37318930', 'Muhammad', 'Kraut', '2001-08-17', '2019-06-13', 'K65A5', 'https://robohash.org/laboriosamearumaut.jpg?size=50x50&set=set1', 'YlkS8Ep4', 'mkraut2c@weather.com', '159-488-3756', '١٢٣', NULL),
(86, '97602736', 'Anett', 'Braham', '2000-06-21', '2017-11-10', 'K63A4', 'https://robohash.org/repellatquiut.png?size=50x50&set=set1', 'V8KU9wUR3RU7', 'abraham2d@globo.com', '924-868-7739', '사회과학원 어학연구소', NULL),
(87, '60237131', 'Mason', 'Wallwood', '2000-02-23', '2018-12-27', 'K60A6', 'https://robohash.org/providentsitquos.bmp?size=50x50&set=set1', '0pm1GpwfiXHv', 'mwallwood2e@squidoo.com', '148-778-3804', '/dev/null; touch /tmp/blns.fail ; echo', NULL),
(88, '07592923', 'Wenda', 'Coston', '2001-09-19', '2016-12-31', 'K65A2', 'https://robohash.org/nisieteveniet.bmp?size=50x50&set=set1', 'iMjpTryQx7EK', 'wcoston2f@quantcast.com', '576-792-5539', '<script>alert(\'hi\')</script>', NULL),
(89, '48975492', 'Perceval', 'Airton', '2001-06-08', '2017-03-23', 'K68A9', 'https://robohash.org/iustoveritatisitaque.bmp?size=50x50&set=set1', 'dcjKtn0TFRQx', 'pairton2g@weebly.com', '679-360-3689', '1E02', NULL),
(90, '42229207', 'Elnar', 'McJury', '2000-05-16', '2017-07-24', 'K69A0', 'https://robohash.org/doloreutiure.jpg?size=50x50&set=set1', '8GzeyaAQ', 'emcjury2h@bluehost.com', '428-420-5755', ',。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’', NULL),
(91, '61395612', 'Jeanna', 'Yearnes', '2001-09-29', '2019-06-18', 'K69A5', 'https://robohash.org/deseruntminimapossimus.bmp?size=50x50&set=set1', '4ZPJstm93glh', 'jyearnes2i@lulu.com', '249-972-0242', '? ? ? ?', NULL),
(92, '68083943', 'Rennie', 'Sedgefield', '2001-10-30', '2018-01-02', 'K62A5', 'https://robohash.org/providentpariaturaperiam.jpg?size=50x50&set=set1', 'QTLweGu8egz', 'rsedgefield2j@elegantthemes.com', '307-922-2740', '1E2', NULL),
(93, '87656591', 'Agneta', 'McCarry', '1999-04-09', '2017-01-15', 'K64A0', 'https://robohash.org/recusandaeconsequaturid.bmp?size=50x50&set=set1', 'Pu99460xuKEk', 'amccarry2k@ask.com', '244-434-1349', '???????', NULL),
(94, '91387269', 'Anya', 'Yurenin', '1999-03-26', '2017-06-03', 'K60A9', 'https://robohash.org/nequeindeserunt.png?size=50x50&set=set1', 'NFwf1X1PSpk', 'ayurenin2l@paypal.com', '649-698-9046', '? ? ? ?', NULL),
(95, '85753269', 'Jody', 'Burgen', '2000-12-29', '2018-10-09', 'K61A2', 'https://robohash.org/voluptasquaeratsequi.png?size=50x50&set=set1', 'bsb5XfU7qaw', 'jburgen2m@google.com.au', '451-618-8529', '<svg><script>0<1>alert(\'XSS\')</script>', NULL),
(96, '12937280', 'Deedee', 'Float', '2001-06-23', '2017-05-10', 'K68A8', 'https://robohash.org/dolorquaseos.jpg?size=50x50&set=set1', 'hVsQrzNur', 'dfloat2n@sogou.com', '844-809-2435', '和製漢語', NULL),
(97, '30159092', 'Daisi', 'Thorby', '2000-07-08', '2018-12-15', 'K64A9', 'https://robohash.org/etquiet.bmp?size=50x50&set=set1', 'Z4STvf', 'dthorby2o@ft.com', '891-880-6866', '(╯°□°）╯︵ ┻━┻)  ', NULL),
(98, '81419552', 'Joleen', 'Terzza', '1999-05-26', '2018-10-29', 'K66A4', 'https://robohash.org/voluptatemmaximeconsequuntur.png?size=50x50&set=set1', 'qbGIPsV1', 'jterzza2p@sina.com.cn', '908-897-5294', '-1/2', NULL),
(99, '09051420', 'Wallie', 'Stanbro', '1999-08-06', '2017-08-15', 'K63A1', 'https://robohash.org/ullamtenetursimilique.bmp?size=50x50&set=set1', 'SgCmwkLG3', 'wstanbro2q@multiply.com', '161-531-6625', '1;DROP TABLE users', NULL),
(100, '25963093', 'Aldis', 'Blaszkiewicz', '1999-09-13', '2017-04-29', 'K66A8', 'https://robohash.org/perferendisrecusandaedolorem.jpg?size=50x50&set=set1', 'XAHaztn8nSO', 'ablaszkiewicz2r@devhub.com', '846-195-4460', '⁰⁴⁵₀₁₂', NULL),
(101, '123456', 'Trần', 'Phong', '2019-11-13', '2019-11-12', 'K61', 'https://scontent.fhan5-4.fna.fbcdn.net/v/t1.0-9/s960x960/73515545_2532366280174235_6901413936684335104_o.jpg?_nc_cat=104&_nc_ohc=bOd4AGaBoSoAQlykqj9Jb6yBZrs2hkS3Y9aEakJsBp5HHZXvma5O_vHPg&_nc_ht=scontent.fhan5-4.fna&oh=110e592607e43c9064318ed64ab2ea1a&oe=5E8C3634', '$2y$10$XjPeyGzRT14BCn25glAbiOuS8oSIsPS39QmzIpNZzuqZMYoWGaQUu', 'phong672006@gmail.com', '44444444', 'Praesent tincidunt sed tellus ut rutrum. \r\nSed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.', '121 Nguyễn Trãi, Thanh Xuân, Hà Nội'),
(102, '16001869', 'Nguyá»…n', 'Thá»§y', '1998-11-18', '1998-11-18', 'K61A3', 'https://media.macphun.com/img/uploads/customer/how-to/579/15531840725c93b5489d84e9.43781620.jpg?q=85&w=1340', '$2y$10$tU1cn9kVDSQonukuc0mBTuFyd8Cq76D4x6duP468Hdelv4eidfAUG', 'thuynt181998@gmail.com', '0349749393', '', NULL),
(103, '121212', 'Nguyá»…n', 'Thá»§y', '1998-11-18', '2018-12-21', 'K61A3', 'https://picture.vn/wp-content/uploads/2019/08/Ch%E1%BB%A5p-%E1%BA%A3nh-phong-c%C3%A1ch-h%C3%A0n-qu%E1%BB%91c-4.jpg', '$2y$10$m8A9Nevuy4/Pc0i8Hxt62uNRvT4SmP/zmJDaSvfo2Qjp7FKPr.9UO', 'thuynt181998@gmail.com', '1649749393', 'Há»c táº¡i trÆ°á»ng Äáº¡i há»c Khoa há»c Tá»± NhiÃªn - ÄHQGHN\r\nSinh viÃªn nÄƒm 4\r\nKhoa ToÃ¡n - CÆ¡ - Tin há»c\r\nChuyÃªn ngÃ nh: MÃ¡y tÃ­nh vÃ  khoa há»c thÃ´ng tin', NULL),
(104, '123321', 'Nguyá»…n', 'Nam', '1998-12-11', '2018-01-23', 'K61A3', 'http://static.ink.vn/upload/news/18/01/08/C_cOm2iV0AAG5dv_QHPE.jpg?w=630&encoder=wic&subsampling=444', '$2y$10$y6speUqubbQlBduuxJPozejIAeTapRuX9T7dSgJJdj9c9DCmRHcJi', 'nam123@gmail.com', '0349875432', 'Há»c táº¡i trÆ°á»ng Äáº¡i há»c Khoa há»c Tá»± NhiÃªn - ÄHQGHN\r\n\r\nSinh viÃªn nÄƒm 4\r\n\r\nKhoa ToÃ¡n - CÆ¡ - Tin há»c\r\n\r\nChuyÃªn ngÃ nh: MÃ¡y tÃ­nh vÃ  khoa há»c thÃ´ng tin', NULL),
(105, '345543', 'Mai', 'Phong', '1998-05-04', '2017-06-05', 'K61A3', 'http://afamilycdn.com/k:thumb_w/600/Tnk9vRlUgEMOa9xiFyoQdi0bvg9Omj/Image/2014/01/8-a9cd5/top-10-nam-dien-vien-hang-a-tuoi-20-hot-nhat-han-quoc.jpg', '$2y$10$T7p5CxQXoc9FzNhcansrQeSwov2vS7ZLEcIlxvwbpnrn4McAxYN.2', 'phong123@gmail.com', '012345678', 'Há»c táº¡i trÆ°á»ng Äáº¡i há»c Khoa há»c Tá»± NhiÃªn - ÄHQGHN\r\nSinh viÃªn nÄƒm 4\r\nKhoa ToÃ¡n - CÆ¡ - Tin há»c\r\nChuyÃªn ngÃ nh: MÃ¡y tÃ­nh vÃ  khoa há»c thÃ´ng tin', NULL),
(106, '789987', 'Mai', 'Äá»©c', '1997-02-04', '2017-08-07', 'K61A3', 'https://molo.vn/upload/images/wp-content/uploads/2016/03/rsz_lee-min-ho.jpg', '$2y$10$V1FHDnBZVIufloKBg5K5pe8CaudYVljojEtmv/7AXB9VtlZvZgo0K', 'duc123@gmail.com', '056734218', 'Há»c táº¡i trÆ°á»ng Äáº¡i há»c Khoa há»c Tá»± NhiÃªn - ÄHQGHN\r\nSinh viÃªn nÄƒm 4\r\nKhoa ToÃ¡n - CÆ¡ - Tin há»c\r\nChuyÃªn ngÃ nh: MÃ¡y tÃ­nh vÃ  khoa há»c thÃ´ng tin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization_profile`
--

CREATE TABLE `organization_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `employee_count` int(11) NOT NULL,
  `gross_revenue` int(11) NOT NULL COMMENT 'doanh thu',
  `address` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tax_number` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `organization_profile`
--

INSERT INTO `organization_profile` (`id`, `name`, `employee_count`, `gross_revenue`, `address`, `contact`, `tax_number`, `password`, `description`, `phone`) VALUES
(1, 'Toshiba', 79, 678283380, '3234 Parkside Center', 'nhan.pt@hgtour.vn', '123321', '123456', 'Môi trường làm việc năng động\r\nNgoài việc được làm việc tại công ty hàng đầu Việt Nam', '0358701364'),
(2, 'Trantow-Fadel', 17, 101567113, '3308 Mesta Place', 'akirkebye1@drupal.org', '456654', '456654', 'Môi trường làm việc năng động, thân thiện, cơ hội thăng tiến. Được đào tạo thêm để nâng cao nghiệp vụ chuyên môn.', '0243.2043.096'),
(3, 'Bogisich-Hermann', 83, 418266993, '3782 Manufacturers Point', 'bbaly2@dropbox.com', '925-190-1454', '7kthuWRejn2', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', NULL),
(4, 'Koss Inc', 45, 656861256, '4 Sundown Pass', 'ibock3@mysql.com', '301-757-4738', 'j0QZHk', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', NULL),
(5, 'Simonis Group', 23, 454839112, '72726 Mitchell Center', 'emeharg4@intel.com', '188-281-3127', '6973bEr', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', NULL),
(6, 'Gusikowski, Lehner a', 65, 572294250, '97267 Annamark Drive', 'astobart5@deviantart.com', '704-223-8485', 'CJCQe12DxO9V', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', NULL),
(7, 'Ryan-Nitzsche', 42, 167737035, '5 Blue Bill Park Hill', 'ghardington6@accuweather.com', '341-819-6404', '9AMtZM0', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', NULL),
(8, 'Kihn, Toy and Ruther', 66, 578617238, '7893 Debs Crossing', 'njaume7@hostgator.com', '805-866-6819', 'abevQyYuCh', 'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea', NULL),
(9, 'Haley Group', 89, 984304908, '95 Coleman Plaza', 'whaining8@tiny.cc', '713-838-2026', 'jGITxmEn38', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', NULL),
(10, 'Kuphal, Watsica and ', 16, 108555406, '0 Tomscot Alley', 'pantonelli9@opera.com', '198-531-1288', 'hng22RV', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', NULL),
(11, 'Abshire, Cruickshank', 38, 416735871, '75 Warbler Junction', 'chatherleya@mediafire.com', '432-685-4528', 'sfnEkw', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', NULL),
(12, 'Rowe LLC', 11, 600814222, '6 Grayhawk Center', 'bbernetb@businessinsider.com', '845-913-6617', 'Wc0E64MpI', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', NULL),
(13, 'King-Lehner', 40, 407660134, '45503 Anderson Hill', 'kcorneillec@tuttocitta.it', '514-127-8658', 'H1MoICljaQDd', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', NULL),
(14, 'Abshire and Sons', 69, 794848826, '42636 Darwin Center', 'pmawdsleyd@woothemes.com', '602-116-6987', '0AaCbnZSUg', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', NULL),
(15, 'Hermiston Inc', 12, 606411029, '8533 Nova Terrace', 'gshafee@vk.com', '497-437-7593', 'NpfVab0Wj8w', 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', NULL),
(16, 'Nienow, Farrell and ', 67, 86464451, '0865 Holy Cross Street', 'jdunksf@sina.com.cn', '638-773-7895', 'hHqsuoLz4bYC', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', NULL),
(17, 'Pfannerstill, VonRue', 5, 792373695, '70686 Sunbrook Circle', 'hmyttong@sun.com', '982-171-3209', '9ubl2E718O', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', NULL),
(18, 'Becker, Lynch and De', 34, 773655199, '0 Carey Road', 'htollmacheh@typepad.com', '522-647-4534', 'cMpx4n3', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', NULL),
(19, 'Koelpin, Barton and ', 4, 169400155, '9 Gateway Court', 'zskainsi@over-blog.com', '397-919-0931', 'P16oXiHOi', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', NULL),
(20, 'Schaden, Johnson and', 25, 359674753, '75478 Arrowood Junction', 'ccossomj@msu.edu', '604-483-5271', 'iszXaY', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', NULL),
(21, 'Thanh Nga', 1234522, 12345222, 'Báº¯c Tá»« LiÃªm', '123456', '123456', '$2y$10$V2uizAsN91fuguBLkxvZ6.GN9uT0m0VbBT3alyfCOwG5umBpefuwi', NULL, NULL),
(22, 'NewWave', 98, 67, 'Dương Đình Nghệ, Cầu Giấy, Hà Nội', '0978840828', '989898', '123456', 'Làm việc từ thứ 2 đến hết sáng thứ 6\r\n', '0978840828'),
(23, 'NewWave', 98, 67, 'DÆ°Æ¡ng ÄÃ¬nh Nghá»‡, Cáº§u Giáº¥y, HÃ  Ná»™i', 'myhao@manhinhcong.com', '999999', '$2y$10$bQLyNmlyCs5vW/Oxam6hcOxzrt13KmtdN9GY4U7DCoBGywjhtV9R2', NULL, NULL),
(24, 'KidVN', 89, 234567890, 'DÆ°Æ¡ng ÄÃ¬nh Nghá»‡, Cáº§u Giáº¥y, HÃ  Ná»™i', 'hr12@gmail.com', '789987', '$2y$10$WuRZwXD93BFO9awRJ2j4YutI74nGIbpNwoNH//cvdRlsxjiAOTOeO', NULL, NULL),
(25, 'HIVI', 102, 1234564321, 'Mai Dá»‹ch, Cáº§u Giáº¥y, HÃ  Ná»™i', 'hrHivi@gmail.com', '345543', '$2y$10$HV4YbJQS8G67fAUKu.Z08e.Qm4gLxWu6QyBmA5IYKYPuxQU8VpdIG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `intern_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `intern_id`, `request_id`, `date_created`, `start_date`, `end_date`) VALUES
(1, 40, 56, '2019-11-28 11:00:09', '2019-11-19', '2019-11-30'),
(2, 101, 97, '2019-11-28 11:01:51', '2019-11-11', '2019-11-29'),
(4, 101, 1, '2019-11-28 15:33:13', '2019-11-24', '2019-12-27'),
(5, 81, 103, '2019-11-28 17:15:44', '2019-11-11', '2019-11-28'),
(6, 86, 101, '2019-11-28 17:17:04', '2019-11-01', '2019-11-28'),
(7, 101, 1, '2019-11-28 17:19:35', '2019-11-07', '2019-11-24'),
(8, 74, 58, '2019-11-29 17:57:04', '2019-11-05', '2019-11-22'),
(9, 74, 25, '2019-11-29 17:57:04', '2019-11-01', '2019-11-28'),
(10, 101, 60, '2019-11-30 10:00:23', '2019-11-02', '2019-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT 'isDone?',
  `description` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL COMMENT 'parttime/fulltime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `organization_id`, `position`, `amount`, `date_created`, `status`, `description`, `type`) VALUES
(1, 5, 'IT Helpdesk', 3, '2019-04-28 17:00:00', 1, '- Hỗ trợ khắc phục sự cố máy tính, máy in, thiết bị mạng văn phòng.\r\n- Cài đặt máy tính và các ứng dụng phần mềm trên các máy của user.\r\n- Lập các báo cáo liên quan đến các vấn đề về IT.\r\n- Quản lí các thiết bị IT đảm bảo an ninh thông tin.', 'Fulltime'),
(2, 15, 'JAVA', 2, '2019-07-20 17:00:00', 1, NULL, 'Partime'),
(3, 7, ' Mobile (iOS – Android)', 8, '2019-09-07 17:00:00', 2, NULL, 'Partime'),
(4, 11, 'Web Designer', 9, '2019-08-28 17:00:00', 2, NULL, 'Partime'),
(5, 9, 'Frontend Engineer', 9, '2019-04-18 17:00:00', 1, NULL, 'Partime'),
(6, 9, 'nodejs', 10, '2019-04-15 17:00:00', 1, 'bbbb', 'Partime'),
(7, 5, 'IT Specialist', 6, '2019-05-23 17:00:00', 1, NULL, 'Partime'),
(8, 9, 'Digital Technical', 2, '2019-08-21 17:00:00', 2, NULL, 'Partime'),
(9, 5, 'Php/.net Developer', 9, '2019-07-08 17:00:00', 1, NULL, 'Partime'),
(10, 17, 'Web Developer (Fresher, Junior)', 4, '2019-07-03 17:00:00', 1, NULL, 'Partime'),
(11, 12, ' Graphic Designer', 4, '2019-04-26 17:00:00', 2, NULL, 'Partime'),
(12, 15, 'Illustrator', 6, '2019-06-02 17:00:00', 2, NULL, 'Partime'),
(13, 19, 'Quality Controller', 9, '2018-12-13 17:00:00', 1, NULL, 'Partime'),
(14, 3, 'Tester', 2, '2019-08-11 17:00:00', 1, NULL, 'Partime'),
(15, 18, 'Senior WordPress Developer', 8, '2018-11-14 17:00:00', 2, NULL, 'Partime'),
(16, 17, 'Php / Wordpress / Python', 7, '2019-06-06 17:00:00', 1, NULL, 'Partime'),
(17, 9, 'Fresher Developers (.net- JAVA)', 5, '2019-09-24 17:00:00', 2, NULL, 'Partime'),
(18, 9, 'Webgis', 7, '2019-05-17 17:00:00', 1, NULL, 'Partime'),
(19, 4, 'Backend (PHP, Java, Nodejs)', 4, '2019-04-11 17:00:00', 1, NULL, 'Partime'),
(20, 16, 'Mobile Game Developer (iOS, Android)', 10, '2018-12-18 17:00:00', 1, NULL, 'Partime'),
(21, 19, '2D Artist', 4, '2019-04-08 17:00:00', 2, NULL, 'Partime'),
(22, 18, 'PHP Developer for Game', 7, '2019-08-10 17:00:00', 1, NULL, 'Partime'),
(23, 11, '.NET Software Developers', 8, '2019-08-08 17:00:00', 1, NULL, 'Partime'),
(24, 11, ' Data Engineer', 9, '2019-08-11 17:00:00', 1, NULL, 'Partime'),
(25, 13, 'Senior Uiux Designer', 2, '2019-02-13 17:00:00', 1, NULL, 'Partime'),
(26, 15, 'IT Technician', 7, '2019-05-19 17:00:00', 2, NULL, 'Fulltime'),
(27, 2, 'Web Intern', 6, '2019-05-05 17:00:00', 2, NULL, 'Fulltime'),
(28, 8, 'IT Officer', 10, '2019-10-20 17:00:00', 1, NULL, 'Fulltime'),
(29, 8, 'Web Developer ', 7, '2019-11-01 17:00:00', 2, NULL, 'Fulltime'),
(30, 16, 'IT.NET', 8, '2019-08-16 17:00:00', 1, NULL, 'Fulltime'),
(31, 15, 'Web Developer - IT', 6, '2019-10-05 17:00:00', 1, NULL, 'Fulltime'),
(32, 10, 'Web Developer (Ruby)', 7, '2019-09-28 17:00:00', 2, NULL, 'Fulltime'),
(33, 6, 'Junior Tester App/Web ', 6, '2019-04-23 17:00:00', 2, NULL, 'Fulltime'),
(34, 3, 'IT Dev/ BSE', 2, '2019-06-26 17:00:00', 1, NULL, 'Fulltime'),
(35, 14, 'Front-end Developer (HTML/CSS/JavaScript)', 6, '2019-05-09 17:00:00', 1, NULL, 'Fulltime'),
(36, 5, 'IT Engineer', 9, '2019-07-26 17:00:00', 1, NULL, 'Fulltime'),
(37, 6, 'NET/C# Developer ', 9, '2019-10-12 17:00:00', 1, NULL, 'Fulltime'),
(38, 16, 'JAVA WEB Developer', 7, '2019-08-10 17:00:00', 1, NULL, 'Fulltime'),
(39, 4, 'Developer', 1, '2019-05-16 17:00:00', 2, NULL, 'Fulltime'),
(40, 9, 'Front-end Dev (JavaScript, HTML5, CSS)', 7, '2019-06-09 17:00:00', 2, NULL, 'Fulltime'),
(41, 11, 'Markup Developer (HTML/CSS)', 8, '2019-10-31 17:00:00', 2, NULL, 'Fulltime'),
(42, 4, '[URGENT] Front-end Developer', 4, '2019-05-27 17:00:00', 1, NULL, 'Fulltime'),
(43, 7, 'FrontEnd Dev (ReactJS/JavaScript) ', 7, '2019-11-02 17:00:00', 1, NULL, 'Fulltime'),
(44, 16, 'Tester (Junior/Senior)', 3, '2019-06-11 17:00:00', 1, NULL, 'Fulltime'),
(45, 4, 'Software Tester', 9, '2019-08-05 17:00:00', 2, NULL, 'Fulltime'),
(46, 16, 'PHP, JAVA, C+, C#', 7, '2018-11-21 17:00:00', 2, 'Có 3 năm kinh nghiệm\r\nTiếng Nhật N3 trở lên', 'Fulltime'),
(47, 6, 'Web Developer (Front-end, Back-end)', 5, '2019-03-17 17:00:00', 1, NULL, 'Fulltime'),
(48, 1, 'Ruby on Rails Developer', 4, '2019-06-29 17:00:00', 2, NULL, 'Fulltime'),
(49, 6, 'PHP Dev (Javascript, MySQL, HTML)', 7, '2019-02-05 17:00:00', 1, NULL, 'Fulltime'),
(50, 1, 'Front-end Dev', 6, '2019-06-16 17:00:00', 2, NULL, 'Fulltime'),
(51, 8, 'Ruby on Rails', 2, '2019-07-29 17:00:00', 1, NULL, 'Partime'),
(52, 8, 'Fresher/Junior/Senior PHP Developer ', 9, '2019-05-06 17:00:00', 2, NULL, 'Partime'),
(53, 10, 'Web Developer (Ruby on Rails/PHP)', 2, '2019-09-07 17:00:00', 2, NULL, 'Partime'),
(54, 19, 'Customer Support & Software Tester', 2, '2018-12-28 17:00:00', 1, NULL, 'Partime'),
(55, 14, 'Senior Frontend developer (ReactJS/VueJS)', 10, '2018-12-18 17:00:00', 2, NULL, 'Partime'),
(56, 17, 'PHP Developer ', 10, '2019-02-26 17:00:00', 1, NULL, 'Partime'),
(57, 19, 'PHP Developer (Paymentwall BRM Developer)', 4, '2019-03-11 17:00:00', 1, NULL, 'Partime'),
(58, 11, 'Ruby Developer', 1, '2019-01-23 17:00:00', 2, NULL, 'Partime'),
(59, 6, 'PHP Developer', 1, '2019-10-25 17:00:00', 2, NULL, 'Partime'),
(60, 15, 'PHP Developer', 4, '2019-10-01 17:00:00', 2, NULL, 'Partime'),
(61, 3, 'PHP Developer for Game', 9, '2019-10-03 17:00:00', 1, NULL, 'Partime'),
(62, 6, 'Ruby Developer', 2, '2019-06-24 17:00:00', 1, NULL, 'Partime'),
(63, 4, 'Java', 6, '2019-11-06 17:00:00', 2, 'Yêu cầu: > 1 năm làm việc với Java', 'Fulltime'),
(64, 11, 'FrontEnd Developer', 10, '2019-06-03 17:00:00', 1, NULL, 'Partime'),
(65, 2, 'TESTER', 6, '2019-06-22 17:00:00', 2, NULL, 'Partime'),
(66, 12, 'FrontEnd, ReactJS Software Engineer', 6, '2019-09-04 17:00:00', 1, NULL, 'Partime'),
(67, 18, 'Junior/ Senior Tester', 5, '2019-06-08 17:00:00', 2, NULL, 'Partime'),
(68, 11, 'Front-end Developer (Angular/ReactJS/VueJS)', 3, '2019-01-30 17:00:00', 2, NULL, 'Partime'),
(69, 4, 'QA/ Tester (Web, Mobile App)', 8, '2019-04-08 17:00:00', 1, NULL, 'Partime'),
(70, 14, 'Junior Full-stack developer', 1, '2019-05-12 17:00:00', 2, NULL, 'Partime'),
(71, 16, 'Software Engineering Intern', 2, '2019-05-23 17:00:00', 1, NULL, 'Partime'),
(72, 1, 'PHP Dev (Laravel, MySQL) ', 3, '2019-04-29 17:00:00', 2, NULL, 'Partime'),
(73, 8, 'PHP Dev (Laravel, MySQL)', 6, '2019-03-19 17:00:00', 1, NULL, 'Partime'),
(74, 16, 'Junior Tester', 10, '2019-08-21 17:00:00', 2, NULL, 'Partime'),
(75, 6, 'Tester Junior', 1, '2019-04-10 17:00:00', 2, NULL, 'Partime'),
(76, 11, 'PHP Dev ', 2, '2019-11-11 17:00:00', 2, NULL, 'Fulltime'),
(77, 18, 'Automation Tester', 8, '2019-07-23 17:00:00', 1, NULL, 'Fulltime'),
(78, 6, 'SMARTPHONE APP DEVELOPER ', 4, '2019-07-31 17:00:00', 1, NULL, 'Fulltime'),
(79, 10, 'Web Developers: PHP + Javascript/ Vue.js/ Reactjs', 7, '2018-11-27 17:00:00', 2, NULL, 'Partime'),
(80, 18, 'Senior PHP/Laravel developer', 3, '2019-01-03 17:00:00', 2, NULL, 'Fulltime'),
(81, 11, 'Web Developers', 2, '2019-07-17 17:00:00', 2, NULL, 'Fulltime'),
(82, 9, 'AngularJS Developer ', 8, '2019-07-08 17:00:00', 1, NULL, 'Fulltime'),
(83, 11, 'Junior Tester ', 9, '2018-11-21 17:00:00', 2, NULL, 'Fulltime'),
(84, 11, 'Junior tester ', 10, '2019-10-08 17:00:00', 2, NULL, 'Fulltime'),
(85, 4, 'Hiring 1 Junior Tester', 2, '2019-05-01 17:00:00', 1, NULL, 'Fulltime'),
(86, 10, 'Junior Tester', 9, '2019-08-06 17:00:00', 1, NULL, 'Fulltime'),
(87, 14, 'Sr PHP Dev (Laravel, MySQL) ', 5, '2019-11-10 17:00:00', 1, NULL, 'Fulltime'),
(88, 4, 'Web Optimization Specialist', 9, '2019-10-01 17:00:00', 1, NULL, 'Partime'),
(89, 4, 'Senior PHP Developer', 10, '2019-10-28 17:00:00', 2, NULL, 'Partime'),
(90, 16, 'Senior PHP Developer', 3, '2019-06-03 17:00:00', 1, NULL, 'Partime'),
(91, 3, 'PHP Developer', 10, '2019-11-07 17:00:00', 1, NULL, 'Partime'),
(92, 10, 'Junior Tester QA', 2, '2019-01-30 17:00:00', 2, NULL, 'Partime'),
(93, 2, 'Dev (PHP/.NET/Mobile) ', 5, '2019-06-01 17:00:00', 2, NULL, 'Partime'),
(94, 19, 'Tester (QA QC, English) ', 2, '2019-01-24 17:00:00', 2, NULL, 'Partime'),
(95, 15, 'Tester / QA QC', 9, '2019-02-18 17:00:00', 2, NULL, 'Partime'),
(96, 2, 'NodeJS Backend Developer', 6, '2019-10-18 17:00:00', 1, NULL, 'Partime'),
(97, 13, 'Junior Java Developer', 7, '2019-04-30 17:00:00', 2, NULL, 'Partime'),
(98, 1, 'PHP Developer (HTML5, Javascript)', 5, '2019-06-11 17:00:00', 1, NULL, 'Partime'),
(99, 10, 'Web Developer (PHP, Java, NodeJS)', 3, '2019-01-16 17:00:00', 2, NULL, 'Partime'),
(100, 17, 'Backend Engineer (Python, NodeJS)', 5, '2018-11-14 17:00:00', 2, NULL, 'Partime'),
(101, 21, 'java', 12, '2019-11-28 16:10:50', 1, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Fulltime'),
(102, 21, 'Senior .Net Developer', 121, '2019-11-28 16:17:29', 1, '', 'Fulltime'),
(103, 21, 'php', 8, '2019-11-28 16:18:26', 2, 'php', 'Partime'),
(104, 21, 'Javascript', 51, '2019-11-28 16:18:53', 1, '', 'Fulltime'),
(105, 21, 'Node JS', 6, '2019-11-28 16:23:45', 2, 'B lÃ m viá»‡c tá»‘t!', 'Fulltime'),
(106, 21, 'IT', 1, '2019-11-29 15:41:18', 1, '', 'Partime'),
(107, 21, 'SALE', 2, '2019-11-29 17:14:31', 1, 'dsdsdsdsdfffffff', 'Partime'),
(108, 23, 'Full stack developer', 2, '2019-12-01 09:22:42', 1, 'Æ¯u tiÃªn á»©ng viÃªn thÃ nh tháº¡o PHP, CSS3, HTML5 vÃ  Responsive Design\r\nCÃ³ hiá»ƒu biáº¿t vá» UI/UX\r\nHiá»ƒu biáº¿t thÃªm vá» JAVA vÃ  Python lÃ  má»™t lá»£i tháº¿\r\nCÃ³ kháº£ nÄƒng Ä‘á»c hiá»ƒu cÃ¡c tÃ i liá»‡u Tiáº¿ng Anh\r\nKhÃ´ng cÃ³ kinh nghiá»‡m sáº½ Ä‘Æ°á»£c Ä‘Ã o táº¡o', 'fulltime'),
(109, 24, 'Java Developer', 2, '2019-12-03 18:44:41', 1, 'CÃ³ Ã­t nháº¥t 1 nÄƒm lÃ m viá»‡c vá»›i Java.\r\nÄÆ°á»£c lÃ m viá»‡c vá»›i cÃ¡c Ä‘á»‘i tÃ¡c nÆ°á»›c ngoÃ i.\r\nTham gia vÃ o cÃ¡c dá»± Ã¡n phÃ¡t triá»ƒn website thÆ°Æ¡ng máº¡i Ä‘iá»‡n tá»­ cho khÃ¡ch hÃ ng trÃªn toÃ n cáº§u.\r\nTÃ¹y biáº¿n sáº£n pháº©m theo yÃªu cáº§u cá»§a khÃ¡ch hÃ ng', 'fulltime'),
(110, 24, 'Láº­p TrÃ¬nh ViÃªn PHP', 1, '2019-12-03 18:47:36', 1, 'Láº­p trÃ¬nh PHP & Mysql trÃªn ná»n Zend Framework.\r\nTham gia phÃ¢n tÃ­ch, thiáº¿t káº¿, phÃ¡t triá»ƒn extension cho Magento2.\r\nTham gia vÃ o cÃ¡c dá»± Ã¡n phÃ¡t triá»ƒn website thÆ°Æ¡ng máº¡i Ä‘iá»‡n tá»­ cho khÃ¡ch hÃ ng trÃªn toÃ n cáº§u.', 'fulltime'),
(111, 24, 'Láº­p TrÃ¬nh ViÃªn Php / Javascript', 2, '2019-12-03 18:49:46', 1, 'XÃ¢y dá»±ng vÃ  phÃ¡t triá»ƒn á»¨ng dá»¥ng web báº±ng Javascript vÃ  / hoáº·c PHP (Laravel).\r\nThá»±c hiá»‡n theo mÃ´ hÃ¬nh quáº£n lÃ½ Agile.\r\nTá»± quáº£n lÃ½, Ä‘Æ°a ra deadline, set up mÃ´i trÆ°á»ng lÃ m viá»‡c vÃ  hiá»‡u suáº¥t cÃ´ng viá»‡c.', 'fulltime'),
(112, 24, 'NhÃ¢n ViÃªn IT - Quáº£n Trá»‹ Máº¡ng Ná»™i Bá»™', 3, '2019-12-03 18:50:44', 1, 'Quáº£n trá»‹ há»‡ thá»‘ng máº¡ng trong trÆ°á»ng máº§m non ROSEMONT.\r\nQuáº£n lÃ½ website cá»§a cÃ´ng ty.\r\nCÃ i Ä‘áº·t há»‡ thá»‘ng máº¡ng lan, server, mÃ¡y tráº¡m, mÃ¡y in, fax, scanâ€¦\r\nCÃ i Ä‘áº·t cÃ¡c chÆ°Æ¡ng trÃ¬nh diá»‡t virus trÃ¡nh sá»± cá»‘', 'fulltime'),
(113, 24, 'NhÃ¢n ViÃªn SEO Website', 1, '2019-12-03 18:52:48', 1, 'LÃªn káº¿ hoáº¡ch bÃ i viáº¿t hÃ ng thÃ¡ng theo tá»« khÃ³a SEO.\r\nNghiÃªn cá»©u, phÃ¢n tÃ­ch, tá»•ng há»£p vÃ  bÃ¡o cÃ¡o hoáº¡t Ä‘á»™ng cá»§a Ä‘á»‘i thá»§ cáº¡nh tranh.\r\nHÃ ng thÃ¡ng Ä‘Æ°a ra Ä‘á»‹nh hÆ°á»›ng phÃ¡t triá»ƒn cá»§a website.\r\nDÃ¹ng Google analytics, Webmaster tool Ä‘á»ƒ bÃ¡o cÃ¡o tÃ¬nh hÃ¬nh Website Ä‘ang quáº£n trá»‹.\r\nBack up dá»¯ liá»‡u cho cÃ¡c Website hÃ ng thÃ¡ng.\r\nNghiÃªn cá»©u, phÃ¢n tÃ­ch tá»« khÃ³a, Ä‘á»‘i thá»§; thá»‘ng kÃª thá»© háº¡ng tá»« khÃ³a, lÃªn lá»™ trÃ¬nh vÃ  SEO theo chá»‰ tiÃªu KPI hÃ ng thÃ¡ng.', 'fulltime'),
(114, 24, 'Fresher Developers (.net- JAVA)', 3, '2019-12-03 18:55:46', 1, 'Tham gia phÃ¢n tÃ­ch thiáº¿t káº¿ há»‡ thá»‘ng, thiáº¿t káº¿ Database, thiáº¿t káº¿ chi tiáº¿t.\r\nTham gia láº­p trÃ¬nh, kiá»ƒm thá»­ sáº£n pháº©m vá»›i ngÃ´n ngá»¯ .NET â€“ JAVA.\r\n LÃ m viá»‡c vá»›i Java nhÆ°: Java Core, Jsp Servlet, Struts 1, Struts 2, Spring MVC...\r\nLÃ m viá»‡c vá»›i .NET nhÆ°: VB.NET, C#, ASP.NET, MVC, VBA...\r\nCáº£i tiáº¿n vÃ  nÃ¢ng cao cháº¥t lÆ°á»£ng dá»± Ã¡n.', 'fulltime'),
(115, 24, 'NhÃ¢n ViÃªn Há»— Trá»£ Ká»¹ Thuáº­t Pháº§n Má»m', 5, '2019-12-03 18:56:31', 1, 'LÃ m viá»‡c theo sá»± chá»‰ Ä‘áº¡o cá»§a lÃ£nh Ä‘áº¡o Ban Dá»± Ã¡n.\r\n Tiáº¿p xÃºc, duy trÃ¬ má»‘i quan há»‡ vá»›i KhÃ¡ch hÃ ng.', 'fulltime'),
(116, 24, 'Láº­p TrÃ¬nh Webgis', 2, '2019-12-03 18:57:48', 2, 'Tham gia nghiÃªn cá»©u tÃ¬m hiá»ƒu, lÃªn cÃ¡c giáº£i phÃ¡p á»©ng dá»¥ng cÃ´ng nghá»‡ Ä‘á»‹a khÃ´ng gian trong cÃ¡c lÄ©nh vá»±c nhÆ° Báº¥t Ä‘á»™ng sáº£n, quáº£n lÃ½ tÃ i nguyÃªn mÃ´i trÆ°á»ng.\r\nCung cáº¥p cÃ¡c dá»‹ch vá»¥ há»— trá»£ liÃªn quan Ä‘áº¿n cÃ´ng nghá»‡ viá»…n thÃ¡m vÃ  GIS\r\nThu tháº­p dá»¯ liá»‡u thá»±c Ä‘á»‹a, xá»­ lÃ½ biÃªn táº­p, chuáº©n hÃ³a vÃ  tá»•ng há»£p dá»¯ liá»‡u Ä‘á»‹a khÃ´ng gian.\r\nXÃ¢y dá»±ng vÃ  quáº£n lÃ½ cÆ¡ sá»Ÿ dá»¯ liá»‡u khÃ´ng gian Ä‘á»‹a lÃ½.\r\nPhá»‘i há»£p vÃ  há»— trá»£ triá»ƒn khai cÃ¡c giáº£i phÃ¡p cá»§a cÃ¡c Ä‘á»‘i tÃ¡c viá»…n thÃ¡m', 'fulltime'),
(117, 24, 'Backend (PHP, Java, Nodejs)', 3, '2019-12-03 18:58:24', 1, 'XÃ¢y dá»±ng vÃ  phÃ¡t triá»ƒn cÃ¡c dá»± Ã¡n web theo yÃªu cáº§u\r\nPhÃ¡t triá»ƒn cÃ¡c dá»‹ch vá»¥ web realtime cÃ³ hiá»‡u nÄƒng cao, cÃ³ thá»ƒ scale\r\nDuy trÃ¬ vÃ  tá»‘i Æ°u code Ä‘á»ƒ dá»‹ch vá»¥ á»•n Ä‘á»‹nh, tin cáº­y, nhanh chÃ³ng.\r\nLiÃªn káº¿t tÃ­ch há»£p vá»›i cÃ¡c há»‡ thá»‘ng thanh toÃ¡n Ä‘iá»‡n tá»­, thÆ°Æ¡ng máº¡i Ä‘iá»‡n tá»­, marketplace, website.', 'fulltime'),
(118, 24, 'Mobile Game Developer (iOS, Android)', 1, '2019-12-03 18:58:57', 2, 'A-Team lÃ  cÃ´ng ty vá»‘n 100% cá»§a Nháº­t Báº£n, cÃ³ hai loáº¡i hÃ¬nh kinh doanh chÃ­nh: PhÃ¡t triá»ƒn game vÃ  á»©ng dá»¥ng ná»n di Ä‘á»™ng vÃ  giáº£i phÃ¡p website.\r\nVá»‹ trÃ­ nÃ y sáº½ Ä‘áº£m nháº­n viá»‡c phÃ¡t triá»ƒn á»©ng dá»¥ng vÃ  Game trÃªn ná»n táº£ng di Ä‘á»™ng (Ä‘iá»‡n thoáº¡i vÃ  mÃ¡y tÃ­nh báº£ng)', 'fulltime'),
(119, 24, '2D Artist/ Há»a SÄ© 2D', 2, '2019-12-03 18:59:50', 2, 'Thiáº¿t káº¿ nhÃ¢n váº­t chÃ­nh vÃ  nhÃ¢n váº­t pháº£n diá»‡n, váº­t pháº©m trong game\r\nThiáº¿ káº¿ hÃ¬nh ná»n vÃ  cÃ¡c bá»™ cÃ´ng cá»¥ khÃ¡c nhÆ° icon, buttons, banners\r\nTáº¡o cÃ¡c hiá»‡u á»©ng sá»­ dá»¥ng Adobe vÃ  Sprite', 'fulltime'),
(120, 25, 'PHP Developer', 3, '2019-12-03 19:02:04', 1, 'CÃ´ng ty vá»‘n 100% cá»§a Nháº­t Báº£n, cÃ³ hai loáº¡i hÃ¬nh kinh doanh chÃ­nh: PhÃ¡t triá»ƒn game vÃ  á»©ng dá»¥ng ná»n di Ä‘á»™ng vÃ  giáº£i phÃ¡p website.\r\nChÃºng tÃ´i Ä‘ang cÃ³ nhu cáº§u tuyá»ƒn dá»¥ng nhiá»u vá»‹ trÃ­ PHP Developer cho nhu cáº§u má»Ÿ rá»™ng cÃ´ng ty. Vá»‹ trÃ­ nÃ y sáº½ phÃ¡t triá»ƒn há»‡ thá»‘ng vÃ  Engine Ä‘á»ƒ cháº¡y cÃ¡c game vÃ  á»©ng dá»¥ng trÃªn ná»n di Ä‘á»™ng.', 'fulltime'),
(121, 25, '.NET Software Developers', 5, '2019-12-03 19:02:36', 1, 'Tham gia phÃ¢n tÃ­ch thiáº¿t káº¿ há»‡ thá»‘ng, thiáº¿t káº¿ Database, thiáº¿t káº¿ chi tiáº¿t\r\nTham gia láº­p trÃ¬nh, kiá»ƒm thá»­ sáº£n pháº©m vá»›i ngÃ´n ngá»¯ .NET\r\nCáº£i tiáº¿n vÃ  nÃ¢ng cao cháº¥t lÆ°á»£ng dá»± Ã¡n.', 'fulltime'),
(122, 25, 'Data Engineer', 2, '2019-12-03 19:03:07', 1, 'Thiáº¿t káº¿, xÃ¢y dá»±ng há»‡ thá»‘ng thu tháº­p sá»‘ liá»‡u, tá»• chá»©c nhÃ  kho dá»¯ liá»‡u, xá»­ lÃ½ streaming data.\r\nTham gia phÃ¡t triá»ƒn, triá»ƒn khai, váº­n hÃ nh cÃ¡c dá»‹ch vá»¥/giáº£i phÃ¡p trÃªn ná»n táº£ng dá»¯ liá»‡u lá»›n.\r\nTham tÃ­ch há»£p, triá»ƒn khai, váº­n hÃ nh, há»— trá»£ cÃ¡c dá»‹ch vá»¥ khai thÃ¡c sá»‘ liá»‡u', 'fulltime'),
(123, 25, 'Data Scientists', 2, '2019-12-03 19:03:37', 1, 'Thiáº¿t kÃª xÃ¢y dá»±ng há»‡ thá»‘ng phÃ¢n tÃ­ch sá»‘ liá»‡u thÃ´ng minh (Analytics, BI)\r\nNghiÃªn cá»©u, xÃ¢y dá»±ng cÃ¡c giáº£i phÃ¡p, cÃ¡c mÃ´ hÃ¬nh thá»±c thi (dá»± Ä‘oÃ¡n, phÃ¢n lá»›p, phÃ¢n cá»¥m, v.v.) trÃªn ná»n táº£ng BigData vÃ  Machine learning', 'fulltime'),
(124, 25, 'Senior Uiux Designer', 5, '2019-12-03 19:04:28', 1, 'NghiÃªn cá»©u Ä‘á» xuáº¥t vÃ  cáº£i thiá»‡n UI, UX cÃ¡c website cá»§a khá»‘i dá»‹ch vá»¥ ngÃ¢n hÃ ng cÃ´ng nghá»‡ sá»‘ VPBank\r\nÄá» xuáº¥t UI, UX cho cÃ¡c thiáº¿t káº¿ web, web app vÃ  mobile apps cá»§a khá»‘i Dá»‹ch vá»¥ ngÃ¢n hÃ ng cÃ´ng nghá»‡ sá»‘\r\nâ–ª Cáº£i tiáº¿n cÃ¡c landing page, website cho cÃ¡c chiáº¿n dá»‹ch, sáº£n pháº©m cá»§a khá»‘i\r\nThá»±c hiá»‡n cÃ¡c thá»­ nghiá»‡m vá» UI, UX vÃ  cáº£i tiáº¿n\r\nTham gia cÃ¡c dá»± Ã¡n lá»›n theo yÃªu cáº§u (Ebank Portal, E-wallet v.v)', 'fulltime'),
(125, 25, 'Testers', 9, '2019-12-03 19:05:01', 1, 'PhÃ¢n tÃ­ch vÃ  há»— trá»£ khÃ¡ch hÃ ng táº¡o tÃ i liá»‡u SRS.\r\nLáº­p káº¿ hoáº¡ch Test, phÃ¢n tÃ­ch tÃ i liá»‡u, thiáº¿t káº¿ Test Case, cháº¡y Test Case.\r\nTheo dÃµi, tá»•ng há»£p, Ä‘Ã¡nh giÃ¡, bÃ¡o cÃ¡o káº¿t quáº£ Test cho cÃ¡c bÃªn liÃªn quan.\r\nHá»— trá»£ Ä‘Ã o táº¡o, giÃºp Ä‘á»¡ cÃ¡c thÃ nh viÃªn khÃ¡c trong team Test.', 'fulltime'),
(126, 25, 'Php / Wordpress / Python', 3, '2019-12-03 19:05:45', 1, 'LÃ m viá»‡c vá» website PHP / Wordpress\r\nTham gia nghiÃªn cá»©u, xÃ¢y dá»±ng phÃ¡t triá»ƒn website, pháº§n má»m cá»§a cÃ´ng ty\r\n- XÃ¢y dá»±ng, chá»‰nh sá»­a cÃ¡c website trÃªn ná»n táº£ng Wordpress, PHP...\r\nXá»­ lÃ½ lá»—i vÃ  tá»‘i Æ°u hÃ³a váº­n hÃ nh cho cÃ¡c tÃ­nh nÄƒng hiá»‡n cÃ³.\r\nCÃ´ng viá»‡c cá»¥ thá»ƒ trao Ä‘á»•i khi phá»ng váº¥n', 'fulltime');

-- --------------------------------------------------------

--
-- Table structure for table `request_ability`
--

CREATE TABLE `request_ability` (
  `request_id` int(11) NOT NULL,
  `ability_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `request_ability`
--

INSERT INTO `request_ability` (`request_id`, `ability_id`) VALUES
(101, 32),
(101, 38),
(102, 42),
(105, 3),
(107, 35),
(107, 1),
(106, 2),
(106, 1),
(106, 3),
(106, 38),
(107, 3),
(107, 32),
(104, 3),
(104, 4);

-- --------------------------------------------------------

--
-- Table structure for table `request_assignment`
--

CREATE TABLE `request_assignment` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `intern_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `request_assignment`
--

INSERT INTO `request_assignment` (`id`, `request_id`, `intern_id`, `start_date`, `end_date`, `status`, `date_created`) VALUES
(1, 22, 69, '2020-06-15', '2020-01-06', 1, '2019-10-26 16:39:12'),
(2, 12, 33, '2020-01-16', '2020-11-12', 1, '2019-09-16 03:30:40'),
(3, 25, 86, '2020-01-25', '2020-02-04', 2, '2019-09-08 14:54:07'),
(4, 19, 41, '2020-05-27', '2020-06-30', 2, '2019-09-29 15:09:04'),
(5, 22, 87, '2020-07-14', '2020-01-28', 2, '2019-09-25 23:57:52'),
(6, 3, 38, '2020-05-20', '2020-02-12', 1, '2019-11-08 12:55:09'),
(7, 18, 86, '2020-02-21', '2019-12-01', 1, '2019-09-12 18:59:35'),
(8, 8, 23, '2020-06-23', '2020-10-16', 1, '2019-10-04 18:07:40'),
(10, 29, 92, '2019-12-04', '2020-08-09', 1, '2019-10-05 16:55:49'),
(11, 23, 2, '2020-08-05', '2019-12-23', 2, '2019-11-06 13:15:33'),
(12, 4, 19, '2020-04-24', '2020-10-09', 2, '2019-10-03 16:38:59'),
(13, 11, 50, '2020-03-21', '2020-10-12', 1, '2019-10-21 19:10:15'),
(14, 11, 75, '2020-02-16', '2020-08-05', 2, '2019-10-12 07:51:43'),
(15, 29, 83, '2020-08-26', '2020-07-20', 1, '2019-10-03 13:07:38'),
(16, 19, 90, '2020-08-29', '2020-02-10', 1, '2019-10-25 11:39:16'),
(17, 12, 86, '2020-07-28', '2020-10-16', 2, '2019-08-22 00:38:30'),
(18, 21, 48, '2020-08-11', '2020-02-10', 2, '2019-11-08 17:19:30'),
(19, 11, 39, '2020-03-02', '2020-04-22', 1, '2019-08-23 18:07:18'),
(20, 28, 60, '2020-04-20', '2019-12-19', 1, '2019-10-15 11:45:22'),
(21, 1, 62, '2020-06-05', '2020-06-09', 1, '2019-08-14 10:38:14'),
(22, 25, 78, '2019-12-23', '2020-07-20', 1, '2019-08-20 19:49:30'),
(23, 22, 45, '2020-04-17', '2020-09-25', 2, '2019-09-13 14:35:44'),
(24, 22, 72, '2020-08-21', '2020-08-25', 2, '2019-10-05 23:54:36'),
(25, 16, 38, '2020-09-08', '2020-08-31', 2, '2019-08-04 18:47:44'),
(26, 27, 88, '2020-07-11', '2020-05-15', 2, '2019-09-13 02:03:06'),
(27, 6, 77, '2020-08-09', '2020-02-28', 2, '2019-10-07 15:09:54'),
(28, 27, 46, '2020-03-03', '2020-07-24', 1, '2019-09-21 00:32:58'),
(29, 21, 8, '2020-01-27', '2020-10-29', 2, '2019-08-24 04:00:09'),
(30, 24, 94, '2020-07-02', '2020-09-16', 1, '2019-10-21 17:18:52'),
(31, 12, 86, '2020-05-16', '2020-07-13', 1, '2019-08-28 11:55:30'),
(32, 26, 53, '2020-11-08', '2020-07-06', 2, '2019-10-11 06:37:20'),
(33, 25, 88, '2019-11-20', '2020-09-03', 2, '2019-09-08 04:41:51'),
(34, 12, 23, '2020-01-10', '2020-02-05', 1, '2019-09-24 00:55:54'),
(35, 14, 88, '2020-01-15', '2020-11-06', 2, '2019-09-22 10:00:06'),
(36, 19, 92, '2020-05-26', '2020-04-30', 1, '2019-08-16 22:45:41'),
(37, 29, 8, '2020-02-23', '2020-06-28', 2, '2019-10-17 08:17:23'),
(38, 14, 100, '2020-07-20', '2019-12-21', 1, '2019-09-26 15:36:13'),
(39, 1, 5, '2020-04-03', '2019-12-26', 1, '2019-10-26 16:52:57'),
(40, 29, 46, '2020-01-14', '2020-07-29', 1, '2019-10-01 14:22:24'),
(41, 16, 63, '2020-10-01', '2020-05-21', 1, '2019-09-04 04:40:37'),
(42, 21, 49, '2020-04-15', '2020-10-13', 1, '2019-08-15 08:17:18'),
(43, 21, 64, '2020-03-24', '2020-05-28', 1, '2019-10-24 02:15:33'),
(44, 14, 66, '2020-04-24', '2020-10-20', 2, '2019-08-08 13:10:28'),
(45, 24, 9, '2020-08-05', '2020-10-18', 2, '2019-08-07 04:32:36'),
(46, 12, 77, '2020-09-02', '2020-07-09', 1, '2019-09-10 08:11:22'),
(47, 5, 1, '2019-11-29', '2020-09-21', 2, '2019-09-20 17:48:33'),
(48, 2, 78, '2020-11-08', '2020-01-22', 2, '2019-10-17 04:21:30'),
(49, 13, 13, '2019-11-20', '2020-02-19', 1, '2019-10-27 04:59:45'),
(50, 7, 59, '2020-10-04', '2020-08-21', 1, '2019-09-29 00:58:31'),
(51, 18, 78, '2019-11-16', '2020-10-14', 2, '2019-08-26 01:34:43'),
(52, 27, 65, '2020-02-21', '2020-03-29', 2, '2019-10-10 12:55:24'),
(53, 10, 68, '2020-10-18', '2020-09-05', 1, '2019-08-31 02:35:56'),
(54, 25, 13, '2019-12-12', '2020-08-16', 1, '2019-09-27 07:05:23'),
(55, 15, 1, '2020-02-15', '2020-10-28', 2, '2019-10-29 18:22:05'),
(56, 8, 82, '2019-12-06', '2020-08-12', 1, '2019-10-21 10:55:48'),
(57, 2, 34, '2020-04-17', '2020-04-04', 2, '2019-08-29 20:48:45'),
(58, 17, 73, '2020-05-25', '2020-11-08', 2, '2019-11-06 23:12:23'),
(59, 19, 74, '2019-11-26', '2020-08-23', 2, '2019-08-20 21:45:16'),
(60, 1, 55, '2020-05-29', '2020-01-01', 2, '2019-11-11 02:39:20'),
(61, 20, 69, '2020-06-24', '2020-09-29', 2, '2019-08-21 20:31:14'),
(62, 15, 47, '2020-01-26', '2020-06-01', 1, '2019-08-06 08:41:56'),
(63, 29, 53, '2020-01-27', '2020-10-14', 2, '2019-09-23 18:07:38'),
(64, 9, 22, '2020-07-30', '2020-09-23', 1, '2019-08-20 00:17:50'),
(65, 24, 11, '2019-12-04', '2020-05-18', 1, '2019-09-20 22:27:31'),
(66, 17, 20, '2020-01-12', '2020-03-01', 2, '2019-10-10 12:31:50'),
(67, 26, 65, '2020-05-29', '2020-11-05', 2, '2019-08-05 19:12:16'),
(68, 22, 46, '2020-02-25', '2019-11-23', 2, '2019-10-15 08:27:31'),
(69, 8, 4, '2020-03-07', '2020-06-29', 1, '2019-10-11 16:44:33'),
(70, 2, 93, '2020-03-05', '2020-02-25', 1, '2019-11-06 12:13:04'),
(71, 21, 28, '2020-01-08', '2020-07-26', 1, '2019-10-18 01:26:33'),
(72, 28, 98, '2020-09-06', '2020-09-16', 2, '2019-08-20 17:13:17'),
(73, 26, 69, '2020-05-17', '2020-05-09', 1, '2019-08-31 04:47:14'),
(74, 6, 26, '2020-08-16', '2019-12-06', 1, '2019-10-19 16:44:02'),
(75, 6, 9, '2019-12-11', '2020-05-06', 1, '2019-08-21 17:25:37'),
(76, 5, 81, '2020-05-05', '2020-05-05', 1, '2019-09-22 16:02:46'),
(77, 23, 43, '2020-11-04', '2020-02-29', 1, '2019-09-01 09:02:47'),
(78, 15, 3, '2020-01-23', '2020-07-11', 1, '2019-10-30 18:46:27'),
(79, 12, 94, '2020-03-05', '2020-05-29', 1, '2019-09-27 07:38:39'),
(80, 8, 24, '2020-07-15', '2019-12-09', 1, '2019-10-12 22:42:04'),
(81, 4, 9, '2020-10-02', '2020-05-17', 2, '2019-09-15 14:42:12'),
(82, 10, 94, '2020-08-09', '2020-06-12', 1, '2019-09-10 03:12:12'),
(83, 22, 41, '2020-09-28', '2020-03-02', 2, '2019-09-18 23:46:13'),
(84, 7, 83, '2020-09-12', '2020-06-06', 1, '2019-08-19 03:41:54'),
(85, 20, 48, '2019-11-24', '2020-02-11', 2, '2019-10-13 15:03:26'),
(86, 15, 26, '2020-08-03', '2020-07-11', 1, '2019-08-23 23:54:25'),
(87, 9, 80, '2020-07-27', '2020-02-13', 1, '2019-09-28 20:49:45'),
(88, 4, 3, '2020-03-30', '2019-12-15', 1, '2019-09-25 12:45:47'),
(89, 20, 39, '2020-01-14', '2020-04-07', 1, '2019-11-08 12:38:07'),
(90, 21, 33, '2020-05-03', '2020-06-06', 2, '2019-09-03 09:15:19'),
(91, 7, 94, '2020-08-04', '2020-09-22', 2, '2019-08-15 20:08:21'),
(92, 14, 53, '2019-12-09', '2020-10-15', 1, '2019-10-12 09:48:33'),
(93, 16, 39, '2020-08-15', '2020-05-14', 1, '2019-08-26 16:21:44'),
(94, 7, 80, '2020-01-02', '2020-10-19', 2, '2019-08-10 12:16:48'),
(95, 2, 59, '2020-09-22', '2020-02-25', 1, '2019-10-06 01:14:02'),
(96, 13, 16, '2020-09-07', '2020-03-13', 1, '2019-10-15 18:03:38'),
(97, 10, 41, '2020-04-23', '2020-02-10', 2, '2019-09-06 10:11:19'),
(98, 17, 70, '2020-04-04', '2020-02-04', 1, '2019-08-15 13:25:32'),
(99, 29, 91, '2020-08-08', '2020-07-03', 1, '2019-10-21 23:10:05'),
(100, 2, 89, '2020-04-20', '2020-06-14', 1, '2019-10-22 07:01:34'),
(118, 106, 6, '2019-11-07', '2019-11-30', 2, '2019-11-29 16:26:12'),
(119, 3, 7, '2019-11-01', '2019-11-21', 2, '2019-11-29 16:30:03'),
(120, 3, 7, '2019-11-01', '2019-11-21', 2, '2019-11-29 16:30:40'),
(121, 105, 10, '2019-11-16', '2019-11-21', 2, '2019-11-29 16:31:10'),
(125, 1, 101, '2019-11-24', '2019-12-27', NULL, '2019-11-29 18:12:25'),
(126, 56, 40, '2019-11-19', '2019-11-30', NULL, '2019-11-29 18:12:47'),
(127, 103, 52, '2019-05-04', '2019-09-04', 2, '2019-12-03 18:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Còn hiệu lực'),
(2, 'Hết hiệu lực');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profile`
--

CREATE TABLE `teacher_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `teacher_profile`
--

INSERT INTO `teacher_profile` (`id`, `name`, `contact`, `password`, `email`, `address`) VALUES
(1, 'Lisa', '263-842-9530', 'jq1bgdYsK', 'rmasden0@wired.com', '646 Northridge Way'),
(2, 'Ellsa', '352-604-9327', 'khpw5dfsDk', 'etumielli1@oakley.com', '48133 Eggendart Way'),
(3, 'Jack', '121-828-4931', 'moCV0w', 'mfinan2@chicagotribune.com', '607 Merchant Parkway'),
(4, 'Lim Jenrry', '386-213-7900', 'HSI2RXw7hI9s', 'dbaack3@facebook.com', '13 Butternut Junction'),
(5, '习', '585-370-9819', 'nPAQFhLP4o', 'mmatteuzzi4@nytimes.com', '4765 Michigan Road'),
(6, '钭', '153-402-3477', 'SZZoZYzFQGu', 'gtandy5@about.me', '2 Upham Trail'),
(7, '隆', '206-949-2496', '8yeqn8NLEH', 'gtrembey6@soup.io', '0682 Mayfield Terrace'),
(8, '支', '880-451-7149', 'xdw3bujcEFZP', 'amcloughlin7@cafepress.com', '009 Di Loreto Alley'),
(9, '红', '460-133-7010', 'jeLOnW6RUKi', 'wdally8@tinyurl.com', '23 Grasskamp Pass'),
(10, '裴', '421-667-2578', 'fKRlUiNcQ', 'ddunseath9@drupal.org', '08760 West Point'),
(11, 'Tráº§n Duy Phong', '3623312', '$2y$10$CoCOY29iUdrpgx.3U090Gud9hgQf.55Z.q8FGIQw/csni1wZrU/NK', '123456@gmail.com', ''),
(12, 'Nguyá»…n Linh', '0348764554', '$2y$10$jej1TvZp63M.1eT.nwNzvurdwsF/OnT2guJsrO2FL9bUeK0fR69Ga', '123@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ability_dictionary`
--
ALTER TABLE `ability_dictionary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `ability_type`
--
ALTER TABLE `ability_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern_ability`
--
ALTER TABLE `intern_ability`
  ADD KEY `intern_id` (`intern_id`),
  ADD KEY `ability_id` (`ability_id`);

--
-- Indexes for table `intern_profile`
--
ALTER TABLE `intern_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_profile`
--
ALTER TABLE `organization_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `intern_id` (`intern_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_id` (`organization_id`),
  ADD KEY `status_2` (`status`);

--
-- Indexes for table `request_ability`
--
ALTER TABLE `request_ability`
  ADD KEY `request_id` (`request_id`),
  ADD KEY `ability_id` (`ability_id`);

--
-- Indexes for table `request_assignment`
--
ALTER TABLE `request_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `intern_id` (`intern_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_profile`
--
ALTER TABLE `teacher_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ability_dictionary`
--
ALTER TABLE `ability_dictionary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ability_type`
--
ALTER TABLE `ability_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `intern_profile`
--
ALTER TABLE `intern_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `organization_profile`
--
ALTER TABLE `organization_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `request_assignment`
--
ALTER TABLE `request_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_profile`
--
ALTER TABLE `teacher_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ability_dictionary`
--
ALTER TABLE `ability_dictionary`
  ADD CONSTRAINT `ability_dictionary_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `ability_type` (`id`);

--
-- Constraints for table `intern_ability`
--
ALTER TABLE `intern_ability`
  ADD CONSTRAINT `intern_ability_ibfk_1` FOREIGN KEY (`intern_id`) REFERENCES `intern_profile` (`id`),
  ADD CONSTRAINT `intern_ability_ibfk_2` FOREIGN KEY (`ability_id`) REFERENCES `ability_dictionary` (`id`);

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`intern_id`) REFERENCES `intern_profile` (`id`),
  ADD CONSTRAINT `register_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization_profile` (`id`),
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`status`) REFERENCES `status` (`id`);

--
-- Constraints for table `request_ability`
--
ALTER TABLE `request_ability`
  ADD CONSTRAINT `request_ability_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  ADD CONSTRAINT `request_ability_ibfk_2` FOREIGN KEY (`ability_id`) REFERENCES `ability_dictionary` (`id`);

--
-- Constraints for table `request_assignment`
--
ALTER TABLE `request_assignment`
  ADD CONSTRAINT `request_assignment_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  ADD CONSTRAINT `request_assignment_ibfk_2` FOREIGN KEY (`intern_id`) REFERENCES `intern_profile` (`id`),
  ADD CONSTRAINT `request_assignment_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
