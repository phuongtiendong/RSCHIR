CREATE DATABASE IF NOT EXISTS api_db;
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON api_db.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

USE api_db;
CREATE TABLE IF NOT EXISTS `categories` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(256) NOT NULL,
    `description` text NOT NULL,
    `created` datetime NOT NULL,
    `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 ;
INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Home', 'Created for home use.', '2021-10-26 00:01:01', '2021-10-26 00:01:01'),
(2, 'Portable', 'Created to play outdoors.', '2021-10-26 00:01:01', '2021-10-26 00:01:01'),
(3, 'Cloud', 'All work is on a server side', '2021-10-26 00:01:01', '2021-10-26 00:01:01');

CREATE TABLE IF NOT EXISTS `products` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(32) NOT NULL,
    `description` text NOT NULL,
    `price` varchar(32) NOT NULL,
    `category_id` int(11) NOT NULL,
    `created` datetime NOT NULL,
    `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 ;
INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'PlayStation 5', 'Best console 2020', '499', 1, '2020-11-19 01:12:26', '2021-10-26 00:01:01'),
(2, 'PlayStation 5 digital', 'Best console 2020 but cheaper', '399', 1, '2020-11-19 01:12:26', '2021-10-26 00:01:01'),
(3, 'PlayStation 4', 'Best console 2013', '399', 1, '2013-11-15 01:12:26', '2021-10-26 00:01:01'),
(4, 'Xbox Series X', 'Fridge!', '499', 1, '2020-11-19 01:12:26', '2021-10-26 00:01:01'),
(5, 'Xbox Series S', 'One S?', '299', 1, '2020-11-19 01:13:45', '2021-10-26 00:01:01'),
(6, 'Xbox One X', 'Most powerf... uh', '499', 1, '2017-11-07 01:14:13', '2021-10-26 00:01:01'),
(7, 'Xbox One S', '40% smaller', '349', 1, '2016-08-02 01:18:36', '2021-10-26 00:01:01'),
(8, 'PlayStation Vita', 'So...', '299', 2, '2011-12-17 17:10:01', '2021-10-26 00:01:01'),
(9, 'Nintendo Switch', 'Its me Mario', '299', 2, '2017-03-03 17:11:04', '2021-10-26 00:01:01'),
(10, 'Nintendo Switch OLED', 'Its me HDR Mario', '349', 2, '2021-10-22 17:12:21', '2021-10-26 00:01:01'),
(11, 'Geforce Now', 'XD', '10', 3, '2020-02-04 17:12:59', '2021-10-26 00:01:01'),
(12, 'PS Now', 'Why?', '10', 3, '2014-01-01 19:07:34', '2021-10-26 00:01:01'),
(13, 'Google Stadia', 'Juan', '10', 3, '2019-11-19 21:12:03', '2021-10-26 00:01:01'),
(14, 'Steam Deck', 'PC Portable', '649', 2, '2021-12-01 00:52:54', '2021-10-26 00:01:01'),
(15, 'PC 2', 'Just imagine', '300', 1, '2077-12-08 06:47:08', '2021-10-26 00:01:01');