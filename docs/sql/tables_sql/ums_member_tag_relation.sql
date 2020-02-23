/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 19:31:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_member_tag_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_tag_relation`;
CREATE TABLE `ums_member_tag_relation` (
  `id` bigint(20) NOT NULL COMMENT '会员-标签 关联编号',
  `member_id` bigint(20) DEFAULT NULL COMMENT '会员编号',
  `tag_id` bigint(20) DEFAULT NULL COMMENT '标签编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户-标签 关联表';
