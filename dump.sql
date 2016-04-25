-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2016 at 01:12 AM
-- Server version: 5.6.30-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_frognation`
--

-- --------------------------------------------------------

--
-- Table structure for table `frogs`
--

CREATE TABLE IF NOT EXISTS `frogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `death` date NOT NULL,
  `pond_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frogs`
--

INSERT INTO `frogs` (`id`, `name`, `avatar`, `gender`, `dob`, `death`, `pond_id`) VALUES
(1, 'Kenneth', '', 'male', '2013-01-12', '0000-00-00', 1),
(2, 'Edward', '', 'male', '2012-05-10', '0000-00-00', 1),
(3, 'Freddy', '', 'male', '2011-10-14', '0000-00-00', 3),
(4, 'Judy', '', 'female', '2014-06-12', '0000-00-00', 2),
(5, 'Keroppi', '', 'Male', '2014-02-03', '0000-00-00', 3),
(6, 'Pepe', '', 'male', '2012-04-02', '0000-00-00', 2),
(7, 'Selina', '', 'female', '2014-06-18', '0000-00-00', 1),
(8, 'Katy', '', 'female', '2012-09-09', '0000-00-00', 4),
(9, 'Mercury', '', 'male', '2006-01-14', '2014-03-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ponds`
--

CREATE TABLE IF NOT EXISTS `ponds` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponds`
--

INSERT INTO `ponds` (`id`, `name`, `image`, `description`, `location`, `status`) VALUES
(1, 'Riverhedge', '', 'Hot, high humidity and good view.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et augue mollis, pretium metus sollicitudin, sagittis tellus. Aliquam convallis lacus a nulla commodo euismod. Quisque a aliquet elit, id ultricies augue. Pellentesque pulvinar consequat orci sed porta. Nullam et dignissim massa. Nullam nec ornare risus. Quisque et tristique metus. Praesent at purus dapibus, ornare metus sit amet, rhoncus mi. In tempor lectus sit amet arcu rhoncus tincidunt.\n\nNunc venenatis luctus sem, nec gravida massa fringilla at. Duis ultrices eros et pulvinar eleifend. Nulla porta justo ipsum, a aliquet massa porttitor sed. Nam euismod consectetur ultricies. Sed quis pretium diam. Phasellus quis neque vulputate, condimentum dolor at, ultricies velit. Sed lacinia dapibus vestibulum. Quisque vel ipsum vitae erat maximus feugiat. Cras faucibus mauris id odio malesuada, nec rhoncus leo tempus. Aliquam dui est, luctus eu aliquam vitae, lobortis ut risus. Vestibulum et tortor elementum, ullamcorper urna vitae, sagittis mauris. Donec justo metus, placerat vitae dignissim vitae, vulputate et leo. Nullam vulputate nibh quis imperdiet accumsan. Nullam luctus arcu sit amet ligula pretium, id congue ipsum sagittis. Mauris ultrices viverra risus et consequat.', 'lat: -25.363, lng: 131.044', 'open'),
(2, 'Esterville', '', 'Near human settlement, might be dangerous.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et augue mollis, pretium metus sollicitudin, sagittis tellus. Aliquam convallis lacus a nulla commodo euismod. Quisque a aliquet elit, id ultricies augue. Pellentesque pulvinar consequat orci sed porta. Nullam et dignissim massa. Nullam nec ornare risus. Quisque et tristique metus. Praesent at purus dapibus, ornare metus sit amet, rhoncus mi. In tempor lectus sit amet arcu rhoncus tincidunt.\n\nNunc venenatis luctus sem, nec gravida massa fringilla at. Duis ultrices eros et pulvinar eleifend. Nulla porta justo ipsum, a aliquet massa porttitor sed. Nam euismod consectetur ultricies. Sed quis pretium diam. Phasellus quis neque vulputate, condimentum dolor at, ultricies velit. Sed lacinia dapibus vestibulum. Quisque vel ipsum vitae erat maximus feugiat. Cras faucibus mauris id odio malesuada, nec rhoncus leo tempus. Aliquam dui est, luctus eu aliquam vitae, lobortis ut risus. Vestibulum et tortor elementum, ullamcorper urna vitae, sagittis mauris. Donec justo metus, placerat vitae dignissim vitae, vulputate et leo. Nullam vulputate nibh quis imperdiet accumsan. Nullam luctus arcu sit amet ligula pretium, id congue ipsum sagittis. Mauris ultrices viverra risus et consequat.', 'lat: 1.1874385, lng: 32.3038504', 'open'),
(3, 'Marshton', '', 'High frogs population density, easy access to food.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et augue mollis, pretium metus sollicitudin, sagittis tellus. Aliquam convallis lacus a nulla commodo euismod. Quisque a aliquet elit, id ultricies augue. Pellentesque pulvinar consequat orci sed porta. Nullam et dignissim massa. Nullam nec ornare risus. Quisque et tristique metus. Praesent at purus dapibus, ornare metus sit amet, rhoncus mi. In tempor lectus sit amet arcu rhoncus tincidunt.\n\nNunc venenatis luctus sem, nec gravida massa fringilla at. Duis ultrices eros et pulvinar eleifend. Nulla porta justo ipsum, a aliquet massa porttitor sed. Nam euismod consectetur ultricies. Sed quis pretium diam. Phasellus quis neque vulputate, condimentum dolor at, ultricies velit. Sed lacinia dapibus vestibulum. Quisque vel ipsum vitae erat maximus feugiat. Cras faucibus mauris id odio malesuada, nec rhoncus leo tempus. Aliquam dui est, luctus eu aliquam vitae, lobortis ut risus. Vestibulum et tortor elementum, ullamcorper urna vitae, sagittis mauris. Donec justo metus, placerat vitae dignissim vitae, vulputate et leo. Nullam vulputate nibh quis imperdiet accumsan. Nullam luctus arcu sit amet ligula pretium, id congue ipsum sagittis. Mauris ultrices viverra risus et consequat.', 'lat: 25.363, lng: 31.044', 'open'),
(4, 'Flowerdell', '', 'The capital of Frog Kindgom.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et augue mollis, pretium metus sollicitudin, sagittis tellus. Aliquam convallis lacus a nulla commodo euismod. Quisque a aliquet elit, id ultricies augue. Pellentesque pulvinar consequat orci sed porta. Nullam et dignissim massa. Nullam nec ornare risus. Quisque et tristique metus. Praesent at purus dapibus, ornare metus sit amet, rhoncus mi. In tempor lectus sit amet arcu rhoncus tincidunt.\n\nNunc venenatis luctus sem, nec gravida massa fringilla at. Duis ultrices eros et pulvinar eleifend. Nulla porta justo ipsum, a aliquet massa porttitor sed. Nam euismod consectetur ultricies. Sed quis pretium diam. Phasellus quis neque vulputate, condimentum dolor at, ultricies velit. Sed lacinia dapibus vestibulum. Quisque vel ipsum vitae erat maximus feugiat. Cras faucibus mauris id odio malesuada, nec rhoncus leo tempus. Aliquam dui est, luctus eu aliquam vitae, lobortis ut risus. Vestibulum et tortor elementum, ullamcorper urna vitae, sagittis mauris. Donec justo metus, placerat vitae dignissim vitae, vulputate et leo. Nullam vulputate nibh quis imperdiet accumsan. Nullam luctus arcu sit amet ligula pretium, id congue ipsum sagittis. Mauris ultrices viverra risus et consequat.', 'lat: 5.363, lng: 13.044', 'open');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frogs`
--
ALTER TABLE `frogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ponds`
--
ALTER TABLE `ponds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frogs`
--
ALTER TABLE `frogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ponds`
--
ALTER TABLE `ponds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
