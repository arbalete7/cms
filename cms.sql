-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 15 2017 г., 15:43
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'Python'),
(3, 'CSS'),
(22, 'Example Category'),
(23, 'Vlad');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` varchar(255) NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 10, 'Edwin Diaz', 'edwindiaz@com', 'Blblblblblba', 'approved', '2017-05-18'),
(3, 12, 'Dima', 'lalka@mail.ru', 'azazazazaza', 'approved', '2017-05-29'),
(5, 10, 'john', 'hhgghc@dgh.ukf', 'dtykutkycyhkcyuhk', 'approved', '2017-05-30'),
(6, 10, 'sdfgbdfbg', 'sfbg@sdh.fyu', 'dhghgthfghfgnfhjngfj', 'approved', '2017-05-30'),
(8, 10, 'xzb111', 'xbzbxz@dzf.gh', 'xvczvb', 'approved', '2017-05-30'),
(9, 10, 'sDFvgsdf', 'dfhd@dddddd.ss', '111111111111111111111', 'unapproved', '2017-05-30'),
(12, 10, 'Vlad', 'hui@mail.us', 'Ð‘Ð¾Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð½Ð¾!', 'approved', '2017-06-13'),
(13, 10, 'Vlad', 'hui@mail.us', 'Ð‘Ð¾Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð½Ð¾!', 'unapproved', '2017-06-13');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(3, 1, 'CMS Project', 'Kevin', '2017-06-15', 'image_1.jpg', '                                                                                Lorem Ipsum is simply dummy text of the printing \r\n                                                                                                 ', 'cms, php, project', 6, 'published'),
(10, 1, 'Bootstrap', 'Dima Carmanov', '2017-06-15', 'image_3.jpg', '                                                                        Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima Dima                                                                         ', 'Bootstrap, Dima', 7, 'published'),
(11, 1, 'C++', 'ddfdfdfd', '2017-06-15', 'image2.png', '                                                                                dfdf                                                                        ', 'c++', 4, 'published'),
(12, 1, 'Title', 'dfdfdsfssadf', '2017-06-15', 'image1.jpg', '                                                xzbxcvb                                        ', 'php, title', 4, 'published'),
(13, 1, 'PHP', 'Author', '2017-06-13', 'image_4.jpg', '                                                        ksfgknfdkngb                                                ', '', 0, 'published'),
(18, 1, 'sdfg', 'sdvg', '2017-06-15', '', '<p>sdgv</p>', 'sdgv', 0, 'published');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'rico', '123', 'Rico', 'Suave', 'ricosuave@gmail.com', '', 'admin', ''),
(3, 'Dima1', '111', 'Dima', 'Carmanov', 'dima@gmail.com', '', 'admin', ''),
(4, 'valik1', '111', 'Valik', 'G', 'valik@gmail.com', '', 'subscriber', ''),
(7, 'taniuffa', '111', 'Tanya', 'Jelezoglo', 'taniuffa@gmail.com', '', 'admin', ''),
(8, 'bomj', '111', 'Bomjik', 'Sashka', 'dgd@sf.dg', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(12, 'poz', '111', '', '', 'sdfg@sdg.dsf', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(13, 'sdfsf', 'sfdg', '', '', 'sfg@g.fgdf', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(14, 'lrgrelgregregegre', 'FDL,BGFDB', '', '', 'gfdg@GFGFGF.FG', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(15, 'lrgrelgregregegre', '$1$hN0.W82.$RSJF.CBeAHbVTVOyAXjS6.', '', '', 'gfdg@GFGFGF.FG', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(16, 'Dimon', '$1$ng4.kv3.$lfmrUiJNNnTudpqpcgdhO0', '', '', 'dimon@dimo.dimon', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
