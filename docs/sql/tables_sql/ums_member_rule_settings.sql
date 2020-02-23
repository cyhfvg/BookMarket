/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-02-23 20:18:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_member_rule_settings
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_rule_settings`;
CREATE TABLE `ums_member_rule_settings` (
  `id` bigint(20) NOT NULL COMMENT '规则编号',
  `continue_sign_day` int(11) DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int(11) DEFAULT NULL COMMENT '连续签到赠送数量',
  `consumer_per_point` decimal(10,2) DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10,2) DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int(1) DEFAULT NULL COMMENT '类型:0->积分规则;1->成长值规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员成长规则\r\n';
