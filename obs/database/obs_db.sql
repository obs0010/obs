-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 12:09 PM
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
-- Database: `obs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) NOT NULL,
  `book_title` varchar(60) DEFAULT NULL,
  `book_author` varchar(60) DEFAULT NULL,
  `book_image` text DEFAULT NULL,
  `book_descr` text DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `created_at`) VALUES
('074322678X', 'Where You\'ll Find Me: And Other Stories', 'Ann Beattie', 'http://images.amazon.com/images/P/074322678X.01.LZZZZZZZ.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', 2002.00, 4, '0000-00-00 00:00:00'),
('195153448', 'Classical Mythology', 'Mark P. O. Morford', 'http://images.amazon.com/images/P/0195153448.01.LZZZZZZZ.jpg', 'Test - updated', 2002.00, 6, '0000-00-00 00:00:00'),
('2005018', 'Clara Callan', 'Richard Bruce Wright', 'http://images.amazon.com/images/P/0002005018.01.LZZZZZZZ.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', 2001.00, 6, '0000-00-00 00:00:00'),
('374157065', 'Flu: The Story of the Great Influenza Pandemic of 1918 and t', 'Gina Bari Kolata', 'http://images.amazon.com/images/P/0374157065.01.LZZZZZZZ.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', 1999.00, 2, '0000-00-00 00:00:00'),
('393045218', 'The Mummies of Urumchi', 'E. J. W. Barber', 'http://images.amazon.com/images/P/0393045218.01.LZZZZZZZ.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', 1999.00, 1, '0000-00-00 00:00:00'),
('425176428', 'What If?: The World\'s Foremost Military Historians Imagine W', 'Robert Cowley', 'http://images.amazon.com/images/P/0425176428.01.LZZZZZZZ.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', 2000.00, 3, '0000-00-00 00:00:00'),
('4575fg', 'dfhgdgh', 'dgtedgeg', 'http://images.amazon.com/images/P/074322678X.01.THUMBZZZ.jpg', 'sdgrergt', 9999.99, 4, '2024-06-21 15:39:02'),
('671870432', 'PLEADING GUILTY', 'Scott Turow', 'http://images.amazon.com/images/P/0671870432.01.LZZZZZZZ.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 1993.00, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(5, 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(6, 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(7, 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(8, 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) NOT NULL,
  `ship_address` char(80) NOT NULL,
  `ship_city` char(30) NOT NULL,
  `ship_zip_code` char(10) NOT NULL,
  `ship_country` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, 60.00, '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, 60.00, '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, 20.00, '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, 20.00, '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, 80.00, '2022-06-21 00:09:36', 'Mark Cooper', 'Sample Street', 'Here', '2306', 'Sampple'),
(6, 5, 220.00, '2022-06-21 01:35:16', 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'Philippines'),
(7, 6, 20.00, '2022-06-21 01:38:20', 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'Philippines'),
(8, 7, 20.00, '2022-06-21 01:40:28', 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'Philippines'),
(9, 8, 80.00, '2022-06-21 01:42:56', 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(5, '978-1-4571-0402-2', 20.00, 2),
(5, '978-1-44937-075-6', 20.00, 1),
(5, '978-0-321-94786-4', 20.00, 1),
(6, '978-1-4571-0402-2', 20.00, 10),
(6, '978-1-44937-075-6', 20.00, 1),
(7, '978-0-7303-1484-4', 20.00, 1),
(8, '978-1-1180-2669-4', 20.00, 1),
(9, '978-1-44937-019-0', 20.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Publisher 1'),
(2, 'Publisher 2'),
(3, 'Publisher 3'),
(4, 'Publisher 4'),
(5, 'Publisher 5'),
(6, 'Publisher 6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
