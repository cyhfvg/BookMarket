/*
Navicat MySQL Data Transfer

Source Server         : localhost_bookmarket
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-04-20 14:26:49
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
-- Table structure for bmsbookidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmsbookidgenerator`;
CREATE TABLE `bmsbookidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for bmscartlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmscartlogidgenerator`;
CREATE TABLE `bmscartlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for bmssearchlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmssearchlogidgenerator`;
CREATE TABLE `bmssearchlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for bms_book
-- ----------------------------
DROP TABLE IF EXISTS `bms_book`;
CREATE TABLE `bms_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` bigint(20) DEFAULT NULL COMMENT '卖家id',
  `ISBN` varchar(13) DEFAULT NULL COMMENT 'ISBN号',
  `name` varchar(64) DEFAULT NULL COMMENT '书名',
  `author` varchar(64) DEFAULT NULL COMMENT '作者',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `price` int(10) DEFAULT NULL COMMENT '价格 元宝',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '分类id',
  `product_category_name` varchar(255) DEFAULT NULL COMMENT '书籍分类名称',
  `summary` text COMMENT '书籍简介',
  `description` text COMMENT '本书描述',
  `album_pics` varchar(255) DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `delete_status` int(1) DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int(1) DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `old_status` int(1) DEFAULT NULL COMMENT '新品状态:0-1:1成新,1-2:2成新;...9-10:10成新',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='商品信息';

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
-- Table structure for bms_cart_log
-- ----------------------------
DROP TABLE IF EXISTS `bms_cart_log`;
CREATE TABLE `bms_cart_log` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `member_id` bigint(20) NOT NULL COMMENT '用户id',
  `book_id` bigint(20) NOT NULL COMMENT '书籍id',
  `ISBN` varchar(13) NOT NULL COMMENT '书籍ISBN',
  `add_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户购物车内容表';

-- ----------------------------
-- Table structure for bms_search_log
-- ----------------------------
DROP TABLE IF EXISTS `bms_search_log`;
CREATE TABLE `bms_search_log` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `member_id` bigint(20) DEFAULT NULL COMMENT '用户编号',
  `ISBN` varchar(13) DEFAULT NULL COMMENT '搜索书籍isbn',
  `text` varchar(255) DEFAULT NULL COMMENT '搜索内容',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '搜索时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for omscompanyaddressidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `omscompanyaddressidgenerator`;
CREATE TABLE `omscompanyaddressidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for omsorderidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `omsorderidgenerator`;
CREATE TABLE `omsorderidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for omsorderitemidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `omsorderitemidgenerator`;
CREATE TABLE `omsorderitemidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for oms_company_address
-- ----------------------------
DROP TABLE IF EXISTS `oms_company_address`;
CREATE TABLE `oms_company_address` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `member_id` bigint(20) DEFAULT NULL COMMENT '用户编号',
  `address_name` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `send_status` int(1) DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
  `receive_status` int(1) DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
  `name` varchar(64) DEFAULT NULL COMMENT '收发货人姓名',
  `phone` varchar(64) DEFAULT NULL COMMENT '收货人电话',
  `province` varchar(64) DEFAULT NULL COMMENT '省/直辖市',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `region` varchar(64) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for oms_order
-- ----------------------------
DROP TABLE IF EXISTS `oms_order`;
CREATE TABLE `oms_order` (
  `id` bigint(20) NOT NULL COMMENT '订单id',
  `member_id` bigint(20) NOT NULL COMMENT '用户编号',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '用户账号',
  `total_amount` int(11) DEFAULT NULL COMMENT '总金额',
  `status` int(1) DEFAULT NULL COMMENT '订单状态:0->待付款;1->待发货;2->已以货;3已完成;4->已关闭;5:无效订单',
  `delivery_company` varchar(64) DEFAULT NULL COMMENT '物流公司',
  `delivery_sn` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `receiver_name` varchar(100) NOT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(32) NOT NULL COMMENT '收货人电话',
  `receiver_post_code` varchar(32) DEFAULT NULL COMMENT '收货人邮编',
  `receiver_province` varchar(32) DEFAULT NULL COMMENT '省份/直辖市',
  `receiver_city` varchar(32) DEFAULT NULL COMMENT '城市',
  `receiver_region` varchar(32) DEFAULT NULL COMMENT '区',
  `receiver_detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `note` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `confirm_status` int(1) DEFAULT NULL COMMENT '确认收货状态:0->未确认;1->已确认',
  `delete_status` int(1) DEFAULT NULL COMMENT '删除状态:0->未删除;1->已删除',
  `paymemt_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发货时间',
  `receive_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '确认收货时间',
  `modify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for oms_order_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item`;
CREATE TABLE `oms_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `member_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `book_id` bigint(20) DEFAULT NULL COMMENT '书籍id',
  `book_isbn` varchar(13) DEFAULT NULL COMMENT '书籍isbn',
  `book_name` varchar(200) DEFAULT NULL COMMENT '书名',
  `book_pic` varchar(500) DEFAULT NULL COMMENT '书籍封面',
  `book_price` int(11) DEFAULT NULL COMMENT '书籍价格',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='订单中所包含的商品';

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
-- Table structure for umsmemberlikeidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberlikeidgenerator`;
CREATE TABLE `umsmemberlikeidgenerator` (
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
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `balance` int(11) DEFAULT NULL COMMENT '余额',
  `nickname` varchar(64) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别:0->未知;1->男;2->女',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所在城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `status` int(1) DEFAULT NULL COMMENT '用户启用状态:0->未启用;1->启用',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `growth` int(11) DEFAULT NULL COMMENT '成长值',
  `member_level_id` bigint(20) DEFAULT NULL COMMENT '用户等级编号',
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
-- Table structure for ums_member_like
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_like`;
CREATE TABLE `ums_member_like` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL COMMENT '用户编号',
  `ISBN` varchar(13) DEFAULT NULL COMMENT '书籍isbn',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
