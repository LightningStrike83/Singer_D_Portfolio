-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 10, 2023 at 07:04 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET FOREIGN_KEY_CHECKS=0;
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
  category_id int NOT NULL AUTO_INCREMENT,
  category varchar(100) NOT NULL,
  PRIMARY KEY (category_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table category
--

INSERT INTO category (category_id, category) VALUES
(1, 'Front-End Coded Websites'),
(2, 'Video Edits'),
(3, 'Images'),
(4, 'Misc. Projects');

-- --------------------------------------------------------

--
-- Table structure for table clients
--

DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients (
  client_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(500) NOT NULL,
  logo_image_id int UNSIGNED NOT NULL,
  link_id int UNSIGNED NOT NULL,
  client_email varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (client_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table clients
--

INSERT INTO clients (client_id, name, logo_image_id, link_id, client_email) VALUES
(1, 'Yumichan216', 45, 4, 'yumihamano@notarealemail.com'),
(2, 'sunbiscuit', 33, 3, 'sunbiscuit@notarealemail.com'),
(3, 'Westrop, Sophia', 10, 7, 's_westrop@fanshaweonline.ca'),
(4, 'DucessaEva', 42, 5, 'ducessaeva@notarealemail.com'),
(5, 'Clapper, Mack', 69, 96, 'mackclapper@notarealemail.com'),
(6, 'Chi', 54, 9, 'chisie@notarealemail.com'),
(7, 'Singer, D', 133, 133, 'd_singer042@gmail.com');

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
  subject_line varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  comments varchar(1500) NOT NULL,
  date_received timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table contacts
--

INSERT INTO contacts (id, preferred_name, email, phone, website_company, subject_line, comments, date_received) VALUES
(1, 'D Singer', 'd_singer@fanshaweonline.ca', '', 'Fanshawe', 'Test Subject', 'Just a dummy entry for this field', '2023-11-17 19:56:05'),
(2, 'Sophia', 'swestrop@fanshaweonline.ca', '', 'Fanshawe', 'Need Javascript Help', 'Please help me! This is so hard!', '2023-11-17 20:03:48'),
(3, 'Anonymous Friend A', 'yhamano@fanshaweonline.ca', '', '', 'Project Meeting', 'Are you free this upcoming Thursday around noon? We don\'t have class until later in the afternoon. We can eat lunch and start brainstorming ideas.', '2023-11-17 20:39:01'),
(4, 'Dan Singer', 'lightningstrike83@gmail.com', '7058785450', 'None', 'Test', 'This is a test', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table images
--

DROP TABLE IF EXISTS images;
CREATE TABLE IF NOT EXISTS images (
  image_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  image_path varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  project_id int UNSIGNED NOT NULL,
  PRIMARY KEY (image_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table images
--

INSERT INTO images (image_id, image_path, project_id) VALUES
(1, 'furret_walk.gif', 5),
(4, 'project-1-full.jpg', 1),
(5, 'project-2-thumbnail-small.jpg', 2),
(2, 'project-1-thumbnail-small.jpg', 1),
(3, 'project-1-thumbnail-big.jpg', 1),
(6, '../images/project-2-thumbnail-big.jpg', 2),
(7, '../images/project-2-full.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table images_pages
--

DROP TABLE IF EXISTS images_pages;
CREATE TABLE IF NOT EXISTS images_pages (
  image_page_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  image_id int UNSIGNED NOT NULL,
  page_id int UNSIGNED NOT NULL,
  PRIMARY KEY (image_page_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table images_pages
--

INSERT INTO images_pages (image_page_id, image_id, page_id) VALUES
(1, 3, 2),
(2, 5, 1),
(3, 17, 1),
(4, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table links
--

DROP TABLE IF EXISTS links;
CREATE TABLE IF NOT EXISTS links (
  link_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  link varchar(2100) NOT NULL,
  PRIMARY KEY (link_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table links
--

INSERT INTO links (link_id, link) VALUES
(1, 'https://www.serebii.net/index2.shtml'),
(2, 'https://www.pokebeach.com/'),
(3, 'https://sunbiscuit.wixsite.com/portfolio'),
(4, 'https://yumichanhamano.carrd.co/#'),
(5, 'https://ducessaeva.carrd.co/#');

-- --------------------------------------------------------

--
-- Table structure for table pages
--

DROP TABLE IF EXISTS pages;
CREATE TABLE IF NOT EXISTS pages (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  page_name varchar(500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table pages
--

INSERT INTO pages (id, page_name) VALUES
(1, 'Home'),
(2, 'Portfolio'),
(3, 'Full Projects'),
(4, 'Project Details'),
(5, 'About'),
(6, 'Resume'),
(7, 'Demos'),
(8, 'Contact');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

DROP TABLE IF EXISTS projects;
CREATE TABLE IF NOT EXISTS projects (
  project_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  title varchar(250) NOT NULL,
  category-id int UNSIGNED NOT NULL,
  date_finished varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  description varchar(1500) NOT NULL,
  client_id int UNSIGNED NOT NULL,
  link_id int UNSIGNED NOT NULL,
  case_study varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (project_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table projects
--

INSERT INTO projects (project_id, title, category-id, date_finished, description, client_id, link_id, case_study) VALUES
(1, 'Create Your Own Pokedex', 1, 'Oct. 17, 2023', 'I wanted to make an activity for the Pokémon community where they could make their own Pokedex, like in games.', 7, 7, 'This was intended as a project to do over the summer, that evolved into something grander. There were times when I felt I didn\'t know how to code some things in Javascript and needed external resources to accomplish this.'),
(2, 'Ashes- Fire Emblem Three Houses AMV', 2, 'Aug. 31, 2019', 'This was a birthday gift for Ducessa as she liked AMVs (anime music videos), and she really liked Fire Emblem: Three Houses at the time.', 4, 5, 'There were some beats that I didn\'t find appropriate footage for, but I remembered a saying \"Less is more\". So I used blank space artistically.'),
(3, 'Fire Emblem Wheel of Fortune', 4, 'May 7, 2023', 'This was made for EmblemCon for their annual convention', 10, 14, 'Creating a spinner was rough so I had to outsource it to another website. Backgrounds suck too'),
(4, 'Yumichan216 Pokemon Family', 3, 'June 21st, 2020', 'This was for Yumi for her birthday, featuring all of her favourite Pokemon.', 1, 4, 'Doing this with so many characters was a bit of an endurance test, but as this was related to Pokemon, my energy and motivation were double what they normally were and I completed it!'),
(5, 'Hoenn Music Mixer', 1, 'April 2nd, 2023', 'This was an assignment for Fanshawe, done alongside the hard-working Sophia for Multimedia Authoring 3', 3, 10, 'Javascript was a major pain for the both of us, especially since there were elements we were attempting that felt beyond our skill level. However, we got assistance from the professor to help clarify some things and make things work smoothly.');

-- --------------------------------------------------------

--
-- Table structure for table projects_software
--

DROP TABLE IF EXISTS projects_software;
CREATE TABLE IF NOT EXISTS projects_software (
  p-s_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  project_id int UNSIGNED NOT NULL,
  software_id int UNSIGNED NOT NULL,
  PRIMARY KEY (p-s_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table projects_software
--

INSERT INTO projects_software (p-s_id, project_id, software_id) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 13),
(4, 4, 5),
(5, 5, 1),
(6, 5, 12),
(7, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table related
--

DROP TABLE IF EXISTS related;
CREATE TABLE IF NOT EXISTS related (
  related_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  main_project_id int UNSIGNED NOT NULL,
  related-project_id int UNSIGNED NOT NULL,
  PRIMARY KEY (related_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table related
--

INSERT INTO related (related_id, main_project_id, related-project_id) VALUES
(1, 1, 42),
(2, 1, 69),
(3, 1, 420),
(4, 2, 83),
(5, 2, 133),
(6, 2, 666);

-- --------------------------------------------------------

--
-- Table structure for table software
--

DROP TABLE IF EXISTS software;
CREATE TABLE IF NOT EXISTS software (
  software_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  software_name varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (software_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table software
--

INSERT INTO software (software_id, software_name) VALUES
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
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
