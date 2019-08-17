-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 12:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

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
(1, 'gold', '', 999),
(2, 'platinum', '', 1999),
(3, 'Diamond', '', 2999);

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
(15, 'music', 4, 'multimedia\\music.png'),
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
(32, 'andriod', 7, 'andriod.png'),
(33, 'c', 7, 'c.png'),
(34, 'css', 7, 'css.png'),
(35, 'html', 7, 'html.png'),
(36, 'php', 7, 'php.png'),
(37, 'biology', 8, 'biology.png'),
(38, 'chemistry', 8, 'chemistry'),
(39, 'economics', 8, 'economics.png'),
(40, 'maths', 8, 'maths.png'),
(41, 'physics', 8, 'physics.png'),
(42, 'science', 8, 'science.png'),
(43, 'statistics', 8, 'statistics.png'),
(44, 'basketball', 9, 'basketball.png'),
(45, 'cricket', 9, 'cricket.png'),
(46, 'football', 9, 'football.png'),
(47, 'hockey', 9, 'hockey.png'),
(48, 'tennis', 9, 'tennis.png'),
(49, 'gre', 10, 'gre.png'),
(50, 'toefl', 10, 'toefl.png'),
(51, 'ielts', 10, 'ielts.png');

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

INSERT INTO `teacher` (`tid`, `uname`, `pwd`, `fname`, `lname`, `tpic`, `gender`, `degree`, `exp`, `contactno`, `email`, `lseen`, `Isactive`, `doj`, `address`, `city`) VALUES
(1, 'amankalal', '123456', 'aman', 'kalal', '', 'male', 'BE in Computer engin', '2 years', '8128744065', 'aman@test.com', '', '', '2019-08-17', '55,Sanskar App,Nr shyamal cross road,satellite,A\'bad', 'Ahmedabad'),
(2, 'hetz.wave', '123456', 'het', 'patel', '', 'male', 'BE in electronics an', '5 years', '9586041084', 'het@test.com', '', '', '2019-08-15', '55,Xyz App,Nr sola road,satellite,A\'bad', 'ahmedabad'),
(3, 'vipulgoran', '123456', 'vipul', 'gorana', '', 'male', 'BE in Mechanical Engineering', '1 year', '7567178807', 'vipul@test.com', '', '', '2019-08-01', '08,Shivani App,Nr shyamal cross road,satellite,A\'bad', 'ahmedabad'),
(4, 'shreenup', '123456', 'shreenu', 'pillai', '', 'male', 'Bcom ', '6 years', '8866007850', 'shreenu@test.com', '', '', '2019-08-12', '55,Heaven park,Nr helmetcross road,A\'bad', 'Ahmedabad'),
(5, 'rutvikjoshi', '123456', 'rutvik', 'joshi', '', 'male', 'BE in Civil', '10 years', '9408507193', 'rutvik@test.com', '', '', '2019-08-08', '25,vrajApp,Nr shyamal cross road,satellite,A\'bad', 'Ahmedabad'),
(6, 'neelmehta', '123456', 'neel', 'mehta', '', 'male', 'diploma in music', '4 years', '7894456112', 'neel@test.com', '', '', '2019-08-02', '45,moment App,Nr shyamal cross road,satellite,A\'bad', 'Ahmedabad'),
(7, 'jamesstark', '123456', 'james', 'stark', '', 'male', 'B.A. Hons. (Music)', '15 years', '1800455622', 'james@test.com', '', '', '2019-08-13', '15,park street,california,america', 'california'),
(8, 'nehasharma', '123456', 'neha', 'mehta', '', 'female', 'certified chef', '16 years', '9156664477', 'neha@test.com', '', '', '2019-08-03', '15,bokaro steel city,kolkata,west bengal', 'kolkata'),
(9, 'richardoxenford', '123456', 'richard', 'oxenford', '', 'male', 'masters in sports science', '10 years', '2100566447', 'richard@test.com', '', '', '2019-08-08', 'riar Cottage, Old London Rd, Pulborough, RH20 1LF,UK', 'Pulborough'),
(10, 'ustadsaif', '123456', 'saif', 'ahmed', '', 'male', 'Bachelor of Music - Hindustani Classical Instrumental', '20 years', '845622178', 'ustadsaif@test.com', '', '', '2019-08-11', '16, Amar Stambh, Zone-I, MP Nagar\r\nBhopal, Madhya Pradesh', 'Bhopal');

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
  `dou` int(11) NOT NULL,
  `isapprove` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `teachersubcat`
