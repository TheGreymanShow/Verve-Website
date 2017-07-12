-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2017 at 09:23 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verve`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `edesc` varchar(240) DEFAULT NULL,
  `eimage` varchar(120) DEFAULT NULL,
  `erule` mediumtext,
  `eprize` varchar(480) DEFAULT NULL,
  `ecategory` varchar(2) DEFAULT NULL,
  `eregpic` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `ename`, `edesc`, `eimage`, `erule`, `eprize`, `ecategory`, `eregpic`) VALUES
(1, 'Alors on Danse ', 'Group Dance Competition', 'images/pa/alors.png', '<h3 style="color:#ffa000;">Rules:</h3>\nTime limit: 8-10 minutes<br>\nTracks should be submitted two days prior to the event.<br>\nVulgarity with respect to costumes and performance will not be entertained.<br>\nPoints will be deducted for exceeding the time limit.<br>\nOTSE is not allowed.<br>\nDecision of judge will be final and binding on all the teams.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner : Rs 8000<br>\n<h3 style="color:#ffa000;">Participants:</h3>\nTeam size: 8-15 + 1NPA (Not Compulsory)<br>\nRunner Up: Rs 3000  ', 'pa', 'images/pa/alorsreg.png'),
(2, 'Let''s Nacho', 'Solo/Duet Dancing competition', 'images/pa/letsnacho.png', '<h3 style="color:#ffa000;">Rules:</h3>\nThere will be two rounds (elimination and finals). <br>\nThe time limit is 3 minutes. Negative points for exceeding the time limit. <br>\nAll the participants are requested to carry their audio tracks in a pen drive and also in their mobile phones to avoid technical disturbance. (audio format- .mp3).<br>\nAll the participants are requested to report at the registration desk at least an hour before the event is scheduled to begin.<br>\nAll participants have to be in full costume at the time of registration.<br> Costume during eliminations is not compulsory.<br> \nAll the participants must carry their own college identity card.<br> \nThere is no particular theme.<br>\nParticipants should get their own props.<br> All props must be specified to the event coordinator. <br>\nChoice of song is open to the participants.<br>\nVulgarity/profanity/obscenity with respect to songs, choreography and costumes will lead to disqualification.<br>\nOTSE is allowed only during elimination.<br>\nThe decision of Judges will be final and binding.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner (Solo): Rs 1500<br>\nWinner (Duet): Rs 1500  ', 'pa', 'images/pa/letsnachoreg.png'),
(3, 'Mr. And Ms. VIT', 'Personality Contest ', 'images/pa/mrmrsvit.png', 'Round 1 : Group discussion and a surprise section. Time limit for Group discussion will be 3 mins.<br>\r\nRound 2 : Talent Round. Time limit for this will be 3 mins. <br>\r\nRound 3 : Final Round. It will have ramp walk, questionnaire and talent display. Time limit for talent display will be 4 mins. <br>\r\n Participants must keep in mind that in case they get selected in round 1, they will have to appear for round 2 on the very next day. <br>Failure to be present will result in disqualification.', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner (Mr VIT): Vouchers<br>\r\nWinner (Ms VIT): Vouchers  ', 'pa', 'images/pa/mrmrsvitreg.png'),
(4, 'Nukkad Natak', 'Street Play Competition', 'images/pa/nukkadnatak.png', '<h3 style="color:#ffa000;">Rules:</h3>\n All the members of the team will have to participate in the street play.<br>\n Teams should restrict their play in 12 minutes (10+2) time.<br>\n Teams exceeding 12 minutes will be given negative marks.<br>\n Language of the play: HINDI. <br>\n Participants must report at the venue 1 hour prior to the commencement of the event.<br>\n Competition will be conducted in open space and hence no microphones, speakers, music \nsystems will be allowed or available. Teams can sing /dance by themselves to create the \nnecessary music or sound. <br>\n Teams may use props but need to inform the event coordinator beforehand.\n Teams using any props/costumes/dressing should bring all their belongings and must be ready\nwell in time as per the instructions of the event coordinator.\n No props/ costume or any material will be provided by the host college. <br>\n No time for rehearsal /stage practice will be given.<br>\n Clothing or actions that could be perceived as vulgar or clearly offensive are strictly prohibited.<br>\nNO USE OF ABUSIVE WORDS<br>\n Decision of judge will be final and binding on all the teams.<br>\n OTSE is not allowed.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner: Rs 3000<br>\nRunner: Rs 1500  \n<h3 style="color:#ffa000;">Participants:</h3>\nThe total number of participants in each team should be 8-15(maximum).', 'pa', 'images/pa/nukkadnatakreg.png'),
(5, 'Re Dhun', 'Solo/Duet Singing Competition', 'images/pa/redhun.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nRound1 : Elimination round<br>\r\n1. Time limit- 3 mins.<br>\r\n2. At the end of 2 min warning bell will be given, if you exceed 3 mins negative marking will be given.<br>\r\n3.Instrumental tracks, instruments  are allowed (optional).<br>\r\n4. OTSE is allowed <br>\r\n\r\nRound2: Finals <br>\r\n1. Time limit- 4 mins.<br>\r\n2. At the end of 3 min warning bell will be given, if you exceed 3 mins negative marking will be given.<br>\r\n3. Instrumental track compulsory or instruments.<br>', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner (Solo): Rs 1500<br>\r\nWinner (Duet): Rs 1500', 'pa', 'images/pa/redhunreg.png'),
(6, 'Spotlight', 'Monoacting/Mime', 'images/pa/spotlight.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nMonoacts including Mimicry and Mime are welcome <br>\r\nParticipants should be present 30mins prior to the competition  time. <br>\r\nAct should not extend 7 mins. <br>\r\nIf any props are required,it should be informed prior.<br> \r\nIf any track/audio is needed, it should be submitted 2 days prior.<br>\r\nClothing or actions that could be perceived as vulgar or clearly offensive are strictly prohibited.<br>\r\nOTSE is allowed<br> \r\nDecision of the judge will be final and binding on all teams.<br>', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner: Rs 1000', 'pa', 'images/pa/spotlightreg.png'),
(7, 'Streets', 'Street Dance Competition', 'images/pa/streets.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\n1. The event will comprise of two rounds\r\nIn The first round the teams have to perform their basic routine and only 2 teams progress to the 2nd round which is a face off round.<br>\r\n2. For round 1, the performance should not exceed 7 mins.\r\nScores will be deducted if time limit is exceeded.<br>\r\n3. A track will be provided to both the teams that progress to the 2nd round.<br>\r\n4. Each team should have minimum 10 members and maximum 12.<br>\r\n5. The tracks for round 1 should be submitted 3 days prior to the event in MP3 format only.<br>\r\n6. The team will be disqualified If any offensive behaviour is observed.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner: Rs 5000<br>\nRunner Up: Rs 2000', 'pa', 'images/pa/streetsreg.png'),
(8, 'Vogue', 'Fashion Show Competition', 'images/pa/vogue.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\n1.Team size: 8-15 + 1NPA (Not Compulsory)\r\n     Time limit: 8-10 minutes<br>\r\n2. Tracks should be submitted two days prior to the event <br>\r\n3. Vulgarity with respect to costumes and performance will not be entertained<br>\r\n4. Points will be deducted for exceeding the time limit<br>\r\n5. OTSE is not allowed<br>\r\n6. Decision of the judge will be final and binding on all the teams', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 8000<br>\r\nRunner Up: Rs 3000', 'pa', 'images/pa/voguereg.png'),
(9, 'Poetry Slam', 'Conventional Poetry Slam with no language barrier to the participants', 'images/la/poetry.png', '<h3 style="color:#ffa000;">Rules:</h3>\nIt is a single participant event.<br>\nNo language barrier.<br>\nParticipants will get 30 mins of thinking time on the topic that is given.<br>\nThey will get 3 mins to present their poem.<br>\nParticipants will be judged on the basis of their proficiency in the language, creativity, presentation style. ', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 1000<br>\r\nRunner Up: Rs 500', 'la', 'images/la/poetryreg.png'),
(10, 'Courtroom Genius', 'This event deals with dealing and dodging problems and coming up with innovative solutions in courtroom style.', 'images/la/court.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nIt is a 2 member event.<br>\r\nRound 1: Participants will be given a petition.  They have to present it to the house. For the first 1.5 mins they have to speak for it and the next 1.5 minutes they have to speak against it. It will be followed by a question answer session by the judges. And the house will be open to a limited amount of questions. <br>\r\nRound 2: Here a criminal case will be provided, and the participants have to come up with plot twists and storyline to prove and convince the judge that a particular suspect is guilty.<br>\r\nParticipants will be judged on the basis of their ideas, innovative solutions and critical thinking.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner: Rs 1500<br>\nRunner Up: Rs 1000', 'la', 'images/la/courtreg.png'),
(11, 'Kala Kruti', 'This event is spiced up with the tadka of Marathi entertainment industry and Marathi literature.', 'images/la/kk.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nRound 1: This round is a quiz based on general questions on Marathi film industry and literature.<br>\r\nRound 2: in this round a 1.5 min muted video from any Marathi film or serial will be shown and the participants will have to dub the video in their own creative and authentic style.<br>\r\nRound 3: In this round the participants will be given a famous Marathi movie and they have to enact the parody of that movie with some twist and humor.<br>', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 1200 <br>\r\nRunner Up: Rs 800', 'la', 'images/la/kkreg.png'),
(12, 'Shabda Sandhan', 'This event will test your Marathi vocabulary. ', 'images/la/shabd.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nIt is a team event with 2 members.<br>\r\nRound 1: It is a quiz based on Marathi vocabulary.<br>\r\nRound 2: In this round, the teams are given a topic on the spot. They are given 2 min thinking time. One of them has to speak for the topic for a minute and then against the topic for the next minute. The other member will answer questions which the judge asks on the basis of what the first member spoke.<br>\r\nRound 3: Each team is given a case study. They have to convince the judge that the direction in which the story is headed is correct.\r\n', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 1200<br>\r\nRunner Up: Rs 800', 'la', 'images/la/shabdreg.png'),
(13, 'Face Off', 'Traditional and formal form of debates in English language.', 'images/la/faceoff.png', '<h3 style="color:#ffa000;">Rules:</h3>\nEliminations for this event will be held.<br>\nTopics for the debate will be provided on the spot.<br>\nThe proposing and opposing teams shall be decided by a coin toss.<br>\nFor eliminations:<br>  \nIntroduction: 1.5 mins\nRebuttal: 7 mins\nConclusion: 1.5 mins<br>\nFor finals:<br>\nIntroduction: 3 mins\nRebuttal: 12 mins\nConclusion: 3 mins <br>\nMutual respect for opponents by participants is expected.<br> \nAny unhealthy discussion initiated by a team, they will be disqualified immediately.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner: Rs 1500<br>\nRunner Up: Rs 1000', 'la', 'images/la/faceoffreg.png'),
(14, 'Vaad Vivaad', 'Formal Debates with traditional rules and regulations in Marathi', 'images/la/vv.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nEliminations for this event will be held.<br>\r\nTopics for the debate will be provided on the spot.<br>\r\nThe proposing and opposing teams shall be decided by a coin toss.<br>\r\nFor eliminations:<br>\r\nIntroduction: 1.5 mins\r\nRebuttal: 7 mins\r\nConclusion: 1.5 mins<br>\r\nFor finals: <br>\r\nIntroduction: 3 mins\r\nRebuttal: 12 mins\r\nConclusion: 3 mins <br>\r\nMutual respect for opponents by participants is expected.<br> \r\nAny unhealthy discussion initiated by a team, they will be disqualified immediately.', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 1500 <br>\r\nRunner Up: Rs 1000', 'la', 'images/la/vvreg.png'),
(15, 'Kalayouth', 'An amalgamation of several different fine arts.', 'images/fa/kala.png', '<h3 style="color:#ffa000;">Rules:</h3>\nThe participants will be in a team of two.<br>\nEach team has to perform several tasks.<br> The task they need to perform will be revealed to them through\na puzzle.<br>\nThe tasks given to the members are to be completed within 2 hours.<br>', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 1200<br>\r\nRunner Up: Rs 800', 'fa', 'images/fa/kalareg.png'),
(16, 'Sculpting', 'Create a beautiful carving and/or sculpture on a clay model or a soap provided.', 'images/fa/scul.png', '<h3 style="color:#ffa000;">Rules:</h3>\nSingle participant event.<br>\nParticipants will have 1.5 hours to carve in accordance to the theme/topic.<br>\nSoap bar/clay will be provided.<br>\nSculpting will be done using daily objects.<br>\nToothpicks only, no other sharp objects can be used for sculpting and carving.\n', '<h3 style="color: #ffa000;">Prizes:</h3>\r\nWinner: Rs 1000<br>\r\nRunner Up: Rs 500', 'fa', 'images/fa/sculreg.png'),
(17, 'Pot Painting', 'Classic pot painting event to  explore your creative side based on the theme provided for painting the pot.', 'images/fa/pot.png', '<h3 style="color:#ffa000;">Rules:</h3>Single participant event.\r\nPots will be provided.<br>\r\nParticipants will be provided with a theme followed by 1.5 hours of painting time.<br>\r\nParticipants will be judged on the basis of their uniqueness, creativity and artistic skills.', '<h3 style="color: #ffa000;">Prizes:</h3>\nWinner: Rs 1000<br>\nRunner Up: Rs 500', 'fa', 'images/fa/potreg.png'),
(18, 'Face Painting', 'Which other way to express a feeling or a thought other than a body art!', 'images/fa/face.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nParticipants need to have an accompanist on whom they can exhibit body art (1 NPA).<br>\r\nParticipants will be provided a theme followed by 45 mins of time to draw the tattoo.<br>\r\nNo professional equipment allowed, only washable paints will be provided.', '<h3 style="color:#ffa000;">Prizes:</h3>\r\nWinner: Rs 1000<br>\r\nRunner Up: Rs 500', 'fa', 'images/fa/facereg.png'),
(19, 'Master Painter', 'An unconventional painting event which checks on time management skills along with painting skills.', 'images/fa/mp.png', '<h3 style="color:#ffa000;">Rules:</h3>\nA theme for a painting will be provided and before that the teams will bid for their material at the cost of their time and accordingly the more material they buy, the lesser their time gets.<br>\nExcept basic stationery, all the material will be provided.<br>\nParticipants have 2 hours of time in hand, with which they start bidding over resources for their painting.<br>\nBidding of items is done first followed by different time for different teams for completion of their piece of art.<br>\nParticipants will be judged on the basis of their creativity and uniqueness.', '<h3 style="color:#ffa000;">Prizes:</h3>\r\nWinner: Rs 1200<br>\r\nRunner Up: Rs 800', 'fa', 'images/fa/mpreg.png'),
(20, 'Robosoccer', 'Interested in soccer? Want to play it in a different way? Get ready to football with the Robo’s Here we are with one of the most Amazing event Robosoccer . Pick up your Robo and lets football!', 'images/te/robos.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nDAY 1-  Participants will be taught how to make level 1 robots with kits provided on the spot.<br>\r\nDAY 2,3- Robosoccer played with the bots made on the previous days.<br> \r\nOn the spot entries allowed.\r\n\r\n\r\n', '<h3 style="color:#ffa000;">Prizes:</h3>\r\nWinner: Rs 1000<br>\r\nRunner Up: Rs 500', 'te', 'images/te/robosreg.png'),
(21, 'Robo Wrestling', 'Ready for some wrestling action?\r\nNot the Real Wrestling, but wrestling with the Robots. Time for some Real Steel!\r\nCome join the action.', 'images/te/war.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nKnockout the opposite bot<br>', '<h3 style="color:#ffa000;">Prizes:</h3>\r\nWinner: Voucher<br>', 'te', 'images/te/warreg.png'),
(22, 'Laser Maze', 'Ready for some laser attack?\r\nHere we are with the laser mystery\r\nLASER MAZE\r\nAll you need to do is challenge yourself and cross the obstacles.\r\nSo come and join us in the Fun interesting Maze!', 'images/te/lazer.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nOne simple rule – You touch the laser and you are out!<br>', '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Vouchers', 'te', 'images/te/lazerreg.png'),
(23, 'Go Startup', 'Have it in you to make it in Silicon Valley?\r\nCome let''s play a game to check you start up game. \r\n', 'images/te/gsu.png', '<h3 style="color:#ffa000;">Rules:</h3>\nAll you have to do is to brainstorm and come up with the best possible idea to the problem we give and have the confidence to sell it like a pro.<br>\n', '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Rs 500 + Vouchers<br>\nRunner Up: Rs 300 + Vouchers\n<h3 style="color:#ffa000;">Participants:</h3>\nGroup of 2\n<h3 style="color:#ffa000;">Cost:</h3>Rs 30', 'te', 'images/te/gsureg.png'),
(24, 'Scavenger Hunt', 'The team which reaches the X spot or finds the treasure will win the prize pot.', 'images/te/hunt.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nA treasure hunt is one of many different types of games with more than two groups who try to find hidden objects or places by following a series of clues.<br> Treasure hunt game will be throughout the campus.', '<h3 style="color:#ffa000;">Prize:</h3>\nWinner: 250 + Vouchers<br>\nRunner Up: 150 + Vouchers\n<h3 style="color:#ffa000;">Participants:</h3>Group of 3\n<h3 style="color:#ffa000;">Cost:</h3>Rs 30', 'te', 'images/te/huntreg.png'),
(25, 'Technical Paper Presentation', 'Present your idea in front of an audience', 'images/te/ppt.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nPaper Presentation is all about how you put your topic or present your topic in front of the audience. <br>They see the way you present your topic, the way you put your points, your presentation style, your language and how promptly and effectively you answer their questions.', '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Rs 3500<br>\nRunner Up: Rs 2000\n<h3 style="color:#ffa000;">Participants:</h3>\nGroup of 2 to 4 per paper \n<h3 style="color:#ffa000;">Cost:</h3>\nRs 100', 'te', 'images/te/pptreg.png'),
(26, 'Laser Tag', 'Enjoy the feel of the real battleground without getting hurt!! By taking part in laser tag One of the most awaited event this season. Load your guns and be there !', 'images/te/tag.png', NULL, '<h3 style="color:#ffa000;">Prize:</h3>\r\nWinner: Vouchers<br>', 'te', 'images/te/tagreg.png'),
(27, 'Geocaching', 'Do you want to rediscover Mumbai?! Visit all the places by participating in this event. Reveal the corners of Mumbai in an exciting time constrained competition where the winning team completes all the tasks first!!', 'images/te/geocaching.png', NULL, '<h3 style="color:#ffa000;">Prizes:</h3>\r\nWinner: Rs 1500 + Vouchers', 'te', 'images/te/geocachingreg.png'),
(28, 'LAN Gaming', 'Calling all the Gaming geeks to show their legacy in Counter Strike ,FIFA and NFS.', 'images/te/lan.png', NULL, '<h3 style="color:#ffa000;">CS Prize:</h3>\nWinner: 4000 + vouchers <br>\nRunner Up: 2000 + vouchers <br>\n<h3 style="color:#ffa000;">FIFA Prize:</h3>\nWinner: 3000 + vouchers<br>\nRunner Up: 1000 + vouchers<br>\n<h3 style="color:#ffa000;">NFS Prize:</h3>\nWinner: 2000 + vouchers<br>\nRunner Up: 1000 + vouchers<br>\n<h3 style="color:#ffa000;">Cost:</h3>\nCS- Team of 5 Rs 50 per person<br>\nFIFA: Rs 50 pp <br>\nNFS: Rs 50 pp <br>', 'te', 'images/te/lanreg.png'),
(30, 'Wheel of Fortune', 'Technical Quiz', 'images/te/wof.png', '<h3 style="color:#ffa000;">Rules:</h3>\nRound 1: A technical quiz wherein questions will be fired at both the teams simultaneously and the ones who press the buzzer first get a chance to answer the question. <br>\nRound 2: Before every Question, the wheel is rotated and questions will be asked on the topic that appears on the wheel.<br>\n Round 3: Out of the 4 teams, 2 top scorers will go in a final rapid fire round and one winner will be declared.<br> <br>\nEach team has equal chance of answering the question by pressing the buzzer.<br> \nOne who answers most questions right and wins points wins in the end.<br>', '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Rs 500 + Vouchers<br>\n<h3 style="color:#ffa000;">Participants:</h3>\n4 teams of 2 each at a time.', 'te', 'images/te/wofreg.png'),
(31, 'Code Hoax', 'A full-Fledged algorithmic coding competition designed for coders to crack, powered by hackerrank.', 'images/te/hoax.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nNO CODE PLAGIARISM.<br>\r\n3 hours time. 2 Questions.<br> \r\nSubmit your code online on our online debugger. <br>\r\nClear all the test cases in fastest time to win amazing prizes !<br>', '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Rs 1000<br>\nRunner Up: Rs 500\n<h3 style="color:#ffa000;">Participants:</h3>\nIndividual/Teams of 2\n<h3 style="color:#ffa000;">Cost:</h3>\nRs 50', 'te', 'images/te/hoaxreg.png'),
(32, 'Arcade Corner', 'Relive your childhood memories!', 'images/te/arcade.png', 'Play and compete in an amazing selection of over 300 retro games on classic arcade machines.<br>\nPlay with your friends and set the highest score in VIT to win exciting prizes!<br>\nMario, Bomberman, Sonic are thousands of their friends are waiting for you to play their game, don''t let them down! Come to  to have the time of your lives, not kidding.<br>', NULL, 'te', 'images/te/arcadereg.png'),
(33, 'Glow Football', 'We all love playing football, don''t we? Now get to experience playing football in a dark room where you can only see the glowing football and the goal post lines and nothing else.', 'images/te/glow.png', '<h3 style="color:#ffa000;">Rules:</h3>\nBasic football rules. <br> Waist height is ball rise limit.<br> \n7 min game time.<br>\nNo outside and centre start.<br>', '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Vouchers<br>\n<h3 style="color:#ffa000;">Participants:</h3>Three a side per team<br>', 'te', 'images/te/glowreg.png'),
(34, 'Circuit Debugging', 'Round 1- Maze runner<br>\r\nRound 2- Game of codes<br>\r\nRound 3- Imitation game<br>', 'images/te/circuit.png', NULL, '<h3 style="color:#ffa000;">Prizes:</h3>\nWinner: Rs 1000 + Voucher<br>', 'te', 'images/te/circuitreg.png'),
(35, 'Long Football', NULL, 'images/sp/long.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n11,12 February 2017\r\n<h3 style="color:#ffa000;">Participants:</h3>Boys: 7+3\r\n<h3 style="color:#ffa000;">Cost:</h3>\r\nRs 1000', NULL, 'sp', 'images/sp/longreg.png'),
(36, 'Rink Football', NULL, 'images/sp/rink.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n11,12 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>\r\nBoys: 4+2<br>\r\nGirls: 3+2<br>\r\n<h3 style="color:#ffa000;">Cost:</h3>\r\nBoys: Rs 400<br>\r\nGirls: Rs 250<br>', NULL, 'sp', 'images/sp/rinkreg.png'),
(37, 'Cage Football', NULL, 'images/sp/cage.png', '<h3 style="color:#ffa000;">Rules:</h3>\n11,12 February 2017<br>\n<h3 style="color:#ffa000;">Participants:</h3>\nBoys:3+2<br>\n<h3 style="color:#ffa000;">Cost:</h3>\nRs 300<br>', NULL, 'sp', 'images/sp/cagereg.png'),
(39, 'S6 Cricket', NULL, 'images/sp/s6.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n15-17 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Boys:9+2<br><h3 style="color:#ffa000;">Cost:</h3>Rs 1100<br>', NULL, 'sp', 'images/sp/s6reg.png'),
(40, 'Box Cricket', NULL, 'images/sp/box.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n15-17 February 2017<br><h3 style="color:#ffa000;">Participants:</h3>Boys: 6+2<br><h3 style="color:#ffa000;">Cost:</h3>Rs 300<br>', NULL, 'sp', 'images/sp/boxreg.png'),
(41, 'Pro Kabaddi', NULL, 'images/sp/pro.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n16,17 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Boys: 7+5<br><h3 style="color:#ffa000;">Fees:</h3>Rs 700<br>', NULL, 'sp', 'images/sp/proreg.png'),
(42, 'Smash Volley', NULL, 'images/sp/smash.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n11 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Boys: 7+5<br>\r\n<h3 style="color:#ffa000;">Cost:</h3>Rs 700<br>', NULL, 'sp', 'images/sp/smashreg.png'),
(43, 'Alley Oop', NULL, 'images/sp/basket.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n15 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Boys: 6+3<br>Girls:3+2<br><h3 style="color:#ffa000;">Cost:</h3>Boys: Rs 500<br>Girls:Rs 300<br> ', NULL, 'sp', 'images/sp/basketreg.png'),
(44, 'Throwball', NULL, 'images/sp/vb.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n12 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Girls: 7+3<br><h3 style="color:#ffa000;">Cost:</h3>Rs 600<br>', NULL, 'sp', 'images/sp/vbreg.png'),
(45, 'Table Tennis', NULL, 'images/sp/tt.png', '<h3 style="color:#ffa000;">Dates:</h3>\n11,12 February 2017<br>\n<h3 style="color:#ffa000;">Participants:</h3>Singles<br>Doubles<br><h3 style="color:#ffa000;">Cost:</h3>Singles: Rs 80<br>Doubles: Rs 160<br>', NULL, 'sp', 'images/sp/ttreg.png'),
(46, 'Blitzkrieg Chess', NULL, 'images/sp/chess.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n11,12 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Singles<br><h3 style="color:#ffa000;">Cost:</h3>Rs 100<br>', NULL, 'sp', 'images/sp/chessreg.png'),
(47, 'Carrom', NULL, 'images/sp/carrom.png', '<h3 style="color:#ffa000;">Dates:</h3>\r\n11,12 February 2017<br>\r\n<h3 style="color:#ffa000;">Participants:</h3>Singles<br>Doubles<br><h3 style="color:#ffa000;">Cost:</h3>Singles: Rs 80<br> Doubles:Rs 160<br>', NULL, 'sp', 'images/sp/carromreg.png'),
(48, 'Picturesque', NULL, 'images/ph/picturesque.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nTheme Based Photography.<br>\r\nTheme will be provided one week prior to the event.<br>\r\nWithin that week participants will need to mail the picture on <span>vcalibreclickers@gmail.com</span><br>\r\nOnly vibrant colors and monochrome allowed.<br>', NULL, 'ph', 'images/ph/picturesquereg.png'),
(49, 'Perception', NULL, 'images/ph/perspective.png', '<h3 style="color:#ffa000;">Rules:</h3>\r\nOn the spot entries allowed.<br>\r\nNo mobiles allowed.<br>\r\nNeed to click three pictures on the given challenge.<br>', NULL, 'ph', 'images/ph/perspectivereg.png');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `Event` varchar(60) DEFAULT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Phone` varchar(60) DEFAULT NULL,
  `College` varchar(60) DEFAULT NULL,
  `Ambassador` varchar(60) DEFAULT NULL,
  `Amount Paid` varchar(60) DEFAULT NULL,
  `Status` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `Event`, `Name`, `Email`, `Phone`, `College`, `Ambassador`, `Amount Paid`, `Status`) VALUES
