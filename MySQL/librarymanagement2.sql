-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 04:17 PM
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
-- Table structure for table `adminlist`
--

CREATE TABLE `adminlist` (
  `Name` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ID` int(10) DEFAULT NULL,
  `Department` varchar(25) DEFAULT NULL,
  `Duties` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `adminlist`
--

INSERT INTO `adminlist` (`Name`, `Email`, `ID`, `Department`, `Duties`) VALUES
('banana', 'banana@gmail.com', 1212333, 'GIC', 'Eat'),
('AslanSingha', 'AslanSingha@gmail.com', 22333322, 'GIC', 'TTRZIN');

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Page` varchar(30) NOT NULL,
  `Public` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`ID`, `Name`, `Description`, `Author`, `Page`, `Public`) VALUES
(20200001, 'MouyLang Pom', 'Controller', 'VS Code', '250', 'April-2023'),
(20200002, 'Sivmuy Pin', 'Controller', 'VS Code', '220', 'April-2023'),
(20200003, 'Jefferson Sim', 'UI/UX', 'Scene Builder', '200', 'May-2023'),
(20200004, 'Rin Singh', 'UI/UX', 'Scene Builder', '200', 'May-2023'),
(20200005, 'Techchhiv Lim', 'UI/UX', 'Scene Builder', '200', 'May-2023'),
(20200449, 'LyTheng Se', 'Data Base', 'IntelIJ', '300', 'May-2023'),
(23484212, 'Fundamentals of Wavelets', 'signal_processing', 'Goswami, Jaideva', '228', 'Wiley'),
(23424234, 'Data Smart', 'data_science', 'Foreman, John', '235', 'Wiley'),
(23242134, 'God Created the Integers', 'mathematics', 'Hawking, Stephen', '197', 'Penguin'),
(43133665, 'Superfreakonomics', 'economics', 'Dubner, Stephen', '179', 'HarperCollins'),
(34287634, 'Orientalism', 'history', 'Said, Edward', '197', 'Penguin'),
(56578387, 'Nature of Statistical Learning Theory, The', 'data_science', 'Vapnik, Vladimir', '230', 'Springer'),
(72323794, 'Integration of the Indian States', 'history', 'Menon, V P', '217', 'Orient Blackswan'),
(22332333, 'Drunkard\'s Walk, The', 'science', 'Mlodinow, Leonard', '197', 'Penguin'),
(23363244, 'Image Processing & Mathematical Morphology', 'signal_processing', 'Shih, Frank', '241', 'CRC'),
(66445553, 'How to Think Like Sherlock Holmes', 'psychology', 'Konnikova, Maria', '240', 'Penguin'),
(89322344, 'Data Scientists at Work', 'data_science', 'Sebastian Gutierrez', '230', 'Apress'),
(23457845, 'Slaughterhouse Five', 'fiction', 'Vonnegut, Kurt', '198', 'Random House'),
(78899666, 'Birth of a Theorem', 'mathematics', 'Villani, Cedric', '234', 'Bodley Head'),
(88367485, 'Structure & Interpretation of Computer Programs', 'computer_science', 'Sussman, Gerald', '240', 'MIT Press'),
(74444565, 'Age of Wrath, The', 'history', 'Eraly, Abraham', '238', 'Penguin'),
(43332345, 'Trial, The', 'fiction', 'Kafka, Frank', '198', 'Random House'),
(85645768, 'Statistical Decision Theory\'', 'data_science', 'Pratt, John', '236', 'MIT Press'),
(38443658, 'Data Mining Handbook', 'data_science', 'Nisbet, Robert', '242', 'Apress'),
(42534654, 'New Machiavelli, The', 'fiction', 'Wells, H. G.', '180', 'Penguin'),
(43457658, 'Physics & Philosophy', 'science', 'Heisenberg, Werner', '197', 'Penguin'),
(36376536, 'Making Software', 'computer_science', 'Oram, Andy', '232', 'O\'Reilly'),
(35636356, 'Analysis, Vol I', 'mathematics', 'Tao, Terence', '248', 'HBA'),
(35653536, 'Machine Learning for Hackers', 'data_science', 'Conway, Drew', '233', 'O\'Reilly'),
(32432547, 'Signal and the Noise, The', 'data_science', 'Silver, Nate', '233', 'Penguin'),
(13436658, 'Python for Data Analysis', 'data_science', 'McKinney, Wes', '233', 'O\'Reilly'),
(34566423, 'Introduction to Algorithms', 'computer_science', 'Cormen, Thomas', '234', 'MIT Press'),
(43535586, 'Beautiful and the Damned, The', 'nonfiction', 'Deb, Siddhartha', '198', 'Penguin'),
(32311245, 'Outsider, The', 'fiction', 'Camus, Albert', '198', 'Penguin'),
(34463757, 'Complete Sherlock Holmes, The - Vol I', 'fiction', 'Doyle, Arthur Conan', '176', 'Random House'),
(36465155, 'Complete Sherlock Holmes, The - Vol II', 'fiction', 'Doyle, Arthur Conan', '176', 'Random House'),
(95048675, 'Wealth of Nations, The', 'economics', 'Smith, Adam', '175', 'Random House'),
(80678722, 'Pillars of the Earth, The', 'fiction', 'Follett, Ken', '176', 'Random House'),
(60958644, 'Mein Kampf', 'nonfiction', 'Hitler, Adolf', '212', 'Rupa'),
(92087439, 'Tao of Physics, The', 'science', 'Capra, Fritjof', '179', 'Penguin'),
(26247169, 'Surely You\'re Joking Mr Feynman', 'science', 'Feynman, Richard', '198', 'Random House'),
(51797576, 'Farewell to Arms, A', 'fiction', 'Hemingway, Ernest', '179', 'Rupa'),
(54313523, 'Veteran, The', 'fiction', 'Forsyth, Frederick', '177', 'Transworld'),
(81665495, 'False Impressions', 'fiction', 'Archer, Jeffery', '177', 'Pan'),
(74089778, 'Last Lecture, The', 'nonfiction', 'Pausch, Randy', '197', 'Hyperion'),
(47008747, 'Return of the Primitive', 'philosophy', 'Rand, Ayn', '202', 'Penguin'),
(55141229, 'Jurassic Park', 'fiction', 'Crichton, Michael', '174', 'Random House'),
(33834694, 'Russian Journal, A', 'nonfiction', 'Steinbeck, John', '196', 'Penguin'),
(67648128, 'Tales of Mystery and Imagination', 'fiction', 'Poe, Edgar Allen', '172', 'HarperCollins'),
(73425625, 'Freakonomics', 'economics', 'Dubner, Stephen', '197', 'Penguin'),
(83075301, 'Hidden Connections, The', 'science', 'Capra, Fritjof', '197', 'HarperCollins'),
(21999223, 'Story of Philosophy, The', 'philosophy', 'Durant, Will', '170', 'Pocket'),
(44907223, 'Asami Asami', 'fiction', 'Deshpande, P L', '205', 'Mauj'),
(17658113, 'Journal of a Novel', 'fiction', 'Steinbeck, John', '196', 'Penguin'),
(38286490, 'Once There Was a War', 'nonfiction', 'Steinbeck, John', '196', 'Penguin'),
(35229250, 'Moon is Down, The', 'fiction', 'Steinbeck, John', '196', 'Penguin'),
(87231183, 'Brethren, The', 'fiction', 'Grisham, John', '174', 'Random House'),
(33964348, 'In a Free State', 'fiction', 'Naipaul, V. S.', '196', 'Rupa'),
(73226103, 'Catch 22', 'fiction', 'Heller, Joseph', '178', 'Random House'),
(29886090, 'Complete Mastermind, The', 'nonfiction', 'BBC', '178', 'BBC'),
(29410151, 'Dylan on Dylan', 'nonfiction', 'Dylan, Bob', '197', 'Random House'),
(38645089, 'Soft Computing & Intelligent Systems', 'data_science', 'Gupta, Madan', '242', 'Elsevier'),
(50471064, 'Textbook of Economic Theory', 'economics', 'Stonier, Alfred', '242', 'Pearson'),
(75256932, 'Econometric Analysis', 'economics', 'Greene, W. H.', '242', 'Pearson'),
(42691715, 'Learning OpenCV', 'data_science', 'Bradsky, Gary', '232', 'O\'Reilly'),
(19414215, 'Data Structures Using C & C++', 'computer_science', 'Tanenbaum, Andrew', '235', 'Prentice Hall'),
(94664043, 'Computer Vision, A Modern Approach', 'data_science', 'Forsyth, David', '255', 'Pearson'),
(29885270, 'Principles of Communication Systems', 'computer_science', 'Taub, Schilling', '240', 'TMH'),
(90967238, 'Let Us C', 'computer_science', 'Kanetkar, Yashwant', '213', 'Prentice Hall'),
(83798440, 'Amulet of Samarkand, The', 'fiction', 'Stroud, Jonathan', '179', 'Random House'),
(28937404, 'Crime and Punishment', 'fiction', 'Dostoevsky, Fyodor', '180', 'Penguin'),
(70493316, 'Angels & Demons', 'fiction', 'Brown, Dan', '178', 'Random House'),
(58788687, 'Argumentative Indian, The', 'nonfiction', 'Sen, Amartya', '209', 'Picador'),
(12170789, 'Sea of Poppies', 'fiction', 'Ghosh, Amitav', '197', 'Penguin'),
(27101517, 'Idea of Justice, The', 'nonfiction', 'Sen, Amartya', '212', 'Penguin'),
(78734592, 'Raisin in the Sun, A', 'fiction', 'Hansberry, Lorraine', '175', 'Penguin'),
(20046754, 'All the President\'s Men', 'history', 'Woodward, Bob', '177', 'Random House'),
(75119318, 'Prisoner of Birth, A', 'fiction', 'Archer, Jeffery', '176', 'Pan'),
(88848091, 'Scoop!', 'history', 'Nayar, Kuldip', '216', 'HarperCollins'),
(38904069, 'Ahe Manohar Tari', 'nonfiction', 'Deshpande, Sunita', '213', 'Mauj'),
(91477904, 'Last Mughal, The', 'history', 'Dalrymple, William', '199', 'Penguin'),
(58683729, 'Social Choice & Welfare, Vol 39 No. 1', 'economics', 'Various', '235', 'Springer'),
(11556563, 'Radiowaril Bhashane & Shrutika', 'nonfiction', 'Deshpande, P L', '213', 'Mauj'),
(22370326, 'Gun Gayin Awadi', 'nonfiction', 'Deshpande, P L', '212', 'Mauj'),
(72662666, 'Aghal Paghal', 'nonfiction', 'Deshpande, P L', '212', 'Mauj'),
(80279045, 'Maqta-e-Ghalib', 'fiction', 'Garg, Sanjay', '221', 'Mauj'),
(22246086, 'Beyond Degrees', 'nonfiction', '', '222', 'HarperCollins'),
(36238931, 'Manasa', 'nonfiction', 'Kale, V P', '213', 'Mauj'),
(54451150, 'India from Midnight to Milennium', 'history', 'Tharoor, Shashi', '198', 'Penguin'),
(96272374, 'World\'s Greatest Trials, The', 'history', '', '210', ''),
(80337771, 'Great Indian Novel, The', 'fiction', 'Tharoor, Shashi', '198', 'Penguin'),
(79258424, 'O Jerusalem!', 'history', 'Lapierre, Dominique', '217', 'vikas'),
(24372925, 'City of Joy, The', 'fiction', 'Lapierre, Dominique', '177', 'vikas'),
(93883501, 'Freedom at Midnight', 'history', 'Lapierre, Dominique', '167', 'vikas'),
(11198667, 'Winter of Our Discontent, The', 'fiction', 'Steinbeck, John', '196', 'Penguin'),
(81115731, 'On Education', 'philosophy', 'Russell, Bertrand', '203', 'Routledge'),
(51106770, 'Free Will', 'philosophy', 'Harris, Sam', '203', 'FreePress'),
(80305378, 'Bookless in Baghdad', 'nonfiction', 'Tharoor, Shashi', '206', 'Penguin'),
(29887147, 'Case of the Lame Canary, The', 'fiction', 'Gardner, Earle Stanley', '179', ''),
(66605324, 'Theory of Everything, The', 'science', 'Hawking, Stephen', '217', 'Jaico'),
(29944212, 'New Markets & Other Essays', 'economics', 'Drucker, Peter', '176', 'Penguin'),
(36874414, 'Electric Universe', 'science', 'Bodanis, David', '201', 'Penguin'),
(25944240, 'Hunchback of Notre Dame, The', 'fiction', 'Hugo, Victor', '175', 'Random House'),
(73028913, 'Burning Bright', 'fiction', 'Steinbeck, John', '175', 'Penguin'),
(80153534, 'Age of Discontuinity, The', 'economics', 'Drucker, Peter', '178', 'Random House'),
(25207482, 'Doctor in the Nude', 'fiction', 'Gordon, Richard', '179', 'Penguin'),
(93800431, 'Down and Out in Paris & London', 'nonfiction', 'Orwell, George', '179', 'Penguin'),
(38458579, 'Identity & Violence', 'philosophy', 'Sen, Amartya', '219', 'Penguin'),
(47593482, 'Beyond the Three Seas', 'history', 'Dalrymple, William', '197', 'Random House'),
(16006468, 'World\'s Greatest Short Stories, The', 'fiction', '', '217', 'Jaico'),
(54479047, 'Talking Straight', 'nonfiction', 'Iacoca, Lee', '175', ''),
(53399623, 'Maugham\'s Collected Short Stories, Vol 3', 'fiction', 'Maugham, William S', '171', 'Vintage'),
(70083889, 'Phantom of Manhattan, The', 'fiction', 'Forsyth, Frederick', '180', ''),
(33248104, 'Ashenden of The British Agent', 'fiction', 'Maugham, William S', '160', 'Vintage'),
(78200730, 'Zen & The Art of Motorcycle Maintenance', 'philosophy', 'Pirsig, Robert', '172', 'Vintage'),
(87293498, 'Great War for Civilization, The', 'history', 'Fisk, Robert', '197', 'HarperCollins'),
(50137949, 'We the Living', 'fiction', 'Rand, Ayn', '178', 'Penguin'),
(51800313, 'Artist and the Mathematician, The', 'science', 'Aczel, Amir', '186', 'HighStakes'),
(35380855, 'History of Western Philosophy', 'philosophy', 'Russell, Bertrand', '213', 'Routledge'),
(85542166, 'Selected Short Stories', 'fiction', '', '215', 'Jaico'),
(63317870, 'Rationality & Freedom', 'economics', 'Sen, Amartya', '213', 'Springer'),
(96686875, 'Clash of Civilizations and Remaking of the World O', 'history', 'Huntington, Samuel', '228', 'Simon&Schuster'),
(23060114, 'Uncommon Wisdom', 'nonfiction', 'Capra, Fritjof', '197', 'Fontana'),
(77721617, 'One', 'nonfiction', 'Bach, Richard', '172', 'Dell'),
(51022826, 'Karl Marx Biography', 'nonfiction', '', '162', ''),
(69239983, 'To Sir With Love', 'fiction', 'Braithwaite', '197', 'Penguin'),
(74635040, 'Half A Life', 'fiction', 'Naipaul, V S', '196', '1937'),
(74526652, 'Discovery of India, The', 'history', 'Nehru, Jawaharlal', '230', '1983'),
(24114302, 'Apulki', 'nonfiction', 'Deshpande, P L', '211', '1928'),
(18547441, 'Unpopular Essays', 'philosophy', 'Russell, Bertrand', '198', '1893'),
(63671462, 'Deceiver, The', 'fiction', 'Forsyth, Frederick', '178', '2001'),
(70707042, 'Veil: Secret Wars of the CIA', 'history', 'Woodward, Bob', '171', '1966'),
(31285103, 'Char Shabda', 'nonfiction', 'Deshpande, P L', '214', '1923'),
(51736698, 'Rosy is My Relative', 'fiction', 'Durrell, Gerald', '176', '1945'),
(22218339, 'Moon and Sixpence, The', 'fiction', 'Maugham, William S', '180', '1906'),
(75774607, 'Political Philosophers', 'philosophy', '', '162', '1934'),
(42774181, 'Short History of the World, A', 'history', 'Wells, H G', '197', '1939'),
(88826661, 'Trembling of a Leaf, The', 'fiction', 'Maugham, William S', '205', '1921'),
(44020369, 'Doctor on the Brain', 'fiction', 'Gordon, Richard', '204', '1941'),
(33165776, 'Simpsons & Their Mathematical Secrets', 'science', 'Singh, Simon', '233', '2013'),
(64806717, 'Pattern Classification', 'data_science', 'Duda, Hart', '241', '1961'),
(91512891, 'From Beirut to Jerusalem', 'history', 'Friedman, Thomas', '202', '1902'),
(50928527, 'Code Book, The', 'science', 'Singh, Simon', '197', '1915'),
(97696942, 'Age of the Warrior, The', 'history', 'Fisk, Robert', '197', '1942'),
(58273070, 'Final Crisis', 'comic', '', '257', '1973'),
(86969488, 'Killing Joke, The', 'comic', '', '283', '1925'),
(61213515, 'Flashpoint', 'comic', '', '265', '1960'),
(26636997, 'Batman Earth One', 'comic', '', '265', '1907'),
(21732876, 'Crisis on Infinite Earths', 'comic', '', '258', '2000'),
(60791189, 'Numbers Behind Numb3rs, The', 'science', 'Devlin, Keith', '202', '1990'),
(20507382, 'Superman Earth One - 1', 'comic', '', '259', '1974'),
(23809585, 'Superman Earth One - 2', 'comic', '', '258', '1973'),
(88963576, 'Justice League: Throne of Atlantis', 'comic', '', '258', '2019'),
(24647867, 'Justice League: The Villain\'s Journey', 'comic', '', '258', '1919'),
(21296435, 'Death of Superman, The', 'comic', '', '258', '1918'),
(23311272, 'History of the DC Universe', 'comic', '', '258', '2018'),
(34742094, 'Batman: The Long Halloween', 'comic', '', '258', '1938'),
(65891534, 'Life in Letters, A', 'nonfiction', 'Steinbeck, John', '196', '1912'),
(59644999, 'Information, The', 'science', 'Gleick, James', '233', '2013'),
(77882840, 'Journal of Economics, vol 106 No 3', 'economics', '', '235', '2013'),
(31400495, 'Elements of Information Theory', 'data_science', 'Thomas, Joy', '229', '1938'),
(11525639, 'Power Electronics - Rashid', 'computer_science', 'Rashid, Muhammad', '235', '2023'),
(62165219, 'Power Electronics - Mohan', 'computer_science', 'Mohan, Ned', '237', '1892'),
(73042008, 'Neural Networks', 'data_science', 'Haykin, Simon', '240', '2010'),
(87917993, 'Grapes of Wrath, The', 'fiction', 'Steinbeck, John', '196', '1969'),
(29304574, 'Vyakti ani Valli', 'nonfiction', 'Deshpande, P L', '211', '1958'),
(42580955, 'Statistical Learning Theory', 'data_science', 'Vapnik, Vladimir', '228', '1986'),
(56325389, 'Empire of the Mughal - The Tainted Throne', 'history', 'Rutherford, Alex', '180', '1908'),
(81330688, 'Empire of the Mughal - Brothers at War', 'history', 'Rutherford, Alex', '180', '1896'),
(20060610, 'Empire of the Mughal - Ruler of the World', 'history', 'Rutherford, Alex', '180', '1918'),
(57342295, 'Empire of the Mughal - The Serpent\'s Tooth', 'history', 'Rutherford, Alex', '180', '1957'),
(92929319, 'Empire of the Mughal - Raiders from the North', 'history', 'Rutherford, Alex', '180', '1994'),
(29849073, 'Mossad', 'history', 'Baz-Zohar, Michael', '236', '1911'),
(15917760, 'Jim Corbett Omnibus', 'nonfiction', 'Corbett, Jim', '223', '1902'),
(77305302, '20000 Leagues Under the Sea', 'fiction', 'Verne, Jules', '190', '1902'),
(76891003, 'Batatyachi Chal', 'fiction', 'Deshpande P L', '200', '1896'),
(28002689, 'Hafasavnuk', 'fiction', 'Deshpande P L', '211', '1953'),
(61879293, 'Urlasurla', 'fiction', 'Deshpande P L', '211', '1937'),
(43021443, 'Pointers in C', 'computer_science', 'Kanetkar, Yashwant', '213', '1910'),
(15157821, 'Cathedral and the Bazaar, The', 'computer_science', 'Raymond, Eric', '217', '1947'),
(58142339, 'Design with OpAmps', 'computer_science', 'Franco, Sergio', '240', '2022'),
(90295180, 'Think Complexity', 'data_science', 'Downey, Allen', '230', '1990'),
(89391992, 'Devil\'s Advocate, The', 'fiction', 'West, Morris', '178', '1915'),
(44996774, 'Ayn Rand Answers', 'philosophy', 'Rand, Ayn', '203', '1974'),
(68992438, 'Philosophy: Who Needs It', 'philosophy', 'Rand, Ayn', '171', '1911'),
(33425034, 'World\'s Great Thinkers, The', 'philosophy', '', '189', '1988'),
(16882618, 'Data Analysis with Open Source Tools', 'data_science', 'Janert, Phillip', '230', '1993'),
(37042593, 'Broca\'s Brain', 'science', 'Sagan, Carl', '174', '1937'),
(68535653, 'Men of Mathematics', 'mathematics', 'Bell, E T', '217', '1998'),
(72589486, 'Oxford book of Modern Science Writing', 'science', 'Dawkins, Richard', '240', '1989'),
(67614088, 'Justice, Judiciary and Democracy', 'philosophy', 'Ranjan, Sudhanshu', '224', '2015'),
(48674042, 'Arthashastra, The', 'philosophy', 'Kautiyla', '214', '1946'),
(22512684, 'We the People', 'philosophy', 'Palkhivala', '216', '2019'),
(38009560, 'We the Nation', 'philosophy', 'Palkhivala', '216', '1985'),
(31779204, 'Courtroom Genius, The', 'nonfiction', 'Sorabjee', '217', '1920'),
(98942213, 'Dongri to Dubai', 'nonfiction', 'Zaidi, Hussain', '216', '1908'),
(34808533, 'History of England, Foundation', 'history', 'Ackroyd, Peter', '197', '1967'),
(35463833, 'City of Djinns', 'history', 'Dalrymple, William', '198', '1964'),
(33286548, 'India\'s Legal System', 'nonfiction', 'Nariman', '177', '1895'),
(57562965, 'More Tears to Cry', 'fiction', 'Sassoon, Jean', '235', '1968'),
(24851570, 'Ropemaker, The', 'fiction', 'Dickinson, Peter', '196', '1915'),
(60065100, 'Angels & Demons', 'fiction', 'Brown, Dan', '170', '1916'),
(36076673, 'Judge, The', 'fiction', '', '170', '1925'),
(48700457, 'Attorney, The', 'fiction', '', '170', '1957'),
(72197330, 'Prince, The', 'philosophy', 'Machiavelli', '173', '1972'),
(35717227, 'Eyeless in Gaza', 'fiction', 'Huxley, Aldous', '180', '1995'),
(87938463, 'Tales of Beedle the Bard', 'fiction', 'Rowling, J K', '184', '1972'),
(54269179, 'Girl with the Dragon Tattoo', 'fiction', 'Larsson, Steig', '179', '1962'),
(18037556, 'Girl who kicked the Hornet\'s Nest', 'fiction', 'Larsson, Steig', '179', '1927'),
(23094936, 'Girl who played with Fire', 'fiction', 'Larsson, Steig', '179', '1914'),
(89460885, 'Batman Handbook', 'comic', '', '270', '2022'),
(43398587, 'Murphy\'s Law', 'nonfiction', '', '178', '1995'),
(55151552, 'Structure and Randomness', 'mathematics', 'Tao, Terence', '252', '1905'),
(72331329, 'Image Processing with MATLAB', 'signal_processing', 'Eddins, Steve', '241', '1957'),
(26556125, 'Animal Farm', 'fiction', 'Orwell, George', '180', '1925'),
(21484605, 'Idiot, The', 'fiction', 'Dostoevsky, Fyodor', '197', '1939'),
(51107329, 'Christmas Carol, A', 'fiction', 'Dickens, Charles', '196', '1983');

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
