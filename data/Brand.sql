-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2018 г., 22:36
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Brand`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `ID_UUID` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `prim` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `status` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` varchar(128) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `foto_category` varchar(500) NOT NULL,
  `description_category` varchar(1000) NOT NULL,
  `UUID_categiry` varchar(250) NOT NULL,
  `id_pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_category`, `status`, `name`, `url`, `parent_id`, `foto_category`, `description_category`, `UUID_categiry`, `id_pages`) VALUES
(1, '1', 'Accessories', 'accessories', 2, '', '', '', 6),
(2, '1', 'Dresses', 'dresses', 2, '', '', '', 6),
(3, '1', 'Denim', 'denim', 2, '', '', '', 6),
(4, '1', 'Hoodies & Sweatshirts', 'sweatshirts', 2, '', '', '', 5),
(5, '1', 'Jackets & Coats', 'jackets', 2, '', '', '', 6),
(6, '1', 'Pants', 'pants', 2, '', '', '', 9),
(7, '1', 'Polos', 'polos', 2, '', '', '', 5),
(8, '1', 'Shirts', 'shirts', 2, '', '', '', 5),
(9, '1', 'Shoes', 'shoes', 2, '', '', '', 9),
(10, '1', 'Shorts', 'shorts', 2, '', '', '', 6),
(11, '1', 'Sweaters & Knits', 'knits', 2, '', '', '', 6),
(12, '1', 'T-Shirts', 'tshirts', 2, '', '', '', 9),
(13, '1', 'Tanks', 'tanks', 2, '', '', '', 5),
(14, '1', 'Tops', 'tops', 2, '', '', '', 6),
(15, '1', 'Blazers', 'blazers', 2, '', '', '', 9),
(16, '1', 'Sweaters', 'sweaters', 2, '', '', '', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `for_dispatch`
--

CREATE TABLE `for_dispatch` (
  `id` int(11) NOT NULL,
  `e-mail` varchar(128) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `for_dispatch`
--

INSERT INTO `for_dispatch` (`id`, `e-mail`) VALUES
(1, 'er@mail.ru'),
(5, 'advantage@mail.ru'),
(6, 'na.sysoev@gmail.com'),
(9, 'na2sysoev@gmail.com'),
(10, 'nasysoev@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id_good` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_pages` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `rating` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` int(4) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `short_description` text NOT NULL,
  `ID_UUID` varchar(250) NOT NULL DEFAULT 'SELECT UUID()'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id_good`, `name`, `price`, `id_category`, `status`, `id_pages`, `foto`, `rating`, `date`, `view`, `description`, `short_description`, `ID_UUID`) VALUES
(1, 'Mango People T-shirt', '52.00', 4, 1, 5, 'img/index/featured_items/layer-1.png', 4.5, '2018-01-01 18:57:45', 97, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1414-c337-11e7-84ca-00ffc5973b63'),
(2, 'Mango People T-shirt', '52.00', 1, 2, 6, 'img/index/featured_items/layer-3.png', 5, '2018-01-02 18:57:45', 145, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1414-c337-11e7-84ca-00ffc5973b64'),
(3, 'Mango People T-shirt', '52.00', 7, 1, 5, 'img/index/featured_items/layer-4.png', 5, '2018-02-04 18:57:45', 44, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be17f4-c337-11e7-84ca-00ffc5973b65'),
(4, 'Mango People T-shirt', '52.00', 2, 2, 6, 'img/index/featured_items/layer-5.png', 5, '2017-10-10 18:57:45', 325, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. \r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. \r\n- 6.1 oz. 100% preshrunk heavyweight cotton\r\n- Shoulder-to-shoulder taping\r\n- Double-needle sleeves and bottom hem \r\n\r\nIt uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be192f-c337-11e7-84ca-00ffc5973b66'),
(5, 'Mango People T-shirt', '52.00', 3, 2, 6, 'img/index/featured_items/layer-6.png', 5, '2018-01-02 18:57:45', 128, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1a5e-c337-11e7-84ca-00ffc5973b67'),
(6, 'Mango People T-shirt', '52.00', 8, 1, 5, 'img/index/featured_items/layer-7.png', 5, '2018-01-01 18:57:45', 195, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1b8d-c337-11e7-84ca-00ffc5973b68'),
(7, 'Mango People T-shirt', '52.00', 13, 1, 5, 'img/index/featured_items/layer-8.png', 5, '2018-02-02 18:57:45', 252, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1cbc-c337-11e7-84ca-00ffc5973b69'),
(8, 'Mango People T-shirt', '52.00', 14, 1, 5, 'img/index/featured_items/layer-9.png', 5, '2017-11-02 18:57:45', 46, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(9, 'blaze leggins', '104.00', 10, 2, 6, 'img/single_page/layer-44.png', 5, '2018-03-05 16:18:45', 23, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b70'),
(10, 'agnes top', '52.00', 11, 2, 6, 'img/single_page/layer-45.png', 5, '2018-03-05 16:21:28', 22, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b71'),
(11, 'alexa sweater', '52.00', 5, 2, 6, 'img/single_page/layer-46.png', 5, '2018-03-05 16:23:25', 28, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b72'),
(12, 'sylva sweater', '52.00', 1, 2, 6, 'img/single_page/layer-47.png', 4, '2018-03-05 16:25:35', 58, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b73'),
(13, 'mango people t-shirt', '52.00', 12, 1, 5, 'img/product/content/layer-43.png', 5, '2018-03-05 16:28:58', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b74'),
(14, 'mango people t-shirt', '52.00', 9, 1, 5, 'img/product/content/layer-44.png', 5, '2018-03-05 16:30:29', 18, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b75'),
(15, 'mango people t-shirt', '52.00', 6, 1, 5, 'img/product/content/layer-45.png', 5, '2018-03-05 16:31:17', 22, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b76'),
(16, 'mango people t-shirt', '52.00', 4, 1, 5, 'img/product/content/layer-49.png', 5, '2018-03-05 16:32:13', 18, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br><br>\r\n            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.\r\n            <br>\r\n            - 6.1 oz. 100% preshrunk heavyweight cotton<br>\r\n            - Shoulder-to-shoulder taping<br>\r\n            - Double-needle sleeves and bottom hem\r\n            <br><br>\r\n            It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b78'),
(17, 'Mango', '345.00', 1, 2, 6, 'img/single_page/layer-42.png', 5, '2018-04-17 17:04:26', 57, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', '95be1deb-c337-11e7-84ca-00ffc5973b43');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` varchar(250) NOT NULL,
  `paarent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `paarent_id`) VALUES
(1, 'Home', '', 0),
(2, 'Register', 'register', 4),
(3, 'Shopping cart', 'shoppingcart', 5),
(4, 'Checkout', 'checkout', 6),
(5, 'Men', 'men', 1),
(6, 'Women', 'women', 1),
(7, 'Kids', 'kids', 1),
(8, 'Accoserieses', 'accoserieses', 2),
(9, 'Featured', 'featured', 1),
(10, 'Hot deals', 'hotdeals', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `prim` varchar(500) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronymic` varchar(50) DEFAULT NULL,
  `telephone` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `login`, `pass`, `prim`, `surname`, `name`, `patronymic`, `telephone`, `email`, `age`, `gender`, `comments`) VALUES
(1, 'admin', '$2y$10$3TLgWDETk415E2laEsWhoOYWhsgSdbDXc9uGX6QGxTI4jDoflVpMW', '', 'Petrov', 'Petr', 'Petrovich', '+7-906-980-45-54', 'admin@brand.ru', 30, 'male', ''),
(4, 'user', '$2y$10$zSsE3BHpwkbt6bKoEwNEH.i1IPBdbo1WLOIzlMwVOiLA7ZKuw3deG', '', 'Ivanov', 'Max', 'Ivanovich', '+7-906-890-89-45', 'email@gmail.com', 24, 'male', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users_auth`
--

CREATE TABLE `users_auth` (
  `id_user` int(11) NOT NULL,
  `id_user_session` int(11) NOT NULL,
  `hash_cookie` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `prim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_auth`
--

INSERT INTO `users_auth` (`id_user`, `id_user_session`, `hash_cookie`, `date`, `prim`) VALUES
(1, 14, 'c66427f1880fe17f8d1c31971ce1568515590629bab01dd71efe56885153faf0', '2018-04-13', '1523624280.0777836578369157'),
(1, 24, '20a96478996e49b096c766b3414a37c0b6e7307e9cc17e04e479590d8ecd6b50', '2018-04-13', '1523634956.20617089995772830444703'),
(1, 47, 'b4c23e7473a340043a7bad9c9d959ae0717feef848317486b256628a83507f69', '2018-04-30', '1525101006.4127443877071016103128'),
(1, 53, '9bcf75145a1eda2a97f46ce3f207066d7de6b76256159f40a074574db24bcc18', '2018-05-02', '1525280632.21126094761846328309825');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basket_ibfk_1` (`id_user`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `categories_ibfk_1` (`id_pages`);

--
-- Индексы таблицы `for_dispatch`
--
ALTER TABLE `for_dispatch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id_good`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `users_auth`
--
ALTER TABLE `users_auth`
  ADD PRIMARY KEY (`id_user_session`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `for_dispatch`
--
ALTER TABLE `for_dispatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id_good` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users_auth`
--
ALTER TABLE `users_auth`
  MODIFY `id_user_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`id_pages`) REFERENCES `pages` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_auth`
--
ALTER TABLE `users_auth`
  ADD CONSTRAINT `users_auth_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
