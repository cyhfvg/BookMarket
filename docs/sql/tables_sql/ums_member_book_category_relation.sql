/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 19:49:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_member_book_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_book_category_relation`;
CREATE TABLE `ums_member_book_category_relation` (
  `id` bigint(20) NOT NULL COMMENT '会员-书籍关系编号',
  `member_id` bigint(20) DEFAULT NULL COMMENT '会员编号',
  `book_category_id` bigint(20) DEFAULT NULL COMMENT '书籍分类编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员-书籍分类关系表';
