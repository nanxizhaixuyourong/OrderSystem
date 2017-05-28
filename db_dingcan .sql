-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2014 年 12 月 20 日 16:14
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `db_dingcan`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `t_admin`
-- 

CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_admin`
-- 

INSERT INTO `t_admin` VALUES (1, 'a', 'a');
INSERT INTO `t_admin` VALUES (0, 'a', 'a');

-- --------------------------------------------------------

-- 
-- 表的结构 `t_catelog`
-- 

CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) default NULL,
  `catelog_miaoshu` text,
  `catelog_del` varchar(50) default NULL,
  PRIMARY KEY  (`catelog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_catelog`
-- 

INSERT INTO `t_catelog` VALUES (1, '闽菜', '这是福建菜', 'no');
INSERT INTO `t_catelog` VALUES (2, '鲁菜', '这是山东菜', 'no');
INSERT INTO `t_catelog` VALUES (3, '川菜', '这是四川菜<br />', 'no');

-- --------------------------------------------------------

-- 
-- 表的结构 `t_gonggao`
-- 

CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) default NULL,
  `gonggao_content` text,
  `gonggao_data` varchar(50) default NULL,
  `gonggao_fabuzhe` varchar(255) default NULL,
  `gonggao_del` varchar(50) default NULL,
  `gonggao_one1` varchar(50) default NULL,
  `gonggao_one2` varchar(50) default NULL,
  `gonggao_one3` varchar(50) default NULL,
  `gonggao_one4` varchar(50) default NULL,
  `gonggao_one5` datetime default NULL,
  `gonggao_one6` datetime default NULL,
  `gonggao_one7` int(11) default NULL,
  `gonggao_one8` int(11) default NULL,
  PRIMARY KEY  (`gonggao_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_gonggao`
-- 

INSERT INTO `t_gonggao` VALUES (1, '公告公告', '请输入内容请输入内容请输入内容请输入内容', '2014-12-15 22:25:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `t_goods`
-- 

CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(50) default NULL,
  `goods_miaoshu` text,
  `goods_pic` varchar(50) default NULL,
  `goods_yanse` varchar(50) default NULL,
  `goods_shichangjia` int(11) default NULL,
  `goods_tejia` int(11) default NULL,
  `goods_isnottejia` varchar(50) default NULL,
  `goods_isnottuijian` varchar(50) default NULL,
  `goods_catelog_id` int(11) default NULL,
  `goods_Del` varchar(50) default NULL,
  `goods_Renqun` varchar(50) default NULL,
  PRIMARY KEY  (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_goods`
-- 

INSERT INTO `t_goods` VALUES(1	,'佛跳墙',	'<span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">佛跳墙，又名</span><a target="_blank" href="http://baike.baidu.com/item/%E6%BB%A1%E5%9D%9B%E9%A6%99" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">满坛香</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">、</span><a target="_blank" href="http://baike.baidu.com/item/%E7%A6%8F%E5%AF%BF%E5%85%A8/8880654" data-lemmaid="8880654" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">福寿全</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">，是</span><a target="_blank" href="http://baike.baidu.com/item/%E7%A6%8F%E5%BB%BA" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">福建</a><a target="_blank" href="http://baike.baidu.com/item/%E7%A6%8F%E5%B7%9E/165311" data-lemmaid="165311" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">福州</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">的当地名菜，属</span><a target="_blank" href="http://baike.baidu.com/item/%E9%97%BD%E8%8F%9C%E7%B3%BB" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">闽菜系</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">。相传，它是在清</span><a target="_blank" href="http://baike.baidu.com/item/%E9%81%93%E5%85%89/10953324" data-lemmaid="10953324" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">道光</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">年间由福州聚春园菜馆老板郑春发研制出来的。佛跳墙富含营养，可促进发育，美容，延缓衰老，增强免疫力，乃进补佳品。</span>',	'/upload/ftq.jpg',NULL,		100,	100,	'no',NULL,		1,	'no',	'lao');

INSERT INTO `t_goods` VALUES(2,	'宫保鸡丁',	'宫保鸡丁色泽赤红诱人，酸辣口，鸡肉滑嫩，花生米爽脆，大葱也好吃。是一道超级下饭菜，很多饭店都有宫保鸡丁盖浇饭，和宫保鸡丁面。可见它多么随和，怎么打发都可以哈！',	'/upload/gbjd.jpg',NULL,		28,	28,	'no',	NULL,	2,	'no',	'qing');

INSERT INTO `t_goods` VALUES(3,	'酱汁皮蛋',	'<span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">皮蛋也称松花蛋，较鸭蛋含更多矿物质，脂肪和总热量却稍有下降，它能刺激消化器官，增进食欲，促进营养的消化吸收，中和胃酸，清凉，降压。具有润肺、养阴止血、凉肠、止泻、降压之功效。此外，皮蛋还有保护血管的作用。同时还有提高智商，保护大脑的功能。</span>',	'/upload/jzpd.jpg',NULL,		10,	10,	'no',NULL,		4,	'no',	'qing');

INSERT INTO `t_goods` VALUES (4,'蛋炒拉条','<span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">,蛋炒拉条，是一道北方特色家常菜，制作原料主要有面粉、猪油、鸡蛋。</span>',	'/upload/dclt.jpg',NULL,		30	,30,	'no'	,NULL,	5,	'no',	'xiao');

