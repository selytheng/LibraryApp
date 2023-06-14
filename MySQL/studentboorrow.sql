-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 09:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentboorrow`
--

CREATE TABLE `studentboorrow` (
  `StudentID` varchar(10) NOT NULL,
  `StudentName` varchar(20) NOT NULL,
  `BookID` varchar(10) NOT NULL,
  `BookName` varchar(20) NOT NULL,
  `BorrowDate` varchar(20) NOT NULL,
  `ReturnDate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studentboorrow`
--

INSERT INTO `studentboorrow` (`StudentID`, `StudentName`, `BookID`, `BookName`, `BorrowDate`, `ReturnDate`) VALUES
('20190095', 'CHEN VATHANAK', '34287634', 'Orientalism', '13-Mar-23', '25-Mar-23'),
('20190405', 'KHON RITHY', '13436658', 'Python for Data Anal', '12-Jan-23', ''),
('20190431', 'KHY SEAVHUOY', '34566423', 'Introduction to Algo', '14-May-23', ''),
('20190486', 'LATH SIVMEY', '36465155', 'Complete Sherlock Ho', '28-Apr-23', '01-Jun-23'),
('20190716', 'NUON TOULOU', '51797576', 'Farewell to Arms, A', '4-Apr-23', ''),
('20190827', 'PHON PONLEU', '47008747', 'Return of the Primit', '10-Mar-23', ''),
('20190922', 'SAING NAM', '38645089', 'Soft Computing & Int', '31-Dec-22', '10-Jan-23'),
('20190976', 'SEM JEFFERSON', '94664043', 'Computer Vision, A M', '28-Jan-23', ''),
('20191238', 'VANN NONSAK', '54451150', 'India from Midnight ', '17-Apr-23', '27-Apr-23'),
('20200006', 'OUK PUTHPANHA', '54313523', 'Veteran, The', '28-Apr-23', ''),
('20200008', 'CHHARNG CHHIT', '56578387', 'Nature of Statistica', '14-Nov-22', '25-Nov-22'),
('20200018', 'HIEK LYMONYRATANAK', '42534654', 'New Machiavelli, The', '11-Feb-23', ''),
('20200061', 'TOM TITO', '22370326', 'Gun Gayin Awadi', '28-Dec-22', ''),
('20200065', 'KANG EANGCHHEANG', '35653536', 'Machine Learning for', '14-Feb-23', '21-Feb-23'),
('20200093', 'HY CHIN', '36376536', 'Making Software', '17-Dec-22', ''),
('20200159', 'SENG ENGHAV', '29885270', 'Principles of Commun', '3-Nov-22', '27-Nov-22'),
('20200196', 'VUTHY CHHEANGSRUN', '24372925', 'City of Joy, The', '17-Apr-23', ''),
('20200256', 'TOUCH LAY SRUN', '72662666', 'Aghal Paghal', '18-Mar-23', ''),
('20200268', 'VEASNA DARA', '80337771', 'Great Indian Novel, ', '15-Apr-23', '28-Apr-23'),
('20200270', 'SIM SOKHEN', '83798440', 'Amulet of Samarkand,', '22-Nov-22', '5-Dec-22'),
('20200276', 'HENG MENGHY', '38443658', 'Data Mining Handbook', '31-Jan-23', ''),
('20200279', 'EK TITYA', '88367485', 'Structure & Interpre', '14-Jan-23', ''),
('20200299', 'PANG LYHOUR', '81665495', 'False Impressions', '11-Apr-23', ''),
('20200306', 'DOURNG DARIYA', '89322344', 'Data Scientists at W', '14-Jan-23', ''),
('20200317', 'LENG SOKCHHAY', '80678722', 'Pillars of the Earth', '31-Dec-22', ''),
('20200319', 'HEANG CHANLEANG', '43332345', 'Trial, The', '27-Feb-23', ''),
('20200320', 'KREN SELA', '32311245', 'Outsider, The', '16-May-23', ''),
('20200395', 'EK MONIROTH', '78899666', 'Birth of a Theorem', '18-Dec-22', ''),
('20200449', 'SE LYTHENG', '19414215', 'Data Structures Usin', '22-Nov-22', ''),
('20200469', 'VEN DARA', '79258424', 'O Jerusalem!', '6-Apr-23', ''),
('20200473', 'SOM CHANVATTANAK', '12170789', 'Sea of Poppies', '29-Mar-23', ''),
('20200484', 'RITHYNY LYHAB', '73226103', 'Catch 22', '11-Apr-23', ''),
('20200511', 'KOSORL SAKKRA', '43535586', 'Beautiful and the Da', '28-Feb-23', ''),
('20200515', 'CHOENG KIMLAY', '23363244', 'Image Processing & M', '23-Nov-22', ''),
('20200519', 'HEANG SOKUNTHEARITH', '85645768', 'Statistical Decision', '20-Nov-22', ''),
('20200597', 'SARO SEREYVICHEA', '42691715', 'Learning OpenCV', '28-May-23', ''),
('20200602', 'CHOENG KIMHOK', '22332333', 'Drunkard\'s Walk, The', '4-May-23', ''),
('20200606', 'ANG OUSA', '23242134', 'God Created the Inte', '22-May-23', '29-May-23'),
('20200620', 'TANG HUYLONG', '91477904', 'Last Mughal, The', '3-May-23', ''),
('20200659', 'VANN CHAN SETHY', '36238931', 'Manasa', '15-Nov-22', ''),
('20200662', 'SUOS PHEARITH', '88848091', 'Scoop!', '6-Nov-22', ''),
('20200670', 'SONG PHANNATH', '78734592', 'Raisin in the Sun, A', '24-Feb-23', ''),
('20200671', 'CHAB SREYLEN', '43133665', 'Superfreakonomics', '12-Dec-22', '19-Dec-22'),
('20200672', 'NENG SOPHEAP', '92087439', 'Tao of Physics, The', '18-Jan-23', ''),
('20200768', 'NOU SOPHEANITH', '26247169', 'Surely You\'re Joking', '3-Dec-22', ''),
('20200790', 'SOEUN SOPANHARAK', '70493316', 'Angels & Demons', '4-Dec-22', ''),
('20200810', 'SER LONG', '90967238', 'Let Us C', '29-May-23', ''),
('20200818', 'PEK PISAL', '74089778', 'Last Lecture, The', '18-Dec-22', ''),
('20200826', 'TEANG SREYROTH', '58683729', 'Social Choice & Welf', '11-Nov-22', ''),
('20200940', 'LEANG KIMLONG', '95048675', 'Wealth of Nations, T', '15-Apr-23', ''),
('20200958', 'TY SOPHEAKTRA', '80279045', 'Maqta-e-Ghalib', '3-Apr-23', ''),
('20200974', 'LIM TECHCHHIV', '60958644', 'Mein Kampf', '15-Apr-23', ''),
('20200988', 'SORPORN SOVORTEY', '20046754', 'All the President\'s ', '17-Apr-23', ''),
('20200990', 'SAN VANNAK', '75256932', 'Econometric Analysis', '30-Nov-22', ''),
('20201008', 'POM MOUYLANG', '38286490', 'Once There Was a War', '19-Nov-22', ''),
('20201030', 'SONG KHEANG', '27101517', 'Idea of Justice, The', '28-Nov-22', ''),
('20201037', 'VAT SENGHONG', '96272374', 'World\'s Greatest Tri', '9-Feb-23', ''),
('20201056', 'HAI TONGMENG', '74444565', 'Age of Wrath, The', '20-Jan-23', ''),
('20201066', 'ING EAR', '35636356', 'Analysis, Vol I', '7-May-23', ''),
('20201101', 'ROU SENGHAK', '29410151', 'Dylan on Dylan', '13-Jan-23', ''),
('20201141', 'DY RONGRATH', '23457845', 'Slaughterhouse Five', '8-Nov-22', ''),
('20201160', 'RIN RAVIT', '87231183', 'Brethren, The', '12-Mar-23', ''),
('20201161', 'CHHAY SANWATHNAK', '72323794', 'Integration of the I', '30-Mar-23', '05-Apr-23'),
('20201174', 'SUN SIVMEY', '75119318', 'Prisoner of Birth, A', '22-May-23', ''),
('20201193', 'SOEM SEAKMENG', '28937404', 'Crime and Punishment', '6-Jan-23', ''),
('20201208', 'RATHA SOTHEA', '35229250', 'Moon is Down, The', '21-Apr-23', ''),
('20201216', 'SOM BUNHENG', '58788687', 'Argumentative Indian', '26-Mar-23', ''),
('20201245', 'TO VOLACKANGY', '11556563', 'Radiowaril Bhashane ', '16-May-23', ''),
('20201250', 'DIN PICH', '66445553', 'How to Think Like Sh', '13-Nov-22', ''),
('20201277', 'HOK SOCHETRA', '43457658', 'Physics & Philosophy', '10-Nov-22', ''),
('20201301', 'KUNVUTH SEREYRITH', '34463757', 'Complete Sherlock Ho', '28-Feb-23', ''),
('20201382', 'UN SENGLY', '22246086', 'Beyond Degrees', '11-Dec-22', ''),
('20201489', 'TAN PANHARA', '38904069', 'Ahe Manohar Tari', '8-Jan-23', ''),
('20201618', 'PIN SEAVMUY', '17658113', 'Journal of a Novel', '3-Dec-22', ''),
('20201700', 'RIN SINGH', '33964348', 'In a Free State', '23-Nov-22', ''),
('20201716', 'RORN MAKARA', '29886090', 'Complete Mastermind,', '19-Feb-23', ''),
('20201819', 'SAM SOKREAKSMEY', '50471064', 'Textbook of Economic', '4-Mar-23', ''),
('20201832', 'YEAN VATHANA', '36874414', 'Electric Universe', '12-May-23', ''),
('20201836', 'KEM SAMRACH', '32432547', 'Signal and the Noise', '15-Jan-23', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentboorrow`
--
ALTER TABLE `studentboorrow`
  ADD PRIMARY KEY (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