--

CREATE TABLE `teachersubcat` (
  `tscid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `subcatid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `email` varchar(20) NOT NULL,
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

INSERT INTO `user` (`uid`, `uname`, `pwd`, `funame`, `luname`, `email`, `contactno`, `doj`, `upic`, `details`, `uadd`, `city`) VALUES
(1, 'mukeshshah', '123456', 'mukesh', 'shah', 'muskesh@test.com', '754482357', '2019-08-02', '', 'class 10', '50, shahid Stambh, Zone-I, MP Nagar\r\nBhopal, Madhya Pradesh,', 'bhopal'),
(2, 'poojapatel', '123456', 'pooja', 'patel', 'pooja@test.com', '845612799', '2019-08-11', '', 'Be in computer engineering', '241, Opp Satyam Mall, Nr Mansi Circle, Satellite.Ahmedabad', 'Ahmedabad'),
(3, 'jimmyhopper', '123456', 'jimmy', 'hopper', 'jimmy@test.com', '184452612', '2019-08-08', '', 'Be in electronics and communication ', '37 Linda Road \r\nSaratoga Springs,NY', 'New york'),
(4, 'michealphillip', '123456', 'micheal', 'phillip', 'michel@test.com', '120056478', '2019-08-14', '', 'class 8', '77 Tony Garden, Reynoldston,uk.', 'Reynoldston'),
(5, 'Christinasullivan', '123456', 'Christina', 'sullivan', 'sullivan@test.com', '082 168 023', '2019-08-02', '', 'BE in Mechanical Engineering', '304,Bhoola Rd,East London,Eastern Cape,South Africa.', 'East London'),
(6, 'manpreetsingh', '123456', 'manpreetsingh', 'gill', 'manpreet@test.com', '01724608777', '2019-08-09', '', 'BA ', 'Tower-C, 3rd Floor, DLF IT Park\r\nChandigarh,india', 'Chandigarh'),
(7, 'venugopal', '123456', 'venugopal', 'krishnamurthy ', 'venugopal', '04424862081', '2019-08-02', '', '', '191, Tagore Street, Alwarthirunagar\r\nChennai, Tamil Nadu.india', 'Chennai'),
(8, 'Ahmedkhan', '123456', 'Ahmed', 'khan', 'ahmed@test.com', '984563217', '2019-08-06', '', 'Class 12', 'Scf-41 Sector 15, Astor Basement Market\r\nDelhi, Haryana.', 'delhi'),
(9, 'Geetanjaliratti', '123456', 'Geetanjali', ' Ratti', 'geetanjali@test.com', '78945879', '2019-08-07', '', '', '10, Nayan Society,AditiGunj,Mumbai,Maharashtra', 'Mumbai'),
(10, 'Mehul Bhatia', '123456', 'Mehul', 'Bhatia', 'mehul@test.com', '812874987', '2019-08-01', '', 'BCA', '40, KusumGarh, Ratlam', ' Ratlam');

--
-- Indexes for dumped tables
--

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
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teachercontact`
--
ALTER TABLE `teachercontact`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachergallery`
--
ALTER TABLE `teachergallery`
  MODIFY `tgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacherlikes`
--
ALTER TABLE `teacherlikes`
  MODIFY `tlid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacherpackage`
--
ALTER TABLE `teacherpackage`
  MODIFY `tpid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachersubcat`
--
ALTER TABLE `teachersubcat`
  MODIFY `tscid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachersubtype`
--
ALTER TABLE `teachersubtype`
  MODIFY `tsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachingtype`
--
ALTER TABLE `teachingtype`
  MODIFY `ttid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
