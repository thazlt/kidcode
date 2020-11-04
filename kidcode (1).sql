-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2020 at 02:20 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kidcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `LessonID` int(11) DEFAULT NULL,
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_cmt_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`LessonID`, `comment_id`, `parent_cmt_id`, `comment`, `comment_sender_name`, `date`) VALUES
(0, 10, 9, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum', '2020-03-08 07:02:48'),
(0, 9, 0, 'is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum', '2020-03-08 07:02:24'),
(0, 11, 0, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', 'H. Rackham', '2020-03-08 07:03:23'),
(0, 12, 11, 'Hello', 'Di', '2020-03-08 07:11:05'),
(0, 13, 12, 'Hi Di', 'Adam', '2020-03-09 14:16:47'),
(0, 22, 12, 'hi', 'thaz', '2020-10-31 12:56:49'),
(0, 26, 25, 'lo cc', 'lo ', '2020-10-31 14:34:04'),
(0, 25, 0, 'lo', 'lo', '2020-10-31 14:33:53'),
(1, 27, 0, 'asdasd', 'asdas', '2020-10-31 14:40:41'),
(2, 28, 0, 'asdasd', 'asdas', '2020-10-31 14:47:19'),
(0, 29, 0, 'lala', 'thazlt', '2020-10-31 14:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
CREATE TABLE IF NOT EXISTS `exercise` (
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `ExerciseName` varchar(255) NOT NULL,
  `ExerciseDescription` text NOT NULL,
  `Code` text NOT NULL,
  PRIMARY KEY (`LessonID`,`ExerciseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`LessonID`, `ExerciseID`, `ExerciseName`, `ExerciseDescription`, `Code`) VALUES
(0, 101, 'Say Hello', 'To print a string in Python , just use the print function.', 'print \'Hello world.\''),
(0, 102, 'Practice with print', 'More practice using print function.', 'print \'I can print text.\''),
(0, 103, 'Practice with print', 'If you want to print something in new line you can use \\n .', 'print \'Why did the beach cry?\'<br>print \'\\n\'<br>print \'Because the seaweed!\''),
(0, 201, 'Numbers', 'Python supports two types of numbers - integers and floating point numbers. (It also supports complex numbers, which will not be explained in this tutorial). To define an integer, use the following syntax:', 'myint = 7<br>print(myint)'),
(0, 202, 'Numbers 2', 'To define a floating point number, you may use one of the following notations:', 'myfloat = 7.0<br>print(myfloat)<br>myfloat = float(7)<br>print(myfloat)'),
(0, 203, 'Strings', 'Strings are defined either with a single quote or a double quotes.', 'mystring = \'hello\'<br>print(mystring)<br>mystring = \"hello\"<br>print(mystring)'),
(0, 301, 'Operator with Numbers', 'Simple operators can be executed on numbers.', 'one = 1<br>two = 2<br>three = one + two<br>print(three)'),
(0, 302, 'Operator with Strings', 'Simple operators can be executed on strings.', 'hello = \"hello\"<br>world = \"world\"<br>helloworld = hello + \" \" + world<br>print(helloworld)'),
(1, 101, 'Create a turtle', 'We use two commands to make our turtle appear. The first one is \'import turtle\'  (import tells the computer what kind of commands you\'re going to need for your program). Second, let\'s make the turtle : \'fred = turtle.Turtle()\'  in this case I named my turtle is Fred. Finally, we\'re going to tell Fred to change his shape.', 'import turtle<br>fred = turtle.Turtle()<br>fred.shape(\'turtle\')'),
(1, 102, 'Meet Tina!', 'Tina is a Turtle that you control with code. Press run to see what this program does, and see if you can figure out what line tells Tina to say,\"Why, hello there!\"', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br>tina.penup()<br>tina.forward(20)<br>tina.write(\"Why, hello there!\")<br>tina.backward(20)'),
(1, 103, 'Moving', 'Tina can move! When she moves, she draws a line. She can move forward and backward and turn right or left a certain number of degrees.', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\"turtle\")<br><br>tina.forward(50)<br>tina.left(90)<br>tina.forward(50)<br>tina.left(90)<br>tina.forward(50)'),
(1, 104, 'Moving 2', 'Tina\'s almost made a square! Can you help her complete it? What other shapes can you help Tina draw?', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\"turtle\")<br><br>tina.forward(50)<br>tina.left(90)<br>tina.forward(50)<br>tina.left(90)<br>tina.forward(50)<br>tina.left(90)<br>tina.forward(50)'),
(1, 201, 'Saying Hello', 'Tina\'s already said hello but you can tell her your name and she\'ll say hello to you.\r\nWe can write a program that asks for your name with the input function, so that Tina can get it right for anyone\'s name.\r\nHint: your_name = input (\"What\'s your name?\")\r\n', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>your_name = input(\"What\'s your name?\")<br><br>tina.penup()<br>tina.forward(20)<br>tina.write(\"Why, hello, \" + your_name + \"!\")<br>tina.backward(20)'),
(1, 202, 'Saying Hello 2', 'We can teach Tina to say anything we want using input.', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>say_what = input(\"What should I say?\")<br>tina.penup()<br><br>tina.forward(20)<br>tina.write(say_what)<br>tina.backward(20)'),
(1, 301, 'Color', 'Tina can change into lots of colors! We can tell her to change into blue by typing tina.color(\"blue\").', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br>tina.color(\"blue\")'),
(1, 302, 'Color 2', 'Try something fun !', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br>tina.left(360)<br>tina.forward(20)<br>tina.forward(20)<br>tina.color(\"blue\")<br>tina.forward(20)<br>tina.color(\"purple\")<br>tina.forward(20)<br>tina.color(\"green\")'),
(1, 303, 'Practice!!!', 'Let\'s create number 8 with Tina !!', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br>tina.color(\"blue\")<br>tina.circle(100)<br>tina.circle(-100)'),
(2, 101, 'Tina\'s Pen', 'Turtles like Tina have a pen that draws when they move. We can tell them to pick the pen up, so that they can move without drawing a line. Then we can tell them to put the pen down, and they\'ll draw again. We tell them this with the penup() and pendown() commands.', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>tina.penup()<br>tina.goto(0,100)<br>tina.write(\"I don\'t draw when my pen is up!\")<br>tina.goto(0,50)<br>tina.pendown()<br>tina.write(\"I do draw when my pen is down!\")<br>tina.goto(-50,50)'),
(2, 102, 'Tina\'s grid', 'Tina\'s world is a grid of squares like the one we sometimes use to graph in Algebra and Geometry.\r\nWe can tell Tina to go directly to a specific point on the graph. This makes it easy to teach her to draw something!\r\n', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>tina.penup()<br>tina.write(\"I start at 0, 0\")<br><br>tina.goto(100,100)<br>tina.write(\"This is 100, 100\")<br><br>tina.goto(-100,-100)<br>tina.write(\"This is -100, -100\")<br><br>tina.goto(100,-100)<br>tina.write(\"This is 100, -100\")<br><br>tina.goto(-100,100)<br>tina.write(\"This is -100, 100\")<br><br>tina.goto(-100, 0)'),
(2, 103, 'Tina\'s grid 2', 'The grid goes from -200 to 200 in both directions. You can send Tina to points outside her grid, but then you won\'t see what she\'s doing.', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>tina.goto(200,200)<br>tina.goto(-200,200)<br>tina.goto(200,-200)<br>tina.goto(-200,-200)<br>tina.goto(0,0)<br><br>tina.write(\"This is how big my grid is!\")'),
(2, 201, 'Going in Circles', 'Let\'s make Tina goes in circles!!', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>tina.goto(200,200)<br>tina.goto(-200,200)<br>tina.goto(200,-200)<br>tina.goto(-200,-200)<br>tina.goto(0,0)<br><br>tina.write(\"This is how big my grid is!\")'),
(2, 202, 'With more colors', 'Turtles can also fill in circles with colors, which can be very helpful for drawing.', 'import turtle<br>tina = turtle.Turtle()<br>tina.shape(\'turtle\')<br><br>tina.penup()<br>tina.begin_fill()<br>tina.color(\'green\')<br>tina.goto(30,-150)<br>tina.pendown()<br>tina.circle(130)<br>tina.penup()<br>tina.end_fill()<br>tina.color(\'white\')<br>tina.goto(0,0)<br>tina.begin_fill()<br>tina.pendown()<br>tina.circle(20)<br>tina.penup()<br>tina.end_fill()<br>tina.begin_fill()<br>tina.color(\'black\')<br>tina.pendown()<br>tina.circle(10)<br>tina.penup()<br>tina.end_fill()<br>tina.forward(60)<br>tina.right(45)<br>tina.begin_fill()<br>tina.color(\'white\')<br>tina.pendown()<br>tina.circle(30)<br>tina.penup()<br>tina.end_fill()<br>tina.begin_fill()<br>tina.color(\'black\')<br>tina.pendown()<br>tina.circle(10)<br>tina.penup()<br>tina.end_fill()<br>tina.right(90)<br>tina.forward(90)<br>tina.begin_fill()<br>tina.color(\'maroon\')<br>tina.pendown()<br>tina.circle(40)<br>tina.penup()<br>tina.end_fill()<br>tina.goto(25,-25)');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment`
--

DROP TABLE IF EXISTS `forum_comment`;
CREATE TABLE IF NOT EXISTS `forum_comment` (
  `CommentID` int(11) NOT NULL AUTO_INCREMENT,
  `PostID` int(11) NOT NULL DEFAULT '0',
  `ParentCommentID` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Content` text COLLATE utf8_vietnamese_ci NOT NULL,
  `PostTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CommentID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `forum_comment`
--

INSERT INTO `forum_comment` (`CommentID`, `PostID`, `ParentCommentID`, `Username`, `Content`, `PostTime`) VALUES
(1, 1, 0, 'thaz', 'hello di', '2020-11-02 09:31:21'),
(2, 1, 0, 'thazlt', 'hi', '2020-11-02 11:36:20'),
(16, 4, 0, 'thazlt', '123456', '2020-11-03 14:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `forum_post`
--

DROP TABLE IF EXISTS `forum_post`;
CREATE TABLE IF NOT EXISTS `forum_post` (
  `PostID` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` text COLLATE utf8_vietnamese_ci NOT NULL,
  `PostContent` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Categories` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Type` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Public` tinyint(1) NOT NULL,
  `PostAuthor` text COLLATE utf8_vietnamese_ci NOT NULL,
  `PostDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ViewCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PostID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `forum_post`
--

INSERT INTO `forum_post` (`PostID`, `PostTitle`, `PostContent`, `Categories`, `Type`, `Public`, `PostAuthor`, `PostDate`, `ViewCount`) VALUES
(1, 'This is Title Bla bla bla', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores expedita dolor, eligendi autem molestias aperiam, suscipit a perspiciatis reiciendis, fuga quia! Iure ab eos ipsam maiores praesentium obcaecati quae sapiente!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolores expedita dolor, eligendi autem molestias aperiam, suscipit a perspiciatis reiciendis, fuga quia! Iure ab eos ipsam maiores praesentium obcaecati quae sapiente!', 'General', 'Question', 1, 'Thaz', '2020-11-02 09:21:59', 0),
(4, 'this is thaz', '<p>thaz is handsome</p>', 'General', 'Question', 1, 'thazlt', '2020-11-03 08:10:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `LessonID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonName` varchar(255) NOT NULL,
  `LessonDescription` text NOT NULL,
  `ExerciseNum` int(11) NOT NULL,
  PRIMARY KEY (`LessonID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`LessonID`, `LessonName`, `LessonDescription`, `ExerciseNum`) VALUES
(0, 'Beginner', 'Python is one of many amazing programming languages that helps communicating between humans and computers. In this lesson, we will learn the most basic code of Python.', 8),
(1, 'Intermediate', '\"Turtle\" is a Python feature like a drawing board, which lets us command a turtle to draw all over it! We can use functions like turtle.forward(...) and turtle.right(...) which can move the turtle around.', 9),
(2, 'Advanced', 'In this lesson, you will use the codes you have learned to make even more wonderfull things and enhance your coding skill to max level!!', 5);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
CREATE TABLE IF NOT EXISTS `progress` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `Errors` int(11) NOT NULL,
  `TimeFinish` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`username`, `LessonID`, `ExerciseID`, `Errors`, `TimeFinish`, `date`) VALUES
('thazlt', 0, 102, 3, '00:10:06', '2020-03-04 05:00:00'),
('thazlt', 0, 101, 17, '00:11:55', '2020-03-04 05:00:00'),
('thazlt', 0, 203, 2, '00:25:22', '2020-03-04 05:00:00'),
('thazlt1810', 0, 101, 0, '00:05:78', '2020-03-05 04:03:48'),
('thazlt1810', 0, 102, 0, '00:06:75', '2020-03-05 04:05:28'),
('thazlt1810', 0, 103, 12, '00:33:89', '2020-03-05 04:06:08'),
('thazlt1810', 0, 201, 0, '00:06:85', '2020-03-05 04:06:21'),
('thazlt1810', 0, 202, 3, '00:27:53', '2020-03-05 04:06:54'),
('thazlt1810', 0, 203, 0, '00:24:65', '2020-03-05 04:07:25'),
('thazlt1810', 0, 301, 11, '00:41:06', '2020-03-05 04:07:56'),
('thazlt1810', 0, 302, 4, '00:34:40', '2020-03-05 04:08:36'),
('thazlt1810', 1, 101, 2, '00:00:00', '2020-03-05 05:11:20'),
('thazlt1810', 1, 102, 6, '01:03:72', '2020-03-05 04:39:41'),
('thazlt1810', 1, 103, 0, '00:00:00', '2020-03-05 04:41:25'),
('thazlt1810', 1, 201, 0, '00:00:00', '2020-03-05 04:42:13'),
('thazlt1810', 1, 301, 0, '00:00:00', '2020-03-05 04:43:41'),
('thazlt1810', 1, 302, 0, '00:00:00', '2020-03-05 05:12:06'),
('thazlt1810', 1, 303, 0, '00:00:00', '2020-03-05 05:12:55'),
('thazlt1810', 1, 202, 2, '00:00:00', '2020-03-05 05:14:04'),
('thazlt1810', 1, 104, 0, '00:00:00', '2020-03-05 05:15:55'),
('thazlt1810', 2, 101, 0, '00:00:00', '2020-03-05 05:16:11'),
('thazlt1810', 2, 102, 3, '00:00:00', '2020-03-05 05:16:27'),
('thazlt1810', 2, 103, 0, '00:00:00', '2020-03-05 05:16:50'),
('thazlt1810', 2, 201, 0, '00:00:00', '2020-03-05 05:16:59'),
('thazlt1810', 2, 202, 0, '00:00:00', '2020-03-05 05:17:16'),
('alert(&#34;XSS);', 0, 101, 3, '00:00:00', '2020-03-06 11:53:10'),
('hacker1234', 0, 101, 0, '00:00:00', '2020-03-13 01:19:39'),
('admin', 0, 101, 0, '00:00:00', '2020-03-13 07:21:22'),
('admin', 0, 302, 0, '00:00:00', '2020-03-13 07:21:40'),
('sam2020', 0, 101, 13, '00:10:70', '2020-03-17 06:44:11'),
('sam2020', 0, 102, 1, '00:01:51', '2020-03-17 06:44:36'),
('Di12345', 0, 101, 7, '00:28:71', '2020-09-11 03:13:26'),
('1859015', 0, 101, 0, '00:00:00', '2020-03-18 05:57:59'),
('thazlt', 0, 202, 0, '00:00:00', '2020-10-24 03:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `LessonID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`LessonID`, `QuizID`) VALUES
(0, 0),
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
CREATE TABLE IF NOT EXISTS `quiz_questions` (
  `QuizID` int(11) NOT NULL,
  `QuesNum` int(11) NOT NULL,
  `Question` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Ans1` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Ans2` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Ans3` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Ans4` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Correct_Ans` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`QuizID`, `QuesNum`, `Question`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Correct_Ans`) VALUES
(0, 1, 'This is question 1 ?', 'Answer A', 'Answer B', 'Answer C', 'Answer D', 2),
(0, 2, 'This is question 2 ?', 'Answer A', 'Answer B', 'Answer C', 'Answer D', 2),
(0, 3, 'This is question 3 ?', 'Answer A', 'Answer B', 'Answer C', 'Answer D', 3),
(0, 4, 'This is question 4 ?', 'Answer A', 'Answer B', 'Answer C', 'Answer D', 3),
(0, 5, 'This is question 5 ?', 'Answer A', 'Answer B', 'Answer C', 'Answer D', 3);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE IF NOT EXISTS `userinfo` (
  `USERNAME` varchar(255) NOT NULL DEFAULT '',
  `H_PASSWORD` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL,
  `U_Type` bit(1) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`USERNAME`, `H_PASSWORD`, `EMAIL`, `DOB`, `U_Type`) VALUES
('thazlt', '$2y$10$N6FeQohNhq35J8TyZLRWAeeAy6JoqSHaNwYpAgGQLTRP/hEpXjR9u', 'thazlt1810@gmail.com', NULL, NULL),
('nhule', '$2y$10$XA/um58ur3hPKMu11tB3v.n2nZkFGoS9D0/fTyKp3D4B1P6AsrQdC', '1459039@itec.hcmus.edu.vn', NULL, NULL),
('vampore', '$2y$10$n3IP7LNsWTWPbyOOS2WhtuouxZVAH6wlaqTTcZH7157juDdPsnOoS', 'kduynguyen978@gmail.com', NULL, NULL),
('Di12345', '$2y$10$Chayl/yzNo/9CJ7sgKhPgeePvlYeApj5Lk8J0X.TfUJxnvDinZC4O', 'Di@mail.com', NULL, NULL),
('ItecStudent', '$2y$10$lauv9vm7vg21oPDm5xDcs.vGoXh4mcz53ySRvaaq5EBG5tllonMKi', 'downshare@gmail.com', NULL, NULL),
('huehue', '$2y$10$yNTeIrAN8rPsXaqTzpqe8es7LScCrA7DLSI9XW4BCstUnpu64Gv9C', 'sam@gmail.com', NULL, NULL),
('hlongtd', '$2y$10$hwPKQfD9/ubwZXTJtzBcFO0PDkFbC7orHjnqjTjHboYnyMyqlGp9K', 'hlongtd1@gmail.com', NULL, NULL),
('admin10', '$2y$10$AhgiKbTVgtHE2bCTMpwQGeEsy3rQkhLWuAHoOqYhD3xRSw4nzeB5W', 'sam@mmm.com', NULL, NULL),
('Bui Nhat Tan', '$2y$10$YLd5FBoapOsNiq2eUpKOvegV8o3Meb9NS3.mbFzaQqrHrwaQ09stW', 'buinhattan28@gmail.com', NULL, NULL),
('thazlt1810', '$2y$10$0Foro8kIyDeyFnI.HNqH8ujDljCHO1sFdslM/cVUaJQphPQ.S6oIO', 'thazlt1810@gmail.com', NULL, NULL),
('hacker1234', '$2y$10$dRfoYR.ZADqnS5fxa8aeh.edMCzmr.OzzJ8u5OkFANmsoz.GdT4lS', 'hacker1234@gmail.com', NULL, NULL),
('alert(&#34;XSS);', '$2y$10$nYK9r/h3Hbi5iCjU2mxyW.T5tO2IEYBSEy7nMLBvDMqP9SAMY5T3m', 'sdfgdsfg@gmail.com', NULL, NULL),
('Mr A and B', '$2y$10$ppdfobiLqZuJIpcrOCPBeegL43tnPzTJ.zzd5QcYTiWSoFktyhB/m', 'a@gmail.com', NULL, NULL),
('admin', '$2y$10$LhjZ4G5Q6BrLwHQbgnCjiuSq5IsB0lGdHyNlkMf3eAQQkNQrSTAS.', 'sdfgdsfg@gmail.com', NULL, NULL),
('sam2020', '$2y$10$ZdApjWDh.g.8uUDEDKhWtO91x/tNH8dn4YyWKE0yItmYQD7v4TEMq', 'sam2@gmail.com', NULL, NULL),
('1859015', '$2y$10$5pTpgEuAPOZpSMyN65YKt.N7ucYsBKL6Ys6O0Qqfx2TjK8hWMkwDa', 'xboymocx@yahoo.com.vn', NULL, NULL),
('iwantlearn', '$2y$10$QVkFkqVqplFb4DTmSKWuleVZKoIEtE51fRfbA1Wpvih64y7q..6Cq', 'vs@gmail.com', NULL, NULL),
('thazlt181020', '$2y$10$IzkT0uCaj6qGBLCq1gnAzub5Jh/XX/WGZilSbUWb3vRK80zF/SrQ2', 'thazlt1810@gmail.com', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
