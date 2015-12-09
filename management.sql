-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 12 月 09 日 18:42
-- 服务器版本: 5.6.13
-- PHP 版本: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `management`
--

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sno` int(32) NOT NULL,
  `name` char(15) NOT NULL DEFAULT '',
  `grade` smallint(6) NOT NULL DEFAULT '100',
  `category` varchar(32) NOT NULL,
  `categoryid` smallint(6) NOT NULL,
  `dept` varchar(32) DEFAULT NULL,
  `class` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `sno`, `name`, `grade`, `category`, `categoryid`, `dept`, `class`) VALUES
(2, 2, '姣姣', 100, '数学', 1, '女生部', 2),
(3, 3, '丽丽', 100, '语文', 2, '新闻院', 2),
(4, 4, '怡怡', 99, '语文', 2, '艺术学系', 3),
(5, 1, '星星', 100, '数学', 1, '计院', 4),
(7, 5, '朱星滔', 100, '软件工程', 3, '计院', 3),
(8, 6, '小笨蛋', 59, '数学', 1, '计院', 2);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `class` varchar(32) NOT NULL,
  `classid` int(6) NOT NULL,
  `tno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `class`, `classid`, `tno`) VALUES
(1, '陈端直', '数学', 2, 2),
(2, '赵健', '语文', 1, 1),
(3, '熊红萍', '英语', 3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `tno` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`tno`, `username`, `userid`, `password`, `email`) VALUES
(1, '赵健', 'zxt', '202cb962ac59075b964b07152d234b70', '594140838@qq.com'),
(3, 'root', 'root', '63a9f0ea7bb98050796b649e85481845', '594140838@qq.com'),
(4, '陈端直', 'cdz', '202cb962ac59075b964b07152d234b70', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
