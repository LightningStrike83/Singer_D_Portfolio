-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2024 at 04:06 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: portfolio_db
--

-- --------------------------------------------------------

--
-- Table structure for table category
--

DROP TABLE IF EXISTS category;
CREATE TABLE IF NOT EXISTS category (
  id int NOT NULL AUTO_INCREMENT,
  category varchar(100) NOT NULL,
  folder varchar(500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table category
--

INSERT INTO category (id, category, folder) VALUES
(1, 'Front-End Coded Websites', 'front'),
(2, 'Video Edits', 'video'),
(3, 'Images', 'images'),
(4, 'Misc. Projects', 'misc');

-- --------------------------------------------------------

--
-- Table structure for table clients
--

DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  client_name varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  logo_image_id int UNSIGNED NOT NULL,
  link_id int UNSIGNED NOT NULL,
  client_email varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table clients
--

INSERT INTO clients (id, client_name, logo_image_id, link_id, client_email) VALUES
(1, 'Yumichan216', 45, 4, 'yumihamano@notarealemail.com'),
(2, 'sunbiscuit', 33, 3, 'sunbiscuit@notarealemail.com'),
(3, 'Westrop, Sophia', 10, 7, 's_westrop@fanshaweonline.ca'),
(4, 'DucessaEva', 42, 5, 'ducessaeva@notarealemail.com'),
(5, 'Clapper, Mack', 69, 96, 'mackclapper@notarealemail.com'),
(6, 'Chi', 54, 9, 'chisie@notarealemail.com'),
(7, 'Self', 133, 133, 'd_singer042@gmail.com'),
(8, 'Fanshawe College (Assignment)', 0, 0, ''),
(9, 'Private Client', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table contacts
--

DROP TABLE IF EXISTS contacts;
CREATE TABLE IF NOT EXISTS contacts (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  preferred_name varchar(500) NOT NULL,
  email varchar(256) NOT NULL,
  phone varchar(15) NOT NULL,
  website_company varchar(200) NOT NULL,
  subject_line varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  comments varchar(1500) NOT NULL,
  date_received timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table contacts
--

INSERT INTO contacts (id, preferred_name, email, phone, website_company, subject_line, comments, date_received) VALUES
(1, 'D Singer', 'd_singer@fanshaweonline.ca', '', 'Fanshawe', 'Test Subject', 'Just a dummy entry for this field', '2023-11-17 19:56:05'),
(2, 'Sophia', 'swestrop@fanshaweonline.ca', '', 'Fanshawe', 'Need Javascript Help', 'Please help me! This is so hard!', '2023-11-17 20:03:48'),
(3, 'Anonymous Friend A', 'yhamano@fanshaweonline.ca', '', '', 'Project Meeting', 'Are you free this upcoming Thursday around noon? We don\'t have class until later in the afternoon. We can eat lunch and start brainstorming ideas.', '2023-11-17 20:39:01');

-- --------------------------------------------------------

--
-- Table structure for table links
--

DROP TABLE IF EXISTS links;
CREATE TABLE IF NOT EXISTS links (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  link varchar(2100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table links
--

INSERT INTO links (id, link) VALUES
(1, 'https://www.serebii.net/index2.shtml'),
(3, 'https://sunbiscuit.wixsite.com/portfolio'),
(4, 'https://yumichanhamano.carrd.co/#'),
(5, 'https://ducessaeva.carrd.co/#'),
(6, 'https://github.com/LightningStrike83/AnonyGhosts_FoundationSixty6'),
(7, 'https://github.com/LightningStrike83/Westrop_S_Singer_D_HW1'),
(8, 'https://github.com/LightningStrike83/ConvergingWorlds'),
(9, 'https://github.com/LightningStrike83/Singer_D_ClapperWebsite'),
(10, 'https://github.com/LightningStrike83/Singer_D_PokemonWebsite'),
(11, 'https://github.com/LightningStrike83/Singer_D_PKMNTrainerSite'),
(12, 'https://github.com/LightningStrike83/Singer_D_Earbud_Sub2'),
(13, 'https://github.com/LightningStrike83/Singer_D_TealMask'),
(14, 'https://github.com/LightningStrike83/Singer_D_SaraPortfolio'),
(15, 'https://github.com/LightningStrike83/winningTeam_student_showcase'),
(16, 'https://github.com/LightningStrike83/Singer_D_DynamicTeamPage'),
(17, 'Not available'),
(18, 'https://github.com/sophwest/Westrop_S_Singer_D_MusicMixer'),
(19, 'https://github.com/LightningStrike83/Westrop_S_Singer_D_HW1.git'),
(20, 'https://github.com/LightningStrike83/Singer_D_Portfolio.git'),
(21, 'https://github.com/LightningStrike83/Singer_D_DynamicTeamPage.git'),
(22, 'https://github.com/LightningStrike83/Singer_D_TealMask.git'),
(23, 'https://github.com/LightningStrike83/singer_d_fireemblem.git'),
(24, 'https://archiveofourown.org/works/27289003'),
(25, 'https://archiveofourown.org/works/20986229');

-- --------------------------------------------------------

--
-- Table structure for table media
--

DROP TABLE IF EXISTS media;
CREATE TABLE IF NOT EXISTS media (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  image_path varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  project_id int UNSIGNED NOT NULL,
  image_description mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci,
FOREIGN KEY (project_id) REFERENCES projects(id) 
    ON DELETE CASCADE;

--
-- Dumping data for table media
--

INSERT INTO media (id, image_path, project_id, image_description) VALUES
(17, 'project1a.svg', 1, 'Thumbnail'),
(18, 'project1b-1.svg', 1, 'This is the primary display of the \"bank\" area, where all species are shown with their names and models. The pictures are draggable and will be appended to the custom area. If there\'s too many Pokemon, then there\'s a filter area to help narrow down what\'s shown.'),
(19, 'project1b-2.svg', 1, 'The filter system in action; this focus being for the regional forms for applicable Pokemon. Every regional Pokedex is included, with Kitakami and the Blueberry Pokedex falling under the Paldean Pokedex.'),
(20, 'project1b-3.svg', 1, 'This is an example of what a custom Pokedex could look like. There are millions of different combinations, and there are 3 sizes of Pokedex a user can choose from!'),
(21, 'project1c-1.svg', 1, 'Thumbnail'),
(22, 'project1c-2.svg', 1, 'Thumbnail'),
(23, 'project1c-3.svg', 1, 'Thumbnail'),
(24, 'project5a.svg', 5, ''),
(25, 'project5b-1.svg', 5, ''),
(26, 'project5b-2.svg', 5, ''),
(27, 'project5b-3.svg', 5, ''),
(28, 'project5c-1.svg', 5, ''),
(29, 'project5c-2.svg', 5, ''),
(30, 'project5c-3.svg', 5, ''),
(31, 'project6a.svg', 6, ''),
(32, 'project6b-1.svg', 6, ''),
(33, 'project6b-2.svg', 6, ''),
(34, 'project6b-3.svg', 6, ''),
(35, 'project6c-1.svg', 6, ''),
(36, 'project6c-2.svg', 6, ''),
(37, 'project6c-3.svg', 6, ''),
(38, 'project7a.svg', 7, ''),
(39, 'project7b-1.svg', 7, ''),
(40, 'project7b-2.svg', 7, ''),
(41, 'project7b-3.svg', 7, ''),
(42, 'project7c-1.svg', 7, ''),
(43, 'project7c-2.svg', 7, ''),
(44, 'project7c-3.svg', 7, ''),
(45, 'project8a.svg', 8, ''),
(46, 'project8b-1.svg', 8, ''),
(47, 'project8b-2.svg', 8, ''),
(48, 'project8b-3.svg', 8, ''),
(49, 'project8c-1.svg', 8, ''),
(50, 'project8c-2.svg', 8, ''),
(51, 'project8c-3.svg', 8, ''),
(55, 'project9a.svg', 9, 'Thumbnail'),
(56, 'project9b-1.svg', 9, 'I turned a commission I got from PokeHexDex into a customized fake-loading screen, using a combination of the GreenSock library, Adobe After Effects, and EZGif.'),
(57, 'project9b-2.svg', 9, 'I commissioned my friend Sunbiscuit for pictures of my trainer with her Pokemon, for the Pokemon biography pages. I wanted to display it as toggleable information that changes dynamically using Javascript.'),
(58, 'project9b-3.svg', 9, 'The Trainer page functions similar to the Pokemon page, but instead it\'s the phases of my trainer\'s journey.'),
(59, 'project9c-1.svg', 9, 'Thumbnail'),
(60, 'project9c-2.svg', 9, 'Thumbnail'),
(61, 'project9c-3.svg', 9, 'Thumbnail'),
(62, 'project2a.svg', 2, ''),
(63, 'project2b-1.svg', 2, ''),
(64, 'project2b-2.svg', 2, ''),
(65, 'project2b-3.svg', 2, ''),
(66, 'project2c-1.svg', 2, ''),
(67, 'project2c-2.svg', 2, ''),
(68, 'project2c-3.svg', 2, ''),
(69, 'project12a.svg', 12, ''),
(70, 'project12b-1.svg', 12, ''),
(71, 'project12b-2.svg', 12, ''),
(72, 'project12b-3.svg', 12, ''),
(73, 'project12c-1.svg', 12, ''),
(74, 'project12c-2.svg', 12, ''),
(75, 'project12c-3.svg', 12, ''),
(76, 'project13a.svg', 13, ''),
(77, 'project13b-1.svg', 13, ''),
(78, 'project13b-2.svg', 13, ''),
(79, 'project13b-3.svg', 13, ''),
(80, 'project13c-1.svg', 13, ''),
(81, 'project13c-2.svg', 13, ''),
(82, 'project13c-3.svg', 13, ''),
(83, 'project14a.svg', 14, ''),
(84, 'project14b-1.svg', 14, ''),
(85, 'project14b-2.svg', 14, ''),
(86, 'project14b-3.svg', 14, ''),
(87, 'project14c-1.svg', 14, ''),
(88, 'project14c-2.svg', 14, ''),
(89, 'project14c-3.svg', 14, ''),
(90, 'project4a.svg', 4, ''),
(91, 'project4b-1.svg', 4, ''),
(92, 'project4c-1.svg', 4, ''),
(93, 'project16a.svg', 16, 'Thumbnail'),
(94, 'project16b-1.svg', 16, 'Using only Greensock\'s animation library, users are immediately greeted with a screen that\'s reminiscent of the opening title from the movies. Unfortunately, no opening crawl to accompany it.'),
(95, 'project16b-2.svg', 16, 'In the assignment, we were asked to display a list of characters from SWAPI, and these were the first 10 results we got from the list!'),
(96, 'project16b-3.svg', 16, 'When you click on a character, it accesses the character\'s information, and we pull the movie data from it. The background dynamically changes to a famous location from that movie. The movie, if a character appears in more than one, gets randomized too!'),
(97, 'project16c-1.svg', 16, 'Thumbnail'),
(98, 'project16c-2.svg', 16, 'Thumbnail'),
(99, 'project16c-3.svg', 16, 'Thumbnail'),
(100, 'project17a.svg', 17, ''),
(101, 'project17b-1.svg', 17, ''),
(102, 'project17b-2.svg', 17, ''),
(103, 'project17b-3.svg', 17, ''),
(104, 'project17c-1.svg', 17, ''),
(105, 'project17c-2.svg', 17, ''),
(106, 'project17c-3.svg', 17, ''),
(107, 'project18a.svg', 18, 'Thumbnail'),
(108, 'project18b-1.svg', 18, 'When finding inspiration for this assignment, I remembered I had some assets from my previous final integrated project I could reuse and that became the inspiration for the project!'),
(109, 'project18b-2.svg', 18, 'The information displays and changes dynamically depending on who you select on. Basic, but it was the stepping stones to what I love to do!'),
(110, 'project18b-3.svg', 18, 'What\'s a DDLC project without a little horror? A button will change the images and text to be a little more spooky themed. Just Delilah. Just Monika.'),
(111, 'project18c-1.svg', 18, 'Thumbnail'),
(112, 'project18c-2.svg', 18, 'Thumbnail'),
(113, 'project18c-3.svg', 18, 'Thumbnail'),
(114, 'project19a.svg', 19, ''),
(115, 'project19b-1.svg', 19, ''),
(116, 'project19b-2.svg', 19, ''),
(117, 'project19b-3.svg', 19, ''),
(118, 'project19c-1.svg', 19, ''),
(119, 'project19c-2.svg', 19, ''),
(120, 'project19c-3.svg', 19, ''),
(121, 'project20a.svg', 20, 'Thumbnail'),
(122, 'project20b-1.svg', 20, 'Using Game8 as a resource to break down the sections of Area Zero, these areas are in a toggleable menu that will dynamically populate the table with the spawns!'),
(123, 'project20b-2.svg', 20, 'All spawns in a particular area are divided by type. If there\'s no Pokemon of that type in that section, nothing will populate.'),
(124, 'project20b-3.svg', 20, 'You can select more than one area at once, if you\'re feeling adventurous. All Pokemon for those areas will appear!'),
(125, 'project20c-1.svg', 20, 'Thumbnail'),
(126, 'project20c-2.svg', 20, 'Thumbnail'),
(127, 'project20c-3.svg', 20, 'Thumbnail'),
(128, 'project21a.svg', 21, 'Thumbnail'),
(129, 'project21b-1.svg', 21, 'This portion of the website contains as much information as I could get on NPC trainers and their Pokemon, up to pre-Teal Mask DLC in Scarlet and Violet.'),
(130, 'project21b-2.svg', 21, 'Trainers are selectable in a menu, and the version of said trainer can be selected as well, if their teams change depending on choices or versions.'),
(131, 'project21b-3.svg', 21, 'When a trainer is selected, it will dynamically populate the table with information; including sprites, movesets, crowd-sourced stats, and more!'),
(132, 'project21c-1.svg', 21, 'Thumbnail'),
(133, 'project21c-2.svg', 21, 'Thumbnail'),
(134, 'project21c-3.svg', 21, 'Thumbnail'),
(135, 'project22a.svg', 22, 'Thumbnail'),
(136, 'project22b-1.svg', 22, 'This assignment challenged us to use a single image and use CSS to dynamically select the area we want to feature in the boxes. Then, on a hover, it changes the display.'),
(137, 'project22b-2.svg', 22, 'The golden bars are toggleable in size on a hover, using position: absolute to keep its positioning on the screen. It adds a nice little touch to spice up any profile!'),
(138, 'project22b-3.svg', 22, 'The character information is displayed in a lightbox. Originally, we hard coded the information with different lightboxes, but now I would just use an array and javascript!'),
(139, 'project22c-1.svg', 22, 'Thumbnail'),
(140, 'project22c-2.svg', 22, 'Thumbnail'),
(141, 'project22c-3.svg', 22, 'Thumbnail'),
(142, 'project23a.svg', 23, ''),
(143, 'project23b-1.svg', 23, ''),
(144, 'project23c-1.svg', 23, ''),
(145, 'project24a.svg', 24, ''),
(146, 'project24b-1.svg', 24, ''),
(147, 'project24c-1.svg', 24, ''),
(148, 'project25a.svg', 25, ''),
(149, 'project25b-1.svg', 25, ''),
(150, 'project25c-1.svg', 25, ''),
(151, 'project26a.svg', 26, ''),
(152, 'project26b-1.svg', 26, ''),
(153, 'project26c-1.svg', 26, ''),
(154, 'project27a.svg', 27, ''),
(155, 'project27b-1.svg', 27, ''),
(156, 'project27c-1.svg', 27, ''),
(157, 'project28a.svg', 28, ''),
(158, 'project28b-1.svg', 28, ''),
(159, 'project28b-2.svg', 28, ''),
(160, 'project28b-3.svg', 28, ''),
(161, 'project28c-1.svg', 28, ''),
(162, 'project28c-2.svg', 28, ''),
(163, 'project28c-3.svg', 28, ''),
(164, 'project29a.svg', 29, ''),
(165, 'project29b-1.svg', 29, ''),
(166, 'project29b-2.svg', 29, ''),
(167, 'project29b-3.svg', 29, ''),
(168, 'project29c-1.svg', 29, ''),
(169, 'project29c-2.svg', 29, ''),
(170, 'project29c-3.svg', 29, ''),
(171, 'project3a.svg', 3, ''),
(172, 'project3b-1.svg', 3, ''),
(173, 'project3b-2.svg', 3, ''),
(174, 'project3b-3.svg', 3, ''),
(175, 'project3c-1.svg', 3, ''),
(176, 'project3c-2.svg', 3, ''),
(177, 'project3c-3.svg', 3, ''),
(178, 'project30a.svg', 30, ''),
(179, 'project30b-1.svg', 30, ''),
(180, 'project30b-2.svg', 30, ''),
(181, 'project30b-3.svg', 30, ''),
(182, 'project30c-1.svg', 30, ''),
(183, 'project30c-2.svg', 30, ''),
(184, 'project30c-3.svg', 30, '');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

DROP TABLE IF EXISTS projects;
CREATE TABLE IF NOT EXISTS projects (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  title varchar(250) NOT NULL,
  category_id int UNSIGNED NOT NULL,
  date_finished varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  description varchar(1500) NOT NULL,
  client_id int UNSIGNED NOT NULL,
  link_id int UNSIGNED NOT NULL,
  case_study varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  portfolio_image varchar(256) NOT NULL,
  thumbnail varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, category_id, date_finished, description, client_id, link_id, case_study, portfolio_image, thumbnail) VALUES
(1, 'Create Your Own Pokedex', 1, 'Oct. 17, 2023', 'This is a functioning Create Your Own Pokedex website, where you can drag and drop Pokemon models into the open dex area and create your very own Pokedex!', 7, 10, 'During the summer in my college years, I wanted to code and learn more things. As I was thinking of projects, I realized the Pokémon community doesn\'t have a \"Create Your Own Pokedex\" which I was surprised at. So, like Thanos from Avengers, I said \"Fine, I\'ll do it myself.\"<br><br>\r\n\r\nAt first, I thought it would be simple, using the tools I learned from class. However, I quickly found out that I was taking on a little more than I could chew at the time. I had the right ideas, just the wrong executions. I needed to get a bit of external help in order to accomplish the task at hand.<br><br>\r\n\r\nOne thing that struck my mind as I was working was \"There are a lot of Pokemon; scrolling is going to take forever and be bad UX/UI\". So I stopped and thought, and created a menu and some javascript that, when a region is interacted with, it will hide all the Pokemon from all the other regions.<br><br>\r\n\r\nAnd then I realized too, if someone wants all of the regions on at once, I would need to include an \"All\" button for better functionality.<br><br>\r\n\r\nThe biggest challenge to figure out was how to return the Pokémon models to their proper home if they were no longer desired. I managed to write code that could bring it back to the right area of the page, but not its original box.<br><br>\r\n\r\nThen it struck me; I could give its original home and the asset a timestamp. Then, when the model is dropped back into the model area, the system will look for a matching timestamp and append the image to its original area automatically.<br><br>\r\n\r\nEventually, with hard work and persistence, the Create Your Own Pokedex website finally finished with the best functionality I could give it!', 'project1a.svg', 'project1c-1.svg'),
(2, 'Ashes- Fire Emblem Three Houses AMV', 2, 'Aug. 31, 2019', 'This was a birthday gift for one of my best friends, DucessaEva, based off the game Fire Emblem: Three Houses.', 7, 17, 'This was a gift for one of my best friends for her birthday. One of her favourite games at the time was Fire Emblem: Three Houses for the Switch. She\'s an AMV maker and loves watching them so I wanted to do something that I thought she\'d really like.<br><br>\r\n\r\nThe project itself doesn\'t contain much in the way of edits, but the way it\'s compiled, I feel, couldn\'t have turned out better at the time.<br><br>\r\n\r\nA large portion of the game focuses on the war between Adrestia and Faerghus, so I felt it fitting to make that the narrative of the video; by focusing on the leaders of the respective lands.<br><br>\r\n\r\nThere were some beats that I didn\'t find appropriate footage for, but I remembered a saying, \"Less is more\". Thus, I used blank space artistically to create a little more tension and emotion.<br><br>\r\n\r\nUpon delivery to her, she really enjoyed it and even gave her feels, which was my intent, so it was a successful video project for sure!', 'project2a.svg', 'project2c-1.svg'),
(3, 'EmblemCon Wheel of Fortune', 4, 'May 7, 2023', 'This was made for EmblemCon for their annual convention for the Wheel of Fortune panel, hosted by yours truly and the lovely DucessaEva~', 7, 17, 'Every year there\'s a convention called EmblemCon, where many Fire Emblem enthusiasts gather to discuss the game, share their art, and just all around have a good time.<br><br>\r\n\r\nI was fortunate enough to be picked as a panelist for the convention, along with one of my best friends, and one of the ideas we had was to host a Wheel of Fortune panel.<br><br>\r\n\r\nRemembering what I had learned in college, I decided to try making the puzzles in Adobe XD. I used its \"state\" feature to group the individual panels together with the letters, and then on a click, the letter would be revealed, much like the actual show!<br><br>\r\n\r\nI made a game to send to my co-host to review. She found no issue with it, so I made another puzzle. Then another one. Then enough until I had enough puzzles to fill up a full hour\'s worth for the panel. The panel was a success, and some laughs were to be had, and we started the infamous missing \"E\" incident.', 'project3a.svg', 'project3c-1.svg'),
(4, 'Yumichan216 Pokemon Family', 3, 'June 21st, 2020', 'This was for one of my best friends, Yumi, for her birthday, featuring all of her favourite Pokémon!', 1, 17, 'Every year I always make Yumi a little something for her birthday, and in 2020, I decided to make her an image featuring all of her favourite Pokémon!<br><br>\r\n\r\nDoing this with so many characters was a bit of an endurance test, but as this was related to Pokémon, my energy and motivation were double what they normally were and I completed just in time for her birthday.<br><br>\r\n\r\nThe biggest challenge was getting everyone positioned well. Thankfully, I remembered an old meme based off the Alola games and so I shoved Cosmog into the bag as a little reference. Unfortunately, Yumi didn\'t see it right away but she appreciated the thought when I told her!', 'project4a.svg', 'project4c-1.svg'),
(5, 'Hoenn Music Mixer', 1, 'April 2nd, 2023', 'A project done in collaboration with Sophia Westrop, for one of our assignments in Fanshawe College.', 8, 18, 'In our second term, the students were tasked with creating a music mixer for MultiMedia Authoring, done in partners.<br><br>\r\n\r\nOne of my classmates, now best friend, teamed up and we decided the theme of this music mixer would be Pokémon, specifically Hoenn! We both loved the Hoenn games so it was obvious~<br><br>\r\n\r\nJavascript was a major pain for the both of us, especially since there were elements we were attempting that felt beyond our skill level. However, we got assistance from the professor to help clarify some things and make things work smoothly.<br><br>\r\n\r\nEventually, with a lot of hard work and dedication, we managed to get it working to how we both wanted it and submitted it. It\'s safe to say too, we both did excellent on the project~', 'project5a.svg', 'project5c-1.svg'),
(6, 'Ear Bud Campaign', 1, 'November 12, 2023', 'An integrated assignment for Semester 3 at Fanshawe College, where we had to make a campaign for a brand of ear buds that we made ourselves.', 8, 12, 'In Semester 3, the students were tasked with creating a campaign for a brand of ear buds. We had to:\r\n-Make the model from scratch in Cinema 4D\r\n-Import the model into a model viewer then export the code out to use on the website\r\n-Create an X-Ray slider on the website, which also requires X-Ray imaging from our models\r\n-Create a scrolling animation, which also meant we needed a little animation with our ear buds<br><br>\r\n\r\nBy far, the biggest challenge was that Maxon was having issues with its student licenses at the time, so everyone was limited in creating the model and animation until it got solved. Which, didn\'t happen for months. Thankfully our professor understood and gave us extensions.<br><br>\r\n\r\nThanks to his generousity and my diligence with coming in to class in my spare time, the projects in all its entirety was completed, and the campaign was a definite success for me!', 'project6a.svg', 'project6c-1.svg'),
(7, 'Industry Night Bootcamp', 1, 'September 10, 2023', 'An integrated exercise from the start of Semester 3 at Fanshawe College, where we made a conceptual page for Fanshawe College\'s Industry Night.', 8, 15, 'At the very start of Semester 3, the professors started up a bootcamp-esque exercise where students were put into Teams of 4 and were tasked with creating an informational website on Industry Night for the Interactive Media Design program.<br><br>\r\n\r\nThis was the first time I had been working with such a large group. Luckily, one of the people I could rely on, Sophia, was part of the group.<br><br>\r\n\r\nThe biggest challenge, no doubt, was adapting workflows to ensure project success. Sophia\'s and mine were different than our other partners. While always kept them in mind and accommodated them when we could, but there were times when Sophia had to look after me because the others weren\'t helping with my workflow.<br><br>\r\n\r\nThrough diligence and sheer determination, the website was finished and to great success too!', 'project7a.svg', 'project7c-1.svg'),
(8, 'Sunbiscuit Portfolio', 1, '-', 'This was a gift to one of my closest friends, Sunbiscuit, for her birthday, as her website wasn\'t responsive. I decided to surprise her by making it responsive, the best way I could~', 2, 14, 'As this site was hosted on a website maker, the code itself was beyond salvageable due to having div upon div upon div. Starting from scratch was the optimal way to add responsiveness to her website. <br><br> As this was a surprise for her birthday, a lot of assets had to be collected rather than given, and used as proof of concepts. <br><br> At the time this was being developed, there were a few features used that I was unfamiliar with. As such, I would have placeholder areas as proof of concepts once again, to be reviewed by Sunbiscuit at a later date.', 'project8a.svg', 'project8c-1.svg'),
(9, 'Pokemon Trainer Delilah Website', 1, 'January 4, 2024', 'A website made to display and showcase information about an OC Pokemon Trainer.', 7, 11, 'This website was a passion project of mine, based on my Pokémon idea that I had been developing for years upon years.<br><br>\r\n\r\nI had an established story, team, and lots of images to use so I thought \"Why not make a website about it!\"<br><br>\r\n\r\nUsing the techniques I learned from Semester 3 in college, I crafted a website that I felt was one of my best pieces of work at the time.<br><br>\r\n\r\nThe biggest issue I had at the time was the mock loading screen. We were taught to use async and defer for our javascript files, and when we use greensock, to use async. I did as instructed, but there were some issues where the animation wasn\'t kicking in. It only did about 50% of the time. I tried all I could to fix it, but to no success.<br><br>\r\n\r\nI brought the issue over to Professor De Luca who examined the problem and noticed that there\'s apparently some issue with using Greensock and Async that he wasn\'t able to figure out. He suggested using defer, and I had a 100% success rate in triggering the animation.<br><br>\r\n\r\nThis project is by far one of my favourites yet, because I feel it showcased my growth as a front-end developer.', 'project9a.svg', 'project9c-1.svg'),
(10, 'Foundation Sixty6', 1, '-', 'In Fanshawe College, our final project was working with a live client and creating a whole marketing campaign, and our client was Foundation Sixty6', 8, 6, '', 'project10a.svg', 'project10c-1.svg'),
(12, 'Orbitz Commercial', 2, 'April 9, 2023', 'A commercial for a brand revival campaign for Fanshawe College', 8, 17, 'As part of a brand revival campaign for college, we were tasked to make a video to highlight the brand we were reviving. The brand I chose to revive was called Orbitz, a sugary drink that had little sugar balls inside of the soda that floated.<br><br>\r\n\r\nI had a few different themes going on with this revival, primarily marketing the brand towards youth/young adults, incorporating space elements, and incorporating Greek mythology due to the planets.<br><br>\r\n\r\nThis video was meant to lean more towards the space element portion of the marketing, and showcase the bottles as if they were like a solar system of flavours.<br><br>\r\n\r\nThe biggest challenge with this project was the lighting. Lighting in Cinema 4D was always a struggle for me, and while feedback was given that it still needed more tweaking, I still gave it the best I could.', 'project12a.svg', 'project12c-1.svg'),
(13, 'Seven Makeup Campaign', 2, 'December 1st, 2023', 'A commercial for a makeup campaign for a Fanshawe College assignment.', 8, 17, 'In Semester 3, one of our college courses heavily focused on a campaign for a made-up makeup brand. The brand names chosen were all based off of Seinfeld jokes.<br><br>\r\n\r\nA lot of what we were tasked with was image manipulation; whether it was manipulating images to look professional on product bottles or animating logos and images for a commercial.<br><br>\r\n\r\nUsing the footage that was given to us, I crafted a commercial that told a story of a woman feeling dull with her current makeup routine. There\'s nothing wrong with the products she\'s been using, but she wants something new, fresh, and exciting, so Seven came to her answer.<br><br>\r\n\r\nAdmittedly, when this video was being constructed, it felt like it needed something more to make it exciting, to make it pop! I thought about how I could accomplish this and the answer was obvious; hire a voice over to help narrate the commercial.<br><br>\r\n\r\nAs such, I contacted a voice actress I was close with and asked her to record a few lines for the commercial, and it definitely enhanced the whole experience.', 'project13a.svg', 'project13c-1.svg'),
(14, 'Spider-Man\'s All Out Attack', 2, 'December 10, 2023', 'A recreation of an All Out Attack from Persona 5, featuring Marvel\'s Spider-Man!', 8, 17, 'For our final project in Semester 3, we were tasked with creating 3 animations from tutorials to feature in our demo reel, but this instruction wasn\'t given to us until just a few weeks prior to the due date.<br><br>\r\n\r\nI tried to think of some ideas that would be suitable, and eventually came up with the idea of re-creating an All Out Attack from Persona 5. As our professor had given us a model of Spider-Man to use from class, and as I had purchased a Spider-Gwen model for my own uses, I thought it would be a perfect idea.<br><br>\r\n\r\nWith some instruction from the Professor, I learned how to use the Mister Horse plugin for After Effects to help out with some of the more complicated parts of the animation.<br><br>\r\n\r\nOne of the most fun parts about this animation was creating the web in the backgrounds with all of the different comic covers. I enjoyed thinking of iconic Spider-Man comics to include in the web, as every one in there has a special significance.', 'project14a.svg', 'project14c-1.svg'),
(16, 'Star Wars Character API', 1, 'January 31, 2024', 'An assignment to demonstrate API knowledge by using the Star Wars API (SWAPI).', 8, 19, 'For Term 4, we were tasked with creating a website where we would apply our knowledge of how to call and pull data from APIs and make a website from the Star Wars API (SWAPI) that pulls a list of characters, and when you click on them, it displays a movie that they were in. <br><br>\r\nThis project seemed pretty straightforward, but it was a little difficult to initially track down the data. Luckily, we had examples of how to find the information we need by using console.log. By taking it one step at a time, my partner and I managed to track down and populate the page with all of the data we needed. <br><br>\r\nBut data wasn’t enough. We had a task that, if we wanted to challenge ourselves, we could find a way to randomize the movie as a character could be in multiple movies. With a bit of research, I managed to find a way using the Math.random function, where it would take one of the members of the movie array and apply it as a dataset, so that when it’s called, that movie number would be associated with the character, and it would be different on each reload. I took this information and used it as a way to change and display content, especially the background image.', 'project16a.svg', 'project16c-1.svg'),
(17, 'Delilah\'s Portfolio', 1, 'April 18, 2024', 'The portfolio that you\'re viewing right now, for the one and only, Delilah Singer!', 7, 20, 'Surprise! Who said this portfolio site couldn’t be its own featured project? After all, it was built with my own two hands, so why not give it a little spotlight?<br><br>\r\nStarting in Term 3, we were tasked to build out our own portfolios to feature projects, for potential employers and clients to look over. We weren’t given much direction aside from having an area to display projects, have a biography, a demo reel, and a contact form.<br><br>\r\nThere were quite a lot of challenges for me, with this portfolio, one of the primary ones being design. Unfortunately, the students were advised with a little bit of misguided information where we were told “Your portfolio should focus on 75% functionality and 25% design if you’re a coder.” I took that advice to heart and focused a lot on functionality, but after talking with one of my professors casually, I found out that the students should’ve been advised a bit differently and that it’s a little more than 25% design.<br><br>\r\nAnother challenge was making myself unique. The program had around 60 students and we weren’t going to be the only graduates. There’s other schools with graduates that would be seeking for work, so I had to stop and think “How can I make myself unique and stand out?”. Then, like in the cartoons, an idea came to me. A demos section! Our coding professors was showing us some cool things, like a dynamic slider, scrolling animations, api calls, etc. So I thought having some interactive demos would be a great idea to include. It would help me practice with the code and put the skills I was learning to practical use!<br><br>\r\nOne of the largest challenges with this portfolio, however, was dealing with the back-end. I understand the fundamentals of back-end, especially with what was taught, but for some reason, it decided to be fussy with me. I ran into a few issues that I couldn’t solve myself, so I booked an appointment with my professor to diagnose them and help me out. As it turns out, one of the issues we ran into, he had never seen in his 25 years of teaching and dealing with back-end. My face almost went as pale as a ghost! But together, he and I worked through the code, snippet by snippet, and eventually got my portfolio into a state that you’re seeing right now!', 'project17a.svg', 'project17c-1.svg'),
(18, 'Dynamic Team Page', 1, 'April 1, 2023', 'A small assignment done for Term 2\'s Multimedia Authoring class, where we had to dynamically display information from an array for 2 team members.', 8, 21, 'This project was an assignment for our authoring class. We were tasked to either work individually or together in a group to create a dynamic team page that would dynamically populate the page with data that was being supplied from an array for 2 team members.<br><br>\r\nAt the time, I chose to work alone. I had an excellent idea I wanted to execute, where I would make the other team member one of my favourite fictional characters, Monika from Doki Doki Literature Club. I’ve cosplayed as her in the past, and even used some photos for my first major project, so I thought this would be a perfect assignment to reuse the assets for!<br><br>\r\nThe project felt pretty straight-forward and I managed to get the functionality for data population up and running almost right away. However, that wasn’t enough for me, I wanted to something more. Something special, especially considering Doki Doki Literature Club has horror undertones. I wanted to go above and beyond the requirements and have some of the elements in the page change if you clicked a button, which would activate the “horror” mode.<br><br>\r\nThe biggest problem at the time for me was figuring how to switch between “kawaii mode” and “horror mode”. However, I realized that maybe I didn’t need to have a switch between. After all, the theme of Doki Doki Literature Club’s third act is that you’re trapped, with no where to go. No escape. So it felt thematic to keep it as it was. Now, if I was to code it, I would just use an “if” statement to toggle between the codes.<br><br>\r\nHonestly, this was the project that made me fall in love with coding, to see what I was capable of, and found the dynamic population really cool. It’s got a special place in my heart and that’s why I wanted to keep it as a portfolio piece. ', 'project18a.svg', 'project18c-1.svg'),
(19, 'Ogerpon Website', 1, 'September 24, 2023', 'An informational website built as a side project, based off the story of Ogerpon from Pokemon.', 7, 22, 'Back in September 2023, I still had the coding itch and we were told we need to have some side projects in our portfolio to make it unique. That it would be a boon to have something different than the in class work and that potential employers may be tired of seeing the same old assignments.<br><br>\r\nI had just recently played the Teal Mask DLC in Pokemon Scarlet and Violet, and the main Pokemon in it, Ogerpon, touched my heart. I wanted to build a website dedicated to her, so I created a mock up informational website, one that you might find in the Pokemon universe, that exposes the truth behind Ogerpon. The poor thing went down in history as a villain, so it’s only right that something exists to help correct the mistakes of the past and clear her name!<br><br>\r\nThe biggest challenge for this website was design. I was trying to create a website that looked like something Nintendo would publish. I went to various Nintendo websites like Splatoon and Smash Bros and realized that there were really no consistent elements in the websites, aside from them being single scroller pages with sections of information. As such, I decided to stick to what I was comfortable with and focused on functionality for the website.<br><br>\r\nAnd frankly, the functionality was fun! I took the stuff I learned over the summer, and even practiced some tips one of my professors gave me, and built it out to how I want it!', 'project19a.svg', 'project19c-1.svg'),
(20, 'Area Zero Spawn Filter', 1, 'July 3, 2023', 'A website made to display spawns in Area Zero, sorted by Pokemon type and location!', 7, 10, 'During my summer break between terms 2 and 3, I wanted to undertake a project to give back to the Pokemon community, and that involved a lot of littler pieces. One them was a site that displays various species of Pokemon in Area Zero. This was spurred when I was watching DooleyNoted (Twitch streamer) shiny hunt for a Pokemon, and then go to Area Zero for the duration of his sandwich. <br><br>\r\nNow, for context, in Pokemon Scarlet and Violet, you can create sandwiches that give various benefits, such as increasing the spawn rates of Pokemon, shiny rates, items you receive from raids, etc. This is all determined by Pokemon types, however, so the benefit only applies to that type (ie, Fire, Ghost, etc.)<br><br>\r\nI thought it would be nifty to have a site that would show which Pokemon would spawn when a sandwich is active and which part of Area Zero they would be in too. So the next day, I went straight to work.<br><br>\r\nThe biggest challenge for me, at the time, was figuring out how I would code it, especially with my limited skillset. While repetitive, I thought the best way to tackle the issue was having the images of the Pokemon live in containers based on their location, and give them classes based on their type. Their initial display would be hidden, but when you click on a location, it would toggle their display on and be sorted based on type. While there may be some repetition with the code, I’m still proud of what I achieved and managed to get it functioning exactly how I wanted it to!\r\n', 'project20a.svg', 'project20c-1.svg'),
(21, 'Pokemon League Data', 1, 'August 24, 2023', 'A website to display a Gym Leader/Elite 4/Champion/Rival\'s Pokemon\'s stats, moves, and more!', 7, 10, 'During the summer, I was thinking of various project ideas for me to take on, and one of them was a Pokemon fansite. Being an avid fan of watching Pokemon videos on Youtube and Twitch, I noticed people were running calculations to find the stats of gym leaders and their Pokemon during their challenge runs. So I stopped and thought “What if instead of calculating it manually, they just knew the stats so their calculations would be easier instead of reverse engineering based on damage?” Thus, I went to work.<br><br>\r\nInitially, the biggest obstacle was making sure that the project was feasible. Whenever there’s a problem, there’s usually an underlying reason why, and sure enough, there was a minor reason why. For some games, there was a lack of data available. However, I wasn’t going to let a lack of data stop me! After all, something was better than nothing.<br><br>\r\nAs I was building, I decided that any game that I didn’t have sufficient data for, I would collect as much data as I could and put a disclaimer that it was unavailable. As most of the data is open and available to the public, I thought that the best thing I could do was hope that data would become available eventually. Maybe someone would see the issue and get inspired to go collect the data themselves.<br><br>\r\nAside from that, another challenge I found was clearing and populating the data how I wanted it. I found that when displaying a new list of trainers wouldn’t clear the old list if the old list came first in the code. Due to a lack of support at the time, I sought an AI for help and it managed to help me get on track. Now, the code that it gave me I can do in a heartbeat. I’m not a big fan of using AI, but that’s what our class was taught if we needed help.<br><br>\r\nAll in all, while the code is very lengthy and inefficient, it was the best I could do at the time with the skills I had, and even though it’s not perfect, it’s something I’m proud of.', 'project21a.svg', 'project21c-1.svg'),
(22, 'Fire Emblem Character Selector', 1, 'November 22, 2022', 'A character selector based off of Fire Emblem Heroes, that shows information of each character via their own lightbox!', 8, 23, 'This was a project in my first term where we were tasked with making a character selector for any series we wanted. I wanted to branch away from Pokemon for a moment and focus on another series I loved; Fire Emblem!<br><br>\r\nOur task was to display six characters, containing their own images, names, and biography. At the time, this was all hard coded. Each character lived in their own lightbox, and when you click on a character, it would open the corresponding lightbox.<br><br>\r\nAt the time, position: absolute and position:relative were some of the banes of my existence. It was rather rough to place the elements how I wanted them, but in the end, with enough patience and perseverance, I managed to get the result I achieved, using the methods taught in class mixed with some trial and error too.<br><br>\r\nSince this was a Term 1 assignment, everything is hard coded. If I was to go back and revisit this website, I would take out all of the hard coded information and use an array to dynamically generate and display all of the information.<br><br>\r\nIn fact, I have another project where I did just that. <a href=\"project-details.php?id=9\">My Pokemon Trainer website</a> accomplishes something similar, minus the lightboxes.', 'project22a.svg', 'project22c-1.svg'),
(23, 'Just Lightning', 3, 'December 5, 2022', 'An image used for the first major project in college.', 8, 17, '', 'project23a.svg', 'project23c-1.svg'),
(24, 'Mudkip Pixel Icon', 3, 'April 7, 2023', 'A pixel icon of Mudkip that was used for the <a href=\"project-details.php?id=5\">Music Mixer project</a>.', 8, 18, '', 'project24a.svg', 'project24c-1.svg'),
(25, '\"Project:\" Earbuds Image', 3, 'November 12, 2023', 'A shot of the ear buds that were made for the <a href=\"project-details.php?id=6\">Ear Bud Campaign project</a>.', 8, 12, '', 'project25a.svg', 'project25c-1.svg'),
(26, 'Delilah Pixel Icon', 3, 'September 3, 2023', 'A pixel icon, in Pokemon Emerald style, of me!', 7, 17, '', 'project26a.svg', 'project26c-1.svg'),
(27, 'X-Ray Ear Bud', 3, 'November 12, 2023', 'An internal look inside an ear bud that was made as part of <a href=\"project-details.php?id=6\">Ear Bud Campaign project</a>.', 8, 12, '', 'project27a.svg', 'project27c-1.svg'),
(28, 'The Haunted Halls of Garreg Mach', 4, 'October 30, 2020', 'A fic written for EmblemCon\'s Halloween event!', 7, 24, '', 'project28a.svg', 'project28c-1.svg'),
(29, 'Hazbin Hotel: Sell Your Soul Generator', 1, '', '', 0, 0, '', 'project29a.svg', 'project29c-1.svg'),
(30, 'Loss, and the Dire Mistakes of One Determined Princess', 4, 'October 11, 2019', 'A fic I wrote based on a character in Fire Emblem Heroes.', 7, 25, '', 'project30a.svg', 'project30c-1.svg');

-- --------------------------------------------------------

--
-- Table structure for table projects_software
--

DROP TABLE IF EXISTS projects_software;
CREATE TABLE IF NOT EXISTS projects_software (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  project_id int UNSIGNED NOT NULL,
  software_id int UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci,
FOREIGN KEY (project_id) REFERENCES projects(id) 
    ON DELETE CASCADE;

--
-- Dumping data for table projects_software
--

INSERT INTO projects_software (id, project_id, software_id) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 13),
(4, 4, 5),
(5, 5, 1),
(6, 5, 12),
(7, 5, 2),
(8, 6, 1),
(9, 6, 6),
(10, 6, 9),
(11, 7, 1),
(12, 8, 1),
(13, 9, 1),
(14, 9, 6),
(15, 10, 1),
(16, 11, 1),
(17, 12, 2),
(18, 12, 6),
(19, 12, 9),
(20, 13, 6),
(21, 13, 7),
(22, 13, 12),
(23, 14, 2),
(24, 14, 6),
(25, 14, 9),
(26, 14, 11),
(27, 14, 12),
(28, 16, 1),
(29, 17, 1),
(30, 17, 2),
(31, 17, 6),
(32, 17, 8),
(33, 17, 10),
(34, 17, 12),
(35, 17, 13),
(36, 18, 1),
(37, 18, 12),
(38, 18, 2),
(39, 19, 1),
(40, 19, 4),
(41, 20, 1),
(42, 21, 1),
(43, 22, 1),
(44, 22, 2),
(45, 23, 2),
(46, 24, 12),
(47, 25, 9),
(48, 25, 6),
(49, 26, 12),
(50, 27, 9),
(51, 27, 2),
(52, 28, 10),
(53, 30, 10);

-- --------------------------------------------------------

--
-- Table structure for table related
--

DROP TABLE IF EXISTS related;
CREATE TABLE IF NOT EXISTS related (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  main_project_id int UNSIGNED NOT NULL,
  related_project_id int UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci,
FOREIGN KEY (project_id) REFERENCES projects(id) 
    ON DELETE CASCADE;

--
-- Dumping data for table related
--

INSERT INTO related (id, main_project_id, related_project_id) VALUES
(1, 1, 5),
(2, 1, 9),
(3, 1, 2),
(4, 2, 8),
(5, 2, 1),
(6, 2, 14),
(7, 3, 0),
(8, 3, 0),
(9, 3, 0),
(10, 4, 0),
(11, 4, 0),
(12, 4, 0),
(13, 5, 1),
(14, 5, 9),
(15, 5, 7),
(16, 6, 13),
(17, 6, 12),
(18, 6, 7),
(19, 7, 6),
(20, 7, 12),
(21, 7, 13),
(22, 8, 2),
(23, 8, 5),
(24, 8, 9),
(25, 9, 1),
(26, 9, 5),
(27, 9, 6),
(28, 10, 7),
(29, 10, 1),
(30, 10, 6),
(34, 12, 6),
(35, 12, 7),
(36, 12, 13),
(37, 13, 12),
(38, 13, 7),
(39, 13, 6),
(40, 14, 2),
(41, 14, 5),
(42, 14, 9),
(43, 16, 5),
(44, 16, 14),
(45, 16, 7),
(46, 17, 7),
(47, 17, 9),
(48, 17, 10),
(49, 18, 9),
(50, 18, 5),
(51, 18, 16),
(52, 19, 5),
(53, 19, 9),
(54, 19, 1),
(55, 20, 21),
(56, 20, 1),
(57, 20, 9),
(58, 21, 20),
(59, 21, 1),
(60, 21, 5),
(61, 22, 16),
(62, 22, 14),
(63, 22, 5),
(64, 23, 18),
(65, 18, 17),
(66, 18, 4),
(67, 24, 5),
(68, 24, 9),
(69, 24, 4),
(70, 25, 6),
(71, 25, 16),
(72, 25, 12),
(73, 26, 17),
(74, 26, 24),
(75, 26, 9),
(76, 27, 25),
(77, 27, 6),
(78, 27, 12),
(79, 3, 22),
(80, 3, 2),
(81, 3, 17),
(82, 28, 22),
(83, 28, 3),
(84, 28, 2),
(85, 30, 28),
(86, 30, 22),
(87, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table software
--

DROP TABLE IF EXISTS software;
CREATE TABLE IF NOT EXISTS software (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  software_name varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table software
--

INSERT INTO software (id, software_name) VALUES
(1, 'VS Code'),
(2, 'Adobe Photoshop'),
(3, 'Adobe Premiere Elements'),
(4, 'Adobe Premiere Pro'),
(5, 'Paint Tool SAI'),
(6, 'Adobe After Effects'),
(7, 'Adobe inDesign'),
(8, 'phpMyAdmin'),
(9, 'Maxon Cinema 4D'),
(10, 'Microsoft Word'),
(11, 'OBS Studio'),
(12, 'Adobe Illustrator'),
(13, 'Adobe XD');

-- --------------------------------------------------------

--
-- Table structure for table user
--

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS `user` (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  username varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  password varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table user
--

INSERT INTO user (id, username, password) VALUES
(1, 'princess', 'beautifulprincessofpeerlessbeauty'),
(2, 'rhaaf', 'monkey99');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
