-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 05:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prince k video`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(100) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'prince', 'pk500', 'jjkknnk', 'hello guys', '2022-12-27 15:53:18'),
(2, 'prince kumar', 'rj509034@gmail.com', 'sales', 'hello every one ', '2022-12-27 20:34:31'),
(3, 'prince kumar', 'pk549713@gmail.com', 'sales', 'hello everyone how are you guys', '2023-01-05 21:21:46'),
(4, 'prince kumar', 'pk549713@gmail.com', 'sales', 'hello everyone how are you guys', '2023-01-05 21:22:36'),
(5, 'prince kumar', 'pk549713@gmail.com', 'sales', 'hello everyone how are you guys', '2023-01-05 21:22:52'),
(6, 'prince kumar', 'pk549713@gmail.com', 'sales', 'hello ', '2023-01-05 21:24:16'),
(7, 'prince kumar', 'pk549713@gmail.com', 'creative', 'hello guys ', '2023-01-05 21:44:12'),
(8, 'prince kumar', 'pk549713@gmail.com', 'sales', 'hello ', '2023-01-05 21:50:34'),
(9, 'prince kumar', 'pk509034@gmail.com', 'sales', 'hello ', '2023-01-06 20:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `sno` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`sno`, `email`) VALUES
(1, 'rjkumar2525@gmail.com'),
(10, 'at549744@gmail.com'),
(11, 'pk549713@gmail.com'),
(12, 'pk549713@gmail.com'),
(13, 'rohan@56789gmail.com'),
(14, 'hk95050@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `sno` int(50) NOT NULL,
  `namefirst` text NOT NULL,
  `slug` text NOT NULL,
  `videotitle` text NOT NULL,
  `email` text NOT NULL,
  `youtubelink` text NOT NULL,
  `country` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`sno`, `namefirst`, `slug`, `videotitle`, `email`, `youtubelink`, `country`, `description`, `date`) VALUES
(1, 'prince ', 'new-post', 'What\'s coming in 2023? Big Announcement for all Coders❤️', '', 'MItn2oV4VKM', 'canada', '🔥Alpha 3.0 Placement Batch (Java+DSA)  : https://www.apnacollege.in/course/alp...\r\n\r\n------------------------------------------------------\r\nLink for International Students:  https://buy.stripe.com/eVa8wI9begse4c...\r\n\r\nDirect RazorPay Link for Alpha Batch 3 : https://pages.razorpay.com/alpha-new-...\r\n\r\n\r\n\r\n📌 Details about the Alpha Placement Batch 3 : \r\n- Complete Java Language\r\n- Complete Data Structures & Algorithms\r\n- Live Mentorship Sessions \r\n- 300+ Solved Coding Questions  \r\n- 400+ recorded Topic Videos \r\n- Live Resume Creation\r\n- Live Interview Preparation\r\n- from Basics to Pro Learners\r\n- Lectures will be uploaded on alternate days\r\n- Start Date :  7th January, 2023\r\n- Alternate day lectures\r\n- Each Class duration : 1.5 hour-2hour (alternate days)\r\n- Access to the course is for 1 year.\r\n', '2022-12-27 20:35:55'),
(2, 'prince ', 'old-post', 'Extraordinary Communication Skills - By Sandeep Maheshwari I Hindi', '', 'VczVqHJW0gg', 'australia', 'Communication is all about understanding the other person, not about winning an argument or forcing your opinions on others.\r\n\r\nSandeep Maheshwari is a name among millions who struggled, failed and surged ahead in search of success, happiness and contentment. Just like any middle class guy, he too had a bunch of unclear dreams and a blurred vision of his goals in life. All he had was an undying learning attitude to hold on to. Rowing through ups and downs, it was time that taught him the true meaning of his life.\r\n\r\nTo know more, log on to www.sandeepmaheshwari.com\r\nConnect with him at Facebook.com/SandeepMaheshwariPage\r\nWatch his inspirational videos at Youtube.com/SandeepSeminars\r\n', '2022-12-27 21:36:13'),
(3, 'prince kumar', 'Web-Development-Complete-Course', 'Web Development Complete Course [30 Hours] | Learn Full Stack Web Development From Basic', '', 'HVjjoMvutj4', 'usa', 'Web Development Complete Course [30 Hours] | Learn Full Stack Web Development From Basic\r\n\r\nWelcome to our full course on web development! In this course, you will learn all the skills needed to become a proficient web developer. We will cover a wide range of topics, including HTML, CSS, JavaScript, responsive design, and more. Whether you are a complete beginner or have some experience in web development, this course is suitable for you. By the end of this course, you will be able to build your own fully-functional websites from scratch. So if you want to start a new career in web development or just want to improve your skills, this course is for you. Enroll now and let\'s get started!\r\n\r\n00:00:00 - Web Development \r\n00:00:11 - Web Development Header \r\n00:00:28 - HTML\r\n08:39:33 - JS\r\n16:36:42 - Bootstrap \r\n19:55:42 - PHP\r\n24:55:42 - MySQL', '2023-01-03 10:43:11'),
(4, 'rajkumar', '100-Most-Common-English-Words ', '100 Most Common English Words (Pronunciation & Example Sentence)', '', 'xsYkkwzcJ5w', 'australia', 'It is said that the top 100 words make up 50% of English! Learn to use and pronounce them perfectly and use them in a sentence! Don\'t forget to download the FREE PDF & QUIZ: https://bit.ly/100WordsPDF\r\n - there are more examples and activities!\r\nVisit my website for an interactive pronunciation tool: https://englishwithlucy.co.uk\r\n​\r\nCheck out my English courses: https://englishwithlucy.teachable.com...\r\n\r\n\r\nTimestamps:\r\n0:00 Introduction\r\n1:16 FREE PDF\r\n1:56 Nouns\r\n3:15 Pronouns\r\n6:01 Verbs\r\n7:58 Auxiliary verbs\r\n9:35 Adjectives\r\n11:23 Adverbs\r\n12:39 Conjunctions\r\n13:46 Prepositions\r\n15:10 Articles\r\n15:53 FREE PDF\r\n16:12 Social Media Platforms\r\n17:05 Bloopers & Outtakes\r\n\r\nVideo edited by Polina Park 🎥', '2023-01-03 10:45:29'),
(5, 'king ', '\"दो-घोड़ों-पर-सिर्फ-एक-बंदा सवार-हो-सकता-है ', '\"दो घोड़ों पर सिर्फ एक बंदा सवार हो सकता है - Ajay Devgn\" | Shark Tank India | Unseen Pitches', '', 'wzHsu7TuR7g', 'australia', 'A philanthropist from Pune is here to represent \'Inali Assistive Touch\' whose motive is to make prosthetics affordable in India. Now, the founder has to face Sharks\' tricky questions that involve business and philanthropy so that they understand the proposition well. \r\n\r\nShow Name: Shark Tank India\r\nJudges: Vineeta Singh, Peyush Bansal, Namita Thapar, Anupam Mittal, Ghazal Alagh, and Aman Gupta.\r\nProducer: Studio NEXT.\r\n\r\n#SharkTankIndia\r\n#SETIndia \r\n #AmanGupta #NamitaThapar #VineetaSingh #AnupamMittal #PeyushBansal #GhazalAlagh\r\n#शार्कटैंकइंडिया \r\n\r\nClick here to Subscribe to SET India: https://www.youtube.com/channel/UCpEh...\r\n\r\nAbout Shark Tank India:\r\n------------------------------------------------------------\r\nWorld ka No.1 business reality show, Shark Tank aa raha hai India mein! Jahan Sharks, yaani India ke experienced Businessmen, aapke business aur business idea ko parkhenge, tarashenge aur bada banayenge.\r\n\r\nCatch more interesting clips here:\r\nhttps://www.youtube.com/playlist?list...\r\n\r\n\"दो घोड़ों पर सिर्फ एक बंदा सवार हो सकता है - Ajay Devgn\" | Shark Tank India | Unseen Pitches', '2023-01-03 10:48:00'),
(6, 'prince kumar', 'Enjoy-Ashneer\'-Punch-Lines-On', 'Enjoy Ashneer\'s Punch Lines On \"The Kapil Sharma Show\"| The Kapil Sharma Show Season2 | Full Episode', '', 'SCOUG2__6TY', 'australia', 'https://www.youtube.com/user/sonyliv\r\n\r\nClick here to watch the full episodes of The Kapil Sharma Show: \r\nhttps://www.youtube.com/playlist?list...\r\n\r\nEpisode 225:\r\n--------------------------------------------------------------------------------- \r\nSit back and enjoy the hilarious journey of The Kapil Sharma Show where your favorite comedian Kapil and his team deliver hearty laughs, wit, and puns. They are joined by various popular celebrities and stars who equally enjoy their time on one of the best television shows. Kapil welcomes the sharks of the show, \"Shark Tank\", Ashneer Grover, Aman Gupta, Anupam Mittal, Ghazal Alagh, Namita Thapar, Peyush Bansal, Vineeta Singh. Catch all the fun with this hilarious episode full of laughter and hilarious puns.\r\n\r\nShow Name: The Kapil Sharma Show Season 2 \r\nEpisode: 225\r\nProducers: Kapil Sharma, Salman Khan, Deepak Dhar\r\n\r\n#thekapilsharmashow #दीकपिलशर्माशो #comedy #thekapilsharmashowfullepisodes #sonyliv \r\n\r\nAbout The Kapil Sharma Show Season 2 : \r\n----------------------------------------------------------------\r\nKapil Sharma is back with a new \'Salah Center\' (Consultancy Business) in a Mohollah with absurd characters. The wealthy milkman Bachcha Yadav (Kiku Sharda) with his wife Titli Yadav (Bharti Singh) and sister-in-law Bhoori (Sumona Singh) is the one who has rented out houses within the Mohollah and is Kapil Sharma\'s business partner. The neighbors in the Mohollah are also full of quirks and don\'t shy away from the antics. With celebrities gracing every episode, The Kapil Sharma Show promises fun-filled entertaining weekends.\r\n\r\nEnjoy Ashneer\'s Punch Lines On \"The Kapil Sharma Show\"  | The Kapil Sharma Show Season 2 | Full Episode', '2023-01-03 10:51:03'),
(7, 'prince kumar', 'flask-mail', 'Using Flask-Mail to Send Emails in Flask', '', '48Eb8JuFuUI', 'australia', '', '2023-01-11 21:42:15'),
(8, 'prince kumar', 'IELTS-Speaking', 'IELTS Speaking Interview | BAND 9 | Real Test!', '', 'V6twSFNeUk4', 'australia', '', '2023-01-11 21:45:01'),
(9, 'prince kumar', 'IELTS-Speaking', 'IELTS Speaking Interview | BAND 9 | Real Test!', '', 'V6twSFNeUk4', 'australia', '', '2023-01-11 21:47:11'),
(10, 'prince kumar', 'IELTS-Speaking', 'IELTS Speaking Interview | BAND 9 | Real Test!', '', 'V6twSFNeUk4', 'australia', '', '2023-01-11 21:50:54'),
(11, 'prince kumar', 'Sending-Email-From', 'Sending Email From Web Forms - Python and Flask #6', '', 'U5MBYN6an70', 'australia', '', '2023-01-12 21:20:44'),
(12, 'prince kumar', 'Sending-Email-From', 'Sending Email From Web Forms - Python and Flask #6', '', 'U5MBYN6an70', 'australia', '', '2023-01-12 21:23:04'),
(13, 'prince kumar', 'Sending-Email-From', 'Sending Email From Web Forms - Python and Flask #6', '', 'U5MBYN6an70', 'australia', '', '2023-01-12 21:23:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
