/*
Navicat MySQL Data Transfer

Source Server         : localhost_bookmarket
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-03-23 20:10:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bmsbookcategoryidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmsbookcategoryidgenerator`;
CREATE TABLE `bmsbookcategoryidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- ----------------------------
-- Table structure for umsadminidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminidgenerator`;
CREATE TABLE `umsadminidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsadminloginlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminloginlogidgenerator`;
CREATE TABLE `umsadminloginlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsadminpermissionrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminpermissionrelationidgenerator`;
CREATE TABLE `umsadminpermissionrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsadminrolerelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminrolerelationidgenerator`;
CREATE TABLE `umsadminrolerelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberbookcategoryrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberbookcategoryrelationidgenerator`;
CREATE TABLE `umsmemberbookcategoryrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberidgenerator`;
CREATE TABLE `umsmemberidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberlevelidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberlevelidgenerator`;
CREATE TABLE `umsmemberlevelidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberloginlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberloginlogidgenerator`;
CREATE TABLE `umsmemberloginlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberreceiveaddressidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberreceiveaddressidgenerator`;
CREATE TABLE `umsmemberreceiveaddressidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberrulesettingsidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberrulesettingsidgenerator`;
CREATE TABLE `umsmemberrulesettingsidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmemberstatisticsinfoidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberstatisticsinfoidgenerator`;
CREATE TABLE `umsmemberstatisticsinfoidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmembertagidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmembertagidgenerator`;
CREATE TABLE `umsmembertagidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsmembertagrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmembertagrelationidgenerator`;
CREATE TABLE `umsmembertagrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umspermissionidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umspermissionidgenerator`;
CREATE TABLE `umspermissionidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsroleidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsroleidgenerator`;
CREATE TABLE `umsroleidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for umsrolepermissionrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsrolepermissionrelationidgenerator`;
CREATE TABLE `umsrolepermissionrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin` (
  `id` bigint(20) NOT NULL COMMENT '管理员编号',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后登录时间',
  `status` int(1) DEFAULT NULL COMMENT '帐号启用状态:0->禁用;1->启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户表\r\n';

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

-- ----------------------------
-- Table structure for ums_admin_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_permission_relation`;
CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint(20) NOT NULL COMMENT '管理员-权限编号',
  `admin_id` bigint(20) DEFAULT NULL COMMENT '管理员编号',
  `permission_id` bigint(20) DEFAULT NULL COMMENT '权限编号',
  `type` int(1) DEFAULT NULL COMMENT '权限类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户和权限关系表(除角色中定义的权限以外的加减权限)\r\n';

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint(20) NOT NULL COMMENT '后台用户和角色 关系编号',
  `admin_id` bigint(20) DEFAULT NULL COMMENT '后台用户编号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户-角色 关系表\r\n';

-- ----------------------------
-- Table structure for ums_member
-- ----------------------------
DROP TABLE IF EXISTS `ums_member`;
CREATE TABLE `ums_member` (
  `id` bigint(20) NOT NULL COMMENT '用户编号',
  `member_level_id` bigint(20) DEFAULT NULL COMMENT '用户等级编号',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '用户昵称',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `status` int(1) DEFAULT NULL COMMENT '用户启用状态:0->未启用;1->启用',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别:0->未知;1->男;2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所在城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `growth` int(11) DEFAULT NULL COMMENT '成长值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`) USING BTREE,
  UNIQUE KEY `idx_phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员表';

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

-- ----------------------------
-- Table structure for ums_member_level
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_level`;
CREATE TABLE `ums_member_level` (
  `id` bigint(20) NOT NULL COMMENT '等级编号',
  `name` varchar(100) DEFAULT NULL COMMENT '等级名称',
  `growth_point` int(11) DEFAULT NULL COMMENT '成长点',
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认等级:0->不是;1->是',
  `free_freight_point` decimal(10,2) DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int(11) DEFAULT NULL COMMENT '每次评价获取的成长值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员等级表';

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

-- ----------------------------
-- Table structure for ums_member_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_receive_address`;
CREATE TABLE `ums_member_receive_address` (
  `id` bigint(20) NOT NULL COMMENT '地址编号',
  `member_id` bigint(20) DEFAULT NULL COMMENT '会员编号',
  `name` varchar(100) DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) DEFAULT NULL COMMENT '收货人手机号码',
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `region` varchar(100) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员收货地址表\r\n\r\n';

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

-- ----------------------------
-- Table structure for ums_member_tag
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_tag`;
CREATE TABLE `ums_member_tag` (
  `id` bigint(20) NOT NULL COMMENT '会员标签编号',
  `name` varchar(100) DEFAULT NULL COMMENT '标签名称',
  `finish_order_count` int(11) DEFAULT NULL COMMENT '完成订单数量',
  `finish_order_amount` decimal(10,2) DEFAULT NULL COMMENT '完成订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户标签表';

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

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission` (
  `id` bigint(20) NOT NULL COMMENT '用户权限',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级权限',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `type` int(1) DEFAULT NULL COMMENT '权限类型:0->目录;1->菜单;2->按钮(接口绑定权限)',
  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `status` int(1) DEFAULT NULL COMMENT '启用状态:0->禁用;1->启用',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户权限表\r\n';

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` bigint(20) NOT NULL COMMENT '后台用户角色编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` int(1) DEFAULT NULL COMMENT '启用状态:0->禁用;1->启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户角色表\r\n';

-- ----------------------------
-- Table structure for ums_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色编号',
  `permission_id` bigint(20) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户角色-权限 关系表\r\n';
