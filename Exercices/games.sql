--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `genre` VARCHAR(20) NOT NULL,
  `Score` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `genre`, `Score`) VALUES
(1, 'Minecraft', 'adventure', 95),
(2, 'Fortnite', 'battle royal', 85),
(3, 'Call of Duty', 'action', 75);
