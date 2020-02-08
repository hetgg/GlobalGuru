-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2020 at 03:07 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbglobalguru`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `aemail` varchar(20) NOT NULL,
  `apassword` varchar(10) NOT NULL,
  `agender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `acity` varchar(70) NOT NULL,
  `aphone` varchar(10) NOT NULL,
  `doj` date NOT NULL,
  `apincode` int(10) NOT NULL,
  `aaddress` varchar(200) NOT NULL,
  `ausername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aemail`, `apassword`, `agender`, `dob`, `acity`, `aphone`, `doj`, `apincode`, `aaddress`, `ausername`) VALUES
(17, 'akakak@live.com', '123', 'Male', '1999-09-03', 'Ahmedabad', '1212121212', '2019-09-02', 111111, 'yyyyyyyy                                                           ', 'latest'),
(18, 'new@gmail.com', 'www', 'Female', '1998-08-13', 'Bhopal', '2222222222', '2019-09-02', 333333, 's jcsjs jcs s snc ns csn csn csnc                                                                 ', 'new'),
(19, 'new@gmail.com', 'www', 'Female', '1972-08-22', 'Mumbai', '2222222222', '2019-08-07', 333333, 's jcsjs jcs s snc ns csn csn csnc                                                                 ', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `isseen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `uid`, `tid`, `isseen`) VALUES
(1, 1, 5, ''),
(2, 1, 5, ''),
(3, 1, 5, ''),
(4, 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `catname` text NOT NULL,
  `catimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `catimg`) VALUES
(1, 'dance', 'dance.png'),
(2, 'cooking', 'cooking.png'),
(3, 'languages', 'languages.png'),
(4, 'multimedia', 'multimedia.png'),
(5, 'music', 'music.png'),
(6, 'photograghy', 'photograpghy.png'),
(7, 'programming', 'programming.png'),
(8, 'schoolstudy', 'schoolstudy.png'),
(9, 'sports', 'sports.png'),
(10, 'studyabroad', 'studyabroad.png');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `pid` int(11) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pimg` varchar(20) NOT NULL,
  `pprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`pid`, `pname`, `pimg`, `pprice`) VALUES
(1, 'gold', 'gold.jpg', 999),
(2, 'platinum', 'silver.jpg', 1999),
(3, 'Diamond', 'diamond.jpg', 2999);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcatid` int(11) NOT NULL,
  `subcatname` text NOT NULL,
  `catid` int(11) NOT NULL,
  `subcateimg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcatid`, `subcatname`, `catid`, `subcateimg`) VALUES
(1, 'garba', 1, 'garba.jpg'),
(2, 'hiphop', 1, 'hiphop.jpg'),
(3, 'kathak', 1, 'kathak.jpg'),
(4, 'jazz', 1, 'jazz.png'),
(5, 'kathakali', 1, 'kathakali.jpeg'),
(6, 'salsa', 1, 'salsa.png'),
(7, 'fastfood', 2, 'fastfood.png'),
(8, 'healthy', 2, 'healthy.png'),
(9, 'chinese', 3, 'chinese.png'),
(10, 'english', 3, 'english.png'),
(11, 'malaylam', 3, 'malaylam.jpg'),
(12, 'sanskrit', 3, 'sanskrit'),
(13, 'urdu', 3, 'urdu.jpg'),
(14, 'hindi', 3, 'hindi.jpg'),
(15, 'music', 4, 'music.png'),
(16, 'photo', 4, 'photo.png'),
(17, 'video', 4, 'video.png'),
(18, 'piano', 5, 'piano.png'),
(19, 'sitar', 5, 'sitar.png'),
(20, 'tabla', 5, 'tabla.png'),
(21, 'brass', 5, 'brass.png'),
(22, 'flute', 5, 'flute.png'),
(23, 'jazz', 5, 'jazz.png'),
(24, 'event', 6, 'event.png'),
(25, 'faishon', 6, 'faishon.png'),
(26, 'sports', 6, 'sport.png'),
(27, 'wedding', 6, 'wedding.png'),
(28, 'andriod', 7, 'andriod.png'),
(29, 'c', 7, 'c.png'),
(30, 'css', 7, 'css.png'),
(31, 'html', 7, 'html.png'),
(32, 'php', 7, 'php.png'),
(33, 'biology', 8, 'biology.png'),
(34, 'chemistry', 8, 'chemistry'),
(35, 'economics', 8, 'economics.png'),
(36, 'maths', 8, 'maths.png'),
(37, 'physics', 8, 'physics.png'),
(38, 'science', 8, 'science.png'),
(39, 'statistics', 8, 'statistics.png'),
(40, 'basketball', 9, 'basketball.png'),
(41, 'cricket', 9, 'cricket.png'),
(42, 'football', 9, 'football.png'),
(43, 'hockey', 9, 'hockey.png'),
(44, 'tennis', 9, 'tennis.png'),
(45, 'gre', 10, 'gre.png'),
(46, 'toefl', 10, 'toefl.png'),
(47, 'ielts', 10, 'ielts.png'),
(49, 'old', 11, 'old.png'),
(50, 'new', 10, 'new.png'),
(51, 'new', 10, 'new.png'),
(52, 'new', 10, 'new.png'),
(53, 'new', 10, 'new.png'),
(54, 'new', 10, 'new.png');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `tpic` varchar(100) NOT NULL,
  `teachingcategory` varchar(500) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `exp` text NOT NULL,
  `contactno` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lseen` varchar(100) NOT NULL,
  `Isactive` varchar(100) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `uname`, `pwd`, `fname`, `lname`, `tpic`, `teachingcategory`, `subject`, `gender`, `degree`, `exp`, `contactno`, `email`, `lseen`, `Isactive`, `doj`, `address`, `city`) VALUES