INSERT INTO `t_goods` VALUES (5, '水煮鱼', '<span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">水煮鱼又称</span><a target="_blank" href="http://baike.baidu.com/item/%E6%B1%9F%E6%B0%B4%E7%85%AE%E6%B1%9F%E9%B1%BC" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">江水煮江鱼</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">，是一道居住于巴蜀地区人们发明的一道菜，最早流行于四川地区（包括现重庆市）。看似原始的做法，实际做工考究--选新鲜生猛活鱼，又充分发挥辣椒御寒、益气养血功效，烹调出来的肉质一点也不会变韧，口感滑嫩，油而不腻。既去除了鱼的腥味，又保持了鱼的鲜嫩。满目的辣椒红亮养眼，辣而不燥，麻而不苦。&ldquo;麻上头，辣过瘾&rdquo;，让水煮鱼在全国流行得一塌糊涂</span>',	'/upload/szy.jpg', NULL, 50, 50, 'no', NULL, 1,	'no','zhong');

INSERT INTO `t_goods` VALUES(6,'可口可乐',	'碳酸类饮料',	'/upload/kkkl.jpg',NULL,		3,	3,	'no',NULL,		4,	'no',	'xiao');

INSERT INTO `t_goods` VALUES(7,'黄焖鸡米饭',	'<span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">黄焖鸡米饭又叫香鸡煲，浓汁鸡煲饭，是</span><a target="_blank" href="http://baike.baidu.com/item/%E9%B2%81%E8%8F%9C" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">鲁菜</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">名吃。是源自</span><a target="_blank" href="http://baike.baidu.com/item/%E5%B1%B1%E4%B8%9C/155740" data-lemmaid="155740" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">山东</a><a target="_blank" href="http://baike.baidu.com/item/%E6%B5%8E%E5%8D%97/135066" data-lemmaid="135066" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">济南</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">天桥区的汉族传统名吃，属于</span><a target="_blank" href="http://baike.baidu.com/item/%E9%B2%81%E8%8F%9C%E7%B3%BB" style="color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">鲁菜系</a><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px;">。</span>',	'/upload/hmjmf.jpg',NULL,		20,	20,	'no',NULL,		2,	'no',	'qing');


-- --------------------------------------------------------

-- 
-- 表的结构 `t_liuyan`
-- 

CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) default NULL,
  `liuyan_content` text,
  `liuyan_date` varchar(50) default NULL,
  `liuyan_user` varchar(50) default NULL,
  PRIMARY KEY  (`liuyan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_liuyan`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `t_order`
-- 

CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(50) default NULL,
  `order_date` varchar(50) default NULL,
  `order_zhuangtai` varchar(50) default NULL,
  `order_songhuodizhi` varchar(50) default NULL,
  `order_fukuangfangshi` varchar(50) default NULL,
  `order_jine` int(11) default NULL,
  `order_user_id` int(11) default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_order`
-- 

INSERT INTO `t_order` VALUES (1, '20141220115325', '2014-12-20 11:53:25', 'no', '', '货到付款', 111, 1);
INSERT INTO `t_order` VALUES (2, '20141220115335', '2014-12-20 11:53:35', 'no', '', '货到付款', 58, 1);
INSERT INTO `t_order` VALUES (3, '20141220115346', '2014-12-20 11:53:46', 'no', '', '货到付款', 50, 1);
INSERT INTO `t_order` VALUES (4, '20141220115356', '2014-12-20 11:53:56', 'no', '', '货到付款', 111, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `t_orderitem`
-- 

CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`orderItem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_orderitem`
-- 

INSERT INTO `t_orderitem` VALUES (1, 1, 5, 1);
INSERT INTO `t_orderitem` VALUES (2, 2, 3, 1);
INSERT INTO `t_orderitem` VALUES (3, 3, 1, 1);
INSERT INTO `t_orderitem` VALUES (4, 4, 5, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `t_user`
-- 

CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_pw` varchar(50) default NULL,
  `user_type` int(11) default NULL,
  `user_realname` varchar(50) default NULL,
  `user_address` varchar(50) default NULL,
  `user_sex` varchar(50) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_email` varchar(50) default NULL,
  `user_qq` varchar(50) default NULL,
  `user_man` varchar(50) default NULL,
  `user_age` varchar(50) default NULL,
  `user_birthday` varchar(50) default NULL,
  `user_xueli` varchar(50) default NULL,
  `user_del` varchar(50) default NULL,
  `user_one1` varchar(50) default NULL,
  `user_one2` varchar(50) default NULL,
  `user_one3` varchar(50) default NULL,
  `user_one4` varchar(50) default NULL,
  `user_one5` varchar(50) default NULL,
  `user_one6` int(11) default NULL,
  `user_one7` int(11) default NULL,
  `user_one8` int(11) default NULL,
  `user_one9` datetime default NULL,
  `user_one10` datetime default NULL,
  `user_one11` bigint(20) default NULL,
  `user_one12` bigint(20) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `t_user`
-- 

INSERT INTO `t_user` VALUES (1, 'ztest', '123456', 0, '张三', '北京', '男', '18300754894', '555@qq.com', '44545', NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
