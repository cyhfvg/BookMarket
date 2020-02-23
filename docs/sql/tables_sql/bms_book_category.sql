/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 19:48:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bms_book_category
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_category`;
CREATE TABLE `bms_book_category` (
  `id` bigint(20) NOT NULL COMMENT '书籍分类编号',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级分类编号',
  `name` varchar(64) DEFAULT NULL COMMENT '分类名',
  `level` int(1) DEFAULT NULL COMMENT '分类级别:0表示一级编号',
  `book_count` int(11) DEFAULT NULL COMMENT '书籍数量',
  `nav_status` int(1) DEFAULT NULL COMMENT '是否在导航栏显示:0->不显示;1->显示',
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态:0->不显示;1->显示',
  `sort` int(11) DEFAULT NULL COMMENT '排序:0级分类排前面',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='书籍分类';
