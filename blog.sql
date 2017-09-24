-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017-09-24 11:55:58
-- 服务器版本: 5.7.18-log
-- PHP 版本: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1206227 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(10080, '雨云天下', '111111');

-- --------------------------------------------------------

--
-- 表的结构 `admin_login_log`
--

CREATE TABLE IF NOT EXISTS `admin_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `admin_id` int(11) NOT NULL COMMENT '管理员ID',
  `date` timestamp NULL DEFAULT NULL COMMENT '登陆日期',
  `ip` varchar(30) DEFAULT NULL COMMENT '登陆IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `keywords` varchar(150) NOT NULL COMMENT '关键字',
  `desci` varchar(255) NOT NULL COMMENT '描述',
  `pic` varchar(150) DEFAULT NULL COMMENT '图片地址',
  `content` text NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击量',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发表日期',
  `catalog_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `keywords`, `desci`, `pic`, `content`, `click`, `time`, `catalog_id`) VALUES
(91, '飘飞的羽毛', '生活', '   我很喜欢这部片子。特别喜欢飘飞的那片羽毛，好像那片羽毛就是我自己。', '', '  常常和朋友们谈起阿甘。阿甘太运气了！朋友们总是这样说。我哑然。我很奇怪，阿甘坐在那张凳子上，难道只是在告诉来来往往的陌生人：“瞧，我多运气”？\n    在好些年前，我曾对人生充满困惑。我不知道人活着为什么。有时候，我坐在窗台上，对自己说：我现在跳下去，与我活到死相比也没有区别吧。幸好，我没有跳下去。整整想了两年，我想出了一个答案：人怎么样才能活得更好？这个问题虽然没有答案，但心里不已经没有先前那么迷茫。\n    为什么要说这个事呢？因为在看这部片子的时候，我似乎又一次体验了那个追问人生的过程。\n    一个正常的人，拥有判断能力，他知道什么是重要的，什么是不重要的。一个正常的人，可以有很多选择，所以总是在等待时机。一个正常的人，不会把精力浪费在没有用的地方。但阿甘偏偏不是个正常人，他的智商比普通人低，他甚至差点就进了智障学校。女朋友、学校球队、部队、乒乓、养虾、跑步，似乎他的一切都不是自己在选择，而是别人在选择。当然，他也不会去问“人生是什么”之类的问题。他只会傻傻地去做一件件的事情。\n    这个故事到底想说的是什么？我觉得，导演就是用一种非常极端的方式，说了一个道理：选择很可能误导人生。因为选择太多，有的人没有用心地做事，这种态度进一步影响了他的人生。面对人生，或许应该有这种准备：“人生就像一盒巧克力，你不知道会选中哪一颗”。\n    我很喜欢这部片子。特别喜欢飘飞的那片羽毛，好像那片羽毛就是我自己。\n', 21, '2017-08-27 12:18:35', 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `keywords` varchar(150) NOT NULL COMMENT '栏目关键词',
  `desc` text NOT NULL COMMENT '栏目描述',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目类型 0：列表；1：留言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `keywords`, `desc`, `type`) VALUES
(1, 'PHP', 'PHP', 'PHP', 0),
(2, '数据库', '数据库', '数据库', 0),
(3, 'Java', 'Java', 'Java', 0),
(4, '生活感悟', '生活感悟', '生活感悟', 0);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `article_id` bigint(20) NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '评论内容',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论日期',
  `name` varchar(10) DEFAULT NULL COMMENT '留言者昵称',
  `email` varchar(30) DEFAULT NULL COMMENT '留言者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `content`, `date`, `name`, `email`) VALUES
(1, 93, '写的不错。', '2017-09-16 08:10:48', '追梦人', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
