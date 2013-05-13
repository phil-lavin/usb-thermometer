--
-- Database: `temps`
--

-- --------------------------------------------------------

--
-- Table structure for table `readings`
--

CREATE TABLE IF NOT EXISTS `readings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp` decimal(4,2) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
