/*
Navicat MySQL Data Transfer

Source Server         : JspLocal
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : flowershop

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-05-03 09:41:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '网站管理员id',
  `name` varchar(15) NOT NULL COMMENT '姓名',
  `gender` int(1) NOT NULL COMMENT '性别',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `tel` varchar(20) NOT NULL COMMENT '电话号码',
  `password` varchar(32) NOT NULL COMMENT '登录密码',
  `imgurl` varchar(50) DEFAULT NULL COMMENT '图片url',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1', '846965599@qq.com', '17671751371', '21232f297a57a5a743894a0e4a801fc3', '');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '顾客id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `gender` int(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `imgurl` varchar(50) DEFAULT NULL COMMENT '图片url',
  `money` double NOT NULL DEFAULT '0' COMMENT '账户余额',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '账号状态(正常1，停封0)',
  `deal_pwd` varchar(20) NOT NULL DEFAULT '' COMMENT '交易密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'Mrzyang', '1', '846965599@qq.com', '17671751372', 'e10adc3949ba59abbe56e057f20f883e', null, '0', '1', '123456');
INSERT INTO `customer` VALUES ('2', '', '1', '846965695@qq.com', '', 'e5cb27d3e0a3008c7e6ce2faa8a6189f', null, '0', '1', '');
INSERT INTO `customer` VALUES ('3', 'Tom', '1', '', '17671751371', 'e10adc3949ba59abbe56e057f20f883e', null, '0', '1', '');

-- ----------------------------
-- Table structure for c_address
-- ----------------------------
DROP TABLE IF EXISTS `c_address`;
CREATE TABLE `c_address` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `receiver` varchar(20) NOT NULL COMMENT '收货人',
  `addr` varchar(40) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `customer_id` int(5) NOT NULL COMMENT '下单者(顾客id,外键)',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_address
-- ----------------------------

-- ----------------------------
-- Table structure for c_cart
-- ----------------------------
DROP TABLE IF EXISTS `c_cart`;
CREATE TABLE `c_cart` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `flower_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`flower_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_cart
-- ----------------------------

-- ----------------------------
-- Table structure for c_collection
-- ----------------------------
DROP TABLE IF EXISTS `c_collection`;
CREATE TABLE `c_collection` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `flower_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flower_id` (`flower_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_collection
-- ----------------------------

-- ----------------------------
-- Table structure for c_order
-- ----------------------------
DROP TABLE IF EXISTS `c_order`;
CREATE TABLE `c_order` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  `order_time` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_order
-- ----------------------------

-- ----------------------------
-- Table structure for c_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `c_orderdetail`;
CREATE TABLE `c_orderdetail` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `flower_id` int(5) NOT NULL,
  `address_id` int(5) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `delivery_time` date DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flower_id` (`flower_id`),
  KEY `address_id` (`address_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for flower
-- ----------------------------
DROP TABLE IF EXISTS `flower`;
CREATE TABLE `flower` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '鲜花id',
  `name` varchar(25) NOT NULL COMMENT '花名',
  `description` varchar(30) DEFAULT NULL,
  `detail` text,
  `usage_id` int(3) NOT NULL,
  `material_id` int(3) NOT NULL,
  `type_id` int(3) NOT NULL,
  `seller_id` int(3) NOT NULL,
  `imgurl` varchar(50) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usage_id` (`usage_id`),
  KEY `material_id` (`material_id`),
  KEY `type_id` (`type_id`),
  KEY `seller_id` (`seller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower
-- ----------------------------

-- ----------------------------
-- Table structure for f_material
-- ----------------------------
DROP TABLE IF EXISTS `f_material`;
CREATE TABLE `f_material` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `material` varchar(20) NOT NULL COMMENT '鲜花材料',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_material
-- ----------------------------
INSERT INTO `f_material` VALUES ('1', '玫瑰');
INSERT INTO `f_material` VALUES ('2', '康乃馨');
INSERT INTO `f_material` VALUES ('3', '郁金香');
INSERT INTO `f_material` VALUES ('4', '百合');
INSERT INTO `f_material` VALUES ('5', '扶郎');
INSERT INTO `f_material` VALUES ('6', '马蹄莲');
INSERT INTO `f_material` VALUES ('7', '向日葵');

-- ----------------------------
-- Table structure for f_type
-- ----------------------------
DROP TABLE IF EXISTS `f_type`;
CREATE TABLE `f_type` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL COMMENT '鲜花类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_type
-- ----------------------------
INSERT INTO `f_type` VALUES ('1', '花束');
INSERT INTO `f_type` VALUES ('2', '花盒');
INSERT INTO `f_type` VALUES ('3', '瓶花');
INSERT INTO `f_type` VALUES ('4', '精品鲜花');
INSERT INTO `f_type` VALUES ('5', '果篮');
INSERT INTO `f_type` VALUES ('6', '桌面花篮');
INSERT INTO `f_type` VALUES ('7', '开业花篮');

-- ----------------------------
-- Table structure for f_usage
-- ----------------------------
DROP TABLE IF EXISTS `f_usage`;
CREATE TABLE `f_usage` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `usage` varchar(12) NOT NULL COMMENT '鲜花用途',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_usage
-- ----------------------------
INSERT INTO `f_usage` VALUES ('1', '爱情鲜花');
INSERT INTO `f_usage` VALUES ('2', '生日鲜花');
INSERT INTO `f_usage` VALUES ('3', '友情鲜花');
INSERT INTO `f_usage` VALUES ('4', '问候长辈');
INSERT INTO `f_usage` VALUES ('5', '探病慰问');
INSERT INTO `f_usage` VALUES ('6', '道歉鲜花');
INSERT INTO `f_usage` VALUES ('7', '祝贺鲜花');
INSERT INTO `f_usage` VALUES ('8', '婚庆鲜花');
INSERT INTO `f_usage` VALUES ('9', '商务鲜花');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '卖家id',
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '姓名',
  `gender` int(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `imgurl` varchar(50) DEFAULT NULL COMMENT '图片url',
  `money` double NOT NULL DEFAULT '0' COMMENT '账户余额',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '账号状态(正常1，停封0)',
  `deal_pwd` varchar(20) NOT NULL DEFAULT '' COMMENT '交易密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('1', '夏洛克', '0', '282066876@qq.com', 'seller', '64c9ac2bb5fe46c3ac32844bb97be6bc', null, '999', '1', '123456');
