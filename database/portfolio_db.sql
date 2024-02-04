SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS category;
CREATE TABLE IF NOT EXISTS category (
  id int NOT NULL AUTO_INCREMENT,
  category varchar(100) NOT NULL,
  folder varchar(500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO category (id, category, folder) VALUES
(1, 'Front-End Coded Websites', 'front'),
(2, 'Video Edits', 'video'),
(3, 'Images', 'images'),
(4, 'Misc. Projects', 'misc');

DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  client_name varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  logo_image_id int UNSIGNED NOT NULL,
  link_id int UNSIGNED NOT NULL,
  client_email varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO clients (id, client_name, logo_image_id, link_id, client_email) VALUES
(1, 'Yumichan216', 45, 4, 'yumihamano@notarealemail.com'),
(2, 'sunbiscuit', 33, 3, 'sunbiscuit@notarealemail.com'),
(3, 'Westrop, Sophia', 10, 7, 's_westrop@fanshaweonline.ca'),
(4, 'DucessaEva', 42, 5, 'ducessaeva@notarealemail.com'),
(5, 'Clapper, Mack', 69, 96, 'mackclapper@notarealemail.com'),
(6, 'Chi', 54, 9, 'chisie@notarealemail.com'),
(7, 'Self', 133, 133, 'd_singer042@gmail.com'),
(8, 'Fanshawe College (Assignment)', 0, 0, ''),
(9, 'Private Client', 0, 0, ''),
(10, 'RayneStormGames', 0, 0, 'chasearayne@hotmail.com');

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

INSERT INTO contacts (id, preferred_name, email, phone, website_company, subject_line, comments, date_received) VALUES
(1, 'D Singer', 'd_singer@fanshaweonline.ca', '', 'Fanshawe', 'Test Subject', 'Just a dummy entry for this field', '2023-11-17 19:56:05'),
(2, 'Sophia', 'swestrop@fanshaweonline.ca', '', 'Fanshawe', 'Need Javascript Help', 'Please help me! This is so hard!', '2023-11-17 20:03:48'),
(3, 'Anonymous Friend A', 'yhamano@fanshaweonline.ca', '', '', 'Project Meeting', 'Are you free this upcoming Thursday around noon? We don\'t have class until later in the afternoon. We can eat lunch and start brainstorming ideas.', '2023-11-17 20:39:01'),
(4, 'Dan Singer', 'lightningstrike83@gmail.com', '7058785450', 'None', 'Test', 'This is a test', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS images_pages;
CREATE TABLE IF NOT EXISTS images_pages (
  image_page_id int UNSIGNED NOT NULL AUTO_INCREMENT,
  image_id int UNSIGNED NOT NULL,
  page_id int UNSIGNED NOT NULL,
  PRIMARY KEY (image_page_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO images_pages (image_page_id, image_id, page_id) VALUES
(1, 3, 2),
(2, 5, 1),
(3, 17, 1),
(4, 6, 2);

DROP TABLE IF EXISTS links;
CREATE TABLE IF NOT EXISTS links (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  link varchar(2100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO links (id, link) VALUES
(1, 'https://www.serebii.net/index2.shtml'),
(6, 'https://github.com/LightningStrike83/AnonyGhosts_FoundationSixty6'),
(3, 'https://sunbiscuit.wixsite.com/portfolio'),
(4, 'https://yumichanhamano.carrd.co/#'),
(5, 'https://ducessaeva.carrd.co/#'),
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
(18, 'https://github.com/sophwest/Westrop_S_Singer_D_MusicMixer');

DROP TABLE IF EXISTS media;
CREATE TABLE IF NOT EXISTS media (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  image_path varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  project_id int UNSIGNED NOT NULL,
  image_description varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO media (id, image_path, project_id, image_description) VALUES
(20, 'project1b-3.svg', 1, ''),
(19, 'project1b-2.svg', 1, ''),
(18, 'project1b-1.svg', 1, ''),
(17, 'project1a.svg', 1, ''),
(21, 'project1c-1.svg', 1, ''),
(22, 'project1c-2.svg', 1, ''),
(23, 'project1c-3.svg', 1, ''),
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
(57, 'project9b-2.svg', 9, ''),
(56, 'project9b-1.svg', 9, ''),
(55, 'project9a.svg', 9, ''),
(58, 'project9b-3.svg', 9, ''),
(59, 'project9c-1.svg', 9, ''),
(60, 'project9-2.svg', 9, ''),
(61, 'project9c-3.svg', 9, ''),
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
(77, 'project13b-1.svg', 0, ''),
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
(89, 'project14c-3.svg', 14, '');

DROP TABLE IF EXISTS pages;
CREATE TABLE IF NOT EXISTS pages (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  page_name varchar(500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO pages (id, page_name) VALUES
(1, 'Home'),
(2, 'Portfolio'),
(3, 'Full Projects'),
(4, 'Project Details'),
(5, 'About'),
(6, 'Resume'),
(7, 'Demos'),
(8, 'Contact');

DROP TABLE IF EXISTS projects;
CREATE TABLE IF NOT EXISTS projects (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  title varchar(250) NOT NULL,
  category_id int UNSIGNED NOT NULL,
  date_finished varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  description varchar(1500) NOT NULL,
  client_id int UNSIGNED NOT NULL,
  link_id int UNSIGNED NOT NULL,
  case_study varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  portfolio_image varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO projects (id, title, category_id, date_finished, description, client_id, link_id, case_study, portfolio_image) VALUES
(1, 'Create Your Own Pokedex', 1, 'Oct. 17, 2023', 'This is a functioning Create Your Own Pokedex website, where you can drag and drop Pokemon models into the open dex area and create your very own Pokedex!', 7, 10, 'During the summer in my college years, I wanted to code and learn more things. As I was thinking of projects, I realized the Pokémon community doesn\'t have a \"Create Your Own Pokedex\" which I was surprised at. So, like Thanos from Avengers, I said \"Fine, I\'ll do it myself.\"<br><br>\r\n\r\nAt first, I thought it would be simple, using the tools I learned from class. However, I quickly found out that I was taking on a little more than I could chew at the time. I had the right ideas, just the wrong executions. I needed to get a bit of external help in order to accomplish the task at hand.<br><br>\r\n\r\nOne thing that struck my mind as I was working was \"There are a lot of Pokemon; scrolling is going to take forever and be bad UX/UI\". So I stopped and thought, and created a menu and some javascript that, when a region is interacted with, it will hide all the Pokemon from all the other regions.<br><br>\r\n\r\nAnd then I realized too, if someone wants all of the regions on at once, I would need to include an \"All\" button for better functionality.<br><br>\r\n\r\nThe biggest challenge to figure out was how to return the Pokémon models to their proper home if they were no longer desired. I managed to write code that could bring it back to the right area of the page, but not its original box.<br><br>\r\n\r\nThen it struck me; I could give its original home and the asset a timestamp. Then, when the model is dropped back into the model area, the system will look for a matching timestamp and append the image to its original area automatically.<br><br>\r\n\r\nEventually, with hard work and persistence, the Create Your Own Pokedex website finally finished with the best functionality I could give it!', 'project1a.svg'),
(2, 'Ashes- Fire Emblem Three Houses AMV', 2, 'Aug. 31, 2019', 'This was a birthday gift for one of my best friends, DucessaEva, based off the game Fire Emblem: Three Houses.', 7, 17, 'This was a gift for one of my best friends for her birthday. One of her favourite games at the time was Fire Emblem: Three Houses for the Switch. She\'s an AMV maker and loves watching them so I wanted to do something that I thought she\'d really like.<br><br>\r\n\r\nThe project itself doesn\'t contain much in the way of edits, but the way it\'s compiled, I feel, couldn\'t have turned out better at the time.<br><br>\r\n\r\nA large portion of the game focuses on the war between Adrestia and Faerghus, so I felt it fitting to make that the narrative of the video; by focusing on the leaders of the respective lands.<br><br>\r\n\r\nThere were some beats that I didn\'t find appropriate footage for, but I remembered a saying, \"Less is more\". Thus, I used blank space artistically to create a little more tension and emotion.<br><br>\r\n\r\nUpon delivery to her, she really enjoyed it and even gave her feels, which was my intent, so it was a successful video project for sure!', 'project2a.svg'),
(3, 'Fire Emblem Wheel of Fortune', 4, 'May 7, 2023', 'This was made for EmblemCon for their annual convention for the Wheel of Fortune panel, hosted by yours truly and the lovely DucessaEva~', 7, 17, 'Every year there\'s a convention called EmblemCon, where many Fire Emblem enthusiasts gather to discuss the game, share their art, and just all around have a good time.<br><br>\r\n\r\nI was fortunate enough to be picked as a panelist for the convention, along with one of my best friends, and one of the ideas we had was to host a Wheel of Fortune panel.<br><br>\r\n\r\nRemembering what I had learned in college, I decided to try making the puzzles in Adobe XD. After a little bit of tinkering, I found great success in making a functioning puzzle that I could send to my co-host~<br><br>\r\n\r\nThus, I did it again, and again, until I had enough puzzles to fill up a full hour\'s worth~', '0'),
(4, 'Yumichan216 Pokemon Family', 3, 'June 21st, 2020', 'This was for one of my best friends, Yumi, for her birthday, featuring all of her favourite Pokémon!', 1, 17, 'Every year I always make Yumi a little something for her birthday, and in 2020, I decided to make her an image featuring all of her favourite Pokémon!<br><br>\r\n\r\nDoing this with so many characters was a bit of an endurance test, but as this was related to Pokémon, my energy and motivation were double what they normally were and I completed just in time for her birthday.<br><br>\r\n\r\nThe biggest challenge was getting everyone positioned well. Thankfully, I remembered an old meme based off the Alola games and so I shoved Cosmog into the bag as a little reference. Unfortunately, Yumi didn\'t see it right away but she appreciated the thought when I told her!', '0'),
(5, 'Hoenn Music Mixer', 1, 'April 2nd, 2023', 'A project done in collaboration with Sophia Westrop, for one of our assignments in Fanshawe College.', 8, 18, 'In our second term, the students were tasked with creating a music mixer for MultiMedia Authoring, done in partners.<br><br>\r\n\r\nOne of my classmates, now best friend, teamed up and we decided the theme of this music mixer would be Pokémon, specifically Hoenn! We both loved the Hoenn games so it was obvious~<br><br>\r\n\r\nJavascript was a major pain for the both of us, especially since there were elements we were attempting that felt beyond our skill level. However, we got assistance from the professor to help clarify some things and make things work smoothly.<br><br>\r\n\r\nEventually, with a lot of hard work and dedication, we managed to get it working to how we both wanted it and submitted it. It\'s safe to say too, we both did excellent on the project~', 'project5a.svg'),
(6, 'Ear Bud Campaign', 1, 'November 12, 2023', 'An integrated assignment for Semester 3 at Fanshawe College, where we had to make a campaign for a brand of ear buds that we made ourselves.', 8, 12, 'In Semester 3, the students were tasked with creating a campaign for a brand of ear buds. We had to:\r\n-Make the model from scratch in Cinema 4D\r\n-Import the model into a model viewer then export the code out to use on the website\r\n-Create an X-Ray slider on the website, which also requires X-Ray imaging from our models\r\n-Create a scrolling animation, which also meant we needed a little animation with our ear buds<br><br>\r\n\r\nBy far, the biggest challenge was that Maxon was having issues with its student licenses at the time, so everyone was limited in creating the model and animation until it got solved. Which, didn\'t happen for months. Thankfully our professor understood and gave us extensions.<br><br>\r\n\r\nThanks to his generousity and my diligence with coming in to class in my spare time, the projects in all its entirety was completed, and the campaign was a definite success for me!', 'project6a.svg'),
(7, 'Industry Night Bootcamp', 1, 'September 10, 2023', 'An integrated exercise from the start of Semester 3 at Fanshawe College, where we made a conceptual page for Fanshawe College\'s Industry Night.', 8, 15, 'At the very start of Semester 3, the professors started up a bootcamp-esque exercise where students were put into Teams of 4 and were tasked with creating an informational website on Industry Night for the Interactive Media Design program.<br><br>\r\n\r\nThis was the first time I had been working with such a large group. Luckily, one of the people I could rely on, Sophia, was part of the group.<br><br>\r\n\r\nThe biggest challenge, no doubt, was adapting workflows to ensure project success. Sophia\'s and mine were different than our other partners. While always kept them in mind and accommodated them when we could, but there were times when Sophia had to look after me because the others weren\'t helping with my workflow.<br><br>\r\n\r\nThrough diligence and sheer determination, the website was finished and to great success too!', 'project7a.svg'),
(8, 'Sunbiscuit Portfolio', 1, '-', 'This was a gift to one of my closest friends, Sunbiscuit, for her birthday, as her website wasn\'t responsive. I decided to surprise her by making it responsive, the best way I could~', 2, 14, 'As this site was hosted on a website maker, the code itself was beyond salvageable due to having div upon div upon div. Starting from scratch was the optimal way to add responsiveness to her website. <br><br> As this was a surprise for her birthday, a lot of assets had to be collected rather than given, and used as proof of concepts. <br><br> At the time this was being developed, there were a few features used that I was unfamiliar with. As such, I would have placeholder areas as proof of concepts once again, to be reviewed by Sunbiscuit at a later date.', 'project8a.svg'),
(9, 'Pokemon Trainer Delilah Website', 1, 'January 4, 2024', 'A website made to display and showcase information about an OC Pokemon Trainer.', 7, 11, 'This website was a passion project of mine, based on my Pokémon idea that I had been developing for years upon years.<br><br>\r\n\r\nI had an established story, team, and lots of images to use so I thought \"Why not make a website about it!\"<br><br>\r\n\r\nUsing the techniques I learned from Semester 3 in college, I crafted a website that I felt was one of my best pieces of work at the time.<br><br>\r\n\r\nThe biggest issue I had at the time was the mock loading screen. We were taught to use async and defer for our javascript files, and when we use greensock, to use async. I did as instructed, but there were some issues where the animation wasn\'t kicking in. It only did about 50% of the time. I tried all I could to fix it, but to no success.<br><br>\r\n\r\nI brought the issue over to Professor De Luca who examined the problem and noticed that there\'s apparently some issue with using Greensock and Async that he wasn\'t able to figure out. He suggested using defer, and I had a 100% success rate in triggering the animation.<br><br>\r\n\r\nThis project is by far one of my favourites yet, because I feel it showcased my growth as a front-end developer.', 'project9a.svg'),
(10, 'Foundation Sixty6', 1, '-', 'In Fanshawe College, our final project was working with a live client and creating a whole marketing campaign, and our client was Foundation Sixty6', 8, 6, '', ''),
(12, 'Orbitz Commercial', 2, 'April 9, 2023', 'A commercial for a brand revival campaign for Fanshawe College', 8, 17, 'As part of a brand revival campaign for college, we were tasked to make a video to highlight the brand we were reviving. The brand I chose to revive was called Orbitz, a sugary drink that had little sugar balls inside of the soda that floated.<br><br>\r\n\r\nI had a few different themes going on with this revival, primarily marketing the brand towards youth/young adults, incorporating space elements, and incorporating Greek mythology due to the planets.<br><br>\r\n\r\nThis video was meant to lean more towards the space element portion of the marketing, and showcase the bottles as if they were like a solar system of flavours.<br><br>\r\n\r\nThe biggest challenge with this project was the lighting. Lighting in Cinema 4D was always a struggle for me, and while feedback was given that it still needed more tweaking, I still gave it the best I could.', 'project12a.svg'),
(13, 'Seven Makeup Campaign', 2, 'December 1st, 2023', 'A commercial for a makeup campaign for a Fanshawe College assignment.', 8, 17, 'In Semester 3, one of our college courses heavily focused on a campaign for a made-up makeup brand. The brand names chosen were all based off of Seinfeld jokes.<br><br>\r\n\r\nA lot of what we were tasked with was image manipulation; whether it was manipulating images to look professional on product bottles or animating logos and images for a commercial.<br><br>\r\n\r\nUsing the footage that was given to us, I crafted a commercial that told a story of a woman feeling dull with her current makeup routine. There\'s nothing wrong with the products she\'s been using, but she wants something new, fresh, and exciting, so Seven came to her answer.<br><br>\r\n\r\nAdmittedly, when this video was being constructed, it felt like it needed something more to make it exciting, to make it pop! I thought about how I could accomplish this and the answer was obvious; hire a voice over to help narrate the commercial.<br><br>\r\n\r\nAs such, I contacted a voice actress I was close with and asked her to record a few lines for the commercial, and it definitely enhanced the whole experience.', 'project13a.svg'),
(14, 'Spider-Man\'s All Out Attack', 2, 'December 10, 2023', 'A recreation of an All Out Attack from Persona 5, featuring Marvel\'s Spider-Man!', 8, 17, 'For our final project in Semester 3, we were tasked with creating 3 animations from tutorials to feature in our demo reel, but this instruction wasn\'t given to us until just a few weeks prior to the due date.<br><br>\r\n\r\nI tried to think of some ideas that would be suitable, and eventually came up with the idea of re-creating an All Out Attack from Persona 5. As our professor had given us a model of Spider-Man to use from class, and as I had purchased a Spider-Gwen model for my own uses, I thought it would be a perfect idea.<br><br>\r\n\r\nWith some instruction from the Professor, I learned how to use the Mister Horse plugin for After Effects to help out with some of the more complicated parts of the animation.<br><br>\r\n\r\nOne of the most fun parts about this animation was creating the web in the backgrounds with all of the different comic covers. I enjoyed thinking of iconic Spider-Man comics to include in the web, as every one in there has a special significance.', 'project14a.svg'),
(15, 'Star Wars', 0, '', 'sdfsdzfdgfdg', 3, 7, 'zdfbxfdbfdxhxdf', 'project15a.svg'),
(16, 'Star Wars', 1, '', 'dsfdfasfafd', 6, 4, 'fggsehsrtjtsrjdyt', 'project15a.svg');

DROP TABLE IF EXISTS projects_software;
CREATE TABLE IF NOT EXISTS projects_software (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  project_id int UNSIGNED NOT NULL,
  software_id int UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(27, 14, 12);

DROP TABLE IF EXISTS related;
CREATE TABLE IF NOT EXISTS related (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  main_project_id int UNSIGNED NOT NULL,
  related_project_id int UNSIGNED NOT NULL,
  thumbnail int UNSIGNED NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO related (id, main_project_id, related_project_id, thumbnail) VALUES
(1, 1, 5, 28),
(2, 1, 9, 59),
(3, 1, 2, 66),
(4, 2, 8, 49),
(5, 2, 1, 21),
(6, 2, 14, 87),
(7, 3, 0, 0),
(8, 3, 0, 0),
(9, 3, 0, 0),
(10, 4, 0, 0),
(11, 4, 0, 0),
(12, 4, 0, 0),
(13, 5, 1, 21),
(14, 5, 9, 59),
(15, 5, 7, 42),
(16, 6, 13, 80),
(17, 6, 12, 73),
(18, 6, 7, 42),
(19, 7, 6, 35),
(20, 7, 12, 73),
(21, 7, 13, 80),
(22, 8, 2, 66),
(23, 8, 5, 28),
(24, 8, 9, 59),
(25, 9, 1, 21),
(26, 9, 5, 28),
(27, 9, 6, 35),
(28, 10, 7, 42),
(29, 10, 1, 21),
(30, 10, 6, 35),
(34, 12, 6, 35),
(35, 12, 7, 42),
(36, 12, 13, 80),
(37, 13, 12, 73),
(38, 13, 7, 42),
(39, 13, 6, 35),
(40, 14, 2, 66),
(41, 14, 5, 28),
(42, 14, 9, 59);

DROP TABLE IF EXISTS software;
CREATE TABLE IF NOT EXISTS software (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  software_name varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