(1, 'amankalal', '123456', 'aman', 'kalal', 'aman.jpg', '', 'c,c++,java', 'male', 'BE in Computer engin', '2 years', '8128744065', 'aman@test.com', '', '', '2019-08-17', '55,Sanskar App,Nr shyamal cross road,satellite,A\'bad', 'Ahmedabad'),
(2, 'hetz.wave', '123', 'het', 'patel', 'het.jpg', '', 'physics,electric', 'male', 'BE in electronics an', '5 years', '9586041084', 'het@test.com', '', '', '2019-08-15', '55,Xyz App,Nr sola road,satellite,A\'bad', 'ahmedabad'),
(3, 'vipulgoran', '123', 'vipul', 'gorana', 'vipul.jpg', '', 'physics,maths,thermodynamics', 'male', 'BE in Mechanical Engineering', '1 year', '7567178807', 'vipul@test.com', '', '', '2019-08-01', '08,Shivani App,Nr shyamal cross road,satellite,A\'bad', 'ahmedabad'),
(4, 'shreenup', '123', 'shreenu', 'pillai', 'shreenu.jpg', '', 'social science,english', 'male', 'Bcom ', '6 years', '8866007850', 'shreenu@test.com', '', '', '2019-08-12', '55,Heaven park,Nr helmetcross road,A\'bad', 'Ahmedabad'),
(5, 'rutvikjoshi', '123', 'rutvik', 'joshi', 'rutvik.jpg', '', 'maths', 'male', 'BE in Civil', '10 years', '9408507193', 'rutvik@test.com', '', '', '2019-08-08', '25,vrajApp,Nr shyamal cross road,satellite,A\'bad', 'Ahmedabad'),
(6, 'neelmehta', '123', 'neel', 'mehta', 'neel.jpg', '', 'guitar,tabla', 'male', 'diploma in music', '4 years', '7894456112', 'neel@test.com', '', '', '2019-08-02', '45,moment App,Nr shyamal cross road,satellite,A\'bad', 'Ahmedabad'),
(7, 'jamesstark', '123', 'james', 'stark', 'james.jgp', '', 'piano', 'male', 'B.A. Hons. (Music)', '15 years', '1800455622', 'james@test.com', '', '', '2019-08-13', '15,park street,california,america', 'Mumabai'),
(8, 'nehasharma', '123', 'neha', 'mehta', 'neha.jpg', '', 'cooking', 'female', 'certified chef', '16 years', '9156664477', 'neha@test.com', '', '', '2019-08-03', '15,bokaro steel city,kolkata,west bengal', 'kolkata'),
(9, 'richardoxenford', '123', 'richard', 'oxenford', 'richard.jpg', '', 'sports', 'male', 'masters in sports science', '10 years', '2100566447', 'richard@test.com', '', '', '2019-08-08', 'riar Cottage, Old London Rd, Pulborough, RH20 1LF,UK', 'Pulborough'),
(10, 'ustadsaif', '123', 'saif', 'ahmed', 'saif.jpg', '', 'musical instruments', 'male', 'Bachelor of Music - Hindustani Classical Instrumental', '20 years', '845622178', 'ustadsaif@test.com', '', '', '2019-08-11', '16, Amar Stambh, Zone-I, MP Nagar\r\nBhopal, Madhya Pradesh', 'Bhopal'),
(11, 'rameshpatel', '123456', 'Ramesh', 'Patel', '', 'Computer', 'C,C++', 'Male', 'B.tech ', '3years', '4531584566', 'rameshhero@gmail.com', '', '', '2019-12-12', 'Atithti apartment, vastrapur', 'Ahmedabad'),
(12, 'hirendesai', '123456', 'Hiren', 'Desai', 'hirendesai.jpg', 'school', 'social studies', 'male', 'B.sc', '1year', '6528844522', 'hirendesai@yahoo.in', '', '', '2019-12-08', 'Aalay apartment, Vastrapur', 'Ahmedabad'),
(13, 'shilpashah', '123456', 'Shilpa', 'Shah', 'shilpashah.jpg', 'school', 'maths, science', 'female', 'B.sc', '2year', '9898985214', 'shilpa12@gmail.com', '', '', '2019-12-27', 'Rosewood apartment', 'Baroda'),
(14, 'asha ', '', 'Asha\r\n', 'Mital', 'asha.jpg', 'science', 'Chemistry', 'female', 'b.sc', '6years', '7545698546', 'asha99@gmmal.comm', '', '', '2019-12-18', 'Bakaji park, Sola', 'Ahmedabad'),
(15, 'rohanshah', '123456', 'Rohan', 'Shah', 'rohanshah.jpg', 'music', 'guitar', 'male', 'Graduate', '5years', '8526474565', 'rohanshah88@gmail.com', '', '', '2019-12-03', 'Galaxy Apartment', 'Mumbai'),
(16, 'Ravi Patil', '123456', 'Ravi', 'Patil', 'ravipatil.jpg', 'Engineering', 'Engineering Graphics', 'male', 'B.tech', '4years', '8460778869', 'ravicoolboy@gmail.com', '', '', '2019-11-20', 'Milan apartment,ramdevnagar', 'Ahmedabad'),
(17, 'shreyadave', '123456', 'Shreya', 'Dave', 'shreya.jpg', 'Higher Secondary', 'Physics, Maths', 'Female', 'B.sc', '2years', '6582145621', 'shreyadave22@gmail.com', '', '', '2019-09-10', '12,Indraprasth greens', 'New Delhi'),
(18, 'nisarggajjar', '123456', 'Nisarg', 'Gajjar', 'nisarg.jpg', 'Engineering', 'Digital Electronics, Basic Electronics', 'Male', 'B.tech', '5years', '9409313500', 'nisarggajjar12@yahoo.in', '', '', '2019-10-15', '12 Brindavan Bunglows', 'Vadodara'),
(20, 'neelraja', '123456', 'Neel', 'Raja', 'neelraja.jpg', 'IELTS', 'Listening,Reading,Writing,Speaking', 'Male', 'B.Sc (English)', '2years', '9687020970', 'neelraja33@gmail.com', '', '', '2019-06-13', '11 Floral greens', 'Rajkot'),
(21, 'kirtishah', '123456', 'Kirti', 'Shah', 'kirtishah.jpg', 'lAnguage, School', 'Gujarati, Hindi, Sanskrit', 'Female', 'B.com,M.com', '3years', '9825044475', 'kirtishah88@live.com', '', '', '2019-12-10', '14 Aryaman flats', 'Gandhinagar'),
(22, 'denishsolanki', '123456', 'Denish', 'Solanki', 'denish.jpg', 'Engineering', 'MOS, Thermal', 'Male', 'B.tech', '4years', '9528478564', 'denishsolanki22@gmail.com', '', '', '2019-12-02', 'Snehal Park society', 'Surat'),
(23, 'hetpillai', '123456', 'Het', 'Pillai', 'hetpillai.jpg', 'music', 'keyboard,piano,harmonium', 'Male', 'Graduate', '4years', '9852145632', 'hetpillaistar@gmail.com', '', '', '2019-12-11', 'Maan Society', 'Thrishul'),
(24, 'kashishtrivedi', '123456', 'Kashish', 'Trivedi', 'kashishtrivedi.jpg', 'Maths', 'Maths,Calculus,Algebra', 'Male', 'B.tech', '4years', '8128755462', 'kashishtrivedi332@gmail.com', '', '', '2019-12-09', '54 Ratnakar apartment', 'Udaipur'),
(25, 'rutvipatel', '123456', 'Rutvi', 'Patel', 'rutvipatel.jpg', 'computer', 'Python Programmming', 'Female', 'BCA', '2years', '5452198845', 'rutvipatel@gmail.com', '', '', '2019-12-10', '45 Sanskar Bunglows', 'Pune'),
(26, 'dipeshmehta', '123456', 'Dipesh', 'Mehta', 'dipeshmehta.jpg', 'English', 'Communication Skills, Softskills', 'Male', 'B.com, M.com', '5years', '9409313555', 'dipeshmehta98@gmail.com', '', '', '2019-08-08', 'Shilp SIddhi flats 45', 'Rajkot'),
(27, 'abhiparikh', '123456', 'Abhi', 'Parikh', 'abhiparikh.jpg', 'Photography', 'Portrait Photography, Landscape Photography', 'Male', 'Graduate', '7years', '9687020544', 'abhiparikh32@gmail.com', '', '', '2019-12-09', 'Aarth Row House', 'Lucknow'),
(28, 'yogiraj', '123456', 'Yogi', 'Raj', 'yogiraj.jpg', 'Computer', 'DBMS,DDBMS', 'Male', 'B.tech', '4years', '9455313500', '', '', '', '0000-00-00', '', ''),
(29, 'nitabhayani', '123456', 'Nita', 'Bhayani', 'nitabhayani.jpg', 'Science', 'Science,Geography', 'Female', 'M.sc', '5years', '5452198848', 'nitabhayani84@gmail.com', '', '', '2019-10-09', '45 Vikram Apartments', 'Goa'),
(30, 'shyamrajput', '123456', 'Shyam', 'Rajput', 'shyamrajput.jpg', 'Computer', 'Android, PHP', 'Male', 'M.tech', '6years', '8745614587', 'shyamraj76@gmail.com', '', '', '2019-09-18', 'Gurukul Society', 'Ahmedabad'),
(31, 'ayushjoshi', '123456', 'Ayush', 'Joshi', 'ayushjoshi.jpg', 'Cooking', 'cooking', 'Male', 'graduate', '1year', '9687020945', 'ayushjoshi37@gmail.com', '', '', '2019-10-10', '78 Balaji Square', 'Rajkot'),
(32, 'kushmandal', '123456', 'Kush', 'Mandal', 'kushmandal.jpg', 'music', 'Tabla', 'Male', 'Gradtuate', '3years', '8460771154', 'kushmandal98@gmail.com', '', '', '2019-10-02', '45 Siddhi Bunglows', 'Gandhinagar'),
(33, 'salimshekh', '123456', 'Salim', 'Shekh', 'salim.jpg', 'Drawing', 'Portrait Painting, Landscape painting', 'Male', 'B.Sc', '1year', '5452177845', 'salimshekh99@gmail.com', '', '', '2019-12-03', 'Vishal Flats', 'Mumbai'),
(34, 'krupamehta', '123456', 'Krupa', 'Mehta', 'krupamehta.jpg', 'Handwriting ', 'Handwriting improvement, Typography', 'Female', 'M.com', '2years', '956482314', 'krupamehta55@yahoo.in', '', '', '2019-11-19', 'Rajshree towers', 'Lucknow'),
(35, 'leenakamdar', '123456', 'Leena', 'Kamdar', 'leenakamdar.jpg', 'Science', 'Environmental Science', 'Female', 'M.sc', '4years', '8456745687', 'leenakamdar30@gmail.com', '', '', '2019-10-24', 'Rajamni Apartments', 'Pune'),
(36, 'yashshah', '123456', 'Yash', 'Shah', 'yashshah.jpg', 'Gym', 'Trainer, Cardio trainer', 'Male', 'Graduate', '7years', '9548725461', 'yashshah29@gmail.com', '', '', '2019-10-09', 'ShyamalRow House', 'Ahmedabad'),
(37, 'shrushtimehta', '123456', 'Shrushti', 'Mehta', 'shrushtimehta.jpg', 'Biology', 'Biology', 'Female', 'M.Sc', '1year', '9514258965', 'shrushtimehta44@gmail.com', '', '', '2019-10-08', 'Maharaja Bunglows', 'Kutch'),
(38, 'rishitsheth', '123456', 'Rishit', 'Sheth', 'rishit.jpg', 'Chemistry', 'Chemistry', 'Male', 'M.Sc', '3years', '7854685461', 'rishitsheth10@gmail.com', '', '', '2019-12-17', 'Shivani bunglows', 'Gandhinagar'),
(39, 'cedricfernandez', '123456', 'Cedric', 'Fernandez', 'cedric.jpg', 'Music', 'Keyboard, Guitar', 'Male', 'Graduate', '8years', '5452194875', 'cedricf@live.com', '', '', '2020-01-12', 'B-2 Iscon Platinum', 'New Delhi'),
(40, 'ignacepaul', '123456', 'Ignace', 'Paul', 'ignace.jpg', 'Cooking', 'Bakery items', 'Male', 'Graduate', '4years', '8456321478', 'ignacechef@gmail.com', '', '', '2020-01-01', '89 Ridham bunglows', 'Rajkot'),
(41, 'manishapatel', '123456', 'Manisha', 'Patel', 'manishapatel.jpg', 'Commerce', 'Accounts', 'Female', 'M.com', '5years', '9654125874', 'manishapatel32@gmail.com', '', '', '2019-09-12', '22 Snehal Park', 'Patan'),
(42, 'kiransuthar', '123456', 'Kiran', 'Suthar', 'kiran.jpg', 'B.com', 'Stats', 'Female', 'M.com', '10years', '8745614523', 'kiransuthar94@gmail.com', '', '', '2019-08-15', '54 Shangrila Heights', 'Mumbai'),
(43, 'chetankalal', '123456', 'Chetan', 'Kalal', 'chetankalal.jpg', 'Commerce', 'Accounts, Stats, Probability', 'Male', 'B.com, M.com', '12years', '9998931275', 'chetankalal12@gmail.com', '', '', '2019-11-06', 'R45 Umasut Row House', 'Ahmedabad'),
(44, 'rupakpillai', '123456', 'Rupak', 'Pillai', 'rupakpillai.jpg', 'Maths', 'Maths', 'Male', 'B.tech', '6years', '8423654612', 'rupakpillai54@gmail.com', '', '', '2019-10-16', '54 Milan residency', 'Kolkata'),
(45, 'jinaysuthar', '123456', 'Jinay', 'Suthar', 'jinaysuthar.jpg', 'Language', 'German', 'Male', 'M.tech', '4years', '9852145632', 'jinaysuthar98@gmail.com', '', '', '2020-01-08', 'B-8 Sanskar Apartment', 'Ahmedabad'),
(46, 'ridhamraina', '123456', 'Ridham', 'Raina', 'ridhamraina.jpg', 'sports', 'cricket coach', 'Male', 'B.sc', '6years', '8457125467', 'ridham934@gmail.com', '', '', '2019-10-16', '65 Muskan bunglows', 'Kolkata'),
(47, 'jamesmilner', '123456', 'James', 'Milner', 'jamesmilner.jpg', 'sports', 'Football coach', 'Male', 'Graduate', '5years', '6521474589', 'jamesmilner83@yahoo.com', '', '', '2019-10-02', '87 Grace residency', 'Udaipur'),
(48, 'utkarshparikh', '123456', 'Utkarsh', 'Parikh', 'utkarshparikh.jpg', 'science', 'Science, Chemistry', 'Male', 'M.sc', '2years', '7451225478', 'utkarshparikh22@gmail.com', '', '', '2019-10-16', '22 Shagun tenaments', 'Surendranagar'),
(49, 'mahekshah', '123456', 'Mahek', 'Shah', 'maheksshah.jpg', 'Computer', 'Java, C, C++', 'Female', 'B.tech', '4years', '8412369854', 'mahekshah49@gmail.com', '', '', '2019-09-11', '56 sanam flats', 'kutch'),
(50, 'prakashpatel', '123456', 'Prakash', 'Patel', 'prakashpatel.jpg', 'Physics', 'Physics', 'Male', 'M.sc', '6years', '8745621457', 'prakashpatel48@ggmail.com', '', '', '2019-10-23', '98 Shivani row house', 'vadodara'),
(51, 'jessepinkman', '123456', 'Jesse', 'Pinkman', 'jessepinkman.jpg', 'Chemistry', 'Chemistry', 'Male', 'Graduate', '4years', '8756321458', 'jessepinkman69@gmail.com', '', '', '2019-10-24', '78 greenwood tower', 'Surat'),
(52, 'walterwhite', '123456', 'Walter', 'White', 'walterwhite.jpg', 'Chemistry', 'Chemistry', 'Male', 'P.hd', '6years', '9564782156', 'walterwhite44@yahoo.com', '', '', '2020-01-06', '32 Vihaan bunglows', 'New Delhi'),
(53, 'hankschrader', '123456', 'Hank', 'Schrader', 'hankschrader.jpg', 'Marshall Arts', 'Self Defence, Karate', 'male', 'M.sc', '8years', '8452136547', 'coolhank77@gmail.com', '', '', '2019-10-09', '98 Martian Tower', 'Chandigadh'),
(54, 'jonsnow', '123456', 'Jon', 'Snow', 'jonsnow.jpg', 'Language', 'Sanskrit', 'Male', 'B.sc', '3years', '8756321456', 'jonsnow23@live.com', '', '', '2019-10-16', '98 jill apartments', 'Anand'),
(55, 'brandonstark', '123456', 'Brandon', 'Stark', 'brandonstark.jpg', 'Language', 'Hindi', 'Male', 'B.sc', '1year', '6541784563', 'brandonstark20@gmail.com', '', '', '2020-01-01', '99 Saaffron flats ', 'Amreli'),
(56, 'ritendarji', '123456', 'Riten', 'Darji', 'ritendarji.jpg', 'Tailoring', 'Tailoring, Stiching', 'Male', 'Graduate', '5years', '9033355130', 'ritend45@gmail.com', '', '', '2019-11-06', '78 Pearl apartment', 'Anand'),
(57, 'jagdishshah', '123456', 'Jagdish', 'Shah', 'jagdishshah.jpg', 'Painting', 'Painting, Sketching', 'Male', 'B.sc', '4years', '4587125469', 'jagdishshah34@gmail.com', '', '', '2019-10-09', '55 Ridham Bunglows', 'Vadodara'),
(58, 'prajvalrana', '123456', 'Prajval', 'Rana', 'prajvalrana.jpg', 'Language', 'English Speaking', 'male', 'B.sc', '5years', '8523647965', 'prajvalr99@gmail.com', '', '', '2019-11-22', 'Shilp Bunglows', 'Mehsana'),
(59, 'chrisdias', '123456', 'Chris', 'Dias', 'chrisdias.jpg', 'Sports', 'Personal trainer', 'Male', 'B.sc', '4years', '7896541345', 'chriscooldias@live.com', '', '', '2019-11-06', '67 Elite Park', 'Pune'),
(60, 'namanjain', '123456', 'Naman', 'Jain', 'namanjain.jpg', 'Language', 'german basics', 'Male', 'M.sc', '7years', '7845963214', 'namanjain88@gmail.com', '', '', '2020-01-01', '56 Siddhi apartment', 'jaisalmer'),
(61, 'ritajaveri', '123456', 'Rita', 'Javeri', 'ritajaveri.jpg', 'Music', 'Tabla', 'Female', 'B.sc', '4years', '7536214568', 'ritamusic34@live.com', '', '', '2019-11-21', '56 Niket Flats', 'Ludhiana'),
(62, 'rajshrimehta', '123456', 'Rajshri', 'Mehta', 'rajshrimehta.jpg', 'Fitness', 'Yoga Instructor', 'Female', 'B.sc', '6years', '8745963214', 'rajshrimehta56@gmail.com', '', '', '2019-10-16', '34 shyamal row house', 'Surat'),
(63, 'hetaljoshi', '123456', 'Hetal', 'Joshi', 'hetaljoshi.jpg', 'Physics', 'Physics', 'Female', 'M.sc', '4years', '7856498745', 'hetsljoshi88@gmail.com', '', '', '2019-10-24', '5 rajshri tower', 'Gandhinagar'),
(64, 'pritikhanna', '123456', 'Priti', 'Khanna', 'pritikhanna.jpg', 'Nursery', 'nursery subjects', 'Female', 'Graduate', '5years', '6541287456', 'pritikhanna33@gmail.com', '', '', '2020-01-13', '7 amravan row house', 'Surat'),
(65, 'vishwasharma', '123456', 'Vishwa', 'Sharma', 'vishwasharma.jpg', 'Commerce', 'Accounts', 'Female', 'B.com', '4years', '8523641793', 'vishwasharma33@gmail.com', '', '', '2019-10-23', '54 Ratnakar apartment', 'Rajkot'),
(66, 'rashmidesai', '123456', 'Rashmi', 'Desai', 'rashmidesai.jpg', 'muisc', 'guitar', 'Female', 'B.sc', '4years', '9635874598', 'rashmidesai55@gmail.com', '', '', '2019-10-24', '3 Indra park', 'Pune'),
(67, 'yakshivaghela', '123456', 'Yakshi', 'Vaghela', 'yakshivaghela.jpg', 'Management', 'Hotel Management', 'Female', 'Graduate', '5years', '7854965874', 'yakshivaghela4@gmail.com', '', '', '2019-09-27', 'B-8 Rutvik bunglows', 'Chandigadh'),
(68, 'himanshurathi', '123456', 'Himanshu', 'Rathi', 'himanshurathi.jpg', 'Commerce', 'Statistics', 'Male', 'M.com', '5years', '9528474587', 'himanshurathi5@gmail.com', '', '', '2019-10-25', '43 Umang flats', 'Lucknow'),
(69, 'rakeshwalia', '123456', 'Rakesh', 'Walia', 'rakeshwalia.jpg', 'Computer', 'Python programming', 'Male', 'M.tech', '4years', '9852474589', 'rakeshwalia@gmail.com', '', '', '2019-09-13', '2 jash houses', 'Mehsana'),
(70, 'adityagothal', '123456', 'Aditya', 'Gothal', 'adityagothal.jpg', 'Computer', 'Database Development', 'Male', 'M.tech', '6years', '6589745896', 'adityagothal@gmail.com', '', '', '2019-10-19', '22 hitesh tenaments', 'Mumbai'),
(71, 'mikeposner', '123456', 'Mike', 'Posner', 'mikeposner.jpg', 'Music', 'Electronic Music', 'Male', 'graduate', '8years', '8745963258', 'mikeposner44@gmail.com', '', '', '2019-10-26', '44 Thee residency', 'New Delhi'),
(72, 'meshwapatel', '123456', 'Meshwa', 'Patel', 'meshwapatel.jpg', 'Medical', 'Physio', 'Female', 'graduate', '4years', '9658214632', 'meshwapatel4@gmail.com', '', '', '2019-10-26', 'Asavri tower', 'Ahmedabad'),
(73, 'gauravdani', '123456', 'Gaurav', 'Dani', 'gauravdani.jpg', 'Fitness', 'Yoga instructor', 'Male', 'B.com', '4years', '8526965985', 'gauravdani3@gmail.com', '', '', '2019-10-08', '2 Balaji bunglows', 'Rajkot'),
(74, 'krishshah', '123456', 'Krish', 'Shah', 'krishshah.jpg', 'Computer', 'A.I learning', 'Male', 'M.tech', '6years', '8456325874', 'krishshah@yahoo.com', '', '', '2019-10-15', '22 indraprast flats', 'Gandhinagar'),
(75, 'arjunrathod', '123456', 'Arjun', 'Rathod', 'arjunrathod.jpg', 'Language', 'Sanskrit', 'Male', 'B.sc', '3years', '7458965847', 'arjunrahod4@gmail.com', '', '', '2019-10-17', 'vikram nagar', 'Banglore'),
(76, 'pranavthakar', '123456', 'Pranav', 'Thakar', 'pranavthakar.jpg', 'Art', 'Sketch', 'Male', 'Graduate', '4years', '8456325874', 'pranavthakar@gmail.com', '', '', '2020-01-08', 'muncipal flats', 'Porbandar'),
(77, 'riyatrivedi', '123456', 'Riya', 'Trivedi', 'riyatrivedi.jpg', 'Maths', 'Probability and Statistics', 'Male', 'B.tech', '7years', '8128744569', 'riyatrivedi23@gmail.com', '', '', '2019-10-17', 'kriti flats', 'Porbandar'),
(78, 'harshilrana', '123456', 'Harshil', 'Rana', 'harshilrana.jpg', 'Cooking', 'Mexican Food', 'Male', 'B.sc', '8years', '8745963258', 'harshilrana@gmail.com', '', '', '2019-11-15', 'B4 ridham tower', 'Surat'),
(79, 'hariraja', '123456', 'Hari', 'Raja', 'hariraja.jpg', 'Commerce', 'Accounts', 'Male', 'M.com', '5years', '9825044444', 'hariraja78@gmail.com', '', '', '2019-10-16', 'british tower', 'Rajkot'),
(80, 'dineshjharivala', '123456', 'Dinesh', 'Jhariwala', 'dineshjhariwala', 'Driving', 'Car Driving', 'Male', 'graduate', '8years', '8885477744', 'dineshjhariwala@gmail.com', '', '', '2019-10-19', '33 amravan flats', 'Ahmedabad'),
(81, 'ritapandya', '123456', 'Rita', 'Pandya', 'ritapandya.jpg', 'Cooking', 'Bakery', 'Female', 'Graduate', '4years', '8459999326', 'ritapandya@gmail.com', '', '', '2019-10-17', '5 thana flat', 'Mumbai'),
(82, 'jenijani', '123456', 'Jeni', 'Jani', 'jenijani.jpg', 'social science', 'Social science', 'Female', 'graduate', '5years', '9856321475', 'jenijani@gmail.com', '', '', '2019-10-25', '8 variety tower', 'Pune'),
(83, 'niralipatel', '123456', 'Nirali', 'Patel', 'niralipatel.jpg', 'Art', 'Graphic Design', 'Female', 'B.arch', '6years', '7888889555', 'niralipatel@gmail.com', '', '', '2019-10-03', '55 thirdred flats', 'Rajkot'),
(84, 'richarami', '123456', 'Richa', 'Rami', 'richarami.jpg', 'Language', 'Hindi', 'Female', 'Graduate', '4years', '9455313522', 'richarami@gmail.com', '', '', '2019-11-07', 'jash bunnglows', 'Gandhinagar'),
(85, 'ridhimajain', '123456', 'Ridhima', 'Jain', 'ridhimajain.jpg', 'Science', 'Science', 'Female', 'B.sc', '2years', '9856321475', 'ridhima@gmail.com', '', '', '2019-11-21', '11 riya apartment', 'Rajkot'),
(86, 'rahulverma', '123456', 'Rahul', 'Verma', 'rahulverma.jpg', 'Music', 'Singing', 'Male', 'Graduate', '6years', '7852698563', 'rahulverma@gmail.com', '', '', '2020-01-13', '4 Riket bunglows', 'New Delhi'),
(87, 'virajguru', '123456', 'Viraj', 'Guru', 'virajguru.jpg', 'Sports', 'Cricket Coach', 'Male', 'Graduate', '7years', '8456325896', 'virajguru@gmail.com', '', '', '2019-12-20', '4  sky tower', 'Lucknow'),
(88, 'yuvrajjadeja', '123456', 'yuvraj', 'jadeja', 'yuvrajjadeja.jpg', 'commerce', 'Financial study', 'Male', 'MBA', '5years', '4852698564', 'yuvrajjadeja.jpg', '', '', '2019-10-26', '4 neelraj flats', 'Gandhinagar'),
(89, 'shreyajani', '123456', 'Shreya', 'Jani', 'shreyajani.jpg', 'Social Studies', 'Social Studies', 'Female', 'Graduate', '3years', '6852414569', 'shreyajani@gmail.com', '', '', '2019-10-17', '7 urmit flat', 'Ahmedabad'),
(90, 'bholurao', '123456', 'Bholu', 'Rao', 'bholurao.jpg', 'Cooking', 'Italian food', 'Male', 'Graduate', '4years', '8452174859', 'bholurao@gmail.com', '', '', '2019-11-14', '4 hariom flats', 'Ahmedabad'),
(91, 'rujulpatel', '123456', 'Rujul', 'Patel', 'rujulpatel.jpg', 'Dance', 'Dance Choreographer', 'Male', 'Graduate', '8years', '6528974568', 'rujulpatel.jpg', '', '', '2020-01-01', '44 jivraj park', 'Porbandar'),
(92, 'balamurali', '123456', 'Bala', 'Murali', 'balamurali.jpg', 'Atletics', 'Sprint running', 'Male', 'Graduate', '4years', '9528478544', 'balam@gmail.com', '', '', '2019-12-12', '3 janvi tower', 'Porbandar'),
(93, 'dhrumilshah', '123456', 'Dhrumil', 'Shah', 'dhrumilshah.jpg', 'Advertisment', 'Social Media Influencer', 'Male', 'B.tech', '2years', '8459632174', 'dhrumilshah@gmail.com', '', '', '2020-01-08', '7 vatsal bunglows', 'Mumbai'),
(94, 'varshilkhan', '123456', 'Varshil', 'Khan', 'varshilkhan.jpg', 'Mechanics', 'MOS', 'Male', 'B.tech', '4years', '9526314785', 'varshilkhan.jpg', '', '', '2019-10-26', '8 umesh park', 'Surat'),
(95, 'rohinishah', '123456', 'Rohini', 'Shah', 'rohinishah.jpg', 'Maths', 'Maths', 'Female', 'B.sc', '4years', '8641257896', 'rohinishah@gmail.com', '', '', '2019-10-17', '2 ram tower', 'Surat'),
(96, 'bhuvanpillai', '123456', 'Bhuvan', 'Pillai', 'bhuvanpillai.jpg', 'Singing', 'Classical Singing ', 'Male', 'Graduate', '6years', '7854123698', 'bhuvanpillai@gmail.com', '', '', '2019-11-15', '4 CG squarre', 'Ahmedabad'),
(97, 'harshangre', '123456', 'Harsh', 'Angre', 'harshangre.jpg', 'Language', 'English Speaking', 'Male', 'B.sc', '4years', '8546974568', 'harshangre@gmail.com', '', '', '2019-12-18', '8 Hima tower', 'Jamnagar'),
(98, 'twishatank', '123456', 'Twisha', 'Tank', 'twishatank.jpg', 'Dance', 'Dance Choreographer', 'Male', 'Graduate', '4years', '7458996587', 'twishatank@gmail.com', '', '', '2019-11-30', '45 red tower', 'Vadodara'),
(99, 'mananraval', '123456', 'Manan', 'Raval', 'mananraval.jpg', 'Photography', 'Event Photography', 'Male', 'gradaute', '6years', '8546932145', 'mananraval@gmail.com', '', '', '2019-11-06', '11 signor residency', 'Jamnagar'),
(100, 'bansarirathod', '123456', 'Bansari', 'Rathod', 'bansarirathod.jpg', 'Beauty', 'Makeup Tutorials', 'Female', 'Graduate', '7years', '7896325415', 'bansarirathod@gmail.com', '', '', '2020-01-06', '3 Sunflower regency', 'Ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `teachercontact`
--

CREATE TABLE `teachercontact` (
  `tcid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `doc` date NOT NULL,
  `isview` varchar(20) NOT NULL,
  `dov` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachergallery`
--

CREATE TABLE `teachergallery` (
  `tgid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `path` varchar(20) NOT NULL,
  `isimg` varchar(20) NOT NULL,
  `dou` date NOT NULL,
  `isapprove` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachergallery`
--

INSERT INTO `teachergallery` (`tgid`, `tid`, `path`, `isimg`, `dou`, `isapprove`) VALUES
(1, 1, 'aman.jpg', '', '2019-08-12', ''),
(2, 2, 'hetz.jpg', '', '2019-08-14', ''),
(3, 3, 'vipul.jpg', '', '2019-08-01', ''),
(4, 4, 'shreenu.jpg', '', '2019-08-19', ''),
(5, 5, 'rutvik.jpg', '', '2019-08-19', ''),
(6, 6, 'neel.jpg', '', '2019-08-18', ''),
(7, 7, 'james.jpg', '', '2019-08-12', ''),
(8, 8, 'neha.jpg', '', '2019-08-17', ''),
(9, 9, 'oxen.jpg', '', '2019-08-15', ''),
(10, 10, 'said.jpg', '', '2019-08-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacherlikes`
--

CREATE TABLE `teacherlikes` (
  `tlid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `dol` date NOT NULL,
  `islike` varchar(20) DEFAULT NULL,
  `comment` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacherpackage`
--

CREATE TABLE `teacherpackage` (
  `tpid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `dop` date NOT NULL,
  `iscurrent` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherpackage`
--

INSERT INTO `teacherpackage` (`tpid`, `pid`, `tid`, `dop`, `iscurrent`) VALUES
(1, 1, 1, '2019-09-02', ''),
(2, 3, 2, '2019-09-01', ''),
(3, 2, 3, '2019-09-08', ''),
(4, 3, 4, '2019-09-03', ''),
(5, 1, 5, '2019-08-05', ''),
(6, 1, 6, '2019-09-03', ''),
(7, 3, 7, '2019-09-25', ''),
(8, 2, 8, '2019-09-02', ''),
(9, 2, 9, '2019-09-02', ''),
(10, 2, 10, '2019-09-10', ''),
(11, 1, 1, '0000-00-00', ''),
(12, 1, 1, '0000-00-00', ''),
(13, 1, 1, '0000-00-00', ''),
(14, 1, 1, '0000-00-00', ''),
(15, 1, 1, '0000-00-00', ''),
(16, 1, 1, '0000-00-00', ''),
(17, 1, 1, '0000-00-00', ''),
(18, 1, 1, '0000-00-00', ''),
(19, 1, 1, '0000-00-00', ''),
(20, 1, 1, '0000-00-00', ''),
(21, 1, 1, '0000-00-00', ''),
(22, 1, 1, '0000-00-00', ''),
(23, 1, 1, '0000-00-00', ''),
(24, 1, 1, '0000-00-00', ''),
(25, 1, 1, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachersubcat`
--

CREATE TABLE `teachersubcat` (
  `tscid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `subcatid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachersubcat`
--

INSERT INTO `teachersubcat` (`tscid`, `tid`, `subcatid`) VALUES
(1, 1, 28),
(2, 1, 29),
(3, 1, 30),
(4, 1, 31),
(5, 2, 36),
(6, 2, 37),
(7, 3, 36),
(8, 3, 37),
(9, 4, 35),
(10, 4, 39),
(11, 5, 36),
(12, 5, 37),
(13, 5, 38),
(14, 6, 18),
(15, 6, 19),
(16, 6, 20),
(17, 6, 21),
(18, 6, 22),
(19, 6, 23),
(20, 7, 9),
(21, 7, 10),
(22, 8, 7),
(23, 8, 8),
(24, 9, 40),
(25, 9, 41),
(26, 9, 42),
(27, 9, 43),
(28, 9, 44),
(29, 10, 20),
(30, 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `teachersubtype`
--

CREATE TABLE `teachersubtype` (
  `tsid` int(11) NOT NULL,
  `tscid` int(11) NOT NULL,
  `ttid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachingtype`
--

CREATE TABLE `teachingtype` (
  `ttid` int(11) NOT NULL,
  `ttname` varchar(20) NOT NULL,
  `ttimg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachingtype`
--

INSERT INTO `teachingtype` (`ttid`, `ttname`, `ttimg`) VALUES
(2, 'Mentor home', 'mentorhome.png'),
(3, 'Student home', 'studenthome.png'),
(4, 'Student home', 'Studenthome.png'),
(7, 'online', 'online.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(35) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `funame` varchar(20) NOT NULL,
  `luname` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `doj` date NOT NULL,
  `upic` varchar(100) NOT NULL,
  `details` varchar(200) NOT NULL,
  `uadd` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `pwd`, `funame`, `luname`, `gender`, `email`, `dob`, `contactno`, `doj`, `upic`, `details`, `uadd`, `city`) VALUES
(1, 'mukeshshah', '123', 'mukesh', 'shah', 'male', 'muskesh@test.com', '1999-09-05', '754482357', '2019-08-02', '', 'class 10', '50, shahid Stambh, Zone-I, MP Nagar\r\nBhopal, Madhya Pradesh,', 'bhopal'),
(2, 'poojapatel', '123456', 'pooja', 'patel', 'female', 'pooja@test.com', '1999-09-08', '845612799', '2019-08-11', '', 'Be in computer engineering', '241, Opp Satyam Mall, Nr Mansi Circle, Satellite.Ahmedabad', 'Ahmedabad'),
(3, 'jimmyhopper', '123456', 'jimmy', 'hopper', 'male', 'jimmy@test.com', '1999-10-05', '184452612', '2019-08-08', '', 'Be in electronics and communication ', '37 Linda Road \r\nSaratoga Springs,NY', 'New york'),
(4, 'michealphillip', '123456', 'micheal', 'phillip', 'male', 'michel@test.com', '1999-06-05', '120056478', '2019-08-14', '', 'class 8', '77 Tony Garden, Reynoldston,uk.', 'Reynoldston'),
(5, 'Christinasullivan', '123456', 'Christina', 'sullivan', 'male', 'sullivan@test.com', '1999-04-05', '082 168 023', '2019-08-02', '', 'BE in Mechanical Engineering', '304,Bhoola Rd,East London,Eastern Cape,South Africa.', 'East London'),
(6, 'manpreetsingh', '123456', 'manpreetsingh', 'gill', 'male', 'manpreet@test.com', '1999-02-05', '01724608777', '2019-08-09', '', 'BA ', 'Tower-C, 3rd Floor, DLF IT Park\r\nChandigarh,india', 'Chandigarh'),
(7, 'venugopal', '123456', 'venugopal', 'krishnamurthy ', 'male', 'venugopal', '1998-09-05', '04424862081', '2019-08-02', '', '', '191, Tagore Street, Alwarthirunagar\r\nChennai, Tamil Nadu.india', 'Chennai'),
(8, 'Ahmedkhan', '123456', 'Ahmed', 'khan', 'male', 'ahmed@test.com', '1989-09-05', '984563217', '2019-08-06', '', 'Class 12', 'Scf-41 Sector 15, Astor Basement Market\r\nDelhi, Haryana.', 'delhi'),
(9, 'Geetanjaliratti', '123456', 'Geetanjali', ' Ratti', 'male', 'geetanjali@test.com', '1973-09-05', '78945879', '2019-08-07', '', '', '10, Nayan Society,AditiGunj,Mumbai,Maharashtra', 'Mumbai'),
(10, 'Mehul Bhatia', '123456', 'Mehul', 'Bhatia', 'male', 'mehul@test.com', '2001-09-05', '812874987', '2019-08-01', '', 'BCA', '40, KusumGarh, Ratlam', ' Ratlam'),
(11, 'jay123', 'jayshah', 'Jay', 'Shah', 'male', 'jayshah@gmail.com', '1999-01-15', '8765499827`', '1999-01-15', '', 'me in computer engineering', '1111 -b, Plot No -b, Phase Iii, Vatva', 'ahmedabad'),
(12, 'shree26', 'shree145', 'shree', 'patel', 'male', 'gamechange@gmail.com', '1998-06-26', '839974638', '2019-01-14', '', 'me in mechanical', '537 , Raheja Chambers, Nariman Point', 'mumbai'),
(13, 'ritik26', 'johncena24', 'Ritik', 'Patel', 'male', 'ritikmail@gmail.com', '1996-01-08', '9384748352', '2017-01-11', '', 'Computer engineering in SOCET', '52 ,  St Flr, Prashdham Bldh,  Narayan Dhuruv Street, Masjid Bunder (w)', 'mumbai'),
(14, 'hema282', 'hemashsah22', 'Hema  ', 'Kuruvilla', 'female', 'hemakuruvilla@gmail.', '1998-01-03', '9876387922', '2020-01-30', '', '10th standard', '26 --/, Opp.osmania General Block, Afzalgunj', 'Hydrabad'),
(15, 'vipulkalal', 'vipul1257', 'Vipul', 'Kalal', 'male', 'vipulgorana67@gmail.', '1967-01-22', '948765376', '2019-10-16', '', 'Game enthus', '12 /b, Naaz Bldg, Dr Bhandarkar Marg, Lamington Road', ' Mumbai'),
(16, 'hetpatel167', 'hetzteyi', 'Het', 'Patel', 'Male', 'hetzjp123@gmail.com', '1978-01-13', '9374836483', '2019-11-06', '', 'Computer engineering last year', '24 , Shop No , Veekay Enterprises Compound, Express Highway, Majiwada, Thane (west)', 'mumbai'),
(17, 'rutvik1638', 'rutvikbhaihai', 'rutvik', 'joshi', 'male', 'rutvikjoshi@gmail.co', '2019-12-21', '9474836483', '2020-01-24', '', '10th Std', '32 /, S V Road, Malad (west)', 'mumbai'),
(18, 'shreenu172', 'shreenuper3673', 'shreenu', 'pillai', 'male', 'shreenu2783@gmail.co', '1987-01-06', '9474638393', '2020-02-11', '', '12th std cmpltd', '98 /, Parag Building, Scheme th Road, Matunga(c.r)', 'mumbai'),
(19, 'shyamsir23', 'shyamisbest', 'shyam', 'chavda', 'male', 'shyamsir12@gmail.com', '1977-01-08', '9586408825', '2020-01-14', '', 'Tutor', '5 /, Grd Flr, , Humera Arcade, Samuel Street, B/h Roop Hotel,israli Mohalla, Masjid Bunder(e)', ' Mumbai'),
(20, 'kaivil388', 'sallubhai26', 'kaivil', 'shah', 'male', 'kaivildeo@gmail.com', '1999-04-09', '7838389957', '2019-12-04', '', 'business man', '49 , Nath Building, Power House Road, Azadpur', 'delhi'),
(21, 'dynamo27', 'dynamotrace33', 'dynamo', 'savant', 'male', 'dynamogaming2gmail.c', '1987-11-27', '8796483649', '2020-01-16', '', 'Gamer', '10 , Navmonica Society, Station Road, Opp Holy Cross High School, Thane (west)', 'mumbai'),
(22, 'johncena22', 'johncena645', 'john', 'cena', 'male', 'johncena45@gmail.com', '1978-04-16', '937484638', '2020-01-17', '', '12th pass', '10 , shreeenivas Society, Station Road, Opp Holy Cross High School, Thane (west)', 'mumbai'),
(23, 'mukesh67', 'mukeshpatel', 'mukesh', 'patel', 'male', 'mukesh67@gmail.com', '1957-10-31', '7896575793', '1999-01-29', '', 'Musician', '14 , nd Floor, Homi Modi Street, Nr Bombay House, Fort', ' Mumbai'),
(24, 'mbhatt34', 'heyui267', 'mukesh ', 'bhatt', 'male', 'mukeshbhatt22@gmail.', '1968-10-09', '9688557389', '2020-02-13', '', '6th sem CE', '27,safal apart', 'Hydrabad'),
(25, 'nikita367', 'shrama277', 'Nikita', 'sharma', 'female', 'nikitashrma@gmail.co', '1996-01-27', '8363748934', '1999-01-15', '', 'Business man', '27, Shreeji bungalows ', 'ahmedabad'),
(26, 'gauri267', 'ggratta', 'gauri', 'ratta', 'female', 'gauriratta33@gmail.c', '1977-11-05', '8686753467', '2020-01-14', '', 'Employee at global guru', '354 , rd Stage,  Stage nd Block, Basaveshwarnagar', 'delhi'),
(27, 'seema', 'seem26', 'seema', 'patel', 'male', 'malhotra.seema@dubey', '1986-06-10', '97654457876', '2020-01-08', '', '', '27,balaji bungalows', 'ahmedabad'),
(28, 'jayshah', 'jayhsh278', 'Jay', 'malhotra', 'male', 'jayshah@gmail.com', '1997-09-03', '9758589043', '2020-01-11', '', '', 'Ashok Sood, R & A Park, A 4 102 & 103, Vashi Naka Mehul Rd, Chembur (east)', 'mumbai'),
(29, 'jagdishv22', 'jagdish1800', 'jagdish', 'varma', 'male', 'jagdishverma@gmail.c', '1978-04-16', '9474638394', '2019-01-14', '', 'Business man', '21 /, B Bldg, Ansa Indl Estate, Saki Vihar Road, Andheri (west)', 'Mumbai'),
(30, 'Omsohail27', 'sohaili37904', 'om', 'sohail', 'male', 'sohailhero@gmail.com', '1996-01-08', '9384748355', '2017-01-11', '', 'BE in civil eng', '35 /, Dda Flat, Madangir', 'delhi'),
(31, 'raghavjuy', 'raghavhey27', 'raghav', 'juyal', 'male', 'raghav36@gmail.com', '1999-04-09', '8686753467', '2020-02-11', '', 'Student want to learn english', '780 /,ndcrshalndstgthmnindi-, Indiranagar', ' Bangalore'),
(32, 'moni33', 'ilovemyparents33', 'monika', 'kakkar', 'female', 'monikalove@live.com', '1988-01-08', '948765376', '2019-10-16', '', 'Tabla master', 'Gala No.2 , Sector-8, Shankar Shila Complex, Sector-8, Airoli', 'Mumbai'),
(33, 'uja37', 'heyuja77', 'uja', 'sandhu', 'female', 'ujasinger@gmail.com', '1978-04-14', '7896389563', '2020-01-05', '', 'want to learn singing in depth', 'Gala No.2 , Sector-8, Shankar Shila Complex, Sector-8, Airoli', 'mumbai'),
(34, 'krishna2', 'krishna27', 'krishna', 'rama', 'male', 'krishna74@gmail.com', '1996-12-21', '957846838', '2016-01-11', '', 'ME in Computer Engineering', '217 , Aram Nagar, J P Road, Machlimar, Andheri (west)', ' Mumbai'),
(35, 'animeshop2', 'animeshjsk55', 'animesh', 'lal', 'male', 'animesh78@live.com', '1977-08-06', '878965478', '2019-01-14', '', 'learn jazz', 'B, Benhur Bldg, Off New Link Rd, Lokhandwala Complex, Andheri (west)', 'mumbai'),
(36, 'sumit278', 'indiaislove267', 'sumit', 'murti', 'male', 'sumitmurti38@gmail.c', '1978-01-08', '899478923', '2019-10-17', '', '', 'Yari Rd, Versova, Andheri (west)', 'mumbai'),
(37, 'meetop99', 'seemslike72', 'meet', 'rao', 'male', 'mitrrao98@gmail.com', '1996-01-08', '948765357', '2019-10-27', '', 'Doing Job at Yes bank', '24, Yari Rd, Versova, Andheri (west)', 'mumbai'),
(38, 'ramanchin2', 'chinmay67348', 'chinmay', 'raman', 'male', 'chinmay74@yahoo.com', '1978-03-22', '9668473629`', '2019-01-22', '', 'ME in Physical therapy', 'Plot No.162 Nr Ici School, Turbhe, Navi Mumbai', 'mumbai'),
(39, 'varunsheth5', 'sethareop47', 'varun', 'seth', 'male', 'varunseth66@gmail.co', '1999-01-23', '8646378397', '2020-01-12', '', 'BE in business managment', '50 , Amrapali Shopping Arcade, Pokharan-, Vasant Vihar, Thane W', 'mumbai'),
(40, 'mrigrank88', 'mishramfam28', 'mrigank', 'mishra', 'male', 'mrigangmishra44@gmai', '1998-01-11', '9474638393', '2019-05-14', '', 'Gamer ', '16 -a, Gr Flr, Azad Apts, S V Road, Azad Street, Andheri (west)', 'mumbai'),
(41, 'hemilgg', 'hemil2799', 'hemil', 'shah', 'male', 'hemilshah56@yahoo.co', '1997-01-08', '84978936547', '2019-10-16', '', '', '29 -a, Gr Flr, Azad Apts, S V Road, Azad Street, Andheri (west)', 'mumbai'),
(42, 'pujan1599', 'shahpujan', 'pujan', 'shah', 'male', 'pujanshah86@gmail.co', '1998-06-15', '9474638678', '2019-01-14', '', '12th std passed ', 'G-1, Onida House, Mahakali Caves Road, Chakala Midc, Andheri (west)', 'mumbai'),
(43, 'megha866', 'passwordis453', 'megha', 'chopra', 'male', 'meghais87@gmail.com', '1996-01-22', '87654457876', '2020-01-08', '', 'want to learn science', '47 rd Floor, Jayshree Apts, Gokhale Rd, Opp Alok Hotel, Thane (west)', 'mumbai'),
(44, 'sanat57', 'snaat_778', 'sanat ', 'patel', 'male', 'sanatpatel77@yahoo.c', '1999-07-16', '9774638393', '2020-01-06', '', 'ME in mech.', 'Navjivan, Opp Old High Court, Nr C U Shah Col, Ashram Road', 'ahmedabad'),
(45, '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '', ''),
(46, 'jayop66', 'jaybhatt_44', 'jay', 'bhatt', 'male', 'jaybhatt44@gmail.com', '1989-04-21', '9578462132', '2020-02-05', '', 'BE in Physical therapy', '103 /ad, D Souza X Lane, Mandvi', 'mumbai'),
(47, 'monai33', 'monali_685', 'monali', 'suthar', 'female', 'monalisuthar685@gmai', '1996-01-30', '9754896540', '2019-10-22', '', 'housewife', '104 /ad, chatrapati  Lane, Mandvi', 'mumbai'),
(48, 'nareshgg33', 'silveroakrocks44', 'naresh', 'parmar', 'male', 'nareshbhaipar9@gmail', '1977-07-14', '9568647852', '2019-10-19', '', 'Learner', '82 , Gagodia Market, Khari Baoli', 'delhi'),
(49, 'jitinmusic44', 'musicislife19', 'jitin ', 'sharma', 'male', 'jitinshramamusic@gma', '1980-01-08', '8966857986', '2019-04-16', '', 'B tech (english)', '33, vijay nagar society, naranpura', 'ahmedabad'),
(50, 'goyal33', 'goyalfam433', 'omana', 'goyal', 'female', 'omanagoyal43@gmail.c', '1995-07-28', '785634289', '2019-04-26', '', '', '223 , Mint St road, kuchipulli area', 'chennai'),
(51, 'ramangg', 'ramangoswami56', 'raman', 'gosvami', 'male', 'goswamiraman5@opop.c', '1996-01-08', '9487653444', '2020-12-08', '', 'Bsc in geo', '144, ashapura apart, ramanujan road', 'madhya pradesh'),
(52, 'aeshpat', 'ronaldo545', 'aesh ', 'shah', 'female', 'aesh453@gmail.com', '1965-01-03', '9374528163', '2020-02-11', '', 'housewife', '1165 , Budhwar Peth, , Budhwar Peth, Babu Genu Chowk', 'pune');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcatid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `teachercontact`
--
ALTER TABLE `teachercontact`
  ADD PRIMARY KEY (`tcid`);

--
-- Indexes for table `teachergallery`
--
ALTER TABLE `teachergallery`
  ADD PRIMARY KEY (`tgid`);

--
-- Indexes for table `teacherlikes`
--
ALTER TABLE `teacherlikes`
  ADD PRIMARY KEY (`tlid`);

--
-- Indexes for table `teacherpackage`
--
ALTER TABLE `teacherpackage`
  ADD PRIMARY KEY (`tpid`);

--
-- Indexes for table `teachersubcat`
--
ALTER TABLE `teachersubcat`
  ADD PRIMARY KEY (`tscid`);

--
-- Indexes for table `teachersubtype`
--
ALTER TABLE `teachersubtype`
  ADD PRIMARY KEY (`tsid`);

--
-- Indexes for table `teachingtype`
--
ALTER TABLE `teachingtype`
  ADD PRIMARY KEY (`ttid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `teachercontact`
--
ALTER TABLE `teachercontact`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachergallery`
--
ALTER TABLE `teachergallery`
  MODIFY `tgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacherlikes`
--
ALTER TABLE `teacherlikes`
  MODIFY `tlid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacherpackage`
--
ALTER TABLE `teacherpackage`
  MODIFY `tpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teachersubcat`
--
ALTER TABLE `teachersubcat`
  MODIFY `tscid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `teachersubtype`
--
ALTER TABLE `teachersubtype`
  MODIFY `tsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachingtype`
--
ALTER TABLE `teachingtype`
  MODIFY `ttid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
