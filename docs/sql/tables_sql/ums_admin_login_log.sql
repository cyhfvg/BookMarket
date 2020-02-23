/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 20:19:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint(20) NOT NULL COMMENT '管理员登录纪录编号',
  `admin_id` bigint(20) DEFAULT NULL COMMENT '管理员编号',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `ip` varchar(64) DEFAULT NULL COMMENT '登录ip',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户登录日志';
