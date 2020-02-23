/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 20:19:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_member_statistics_info
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_statistics_info`;
CREATE TABLE `ums_member_statistics_info` (
  `id` bigint(20) NOT NULL COMMENT '信息编号',
  `member_id` bigint(20) DEFAULT NULL COMMENT '会员编号',
  `consume_amount` decimal(10,2) DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int(11) DEFAULT NULL COMMENT '订单数量',
  `comment_count` int(11) DEFAULT NULL COMMENT '评价数',
  `return_order_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  `recent_order_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员统计信息\r\n';
