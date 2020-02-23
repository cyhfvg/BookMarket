/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 19:31:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_member_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_login_log`;
CREATE TABLE `ums_member_login_log` (
  `id` bigint(20) NOT NULL COMMENT '纪录编号',
  `member_id` bigint(20) DEFAULT NULL COMMENT '登录会员id',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '登录日期',
  `ip` varchar(64) DEFAULT NULL COMMENT '登录ip',
  `city` varchar(64) DEFAULT NULL COMMENT '登录城市',
  `login_type` int(1) DEFAULT NULL COMMENT '登录类型:0->pc;1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL COMMENT '登录省份',
  PRIMARY KEY (`id`),
  KEY `ums_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员登录日志表';