(1, ' dgfdlgl ', ' asdfsdfsdf ', '  ', ' gdfjkghskjg ', ' gdfgjdsg ', ' fdkghdfg ', '0', 'Hold'),
(2, ' sdfjsdlkfjl ', ' sdhfsdhfkj ', '  ', ' sdfkjsdlf ', ' dsfkjsdlf ', ' fsdklfjlsd ', '0', 'Hold'),
(3, '  ', ' dslfsdfksd;fk;dsfk;sdf ', ' sdfjsdklfjlsdk@skfldfjsdl ', ' dslkfjsdklf ', ' lkjfdsklfjl ', ' fjsdlkfjldsk ', '0', 'Hold'),
(4, ' Event 3 ', ' skdljflksdjfls ', ' sdlkfdsljflk@dklfsdkljf.com ', ' dsklfjskdlfjl ', ' dsklfjsldkj ', ' fjsdklfjsdklf ', '0', 'Hold'),
(5, ' Event 3 ', ' dskljflsdkjflk ', ' jfdslkfjsdkljf@fsdjfkld.com ', ' dsfjsdkjf ', ' dslfkjsdlfl ', ' jdslfjsdlkf ', '0', 'Hold'),
(6, ' Event 3 ', ' dskljflsdkjflkasddsfdsfsdf ', ' jfdsadasdslkfjsdkljf@fsdjfkld.com ', ' dsfjsdkjf ', ' dslfkjsdlfl ', ' jdslfjsdlkf ', '0', 'Hold'),
(7, ' Robo Wrestling ', ' sdkfdsfjl ', ' fdsjlkfjldsk@kljglk ', ' fdklgjdfklgjlq ', ' gdfklgjldfkg ', ' gdfklgdfklg ', '0', 'Hold'),
(8, ' Robo Wrestling ', ' sdkfdsljkf ', ' jflskdjflk@fdskljfl ', ' fdskljflk ', ' jfkdslfjls ', ' jfsdklfj ', '0', 'Hold'),
(9, ' Robo Wrestling ', ' sdkfdsljkfds ', ' jflskdjflk@fdskljflds ', ' fdskljflk ', ' jfkdslfjls ', ' jfsdklfj ', '0', 'Hold'),
(10, ' Robo Wrestling ', ' djflsdjflsdfj ', ' sdkflsdfjlk@fdlkfjslkd ', ' sdklfjdslfj ', ' fdskljfskdlfj ', ' fdsjlkfjkdsl ', '0', 'Hold'),
(11, ' Robo Wrestling ', ' djflsdjflsdfj ', ' sdkflsdfjlk@fdlkfjslkdsd ', ' sdklfjdslfj ', ' fdskljfskdlfj ', ' fdsjlkfjkdsl ', '0', 'Hold'),
(12, ' Robo Wrestling ', ' djflsdjflsdfj ', ' sdkflsdfjlk@fdlkfjslkdsddcds ', ' sdklfjdslfj ', ' fdskljfskdlfj ', ' fdsjlkfjkdsl ', '0', 'Hold'),
(13, ' Robo Wrestling ', ' dfjskdfsdkjfh ', ' fdsjkfhsjkd@hfdhkjfsjkdf ', ' fdskjfdskjfh ', ' sfdkjfdsjkf ', ' fsdkjfhdskj ', '0', 'Hold');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
