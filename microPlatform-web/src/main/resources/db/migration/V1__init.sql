/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50037
Source Host           : localhost:3306
Source Database       : jeesite

Target Server Type    : MYSQL
Target Server Version : 50037
File Encoding         : 65001

Date: 2015-11-24 21:28:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) default NULL COMMENT '文章链接',
  `color` varchar(50) default NULL COMMENT '标题颜色',
  `image` varchar(255) default NULL COMMENT '文章图片',
  `keywords` varchar(255) default NULL COMMENT '关键字',
  `description` varchar(255) default NULL COMMENT '描述、摘要',
  `weight` int(11) default '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime default NULL COMMENT '权重期限',
  `hits` int(11) default '0' COMMENT '点击数',
  `posid` varchar(10) default NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) default NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) default NULL COMMENT '创建者',
  `create_date` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default NULL COMMENT '更新者',
  `update_date` datetime default NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '5', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('10', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('11', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('12', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('13', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('14', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('15', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('16', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('17', '7', '文章标题标题标题标题', '', '', '', '关键字1,关键字2', 'Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '13', ',null,', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-15 22:12:54', null, '0');
INSERT INTO `cms_article` VALUES ('18', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('19', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('2', '3', '文章标题标题标题标题', null, 'red', null, '关键字1,关键字2', '传参和传引用的问题 传slice不是传引用! 什么叫传引用? 为什么传slice不是传引用? 为什么很多人误以为slice是传引用呢? 传指针和传引用是等价的吗? 所有类型的函数参数都是传值的! 那Go语言有传引用的说法吗? 什么是引用类型, 和指针有何区别/联系 ? 总结 传参和传引用的问题 很多非官方的文档和教材(包括一些已经出版的图书), 对Go语言的传参和引用的讲解 都有很多问题. 导致众多Go语言新手对Go的函数参', '0', null, '5', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('20', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('21', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('22', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('23', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('24', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('25', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('26', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('27', '11', '文章标题标题标题标题', '', '', '', '关键字1,关键字2', '文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题', '0', null, '6', ',null,', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-15 21:08:09', null, '0');
INSERT INTO `cms_article` VALUES ('28', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('29', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('3', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('30', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', '转自 ： http://www.cnblogs.com/sevenyuan/archive/2013/04/18/3029388.html Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。为了解', '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('31', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('32', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('33', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('34', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('35', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('36', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('37', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('38', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('39', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('4', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('40', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('41', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('42', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('43', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('44', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('45', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('46', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('47', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('48', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('49', '16', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('5', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('50', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('51', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('52', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('53', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('6', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('7', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('8', '4', '文章标题标题标题标题', null, 'blue', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('9', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `cms_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) default NULL COMMENT '文章来源',
  `relation` varchar(255) default NULL COMMENT '相关文章',
  `allow_comment` char(1) default NULL COMMENT '是否允许评论',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';

-- ----------------------------
-- Records of cms_article_data
-- ----------------------------
INSERT INTO `cms_article_data` VALUES ('1', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('10', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('11', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('12', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('13', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('14', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('15', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('16', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('17', '<h1 style=\"box-sizing: border-box; font-size: 28px; margin: 0px; font-family: \'Courier New\', Verdana, monospace; font-weight: 300; line-height: 1.1; white-space: normal; padding-top: 1em; padding-left: 100px; height: 20px; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(0, 0, 0); padding-bottom: 30px; background: 10px 0.5em no-repeat rgb(249, 249, 249);\">\r\n	Happens Before</h1>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10.5px; font-size: 15px; line-height: 21.4286px; white-space: normal;\">\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	<span style=\"box-sizing: border-box;\">对于一个goroutine来说，虽然<span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">指令会被<span id=\"0_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%B1%E0%D2%EB%C6%F7&amp;k0=%B1%E0%D2%EB%C6%F7&amp;kdi0=0&amp;luki=3&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"0_nwl\" mpid=\"0\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">编译器</span></a></span>乱序重排，但</span>它其中变量的读, 写操作执行表现必须和从所写的代码得出的预期是一致的。</span><span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">但是在两个不同的goroutine对相同变量操作时, 可能因为指令重排导致不同的goroutine对变量的操作顺序的认识变得不一致。</span><span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">为了解决这种二义性问题，Go语言中引进一个happens before的概念，它用于描述对内存操作的先后顺序问题。如果事件e1</span><span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">happens before 事件 e2，事件e2 happens after e1。如果，事件e1 does not happen before 事件 e2，并且 does not happen after e2，</span><span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">事件e1和e2同时发生。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	对于一个单一的goroutine，<tt style=\"box-sizing: border-box;\">happens before</tt>&nbsp;的顺序和代码的顺序是一致的。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	为了保证读事件r可以感知对变量v的写事件，我们首先要确保w是变量v的唯一的写事件。同时还要满足以下条件：</p>\r\n<ol style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; white-space: normal; padding-left: 50px; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	<li style=\"box-sizing: border-box; list-style-type: decimal;\">\r\n		&ldquo;写事件w&rdquo; happens before &ldquo;读事件r&rdquo;。</li>\r\n	<li style=\"box-sizing: border-box; list-style-type: decimal;\">\r\n		其他对变量v的访问必须 happens before &ldquo;写事件w&rdquo; 或者 happens after &ldquo;读事件r&rdquo;。</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	第二组条件比第一组条件更加严格。因为，它要求在w和 r并行执行的程序中不能再有其他的读操作。<span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">对于在单一的goroutine中两组条件是等价的，读事件可以确保感知到对变量的写事件。但是，对于在 两个goroutines共享变量v，我们必须通过同步事件来保证 happens-before 条件 （这是读事件感知写事件的必要条件）。</span></p>\r\n<h1 style=\"box-sizing: border-box; font-size: 28px; margin: 0px; font-family: \'Courier New\', Verdana, monospace; font-weight: 300; line-height: 1.1; white-space: normal; padding-top: 1em; padding-left: 100px; height: 20px; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(0, 0, 0); padding-bottom: 30px; background: 10px 0.5em no-repeat rgb(249, 249, 249);\">\r\n	<a name=\"同步(Synchronization)\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>同步(Synchronization)</h1>\r\n<h2 style=\"box-sizing: border-box; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: 300; line-height: 1.1; margin-top: 10px; margin-bottom: 10.5px; font-size: 21px; white-space: normal;\">\r\n	<a name=\"初始化\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>初始化</h2>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	<span style=\"box-sizing: border-box;\">程序的初始化在一个独立的goroutine中执行。初始化goroutine执行完成后，启动过程中建立的其他goroutine会自动启动。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	<span style=\"box-sizing: border-box;\">然后会执行init<span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">初始化</span>函数。</span><span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">如果包p导入了包q，包q的init<span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">初始化</span><span id=\"2_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%BA%AF%CA%FD&amp;k0=%BA%AF%CA%FD&amp;kdi0=0&amp;luki=4&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"2_nwl\" mpid=\"2\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">函数</span></a></span>将在包p的初始化之前执行。init中创建的goroutine会在init结束后执行。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	init结束后，程序的入口函数&nbsp;<tt style=\"box-sizing: border-box;\">main.main</tt>&nbsp;启动。</p>\r\n<h2 style=\"box-sizing: border-box; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: 300; line-height: 1.1; margin-top: 10px; margin-bottom: 10.5px; font-size: 21px; white-space: normal;\">\r\n	<a name=\"Goroutine的创建\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>Goroutine的创建</h2>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	例如，下面的程序：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">var a string;\r\n\r\nfunc f() {\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}\r\n\r\nfunc hello() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        go f();\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	调用hello<span id=\"7_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%BA%AF%CA%FD&amp;k0=%BA%AF%CA%FD&amp;kdi0=0&amp;luki=4&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"7_nwl\" mpid=\"7\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">函数</span></a></span>，会在某个时刻<span id=\"8_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%B4%F2%D3%A1&amp;k0=%B4%F2%D3%A1&amp;kdi0=0&amp;luki=1&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"8_nwl\" mpid=\"8\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">打印</span></a></span>&ldquo;hello, world&rdquo;（有可能是在hello函数返回之后）。</p>\r\n<h2 style=\"box-sizing: border-box; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: 300; line-height: 1.1; margin-top: 10px; margin-bottom: 10.5px; font-size: 21px; white-space: normal;\">\r\n	<a name=\"Channel_communication_管道通信\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>Channel communication 管道通信</h2>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	用管道通信是两个goroutines之间同步的主要方法。通常的用法是不同的goroutines对同一个管道进行读写操作，一个goroutines写入到管道中，另一个goroutines从管道中读数据。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	管道上的发送操作发生在管道的接收完成之前（happens before）。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	例如这个程序：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\nvar c = make(chan int, 10<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">)\r\nvar a string\r\n\r\nfunc f() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        c </span>&lt;-<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> 0;\r\n}\r\n\r\nfunc main() {\r\n        go f();\r\n        </span>&lt;-<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">c;\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	可以确保会输出&quot;hello, world&quot;。因为，a的赋值发生在向管道 c发送数据之前，而管道的发送操作在管道接收完成之前发生。因此，在print 的时候，a已经被赋值。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	从一个unbuffered管道接收数据在向管道发送数据完成之前发送。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	下面的是示例程序：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\nvar c =<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> make(chan int)\r\nvar a string\r\n\r\nfunc f() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        </span>&lt;-<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">c;\r\n}\r\nfunc main() {\r\n        go f();\r\n        c </span>&lt;-<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> 0;\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	同样可以确保输出&ldquo;hello, world&rdquo;。因为，a的赋值在从<span id=\"6_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%B9%DC%B5%C0&amp;k0=%B9%DC%B5%C0&amp;kdi0=0&amp;luki=5&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"6_nwl\" mpid=\"6\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">管道</span></a></span>接收数据 前发生，而从管道接收数据操作在向unbuffered 管道发送完成之前发生。所以，在print 的时候，a已经被赋值。<span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">如果用的是缓冲<span id=\"1_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%B9%DC%B5%C0&amp;k0=%B9%DC%B5%C0&amp;kdi0=0&amp;luki=5&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"1_nwl\" mpid=\"1\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">管道</span></a></span>（如&nbsp;</span><tt style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">c = make(chan int, 1)</tt><span style=\"box-sizing: border-box; font-size: 13.3333px; line-height: 19.2px;\">&nbsp;），将不能保证输出 &ldquo;hello, world&rdquo;结果（可能会是空字符串，但肯定不会是他未知的字符串， 或导致程序崩溃）。</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: 300; line-height: 1.1; margin-top: 10px; margin-bottom: 10.5px; font-size: 21px; white-space: normal;\">\r\n	<a name=\"锁\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>锁</h2>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	包sync实现了两种类型的锁：&nbsp;<tt style=\"box-sizing: border-box;\">sync.Mutex</tt>&nbsp;和&nbsp;<tt style=\"box-sizing: border-box;\">sync.RWMutex</tt>。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	对于任意&nbsp;<tt style=\"box-sizing: border-box;\">sync.Mutex</tt>&nbsp;或&nbsp;<tt style=\"box-sizing: border-box;\">sync.RWMutex</tt>&nbsp;变量l。 如果&nbsp;<tt style=\"box-sizing: border-box;\">n &lt; m</tt>&nbsp;，那么第n次&nbsp;<tt style=\"box-sizing: border-box;\">l.Unlock()</tt>&nbsp;调用在第 m次&nbsp;<tt style=\"box-sizing: border-box;\">l.Lock()</tt>调用返回前发生。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	例如程序：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">var l sync.Mutex\r\nvar a string\r\n\r\nfunc f() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        l.Unlock();\r\n}\r\n\r\nfunc main() {\r\n        l.Lock();\r\n        go f();\r\n        l.Lock();\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	可以确保输出&ldquo;hello, world&rdquo;结果。因为，第一次&nbsp;<tt style=\"box-sizing: border-box;\">l.Unlock()</tt>&nbsp;调用（在f函数中）在第二次&nbsp;<tt style=\"box-sizing: border-box;\">l.Lock()</tt>&nbsp;调用（在main 函数中）返回之前发生，也就是在&nbsp;<tt style=\"box-sizing: border-box;\">print</tt>&nbsp;<span id=\"5_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%BA%AF%CA%FD&amp;k0=%BA%AF%CA%FD&amp;kdi0=0&amp;luki=4&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"5_nwl\" mpid=\"5\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">函数</span></a></span>调用之前发生。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	For any call to&nbsp;<tt style=\"box-sizing: border-box;\">l.RLock</tt>&nbsp;on a&nbsp;<tt style=\"box-sizing: border-box;\">sync.RWMutex</tt>&nbsp;variable l, there is an n such that the&nbsp;<tt style=\"box-sizing: border-box;\">l.RLock</tt>&nbsp;happens (returns) after the n&#39;th call to&nbsp;<tt style=\"box-sizing: border-box;\">l.Unlock</tt>&nbsp;and the matching&nbsp;<tt style=\"box-sizing: border-box;\">l.RUnlock</tt>&nbsp;happens before the&nbsp;<tt style=\"box-sizing: border-box;\">n+1&#39;th</tt>&nbsp;<span id=\"4_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=call&amp;k0=call&amp;kdi0=0&amp;luki=2&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"4_nwl\" mpid=\"4\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">call</span></a></span>&nbsp;to l.Lock.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-weight: 300; line-height: 1.1; margin-top: 10px; margin-bottom: 10.5px; font-size: 21px; white-space: normal;\">\r\n	<a name=\"Once\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>Once</h2>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	包once提供了一个在多个goroutines中进行初始化的方法。多个goroutines可以 通过&nbsp;<tt style=\"box-sizing: border-box;\">once.Do(f)</tt>&nbsp;方式调用f函数。但是，f函数 只会被执行一次，其他的调用将被阻塞直到唯一执行的f()返回。<tt style=\"box-sizing: border-box;\">once.Do(f)</tt>&nbsp;中唯一执行的f()发生在所有的&nbsp;<tt style=\"box-sizing: border-box;\">once.Do(f)</tt>&nbsp;返回之前。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	有代码：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">var a string\r\n\r\nfunc setup() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n}\r\n\r\nfunc doprint() {\r\n        once.Do(setup);\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}\r\n\r\nfunc twoprint() {\r\n        go doprint();\r\n        go doprint();\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	调用twoprint会输出&ldquo;hello, world&rdquo;两次。第一次twoprint 函数会运行setup唯一一次。</p>\r\n<h1 style=\"box-sizing: border-box; font-size: 28px; margin: 0px; font-family: \'Courier New\', Verdana, monospace; font-weight: 300; line-height: 1.1; white-space: normal; padding-top: 1em; padding-left: 100px; height: 20px; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: rgb(0, 0, 0); padding-bottom: 30px; background: 10px 0.5em no-repeat rgb(249, 249, 249);\">\r\n	<a name=\"错误的同步方式\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background-image: initial; background-position: initial; background-repeat: initial;\" target=\"_blank\"></a>错误的同步方式</h1>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	注意：变量读操作虽然可以侦测到变量的写操作，但是并不能保证对变量的读操作就一定发生在写操作之后。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	例如：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">var a, b int\r\n\r\nfunc f() {\r\n        a </span>= 1<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        b </span>= 2<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n}\r\n\r\nfunc g() {\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(b);\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}\r\n\r\nfunc main() {\r\n        go f();\r\n        g();\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	函数g可能输出2，也可能输出0。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	这种情形使得我们必须回避一些看似合理的用法。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	这里用Double-checked locking的方法来代替同步。在例子中，twoprint函数可能得到错误的值：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">var a string\r\nvar done bool\r\n\r\nfunc setup() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        done </span>=<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> true;\r\n}\r\n\r\nfunc doprint() {\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">if</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> !done {\r\n                once.Do(setup);\r\n        }\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}\r\n\r\nfunc twoprint() {\r\n        go doprint();\r\n        go doprint();\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	在doprint函数中，写done暗示已经给a赋值了，但是没有办法给出保证这一点，所以函数可能输出空的值。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	另一个错误陷阱是忙等待：</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">var a string\r\nvar done bool\r\n\r\nfunc setup() {\r\n        a </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        done </span>=<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> true;\r\n}\r\n\r\nfunc main() {\r\n        go setup();\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">for</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> !done {\r\n        }\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(a);\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	我们没有办法保证在main中看到了done值被修改的同时也 能看到a被修改，因此程序可能输出空字符串。更坏的结果是，main&nbsp;<span id=\"3_nwp\" style=\"box-sizing: border-box; width: auto; height: auto; float: none;\"><a href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=18&amp;is_app=0&amp;jk=b5a56db057e47b4f&amp;k=%BA%AF%CA%FD&amp;k0=%BA%AF%CA%FD&amp;kdi0=0&amp;luki=4&amp;n=10&amp;p=baidu&amp;q=74042097_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=4f7be457b06da5b5&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1989498&amp;tu=u1989498&amp;u=http%3A%2F%2Fstudygolang%2Ecom%2Farticles%2F4814&amp;urlid=0\" id=\"3_nwl\" mpid=\"3\" style=\"box-sizing: border-box; color: rgb(39, 128, 227); background: transparent;\" target=\"_blank\"><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); font-size: 13.3333px; width: auto; height: auto;\">函数</span></a></span>可能永远不知道done被修改，因为在两个线程之间没有同步操作，这样main 函数永远不能返回。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	下面的用法本质上也是同样的问题.</p>\r\n<div class=\"cnblogs_code\" style=\"box-sizing: border-box; font-size: 15px; line-height: 21.4286px; white-space: normal; border: 1px solid rgb(204, 204, 204); padding: 5px; overflow: auto; margin: 5px 0px; font-family: \'Courier New\' !important; background-color: rgb(245, 245, 245);\">\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n	<pre style=\"box-sizing: border-box; overflow: auto; font-size: 14px; padding: 10px; margin-top: 0px; margin-bottom: 0px; line-height: 1.42857; word-break: break-all; border: 1px solid rgb(204, 204, 204); border-radius: 0px; font-family: \'Courier New\' !important;\">\r\n<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">type T struct {\r\n        msg string;\r\n}\r\n\r\nvar g </span>*<span style=\"box-sizing: border-box; line-height: 1.5 !important;\">T\r\n\r\nfunc setup() {\r\n        t :</span>=<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> new(T);\r\n        t.msg </span>= <span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">hello, world</span><span style=\"box-sizing: border-box; color: rgb(128, 0, 0); line-height: 1.5 !important;\">&quot;</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">;\r\n        g </span>=<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> t;\r\n}\r\n\r\nfunc main() {\r\n        go setup();\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">for</span> g ==<span style=\"box-sizing: border-box; line-height: 1.5 !important;\"> nil {\r\n        }\r\n        </span><span style=\"box-sizing: border-box; color: rgb(0, 0, 255); line-height: 1.5 !important;\">print</span><span style=\"box-sizing: border-box; line-height: 1.5 !important;\">(g.msg);\r\n}</span></pre>\r\n	<div class=\"cnblogs_code_toolbar\" style=\"box-sizing: border-box; margin-top: 5px;\">\r\n		<span class=\"cnblogs_code_copy\" style=\"box-sizing: border-box; padding-right: 5px; line-height: 1.5 !important;\"><a style=\"box-sizing: border-box; color: rgb(0, 102, 170); border: none !important; background: transparent;\" target=\"_blank\" title=\"复制代码\"><img alt=\"复制代码\" src=\"http://common.cnblogs.com/images/copycode.gif\" style=\"box-sizing: border-box; border-style: none !important; border-width: initial !important; max-width: 780px !important;\" /></a></span></div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	即使main观察到了&nbsp;<tt style=\"box-sizing: border-box;\">g != nil</tt>&nbsp;条件并且退出了循环，但是任何然 不能保证它看到了g.msg的初始化之后的结果。</p>\r\n<p style=\"box-sizing: border-box; margin: 10px auto; white-space: normal; font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 19.2px;\">\r\n	在这些例子中，只有一种解决方法：用显示的同步。</p>', '来源', '1,2,3,', '1');
INSERT INTO `cms_article_data` VALUES ('18', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('19', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('2', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('20', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('21', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('22', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('23', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('24', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('25', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('26', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('27', '<p>\r\n	文章内容内容内容内容</p>', '来源', '1,2,3,', '1');
INSERT INTO `cms_article_data` VALUES ('28', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('29', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('3', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('30', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('31', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('32', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('33', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('34', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('35', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('36', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('37', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('38', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('39', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('4', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('40', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('41', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('42', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('43', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('44', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('45', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('46', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('47', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('48', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('49', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('5', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('50', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('51', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('52', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('53', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('6', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('7', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('8', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('9', '文章内容内容内容内容', '来源', '1,2,3', '1');

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) default '1' COMMENT '站点编号',
  `office_id` varchar(64) default NULL COMMENT '归属机构',
  `module` varchar(20) default NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) default NULL COMMENT '栏目图片',
  `href` varchar(255) default NULL COMMENT '链接',
  `target` varchar(20) default NULL COMMENT '目标',
  `description` varchar(255) default NULL COMMENT '描述',
  `keywords` varchar(255) default NULL COMMENT '关键字',
  `sort` int(11) default '30' COMMENT '排序（升序）',
  `in_menu` char(1) default '1' COMMENT '是否在导航中显示',
  `in_list` char(1) default '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) default '0' COMMENT '展现方式',
  `allow_comment` char(1) default NULL COMMENT '是否允许评论',
  `is_audit` char(1) default NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) default NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) default NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) default NULL COMMENT '创建者',
  `create_date` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default NULL COMMENT '更新者',
  `update_date` datetime default NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '0', '0,', '0', '1', null, '顶级栏目', null, null, null, null, null, '0', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('10', '1', '0,1,', '1', '4', 'article', '移动应用', '', '', '', '', '', '20', '1', '1', '0', '1', '0', '', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-13 13:28:59', null, '0');
INSERT INTO `cms_category` VALUES ('11', '10', '0,1,10,', '1', '4', 'article', '网络工具', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('12', '10', '0,1,10,', '1', '4', 'article', '浏览工具', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('13', '10', '0,1,10,', '1', '4', 'article', '浏览辅助', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('14', '10', '0,1,10,', '1', '4', 'article', '网络优化', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('15', '10', '0,1,10,', '1', '4', 'article', '邮件处理', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('16', '10', '0,1,10,', '1', '4', 'article', '下载工具', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('17', '10', '0,1,10,', '1', '4', 'article', '搜索工具', null, null, null, null, null, '50', '1', '1', '2', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('18', '1', '0,1,', '1', '5', 'article', '大数据', '', '', '', '', '', '90', '1', '1', '0', '1', '0', '', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-13 13:31:04', null, '0');
INSERT INTO `cms_category` VALUES ('19', '18', '0,1,18,', '1', '5', 'link', '常用网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('2', '1', '0,1,', '1', '3', 'article', 'JAVA语言', '', '', '', '', '', '10', '1', '1', '0', '1', '1', '', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-16 20:41:55', null, '0');
INSERT INTO `cms_category` VALUES ('20', '18', '0,1,18,', '1', '5', 'link', '门户网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('21', '18', '0,1,18,', '1', '5', 'link', '购物网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('22', '18', '0,1,18,', '1', '5', 'link', '交友社区', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('23', '18', '0,1,18,', '1', '5', 'link', '音乐视频', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('24', '1', '0,1,', '1', '6', 'link', '云计算', '', '', '', '', '', '90', '1', '1', '0', '1', '0', '', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-13 13:30:35', null, '0');
INSERT INTO `cms_category` VALUES ('25', '1', '0,1,', '1', '6', null, '全文检索', null, '/search', null, null, null, '90', '0', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('26', '1', '0,1,', '2', '6', 'article', '测试栏目', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('27', '1', '0,1,', '1', '6', null, '公共留言', null, '/guestbook', null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('3', '2', '0,1,2,', '1', '3', 'article', '网站简介', null, null, null, null, null, '30', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('4', '2', '0,1,2,', '1', '3', 'article', '内部机构', null, null, null, null, null, '40', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('5', '2', '0,1,2,', '1', '3', 'article', '地方机构', null, null, null, null, null, '50', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('6', '1', '0,1,', '1', '3', 'article', 'Docker', '', '', '', '', '', '20', '1', '1', '1', '1', '0', '', '', '', '1', '2013-05-27 08:00:00', '1', '2015-09-13 13:29:18', null, '0');
INSERT INTO `cms_category` VALUES ('7', '6', '0,1,6,', '1', '3', 'article', '产品质量', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('8', '6', '0,1,6,', '1', '3', 'article', '技术质量', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('9', '6', '0,1,6,', '1', '3', 'article', '工程质量', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) default NULL COMMENT '栏目内容的标题',
  `content` varchar(255) default NULL COMMENT '评论内容',
  `name` varchar(100) default NULL COMMENT '评论姓名',
  `ip` varchar(100) default NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) default NULL COMMENT '审核人',
  `audit_date` datetime default NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) default NULL COMMENT '回复人',
  `re_date` datetime default NULL COMMENT '回复时间',
  `re_content` varchar(100) default NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of cms_guestbook
-- ----------------------------
INSERT INTO `cms_guestbook` VALUES ('d7bf2c8c8792482c881f62e8b209b46e', '2', '测试信息', '测试信息', 'wan_liang@126.com', '18612302838', '测试信息', '127.0.0.1', '2015-09-13 18:09:21', '1', '2015-09-13 18:10:58', '谢谢你的建议', '0');

-- ----------------------------
-- Table structure for `cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) default NULL COMMENT '标题颜色',
  `image` varchar(255) default NULL COMMENT '链接图片',
  `href` varchar(255) default NULL COMMENT '链接地址',
  `weight` int(11) default '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime default NULL COMMENT '权重期限',
  `create_by` varchar(64) default NULL COMMENT '创建者',
  `create_date` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default NULL COMMENT '更新者',
  `update_date` datetime default NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('1', '19', 'JeeSite', null, null, 'http://thinkgem.github.com/jeesite', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('10', '22', '58同城', null, null, 'http://www.58.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('11', '23', '视频大全', null, null, 'http://v.360.cn/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('12', '23', '凤凰网', null, null, 'http://www.ifeng.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('2', '19', 'ThinkGem', null, null, 'http://thinkgem.iteye.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('3', '19', '百度一下', null, null, 'http://www.baidu.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('4', '19', '谷歌搜索', null, null, 'http://www.google.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('5', '20', '新浪网', null, null, 'http://www.sina.com.cn', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('6', '20', '腾讯网', null, null, 'http://www.qq.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('7', '21', '淘宝网', null, null, 'http://www.taobao.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('8', '21', '新华网', null, null, 'http://www.xinhuanet.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('9', '22', '赶集网', null, null, 'http://www.ganji.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `cms_site`
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) default NULL COMMENT '站点Logo',
  `domain` varchar(255) default NULL COMMENT '站点域名',
  `description` varchar(255) default NULL COMMENT '描述',
  `keywords` varchar(255) default NULL COMMENT '关键字',
  `theme` varchar(255) default 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) default NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) default NULL COMMENT '创建者',
  `create_date` datetime default NULL COMMENT '创建时间',
  `update_by` varchar(64) default NULL COMMENT '更新者',
  `update_date` datetime default NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES ('1', '默认站点', '微点', '', null, '微点', 'JeeSite', 'basic', '<p>\r\n	Copyright &copy; 2014-2015 wanliang - Powered By we-dian V1.0</p>', '', '1', '2013-05-27 08:00:00', '1', '2015-09-05 18:02:04', null, '0');
INSERT INTO `cms_site` VALUES ('2', '子站点测试', 'JeeSite Subsite', null, null, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) default NULL COMMENT '区域编码',
  `type` char(1) default NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', '10', '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '山东省', '20', '110000', '2', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '济南市', '30', '110101', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('4', '3', '0,1,2,3,', '历城区', '40', '110102', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('5', '3', '0,1,2,3,', '历下区', '50', '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('6', '3', '0,1,2,3,', '高新区', '60', '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) default '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通告', 'oa_notify_type', '通知通告类型', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('106', '2', '奖惩通告', 'oa_notify_type', '通知通告类型', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('107', '3', '活动通告', 'oa_notify_type', '通知通告类型', '30', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('62', '1', '公休', 'oa_leave_type', '请假类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('63', '2', '病假', 'oa_leave_type', '请假类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('64', '3', '事假', 'oa_leave_type', '请假类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('65', '4', '调休', 'oa_leave_type', '请假类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('66', '5', '婚假', 'oa_leave_type', '请假类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('69', 'leave', '请假流程', 'act_type', '流程类型', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('70', 'test_audit', '审批测试流程', 'act_type', '流程类型', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('71', '1', '分类1', 'act_category', '流程分类', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('72', '2', '分类2', 'act_category', '流程分类', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) default '1' COMMENT '日志类型',
  `title` varchar(500) default NULL COMMENT '标题',
  `create_by` varchar(64) default NULL COMMENT '创建者',
  `create_date` datetime default NULL COMMENT '创建时间',
  `remote_addr` varchar(255) default NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) default NULL COMMENT '用户代理',
  `request_uri` varchar(255) default NULL COMMENT '请求URI',
  `method` varchar(5) default NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY  (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0101c386ebba4d979c72d6095cc84947', '1', '系统登录', '1', '2015-09-15 21:07:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('01ddda9e73934f4595f6996d708240b7', '1', '内容管理-栏目设置-栏目管理', '1', '2015-08-02 11:11:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/category/', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('0210d125c3d149c8bdfd32bcd850d244', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-13 13:29:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('025f9b50d7954a1194868de2f25c6ced', '1', '内容管理-内容管理', '1', '2015-06-08 09:26:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('026fed8866804980aa82b3bd2f65b4a4', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-05 16:07:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=3', '');
INSERT INTO `sys_log` VALUES ('02d368a6fb114d2395b0cd9f299a48f5', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-05 16:07:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=2', '');
INSERT INTO `sys_log` VALUES ('02f608d29e7248c8add578f2d7a8b3b9', '1', '在线办公-通知通告-我的通告', '1', '2015-08-03 20:02:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('04936cdb638d40b8a38e1f4fe192677f', '1', '我的面板-个人信息-个人信息', '1', '2015-08-02 11:11:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('05276e5b736d40e6979bc0f53e81e0fc', '1', '在线办公-通知通告-通告管理', '1', '2015-09-05 16:03:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/oa/oaNotify', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('055321823d0341328fb1a348f426fc79', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-09-19 23:06:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/comment/', 'POST', 'module=article&contentId=8&status=0&___t0.6591643164865673=', '');
INSERT INTO `sys_log` VALUES ('05a9949a8caa45e2a91dbf6f8ccc3f68', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:27:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('06a4535e957c4a8a85ea1a8a1547430e', '1', '系统登录', '1', '2015-03-16 12:49:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('07eb3302ebe04cd59c0cdbae2bb60356', '1', '绯荤��诲�', '1', '2015-09-13 11:38:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('08220fe9b590408286b0c1baaeeac414', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-19 23:07:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/form', 'GET', 'id=10', '');
INSERT INTO `sys_log` VALUES ('0961db3b4df94726a43134632de286fc', '1', '内容管理-内容管理', '1', '2015-08-02 11:11:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('09dd2f1c752e4e0fb86e429f5466f721', '1', '绯荤��诲�', '1', '2015-09-13 18:10:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0a014a83d2a44c3ba2b6cdebcca4776b', '1', '绯荤��诲�', '1', '2015-09-05 18:21:56', '192.168.0.100', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H321 Safari/600.1.4', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0a97fa42499443f6a93c016111fef0a2', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-09-19 23:06:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/guestbook/', 'GET', 'status=2&tabPageId=jerichotabiframe_7', '');
INSERT INTO `sys_log` VALUES ('0ba7fc2e494946cd832e59fe60c46bef', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0c1058f23051428f8cb35ae7cc6a5a44', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0c1de0adffd744c4a8ddcadf1d50f40f', '1', '内容管理-内容管理', '1', '2015-03-16 12:49:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0d800e354e804028b256578ea72e5d98', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-03-20 10:12:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=3', '');
INSERT INTO `sys_log` VALUES ('0dedaa33f3c5436895194dca74308cdf', '1', '内容管理-内容管理', '1', '2015-09-19 23:05:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e987af5ecc945c69ff62121ba00a7da', '1', '我的面板-个人信息-修改密码', '1', '2015-03-16 12:49:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/sys/user/modifyPwd', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('0ef96bed221641819bd6611d9e34cb82', '1', '系统设置-系统设置-字典管理', '1', '2015-06-08 09:13:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('11300159642c4c1bbc64ac8d1e494032', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-16 20:41:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('124a658687d54cbe98b40fe0e18e172e', '1', '在线办公-通知通告-我的通告', '1', '2015-08-03 20:02:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('12da4464a9654a608dd6f6c330b7f92e', '1', '系统设置-机构用户-用户管理', '1', '2015-06-08 09:09:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('15000a5fdf5146eaa817c0786e0116cd', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-16 20:41:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('15278cf93d8043b695994c54c02c754e', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-06-08 09:13:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('1568e8f20fe74d0aa67836d32046bdaa', '1', '系统设置-系统设置-菜单管理', '1', '2015-06-08 09:13:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('157d94fcbb9e4bceafc8f648c6e10d84', '1', '系统登录', '1', '2015-08-02 10:59:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('16406cb829ae4ec6aa19fba4667a39b0', '1', '我的面板-个人信息-个人信息', '1', '2015-08-03 19:55:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('175fdc954fc147f8ad857f52d2ac60a2', '1', '内容管理-栏目设置-站点设置-查看', '1', '2015-09-16 20:41:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/site/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('180e0f8a815b44848843185e78bb5cee', '1', '我的面板-个人信息-个人信息', '1', '2015-06-08 10:07:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('180eec45207e4c6aae0faa34ad77d10b', '1', '内容管理-内容管理-内容发布', '1', '2015-06-08 09:09:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('186c5c3b69dd463282d4794a7b575c86', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-09-13 18:10:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/guestbook/', 'GET', 'repage=&status=2', '');
INSERT INTO `sys_log` VALUES ('196f46170537415fab0b872182d7f2fe', '2', '内容管理-栏目设置-栏目管理-修改', '1', '2015-08-02 11:02:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/category/save', 'POST', 'id=24&office.id=6&office.name=研发部&parent.id=1&parent.name=顶级栏目&module=&name=公众号管理&image=&href=/weixin/index.shtml&target=_blank&description=&keywords=&sort=90&inMenu=1&inList=1&showModes=0&allowComment=1&isAudit=0&customListView=&customContentView=&viewConfig=', 'javax.servlet.ServletException: Could not resolve view with name \'redirect:/a/cms/category/\' in servlet with name \'springServlet\'\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1204)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:863)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:648)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:291)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:219)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:142)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:610)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:518)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1091)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:668)\r\n	at org.apache.coyote.http11.Http11AprProtocol$Http11ConnectionHandler.process(Http11AprProtocol.java:283)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.doRun(AprEndpoint.java:2463)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.run(AprEndpoint.java:2452)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');
INSERT INTO `sys_log` VALUES ('19ec43fd6632475aa016bd3883c7930f', '1', '我的面板-个人信息-个人信息', '1', '2015-03-16 13:24:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('1b17b66feb9d4ee78c5bd2f389c4a3c4', '1', '内容管理-内容管理', '1', '2015-09-15 21:07:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1c1ed31cb7fb48c8bb25776c30bb3308', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:04:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1cde3331fd414f4ab069ad61df819c4b', '1', '内容管理-栏目设置-栏目管理-修改', '1', '2015-09-13 13:29:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/save', 'POST', 'id=6&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=Docker&image=&href=&target=&description=&keywords=&sort=20&inMenu=1&inList=1&showModes=1&allowComment=1&isAudit=0&customListView=&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('1f311d58eae246c587304c83eb047959', '1', '系统登录', '1', '2015-08-02 09:37:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=cece7fe0f70a4095928828b906631f4b', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('1f941ae54f3c4a4aa17cb3e1185253bf', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 10:42:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('20e1279a4e044d52a839f1d66f94281a', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-10-31 20:09:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('216a9aba47fb4448adef30eeaea64d3a', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 13:51:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('21f81cee112440459ec31d2e1c993525', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-19 23:05:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/findByIds', 'GET', 'ids=1,2,3', '');
INSERT INTO `sys_log` VALUES ('2808fcbdbe38454192b057ab69739ba5', '1', '内容管理-内容管理', '1', '2015-10-31 20:09:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('28e86cc314334d70b71057547faa3da5', '1', '内容管理-内容管理', '1', '2015-09-16 20:41:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('29fbce3fab60469ab2cbe9667fed60bd', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 11:23:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('2b0e494d213541269322997c009ec065', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-15 21:08:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'repage=&category.id=11', '');
INSERT INTO `sys_log` VALUES ('2b36c8aba9b144bc9b57e2171abdfaf1', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 18:10:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('2bbd4f0835284938804cde6c4daf4800', '1', '内容管理-内容管理-内容发布', '1', '2015-09-05 16:06:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2cb65834fb91403fb7a8337397d91104', '1', '系统登录', '1', '2015-06-08 09:08:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2d541a5342ec41d499307e24dd3cf1d7', '1', '系统设置-机构用户-用户管理', '1', '2015-06-08 09:13:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2e5c5e071e9b423fac17a1c09af08a4c', '1', '内容管理-内容管理-内容发布', '1', '2015-09-16 20:41:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('2e6a6c9754664277a804ee3332744a50', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-05 18:00:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('30db671f250e4b91a0ef074dd584fed4', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('34b2c1e879fe4384ad66885f32c00aec', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:29:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=24', '');
INSERT INTO `sys_log` VALUES ('36f885ff30e447a09e1aa9924366e05b', '1', '内容管理-内容管理-内容发布', '1', '2015-06-08 09:26:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3707c07834524b019eec461463bb1c6c', '1', '内容管理-内容管理', '1', '2015-09-05 18:00:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('374dad34825c44ba9639849b8f341b02', '1', '在线办公-通知通告-我的通告', '1', '2015-06-08 09:26:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('37cf057183294f908aa2b0df785217b0', '1', '内容管理-内容管理', '1', '2015-06-08 09:13:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('37d6604efdd9448db294daa6258ab7db', '1', '内容管理-内容管理', '1', '2015-09-13 13:27:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3839c16e3b094176a287690520de8d6f', '1', '内容管理-内容管理', '1', '2015-09-05 16:07:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('38efebfa8ab04a00a3cd135decc64304', '1', '内容管理-内容管理', '1', '2015-09-13 13:27:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3906a3d8b5844e399b895d2aa69a0e2a', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:28:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=10', '');
INSERT INTO `sys_log` VALUES ('39f83fc443b745cf8c0e6fe84cad5781', '1', '我的面板-个人信息-个人信息', '1', '2015-08-02 10:04:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('3a6aef2b26594cfba778e054db111ea9', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3bd9f75c6f614a29b5142a4af4b9728f', '1', '绯荤��诲�', '1', '2015-09-13 11:23:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3d8915716159454ba6a3bf24f7849257', '1', '我的面板-个人信息-个人信息', '1', '2015-09-15 21:07:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('3f9ff8b1e660416d8d6cbcf461b973c8', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-08-02 11:01:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/category/form', 'GET', 'id=24', '');
INSERT INTO `sys_log` VALUES ('401985722a3945c8b617ea74b64986de', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-06-08 09:09:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('40a9b1c27ee34cc5954543bc4dc612bf', '1', '代码生成-代码生成-业务表配置', '1', '2015-09-05 16:03:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_6', '');
INSERT INTO `sys_log` VALUES ('40c6bd57f44147afa4ab42f91be39d5c', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-05 16:04:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('40f3c7e71b5c4e8697b0b06156b12ad9', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:04:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('41131128a86c43e2857961522a63f9c4', '1', '在线办公-通知通告-我的通告', '1', '2015-03-16 12:49:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('41e93ca0e529437ca3ef967fdd22c4f2', '1', '内容管理-内容管理', '1', '2015-08-02 11:01:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('42af7c06a8354f68ba29d8f1e3c65442', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-15 22:11:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/form', 'GET', 'id=17', '');
INSERT INTO `sys_log` VALUES ('450a66b7c0c9445cb7f7ab8ebdae054a', '1', '内容管理-内容管理', '1', '2015-09-13 18:10:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('46ace5dbb6944c3c9f53a47f65928c7c', '1', '内容管理-内容管理', '1', '2015-03-20 10:12:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4721e82bcc3a437fa1644743f7c7ff39', '1', '内容管理-内容管理', '1', '2015-09-16 20:41:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('48ee6c26c6ff4a80ab060d04e5f2e493', '1', '内容管理-栏目设置-站点设置-查看', '1', '2015-09-19 23:06:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/site/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('48faf8e1520d4c63913ec03eb3028532', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 17:16:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('4939e27549a5477e8f780f862d52d068', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-13 13:30:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4970d1617dcc436da9c7b6178a144d92', '1', '内容管理-栏目设置-站点设置', '1', '2015-09-16 20:41:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/site/', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('4a2adece972a4d47845562f762c2890a', '1', '我的面板-个人信息-个人信息', '1', '2015-06-08 14:54:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4b0a935ad172400b93dd86226819acbd', '1', '内容管理-栏目设置-切换站点', '1', '2015-06-08 09:26:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/site/select', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4bea076a53e34cd1a52413ceffcdec24', '1', '内容管理-统计分析-信息量统计', '1', '2015-09-19 23:06:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/stats/article', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('4cc7eaa44dde433fae9d7be6e354e9b6', '1', '内容管理-栏目设置-站点设置', '1', '2015-09-05 18:02:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/site/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('4dd308c9d1364f6baed5426f15d492d4', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-13 13:27:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('4e618bfd0ba14d7a8605e35b7947c9f1', '1', '我的面板-个人信息-个人信息', '1', '2015-03-20 10:12:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('4f52bbdc0ddc41d19df5d153be18a932', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-05 18:22:01', '192.168.0.100', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H321 Safari/600.1.4', '/a/sys/user', 'GET', 'test=abc', '');
INSERT INTO `sys_log` VALUES ('51ecb1152cd5460f8edcd9e93a1f4749', '1', '内容管理-栏目设置-栏目管理-修改', '1', '2015-09-16 20:41:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/save', 'POST', 'id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=JAVA语言&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=1&isAudit=1&customListView=&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('52bea16034a04683930a39de0c48b5da', '1', '内容管理-内容管理', '1', '2015-06-08 09:09:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('534df145ccb74e6ca7af6d7aaf5efd8f', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 13:51:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('5390d181a5c5409e8a80ebf405fb1a8d', '1', '内容管理-内容管理', '1', '2015-10-31 20:09:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5585b01c9a60488a987c9a608aeb02eb', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-03-16 12:50:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('55f8219d4643483f922ad0c07b51b75c', '1', '系统登录', '1', '2015-03-16 13:24:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5788e6705fc746a78de180473b43af42', '1', '内容管理-内容管理', '1', '2015-09-15 21:07:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('58885cd1215a4834849e2b028381ff08', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('58c5d9e3544e47b7af29d785a49c6b9b', '1', '系统登录', '1', '2015-10-31 20:09:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('59832bcc81144111b286b9724c73f864', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-16 20:42:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=10', '');
INSERT INTO `sys_log` VALUES ('5b79aa87f0774e27b5e225af5348a961', '1', '内容管理-内容管理', '1', '2015-09-19 23:05:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5bfdc2aac29f4644881464b3c81735cb', '1', '系统设置-机构用户-用户管理', '1', '2015-09-05 16:04:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5fd90d6fbac148a29d6670f0a35a7789', '1', '在线办公-个人办公-我的任务', '1', '2015-09-05 16:03:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/act/task/todo/', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('6219e48cd110422db80f709006dc9eb6', '1', '内容管理-内容管理-内容发布', '1', '2015-10-31 20:09:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('64338fd8387a4cc5973b798d48e1772c', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:30:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=24', '');
INSERT INTO `sys_log` VALUES ('6439a33b788b413bba5c9e74f5dcef67', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:30:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=18', '');
INSERT INTO `sys_log` VALUES ('64495cf86bad454e8de713001350005f', '1', '绯荤��诲�', '1', '2015-09-13 11:25:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('65adfd1103a04692b8f6ecb549e33032', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-15 22:11:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/findByIds', 'GET', 'ids=1,2,3', '');
INSERT INTO `sys_log` VALUES ('67e08a72c762453aaccb0358c8f1fb81', '1', '内容管理-内容管理', '1', '2015-08-02 11:11:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('683ac0c21d2a4d39b8bd1b8238a8fd8d', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('694118245d27492eae74eb7cc0bdbe81', '1', '内容管理-内容管理', '1', '2015-09-05 16:07:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6956642a6e3d459997579bc28c09b43f', '1', '内容管理-内容管理-内容发布', '1', '2015-09-15 21:07:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('6957f7f1740645889584016dc65ea1c9', '1', '系统设置-机构用户-用户管理', '1', '2015-09-05 18:00:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6a87715a595d4dfead6f8a15dc614b09', '1', '内容管理-内容管理-公共留言-审核', '1', '2015-09-13 18:10:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/guestbook/save', 'POST', 'id=d7bf2c8c8792482c881f62e8b209b46e&delFlag=0&reContent=谢谢你的建议', '');
INSERT INTO `sys_log` VALUES ('6ba9b27f0cea485a958476a51ce03f5c', '1', '内容管理-栏目设置-栏目管理-修改', '1', '2015-09-13 13:28:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/save', 'POST', 'id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=JAVA语言&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=1&customListView=&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('6bf992463cb446d097b161827dcdc62a', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-19 23:05:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=4', '');
INSERT INTO `sys_log` VALUES ('6ec045f59d604444b3b3c45664042d61', '1', '内容管理-内容管理-内容发布', '1', '2015-09-05 18:00:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7004f576dce544adb7c21877f9896727', '1', '内容管理-栏目设置-栏目管理', '1', '2015-08-02 11:01:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/category/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('71596f35f96f413e8a1204acc51a6a1b', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-06-08 09:13:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7268f61140974cbd99757a06f4827d46', '1', '在线办公-个人办公-我的任务', '1', '2015-03-20 10:12:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/act/task/todo/', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('73bc6f9d0ebb46c7834667323411bd93', '1', '系统设置-机构用户-用户管理', '1', '2015-06-08 09:13:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7575a91574d54e8fbe4e097cf2ee1620', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:30:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('75862390f48c4968a4c176f707f06839', '1', '内容管理-栏目设置-栏目管理-修改', '1', '2015-09-13 13:30:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/save', 'POST', 'id=24&office.id=6&office.name=研发部&parent.id=1&parent.name=顶级栏目&module=link&name=云计算&image=&href=&target=&description=&keywords=&sort=90&inMenu=1&inList=1&showModes=0&allowComment=1&isAudit=0&customListView=&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('763662cdb2f145bfbafe849eff31f242', '1', '系统登录', '1', '2015-08-02 16:50:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=6bd1afed573f4eb1a7d02d522445a7c6', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('7704bbc72b784ca2b7001402a0fd1ec5', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-15 21:07:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/form', 'GET', 'id=27', '');
INSERT INTO `sys_log` VALUES ('7a5f3754559640f1883ea6e676029459', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-06-08 09:13:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7acf99208f0f46d0a735913239e89131', '1', '内容管理-内容管理', '1', '2015-06-08 09:26:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7cd80cd886f64c80ab75e4c2e0869bab', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-19 23:07:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/findByIds', 'GET', 'ids=1,2,3', '');
INSERT INTO `sys_log` VALUES ('7d07204fd386425ea994b0e7c3b67cd4', '1', '我的面板-个人信息-个人信息', '1', '2015-08-02 16:54:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('7ddd019e135e417c95099b9c30009796', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-13 13:31:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7de8f773132e467eb8c5a80851bce5e6', '1', '系统登录', '1', '2015-06-08 09:26:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=62', '');
INSERT INTO `sys_log` VALUES ('7e23e4597ace4918995cdd0d97cf8be1', '1', '内容管理-栏目设置-切换站点', '1', '2015-09-05 18:00:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/site/select', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7f45958390b64d748dc763a4328a8028', '1', '在线办公-通知通告-我的通告', '1', '2015-10-31 20:09:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('805432b2e5ec46e4a3574009b0620383', '1', '内容管理-内容管理-内容发布', '1', '2015-09-13 13:27:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('80cbef13f2e3496d9e6fb490019d9054', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 13:51:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/gen/genScheme', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('8101efe75ae04f1b95c7a199fe68e748', '1', '内容管理-内容管理-内容发布', '1', '2015-09-19 23:05:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('81050a37f4c34b5cb884d2b2e2ce59cc', '1', '我的面板-个人信息-个人信息', '1', '2015-09-16 20:46:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('81185c2f4ad942a68df6a42e807ab1df', '1', '内容管理-内容管理', '1', '2015-08-02 11:01:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/none/', 'GET', 'category.id=24', '');
INSERT INTO `sys_log` VALUES ('83534ad4aace40089667fcd5be7590ce', '1', '系统登录', '1', '2015-08-03 19:55:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('83c055cd5c134e86ab7f6bf4ff7b4046', '1', '系统设置-机构用户-用户管理', '1', '2015-10-31 20:09:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('842a6b6de02445a884d78ecff564e35a', '1', '系统登录', '1', '2015-09-15 22:11:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('854e756c83294e2280adf5dfc17a7088', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-16 20:41:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85c02418a4e8447c990c2a59b224f05d', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-15 21:07:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=11', '');
INSERT INTO `sys_log` VALUES ('864f09a9ac4c45f198f204faa8a30dd4', '1', '内容管理-栏目设置-站点设置-修改', '1', '2015-09-05 18:02:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/site/save', 'POST', 'id=1&name=默认站点&title=微点&logo=&description=微点&keywords=JeeSite&theme=basic&copyright=\r\n	Copyright © 2014-2015 wanliang - Powered By we-dian V1.0\r\n&customIndexView=', '');
INSERT INTO `sys_log` VALUES ('88246cee0ae344a0ba838e6940a9b176', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-09-13 18:10:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/guestbook/form', 'GET', 'id=d7bf2c8c8792482c881f62e8b209b46e', '');
INSERT INTO `sys_log` VALUES ('890ccaf379234f31b87cfa217e4b517e', '1', '系统登录', '1', '2015-09-19 23:05:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('890e3167360f43d786f6e486dfc1de72', '1', '系统设置-机构用户-机构管理', '1', '2015-06-08 09:13:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8910d6a849524b0e9ed122e8d35e64b8', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 13:27:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('8b27f7d9ce684c62ab2d5f673e522476', '1', '我的面板-个人信息-修改密码', '1', '2015-10-31 20:09:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8c667ee4b6b3420a8e1658ef7438194e', '1', '代码生成-代码生成-业务表配置', '1', '2015-10-31 20:09:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('8cb03b346b8343eb87a784f432b65afc', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:03:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('8dc641de2cf34459aefa9f2df5dbc104', '1', '系统登录', '1', '2015-08-03 20:02:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8dfa719ac25340739b8e36440525d7da', '1', '我的面板-个人信息-修改密码', '1', '2015-10-31 20:09:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/modifyPwd', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('914ed1c55b96436ea34ac4052669af2b', '1', '系统设置-机构用户-用户管理', '1', '2015-03-16 12:49:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_4', '');
INSERT INTO `sys_log` VALUES ('9436cf87513c4a34ac45b8fa269381fd', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-15 21:07:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=11', '');
INSERT INTO `sys_log` VALUES ('944c99701d9e4af0921a14079f21e592', '1', '绯荤��诲�', '1', '2015-09-13 13:26:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('94f1a6f691924fd18484e861a1f2b690', '1', '内容管理-内容管理-内容发布', '1', '2015-09-05 18:00:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('95508fbb1a974dda8744192ffaf64b3a', '1', '我的面板-个人信息-个人信息', '1', '2015-06-08 09:15:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('95dc18e9bb3f4d258ed6c656f15b9622', '1', '系统登录', '1', '2015-08-02 10:03:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=8a8c2a1d1fb8449a8e2c262bd122076e', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('96e74222e50247439059b1f36dc0907b', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-19 23:05:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/form', 'GET', 'id=8', '');
INSERT INTO `sys_log` VALUES ('978e6a228b774bb7b73ae32adb5e73b7', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 18:00:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9c669df67c734b4989b9c3f51d275f98', '1', '内容管理-内容管理', '1', '2015-09-05 18:00:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9cd43e84f94a49bbbbccd8e168e6c6ae', '1', '在线办公-通知通告-通告管理', '1', '2015-03-20 10:12:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/oa/oaNotify', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('a2bc8029fb5e4a17a82b58a394fa7359', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-16 20:42:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', 'tabPageId=jerichotabiframe_9', '');
INSERT INTO `sys_log` VALUES ('a3be4ad57b624869922e8bb8d2e6e81d', '1', '内容管理-内容管理', '1', '2015-06-08 09:13:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a415d3b8f6b34e3ba49ae82c48ba62bc', '1', '内容管理-内容管理', '1', '2015-06-08 09:09:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a48f5eb8164242ed8862cc7b74ac7d2b', '1', '我的面板-个人信息-个人信息', '1', '2015-09-15 22:11:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('a65ed460ac6944649eb52127e9fbea79', '1', '内容管理-栏目设置-站点设置', '1', '2015-09-19 23:06:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/site/', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('a72ee358d3624335a29bdb4576b21901', '1', '内容管理-内容管理', '1', '2015-09-15 22:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a7bd1ae10db042b3b9fabbd02c61f62d', '1', '系统设置-系统设置-角色管理', '1', '2015-06-08 09:13:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a9c70381ce1947ed9448b268b5a25277', '1', '绯荤��诲�', '1', '2015-09-13 17:16:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('aa4641660d4a40aa876cbf1106bf5b76', '1', '系统登录', '1', '2015-08-02 12:46:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a;JSESSIONID=d9de0547064549518ee8d1f2e4aea37f', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ac63655a08104700b9491e7c9c28cd57', '1', '在线办公-通知通告-我的通告', '1', '2015-06-08 09:09:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('ac6f955e1c6743f2993d30c0e7b02bf9', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-13 13:28:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad7dfc9ebfe4434998cdb8eb5a5c87e5', '1', '内容管理-栏目设置-栏目管理-修改', '1', '2015-09-13 13:28:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/save', 'POST', 'id=10&office.id=4&office.name=市场部&parent.id=1&parent.name=顶级栏目&module=article&name=移动应用&image=&href=&target=&description=&keywords=&sort=20&inMenu=1&inList=1&showModes=0&allowComment=1&isAudit=0&customListView=&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('afea18a548694fd0b5aabb9835dab702', '1', '我的面板-个人信息-个人信息', '1', '2015-08-02 11:01:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('b2aa67b76d8f4dc7b377801ff3e27587', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 10:42:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('b3259f06a5d54db388e4c64af00a2710', '1', '我的面板-个人信息-个人信息', '1', '2015-08-03 20:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b349f2c1c75e4e028e8a4ffaf83e6f07', '1', '内容管理-内容管理-内容发布', '1', '2015-03-16 12:49:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_3', '');
INSERT INTO `sys_log` VALUES ('b3d7e2f61b8344318dba1c42dee262b6', '1', '内容管理-内容管理-内容发布-文章模型-修改', '1', '2015-09-15 21:08:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/save', 'POST', 'id=27&category.id=11&category.name=网络工具&title=文章标题标题标题标题&color=&link=&keywords=关键字1,关键字2&weight=0&weightDate=&description=文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题标题文章标题标题标题...&image=&articleData.content=\r\n	文章内容内容内容内容\r\n&articleData.copyfrom=来源&articleData.relation=1,2,3,&articleData.allowComment=1&_posidList=on&createDate=2013-05-27 08:00:00&delFlag=0&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('b54c28888df741f8a9f0e068230c512d', '1', '在线办公-通知通告-我的通告', '1', '2015-06-08 09:13:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b6438b2a29f5454eae9b6e55cdb27f52', '1', '内容管理-内容管理', '1', '2015-08-02 11:01:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b743ae380c4b4b96bf61111c0072f552', '1', '系统设置-机构用户-用户管理', '1', '2015-09-16 20:40:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('b7e8e9edfb0f4c13b895de36e9a93dff', '1', '系统登录', '1', '2015-08-01 15:34:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=2c13ebbd628e4c28955d43e96bd77c66', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('b89e67f850ac42989c1688bb76f6a6af', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-09-15 21:07:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/findByIds', 'GET', 'ids=1,2,3', '');
INSERT INTO `sys_log` VALUES ('b8db744312544a84af9c1ebba4c85f33', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 17:16:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('b972f872a5324190821fa44a81d274ff', '1', '绯荤��诲�', '1', '2015-09-05 18:00:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ba18ae2004f34e32a395c558e8fd5972', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-09-16 20:40:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bb88c9a83ca7460e9bb03378fbf0e2c3', '1', '我的面板-个人信息-个人信息', '1', '2015-10-31 20:09:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('bdd62913e9b148d7bddc57ad4d12c473', '1', '我的面板-个人信息-个人信息', '1', '2015-06-08 09:12:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf7084ed4b394911b454544e3b9e2727', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:29:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=18', '');
INSERT INTO `sys_log` VALUES ('c1a7b89b5cf7479a98c3ee9bdc2bebc2', '1', '我的面板-个人信息-个人信息', '1', '2015-09-19 23:05:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('c32503bb66a341dd879a6202c385ac4a', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-09-19 23:05:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/comment/', 'GET', 'status=2&tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('c6beb55ad73443aeaf006a491d01b9b3', '1', '系统登录', '1', '2015-08-02 11:11:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c7ef999007604c69b835fd554776ab2d', '1', '在线办公-流程管理-模型管理', '1', '2015-09-05 16:03:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/act/model', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('c808308ac93b43e5b5d3cab4cf87e1d2', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c98a24abfe4044ceb593477a88648446', '1', '内容管理-内容管理', '1', '2015-03-20 10:12:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ca4f91ca00984d80b4e30386ccab1e7a', '1', '内容管理-内容管理-内容发布-文章模型-修改', '1', '2015-09-15 22:12:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/save', 'POST', 'id=17&category.id=7&category.name=产品质量&title=文章标题标题标题标题&color=&link=&keywords=关键字1,关键字2&weight=0&weightDate=&description=Happens Before 对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, 写操作执行表...&image=&articleData.content=\r\n	Happens Before\r\n\r\n	 \r\n\r\n	对于一个goroutine来说，虽然指令会被编译器乱序重排，但它其中变量的读, ...&articleData.copyfrom=来源&articleData.relation=1,2,3,&articleData.allowComment=1&_posidList=on&createDate=2013-05-27 08:00:00&delFlag=0&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('ca536b427cb44810a32f5edb94cced92', '1', '我的面板-个人信息-个人信息', '1', '2015-03-16 12:49:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('cced4a75bc88474d84de2357de8a333c', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-08-02 11:12:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/category/form', 'GET', 'id=24', '');
INSERT INTO `sys_log` VALUES ('d2f200164cd5423e97fd2089132e3770', '1', '系统设置-系统设置-菜单管理', '1', '2015-09-05 16:04:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d5130c48d0a5441db1e210e770851beb', '1', '系统登录', '1', '2015-06-08 14:54:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d741190905ba47a988295f5b1235021f', '1', '在线办公-通知通告-我的通告', '1', '2015-09-13 17:16:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('d75ed73d3a49421d8d21ef78660edaef', '1', '绯荤��诲�', '1', '2015-09-13 10:42:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('d8bc2327c7364dbfa1b1043c3130eb48', '1', '内容管理-内容管理-内容发布', '1', '2015-09-13 18:10:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('da4780e4ae7e415c919e419f9787db10', '1', '我的面板-个人信息-个人信息', '1', '2015-09-16 20:40:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('da6218b22ffa498b93de03b386ba34cd', '1', '内容管理-栏目设置-站点设置', '1', '2015-09-05 18:00:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/site/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dc2993ce70404acda01c4cd185cc4fac', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-16 20:42:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('dd81ff8d579d45babd5256ba649b5015', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 11:38:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('de465d338bf24fd89af34680d518068d', '1', '我的面板-个人信息-个人信息', '1', '2015-10-31 20:09:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df392d272334481aa51e421dfe8190b3', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-19 23:07:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=4', '');
INSERT INTO `sys_log` VALUES ('e08f16440a104ed3b010295b876743e1', '1', '在线办公-通知通告-我的通告', '1', '2015-06-08 10:07:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e3033476c73f4afabbcedb7757223c1c', '1', '系统登录', '1', '2015-08-02 16:44:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=cc9305533e9640f794dbf87fad02d72d', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e41068e9061a44e9b39a26e1ba2944b4', '1', '内容管理-内容管理-内容发布', '1', '2015-08-02 11:01:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('e53680de7d26431a9078c055a5ce5e4f', '1', '内容管理-栏目设置-站点设置-查看', '1', '2015-09-05 18:00:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/site/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('e56bfe8935b940aebb6efbc874a0e4c3', '1', '系统登录', '1', '2015-08-02 12:14:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=01fda1066f984ebe8264074c09f12b3f', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e6d0f63363144340b04f7af190897948', '1', '内容管理-内容管理', '1', '2015-09-15 22:11:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e6f3bc75a94948a28f770a46962e261d', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-09-13 18:10:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/guestbook/', 'GET', 'status=2&tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('e7368b2d9f6744a58eca67e31e53ddaa', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-15 22:11:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'category.id=7', '');
INSERT INTO `sys_log` VALUES ('e7eeb47385fc47b5a5596066802795b7', '1', '系统登录', '1', '2015-03-20 10:12:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e8f422a1a0c442f8b531eebf9b1b6d4d', '1', '内容管理-内容管理-内容发布', '1', '2015-06-08 09:13:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e9c9e13b21ff4b719a59b9af89e0e530', '1', '内容管理-内容管理', '1', '2015-09-13 18:10:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eaa7ff6d009649f9aff416f43a6388d3', '1', '内容管理-栏目设置-栏目管理', '1', '2015-09-13 13:28:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ead1200a9883455c859946ca4edd9023', '1', '内容管理-栏目设置-栏目管理-修改', '1', '2015-09-13 13:31:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/save', 'POST', 'id=18&office.id=5&office.name=技术部&parent.id=1&parent.name=顶级栏目&module=article&name=大数据&image=&href=&target=&description=&keywords=&sort=90&inMenu=1&inList=1&showModes=0&allowComment=1&isAudit=0&customListView=&customContentView=&viewConfig=', '');
INSERT INTO `sys_log` VALUES ('eb439cfd0a0f418d8b6a47bbb7b56008', '1', '我的面板-个人信息-个人信息', '1', '2015-06-08 09:08:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('ed12aea5e64d41e88791add2535c86b2', '1', '代码生成-代码生成-业务表配置', '1', '2015-06-08 09:13:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eeb95fd802c24f8983c1a5af6e334582', '1', '绯荤��诲�', '1', '2015-09-05 16:03:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ef982a1f2ef241d4beaed2a0fa8649c2', '1', '系统登录', '1', '2015-08-02 12:08:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=7b81381ada994a4bb1627daa398daea5', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('efb85298ccd143d18b28a3b2c7470704', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-09-16 20:41:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/comment/', 'GET', 'status=2&tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('efd7b29ac19a4422b380d1e4a5e7b585', '1', '内容管理-内容管理-内容发布', '1', '2015-03-20 10:12:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('f1e596793be942a996dc0905b9cf6a54', '1', '系统登录', '1', '2015-08-02 09:55:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a;JSESSIONID=1a76d436343a419181612c38c9f0405e', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f21070f92eb945dea436303ac4433282', '1', '系统登录', '1', '2015-08-02 11:45:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f2528eb4a1f5491dba5a24deeed80438', '1', '内容管理-内容管理-内容发布', '1', '2015-09-15 22:11:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('f26a2191f52c4664a1a262eac59c879f', '1', '我的面板-个人信息-个人信息', '1', '2015-09-13 11:25:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('f2abb7ed146043be9f0379b47682bb7d', '1', '在线办公-通知通告-我的通告', '1', '2015-03-20 10:12:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('f2d1147adac644758f42bfb4fdb0c336', '1', '系统登录', '1', '2015-05-26 13:51:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f36515e9277749a2888d841a14376aac', '1', '内容管理-内容管理-内容发布', '1', '2015-08-02 11:11:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('f3b1018686b14d8195bae784ea7edcad', '1', '内容管理-内容管理', '1', '2015-09-05 18:00:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f482bd60d4844eb384a384b41e15c4af', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-09-15 22:12:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/article/', 'GET', 'repage=&category.id=7', '');
INSERT INTO `sys_log` VALUES ('f59437e0ec7b481bb2969bbd0952c6f9', '1', '系统登录', '1', '2015-09-16 20:40:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f5bf7473283943c29617aa3015610e62', '1', '系统登录', '1', '2015-06-08 10:07:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', '/jeesite/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f5e480edf2474120be2b289c741fe0bf', '1', '在线办公-通知通告-我的通告', '1', '2015-09-05 16:03:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_2', '');
INSERT INTO `sys_log` VALUES ('f62a7a9c3464482a99dd455ca9facc84', '2', '内容管理-栏目设置-栏目管理-修改', '1', '2015-08-02 11:12:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '/a/cms/category/save', 'POST', 'id=24&office.id=6&office.name=研发部&parent.id=1&parent.name=顶级栏目&module=link&name=公众号管理&image=&href=/weixin/index.shtml&target=_blank&description=&keywords=&sort=90&inMenu=1&inList=1&showModes=0&allowComment=1&isAudit=0&customListView=&customContentView=&viewConfig=', 'javax.servlet.ServletException: Could not resolve view with name \'redirect:/a/cms/category/\' in servlet with name \'springServlet\'\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1204)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1005)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:952)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:870)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:961)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:863)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:648)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:837)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:291)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:88)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:219)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:142)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:610)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:518)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1091)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:668)\r\n	at org.apache.coyote.http11.Http11AprProtocol$Http11ConnectionHandler.process(Http11AprProtocol.java:283)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.doRun(AprEndpoint.java:2463)\r\n	at org.apache.tomcat.util.net.AprEndpoint$SocketProcessor.run(AprEndpoint.java:2452)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');
INSERT INTO `sys_log` VALUES ('f7d4ea04bc0a4ee697d825234c7d95d6', '1', '内容管理-内容管理', '1', '2015-09-05 18:00:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f87d079c5321434eb10d0a2ff19086dd', '1', '我的面板-个人信息-个人信息', '1', '2015-08-03 20:02:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('f9b0f73f16ff49cc836439aafbe8737d', '1', '我的面板-个人信息-个人信息', '1', '2015-08-01 15:34:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('fbd85a1305d9496aa1867ddf381031f5', '1', '内容管理-内容管理', '1', '2015-03-16 12:49:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', '/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fe29fd3dc7df40a28723981b4e9ae478', '1', '内容管理-栏目设置-栏目管理-查看', '1', '2015-09-13 13:29:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', '/a/cms/category/form', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('ff435da9c41b450fb227675952aef41f', '1', '我的面板-个人信息-个人信息', '1', '2015-09-05 16:06:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', '/a/sys/user/info', 'GET', '', '');

-- ----------------------------
-- Table structure for `sys_mdict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) default NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';

-- ----------------------------
-- Records of sys_mdict
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) default NULL COMMENT '链接',
  `target` varchar(20) default NULL COMMENT '目标',
  `icon` varchar(100) default NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) default NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '编辑', '60', '', '', '', '0', 'test:testData:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '树结构', '90', '/test/testTree', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', '0', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', '60', '/sys/dict/', null, 'th-list', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', '30', null, null, null, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', '40', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', '970', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', '50', '/sys/area/', null, 'th', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', '30', null, null, null, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', '40', null, null, null, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', '40', '/sys/office/', null, 'th-large', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', '30', null, null, null, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', '40', null, null, null, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', '900', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', '30', '/sys/user/index', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', '30', null, null, null, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', '40', null, null, null, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,1,2,', '关于帮助', '990', '', '', '', '0', '', '1', '2013-05-27 08:00:00', '1', '2015-03-03 15:00:12', '', '0');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23,', '官方首页', '30', 'http://jeesite.com', '_blank', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-03-03 14:58:54', '', '0');
INSERT INTO `sys_menu` VALUES ('25', '23', '0,1,2,23,', '项目支持', '50', 'http://jeesite.com/donation.html', '_blank', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-03-03 14:59:01', '', '0');
INSERT INTO `sys_menu` VALUES ('26', '23', '0,1,2,23,', '论坛交流', '80', 'http://bbs.jeesite.com', '_blank', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2015-03-03 14:59:08', '', '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '100', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', '30', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', '30', '/sys/user/info', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', '980', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', '40', '/sys/user/modifyPwd', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('31', '1', '0,1,', '内容管理', '500', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,1,31,', '栏目设置', '990', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,1,31,32', '栏目管理', '30', '/cms/category/', null, 'align-justify', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', '30', null, null, null, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', '40', null, null, null, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,1,31,32', '站点设置', '40', '/cms/site/', null, 'certificate', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', '30', null, null, null, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', '40', null, null, null, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,1,31,32', '切换站点', '50', '/cms/site/select', null, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', '120', '', '', '', '0', '', '1', '2013-08-12 13:10:05', '1', '2015-03-03 14:57:30', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', '30', '/sys/menu/', null, 'list-alt', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,1,31,', '内容管理', '500', null, null, null, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', '30', '/cms/', null, 'briefcase', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', '40', '/cms/article/', null, 'file', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', '30', null, null, null, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', '40', null, null, null, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', '50', null, null, null, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', '60', '/cms/link/', null, 'random', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', '30', null, null, null, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', '40', null, null, null, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', '30', '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', '50', null, null, null, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', '30', null, null, null, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', '40', '/cms/comment/?status=2', null, 'comment', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', '30', null, null, null, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', '40', null, null, null, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', '80', '/cms/guestbook/?status=2', null, 'glass', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', '30', null, null, null, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', '40', null, null, null, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', '90', '/../static/ckfinder/ckfinder.html', null, 'folder-open', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', '30', null, null, null, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', '40', null, null, null, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', '50', null, null, null, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', '40', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('60', '31', '0,1,31,', '统计分析', '600', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('61', '60', '0,1,31,60,', '信息量统计', '30', '/cms/stats/article', null, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('62', '1', '0,1,', '在线办公', '200', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('63', '62', '0,1,62,', '个人办公', '30', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('64', '63', '0,1,62,63,', '请假办理', '300', '/oa/leave', '', 'leaf', '0', '', '1', '2013-05-27 08:00:00', '1', '2015-03-03 14:59:31', '', '0');
INSERT INTO `sys_menu` VALUES ('65', '64', '0,1,62,63,64,', '查看', '30', null, null, null, '0', 'oa:leave:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('66', '64', '0,1,62,63,64,', '修改', '40', null, null, null, '0', 'oa:leave:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', '985', null, null, null, '1', null, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', '30', '/sys/log', null, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('69', '62', '0,1,62,', '流程管理', '300', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', '50', '/sys/role/', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('70', '69', '0,1,62,69,', '流程管理', '50', '/act/process', null, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', '90', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('72', '69', '0,1,62,69,', '模型管理', '100', '/act/model', null, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('73', '63', '0,1,62,63,', '我的任务', '50', '/act/task/todo/', null, 'tasks', '1', null, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('74', '63', '0,1,62,63,', '审批测试', '100', '/oa/testAudit', null, null, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('75', '1', '0,1,', '在线演示', '3000', '', '', '', '0', '', '1', '2013-10-08 08:00:00', '1', '2015-03-03 14:53:08', '', '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '代码生成', '5000', null, null, null, '1', null, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', '30', null, null, null, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,79,', '代码生成', '50', null, null, null, '1', null, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', '30', '/gen/genScheme', null, null, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', '20', '/gen/genTable', null, null, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('83', '80', '0,1,79,80,', '代码模板管理', '90', '/gen/genTemplate', '', '', '0', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2015-03-03 15:04:36', '', '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', '40', '/../druid', null, null, '1', null, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', '80', '/../static/map/map-city.html', null, null, '1', null, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('86', '75', '0,1,75,', '组件演示', '50', null, null, null, '1', null, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('87', '86', '0,1,75,86,', '组件演示', '30', '/test/test/', null, null, '1', 'test:test:view,test:test:edit', '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('88', '62', '0,1,62,', '通知通告', '20', '', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('89', '88', '0,1,62,88,', '我的通告', '30', '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', '40', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('90', '88', '0,1,62,88,', '通告管理', '50', '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', '60', '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', '60', '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', '30', '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', '30', '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', '60', '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', '30', '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');

-- ----------------------------
-- Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) default NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) default NULL COMMENT '联系地址',
  `zip_code` varchar(100) default NULL COMMENT '邮政编码',
  `master` varchar(100) default NULL COMMENT '负责人',
  `phone` varchar(200) default NULL COMMENT '电话',
  `fax` varchar(200) default NULL COMMENT '传真',
  `email` varchar(200) default NULL COMMENT '邮箱',
  `USEABLE` varchar(64) default NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) default NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) default NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '山东省总公司', '10', '2', '100000', '1', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('10', '7', '0,1,7,', '市场部', '30', '3', '200003', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('11', '7', '0,1,7,', '技术部', '40', '3', '200004', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('12', '7', '0,1,7,', '历城区分公司', '0', '4', '201000', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('13', '12', '0,1,7,12,', '公司领导', '10', '4', '201001', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('14', '12', '0,1,7,12,', '综合部', '20', '4', '201002', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('15', '12', '0,1,7,12,', '市场部', '30', '4', '201003', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('16', '12', '0,1,7,12,', '技术部', '40', '4', '201004', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('17', '7', '0,1,7,', '历下区分公司', '40', '5', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('18', '17', '0,1,7,17,', '公司领导', '10', '5', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('19', '17', '0,1,7,17,', '综合部', '20', '5', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', '10', '2', '100001', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('20', '17', '0,1,7,17,', '市场部', '30', '5', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('21', '17', '0,1,7,17,', '技术部', '40', '5', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('22', '7', '0,1,7,', '高新区分公司', '50', '6', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('23', '22', '0,1,7,22,', '公司领导', '10', '6', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('24', '22', '0,1,7,22,', '综合部', '20', '6', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('25', '22', '0,1,7,22,', '市场部', '30', '6', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('26', '22', '0,1,7,22,', '技术部', '40', '6', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '综合部', '20', '2', '100002', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '市场部', '30', '2', '100003', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '技术部', '40', '2', '100004', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('6', '1', '0,1,', '研发部', '50', '2', '100005', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('7', '1', '0,1,', '济南市分公司', '20', '3', '200000', '1', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('8', '7', '0,1,7,', '公司领导', '10', '3', '200001', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('9', '7', '0,1,7,', '综合部', '20', '3', '200002', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) default NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) default NULL COMMENT '英文名称',
  `role_type` varchar(255) default NULL COMMENT '角色类型',
  `data_scope` char(1) default NULL COMMENT '数据范围',
  `is_sys` varchar(64) default NULL COMMENT '是否系统数据',
  `useable` varchar(64) default NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '系统管理员', 'dept', 'assignment', '1', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('2', '1', '公司管理员', 'hr', 'assignment', '2', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('3', '1', '本公司管理员', 'a', 'assignment', '3', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('4', '1', '部门管理员', 'b', 'assignment', '4', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('5', '1', '本部门管理员', 'c', 'assignment', '5', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('6', '1', '普通用户', 'd', 'assignment', '8', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('7', '7', '济南市管理员', 'e', 'assignment', '9', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY  (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '25');
INSERT INTO `sys_role_menu` VALUES ('1', '26');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '63');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '65');
INSERT INTO `sys_role_menu` VALUES ('1', '66');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '69');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '70');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('2', '23');
INSERT INTO `sys_role_menu` VALUES ('2', '24');
INSERT INTO `sys_role_menu` VALUES ('2', '25');
INSERT INTO `sys_role_menu` VALUES ('2', '26');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '31');
INSERT INTO `sys_role_menu` VALUES ('2', '32');
INSERT INTO `sys_role_menu` VALUES ('2', '33');
INSERT INTO `sys_role_menu` VALUES ('2', '34');
INSERT INTO `sys_role_menu` VALUES ('2', '35');
INSERT INTO `sys_role_menu` VALUES ('2', '36');
INSERT INTO `sys_role_menu` VALUES ('2', '37');
INSERT INTO `sys_role_menu` VALUES ('2', '38');
INSERT INTO `sys_role_menu` VALUES ('2', '39');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '40');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('2', '44');
INSERT INTO `sys_role_menu` VALUES ('2', '45');
INSERT INTO `sys_role_menu` VALUES ('2', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '47');
INSERT INTO `sys_role_menu` VALUES ('2', '48');
INSERT INTO `sys_role_menu` VALUES ('2', '49');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '50');
INSERT INTO `sys_role_menu` VALUES ('2', '51');
INSERT INTO `sys_role_menu` VALUES ('2', '52');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '54');
INSERT INTO `sys_role_menu` VALUES ('2', '55');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '60');
INSERT INTO `sys_role_menu` VALUES ('2', '61');
INSERT INTO `sys_role_menu` VALUES ('2', '62');
INSERT INTO `sys_role_menu` VALUES ('2', '63');
INSERT INTO `sys_role_menu` VALUES ('2', '64');
INSERT INTO `sys_role_menu` VALUES ('2', '65');
INSERT INTO `sys_role_menu` VALUES ('2', '66');
INSERT INTO `sys_role_menu` VALUES ('2', '67');
INSERT INTO `sys_role_menu` VALUES ('2', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '69');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '70');
INSERT INTO `sys_role_menu` VALUES ('2', '71');
INSERT INTO `sys_role_menu` VALUES ('2', '72');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('3', '18');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '24');
INSERT INTO `sys_role_menu` VALUES ('3', '25');
INSERT INTO `sys_role_menu` VALUES ('3', '26');
INSERT INTO `sys_role_menu` VALUES ('3', '27');
INSERT INTO `sys_role_menu` VALUES ('3', '28');
INSERT INTO `sys_role_menu` VALUES ('3', '29');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '30');
INSERT INTO `sys_role_menu` VALUES ('3', '31');
INSERT INTO `sys_role_menu` VALUES ('3', '32');
INSERT INTO `sys_role_menu` VALUES ('3', '33');
INSERT INTO `sys_role_menu` VALUES ('3', '34');
INSERT INTO `sys_role_menu` VALUES ('3', '35');
INSERT INTO `sys_role_menu` VALUES ('3', '36');
INSERT INTO `sys_role_menu` VALUES ('3', '37');
INSERT INTO `sys_role_menu` VALUES ('3', '38');
INSERT INTO `sys_role_menu` VALUES ('3', '39');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '40');
INSERT INTO `sys_role_menu` VALUES ('3', '41');
INSERT INTO `sys_role_menu` VALUES ('3', '42');
INSERT INTO `sys_role_menu` VALUES ('3', '43');
INSERT INTO `sys_role_menu` VALUES ('3', '44');
INSERT INTO `sys_role_menu` VALUES ('3', '45');
INSERT INTO `sys_role_menu` VALUES ('3', '46');
INSERT INTO `sys_role_menu` VALUES ('3', '47');
INSERT INTO `sys_role_menu` VALUES ('3', '48');
INSERT INTO `sys_role_menu` VALUES ('3', '49');
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '50');
INSERT INTO `sys_role_menu` VALUES ('3', '51');
INSERT INTO `sys_role_menu` VALUES ('3', '52');
INSERT INTO `sys_role_menu` VALUES ('3', '53');
INSERT INTO `sys_role_menu` VALUES ('3', '54');
INSERT INTO `sys_role_menu` VALUES ('3', '55');
INSERT INTO `sys_role_menu` VALUES ('3', '56');
INSERT INTO `sys_role_menu` VALUES ('3', '57');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '60');
INSERT INTO `sys_role_menu` VALUES ('3', '61');
INSERT INTO `sys_role_menu` VALUES ('3', '62');
INSERT INTO `sys_role_menu` VALUES ('3', '63');
INSERT INTO `sys_role_menu` VALUES ('3', '64');
INSERT INTO `sys_role_menu` VALUES ('3', '65');
INSERT INTO `sys_role_menu` VALUES ('3', '66');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '69');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '70');
INSERT INTO `sys_role_menu` VALUES ('3', '71');
INSERT INTO `sys_role_menu` VALUES ('3', '72');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('4', '1');
INSERT INTO `sys_role_menu` VALUES ('4', '10');
INSERT INTO `sys_role_menu` VALUES ('4', '11');
INSERT INTO `sys_role_menu` VALUES ('4', '12');
INSERT INTO `sys_role_menu` VALUES ('4', '13');
INSERT INTO `sys_role_menu` VALUES ('4', '14');
INSERT INTO `sys_role_menu` VALUES ('4', '15');
INSERT INTO `sys_role_menu` VALUES ('4', '16');
INSERT INTO `sys_role_menu` VALUES ('4', '17');
INSERT INTO `sys_role_menu` VALUES ('4', '18');
INSERT INTO `sys_role_menu` VALUES ('4', '19');
INSERT INTO `sys_role_menu` VALUES ('4', '2');
INSERT INTO `sys_role_menu` VALUES ('4', '20');
INSERT INTO `sys_role_menu` VALUES ('4', '21');
INSERT INTO `sys_role_menu` VALUES ('4', '22');
INSERT INTO `sys_role_menu` VALUES ('4', '23');
INSERT INTO `sys_role_menu` VALUES ('4', '24');
INSERT INTO `sys_role_menu` VALUES ('4', '25');
INSERT INTO `sys_role_menu` VALUES ('4', '26');
INSERT INTO `sys_role_menu` VALUES ('4', '27');
INSERT INTO `sys_role_menu` VALUES ('4', '28');
INSERT INTO `sys_role_menu` VALUES ('4', '29');
INSERT INTO `sys_role_menu` VALUES ('4', '3');
INSERT INTO `sys_role_menu` VALUES ('4', '30');
INSERT INTO `sys_role_menu` VALUES ('4', '31');
INSERT INTO `sys_role_menu` VALUES ('4', '32');
INSERT INTO `sys_role_menu` VALUES ('4', '33');
INSERT INTO `sys_role_menu` VALUES ('4', '34');
INSERT INTO `sys_role_menu` VALUES ('4', '35');
INSERT INTO `sys_role_menu` VALUES ('4', '36');
INSERT INTO `sys_role_menu` VALUES ('4', '37');
INSERT INTO `sys_role_menu` VALUES ('4', '38');
INSERT INTO `sys_role_menu` VALUES ('4', '39');
INSERT INTO `sys_role_menu` VALUES ('4', '4');
INSERT INTO `sys_role_menu` VALUES ('4', '40');
INSERT INTO `sys_role_menu` VALUES ('4', '41');
INSERT INTO `sys_role_menu` VALUES ('4', '42');
INSERT INTO `sys_role_menu` VALUES ('4', '43');
INSERT INTO `sys_role_menu` VALUES ('4', '44');
INSERT INTO `sys_role_menu` VALUES ('4', '45');
INSERT INTO `sys_role_menu` VALUES ('4', '46');
INSERT INTO `sys_role_menu` VALUES ('4', '47');
INSERT INTO `sys_role_menu` VALUES ('4', '48');
INSERT INTO `sys_role_menu` VALUES ('4', '49');
INSERT INTO `sys_role_menu` VALUES ('4', '5');
INSERT INTO `sys_role_menu` VALUES ('4', '50');
INSERT INTO `sys_role_menu` VALUES ('4', '51');
INSERT INTO `sys_role_menu` VALUES ('4', '52');
INSERT INTO `sys_role_menu` VALUES ('4', '53');
INSERT INTO `sys_role_menu` VALUES ('4', '54');
INSERT INTO `sys_role_menu` VALUES ('4', '55');
INSERT INTO `sys_role_menu` VALUES ('4', '56');
INSERT INTO `sys_role_menu` VALUES ('4', '57');
INSERT INTO `sys_role_menu` VALUES ('4', '58');
INSERT INTO `sys_role_menu` VALUES ('4', '59');
INSERT INTO `sys_role_menu` VALUES ('4', '6');
INSERT INTO `sys_role_menu` VALUES ('4', '60');
INSERT INTO `sys_role_menu` VALUES ('4', '61');
INSERT INTO `sys_role_menu` VALUES ('4', '62');
INSERT INTO `sys_role_menu` VALUES ('4', '63');
INSERT INTO `sys_role_menu` VALUES ('4', '64');
INSERT INTO `sys_role_menu` VALUES ('4', '65');
INSERT INTO `sys_role_menu` VALUES ('4', '66');
INSERT INTO `sys_role_menu` VALUES ('4', '67');
INSERT INTO `sys_role_menu` VALUES ('4', '68');
INSERT INTO `sys_role_menu` VALUES ('4', '69');
INSERT INTO `sys_role_menu` VALUES ('4', '7');
INSERT INTO `sys_role_menu` VALUES ('4', '70');
INSERT INTO `sys_role_menu` VALUES ('4', '71');
INSERT INTO `sys_role_menu` VALUES ('4', '72');
INSERT INTO `sys_role_menu` VALUES ('4', '8');
INSERT INTO `sys_role_menu` VALUES ('4', '9');
INSERT INTO `sys_role_menu` VALUES ('5', '1');
INSERT INTO `sys_role_menu` VALUES ('5', '10');
INSERT INTO `sys_role_menu` VALUES ('5', '11');
INSERT INTO `sys_role_menu` VALUES ('5', '12');
INSERT INTO `sys_role_menu` VALUES ('5', '13');
INSERT INTO `sys_role_menu` VALUES ('5', '14');
INSERT INTO `sys_role_menu` VALUES ('5', '15');
INSERT INTO `sys_role_menu` VALUES ('5', '16');
INSERT INTO `sys_role_menu` VALUES ('5', '17');
INSERT INTO `sys_role_menu` VALUES ('5', '18');
INSERT INTO `sys_role_menu` VALUES ('5', '19');
INSERT INTO `sys_role_menu` VALUES ('5', '2');
INSERT INTO `sys_role_menu` VALUES ('5', '20');
INSERT INTO `sys_role_menu` VALUES ('5', '21');
INSERT INTO `sys_role_menu` VALUES ('5', '22');
INSERT INTO `sys_role_menu` VALUES ('5', '23');
INSERT INTO `sys_role_menu` VALUES ('5', '24');
INSERT INTO `sys_role_menu` VALUES ('5', '25');
INSERT INTO `sys_role_menu` VALUES ('5', '26');
INSERT INTO `sys_role_menu` VALUES ('5', '27');
INSERT INTO `sys_role_menu` VALUES ('5', '28');
INSERT INTO `sys_role_menu` VALUES ('5', '29');
INSERT INTO `sys_role_menu` VALUES ('5', '3');
INSERT INTO `sys_role_menu` VALUES ('5', '30');
INSERT INTO `sys_role_menu` VALUES ('5', '31');
INSERT INTO `sys_role_menu` VALUES ('5', '32');
INSERT INTO `sys_role_menu` VALUES ('5', '33');
INSERT INTO `sys_role_menu` VALUES ('5', '34');
INSERT INTO `sys_role_menu` VALUES ('5', '35');
INSERT INTO `sys_role_menu` VALUES ('5', '36');
INSERT INTO `sys_role_menu` VALUES ('5', '37');
INSERT INTO `sys_role_menu` VALUES ('5', '38');
INSERT INTO `sys_role_menu` VALUES ('5', '39');
INSERT INTO `sys_role_menu` VALUES ('5', '4');
INSERT INTO `sys_role_menu` VALUES ('5', '40');
INSERT INTO `sys_role_menu` VALUES ('5', '41');
INSERT INTO `sys_role_menu` VALUES ('5', '42');
INSERT INTO `sys_role_menu` VALUES ('5', '43');
INSERT INTO `sys_role_menu` VALUES ('5', '44');
INSERT INTO `sys_role_menu` VALUES ('5', '45');
INSERT INTO `sys_role_menu` VALUES ('5', '46');
INSERT INTO `sys_role_menu` VALUES ('5', '47');
INSERT INTO `sys_role_menu` VALUES ('5', '48');
INSERT INTO `sys_role_menu` VALUES ('5', '49');
INSERT INTO `sys_role_menu` VALUES ('5', '5');
INSERT INTO `sys_role_menu` VALUES ('5', '50');
INSERT INTO `sys_role_menu` VALUES ('5', '51');
INSERT INTO `sys_role_menu` VALUES ('5', '52');
INSERT INTO `sys_role_menu` VALUES ('5', '53');
INSERT INTO `sys_role_menu` VALUES ('5', '54');
INSERT INTO `sys_role_menu` VALUES ('5', '55');
INSERT INTO `sys_role_menu` VALUES ('5', '56');
INSERT INTO `sys_role_menu` VALUES ('5', '57');
INSERT INTO `sys_role_menu` VALUES ('5', '58');
INSERT INTO `sys_role_menu` VALUES ('5', '59');
INSERT INTO `sys_role_menu` VALUES ('5', '6');
INSERT INTO `sys_role_menu` VALUES ('5', '60');
INSERT INTO `sys_role_menu` VALUES ('5', '61');
INSERT INTO `sys_role_menu` VALUES ('5', '62');
INSERT INTO `sys_role_menu` VALUES ('5', '63');
INSERT INTO `sys_role_menu` VALUES ('5', '64');
INSERT INTO `sys_role_menu` VALUES ('5', '65');
INSERT INTO `sys_role_menu` VALUES ('5', '66');
INSERT INTO `sys_role_menu` VALUES ('5', '67');
INSERT INTO `sys_role_menu` VALUES ('5', '68');
INSERT INTO `sys_role_menu` VALUES ('5', '69');
INSERT INTO `sys_role_menu` VALUES ('5', '7');
INSERT INTO `sys_role_menu` VALUES ('5', '70');
INSERT INTO `sys_role_menu` VALUES ('5', '71');
INSERT INTO `sys_role_menu` VALUES ('5', '72');
INSERT INTO `sys_role_menu` VALUES ('5', '8');
INSERT INTO `sys_role_menu` VALUES ('5', '9');
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('6', '10');
INSERT INTO `sys_role_menu` VALUES ('6', '11');
INSERT INTO `sys_role_menu` VALUES ('6', '12');
INSERT INTO `sys_role_menu` VALUES ('6', '13');
INSERT INTO `sys_role_menu` VALUES ('6', '14');
INSERT INTO `sys_role_menu` VALUES ('6', '15');
INSERT INTO `sys_role_menu` VALUES ('6', '16');
INSERT INTO `sys_role_menu` VALUES ('6', '17');
INSERT INTO `sys_role_menu` VALUES ('6', '18');
INSERT INTO `sys_role_menu` VALUES ('6', '19');
INSERT INTO `sys_role_menu` VALUES ('6', '2');
INSERT INTO `sys_role_menu` VALUES ('6', '20');
INSERT INTO `sys_role_menu` VALUES ('6', '21');
INSERT INTO `sys_role_menu` VALUES ('6', '22');
INSERT INTO `sys_role_menu` VALUES ('6', '23');
INSERT INTO `sys_role_menu` VALUES ('6', '24');
INSERT INTO `sys_role_menu` VALUES ('6', '25');
INSERT INTO `sys_role_menu` VALUES ('6', '26');
INSERT INTO `sys_role_menu` VALUES ('6', '27');
INSERT INTO `sys_role_menu` VALUES ('6', '28');
INSERT INTO `sys_role_menu` VALUES ('6', '29');
INSERT INTO `sys_role_menu` VALUES ('6', '3');
INSERT INTO `sys_role_menu` VALUES ('6', '30');
INSERT INTO `sys_role_menu` VALUES ('6', '31');
INSERT INTO `sys_role_menu` VALUES ('6', '32');
INSERT INTO `sys_role_menu` VALUES ('6', '33');
INSERT INTO `sys_role_menu` VALUES ('6', '34');
INSERT INTO `sys_role_menu` VALUES ('6', '35');
INSERT INTO `sys_role_menu` VALUES ('6', '36');
INSERT INTO `sys_role_menu` VALUES ('6', '37');
INSERT INTO `sys_role_menu` VALUES ('6', '38');
INSERT INTO `sys_role_menu` VALUES ('6', '39');
INSERT INTO `sys_role_menu` VALUES ('6', '4');
INSERT INTO `sys_role_menu` VALUES ('6', '40');
INSERT INTO `sys_role_menu` VALUES ('6', '41');
INSERT INTO `sys_role_menu` VALUES ('6', '42');
INSERT INTO `sys_role_menu` VALUES ('6', '43');
INSERT INTO `sys_role_menu` VALUES ('6', '44');
INSERT INTO `sys_role_menu` VALUES ('6', '45');
INSERT INTO `sys_role_menu` VALUES ('6', '46');
INSERT INTO `sys_role_menu` VALUES ('6', '47');
INSERT INTO `sys_role_menu` VALUES ('6', '48');
INSERT INTO `sys_role_menu` VALUES ('6', '49');
INSERT INTO `sys_role_menu` VALUES ('6', '5');
INSERT INTO `sys_role_menu` VALUES ('6', '50');
INSERT INTO `sys_role_menu` VALUES ('6', '51');
INSERT INTO `sys_role_menu` VALUES ('6', '52');
INSERT INTO `sys_role_menu` VALUES ('6', '53');
INSERT INTO `sys_role_menu` VALUES ('6', '54');
INSERT INTO `sys_role_menu` VALUES ('6', '55');
INSERT INTO `sys_role_menu` VALUES ('6', '56');
INSERT INTO `sys_role_menu` VALUES ('6', '57');
INSERT INTO `sys_role_menu` VALUES ('6', '58');
INSERT INTO `sys_role_menu` VALUES ('6', '59');
INSERT INTO `sys_role_menu` VALUES ('6', '6');
INSERT INTO `sys_role_menu` VALUES ('6', '60');
INSERT INTO `sys_role_menu` VALUES ('6', '61');
INSERT INTO `sys_role_menu` VALUES ('6', '62');
INSERT INTO `sys_role_menu` VALUES ('6', '63');
INSERT INTO `sys_role_menu` VALUES ('6', '64');
INSERT INTO `sys_role_menu` VALUES ('6', '65');
INSERT INTO `sys_role_menu` VALUES ('6', '66');
INSERT INTO `sys_role_menu` VALUES ('6', '67');
INSERT INTO `sys_role_menu` VALUES ('6', '68');
INSERT INTO `sys_role_menu` VALUES ('6', '69');
INSERT INTO `sys_role_menu` VALUES ('6', '7');
INSERT INTO `sys_role_menu` VALUES ('6', '70');
INSERT INTO `sys_role_menu` VALUES ('6', '71');
INSERT INTO `sys_role_menu` VALUES ('6', '72');
INSERT INTO `sys_role_menu` VALUES ('6', '8');
INSERT INTO `sys_role_menu` VALUES ('6', '9');
INSERT INTO `sys_role_menu` VALUES ('7', '1');
INSERT INTO `sys_role_menu` VALUES ('7', '10');
INSERT INTO `sys_role_menu` VALUES ('7', '11');
INSERT INTO `sys_role_menu` VALUES ('7', '12');
INSERT INTO `sys_role_menu` VALUES ('7', '13');
INSERT INTO `sys_role_menu` VALUES ('7', '14');
INSERT INTO `sys_role_menu` VALUES ('7', '15');
INSERT INTO `sys_role_menu` VALUES ('7', '16');
INSERT INTO `sys_role_menu` VALUES ('7', '17');
INSERT INTO `sys_role_menu` VALUES ('7', '18');
INSERT INTO `sys_role_menu` VALUES ('7', '19');
INSERT INTO `sys_role_menu` VALUES ('7', '2');
INSERT INTO `sys_role_menu` VALUES ('7', '20');
INSERT INTO `sys_role_menu` VALUES ('7', '21');
INSERT INTO `sys_role_menu` VALUES ('7', '22');
INSERT INTO `sys_role_menu` VALUES ('7', '23');
INSERT INTO `sys_role_menu` VALUES ('7', '24');
INSERT INTO `sys_role_menu` VALUES ('7', '25');
INSERT INTO `sys_role_menu` VALUES ('7', '26');
INSERT INTO `sys_role_menu` VALUES ('7', '27');
INSERT INTO `sys_role_menu` VALUES ('7', '28');
INSERT INTO `sys_role_menu` VALUES ('7', '29');
INSERT INTO `sys_role_menu` VALUES ('7', '3');
INSERT INTO `sys_role_menu` VALUES ('7', '30');
INSERT INTO `sys_role_menu` VALUES ('7', '31');
INSERT INTO `sys_role_menu` VALUES ('7', '32');
INSERT INTO `sys_role_menu` VALUES ('7', '33');
INSERT INTO `sys_role_menu` VALUES ('7', '34');
INSERT INTO `sys_role_menu` VALUES ('7', '35');
INSERT INTO `sys_role_menu` VALUES ('7', '36');
INSERT INTO `sys_role_menu` VALUES ('7', '37');
INSERT INTO `sys_role_menu` VALUES ('7', '38');
INSERT INTO `sys_role_menu` VALUES ('7', '39');
INSERT INTO `sys_role_menu` VALUES ('7', '4');
INSERT INTO `sys_role_menu` VALUES ('7', '40');
INSERT INTO `sys_role_menu` VALUES ('7', '41');
INSERT INTO `sys_role_menu` VALUES ('7', '42');
INSERT INTO `sys_role_menu` VALUES ('7', '43');
INSERT INTO `sys_role_menu` VALUES ('7', '44');
INSERT INTO `sys_role_menu` VALUES ('7', '45');
INSERT INTO `sys_role_menu` VALUES ('7', '46');
INSERT INTO `sys_role_menu` VALUES ('7', '47');
INSERT INTO `sys_role_menu` VALUES ('7', '48');
INSERT INTO `sys_role_menu` VALUES ('7', '49');
INSERT INTO `sys_role_menu` VALUES ('7', '5');
INSERT INTO `sys_role_menu` VALUES ('7', '50');
INSERT INTO `sys_role_menu` VALUES ('7', '51');
INSERT INTO `sys_role_menu` VALUES ('7', '52');
INSERT INTO `sys_role_menu` VALUES ('7', '53');
INSERT INTO `sys_role_menu` VALUES ('7', '54');
INSERT INTO `sys_role_menu` VALUES ('7', '55');
INSERT INTO `sys_role_menu` VALUES ('7', '56');
INSERT INTO `sys_role_menu` VALUES ('7', '57');
INSERT INTO `sys_role_menu` VALUES ('7', '58');
INSERT INTO `sys_role_menu` VALUES ('7', '59');
INSERT INTO `sys_role_menu` VALUES ('7', '6');
INSERT INTO `sys_role_menu` VALUES ('7', '60');
INSERT INTO `sys_role_menu` VALUES ('7', '61');
INSERT INTO `sys_role_menu` VALUES ('7', '62');
INSERT INTO `sys_role_menu` VALUES ('7', '63');
INSERT INTO `sys_role_menu` VALUES ('7', '64');
INSERT INTO `sys_role_menu` VALUES ('7', '65');
INSERT INTO `sys_role_menu` VALUES ('7', '66');
INSERT INTO `sys_role_menu` VALUES ('7', '67');
INSERT INTO `sys_role_menu` VALUES ('7', '68');
INSERT INTO `sys_role_menu` VALUES ('7', '69');
INSERT INTO `sys_role_menu` VALUES ('7', '7');
INSERT INTO `sys_role_menu` VALUES ('7', '70');
INSERT INTO `sys_role_menu` VALUES ('7', '71');
INSERT INTO `sys_role_menu` VALUES ('7', '72');
INSERT INTO `sys_role_menu` VALUES ('7', '8');
INSERT INTO `sys_role_menu` VALUES ('7', '9');

-- ----------------------------
-- Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY  (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
INSERT INTO `sys_role_office` VALUES ('7', '10');
INSERT INTO `sys_role_office` VALUES ('7', '11');
INSERT INTO `sys_role_office` VALUES ('7', '12');
INSERT INTO `sys_role_office` VALUES ('7', '13');
INSERT INTO `sys_role_office` VALUES ('7', '14');
INSERT INTO `sys_role_office` VALUES ('7', '15');
INSERT INTO `sys_role_office` VALUES ('7', '16');
INSERT INTO `sys_role_office` VALUES ('7', '17');
INSERT INTO `sys_role_office` VALUES ('7', '18');
INSERT INTO `sys_role_office` VALUES ('7', '19');
INSERT INTO `sys_role_office` VALUES ('7', '20');
INSERT INTO `sys_role_office` VALUES ('7', '21');
INSERT INTO `sys_role_office` VALUES ('7', '22');
INSERT INTO `sys_role_office` VALUES ('7', '23');
INSERT INTO `sys_role_office` VALUES ('7', '24');
INSERT INTO `sys_role_office` VALUES ('7', '25');
INSERT INTO `sys_role_office` VALUES ('7', '26');
INSERT INTO `sys_role_office` VALUES ('7', '7');
INSERT INTO `sys_role_office` VALUES ('7', '8');
INSERT INTO `sys_role_office` VALUES ('7', '9');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) default NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) default NULL COMMENT '邮箱',
  `phone` varchar(200) default NULL COMMENT '电话',
  `mobile` varchar(200) default NULL COMMENT '手机',
  `user_type` char(1) default NULL COMMENT '用户类型',
  `photo` varchar(1000) default NULL COMMENT '用户头像',
  `login_ip` varchar(100) default NULL COMMENT '最后登陆IP',
  `login_date` datetime default NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) default NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) default NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL default '0' COMMENT '删除标记',
  PRIMARY KEY  (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '2', 'thinkgem', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', null, null, '127.0.0.1', '2015-10-31 20:09:11', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '最高管理员', '0');
INSERT INTO `sys_user` VALUES ('10', '7', '11', 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('11', '12', '13', 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('12', '12', '18', 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('13', '22', '23', 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('2', '1', '2', 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('3', '1', '3', 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('4', '1', '4', 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('5', '1', '5', 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('6', '1', '6', 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('7', '7', '8', 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('8', '7', '9', 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('9', '7', '10', 'jn_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0009', '济南市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY  (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('10', '2');
INSERT INTO `sys_user_role` VALUES ('11', '3');
INSERT INTO `sys_user_role` VALUES ('12', '4');
INSERT INTO `sys_user_role` VALUES ('13', '5');
INSERT INTO `sys_user_role` VALUES ('14', '6');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('6', '5');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('7', '7');
INSERT INTO `sys_user_role` VALUES ('8', '2');
INSERT INTO `sys_user_role` VALUES ('9', '1');
