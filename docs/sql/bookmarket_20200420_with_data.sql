/*
Navicat MySQL Data Transfer

Source Server         : localhost_bookmarket
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : bookmarket

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2020-04-20 16:40:42
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
-- Records of bmsbookcategoryidgenerator
-- ----------------------------
INSERT INTO `bmsbookcategoryidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for bmsbookidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmsbookidgenerator`;
CREATE TABLE `bmsbookidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bmsbookidgenerator
-- ----------------------------
INSERT INTO `bmsbookidgenerator` VALUES ('217');

-- ----------------------------
-- Table structure for bmscartlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmscartlogidgenerator`;
CREATE TABLE `bmscartlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bmscartlogidgenerator
-- ----------------------------
INSERT INTO `bmscartlogidgenerator` VALUES ('96');

-- ----------------------------
-- Table structure for bmssearchlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `bmssearchlogidgenerator`;
CREATE TABLE `bmssearchlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bmssearchlogidgenerator
-- ----------------------------
INSERT INTO `bmssearchlogidgenerator` VALUES ('187');

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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of bms_book
-- ----------------------------
INSERT INTO `bms_book` VALUES ('14', '34', '9787101052039', '万历十五年', '(美) 黄仁宇, 著', 'http://api.jisuapi.com/isbn/upload/70/1401770.jpg', '111', null, null, '《万历十五年》由中华书局在1982年出版，是海外华裔历史学家黄仁宇先生的成名之作，也是他的代表作之一。本书融会黄先生数十年人生经历与治学体会于一体，首次以“大历史观”分析明代社会之症结，观察现代中国之来路，发人深省。黄仁宇先生生前，曾希望中文版能够增入一些图片，但限于当时的出版条件，这一点没有做到。兹蒙黄仁宇先生的家属慨允，在1982年中文版的基础上，推出《万历十五年》纪念珍藏本。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('15', '34', '9787512419384', '人类简史', '何立民, 著', 'http://api.jisuapi.com/isbn/upload/44/2820344.jpg', '1', null, null, '《人类简史》全书共14章。内容有：人类起源与进化之谜、人类起源的全新视角、人类怎样告别动物界、知识与工具的人类历史、三元体系中的人类进化史、记述态知识与人类现代文明、人类从生存时代到财富时代、人类进化中的知识力量革命、人类抗争性演化的科学宿命论、人类知识演化与大脑特异进化、人类的两种文化起源与碰撞、第三种文化的诞生与人类未来、人类的贪婪与现代文明的丑陋、非自然人类的起源与演化。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('16', '34', '9787508672069', '未来简史', ' (以) 尤瓦尔·赫拉利, 著', 'http://api.jisuapi.com/isbn/upload/32/287432.jpg', '1', null, null, '这是一本回顾人类发展史和从社会科学层面分析未来社会发展机遇的作品，属社会科学总论和历史类图书范畴。作者在书中回顾了人类在漫长的进化过程中所衍生出的各种社会、文化、认知层面的观点，从社会科学的层面对这些观点进行了独特的解读。认为智人能够从众多的物种中脱颖而出主要依靠“虚构故事”和“有效沟通”这两种能力。而进入二十一世纪后，智人面临着新的待办议题：永生、快乐和成为具有“神性”的人类。在解决这些新问题的过程中，科学技术的发展将颠覆我们很多当下认为无需佐证的“常识”。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('17', '34', '9787544276597', '丈量世界', ' (德) 凯曼, 著', 'http://api.jisuapi.com/isbn/upload/67/1308667.jpg', '1', null, null, '十八世纪末，两位德国青年分别以自己的方式“丈量世界”。一位是亚历山大·冯·洪堡，他不但亲赴原始森林、大草原，还深入奥利诺科河，以身试毒，计算土著身上的头虱，还探勘洞穴，攀登火山，经历千惊万险，目睹海怪出没，与食人族欢聚一堂。另一位是数学家暨天文学家卡尔·弗里德里希·高斯，他不需要离开家门却能证明出：空间是曲面的。他少了女人就活不下去，却在新婚之夜为了要记下某个灵光闪现的公式而跳下床。他们用不同的维度丈量世界，却同样伟大。作者以极精致的手法，巧妙结合了史实与虚构情节，全书丰富的想象力难得一见，充满哲思且震撼人心，是一本精采绝伦的冒险小说。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('18', '34', '9787506382397', '兼爱者', '陈为人, 著', 'http://api.jisuapi.com/isbn/upload/26/2209626.jpg', '1', null, null, '《兼爱者：墨子传》汇集广泛学术资料，别开生面地展现了墨子的毕生事略及墨家学说原貌，较为完整和全面地展示了墨子学说的内涵和特征，在现有的墨子传记中可谓独树一帜。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('19', '34', '9787108041531', '邓小平时代', ' (美) 傅高义, 著', 'http://api.jisuapi.com/isbn/upload/49/395749.jpg', '1', null, null, '本书是作者积十年之力精心撰写完成的，英文版2011年9月由哈佛大学出版社出版，刚一问世就广受关注，很快就被誉为“了解当代中国的必备著作”。全书对邓小平的人生历程进行了简要的勾勒后，深入探讨了邓小平从1970年代开始，在中国的每一个重大历史转折关头的思考和行动，以及这些思考和行动的历史背景和后果。作者笔下的邓小平有坚定的信仰、丰富的领导经验、杰出的政治智慧，在各种复杂的环境中，坚持把中国引向开放、稳定和发展，并取得了举世瞩目的成就。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('20', '34', '9787508651903', '论中国', ' (美) 基辛格, 著', 'http://api.jisuapi.com/isbn/upload/81/1815781.jpg', '1', null, null, '《论中国》是美国前国务卿亨利·基辛格唯一一部中国问题专著。他以一位资深外交家和思想家的独特视角，分析和梳理了中国自鸦片战争以来的外交传统，从围棋文化与孙子兵法中探寻中国人的战略思维模式，特别是试图揭示新中国成立以来，中国外交战略的制定和决策机制，以及对“一边倒”的外交政策、抗美援朝、中美建交、三次台海危机等等重大外交事件来龙去脉的深度解读。作为历史的亲历者，基辛格博士还在书中记录了自己与毛泽东、邓小平等几代中国领导人的交往。  本书用世界视角国际眼光，重新解读中国的过去和未来，凝结了基辛格博士的战略理论以及对中国问题数十年的研究成果，注定将成为让世界认识中国、让中国重新认识自己的一部重量级作品！', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('21', '34', '9787200050349', '人类群星闪耀时', '(奥) 茨威格 (Zweig,S.) , 著', 'http://api.jisuapi.com/isbn/upload/274/273825.jpg', '1', null, null, '本书是奥地利文学家、史学家茨威格撰写的一部史学著作，用文学的手法叙写了人类历史上的12个决定性的历史瞬间，书中结合内容配有精彩的历史图片。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('22', '34', '9787561386392', '万万没想到', '李天飞, 著', 'http://api.jisuapi.com/isbn/upload/79/2394379.jpg', '1', null, null, '作为四大名著之一的《西游记》，在中国有着最广泛的群众基础，从动画片到衍生电影，从图书到周边产品，可以说是男女老少“通吃”，但读过西游记原著的人其实并不多，读了原著敢说自己读明白的那说明的确不明白。因为《西游记》中有着很多谜团，如果不了解写作背景，书中典故，很难准确解读、理解西游记到底在讲什么。本书作者李飞天通过扎实的文献考证，用轻松的语言为读者详细解读西游记。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('23', '34', '9787030107596', '从一到无穷大', '[美] G. 伽莫夫', 'http://api.jisuapi.com/isbn/upload/1677/1676389.jpg', '1', null, null, '《从一到无穷大：科学中的事实和臆测》是当今世界最有影响的科普经典名著之一，1970年代末由科学出版社引进出版后，曾在国内引起很大反响，直接影响了众多的科普工作者。\n作品以生动的语言介绍了20世纪以来科学中的一些重大进展。先漫谈一些基本的数学知识，然后用一些有趣的比喻，阐述了爱因斯坦的相对论和四维时空结构，并讨论了人类在认识微观世界（如基本粒子、基因）和宏观世界（如太阳系、星系等）方面的成就。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('24', '35', '9787508662923', '给世界的答案', ' (美) 温伯格, 著', 'http://api.jisuapi.com/isbn/upload/26/507426.jpg', '1', null, null, '围绕着我们的世界充满着各种谜题，古人试图用神、宗教等来解释日升月落、电闪雷鸣等，他们也就从这个方面理解人类和时代等。随着时间流转，认识世界的方法从宗教等进步到了科学，更深和更真实地认识了人类社会是如何不断发展和演变的。诺贝尔奖得主斯蒂芬·温伯格带我们领略了这段挑战前人而又扣人心弦的丰富历史，足迹从古代的米利都，到中世纪的巴格达和牛津，从柏拉图学院和亚历山大博物馆，到沙特尔教会学校和伦敦皇家学会。本书富有启发性地探索了思考世界和分析世界的方法和规律，预言将来可能有的更多认识世界的办法。更重要的是，本书提出人类正是这样的坚持和追求而不断进步，不断认识这个世界和自己身处的时代。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('25', '35', '9787508619408', '华尔街的伟大博弈', ' (美) 戈德堡, 著', 'http://api.jisuapi.com/isbn/upload/1312/1311350.jpg', '1', null, null, '传统的商业银行、投资银行，新兴的对冲基金、私人股权投资公司组成了华尔街的买方和卖方，数百年来，规模空前的金融权力之争一直在华尔街上演。华尔街两大阵营如何争夺金融权力，成为博弈的赢家？本书揭示了华尔街两大集团的历史争斗，并预测了危机之后华尔街未来可能的权力格局，是洞察华尔街权力战、金融局的必读书。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('26', '35', '9787550242234', '哲学家们都干了些什么', '林欣浩, 著', 'http://api.jisuapi.com/isbn/upload/43/2520443.jpg', '1', null, null, '这是一本介绍什么是哲学，哲学研究些什么，哲学从何而来，如何发展等问题的“哲学”问题通俗读物。全书共四十六章，分上下两篇，以古希腊为哲学研究起点，根据时间顺序，向读者介绍不同时代背景下的哲学成果及主要代表人物，东西兼容，博古通今。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('27', '35', '9787506366380', '苏菲的世界', ' (挪) 贾德 (Gaarder,J.) , 著', 'http://api.jisuapi.com/isbn/upload/9/393309.jpg', '1', null, null, '本书为长篇小说，此次为绘图版。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('28', '35', '9787561351239', '西方哲学史', ' (英) 罗素 (Russell,B.) , 著', 'http://api.jisuapi.com/isbn/upload/63/1873263.jpg', '1', null, null, '《西方哲学史》是英国数学家、哲学家、文学家、社会活动与评论家伯兰特·罗素的一部哲学名著，出版于1945年，全面考察了从古希腊罗马时期到20世纪中叶西方哲学思潮的发展历程，揭示了在哲学的发展历程中，科学与宗教、社会团结和个人自由是如何错综复杂地交织在一起与哲学交互作用的。其突出的特点是它所论述的主题：哲学不是卓越的个人所做的独立的思考，而是社会政治生活的一个组成部分，是“各种社会性格的产物与成因”。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('29', '35', '9787308086141', '维特根斯坦传', ' (英) 蒙克, 著', 'http://api.jisuapi.com/isbn/upload/91/1041591.jpg', '1', null, null, '本书是一本详细全面的维特根斯坦生平传记，它被公认为是将维特根斯坦的思想与生活结合起来加以研究的典范。在英语世界具有广泛的影响力并获奖、再版多次。另外本书引用了大量的原作，是一本深入浅出通俗易懂地理解和认识维特根斯坦的作品。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('30', '35', '9787538546422', '黑格尔', '谢华良著', 'http://api.jisuapi.com/isbn/upload/1883/1882140.jpg', '1', null, null, '本套书分别讲述了72位伟人在艰难拼搏中创造辉煌的传奇人生，为广大中小学生树立成长进步的榜样。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('35', '35', '9787807659938', '中国人的精神', '辜鸿铭, 著', 'http://api.jisuapi.com/isbn/upload/600/599179.jpg', '1', null, null, '《中国人的精神》由辜鸿铭的一系列英文论文结集而成，是东西方文化比较的早期代表作品。本书是辜式所有著作中最有影响，最能反映他思想风貌的作品，于1915年出版。晚清以来，中国形象被严重扭曲。辜鸿铭在《中国人的精神》中着力阐述中国传统文化对西方文明的价值，用自己的笔维护了中国文化的尊严，改变了部分西方人对中国的偏见，在当时中国文化面临歧视、中华民族遭受欺凌的情况下，其影响尤为特殊。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('36', '36', '9787563957040', '查拉图斯特拉如是说', ' (德) 弗里德里希·尼采, 著', 'http://api.jisuapi.com/isbn/upload/3619/3618486.jpg', '1', null, null, '《查拉图斯特拉如是说》是尼采是德国哲学家、思想家尼采的一部里程碑式的作品，也是具有极高文学价值的散文诗，在世界哲学史上占有一席之地。尼采假借查拉图斯特之名说出了自己的哲学思想，文笔绮丽，哲理深沉，道出了作者对人生的深邃体悟。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('37', '36', '9787561383254', '月亮与六便士', ' (英) 毛姆, 著', 'http://api.jisuapi.com/isbn/upload/55/2972955.jpg', '1', null, null, '《月亮和六便士》的情节以法国后印象派画家高更的生平为基础，主人公原是位证券经纪人，人届中年后突然响应内心的呼唤，舍弃一切到南太平洋的塔希提岛与土著人一起生活，获得灵感，创作出许多艺术杰作。毛姆在小说中深入探讨了生活和艺术两者的矛盾和相互作用。《月亮和六便士》问世后，以情节入胜、文字深刻在文坛轰动一时，人们争相传看。在小说中，毛姆用第一人称的叙述手法，借“我”之口，叙述整个故事，有人认为这篇小说的原型是法国印象派画家高更，这更增加了它的传奇色彩，受到了全世界读者的关注。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('38', '36', '9787506868754', '刀锋', ' (英) 威廉·萨默塞特·毛姆（William Somers', 'http://api.jisuapi.com/isbn/upload/3244/3243804.jpg', '1', null, null, '本书是《刀锋》插图版，除了《刀锋》的故事，还大量增加了作者写作手法分析和相关作品分析。《刀锋》是英国著名小说家威廉·萨默塞特·毛姆（1874-1965）的主要作品之一，首次出版于1944年。小说描写了一个参加第一次世界大战的美国青年飞行员拉里。拉里在军队里结识了一个爱尔兰好友，这人平时是那样一个生龙活虎般的置生死于度外的飞行员，他在一次遭遇战中，因为救拉里而中弹牺牲。拉里因此对人生感到迷惘，弄不懂世界上为什么有恶和不幸，拉里开始了他令人匪夷所思的转变。死亡使拉里对生命有了独特体验，他的自我意识开始觉醒，他开始追问生命的意义、人生的意义。毛姆的行文冷峻深刻而坦诚直率，评判客观而褒贬自现。在《刀锋》中，他将各种人物角色的命运和拉里的人生境界作对比，说明建立在物质基础上的尘世的满足都是短暂的，而追求自我完善的精神生活才能获得持久的快乐和幸福。毛姆一生喜欢游历，足迹踏遍世界各地，深谙东西方文化。他以哲人般的睿智洞察到东方文化中具有一种令人沉静通透的魅力，可以直达内心。毛姆塑造的拉里体现了人之精神纬度，追求人格的完善和人性的至高境界，也是毛姆为现代人探索的一条精神出路。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('39', '36', '9787229047214', '冰与火之歌', ' (美) 马丁 (Martin,G.R.R.) , 著', 'http://api.jisuapi.com/isbn/upload/63/2437963.jpg', '1', null, null, '本书为乔治·马丁经典史诗奇幻小说“冰与火之歌”“权力的游戏”系列1-3盒装本，描述在虚构的中世纪大陆上所发生的一系列相互联系的宫廷斗争、疆场厮杀、游历冒险和魔法抗衡的故事。书中把人物放在一个“真人”的角度，以别具一格的结构，错落有致的情节，写出他们在时代和社会的旋涡中不同的境遇与选择。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('40', '36', '9787514014877', '动物庄园', ' (英) 乔治·奥威尔, 著', 'http://api.jisuapi.com/isbn/upload/3183/3182967.jpg', '1', null, null, '《动物庄园》是一部政治寓言体小说，故事描述了一场”动物主义”革命的酝酿、兴起和最终蜕变。一个农庄的动物不堪人类主人的压迫，在猪的带领下起来反抗，赶走了农庄主，牲畜们实现了”当家作主”的愿望，农场更名为”动物庄园”，奉行”所有动物一律平等”。之后，两只处于领导地位的猪为了权力而互相倾轧，胜利者一方宣布另一方是叛徒、内奸。此后，获取了领导权的猪拥有了越来越大的权力，成为新的特权阶级;动物们稍有不满，便会招致血腥的清洗:农庄的理想被修正为”有的动物较之其他动物更为平等”，动物们又回复到从前的悲惨状况。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('41', '36', '9787802566101', '黄金时代', '王小波, 著', 'http://api.jisuapi.com/isbn/upload/48/393448.jpg', '1', null, null, '《黄金时代》是当代作家王小波创作的长篇小说。二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，知识分子群体无能为力而极“左”政治泛滥横行。作为倍受歧视的知识分子，往往丧失了自我意志和个人尊严。在这组系列作品里，名叫“王二”的男主人公处于恐怖和荒谬的环境，遭到各种不公正待遇，但他却摆脱了传统文化人的悲愤心态，创造出一种反抗和超越的方式：既然不能证明自己无辜，便倾向于证明自己不无辜。于是他以性爱作为对抗外部世界的最后据点。本书还收录了《三十而立》《似水流年》《革命时期的爱情》《我的阴阳两界》等作品。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('42', '36', '9787205084431', '变形记', ' (奥) 卡夫卡, 著', 'http://api.jisuapi.com/isbn/upload/46/2885346.jpg', '1', null, null, '《变形记》是奥地利著名作家卡夫卡的成名作，写于20世纪初叶。它给全世界的作家带来巨大影响。很多后来的伟大的作家都深深地受到这部作品的影响。同时，他仅仅是个短篇小说家，但区区几部短篇小说，给全世界带来影响，这是非常罕见的文学界里的现象。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('43', '36', '9787121301094', '不可思议的毛毛虫', ' (日) 森昭彦, 著', 'http://api.jisuapi.com/isbn/upload/42/2592742.png', '1', null, null, '这是一本关于毛毛虫的科普书籍。用生动的语言描述了毛毛虫的世界。在本书中，作者列举了100多种毛毛虫，抛弃了说明性的生硬叙述方式，像讲故事一样将它们的外观形态、生活习性和行为特点娓娓道来，向读者展现了一个美丽而奇妙的世界。在作者的笔下，毛毛虫不再是可怕的、恶心的，而是可爱且充满妙趣和魅力的。不仅如此，对它们的研究于科学、于人类也具有极大的价值和意义。本书是面向成年人的简易科普书籍，但也适合青少年读者阅读，有助于培养他们对自然的兴趣。同时，由于本书介绍了关于毛毛虫饲养的相关内容，有这类兴趣的读者也不妨捧起来读一读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('44', '36', '9787532748983', '了不起的盖茨比', ' (美) 菲茨杰拉德 (Fitzgerald,F.S.) ,', 'http://api.jisuapi.com/isbn/upload/73/2208473.jpg', '1', null, null, '二十世纪二十年代的美国，空气里弥漫着欢歌与纵饮的气息。一个偶然的机会，穷职员尼克闯入了挥金如土的大富翁盖茨比隐秘的世界，惊讶地发现，他内心唯一的牵绊竟是河对岸那盏小小的绿灯——灯影婆娑中，住着他心爱的黛西。然而，比的现实容不下飘渺的梦，到头来，盖茨比心中的女神只不过是凡尘俗世的物质女郎。当一切真相大白，盖茨比的悲剧人生亦如烟花般，璀璨只是一瞬，幻灭才是永恒。一阕华丽的“爵士时代”的挽歌，在菲茨杰拉德笔下，如诗如梦，在美国当代文学史上留下了墨色浓重的印痕。二十世纪末，美国学术界权威在百年英语文学长河中选出一百部最优秀的小说，《了不起的盖茨比》众望所归，高居第二位，傲然跻身当代经典行列。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('45', '36', '9787532778256', '悉达多', ' (德) 赫尔曼·黑塞, 著', 'http://api.jisuapi.com/isbn/upload/3217/3216235.jpg', '1', null, null, '本书收入的是黑塞著名的中篇小说《悉达多》，是其最具代表性的力作。《悉达多》叙述一个婆罗门贵族青年寻求人生真谛的一生，他从锦衣玉食到游方为僧，又从骄奢淫逸到摆渡济事，最终悟道成佛。小说被誉为黑塞思想和其文学作品的精华，是具有世界性影响的成功之作。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('46', '36', '9787020090006', '围城', '钱钟书, 著', 'http://api.jisuapi.com/isbn/upload/15/1302815.jpg', '1', null, null, '《围城》是钱钟书唯一的一部长篇小说，堪称中国现当代长篇小说的经典。小说塑造了抗战开初一类知识分子的群像，生动反映了在国家特定时期，特殊人群的行为操守、以及困惑。从另一个角度记述了当时的情景、氛围。虽然有具体的历史背景，但这部小说揭示的只是人群的弱点，在今天依然能够引起人们的共鸣。第一版于1947年由上海晨光出版公司出版。《围城》是中国现代文学史上一部风格独特的讽刺小说。被誉为“新儒林外史”。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('47', '36', '9787020090501', '洗澡', '杨绛, 著', 'http://api.jisuapi.com/isbn/upload/90/393390.jpg', '1', null, null, '《洗澡》描写解放后知识分子所经受的第一次思想改造——当时泛称“三反”，又称“脱裤子，割尾巴”。作者嫌其用词不雅，改称为“洗澡”，实喻“洗脑筋”。作品以那场政治运动为背景，塑造了许彦成和姚宓等一系列形形色色的知识分子形象。小说亦庄亦谐，寓教于乐，加之思想深刻，语言隽永，读来意味深长。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('48', '37', '9787516410325', '解密', '仁达方略管理咨询公司, 著', 'http://api.jisuapi.com/isbn/upload/96/1540796.jpg', '1', null, null, '新常态下的未来五年，企业发展面临新环境、新时代，企业“十三五”的发展思路必须紧跟时代脚步和节奏，甚至走在时代前面，这就需要构建战略新思维，战略新视角。仁达方略管理咨询公司从事管理咨询20年，专注企业战略咨询，服务企业近1300家，希望通过此书，帮助中国企业更好发展。本书立意独特深刻，内容新颖翔实，为企业制定“十三五”战略规划提供编制思路和路径方法。新常态下，企业将面临更加严峻的挑战，迫切需要这样一本拓展战略思维、指引战略方向的书籍。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('49', '37', '9787510806032', '一句顶一万句', '潜龙, 著', 'http://api.jisuapi.com/isbn/upload/2088/2087875.jpg', '1', null, null, '本书用商界精英史玉柱在各种受访场合所说的经典语句向读者展示了他创业的喜怒哀乐、经营管理的心得以及他为人处世的法则。且在文中用启示录的形式诠释了他成功的奥妙，给后学以启迪，让人仅在字里行间就能激起自己创业的冲动，拥有循着成功者的足迹发奋图强的理想。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('50', '37', '9787535449481', '我不是潘金莲', '刘震云, 著', 'http://api.jisuapi.com/isbn/upload/2/918302.jpg', '1', null, null, '本作品为当代著名作家刘震云的最新力作。小说描写一位叫李雪莲的妇女，因为想把意外怀上的第二个孩子“超生”下来，与丈夫秦玉河假离婚办了真手续。待孩子生下后，却发现丈夫已有外遇。李雪莲愤而到法庭告状，要证明当时离婚是假的，却因毫无证据而败诉。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('51', '37', '9787020093144', '沧浪之水', '阎真, 著', 'http://api.jisuapi.com/isbn/upload/82/2165182.jpg', '1', null, null, '作者以娓娓而谈的文笔和行云流水般的故事，写出医学研究生池大为空怀壮志、无职无权的苦，时来运转、有名有利的难；在真切地展示他的人生旅程的同时，也把困扰他的人生难题一一解开。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('52', '37', '9787530217054', '牧羊少年奇幻之旅', ' (巴西) 保罗·柯艾略, 著', 'http://api.jisuapi.com/isbn/upload/3088/3087535.jpg', '1', null, null, '《牧羊少年奇幻之旅》是部追求梦想、完善人生的寓言故事，启示人们实现梦想要经历一个艰难的过程，需要勇气、智慧、执著和经受考验。这部富有强烈象征色彩的作品在世界各地受到盛赞，评价达到极高的成就。美国出版的英文版封面介绍文字称：“能够彻底改变一个人一生的书籍，或许几十年才出现一本，您所面对的正是这样的一本书。”美国图书馆协会将该书推荐为“青少年最佳读物”。法国文化部部长将保罗·科埃略称为“数百万读者心中的炼金术士”。西方评论家把本书誉为影响作者心灵一辈子的现代经典。小说自1988年出版后，便风靡全球，畅销160多个国家，登上20多个国家畅销榜第1名，荣获33项国际大奖，已经被翻译成68种语言，是当今在世作家作品中被翻译最多的小说。全球销量超过6500万册，是历史上最畅销的葡萄牙语小说。这部小说被誉为20世纪最重要的文学现象之一。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('53', '37', '9787229030933', '三体', '刘慈欣, 著', 'http://api.jisuapi.com/isbn/upload/97/393597.jpg', '1', null, null, '在三体星系的外星文明对太阳系发起入侵后，人类利用宇宙社会的黑暗森林原理，以可能导致两个文明同归于尽的宇宙坐标广播为威胁，在两个文明间建立了岌岌可危的战略平衡。掌握威摄控制的人被称为执剑人。在第一任执剑人罗辑老去，新的执剑人任意接替威摄控制后，三体文明突然对地球发起进攻。任意缺乏决断力，没能及时启动坐标广播，至使三体文明迅速占领地球。人类的远航飞船不得不飞向银河深处，文明的种子开始在新世界发芽。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('54', '37', '9787541134562', '流浪地球', '姚海军, 主编', 'http://api.jisuapi.com/isbn/upload/64/1053964.jpg', '1', null, null, '本书是中国历届科幻银河奖作品集的第四册。包含1995年、1996年两届“银河奖”获奖作品。中国科幻银河奖是中国唯一的科幻奖，在推动科幻文学发展方面发挥了非常重要的作用。银河奖至今已评选22届，囊括了自1986年以来几乎所有中国科幻重要作家的重要作品。在科幻迎来新的热潮的今天，将这一奖项获奖作品结集出版，不仅是对中国科幻发展路程的梳理，也是对读者阅读中国科幻原创精品需要的满足。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('55', '37', '9787567711716', '小王子', ' (美) 梭罗 (Thoreau,H.D.) , 著', 'http://api.jisuapi.com/isbn/upload/6/583106.jpg', '1', null, null, '《瓦尔登湖》是美国作家梭罗所著的一本著名散文集。梭罗在书中详尽地描述了他在瓦尔登湖湖畔一片再生林中度过两年零两个月的生活以及期间他的许多思考。梭罗把这次经历称为简朴隐居生活的一次尝试。全书充满了宁静、恬淡、智慧。其中分析生活、批判习俗处，句句惊人，字字闪光，见解独特，耐人寻味。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('56', '37', '9787111517436', '在股市遇见凯恩斯', ' (美) 瓦辛科 (Wasik,J.F.) , 著', 'http://api.jisuapi.com/isbn/upload/66/2581666.jpg', '1', null, null, '本书是对关于约翰·梅纳德·凯恩斯的生平和工作的若干书本、小品文章和研究的重要扩充。约翰·瓦辛科的“10把财富锁钥”也反映出他与今天投资领域的关联。本书作者通过描述凯恩斯勋爵表达其人生哲学的方式得出结论：只有那些“不会为了生活的手段而出卖自己，能够使生活的艺术永葆青春，并将之发扬光大，提升到更高境界的人方能在这种丰裕中获得享受。”约翰·瓦辛科呼吁投资者在今天疲软全球经济的挑战下，重拾类似的人生哲学。本书以轻松生动的风格讲述了凯恩斯的投资故事，使读者有机会一窥这位经济大师的创富故事。对投资和经济感兴趣的读者都应可一读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('57', '37', '9787508614212', '滚雪球', '(美) 施罗德 (Schroeder,A.) , 著', 'http://api.jisuapi.com/isbn/upload/1874/1873136.jpg', '1', null, null, '许多年来，巴菲特一直备受媒体的追捧。但注重个人隐私的巴菲特从未花这么多时间回答任何记者或作者的问题，为了支持这本书的创作，他破例花费了2000小时与作者施罗德进行长谈，回顾他的儿时、他过去的点点滴滴，畅谈自己的家庭和人生经历，分享他几十年投资生涯中的宝贵经验。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('58', '38', '9787208105485', '穷查理宝典', ' (美) 考夫曼', 'http://api.jisuapi.com/isbn/upload/396/395802.jpg', '1', null, null, '《穷查理宝典》是查理·芒格将自己的人生智慧、处世之道以及商业哲学思想与世人分享的经典之作，语言精练、风趣幽默。增订本新加芒格作品两篇，解读西方金融危机的根源。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('59', '38', '9787506830645', '保守主义', '杨明伟, 著', 'http://api.jisuapi.com/isbn/upload/41/2271841.jpg', '1', null, null, '本书力图从政治哲学的意义上来理解和分析保守主义，其中第一章到第四章主要概括、抽象地分析保守主义的内涵、特征、原则（第一章），保守主义的起源、演变与主要派别、类型（第二章），保守主义的理论基础（第三章），保守主义的基本政治思考（第四章）。在以第一章到第四章为铺垫和线索的基础上重点介绍和分析保守主义历史上有代表意义的重要的保守主义政治哲学家（第五章），笔者试图通过这一章的重点介绍和分析，让读者更加清楚明白地理解从第一章到第四章的保守主义的具体主张。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('60', '38', '9787542662293', '金融的逻辑', '陈志武, 著', 'http://api.jisuapi.com/isbn/upload/3178/3177802.jpg', '1', null, null, '现代经济已经从简单的”无商不富”过渡到”无股权不大富”，金融成为现代财富机器的核心引擎。但是，要充分发挥这个财富机器的效能，必须要有良好的法治和产权保护体系，以及开放的新闻媒体作为基础。否则，股市就会成为一个”劣币驱逐良币”的场所，所有的经济泡沫也终将破灭。本书所收集的文章，从不同角度讨论金融、法治、新闻媒体对于”致富”的基础性作用。既有理论上的分析，更结合大量实际案例，让我们透彻了解现代财富机器的运作机制。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('61', '38', '9787530656280', '中国历史的博弈故事', '佟伟著', 'http://api.jisuapi.com/isbn/upload/2185/2184162.jpg', '1', null, null, '本书以生动的文字和曲折的情节讲述了中国古代历史上的经典政治博弈故事，并深刻分析了蕴含其中的社会历史原因。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('62', '38', '9787553809182', '曾国藩的正面与侧面', '张宏杰, 著', 'http://api.jisuapi.com/isbn/upload/3195/3194504.jpg', '1', null, null, '这是一本关于曾国藩的专著，作者用丰富的史料，故事化的语言生动讲述了曾国藩如何创办湘军，并处理与湘军其他著名领袖左宗棠、胡林翼，淮军领袖李鸿章等人的关系。本书为读者全面展示了曾国藩的领导力，他尚拙、尚诚等原则在打造湘军过程中起到了非常关键的作用，左宗棠、李鸿章等人也在他的教诲下成长起来。曾国藩的领导力对当今社会还是具有同样可以学习和借鉴的地方，本书具有一定的社会价值。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('63', '38', '9787108051721', '干校六记', '杨绛, 著', 'http://api.jisuapi.com/isbn/upload/32/2342632.jpg', '1', null, null, '《干校六记》这本书是中国现代散文的高峰和典范。书中记述了1970～1972年间作者夫妇在河南干校的种种“琐细的旧闻和飘忽的感受”，作者用温婉淡然、近乎白描的手法为那个特殊的历史时代画了一幅意味深长的剪影。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('64', '38', '9787539632049', '容忍比自由更重要', '胡适, 著', 'http://api.jisuapi.com/isbn/upload/75/1232375.jpg', '1', null, null, '本书系我社“理想图文藏书”系列之一。本书全面收录新文化运动呼风唤雨的领袖人物胡适先生最精华的文论、散文名篇，还包括少见的诗歌等，汇集了胡适先生浩如烟海的著作文集中最富有闪光点、也最易于大家把握的篇章，并配以大量珍贵图片，图文并茂，平添阅读趣味。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('65', '38', '9787500111313', '用幽默英语介绍自己', '(日) 玛丽, 著', 'http://api.jisuapi.com/isbn/upload/1361/1360469.jpg', '1', null, null, '本书介绍了适用于不同场合用英语自我介绍的诙谐用语。除了可以营造出活泼和睦的气氛外，还能给对方留下深刻的第一印象。读者还可以利用本书培养自己的英语能力和幽默感。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('66', '38', '9787568224666', '人生有何意义', '胡适, 著', 'http://api.jisuapi.com/isbn/upload/96/516896.jpg', '1', null, null, '《人生有何意义》是胡适精选文集，汇集了胡适先生浩如烟海的著作中最富有闪光点、与人生有何意义主题相关的文章，集结成册，胡适深受赫胥黎与约翰·杜威的影响，自称赫胥黎教他怎么怀疑，杜威先生教他怎样思想。他学识渊博，学贯中西，对中国整个社会的发展产生了重要影响，那么他是怎么看待人生的呢，阅读本书，您能窥见胡适先生思想宝库中闪烁的数不清的珍宝。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('67', '38', '9787511123916', '给出一个什么问题', '中国环境报社', 'http://api.jisuapi.com/isbn/upload/47/1811547.jpg', '1', null, null, '中国环境报社是环境保护部直属事业单位。《给出一个什么问题？》集中展示中国环境报社风格推进、风格形成、风格巩固主题年的清晰脉络与丰硕成果，以进一步提升中国环境报社在可持续发展领域的社会影响力，形成鲜明的风格，迎接新挑战，迈向新的辉煌。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('68', '39', '9787549546817', '美国十讲', '资中筠, 著', 'http://api.jisuapi.com/isbn/upload/2816/2815548.jpg', '1', null, null, '应国家图书馆主持的视频讲座之约，于2012年就美国问题录制了系列讲座，共九讲。以那几次讲座的录音稿为基础，修改、加工、补充，扩展为十讲，今集结成书以飨读者。需要说明的是，这不是美国通史，也不是学术著作，而是作者多年观察美国的心得，尽量用浅显的“大白话”讲出来。作为通俗读本，主要对象是国际研究专业以外对美国有一定兴趣的人士，大、中学生均可作为课外阅读材料。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('69', '39', '9787508699240', '神在人间的时光', '陈喜辉, 著', 'http://api.jisuapi.com/isbn/upload/3332/3331770.jpg', '1', null, null, '本书是有关希腊神话的重新解构与解读，以有关希腊、罗马神话的原典为基础，以锐利的语言，用现代的解读方式去解读希腊神话，表现希腊众神。分为“圣山王族”、“在野神灵”、“大地超人”和“伤爱飞情”四个板块，对内容繁复的希腊神话与传说进行了妙趣横生的艺术再加工。希腊神话作为西方文化的源头之一，同时对西方的文化与生活影响深远。了解西方社会，希腊神话是必备的文化修养，拥有广泛可被开发的读者群。陈喜辉老师对希腊神话的解读打破了希腊神话人神混讲、故事交叉的难题，富有趣味性及当代性，打破了希腊神话高冷难读的阅读情形。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('70', '39', '9787549256525', '佛祖都说了些什么', '林欣浩, 著', 'http://api.jisuapi.com/isbn/upload/3234/3233469.jpg', '1', null, null, '本书是一部社科类普及读物，用轻松易懂的写法，介绍了汉传佛教的历史。六道轮回是否存在？罗汉和菩萨谁的级别更高？坏人到庙里捐钱能否获得福报？为什么有的佛经像绕口令？所有和佛学相关的疑问，这里都有解答。所有对佛教模糊的概念，这里都会进行清晰地分辨。对佛学一窍不通的人，也能轻松地看懂。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('71', '39', '9787213046278', '明朝那些事儿', '当年明月, 著', 'http://api.jisuapi.com/isbn/upload/45/1693745.jpg', '1', null, null, '本书讲述的是明朝最后一位皇帝崇祯。他究竟是一个昏庸无能的皇帝，还是一个力图奋起的人，本书对这一段历史进行了分析梳理，引人思索。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('72', '39', '9787206030048', '自私的基因', '(英)里查德.道金斯', 'http://api.jisuapi.com/isbn/upload/3259/3258191.jpg', '1', null, null, '虽然黑猩猩和人类的进化史大约有99.5%是共同的，但人类的大多数思想家把黑猩猩视为畸形异状、与人类毫不相干的怪物，而把他们自己看成是上升为万物之主的阶梯。对一个进化论者来说，情况绝非如此。认为某一物种比另一物种高尚是毫无客观依据的。不论是黑猩猩和人类，还是蜥蜴和真菌，他们都是经过长达约三十亿年之久的所谓自然选择这一过程进化而来。每一物种之内，某些个体比另一些个体留下更多的生存后代，因此，这些得以繁殖的幸运者的可遗传特性（基因），在其下一代中的数量就变得更加可观。基因的非随机性的区分繁殖就是自然选择。自然选择造就了我们，因此，要想了解我们的自身特性，就必须懂得自然选择。\n尽管达尔文的自然选择进化学说是研究社会行为的关键所系（特别是同\n孟德尔的遗传学相结合时），但却一直为许多人所忽视。社会科学领域内一系列研究部门相继兴起，致力于建立一种达尔文前和孟德尔前派的社会和心理世界的观点。甚至在生物学领域中，忽视和滥用达尔文学说的情况一直令人诧异。无论造成这种异常发展的原因究竟何在。有迹象表明，这种状况即将告终。达尔文和孟德尔所进行的伟大工作已为日渐增多的科学工作者所发展，其中著名者主要有菲希尔（R', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('73', '39', '9787020100255', '追求自由的波伏瓦', '李亚凡, 著', 'http://api.jisuapi.com/isbn/upload/11/1253711.jpg', '1', null, null, '波伏瓦是法国著名作家，她和萨特共同创立了存在主义哲学。她既是萨特的助手，又是萨特的终身知己。他们是一对自由情侣、是一个不可分割的精神实体；他们长达半个世纪没有婚姻束缚的“契约式爱情”，既惊世骇俗，又荡气回肠，而他们各自与其他异性及同性间的性生活既遭非议，又引人关注。本书第一次全面、客观、详尽地解读了波伏瓦和萨特，以及他们各自与其他异性及同性间的性生活。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('74', '39', '9787508643335', '反脆弱', ' (美) 塔勒布, 著', 'http://api.jisuapi.com/isbn/upload/76/2778376.jpg', '1', null, null, '本书是由畅销书《黑天鹅》作者写作的，旨在告诉我们如何在充满不确定性的经济世界中获得可持续发展和实现繁荣的一本经济读物。在《黑天鹅》中，塔勒布向我们揭示了极其罕见而不可预测的事件如何潜伏在经济周期中，而在本书中，他极力为不确定性正名，让我们看到它有益的一面和其存在的必要性，他还建议我们以反脆弱性的方式构建经济世界。在书中，塔勒布提出5项规则，帮助我们在经济体系中建立反脆弱性，从容应对“黑天鹅”事件。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('75', '39', '9787115373458', '最受欢迎的哈佛大学幸福课', '王柳珍著', 'http://api.jisuapi.com/isbn/upload/63/1176763.jpg', '1', null, null, '本书通过丰富翔实的故事把哈佛大学最神奇的幸福课的精髓内容深入浅出地介绍给读者，希望读者也能从本书学到百年哈佛的成功智慧，从而抛掉那些无谓的烦恼和压力，使自己的生活更幸福、人际更和谐、物质上更富有，从而让自己享有一个成功而快乐的人生。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('76', '39', '9787111614418', '高绩效教练', ' (英) 约翰·惠特默 (John Whitmore) , ', 'http://api.jisuapi.com/isbn/upload/3411/3410286.jpg', '1', null, null, '教练技术是顺应了知识经济时代对领导和管理的呼声，集现代心理学、神经科学和领导力研究之大成，应运而生、乘势而上发展起来的一种管理技能。《高绩效教练》（原书第5版）以GROW教练模型，即目标（goal），现状（reality），选择（option），意愿（will）作为教练逻辑，引用职场及运动场上的例子，清晰阐述了教练的理念和技巧。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('77', '39', '9787121298707', '失控', ' (美) 凯文·凯利 (Kevin Kelly) , 著', 'http://api.jisuapi.com/isbn/upload/2374/2373777.jpg', '1', null, null, '《失控全人类的最终命运和结局》这是《黑客帝国》主要演员的必读物之一，这本关于机器、系统、生物和社会的“大部头”，揭示了社会进化、特别是互联网发展的“先知预言”，从这本书里，人们可以窥探到SNS的今天和未来。《失控全人类的最终命运和结局》涉猎：天文、化学、生物、计算机、控制论、运筹学、社会学……同时又堪比《黑客帝国》中洞悉未来的“神谕”，正在兴起的“云计算”、“物联网”等都可以在这本写于15年前的书中找到相关的影子。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('78', '40', '9787122309273', '智能时代', '余来文, 林晓伟, 刘梦菲, 刘修财著', 'http://api.jisuapi.com/isbn/upload/3610/3609496.jpg', '1', null, null, '阿尔法狗接连打败李世石、柯洁，无人驾驶汽车从科幻慢慢变为现实，人工智能正在全世界如火如荼地“跑马圈地”。我们正在被一个前所未有的以智能技术为核心驱动力的新型社会裹挟着前行。随着智能时代的来临，每个企业和个人都在经受着前所未有的挑战，但挑战与机遇并存，我们要积极探索，紧跟前沿，才能在这波智能化浪潮中不致被淘汰。本书通过丰富的企业案例，帮助我们梳理分析人工智能及其相关的机器学习、超级计算、云端服务、网络安全等前沿领域的发展现状及方向，总结这些企业在智能时代下的应对之策及成功经验，为之后企业的发展转型等提供了很好的参考。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('79', '40', '9787121309564', '80/20生活法则', ' (美) 理查德·科克 (Richard Koch) , 著', 'http://api.jisuapi.com/isbn/upload/92/2932592.jpg', '1', null, null, '作者将80/20法则的应用延伸到个人生活层面。个人生活满意度是由少数的关键事件造成的，只要能专注于这些关键的事件，自然能轻松地达成较为快乐和满意的生活。首先，要找出自己最重视的目标，这个目标能给你最多快乐，快乐报酬率最高，然后将生命能量专注在这个目标上，摒弃其他杂乱的目标。其次，放轻松，寻找“懒人”的解决办法，用最少的努力，创造最大的价值。最后，勇敢地迈出第一步。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('80', '40', '9787508687322', '养育女孩', ' (澳) 史蒂夫·比达尔夫, 著', 'http://api.jisuapi.com/isbn/upload/3142/3141356.jpg', '1', null, null, '这是一本写给家有女儿的父母们的育儿书。本书总结了在养育女孩的过程中，应当特别注意的10件事，来帮助父母们意识到、准备好，应该给予女儿什么，如：给予女儿安全感、告诉女儿交友技巧、培养女儿兴趣的火花、培养女儿坚韧的品格等。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('81', '40', '9787555710615', '非暴力沟通', '林思诚译', 'http://api.jisuapi.com/isbn/upload/3388/3387088.jpg', '1', null, null, '本书是一部人际沟通类图书，向读者介绍了各种情况下的非暴力沟通艺术以及非暴力沟通的训练方法，从而使人们在工作、生活中能够和谐相处。如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话确实伤人！言语上的指责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔膜、敌视。非暴力沟通能够：疗愈内心深处的隐秘伤痛；突破那些引发愤怒、沮丧、焦虑等负面情绪的思维方式；用不带伤害的方式化解人际间的冲突；学会建立和谐的生命体验。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('82', '40', '9787521704365', '养育男孩', ' (美) 丹·金德伦, (美) 迈克尔·汤普森, 著', 'http://api.jisuapi.com/isbn/upload/3460/3459975.jpg', '1', null, null, '本书属于文教类图书。每一个有麻烦的男孩背后都有不同的故事，但每个故事背后却有一个共同主题：男孩的情感压抑、忽视和疏离，情感表达能力培养不足。如何看出孩子身上的警告信号？男孩们要为情感教育的缺失付出怎样的代价？男孩需要如何教育才能成为心智与情感完整的人？本书作者是哈佛大学心理学博士丹·金德伦和著名心理学专家迈克尔·汤普森，他们通过大量动人心弦的真实案例和深刻的心理分析，期盼能协助父母、老师及其他人穿透男孩行为的表面，给予男孩更多情感关怀、鼓励，帮助男孩有机会发展出热情、敏感和温暖等特质，心智健全，健康成长。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('83', '40', '9787513923422', '怎么说，孩子才会听；如何听，孩子才肯说', '牛牛爸爸著', 'http://api.jisuapi.com/isbn/upload/3403/3402152.jpg', '1', null, null, '无论怎么说，孩子还是把你的话当成“耳边风”？那是因为你的说话方式不对；而当你静下心来倾听时，孩子却闷声不说了？那是因为你缺乏一个倾听者应有的态度和技巧。由此可见，如何与孩子沟通是真是一门学问，当然，亲子沟通也是家庭教育中最基本最重要的内容，为此，本书紧紧围绕“怎么说”和“怎么听”两个主题，结合现代家庭教育中常遇到的问题，分别从引导孩子合作、纠错批评、赏识教育、拒绝话术等方面入手，再辅以态度、时机、措辞等沟通细节，旨在帮助父母开启孩子的心灵世界，与孩子建立融洽的沟通之桥。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('84', '40', '9787807667582', '哈佛大学·幸福课', '杨晓晖, 著', 'http://api.jisuapi.com/isbn/upload/33/2913933.jpg', '1', null, null, '不知道什么时候，人们用属于自己的语言创造了世间最唯美的一个词汇“幸福”。长时间以来，很多人都通过自己的人生经历，对幸福这个词汇进行了各种各样的诠释。尽管每个人对于幸福的理解各有不同，但对人生快乐境界的渴望是一致的。事实上，生命在世间不过是一种短暂的停留，真正的价值追根逐源不是我们得到了什么，而是在我们的有生之年究竟得到了多少幸福的感觉。从这个层面看来，幸福这个词对于每个人来说都是无法取代的。它在我们意识中占有相当重的分量，也正是因为这个分量太重，所以才会有很多人为了快速得到它而误入歧途。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('85', '40', '9787564532062', '心理学与生活', '辉浩著', 'http://api.jisuapi.com/isbn/upload/87/536187.jpg', '1', null, null, '全面总结了为人处世所应该具备的二十四个智慧：玩转说话心计学，让你说话滴水不漏，办事天衣无缝；玩转自保心计学，让你乾坤大挪移，用他人之智完善自己；玩转身价心计学，让你自抬身价跻身“绩优股”；玩转方圆心计学，让你知晓方圆通融人生；玩转识人心计学，让你瞬间看透人心；玩转驭人心计学，让你弹指间操纵他人；玩转沟通心计学，让你像卡耐基一样有效沟通；玩转人脉心计学，让你的人脉价值百万；玩转职场心计学，让你小心驶得万年船；玩转赚钱心计学，让你用脑袋管好口袋；玩转交友心计学，让你握好人生的“第三根拐杖”；玩转情场心计学，让你情场得意如沐春风……心计不是天生就会的，它需要后天的学习和练习。通过阅读《玩的就是心计》，你将明白，心计是做人做事的大资本。只要你真正领会了善用心计的奥妙，你就能将人生的主动权牢牢握在手中，人生之路就会越走越通畅顺达。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('86', '40', '9787801555373', '一个广告人的自白', '(美) 奥格威, 著', 'http://api.jisuapi.com/isbn/upload/21/20097.jpg', '1', null, null, '大卫·奥格威是世界权威的广告大师。本书是其关于广告创意、广告制作、广告公司的运作等方面的经典论述。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('87', '40', '9787508656663', '小说课', '许荣哲, 著', 'http://api.jisuapi.com/isbn/upload/31/2801031.jpg', '1', null, null, '这是一本小说的武功秘笈，从招式解密到攫取心法──从小说创作的36个关键入手，引用古今中外三十多个经典作品为例，以最浅显的方式让读者了解小说。关于人物，它说：描写性格比描写长相重要！关于场景，它说：每间星巴克都长得不一样！关于对话，它说：看得到的对话是水面上的八分之一，看不到的对话是水面下的八分之七！从全世界最好的小说开头到一切都是罗生门，文艺营达人许荣哲带你深入小说的世界──读过，看懂，学到！超过36篇经典小说为例，讲解超过36种小说创作手法和技巧。对于有心创作的人而言，绝对是一本超级实用的自学教材！一边带你用刀解剖经典作品，一边带你用心学习写作起飞，学写小说跟读小说一样有趣！', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('88', '41', '9787508642796', '让创意更有黏性', ' (美) 希思 (Heath,C.) , (美) 希思 (H', 'http://api.jisuapi.com/isbn/upload/22/2603622.jpg', '1', null, null, '这是一本旨在教会读者如何打造最有吸引力的创意的图书，属于社科文化中的行为心理学读物。本书从一个核心问题入手：如何让你的创意更具黏性？作者认为，好的创意往往具有极大的“黏性”，如果你想把观点传播给他人，就应该按照已经多次让其他观点成功的规则来运作。国际畅销书作家希思兄弟在本书中就揭示了“创意黏性”的规则奥秘——简单、意外、具体、可信、情感和故事。例如，克林顿“关键是经济啦，笨蛋”竞选口号大获成功，好莱坞影片的高票房，都符合了上述创意规则。这些促你成功的黏性观念往往具备持久的影响力，能够达到改变你或他人观点与行为的作用。《让创意更有黏性》潜心挖掘创意黏性的核心原则，其中新锐的观点将给你带来前所未有的脑力风暴，丰富的案例将带你走入创意的新境界。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('89', '41', '9787508641485', '上瘾', '梁冬, 吴伯凡, 著', 'http://api.jisuapi.com/isbn/upload/76/1251576.jpg', '1', null, null, '本书是“冬吴相对论”的第二本书，之前曾出过系列之一的《欢喜》，受到读者好评。作者梁冬是原凤凰卫视著名主持人，吴伯凡是《21世纪商业评论》主编，他们坐而论道，将高端的思想性与轻松的娱乐性完美融合。书中内容来自于广受欢迎的广播脱口秀《冬吴相对论》，主题包括品读中华经典、谈商业社会、聊人生智慧等，读来轻松，既有智慧，又有乐趣。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('90', '41', '9787560970189', '启示录', ' (美) 卡根 (Cagan,M.) , 著', 'http://api.jisuapi.com/isbn/upload/91/394791.jpg', '1', null, null, '本书作者Marty Cagan二十多年来先后任职于惠普、网景、美国在线，担任eBay产品管理及设计高级副总裁，目睹个人电脑、互联网、电子商务的起落沉浮。本书从人员、流程、产品三个角度描述了现代软件（互联网）产品管理的理念和实践经验。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('91', '41', '9787550008496', '纸牌屋', ' (英) 道布斯, 著', 'http://api.jisuapi.com/isbn/upload/16/393516.jpg', '1', null, null, '本书是美国NETFLIX电视频道热门剧集的原著小说。小说讲述了一个冷血无情的英国国会议员极其同样野心勃勃的妻子在政坛博弈的故事。英国下议院多数党党鞭弗兰西斯·安德伍德扶助党魁竞选首相成功，然而自己并未如愿当上国务卿，他为此恼怒不已，发誓要将被判了自己的首相拉下宝座。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('92', '41', '9787561340240', '奇墓物语', '秦军, 著', 'http://api.jisuapi.com/isbn/upload/5/1267505.jpg', '1', null, null, '本书是一部关于古墓的长篇小说。就是有这样奇特的古墓。一座古墓，上下三层，东周、唐朝、明朝的不同墓穴居然奇迹般的叠加在一起。两千年的墓主设下种种玄机，任何妄图下到墓葬中盗取陪葬品的人，都将受到生命的威胁和良心的谴责，在盗墓过程中除了强烈的惊奇和恐怖之外，他们都开始深刻的反思自己盗墓的目的，在生死悠关的时候醒悟过来。就是在这样的过程中，一个又一个机关打开，三座古墓建在一起的真相也层层展现，盗墓贼也再一次认清了自己。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('93', '41', '9787801585653', '王冠', '沈石溪, 著', 'http://api.jisuapi.com/isbn/upload/281/280251.jpg', '1', null, null, '本书是著名动物小说家沈石溪的短篇小说集，包括《打开豹笼》、《血染的王冠》、《狼妻》、《棕熊的故事》等十多篇作品，讲述了动物世界鲜为人知的动人故事，从动物反观人类，揭示人与动物之间相依相存的共生关系。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('94', '41', '9787549413027', '杰克逊·波洛克', ' (美) 哈里森, 著', 'http://api.jisuapi.com/isbn/upload/78/1647878.jpg', '1', null, null, '“费顿·焦点艺术家”（Phaidon Focus）是一套有关国际著名现代艺术大师的系列图书，该系列清晰易懂、充满乐趣且发人深省。每一本全面涵盖一位艺术家的作品，按编年顺序排列文章，伴以探讨艺术家特定的重要题材、系列或单件作品的“焦点”章节，并配以生动、精美的插图。该系列图书为洞察艺术家的生活和工作提供了宝贵的见解，是研究现代艺术家权威而不可或缺的最佳入门书籍。本书叙述了波洛克的艺术生涯和个人生活——从他早期所接受的具象绘画训练直至其抽象表现主义艺术最重要的拥护者地位的奠定——将他的艺术发展过程纳入到其反复无常的个人生活和广泛的艺术影响因素如墨西哥壁画和美洲土著艺术等大语境中进行考察。从1949年《生活》杂志抛出“他是美国最伟大的现世艺术家吗？”问题开始，波洛克在其艺术生涯的早期便显示出了非凡的影响力，古根海姆更是将他描述为“自毕加索之后最伟大的画家”。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('95', '41', '9787111595977', '战略节奏', '朱恒源, 等著', 'http://api.jisuapi.com/isbn/upload/3198/3197887.jpg', '1', null, null, '企业根据产品市场变化和发展的要求，动态调整自己的行为、积累自己能力的行为，本书称之为战略节奏。市场的发展是有节奏的，企业也要应变而变。打破兴亡周期，在动态复杂的商业环境里获得持续成功的唯一路径是，企业要踏准节奏，使自己的战略节奏与市场发展的节奏相契合、相协同。基于上述理论发展而来的PRE-M模型，分为四个步骤：探测风口，选择行业；识别趋势，构筑节点；因需而变，提前布局；活在当下，把握未来。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('96', '41', '9787224100266', '文明与野蛮', ' (美) 路威 (Lowie,R.H.) , 著', 'http://api.jisuapi.com/isbn/upload/89/2743289.jpg', '1', null, null, '本书为大师经典系列之一，作者为美国罗伯特·路威。作者以幽默的语言、流畅的文笔从众多方面介绍了世界历史发展中文明与野蛮的转化。在种族和遗传、工艺与行业、卫生与医疗、艺术与心灵、氏族与国家等等方面都存在着文明与野蛮的冲突。文中很值得嘻嘻品味。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('97', '41', '9787301250051', '法治及其本土资源', '苏力, 著', 'http://api.jisuapi.com/isbn/upload/71/1186871.jpg', '1', null, null, '本书是苏力教授的成名之作，以交叉学科为背景，从社会法律问题入手，集中讨论了中国当代法律和法学一系列重要理论问题。例如：法律规避和法律多元、法律本土化、法律专业化、市场与法律的替代问题，以及法学研究方法论等。其学术背景涉及经济学、人类学、社会学、阐释学、语言哲学等。以力求从平易中展现法学与其他学科的不可分割的关系，创造性地把交叉学科的知识引入到中国的法学研究中来，并融合进中国法学。此书2004年初版于中国政法大学出版社，是法学领域非常知名的作品，已届十年，移至我社再版。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('98', '42', '9787117219556', '肺癌个体化治疗', '杨拴盈, 主编', 'http://api.jisuapi.com/isbn/upload/60/290560.jpg', '1', null, null, '本书从肺癌治疗的现状及进展、肺癌个体化治疗的基础理论、肺癌化疗生物标志物及其检测方法、病理学及其在肺癌个体化治疗中的作用、分子检测、肺癌的个体化化疗、维持治疗、个体化放疗、个体化手术治疗、靶向治疗、PS评分在肺癌个体化治疗中的作用、生物治疗、老年肺癌的治疗、介入治疗、姑息治疗、中医中药治疗、疗效评价肺癌并发症(肝、脑、骨及肾上腺、恶性胸腔积液、恶性心包积液、肺纤维化肺合并癌的治疗、COPD合并肺癌的治疗、肺癌合并VTE的治疗等)的治疗、个体化综合治疗等各方面，以国内外最新指南为指导、以循证医学为基础、以临床问题为出发点、结合前沿研究进展，较全面地介绍了肺癌个体化治疗的临床策略', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('99', '42', '9787563344987', '童年的消逝', ' (美) 波兹曼 (Postman,N.) , 著', 'http://api.jisuapi.com/isbn/upload/955/954035.jpg', '1', null, null, '本书是媒体文化研究的名著。分为“童年的发明”和“童年的消逝”两大部分。第一部分表述了“童年”这个概念的起源；第二部分将我们置身于现代时空，揭示了从谷登堡的印刷世界转换到塞缪尔·莫尔斯的电报密码世界等内容。作者尼尔·波兹曼（1931～2003）是世界著名的媒体文化研究者和批评家，生前一直在纽约大学任教，他在纽约大学首创了媒体生态学专业。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('100', '42', '9787559626783', '超级聊天术', '大鹏, 著', 'http://api.jisuapi.com/isbn/upload/3378/3377303.jpg', '1', null, null, '社交中，少不了沟通。很多人苦恼于“不善言辞”，或者与对方真的“无话可说”，最终出现很多冷场的局面。聊天是一门艺术，懂得如何聊天，如何寻求好话题，可以瞬间拉近人与人之间的距离。说话技巧不是与生俱来的，而是可以通过后天习得的。书里详细讲解了多个不同场景的聊天之法，相亲，面试，聚餐……掌握书中的方法和技巧，人人都可以成为聊天达人，开启愉快的聊天！', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('101', '42', '9787108022943', '天朝的崩溃', '茅海建, 著', 'http://api.jisuapi.com/isbn/upload/1019/1018354.jpg', '1', null, null, '', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('102', '42', '9787510040498', '清日战争', '宗泽亚, 著', 'http://api.jisuapi.com/isbn/upload/95/2402895.jpg', '1', null, null, '清日战争历经百年，在中国人内心深处留下了伤痛和耻辱。从那个时代开始，外来侵略接踵而至，在中国近代史上，当西方文明和明治维新与古旧的清朝体制发生猛烈碰撞时，战争的失败也催生了中国新的历史纪元。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('103', '42', '9787511344403', '孤独的人都要吃饱', '张佳玮, 著', 'http://api.jisuapi.com/isbn/upload/604/603946.jpg', '1', null, null, '本书是一部有关美食与情感的散文随笔集。本书稿讲述的是当下的青年男女关乎美食与情感的温情故事，其中每篇文章都围绕着一两个主题展开，怀旧情绪颇多，温暖而舒心。本书稿可以说是人们文字版的深夜食堂，让一颗颗孤独的心可以用实物以及温情来填报自己的内心。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('104', '42', '9787510440809', '慈禧全传', ' (英) 濮兰德, (英) 贝克豪斯, (美) 裕德龄, (', 'http://api.jisuapi.com/isbn/upload/73/708473.jpg', '1', null, null, '慈禧，清咸丰帝奕之妃，同治、光绪两朝实际最高统治者，人称清朝“无冕女皇”是大清中兴的主要主政者。她的一生与晚清历史相连，可以说读透慈禧，看清晚清。本书综合三大畅销书作家的作品，从生活、执政、文化、爱情等不同角度叙述慈禧太后一生纷繁复杂的功过得失，用最真实的笔触还原历史，还原一个真实的慈禧。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('105', '42', '9787115319074', '隐藏的现实', ' (美) 格林, 著', 'http://api.jisuapi.com/isbn/upload/47/1154847.jpg', '1', null, null, '本书作者在这本书中深入探讨了弦论、全息多重宇宙、人择原理、宇宙常数、暗物质、宇宙膨胀等前沿的关于宇宙本源的根本问题。作者用通俗幽默的语言，对这些艰涩的问题做了深入浅出的讲解，使读者得以对这些问题有一个比较明晰的认识。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('106', '42', '9787213066856', '星际穿越', ' (美) 索恩, 著', 'http://api.jisuapi.com/isbn/upload/0/1642200.jpg', '1', null, null, '这是一本以电影《星际穿越》为线索讲述物理学知识的科普图书。当毁灭性的灾难——枯萎病来袭时，人类如何才能实现星际穿越，寻找下一个生存之地？这是《星际穿越》需要解决的主要问题。基普？索恩先从宇宙产生的大爆炸开始说起，讲述了控制宇宙的法则、弯曲空间、潮汐力和黑洞等物理学知识，并着重讲述了黑洞卡冈都亚的结构、引力弹弓、形状、吸积盘和喷流等内容。后又基于电影《星际穿越》主角库珀一开始面临的难题，讲述了人类如何通过穿越虫洞，在引力弹弓的作用下到达米勒星球和曼恩星球，寻找人类的未来。该书不仅是电影《星际穿越》背后唯一的科学解释，更是基普？索恩教授向大众传递科普知识的利器。好莱坞顶尖导演和编剧克里斯托弗？诺兰为之专文作序。中国国家天文台博士研究员团队领衔担纲翻译，文风质朴，将理论演绎得十分易懂和精彩。全彩插图、幕后故事首度推出。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('107', '42', '9787206043284', '恐龙骇客', '杨鹏工作室, 著', 'http://api.jisuapi.com/isbn/upload/80/79155.jpg', '1', null, null, '本书为儿童科幻小说。在这本书里，时间机器可以将人带到恐龙时代，与真正的恐龙成为朋友。校园三剑客与猎杀恐龙的黑衣人展开了一场惊心动魄的战斗。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('108', '42', '9787802254459', '时间回旋', '(加) 威尔森, 著', 'http://api.jisuapi.com/isbn/upload/69/869169.jpg', '1', null, null, '《时间回旋》是长篇科幻小说。大黑寂的影响是全球性的。太阳如今不再是硕大无朋的天体，而成了一个稀松平常的圆碟、一个热源而已。月亮也失踪不见了，可潮汐作用依在。全世界的人造卫星不只是纷纷坠出轨道，即便抢救了回来也变得坑坑洼洼、古旧不堪，仿佛在太空中度过了远比已知使用期长久得多的漫漫岁月。主人公对此展开了长达一生的调查。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('109', '42', '9787301297025', '解读中国经济', '林毅夫, 著', 'http://api.jisuapi.com/isbn/upload/3306/3305274.jpg', '1', null, null, '本书以宏大的历史视角展示了中国经济实力两千多年来的跌宕起伏和戏剧性复兴，解读了中国经济增长的源头以及未来增长的前景。对任何想要了解中国经济发展的人来说，这都是一部必读的著作。书中总结了中国与其他国家、地区经济发展和改革活动的经验，提出了一个经济发展和转型的一般理论，并以此理论分析中国在改革和发展过程中取得的各项成就，面临的主要经济、社会问题，探讨其原因和解决问题的办法。此次典藏版新增了有关供给侧改革、“新常态”下的转型升级、“一带一路”建设等热点问题的分析和思考。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('110', '42', '9787301081617', '社会变革', '(美) 瓦格 (Vago,S.) , 著', 'http://api.jisuapi.com/isbn/upload/40/266340.jpg', '1', null, null, '本书清晰准确的分析了社会变革的主要理论观点、产生源泉、过程、模式及影响。考虑了多元文化背景下促进或妨碍变革认同的诸多因素，并着重强调了有计划或无预期等不同情形下变革所产生的无法预料的后果与成本，同时对促成变革的原因及对变革的评估方法等进行了详细描述。在内容特色上，本书注重结合当代现实案例以关注理论研究的直接实践价值。本书广泛借鉴了人类学、社会心理学、经济学、政治科学等领域中的丰富理论和经验知识，由此超越了其仅作为一本社会学著作的初衷。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('111', '42', '9787301295335', '余淼杰谈中美贸易', '余淼杰, 著', 'http://api.jisuapi.com/isbn/upload/3234/3233523.jpg', '1', null, null, '过去一年，世界经贸最大的看点，莫过于特朗普上台当了美国总统，特朗普执政，最大的确定性就是他的不确定性，这就注定了中美经贸乃至全球经贸，未来四年会是多事之秋。本书是国际贸易领域杰出青年学者余淼杰教授最新一年的时评文集，旨在从贸易角度解读经济问题，贡献政策建议。余淼杰教授多年来专注国际贸易研究，并始终站在学术前沿，屡获国内外学术大奖，有着深厚的学术功底，同时又善于用简洁通俗的语言描述理论，剖析热点问题，其在《人民日报》海外网、新加坡《联合早报》等多家媒体开设的专栏深受读者好评。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('112', '43', '9787300225357', '经济学原理', '《经济学原理》编写组', 'http://api.jisuapi.com/isbn/upload/98/326598.jpg', '1', null, null, '本书作者在高鸿业版《西方经济学》（第六版）教材基础上编写了这本《经济学原理》。本书在一定程度上可以看作为高鸿业版《西方经济学》教材的“简写版”；在保留原教材框架的基础上和主要的经济学理论要点包括效用论、生产论、成本论、GDP、财政政策、货币政策等，删去一些过多的数学推导与每章的结束语，使本书篇幅降低、难度降低，更加适合于二、三本院校“经济学原理”课程使用。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('113', '43', '9787301147214', '团队执行力', '陈永亮, 著', 'http://api.jisuapi.com/isbn/upload/56/1849856.jpg', '1', null, null, '一个高效能的团队一定是个执行力强的团队。单打独斗的时代已经过去，要打造优秀的团队第一步就是要执行到位。本书作者陈永亮先生是一位实战型“团队执行力”训练大师，他所率的“聚成集团”，五年间从一无所有到拥有55家分公司，目前正在筹备上市。他用自己的亲身经历讲述着一个管理者如何从队伍建设、流程建设、士气提升、团队文化四个方面来提升团队的执行力。聚成在培训届举办公开课的实力相当强，而本书将拉开与他们全面合作的帷幕。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('114', '43', '9787511114938', '从头越', '任景明, 著', 'http://api.jisuapi.com/isbn/upload/85/1215785.jpg', '1', null, null, '本书汇集了十余年来作者对中国环境问题思考、徘徊、呐喊、奋进的心路历程。这是作者个人事业从地质走向环境、从科研走向管理，从基层走向部委的“从头越”；是国家环境保护事业从末端到过程、从战术到战略、从污染管治走向机制建设、从项目环评走向战略环评的从头越；也是国家发展从农业文明、工业文明走向生态文明新时代的从头越。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('115', '43', '9787301295816', '当野蛮人遭遇内部人', '郑志刚, 著', 'http://api.jisuapi.com/isbn/upload/3232/3231387.jpg', '1', null, null, '从2015年开始，我国资本市场进入各种“乱象”和“怪象”的集中爆发期，中国公司治理陷入困境。本书在提出既相互独立又相互交叉的三条逻辑主线（分散股权时代、金字塔控股结构、内部人控制问题）的基础上，试图构建理解中国公司治理现实困境的一个统一逻辑分析框架，并探索如何从监管和公司治理政策两方面积极应对和摆脱目前资本市场深陷的公司治理困境。全书语言通俗，包含了大量真实生动的案例，适合政策制定者、 研究人员、对公司治理感兴趣的一般读者阅读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('116', '43', '9787510434808', '资本的逻辑', ' (美) 伯顿, 著', 'http://api.jisuapi.com/isbn/upload/54/2506254.jpg', '1', null, null, '本书旨在探讨这些周而复始的衰退纷扰的本质及原因并对其解决方法提出一些确切而实际的建议，同时提出可能避免及缓解萧条发生的方法。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('117', '43', '9787111536079', '做空', ' (美) 泰特尔鲍姆 (Teitelbaum,R.) , 著', 'http://api.jisuapi.com/isbn/upload/94/365494.jpg', '1', null, null, '《做空：最危险的交易》这本书让我们洞悉全球金融市场的阴暗角落，洞悉那个角落里种种光怪迷离的故事。书中讲述了很多成功地做空投资案例，也有很多自杀式的冒险，对很多知名做空大师的策略进行了解析。作者聚焦于他们为锁定做空目标、设计交易结构并通过投资达到做空时所采取的不同策略、方法和风格。《做空：最危险的交易》以编年制的笔法，记叙了做空行为给金融、监管、道德以及社会等各个层面带来的灾难性后果，并阐述了投资者看跌市场的种种动机。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('118', '43', '9787301294888', '《孙子兵法》新解', ' (加) 陈万华 (Luke Chan) , 著', 'http://api.jisuapi.com/isbn/upload/3210/3209777.jpg', '1', null, null, '本书从经济学和工商管理实践的视角，解读《孙子兵法》这一东方古老智慧的现代应用，是一本东西方商业智慧交融的著作。本书按篇章顺序对《孙子兵法》进行逐篇解读，每篇包括原文、注解、译文、应用、案例五大部分。其中，译文尽量保留原文的修辞手法，使之更能体现出原文明快的韵律感和优美的文学性。应用部分充分将经济学和工商管理实践与孙子兵法相结合，为国内首创，启发性大。案例部分全部为真实的现代工商管理案例，实战指导性强。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('119', '43', '9787801237354', '无悔人生', '圣凯, 著', 'http://api.jisuapi.com/isbn/upload/56/437756.jpg', '1', null, null, '本书从不同视角入手，通过对佛教忏悔观的专门探讨，旨在推动传统佛教在新的历史条件下的现代化阐释，突出佛陀关注社会、关注人生的本怀。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('120', '44', '9787301292471', '中国土地问题调查', '刘守英, 著', 'http://api.jisuapi.com/isbn/upload/3168/3167326.jpg', '1', null, null, '本书是作者在国务院发展研究中心期间，全面参与地方土地制度改革设计和试验过程中形成的土地调查研究的案例集。书中以湄潭、成都、重庆、南海等地农村和城市土地改革试验区为切入点，记录了大量珍贵的一手资料，并在此基础上进行基于真实世界的经济学分析，全面反映了中国地方土地制度变迁和试验的历史。本书反映了中国土地制度变革面临的困境，底层和地方经验，提出了土地制度改革的有针对性的建议，也是反映近十年中国土地制度变迁的宝贵资料。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '1', '0', null, null);
INSERT INTO `bms_book` VALUES ('121', '44', '9787520304122', '“一带一路”', '王伟光, 主编', 'http://api.jisuapi.com/isbn/upload/56/3026856.jpg', '1', null, null, '今年5月，中国将在北京主办“一带一路”国际合作高峰论坛，共商合作大计，共建合作平台，共享合作成果，为解决当前世界和区域经济面临的问题寻找方案，为实现联动式发展注入新能量，让“一带一路”建设更好造福各国人民。为迎接峰会召开，共享发展经验，蓝迪国际智库集合中国社会科学院、清华大学等智库机构专家及参与“一带一路”建设的各行业领军企业经验，专门编制出版了《“一带一路”——新型全球化的新长征》一书。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('122', '44', '9787550707252', '成功就是和失败的较量', '孙富鑫, 著', 'http://api.jisuapi.com/isbn/upload/99/1139799.jpg', '1', null, null, '世界上最伟大的商人的内心深处都隐藏着一股神秘而巨大的正能量，它不仅能改变他们的心灵，更会让他们的创业人生发生蜕变，从而，开启一条通往商业巅峰的道路。本套书精选专业、出类拔萃的成功人士的、能给您正能量的人物观点，接受成功人士的正能量文化洗礼，站在巨人肩上我们将更好地成就自己的成功人生。本书精心整理了企业家众多精彩的创业语录与管理言论，让读者很容易就能直入企业家的内心，感受其传奇人生的正能量；倾听企业家的深邃思想的教诲，感受其战略与管理的真谛。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('123', '44', '9787513638715', '科技金融', '李善民, 等著', 'http://api.jisuapi.com/isbn/upload/12/2048312.jpg', '1', null, null, '当前，新一轮科技革命和产业变革正与我国加快转变经济发展方式形成历史性的交汇，而科技的创新离不开金融的支持，这对科技金融的发展提出了新的要求。本书在初步提出科技金融内涵的理论基础上，全方位地论述了几个代表性的发达国家和发展中国家的科技金融结合实践。为了更好地借鉴与比较，本书还对我国典型地区的科技金融创新模式进行了案例研究，特别是通过对广东省金融机构、政府部门和科技企业的调研，为广东省发展科技金融提出了政策建议。本书将科技金融理论、实践经验以及案例分析在一个研究框架内相结合，对于高校科研机构、科技型企业、高新技术开发区以及金融部门的研究者和实践者具有一定的参考价值。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('124', '44', '9787302525516', '苏格拉底', ' (美) 霍普·梅 (Hope MAE) , 著', 'http://api.jisuapi.com/isbn/upload/3486/3485386.png', '1', null, null, '《最伟大的思想家：苏格拉底》首先介绍了苏格拉底所处的时代背景，以让我们了解苏格拉底的思想成因，然后则讨论了苏格拉底在其受审时的申辩以及“苏格拉底方法”即“诘问式”，以让我们深入了解苏格拉底的思想。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('125', '44', '9787561549063', '责任胜于一切', '坚强树著', 'http://api.jisuapi.com/isbn/upload/45/2895445.jpg', '1', null, null, '通常我们找到一份工作，从事一项任务，70％是适合个人兴趣的就很不错了，因为我们做的大部分事情，不是针对我们每一个人，在很大程度上是满足社会的需求的，真正100％满足我们要求的工作几乎是没有的。从职业评价的角度而言，符合兴趣是幸运的，而具有职业责任感则是一种职业操守。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('126', '44', '9787111405375', '创业学', '魏拴成, 姜伟, 主编', 'http://api.jisuapi.com/isbn/upload/98/2734098.jpg', '1', null, null, '本教材是一本系统介绍创业基本理论、创业过程、创业家思想和创业实践案例的创业通识教材。内容囊括创业者与创业团队建立、创业机会识别与评价、创业环境分析、商业模式选择、商业计划制定、创业融资策略、创业法律与伦理、企业成长管理、创业的收获与传承、企业内创业和创业新领域发展，同时在教材的每章设置了引导案例、创业家语录、创新思维游戏、案例分析等教学内容。 本教材具有注重创业理论知识的系统性，突出内容的实用性，强调结构的新颖性等主要特点。适合作为应用型本科院校或高职高专学生的创业通识课程教材，也可作为经管类专业创业学课程教材，或作为准备创业和正在创业的有志人士阅读参考，还可以作为大学生创业计划大赛和各种创业培训项目的培训教材使用。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('127', '44', '9787111628620', '估值', ' (美) 阿斯瓦斯·达莫达兰 (Aswath Damodar', 'http://api.jisuapi.com/isbn/upload/3687/3686542.jpg', '1', null, null, '如今，金融专业人士依然面临着很多的挑战，对于新兴市场企业、金融服务类企业等来说，如何对其股权及证券进行准确估值呢？作者在第1版的基础上对本书进行了彻底的更新，把范围拓展到所有难以估值的企业，包括技术型、人力资本型、大宗商品和周期型企业，涵盖了企业的整个生命周期，包括初创期、成长期、成熟期、衰落期。本书为企业生命周期的各个阶段和各种类型的企业，均提供了具体的评估指引。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('128', '44', '9787516174227', '社会博弈与策略均衡', '罗强强, 著', 'http://api.jisuapi.com/isbn/upload/9/2974409.jpg', '1', null, null, '房屋拆迁中的利益博弈研究一直融合了多学科的维度，其中以经济学和法学的视角较为集中。概括而言，研究主要包括利益冲突说，政府角色混乱说，补偿安置不合理说，制度模糊说，利益集团说，执行混乱说等方面。但这些研究主要以较宏观的理论分析为主。与此不同，从经验出发是社会学分析的基础。在社会学的视野中，房屋拆迁过程中的利益博弈是在特定的历史情境指向特定的问题，指向问题背后的社会行动主体及其权力关系。利益博弈的过程就是参与其中的社会行动主体的互动关系被激活、展开与重构的社会过程。通过对调查点的长期观察和对各方利益主体的访谈，本书以Y市电表厂政策性破产后，因遗留的房屋拆迁改造问题而引发的冲突为例，分析了各方利益主体的博弈场域、博弈各方如何通过各种策略使其利益最大化，在数次博弈之后最终达成了暂时的策略均衡的过程。通过对这些行动者的博弈策略与互动展开社会学的研究，在某种程度上对“拆迁政治”作出了因果性的阐释。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('129', '44', '9787543224285', '国际竞争论', '陈琦伟, 著', 'http://api.jisuapi.com/isbn/upload/12/757612.jpg', '1', null, null, '发轫于上世纪80年代的《当代经济学系列丛书》是中国现代经济学史上的一座里程碑。林毅夫、樊纲、易纲、张军等当今中国经济学界的主力和领军人物，都是丛书的早年作者，正是丛书提供了他们最初的学术成长平台。2014年度格致出版社对丛书再作大规模整理和改版工作。陈琦伟的《国际竞争论》即为此次旧籍新版品种之一。陈琦伟的《国际竞争论》是中国第一本系统论述中国对外开放理论和体系的专著，首次明确提出并阐明了当今时代处于国际竞争时代的新观点，以及“现代比较利益原则”等。该书1986年出版后，次年便获得了中国经济学领域最高奖：孙冶方经济学优秀著作奖。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('130', '45', '9787010211527', '中国变革', ' (英) 休·佩曼, 著', 'http://api.jisuapi.com/isbn/upload/3743/3742143.png', '1', null, null, '该书回答了两个全球关注的问题。其他国家、公司和个人是否能够接受中国的变革经验来找到走出黄昏的路径？中国是否能够继续创造占世界三分之一的增长率，比美国、欧盟和日本合在一起都多，来帮助解决过去十年的全年经济低迷？中国变化的路线图使任何人都可以从日益增长的全球经济分裂中找到航向。有讽刺意味的是，中国的过程建立在诸如忽视西方观念的长期指导思想、清晰的优先策略、渐进主义和非意识形态的务实主义，这些曾经帮助西方维护了两个世纪的经济统治。如果西方和其他亚洲国家能够从中国学习如何管理变革，将创造另一个全球奇迹。历史并没有结束，仅仅是使车轮有了更多的选项：中国现在的变化是地球上最伟大的演出。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('131', '45', '9787121324727', '从创意到创业', ' (德) 马修·莫克里奇 (Matthew Mockridg', 'http://api.jisuapi.com/isbn/upload/3118/3117838.jpg', '1', null, null, '无论你是想实现自己的商业创意，想和会议室里的每个人建立联系，想研发新的应用程序，还是想成为夏威夷海滩上的冲浪教练——这本书都可以帮助你实现目标，为你指明未来的道路。通过大量的绝妙建议，让你的下一个成功会一步步变成现实。作为青年企业家、作家、演说家，作者凭借极富创新意义的创业想法NEONSPLASH–Paint-Party，在全世界掀起了新的派对热潮。在本书中，他直观地讲述了自己创业背后的许多故事，向读者展示了天才想法背后的模式和策略，书中的60个脚踏实地的绝妙建议，让读者的下一个成功会一步步变成现实。在这些创业的生活模式、创造评估想法的背后，你将感受到工作和生活思维模式的全面革新。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('132', '45', '9787308093316', '我们，90后！', '袁岳, 张军, 主编', 'http://api.jisuapi.com/isbn/upload/96/2541296.jpg', '1', null, null, '在80后已经成群结队地结婚生子，步入中年行列的时候，90后的这一代人在做什么？他们正要甚至已经步入社会，去开始纷繁的人生旅途；他们进入公司，接受80后的领导和管理；他们要面对大学生活，面对求职面试，同时也面对同龄人的竞争和追逐。他们正处于青春年少的鼎盛时期，有着鲜明的、与以往人群截然不同的特征，然而他们又面临着与其他隔代的相处。本书便是告诉读者，90后究竟是怎样的一代人，他们的特征是什么，他们的重点落在哪里，我们又该怎样与他们相处。本书内容均来自零点的调查研究报告，数据真实可信，资料丰富。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('133', '45', '9787301284049', '柔性领导力', ' (新加坡) 李秀娟, 著', 'http://api.jisuapi.com/isbn/upload/30/3048630.jpg', '1', null, null, '本书主要收录了作者近年来所撰写的三类文章：一是为新加坡《联合早报》撰写的专栏文章，透过自己的视角观察身边的世界，将枯燥的管理知识通过生动的人物故事和个人感悟表达出来；二是记录了作者和很多优秀企业管理者相处的片段，她们所具备的管理智慧和敬业精神令人感叹柔性领导力的强大，印证了那句“百炼成钢，终化为绕指柔”；三是记录下了作者工作、生活、旅行以及与家人和朋友相处过程中的小插曲，有哭有笑，有欢乐有悲伤，将那些转瞬即逝的刹那，化为文字，留下回忆。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('134', '45', '9787509606469', '管理决策', '(英) 蒂勒, 著', 'http://api.jisuapi.com/isbn/upload/91/1985591.jpg', '1', null, null, '本书将不同学科从单一角度研究的内容进行整合，从不同角度分析决策问题，并讲有关观点罗列出来，探讨它们之间的联系。本书主要从不确定性、研究、抉择和执行四个放面探讨决策问题。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('135', '45', '9787301277652', '年轻的力量', '童泽林著', 'http://api.jisuapi.com/isbn/upload/2744/2743782.jpg', '1', null, null, '香港航空自成立至今刚满10年，却取得了卓越的业绩，赢得了良好的口碑，其特色的服务理念和管理经验成为管理学者关注的焦点，香港航空的企业案例已入选北京大学光华管理学院案例库。本书基于香港航空的企业案例，以“服务创新”为研究视角，从鲜活的企业故事入手，深度剖析香港航空的服务理念与服务文化，从而提炼出服务创新之道，为航空业界人士及企业管理者提供服务管理的经验参考。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('136', '45', '9787301274941', '人·地·城', '徐远, 著', 'http://api.jisuapi.com/isbn/upload/30/2293430.jpg', '1', null, null, '本书是作者研究农村改革和城市化问题的成果，内容涵盖农民收入、城乡差距、土地制度、户籍改革、粮食安全、城市起源与变迁、经济发展等等。本书面向非经济专业的书友，使用通俗的语言，避免晦涩的表达，适合广大对农村改革、城市化、中国经济发展感兴趣的书友阅读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('137', '45', '9787301269237', '穿越历史聊经济', '汪凌燕, 汪通, 著', 'http://api.jisuapi.com/isbn/upload/15/315015.jpg', '1', null, null, '通天人之际，达古今之变。一部二十四史，帝王将相读出来的，往往是尔虞我诈和经略权变，而在经济学家的眼中，却是很多当代经济理论的预演。本书从经济学、金融学的角度来看历史，展现了一个同样惊心动魄而又别开生面的视角。当今世界是一个风云变幻的世界，有欧债危机，次贷危机，乃至于希腊，这个危机深重的国家至今还在和欧盟挠挠不已，其实这些都已经在我们的历史中预演过了。我们做的，就是要把这些历史中的瑰宝寻来，擦去表面的尘土，让古老的智慧与现代的理论交相辉映。东西两汉煌煌四百余年，明君贤臣辈出，文治武功均可称道。可知其在货币理论上的大胆实践，却让今人叹为观止？诸葛亮万世臣表，文武全才，可知在另一个战场：国家经济方面，也不遑多让？北魏孝文帝迁都的计划中，又潜藏着什么博弈论的道理？为什么有些人先反对而后同意？这些疑问，都可以在本书中找到答案。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('138', '45', '9787301273043', '超越发展援助', '林毅夫, 王燕, 著', 'http://api.jisuapi.com/isbn/upload/76/550376.jpg', '1', null, null, '本书关注当前多极世界下的可持续和包容性的结构转型以及超越发展援助。对于结构转型的目标来说，传统的北南援助是不足的，所以我们要超越发展援助，研究南南发展合作的可能性，这种新的发展合作模式融合了援助、贸易和投资，从而能够实现更广阔的发展目标，包括就业创造和可持续的福利改进。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('139', '46', '9787301298565', '像大师一样投资', ' (美) 田测产 (Chalie Tian) , 著', 'http://api.jisuapi.com/isbn/upload/3353/3352671.jpg', '1', null, null, '国内的投资分析以技术面为主，基本面分析大多关注的是重组、题材、概念等因素，价值投资理念较为缺乏。本书致力于指导投资者如何通过价值投资在风险较小的前提下获得较高的长期回报。作者从三位最成功的投资大师彼得林奇、巴菲特、唐雅克曼的投资经验以及核心投资观入手，结合自己多年的经验和教训，总结出风险最小且长期回报最高的价值投资方法。本书着重讲解了：（1）什么样的公司是“好公司”？ （2）如何找到这些好公司？（3）如何对这些好公司进行估值？（4）什么是价值陷阱？如何识别和规避它们？与同类书相比，本书保持了极其简洁清晰的写作风格，适合中国普通投资者及投资经理阅读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('140', '46', '9787516631690', '新产业政策', '王喜文, 著', 'http://api.jisuapi.com/isbn/upload/96/3014796.jpg', '1', null, null, '本书是一部探讨产业政策的学术通俗著作。作者为工信部国际经济技术与合作研究所所长王喜文。本书立足于新工业革命的背景和经济结构转型的需求，从生产方式和产业组织形式，进而从产业政策的角度，提出了学术思考。本书运用了丰富的图表和案例，图文并茂呈现，具有较强的可读性。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('141', '46', '9787301288351', '中关村模式', '尹卫东, 董小英, 胡燕妮, 郭伟琼, 著', 'http://api.jisuapi.com/isbn/upload/3591/3590959.jpg', '1', null, null, '中关村国家自主创新示范区源于20世纪80年代初期的中关村电子一条街，是中国第一个国家级高新技术产业开发区，“已经成为中国创新发展的一面旗帜”（习近平语）。本书所写的就是中关村示范区内注册的代表性公司近5年的发展情况。首先是数字中关村，有各类象征园区发展的指标，同时有投资者、政府、学者及安永代表对数字的点评；其次是故事中关村，讲了8家中关村的创业案例，这8家不是京东百度等知名公司，而是中关村的“隐形英雄”，经验更具普遍性，以期对更多的科技园区和创业者带来共鸣；最后是政策中关村，列举了中关村能取得今天成就背后的配套政策支持。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('142', '46', '9787301298565', '像大师一样投资', ' (美) 田测产 (Chalie Tian) , 著', 'http://api.jisuapi.com/isbn/upload/3353/3352671.jpg', '1', null, null, '国内的投资分析以技术面为主，基本面分析大多关注的是重组、题材、概念等因素，价值投资理念较为缺乏。本书致力于指导投资者如何通过价值投资在风险较小的前提下获得较高的长期回报。作者从三位最成功的投资大师彼得林奇、巴菲特、唐雅克曼的投资经验以及核心投资观入手，结合自己多年的经验和教训，总结出风险最小且长期回报最高的价值投资方法。本书着重讲解了：（1）什么样的公司是“好公司”？ （2）如何找到这些好公司？（3）如何对这些好公司进行估值？（4）什么是价值陷阱？如何识别和规避它们？与同类书相比，本书保持了极其简洁清晰的写作风格，适合中国普通投资者及投资经理阅读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('143', '46', '9787303113187', '毅伟商学院案例写作', ' (加) 林德斯 (Leenders,M.R.) , (加)', 'http://api.jisuapi.com/isbn/upload/2094/2093018.jpg', '1', null, null, '这是一本关于如何快速地采编出好案例的书。本书的第四版和第三版有很大的区别，因为它确定了案例写作的三阶段步骤，并指导读者学习每一个阶段。本版中新增的概念有：案例缘起表格（Case Origin Grid）、案例采访清单（Case Shopping List）、行动触发因素（Action Triggers）以及故事线（story line）和决策框架分割点（decision frame cuts）。另外补充的新内容还包括新案例的课堂测试。作者仍然认为由五部分组成的案例计划的开发过程是进行有效案例开发的核心计划手段。作为本书的姊妹篇，读者应该一起阅读的还有《案例学习》（Learning with Cases）一书，因为写作案例的目的就是为了帮助学生学习。我们也认为严肃的案例作者应该熟读我们的第三本书《案例教学》（Teaching with Cases）。 本书中的所有材料在全世界各大洲超过50个国家，得到了代表不同学科的数以万计的案例工作坊参与者的充分检验。因此，我们相信，那些切实按照本书所提倡的三阶段案例写作步骤进行的案例开发新手能够快速地撰写出好案例来。作为有卓有成效的参与式教学方法，案', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('144', '46', '9787030346193', '传奇学人林毅夫', '刘世英, 著', 'http://api.jisuapi.com/isbn/upload/1982/1981773.jpg', '1', null, null, '他是蒋经国器重的“明星军官”；他是诺贝尔奖得主、著名经济学大师舒尔茨的关门弟子；他是中国改革开放后第一位从西方学成归国的经济学博士；他是北京大学经济研究中心、北京大学国际MBA的创始人；他是中国大陆高层的经济智囊；他是首位来自发展中国家的世行首席经济学家，他是我国著名经济学家林毅夫。本书从林毅夫的成长经历、求学生涯、学术成就等多方面入手，从他由军校学生到企管硕士，从他成为北大学生到诺贝尔奖得主的关门弟子，从一个海归的经济学博士到充满农民清洁的经济学家，从把脉中国经济的学界红人到世行首席经济学家，全方位对他的经济学思想和传奇人生经历进行梳理。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('145', '46', '9787301292372', '生活中的行为经济学', '董志勇, 著', 'http://api.jisuapi.com/isbn/upload/3171/3170072.jpg', '1', null, null, '人们很多看似荒诞的经济行为，其实背后都有一只“看不见的手”在操纵，它无时无刻不在影响着我们的生活。比起亚当?斯密那只著名的“看不见的手”，这只手更加敏感、细腻，带着浓浓的人情味儿。研究人的行为规律，本来就是经济学永恒不变的主题。行为经济学更深地洞悉了人们思维深处的奥秘，指出生活中“荒唐”决策的本质，探究非理性行为的规律，这也是为什么这些年诺贝尔经济学奖会连续授给行为经济学家的原因。本书从普通人的日常生活小事入手，揭示那些看似非理性行为背后的逻辑和理论根源。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('146', '46', '9787301291665', '全球并购中的探戈', ' (荷) 冯斯·强皮纳斯 (Fons Trompenaars', 'http://api.jisuapi.com/isbn/upload/3157/3156843.jpg', '1', null, null, '法律、金融与组织管理使得企业间的并购、联合异常复杂，文化之间的差异更使这种复杂性雪上加霜。人际沟通、企业文化和商业价值观等方面的差异经常会使之前的努力功败垂成。阅读本书可以了解：为什么文化差异会成为组织融合的障碍？企业如何使用各种工具达成一致的愿景和价值观？如何对关系进行管理以建立信任和创造价值。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('147', '46', '9787514135930', '政治经济学', '崔友平, 主编', 'http://api.jisuapi.com/isbn/upload/53/1234153.jpg', '1', null, null, '马克思主义政治经济学给我们提供的首先是认识、分析和解决问题的科学方法，它不可能穷尽一切科学真理，也不可能提供一切问题的具体答案，它的理论应该随着社会经济实践的发展而不断发展。正是基于这种实践意义，本教科书编写组在党的十八大精神的指导下，吸收了目前社会经济实践和理论研究的最新发展，组织了这次修订活动。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('148', '46', '9787301288351', '中关村模式', '尹卫东, 董小英, 胡燕妮, 郭伟琼, 著', 'http://api.jisuapi.com/isbn/upload/3591/3590959.jpg', '1', null, null, '中关村国家自主创新示范区源于20世纪80年代初期的中关村电子一条街，是中国第一个国家级高新技术产业开发区，“已经成为中国创新发展的一面旗帜”（习近平语）。本书所写的就是中关村示范区内注册的代表性公司近5年的发展情况。首先是数字中关村，有各类象征园区发展的指标，同时有投资者、政府、学者及安永代表对数字的点评；其次是故事中关村，讲了8家中关村的创业案例，这8家不是京东百度等知名公司，而是中关村的“隐形英雄”，经验更具普遍性，以期对更多的科技园区和创业者带来共鸣；最后是政策中关村，列举了中关村能取得今天成就背后的配套政策支持。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('149', '47', '9787301283790', '创新者的逆袭', '郑刚, 陈劲, 蒋石梅著', 'http://api.jisuapi.com/isbn/upload/94/3040794.jpg', '1', null, null, '紧密围绕MBA创新与变革管理、技术创新管理、创业管理、战略管理等相关课程教学目标和有关理论知识，精选近两年来100%本土原创并经过实际课堂检验的创新与变革鲜活案例，包括曾入选哈佛/斯坦福商学院案例库和全国MBA百优案例的原创教学教案原汁原味呈现，并严格依据全国MBA教育指导委员会案例编写规范，方便助力于广大教师开展生动的创新与变革管理领域的案例教学，提升教学效果。同时有助于激荡EMBA/MBA学员和经济管理学科研究生、创新实践者的创新思维，启迪智慧和创新思想火花。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('150', '47', '9787308189040', '新金融，新格局', '巴曙松, 著', 'http://api.jisuapi.com/isbn/upload/3444/3443532.jpg', '1', null, null, '改革开放之后，我国经济一直处在高速增长的轨道上，特别是2008年金融危机以来这十年，中国经济弯道超车，国际影响力大幅提升，新经济、新业态对中国经济带来了巨变。伴随着几轮稳增长措施的助力，传统的以债务扩张推动的高投资难以为继，金融与实体经济高杠杆推升了金融风险，房地产泡沫积聚加剧了家庭与金融机构的脆弱性等等也不断出现，中国经济持续增长所面临的挑战也在增加。同时，随着人工智能时代的到来，大数据、区块链、金融科技更在不断改变着金融生态圈。在人工智能+金融新格局下，如何看清中国经济的发展方向，首席经济学家巴曙松基于过去的经验总结和时代的展望，对中国经济进行了全方位论述。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('151', '47', '9787520304122', '“一带一路”', '王伟光, 主编', 'http://api.jisuapi.com/isbn/upload/56/3026856.jpg', '1', null, null, '今年5月，中国将在北京主办“一带一路”国际合作高峰论坛，共商合作大计，共建合作平台，共享合作成果，为解决当前世界和区域经济面临的问题寻找方案，为实现联动式发展注入新能量，让“一带一路”建设更好造福各国人民。为迎接峰会召开，共享发展经验，蓝迪国际智库集合中国社会科学院、清华大学等智库机构专家及参与“一带一路”建设的各行业领军企业经验，专门编制出版了《“一带一路”——新型全球化的新长征》一书。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('152', '47', '9787301282953', '新结构经济学思与辩', '王勇, 著', 'http://api.jisuapi.com/isbn/upload/26/3019326.jpg', '1', null, null, '新结构经济学是林毅夫教授创建的一套发展经济学理论与方法，本书作者王勇是林毅夫老师的得意弟子和重要合作者，近年来一直致力于新结构经济学的推广和普及，本书是作者近年来关于新结构经济学的理论介绍、评论、推荐、辩论的28篇文章合集，归为理论思考、产业政策、中国经济等几大部分，对这门新理论进行了全面、独到、通俗的讲解，并涉及了很多近年来改革与发展领域的热点问题，具有很高的可读性。具体包括：新结构经济学的新理论：核心概念与观点、新结构经济学的方法论：反思与感悟、新结构经济学中的产业政策、新结构经济学中的有为政府、新结构经济学与国有企业改革问题、新结构经济学与“中等收入陷阱”问题、新结构经济学与中国宏观经济、新结构经济学与政治经济学。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('153', '47', '9787800878053', '管理感悟', '安东著', 'http://api.jisuapi.com/isbn/upload/1008/1007047.jpg', '1', null, null, '本书用一些耳熟能详的小故事阐述了经营管理中的道理，通过分析小故事中的大管理，告诉读者其实管理无处不在。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('154', '47', '9787301282502', '重构平台与生态', '刘学, 著', 'http://api.jisuapi.com/isbn/upload/43/3013843.jpg', '1', null, null, '最近十余年来，互联网平台公司毫无疑问是商业舞台的绝对主角。“平台”、“生态”等全新概念修饰后的商业世界，既包含着动人的诱惑，又隐含着深深的陷阱。本书基于作者多年的教学和研究，清晰地界定了平台及生态系统、生态系统的战略势能、生态系统健康管理等概念，重点介绍平台设计的关键要素，以及这些关键要素如何影响生态系统的结构与势能，为投资者、创业者构建一种评价新商业模式（平台）到底是价值创造、价值攫取，还是价值破坏的基准和方法；在此基础上，围绕平台与生态系统演进、传统企业的平台化转型两个主题，剖析了包括腾讯、乐视、万达、GE等一系列中外著名企业的案例。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('155', '47', '9787301282106', '战胜命运', '林毅夫, (喀麦隆) 塞勒斯汀·孟加 (Celestin M', 'http://api.jisuapi.com/isbn/upload/24/2994524.jpg', '1', null, null, '本书从经济史、经济理念和经济分析中得到结论，经济发展总是出现在成功发展的先决条件缺失或次优的情况下，而这一事实常被忽略。通过这些观察与思考，本书为在发展中世界提供了一个创造共同繁荣的实用而实际的路线图。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('156', '47', '9787301282243', '从万科到阿里', '郑志刚, 著', 'http://api.jisuapi.com/isbn/upload/92/3003292.jpg', '1', null, null, '以万科股权之争和阿里上市为代表的一系列公司治理事件表明，我国资本市场已在不知不觉中进入分散股权时代。在分散股权时代，上市公司、监管当局和投资者该如何应对公司治理的挑战？本书通过基于对一个个既相互独立又内在关联的个案的经济观察，剖析背后的缘由、逻辑和趋势，试图勾勒出一幅在分散股权时代如何选择公司治理模式的图画。全书语言通俗，见解独到有深度，适合所有关注互联网金融、公司治理、国企改革的研究者、大学师生、企业人士阅读。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('157', '47', '9787301277973', '当传承遇到转型', ' (新加坡) 李秀娟, 张燕, 著', 'http://api.jisuapi.com/isbn/upload/59/2752559.jpg', '1', null, null, '本书运用案例、故事、理论和经验相互穿插的方式，归纳总结了中国家族企业在企业接班、财富传承和企业转型等问题上的不同路径选择。希望读者能在轻松的阅读中，透过别人的故事来思考自己的问题，从中汲取有关的经验和知识。希望本书对中国家族企业的传承和转型起到启发及指导的作用。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('158', '47', '9787509738436', '政府绩效管理理论与实践', '鲍静, 主编', 'http://api.jisuapi.com/isbn/upload/98/2474598.jpg', '1', null, null, '本书系统整理了中国行政管理学会十多年来对政府绩效评估和管理的研究成果，阐释了政府绩效管理的基本理念和内涵，论述了我国政府部门进行绩效管理工作的现实意义，梳理了我国历史上政府考评制度，总结了世界各国政府绩效管理的经验和我国各地绩效管理实践活动，力求在借鉴国内外相关理论和成功经验的基础上，为我国政府部门开展绩效评估工作提供方向性的、可操作的指导意见。其中收录的多篇研究报告被国务院领导批转国家行政改革职能部门参考，更为重要的是本书将多年来中国行政管理学会对政府绩效研究的理论成果运用于地方政府和行政部门改进绩效管理实践，收录了多篇为地方政府采纳并发文实施的咨询研究报告，体现了理论与实践的统一。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('159', '47', '9787301271551', '自下而上的变革', ' (美) 倪志伟 (Victor Nee) , (德) 欧索', 'http://api.jisuapi.com/isbn/upload/8/392808.jpg', '1', null, null, '本书作者长期对中国经济进行细致调研，他们在本书中体现的基本观点是：中国的经济增长并不是由上层即国家主导的，而是来自于底层，即企业创造的。这并不是一个新的观点，但是作者通过对长江三角洲地区超过700家企业的调研，细致刻画了中国的经济奇迹是怎样发生的。出版这本书有两个意义：一是引导读者从另一个视角观察我国经济，二是这本书所呈现的研究方法本身值得所有从事经济研究和管理研究的学习。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('160', '48', '9787301274569', '看懂中国产能过剩', '徐滇庆, 刘颖, 著', 'http://api.jisuapi.com/isbn/upload/61/571361.jpg', '1', null, null, '近年来，产能过剩问题一直是学界讨论的热点和政府工作的重点，到底钢铁、水泥、平板玻璃、原铝和造船等五大行业的产能过剩严重到什么程度？是怎么形成的？本书首先厘清了产能过剩的定义，将产能过剩分为短板过剩、局部过剩和周期性过剩三种基本类型，并分别讨论了五大过剩行业的过剩原因和相应对策，并对政府在控制产能过剩的过程中应当起到的作用进行了讨论，提出加大廉租房建设等切实可行的政策建议。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('161', '48', '9787301271186', '达观天下', '顾佳峰, 著', 'http://api.jisuapi.com/isbn/upload/95/380095.jpg', '1', null, null, '本书从战略、组织、决策、领导、投资、创新、品质、使命、教育、期许十个方面，与读者分享了润泰集团总裁尹衍梁先生独到的管理智慧、思想和方法，作为一本生动而贴近管理实践的商业管理著作，相信广大读者能够从中获得启发、产生共鸣。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('162', '48', '9787501988822', '幻觉', ' (比) 拉瑞依 (Laroi,F.) , 等编著', 'http://api.jisuapi.com/isbn/upload/60/2084960.jpg', '1', null, null, '对于大量有幻觉症状的患者而言，幻觉是一个让人既困扰又痛苦的问题。本书汇集了幻觉研究领域大量杰出学者们的研究成果，为幻觉的测量、评估和治疗提供了实践性的指导。其中涵盖了一系列的干预方案，包括：药理学方法、经颅磁疗刺激法、认知行为疗法、接受与承诺疗法、辩证行为疗法、竞争性记忆训练等等。此外，本书还提供了相关领域的研究概述，为各项干预方案提供了实证支持。总之，本书叙述详尽，案例丰富，无论对于研究者，还是临床咨询师，都是一本珍贵的指南。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('163', '48', '9787802360846', '似影似画', '范立祥, 著', 'http://api.jisuapi.com/isbn//upload/831/830213.jpg', '1', null, null, '本书是一本教你怎样在普通摄影作品上进行手工绘画，然后利用电脑的各种技巧重新开始再创作的小册子。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('164', '48', '9787807402091', '博弈', '范钧等', 'http://api.jisuapi.com/isbn/upload/1733/1732613.jpg', '1', null, null, '本书以最具实用性的竞争策略为核心，通俗地介绍了它们的博弈论依据，清晰地描述了其适用的具体条件，并通过对真实案例的分析，系统阐述这些策略的价值所在，以便读者在实际生活中能够加以合理运用。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('165', '48', '9787301269572', '新结构经济学新在何处', '林毅夫, 付才辉, 王勇, 主编', 'http://api.jisuapi.com/isbn/upload/60/324960.png', '1', null, null, '新结构经济学是林毅夫教授及其团队过去二十多年来研究中国和其他发展中国家经济发展和转型成败经验而总结出来，逐步充实完善的一个新的发展经济学的理论体系。2015年12月16日至19日在北京大学举办的第一届新结构经济学专题研讨会邀请了近百名来自海内外的优秀华人青年经济学家和学子参会，通过“回顾与反思”“立意与重构”“议程与思路”“突破与革命”几场主题讨论深入探讨了新结构经济学的理论框架和学科体系构建、相关研究议程和研究思路以及应用前景，本书选取其中的优秀发言整理成册，旨在向对发展问题感兴趣的一般读者及经济学人展示新结构经济学这一最有潜力的发展理论的全貌，并鼓励更多的有识之士加入进来。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('166', '48', '9787508659145', '中国经济', '夏斌, 著', 'http://api.jisuapi.com/isbn/upload/10/316610.jpg', '1', null, null, '《中国经济：观察与谏言》是著名经济学家、国务院参事夏斌对中国经济战略进行不懈思考的集大成之作。夏斌对中国经济的宏观形势与调控、经济改革与结构调整、全球治理与中国机会、金融改革与发展以及金融战略，提出了自己的洞见，有助于读者看清一个处于经济转型与发展关键时刻的真实中国的经济大势，同时也为中国如何避免陷入中等收入陷阱、再续经济繁荣给出了良方。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('167', '48', '9787301265086', '迈向社会和谐的城乡发展', '陈钊, 陆铭, 著', 'http://api.jisuapi.com/isbn/upload/67/2771767.jpg', '1', null, null, '经过30余年的经济改革，当前制约中国经济结构转型的瓶颈是生产要素市场。作为生产要素中最为核心的部分，劳动力的跨地区配置受到了户籍制度的制约，对中国经济增长方式产生了至关重要的影响。因此，有必要从整个中国经济结构转型的高度来梳理户籍制度改革的理论基础，从而为下一步的改革找准方向。基于这个目标，本书从多个角度对我国的户籍制度进行了讨论，有理论梳理，也有实证分析。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('168', '48', '9787501950386', '第三方物流', '张海花, 主编', 'http://api.jisuapi.com/isbn/upload/63/486063.jpg', '1', null, null, '通过教学，学生应树立先进的物流理念；明确物流系统的构造，第三方物流实务的规划与实施；掌握第三方物流实务技术与标准；掌握第三方物流的作业流程与方式方法。本书第一章物流活动及功能、第二章物流系统设计、第三章运输管理、第四章仓库与库存管理、第五章物流信息系统、第六章物流与电子商务、第七章物流合同管理、第八章案例。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('169', '48', '9787508667713', '生活的哲学', ' (英) 朱尔斯·埃文斯, 著', 'http://api.jisuapi.com/isbn/upload/69/2516869.jpg', '1', null, null, '《生活的哲学》是一本贴近贴近日常、以古希腊智慧反思生活的通俗哲学读物。本书源自作者真实的人生经历，倡导用哲学认识你自己，改变你自己。一句话，一个人，一段触及灵魂的旅程……这是一堂让人生不再迷茫的哲学课。20岁的时候，埃文斯一度沉湎于毒品，刷爆信用卡，将生活弄得一团糟。大学毕业后，他的精神崩溃了，用他自己的话说——就像砸毁一台机器一样，眼看就要毁掉自己的人生……但遇到以苏格拉底哲学为基础的认知行为疗法之后，他变了。苏格拉底成为他在那段艰难岁月里庆幸遇到的老师，苏格拉底哲学循序渐进地挽救了他濒临崩溃的生活。他领悟到，哲学是一种生活方式，而不仅是学院里被传授的学问。他探访那些被哲学拯救了的人们，越战老兵、海豹突击队员、阿波罗号的宇航员、回归自然的山居隐士、拉斯维加斯的魔术师、纽约皇后区的帮派分子、重新发现哲学价值的哲学教授……每个人都被哲学改变，哲学挽救了他们的生活。于是，他写下了这本书。他将苏格拉底、柏拉图、伊壁鸠鲁等12位伟大的古代哲人聚在一起，设计成梦想中的人生学校，让他们向我们传授现代教育缺失的内容：如何调整情绪，如何享受当下，如何应对人生的不幸，如何过上更好的生活，如何面对生死……', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('170', '48', '9787507533859', '上流下流', '商刀, 著', 'http://api.jisuapi.com/isbn/upload/2621/2620770.jpg', '1', null, null, '本书是以当下最热的房地产市场为背景，发生在大上海的推理作品；本书围绕地产界知名经理人（小说虚构人物）跳楼自杀事件，情节慢慢展开，最后的真相居然是人为操控，为了相互诈骗而不幸坠楼!', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('171', '48', '9787513600880', '转型升级', '徐明华, 等著', 'http://api.jisuapi.com/isbn/upload/39/2086039.jpg', '1', null, null, '本书从民营企业成长、产业升级发展、空间组织结构、开放型经济等多个角度，对浙江发展方式转变与经济转型的基本过程及经济教训进行了系统分析和概述总结。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('172', '48', '9787101110012', '中国哲学简史', '冯友兰, 著', 'http://api.jisuapi.com/isbn/upload/23/1887323.jpg', '1', null, null, '本书原名A Short History of Chinese Philosophy，是冯友兰先生于1947年在美国宾夕凡尼亚大学讲授中国哲学史的英文讲稿。该书在世界范围内都影响巨大，是迄今为止西方欲了解、研究中国哲学的必读书，是世界各地许多大学教授中国哲学课程的教材。本次收入“国民阅读经典”丛书的《简史》，采用赵复三先生的中文译本。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('173', '49', '9787513536417', '人文传统', ' (美) 费尔罗 (Fiero,G.K.) , 著', 'http://api.jisuapi.com/isbn/upload/2/2861002.jpg', '1', null, null, '《人文传统（二）文艺复兴——启蒙运动（全彩插图本）》旨在以全球化的视野探讨和研究世界的文化脉络，呈现“人文”作为一个独立学科的整合之美，内容涵盖了从文艺复兴到启蒙运动时期，世界范围内从文学到艺术的各领域文化，为读者描绘了一个精彩纷呈的人文传统世界。《人文传统（二）文艺复兴——启蒙运动（全彩插图本）》英文版由全球顶级教育出版机构麦格劳—希尔教育集团出版。本套丛书自从1992年面世以来，至今已改版六次，是国外诸多大学人文系的教材。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('174', '49', '9787511337016', '全球通史', '知行, 主编', 'http://api.jisuapi.com/isbn/upload/91/1213791.jpg', '1', null, null, '本书图文搭配独具匠心，以大量精美的图片为青少年营造一座彩色历史长廊，这些图片包括出土文物、历史遗迹、现场照片、人物绘画等，与文字相辅相成，图文对应，将人类历史的丰富与精彩更直观、更真实、更立体地呈现在读者面前。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('175', '49', '9787547222522', '人间词话', '王国维, 著', 'http://api.jisuapi.com/isbn/upload/52/715952.jpg', '1', null, null, '《人间词话》以境界说为中心构成了一个比较完整的理论体系。既继承了中国古代美学和文艺理论的优良传统，又吸收了西方美学和文艺理论的某些观点，熔中西思想于一炉。不被传统的词学理论所束缚，敢于创新，自成一家。能够运用朴素的辩证方法进行论证，增加了理论深度。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('176', '49', '9787301119433', '儒藏', '北京大学《儒藏》编纂与研究中心, 主编', 'http://api.jisuapi.com/isbn/upload/942/941216.jpg', '1', null, null, '“北京大学儒藏工程”是我国一项重大学术文化项目。《儒藏》收录自先秦至清朝结束这一时段中，儒家经典及其注疏、儒家学者的著述和体现儒家思想文化发展的相关文献，包括传世文献与出土文献，尽量选用最好的底本，按传统的经、史、子、集四部分类法进行分类。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('177', '49', '9787301189252', '中国儒学史', '陈启智, 著', 'http://api.jisuapi.com/isbn/upload/96/1075096.jpg', '1', null, null, '本卷详述了儒学在隋唐时期的发展历程。因隋唐儒学几乎涵盖中古学术的所有领域，故此卷在结构上采取古代学术与现代学科相结合的方式，将隋唐儒学分为五个阶段，以时间为经，人物为纬；内容方面则捡取处于学术核心部位的经学、哲学、政治、史学、经济、礼法思想予以论列，通过对隋唐史料的挖掘与辨析，予以抉发阐述，较为全面地勾勒出了隋唐儒学发展的脉络及其概貌，力图厘清隋唐儒学的特点。同时，本书力图深入揭示学术与治乱的关系。本卷的写作“抱定忠实于古人本意为主，参酌后世评价为辅，不作随意发挥定性的原则”，力图客观地、尽可能接近真实地揭示隋唐先儒真正的思想价值，并给予恰当的历史定位。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('178', '49', '9787301219157', '南画十六观', '朱良志, 著', 'http://api.jisuapi.com/isbn/upload/13/648213.jpg', '1', null, null, '文人画是中国传统艺术的精华，是一个至今仍引起兴趣、具有研究价值的问题。本书不是平面研究文人画，不是梳理文人画发展的历史，而是选择文人画发展中的一个问题——“真性”来集中讨论，这是文人画发展过程中带有根本性的问题，以突显对形成文人画的本质因素——人的内在精神气质的关注。本书共十六章，选择十六位画家，以他们的作品和艺术活动为线索，每章集中讨论一个关系文人画全局的关键性问题。如通过明代画家陈洪绶，集中讨论”高古”问题。十六位画家，就是十六个观照点，合而形成对文人画追求真性的总体表述。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('179', '49', '9787301093597', '英国宪制', '(英) 白哲特, 著', 'http://api.jisuapi.com/isbn/upload/55/492455.jpg', '1', null, null, '白哲特的著作向我们阐释了英国宪法制度的几个方面的情况，内阁的立法权与行政权集于一身，女王古老而尊崇的身份和象征性的统治（在位，reign but not govern），体现了政治与宪法密不可分的本质，一定时期的宪制的面貌与政党、内阁的品格有着极大的相关。本书的学术价值体现在白哲特对于英国宪制的白描式的叙述和连带的一些评论当中，向我们法律学者，特别是法律史的学者展现了十七八世纪英国政治制度和宪法的基本面貌。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('180', '49', '9787510403477', '文化常识通识读本', '李问渠', 'http://api.jisuapi.com/isbn/upload/1937/1936395.jpg', '1', null, null, '本书为文化常识类读物。分为中国篇和世界篇两大部分，每篇分文学艺术，美术，曲艺，经济，军事，科学等十几个领域，详细介绍了各领域最基本的一些文化常识。内容丰富全面，是一本集知识性，趣味性于一体的好书。本书读者面很广，主要是大中学生，以及想扩大自己知识面，为自己充电的读者。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('181', '49', '9787530947838', '生活是一种态度', '艾柯译', 'http://api.jisuapi.com/isbn/upload/1436/1435171.jpg', '1', null, null, '本书编选百余篇经典美文，阐释如何勇敢面对生活，发挥自己的潜能。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('182', '49', '9787530216781', '平凡的世界', '路遥, 著', 'http://api.jisuapi.com/isbn/upload/19/3023619.png', '1', null, null, '《平凡的世界》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人公面对困境艰苦奋斗的精神，对今天的大学生朋友仍有启迪。这是一部全景式地表现中国当代城乡社会生活的长篇小说。全书共三部。作者在近十年问广阔背景上，通过复杂的矛盾纠葛，刻划了社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('183', '49', '9787108056184', '巨流河', '齐邦媛, 著', 'http://api.jisuapi.com/isbn/upload/34/301334.jpg', '1', null, null, '本书作者以逾八十高龄历时四年写作完成《巨流河》，其以缜密通透的笔力，从大陆巨流河写到台湾哑口海，以一个奇女子的际遇见证了纵贯百年、横跨两岸的大时代的变迁。本书有两条主线：一是借着父亲齐世英的经历，串联起一代铮铮铁汉们在侵略者炮火下头可抛、血可洒的气概与尊严；一是从自己诞生、童年写起，战火中逃离至重庆，八年间受南开中学与武汉大学教育，受业于名师，得文学启蒙，大学毕业后落脚台湾展开学术事业，成为台湾文学推手。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('184', '49', '9787544726290', '废都', '贾平凹, 著', 'http://api.jisuapi.com/isbn/upload/95/1300495.jpg', '1', null, null, '本小说以历史悠久的古都西京当代生活为背景，记叙“闲散文人”庄之蝶、书法家龚靖元、画家汪希眠及艺术家阮知非“四大名人”的起居生活，展现了浓缩的西京城形形色色“废都”景观。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('185', '50', '9787506361804', '秦腔', '贾平凹, 著', 'http://api.jisuapi.com/isbn/upload/4/2544804.jpg', '1', null, null, '本书是长篇小说。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('186', '50', '9787544753227', '爱你就像爱生命', '王小波, 著', 'http://api.jisuapi.com/isbn/upload/72/1484072.jpg', '1', null, null, '本书是《王小波全集》第九卷书信集。《爱你就像爱生命》这个书名出自王小波、李银河一封未面世书信，自1977年，王小波与李银河相识，开始书信往来，到80年代二人在国外求学，一直到90年代，王小波辞去职务成为自由撰稿人，1997年去世。此书装进了两个人真挚纯净的爱情，也装进了属于他们的那个时代独特的印记。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('187', '50', '9787514215953', '沉默的大多数', '王小波, 著', 'http://api.jisuapi.com/isbn/upload/2770/2769273.jpg', '1', null, null, '《沉默的大多数》是一部杂文集。作者在该作品中以反讽和幽默的手法直面生活，从一个轻松的角度来解析身边的百态。从杂文作品中看，他受到哲学家罗素思想的影响，他推崇和提倡科学与理性，并且认为人的生活应该追求未知，他反对进行思想禁锢，主张人们思维应该保持多样化，使生活变得有意思有趣，去热爱智能。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('188', '50', '9787802566101', '黄金时代', '王小波, 著', 'http://api.jisuapi.com/isbn/upload/48/393448.jpg', '1', null, null, '《黄金时代》是当代作家王小波创作的长篇小说。二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，知识分子群体无能为力而极“左”政治泛滥横行。作为倍受歧视的知识分子，往往丧失了自我意志和个人尊严。在这组系列作品里，名叫“王二”的男主人公处于恐怖和荒谬的环境，遭到各种不公正待遇，但他却摆脱了传统文化人的悲愤心态，创造出一种反抗和超越的方式：既然不能证明自己无辜，便倾向于证明自己不无辜。于是他以性爱作为对抗外部世界的最后据点。本书还收录了《三十而立》《似水流年》《革命时期的爱情》《我的阴阳两界》等作品。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('189', '50', '9787538702729', '一半是海水一半是火焰', null, 'http://api.jisuapi.com/isbn/upload/3847/3846052.jpg', '1', null, null, null, 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('190', '50', '9787561945803', '我是你爸爸', '肖宁遥, 著', 'http://api.jisuapi.com/isbn/upload/33/2297333.jpg', '1', null, null, '“轻松猫·中文分级读物”是专门为海内外青少年汉语学习者编写的汉语分级读物，根据新HSK进行分级。其中一级读物共6本，词汇与语法对应新HSK一级大纲，每本为一篇幽默风趣的原创故事，生词控制合理，语言浅显易懂，插图精美幽默，可以提升汉语学习者的阅读能力。《谁我是你爸爸》是一级故事的第六本。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('191', '50', '9787506343060', '活着', '余华, 著', 'http://api.jisuapi.com/isbn/upload/14/896114.jpg', '1', null, null, '本书是长篇小说。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('192', '50', '9787229079741', '兄弟兄弟', '范元, 郑钢, 著', 'http://api.jisuapi.com/isbn/upload/92/633792.jpg', '1', null, null, '本书是一部反映盐商家族两代人的长篇小说。小说讲述了孟天运、孟天许和孟天慕三个孤儿的成长故事。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('193', '50', '9787530216033', '许三观卖血记', '余华, 著', 'http://api.jisuapi.com/isbn/upload/521/520967.jpg', '1', null, null, '《许三观卖血记》创作于1995年，是余华继《活着》之后又一部现实力作。小说讲述了上世纪五六十年代，主人公许三观为生活所迫，不得不多次通过卖血来渡过人生的一个又一个难关。而当他老了，得知自己的血再也没有人要时，精神也随之崩溃了。在这部小说里，余华以民歌的节奏、博大的温情描绘了磨难的人生，表达了人在面对厄运时求生的欲望，饱含辛酸，却又不乏幽默。小说入选韩国《中央日报》100部必读书（2000年）、中国百位批评家和文学编辑评选的“20世纪90年代最有影响的10部作品”，并获美国巴恩斯—诺贝尔新发现图书奖。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('194', '50', '9787506365291', '温暖和百感交集的旅程', '余华, 著', 'http://api.jisuapi.com/isbn/upload/4/2154904.jpg', '1', null, null, '本书为随笔集。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('195', '50', '9787537415514', '我们生活在巨大的差距里', '余华, 著', 'http://api.jisuapi.com/isbn/upload/2950/2949455.jpg', '1', null, null, '本书（《我们生活在巨大的差距里》）是余华自2003年以来的首部杂文集。十年来他走遍世界，以亦庄亦谐的笔锋将观察到的社会、时事、文化等现象一一记录剖析，在日常生活的表象下洞见社会固有病灶，对我们生活的时代进行了由外而内的深刻反省，亦在与世界的踫撞交锋中，呈现出一个崛起、变迁中的中国。正如余华所说：“这就是我的写作，从中国人的日常生活出发，经过政治、历史、经济、社会、体育、文化、情感、欲望、隐私等等，然后再回到中国人的日常生活之中。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('196', '50', '9787530214794', '亲爱的三毛', '三毛, 著', 'http://api.jisuapi.com/isbn/upload/70/1565670.jpg', '1', null, null, '散文集，本书收录了三毛在报刊上与读者的书信交流。作者希望用这种书信呼应的方式，消弭现代生活中人与人之间竖立的高墙，建立起心与心之间沟通的桥梁。在这些书信中，三毛敞开了自己真挚的内心，为年青的读者在学业和感情道路上遇见的种种问题指点迷津，帮助他们去战胜成长过程中的迷惘和痛苦。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('197', '50', '9787530214787', '撒哈拉的故事', '三毛, 著', 'http://api.jisuapi.com/isbn/upload/72/1565672.png', '1', null, null, '散文集，是一系列以沙漠为背景的故事，主要描写了三毛和荷西在撒哈拉生活时的所见所闻、与当地朋友结识，以及在沙漠中寻找感受生活的真善美的故事。书中每个故事都充溢着一种浪漫、浓情的异域情调，字里行间反映着大沙漠独有的地形地貌与风土人情，与三毛荷西之间的温馨爱意。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('198', '51', '9787807690733', '滚滚红尘', '安思源, 著', 'http://api.jisuapi.com/isbn/upload/92/2341792.jpg', '1', null, null, '上海——十里洋场，灯红酒绿。在民初这个歌舞升平的乱世，顾海棠与许许多多有志青年一样拥有一颗热爱祖国的赤子之心，却又与他们不同……1919年，顾海棠和姐姐因父母双亡而被卖进了青楼，几年后，姐姐被迫害致死，顾海棠带着侄女菱子逃往上海。顾海棠刚到上海，菱子便被人拐走，巡捕黄龙帮她找回，自此便对她展开追求。工人运动时，顾海棠遇到初恋、革命党人于立凡，为其铤而走险运输枪支被捕，在狱中受尽折磨，出狱后被赶出法租界。离开法租界的顾海棠历尽艰辛成为小有名气的企业家，于立凡为了掩护身份与表妹结婚。后来，于立凡因刺杀国民党要员受到通缉，海棠冒死将其送出上海使他得以逃脱。抗战期间，顾海棠与于立凡、黄龙假借商人身份为共产党运送物资及情报，黄龙在一次运送物资途中为了掩护于立凡而牺牲。抗战胜利后于立凡被国民党屠杀，顾海棠因反对内战被国民党入狱，后在我党的救援下出狱，为党默默地工作。改革开放后，黄龙被追认为抗日烈士……可又有谁知道顾海棠内心所记挂的终不过——此情可待成追忆，只是当时已惘然！', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('199', '51', '9787530211021', '滚滚红尘', '三毛, 著', 'http://api.jisuapi.com/isbn/upload/27/393627.png', '1', null, null, '本书是三毛全集中唯一的一部剧本，也是她的最后一部作品，并且被改编成了电影。当时，这部电影在社会上产生了很大的影响，轰动一时。故事以旧上海为背景，讲述的是在战乱中能才和韶华、月凤与革命男友之间的爱情故事，同时也为读者分析了几个人物的性格以及他们最后的归宿。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('200', '51', '9787806399262', '滚滚红尘', '三毛, 著', 'http://api.jisuapi.com/isbn/upload/93/230893.jpg', '1', null, null, '本书是三毛一生创作的惟一一部电影剧本，讲述了一段凄婉的爱情故事。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('201', '51', '9787530214831', '稻草人手记', '三毛, 著', 'http://api.jisuapi.com/isbn/upload/65/1565665.jpg', '1', null, null, '散文集，记录的是三毛定居加纳利岛后生活中的点点滴滴，语言朴实、简单，其中的情趣与无奈，朴实而谐趣，令人笑叹。也许，正是这样简简单单的生活，才给了三毛无限的创作灵感。三毛，原名陈懋平，后改名为陈平，中国现代作家，1943年出生于重庆，1973年定居西属撒哈拉沙漠和荷西结婚。从此写出了一系列风靡无数读者的散文作品，把大漠的狂野温柔和活力四射的婚姻生活，淋漓尽致展现在大家面前，“三毛热”迅速地从台港横扫整个华文世界，而“流浪文学”更成为一种文化现象。著有《雨季不再来》《稻草人手记》《梦里花落知多少》等。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('202', '51', '9787533048037', '稻草人', '叶圣陶, 著', 'http://api.jisuapi.com/isbn/upload/34/2509234.jpg', '1', null, null, '本套系列图书选取了多部中外名著典籍，加以精编缩写和插图点评，以中小学生喜闻乐见的形式出版，2012年曾面世50册，受到市场好评。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('203', '51', '9787530211106', '雨季不再来', '三毛', 'http://api.jisuapi.com/isbn/upload/394/393424.jpg', '1', null, null, '当三毛还是二毛的时候，她写下了《雨季不再来》，这些在她17~22岁之间所发表的文字，真实地呈现出从青涩敏感的二毛，蜕变为智慧成熟的三毛的成长的过程。而《雨季不再来》中透露的纯情和美感，可以清楚地印证她传奇般性格的痕迹。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('204', '51', '9787805217369', '梦里花落知多少', null, 'http://api.jisuapi.com/isbn/upload/3894/3893035.jpg', '1', null, null, '三毛，台湾著名作家，1943年3月26日出生于重庆，浙江省定海县人。本名为陈懋平，1946年改名陈平，笔名“三毛”，1964年进入文化大学哲学系，肄业后曾留学欧洲，婚后定居西属撒哈拉沙漠加那利岛，并以当地的生活为背景，写出一连串情感真挚的作品。1981年回到台湾，曾在文化大学任教，1984年辞去教职，专职从事写作和演讲，1991年1月4日去世，享年48岁。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('205', '51', '9787559623638', '好好读书', '麦家, 等著', 'http://api.jisuapi.com/isbn/upload/3305/3304653.jpg', '1', null, null, '名家导读，从20个经典故事中发现解答人生困惑的答案，人性、命运、梦想、欲望、情感五个维度出发，解决你的人生5大难题，情感的维系、成长的选择、梦想的实现、欲望的挣扎、人性的救赎。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('206', '51', '9787549564125', '亲爱的安德烈', '龙应台, (德) 安德烈, 著', 'http://api.jisuapi.com/isbn/upload/34/395834.jpg', '1', null, null, '这是龙应台与安德烈的母子书信集。内容完全同2008年人民文学出版社版（此版权到期）。这些信感动了无数被“亲子”之间的隔阂与冲突深深困扰着的家长和子女。面临同样的困境的读者，必将会从中获得有益启示，找到适合自己的方法，去进行弭平代沟、跨越文化阻隔、母子之间对话交流的尝试。安德烈于四岁的时候，龙应台离开欧洲，前往台北任职。等她卸任回到儿子身边，安德烈已是一个十八岁的小伙子，坐在桌子另一边，有一点“冷”地看着妈妈。她觉得与儿子之间有了一座无形的墙：“我的可爱的安安哪里去了？”她感到：儿子“爱”她，但并不“喜欢”她。他们是两代人，年龄相差三十年；也是两国人，中间横着东西文化。失去小男孩安安没关系，但她一定要认识大学生安德烈。于是，母子俩用了三年时间互相通信。就这样，他们以书信的方式，进入了对方的生活、世界和心灵。龙应台“认识了人生里第一个十八岁的人”，安德烈“也第一次认识了自己的母亲”。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('207', '51', '9787549550166', '野火集', '龙应台, 著', 'http://api.jisuapi.com/isbn/upload/68/393368.jpg', '1', null, null, '《野火集》，收入经典文章48篇，其内容完全同2010年北京三联书店版（此版权到期）。《野火集》从当年一篇篇发表到成书畅销，至今已近30年了。这些文章记录了近30年来台湾曾经的青春炙热。书中除了保留作者龙应台当年27篇野火文字，并有作者回忆当年每篇文字发表后的背后故事，以及海内外一些文人学者等，为文或追忆或评析走过野火的时代，共同见证这一场30年大事纪。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('208', '51', '9787108032911', '目送', '龙应台, 著', 'http://api.jisuapi.com/isbn/upload/17/2033017.jpg', '1', null, null, '本书由七十四篇散文组成，是一部极具亲情、感人至深的文集。由父亲的逝世、母亲的苍老、儿子的离开、朋友的牵挂、兄弟的携手共行，写出失败和脆弱，失落和放手，写出缠绵不舍和绝然的虚无。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('209', '51', '9787563947799', '呼兰河传', '萧红, 著', 'http://api.jisuapi.com/isbn/upload/76/539376.jpg', '1', null, null, '全书分为两部分：”原文欣赏”和”学习引导”。”原文欣赏”由萧红的两部小说《呼兰河传》和《生死场》组成。《呼兰河传》讲述的是一个北方小城镇的单调的美丽、人民的善良与愚昧。《生死场》主要讲述了东北农民贫苦无告的生活。”学习引导”含五个板块：全书阅读导引、基础知识检测、真题演练、读后感例文和答案。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('210', '51', '9787507426113', '生死场', '萧红, 著', 'http://api.jisuapi.com/isbn/upload/34/2061934.jpg', '1', null, null, '本书写于1934年9月。是鲁迅所编“奴隶丛书”之一。《生死场》描写了“九·一八”事变前后，哈尔滨近郊的一个偏僻村庄发生的恩恩怨怨以及村民抗日的故事，字里行间描摹着中国人于生的坚强与死的挣扎。它对人性、人的生存这一古老的问题进行了透彻而深邃的诠释。这种对人生的生存死亡的思索，超出了同时代的绝大部分作家。小说的后半部，是由人的生存死亡问题而转向了革命前途问题。鲁迅在为《生死场》作的序中，称它是“北方人民的对于生的坚强，对于死的挣扎”的一幅“力透纸背”的图画。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('211', '51', '9787020106684', '长恨歌', '王安忆, 著', 'http://api.jisuapi.com/isbn/upload/4/2304004.jpg', '1', null, null, '《长恨歌》，一个女人四十年的情与爱，被一枝细腻而绚烂的笔写得哀婉动人，其中交织着上海这所大都市从四十年代到九十年代沧海桑田的变迁。生活在上海弄堂里的女人沉垒了无数理想、幻灭、躁动和怨望，她们对情与爱的追求，她们的成败，在我们眼前依次展开。王安忆看似平淡却幽默冷峻的笔调，在对细小琐碎的生活细节的津津乐道中，展现时代变迁中的人和城市，被誉为“现代上海史诗”。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('212', '51', '9787535441775', '严歌苓作品精选', '严歌苓, 著', 'http://api.jisuapi.com/isbn/upload/2044/2043781.jpg', '1', null, null, '本书为严歌苓作品精选。选取了《少女小渔》、《天浴》等小说代表作和一些精品散文。严歌苓的小说题材丰富，涉及了不同时代事件，可读性非常强，是近年来作者出版的非常好的作品。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('213', '51', '9787521200300', '严歌苓论', '刘艳, 著', 'http://api.jisuapi.com/isbn/upload/3238/3237366.jpg', '1', null, null, '严歌苓第一部长篇小说由解放军文艺出版社1986年首版，但她随即赴美留学，之后的作品虽然屡获大奖，但内地的评论界和当代文学、海外华文文学研究领域在20世纪90年代中期以后才逐渐关注她的小说创作。新世纪以来，文学评论界对于严歌苓小说创作的成就和贡献一向评价不俗。本书论主、论者以及论述过程中涉及的文学人物形象皆为女性，因此较之通常的文艺评论，它更多了一层对女性心理的剖析与探幽。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('214', '51', '9787534266843', '严文井童话精选', '严文井, 著', 'http://api.jisuapi.com/isbn/upload/2448/2447141.jpg', '1', null, null, '本书精选严文井最具有代表性的、适合青少年读者阅读的童话作品，汇编成册。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('215', '51', '9787020101306', '玉米', '毕飞宇, 著', 'http://api.jisuapi.com/isbn/upload/75/2626275.jpg', '1', null, null, '本书对文革时期中国家庭和乡村生活进行了一次激动人心的探索，作家在一个扣人心弦的家庭冲突和爱情故事中，天衣无缝地游走于史诗般的宏大叙述和深入细腻的描写之间，既气势磅礴又精妙细微，不仅勾勒出个体的生活，同时还呈现了整个社会的全貌。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);
INSERT INTO `bms_book` VALUES ('216', '51', '9787538738469', '我们心中的怕和爱', '水木丁, 著', 'http://api.jisuapi.com/isbn/upload/2441/2440615.jpg', '1', null, null, '本书是情感回信集。作者用邻家姐姐的口吻，教会每一个写信者爱生活、爱自己。', 'myFireWall', 'http://book-market.oss-cn-shanghai.aliyuncs.com/album_pics/2020-04-20/65dbfb40-82d2-11ea-b763-2f637dea4a1f.jpg', '0', '1', null, null);

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
-- Records of bms_book_category
-- ----------------------------

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
-- Records of bms_cart_log
-- ----------------------------
INSERT INTO `bms_cart_log` VALUES ('74', '45', '88', '9787508642796', '2020-04-20 15:54:21');
INSERT INTO `bms_cart_log` VALUES ('75', '45', '89', '9787508641485', '2020-04-20 15:54:25');
INSERT INTO `bms_cart_log` VALUES ('76', '45', '90', '9787560970189', '2020-04-20 15:54:27');

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
-- Records of bms_search_log
-- ----------------------------
INSERT INTO `bms_search_log` VALUES ('7', '48', '9787512419384', null, '2020-04-20 15:29:15');
INSERT INTO `bms_search_log` VALUES ('8', '51', '9787508672069', null, '2020-04-20 15:38:42');
INSERT INTO `bms_search_log` VALUES ('9', '35', '9787512419384', null, '2020-04-20 15:41:45');
INSERT INTO `bms_search_log` VALUES ('10', '35', '9787508672069', null, '2020-04-20 15:41:53');
INSERT INTO `bms_search_log` VALUES ('11', '35', '9787544276597', null, '2020-04-20 15:41:59');
INSERT INTO `bms_search_log` VALUES ('12', '35', '9787506382397', null, '2020-04-20 15:42:04');
INSERT INTO `bms_search_log` VALUES ('13', '35', '9787108041531', null, '2020-04-20 15:42:08');
INSERT INTO `bms_search_log` VALUES ('14', '35', '9787508651903', null, '2020-04-20 15:42:12');
INSERT INTO `bms_search_log` VALUES ('15', '52', '9787200050349', null, '2020-04-20 15:43:45');
INSERT INTO `bms_search_log` VALUES ('16', '52', '9787561386392', null, '2020-04-20 15:43:48');
INSERT INTO `bms_search_log` VALUES ('17', '52', '9787030107596', null, '2020-04-20 15:43:51');
INSERT INTO `bms_search_log` VALUES ('18', '52', '9787508662923', null, '2020-04-20 15:43:55');
INSERT INTO `bms_search_log` VALUES ('19', '52', '9787508619408', null, '2020-04-20 15:44:00');
INSERT INTO `bms_search_log` VALUES ('20', '52', '9787550242234', null, '2020-04-20 15:44:04');
INSERT INTO `bms_search_log` VALUES ('21', '52', '9787506366380', null, '2020-04-20 15:44:06');
INSERT INTO `bms_search_log` VALUES ('22', '52', '9787561351239', null, '2020-04-20 15:44:09');
INSERT INTO `bms_search_log` VALUES ('23', '51', '9787308086141', null, '2020-04-20 15:45:00');
INSERT INTO `bms_search_log` VALUES ('24', '51', '9787538546422', null, '2020-04-20 15:45:03');
INSERT INTO `bms_search_log` VALUES ('25', '51', '9787807659938', null, '2020-04-20 15:45:08');
INSERT INTO `bms_search_log` VALUES ('26', '51', '9787563957040', null, '2020-04-20 15:45:11');
INSERT INTO `bms_search_log` VALUES ('27', '51', '9787561383254', null, '2020-04-20 15:45:14');
INSERT INTO `bms_search_log` VALUES ('28', '51', '9787506868754', null, '2020-04-20 15:45:17');
INSERT INTO `bms_search_log` VALUES ('29', '51', '9787229047214', null, '2020-04-20 15:45:20');
INSERT INTO `bms_search_log` VALUES ('30', '51', '9787514014877', null, '2020-04-20 15:45:23');
INSERT INTO `bms_search_log` VALUES ('31', '51', '9787802566101', null, '2020-04-20 15:45:26');
INSERT INTO `bms_search_log` VALUES ('32', '51', '9787205084431', null, '2020-04-20 15:45:29');
INSERT INTO `bms_search_log` VALUES ('33', '50', '9787121301094', null, '2020-04-20 15:46:18');
INSERT INTO `bms_search_log` VALUES ('34', '50', '9787532748983', null, '2020-04-20 15:46:21');
INSERT INTO `bms_search_log` VALUES ('35', '50', '9787532778256', null, '2020-04-20 15:46:24');
INSERT INTO `bms_search_log` VALUES ('36', '50', '9787020090006', null, '2020-04-20 15:46:27');
INSERT INTO `bms_search_log` VALUES ('37', '50', '9787020090501', null, '2020-04-20 15:46:30');
INSERT INTO `bms_search_log` VALUES ('38', '50', '9787516410325', null, '2020-04-20 15:46:32');
INSERT INTO `bms_search_log` VALUES ('39', '50', '9787510806032', null, '2020-04-20 15:46:35');
INSERT INTO `bms_search_log` VALUES ('40', '50', null, '一句顶一万句', '2020-04-20 15:46:46');
INSERT INTO `bms_search_log` VALUES ('41', '50', null, '一句顶一万句', '2020-04-20 15:46:48');
INSERT INTO `bms_search_log` VALUES ('42', '50', null, '一句顶一万句', '2020-04-20 15:46:57');
INSERT INTO `bms_search_log` VALUES ('43', '50', '9787535449481', null, '2020-04-20 15:48:49');
INSERT INTO `bms_search_log` VALUES ('44', '50', '9787530217054', null, '2020-04-20 15:48:55');
INSERT INTO `bms_search_log` VALUES ('45', '50', '9787541134562', null, '2020-04-20 15:48:59');
INSERT INTO `bms_search_log` VALUES ('46', '50', '9787111517436', null, '2020-04-20 15:49:02');
INSERT INTO `bms_search_log` VALUES ('47', '50', '9787542662293', null, '2020-04-20 15:49:06');
INSERT INTO `bms_search_log` VALUES ('48', '50', '9787568224666', null, '2020-04-20 15:49:08');
INSERT INTO `bms_search_log` VALUES ('49', '50', '9787511123916', null, '2020-04-20 15:49:11');
INSERT INTO `bms_search_log` VALUES ('50', '50', '9787549546817', null, '2020-04-20 15:49:14');
INSERT INTO `bms_search_log` VALUES ('51', '49', '9787020093144', null, '2020-04-20 15:49:57');
INSERT INTO `bms_search_log` VALUES ('52', '49', '9787229030933', null, '2020-04-20 15:50:00');
INSERT INTO `bms_search_log` VALUES ('53', '49', '9787567711716', null, '2020-04-20 15:50:03');
INSERT INTO `bms_search_log` VALUES ('54', '49', '9787508614212', null, '2020-04-20 15:50:05');
INSERT INTO `bms_search_log` VALUES ('55', '49', '9787208105485', null, '2020-04-20 15:50:07');
INSERT INTO `bms_search_log` VALUES ('56', '49', '9787506830645', null, '2020-04-20 15:50:10');
INSERT INTO `bms_search_log` VALUES ('57', '49', '9787530656280', null, '2020-04-20 15:50:13');
INSERT INTO `bms_search_log` VALUES ('58', '48', '9787553809182', null, '2020-04-20 15:51:15');
INSERT INTO `bms_search_log` VALUES ('59', '48', '9787108051721', null, '2020-04-20 15:51:18');
INSERT INTO `bms_search_log` VALUES ('60', '48', '9787539632049', null, '2020-04-20 15:51:21');
INSERT INTO `bms_search_log` VALUES ('61', '48', '9787500111313', null, '2020-04-20 15:51:23');
INSERT INTO `bms_search_log` VALUES ('62', '48', '9787508699240', null, '2020-04-20 15:51:26');
INSERT INTO `bms_search_log` VALUES ('63', '48', '9787549256525', null, '2020-04-20 15:51:29');
INSERT INTO `bms_search_log` VALUES ('64', '47', '9787213046278', null, '2020-04-20 15:52:10');
INSERT INTO `bms_search_log` VALUES ('65', '47', '9787206030048', null, '2020-04-20 15:52:13');
INSERT INTO `bms_search_log` VALUES ('66', '47', '9787020100255', null, '2020-04-20 15:52:15');
INSERT INTO `bms_search_log` VALUES ('67', '47', '9787508643335', null, '2020-04-20 15:52:18');
INSERT INTO `bms_search_log` VALUES ('68', '47', '9787115373458', null, '2020-04-20 15:52:21');
INSERT INTO `bms_search_log` VALUES ('69', '47', '9787111614418', null, '2020-04-20 15:52:23');
INSERT INTO `bms_search_log` VALUES ('70', '47', '9787121298707', null, '2020-04-20 15:52:26');
INSERT INTO `bms_search_log` VALUES ('71', '47', '9787122309273', null, '2020-04-20 15:52:30');
INSERT INTO `bms_search_log` VALUES ('72', '47', '9787121309564', null, '2020-04-20 15:52:33');
INSERT INTO `bms_search_log` VALUES ('73', '46', '9787508687322', null, '2020-04-20 15:53:17');
INSERT INTO `bms_search_log` VALUES ('74', '46', '9787555710615', null, '2020-04-20 15:53:20');
INSERT INTO `bms_search_log` VALUES ('75', '46', '9787521704365', null, '2020-04-20 15:53:24');
INSERT INTO `bms_search_log` VALUES ('76', '46', '9787513923422', null, '2020-04-20 15:53:26');
INSERT INTO `bms_search_log` VALUES ('77', '46', '9787807667582', null, '2020-04-20 15:53:32');
INSERT INTO `bms_search_log` VALUES ('78', '46', '9787564532062', null, '2020-04-20 15:53:34');
INSERT INTO `bms_search_log` VALUES ('79', '46', '9787801555373', null, '2020-04-20 15:53:37');
INSERT INTO `bms_search_log` VALUES ('80', '46', '9787508656663', null, '2020-04-20 15:53:39');
INSERT INTO `bms_search_log` VALUES ('81', '45', '9787508642796', null, '2020-04-20 15:54:20');
INSERT INTO `bms_search_log` VALUES ('82', '45', '9787508641485', null, '2020-04-20 15:54:24');
INSERT INTO `bms_search_log` VALUES ('83', '45', '9787560970189', null, '2020-04-20 15:54:27');
INSERT INTO `bms_search_log` VALUES ('84', '45', '9787550008496', null, '2020-04-20 15:54:40');
INSERT INTO `bms_search_log` VALUES ('85', '45', '9787561340240', null, '2020-04-20 15:54:42');
INSERT INTO `bms_search_log` VALUES ('86', '45', '9787801585653', null, '2020-04-20 15:54:44');
INSERT INTO `bms_search_log` VALUES ('87', '45', '9787549413027', null, '2020-04-20 15:54:46');
INSERT INTO `bms_search_log` VALUES ('88', '45', '9787111595977', null, '2020-04-20 15:54:47');
INSERT INTO `bms_search_log` VALUES ('89', '45', '9787224100266', null, '2020-04-20 15:54:49');
INSERT INTO `bms_search_log` VALUES ('90', '45', '9787301250051', null, '2020-04-20 15:54:51');
INSERT INTO `bms_search_log` VALUES ('91', '45', '9787117219556', null, '2020-04-20 15:54:53');
INSERT INTO `bms_search_log` VALUES ('92', '45', '9787563344987', null, '2020-04-20 15:54:54');
INSERT INTO `bms_search_log` VALUES ('93', '45', '9787559626783', null, '2020-04-20 15:54:56');
INSERT INTO `bms_search_log` VALUES ('94', '45', '9787108022943', null, '2020-04-20 15:54:57');
INSERT INTO `bms_search_log` VALUES ('95', '45', '9787510040498', null, '2020-04-20 15:54:59');
INSERT INTO `bms_search_log` VALUES ('96', '44', '9787508642796', null, '2020-04-20 15:55:18');
INSERT INTO `bms_search_log` VALUES ('97', '44', '9787508641485', null, '2020-04-20 15:55:20');
INSERT INTO `bms_search_log` VALUES ('98', '44', '9787560970189', null, '2020-04-20 15:55:22');
INSERT INTO `bms_search_log` VALUES ('99', '44', '9787550008496', null, '2020-04-20 15:55:24');
INSERT INTO `bms_search_log` VALUES ('100', '44', '9787561340240', null, '2020-04-20 15:55:25');
INSERT INTO `bms_search_log` VALUES ('101', '44', '9787801585653', null, '2020-04-20 15:55:27');
INSERT INTO `bms_search_log` VALUES ('102', '44', '9787549413027', null, '2020-04-20 15:55:29');
INSERT INTO `bms_search_log` VALUES ('103', '44', '9787510040498', null, '2020-04-20 15:55:31');
INSERT INTO `bms_search_log` VALUES ('104', '44', '9787206043284', null, '2020-04-20 15:55:35');
INSERT INTO `bms_search_log` VALUES ('105', '44', '9787213066856', null, '2020-04-20 15:55:37');
INSERT INTO `bms_search_log` VALUES ('106', '44', '9787115319074', null, '2020-04-20 15:55:39');
INSERT INTO `bms_search_log` VALUES ('107', '44', '9787508642796', null, '2020-04-20 15:55:43');
INSERT INTO `bms_search_log` VALUES ('108', '44', '9787508641485', null, '2020-04-20 15:55:47');
INSERT INTO `bms_search_log` VALUES ('109', '44', '9787560970189', null, '2020-04-20 15:55:50');
INSERT INTO `bms_search_log` VALUES ('110', '44', '9787550008496', null, '2020-04-20 15:56:45');
INSERT INTO `bms_search_log` VALUES ('111', '44', '9787561340240', null, '2020-04-20 15:56:47');
INSERT INTO `bms_search_log` VALUES ('112', '44', '9787801585653', null, '2020-04-20 15:56:49');
INSERT INTO `bms_search_log` VALUES ('113', '44', '9787549413027', null, '2020-04-20 15:56:50');
INSERT INTO `bms_search_log` VALUES ('114', '44', '9787111595977', null, '2020-04-20 15:56:52');
INSERT INTO `bms_search_log` VALUES ('115', '44', '9787224100266', null, '2020-04-20 15:56:53');
INSERT INTO `bms_search_log` VALUES ('116', '44', '9787301250051', null, '2020-04-20 15:56:56');
INSERT INTO `bms_search_log` VALUES ('117', '44', '9787117219556', null, '2020-04-20 15:56:57');
INSERT INTO `bms_search_log` VALUES ('118', '44', '9787563344987', null, '2020-04-20 15:56:59');
INSERT INTO `bms_search_log` VALUES ('119', '44', '9787559626783', null, '2020-04-20 15:57:01');
INSERT INTO `bms_search_log` VALUES ('120', '43', '9787224100266', null, '2020-04-20 15:57:17');
INSERT INTO `bms_search_log` VALUES ('121', '43', '9787301250051', null, '2020-04-20 15:57:22');
INSERT INTO `bms_search_log` VALUES ('122', '43', '9787510040498', null, '2020-04-20 15:57:23');
INSERT INTO `bms_search_log` VALUES ('123', '43', '9787206043284', null, '2020-04-20 15:57:25');
INSERT INTO `bms_search_log` VALUES ('124', '43', '9787510040498', null, '2020-04-20 15:57:29');
INSERT INTO `bms_search_log` VALUES ('125', '42', '9787550008496', null, '2020-04-20 15:58:06');
INSERT INTO `bms_search_log` VALUES ('126', '42', '9787561340240', null, '2020-04-20 15:58:08');
INSERT INTO `bms_search_log` VALUES ('127', '42', '9787300225357', null, '2020-04-20 15:58:11');
INSERT INTO `bms_search_log` VALUES ('128', '42', '9787301295335', null, '2020-04-20 15:58:13');
INSERT INTO `bms_search_log` VALUES ('129', '42', '9787301295335', null, '2020-04-20 15:58:15');
INSERT INTO `bms_search_log` VALUES ('130', '42', '9787801585653', null, '2020-04-20 15:58:17');
INSERT INTO `bms_search_log` VALUES ('131', '41', '9787550008496', null, '2020-04-20 15:58:32');
INSERT INTO `bms_search_log` VALUES ('132', '41', '9787561340240', null, '2020-04-20 15:58:34');
INSERT INTO `bms_search_log` VALUES ('133', '41', '9787801585653', null, '2020-04-20 15:58:36');
INSERT INTO `bms_search_log` VALUES ('134', '41', '9787224100266', null, '2020-04-20 15:58:38');
INSERT INTO `bms_search_log` VALUES ('135', '41', '9787301250051', null, '2020-04-20 15:58:40');
INSERT INTO `bms_search_log` VALUES ('136', '41', '9787117219556', null, '2020-04-20 15:58:42');
INSERT INTO `bms_search_log` VALUES ('137', '41', '9787563344987', null, '2020-04-20 15:58:45');
INSERT INTO `bms_search_log` VALUES ('138', '41', '9787550008496', null, '2020-04-20 15:59:00');
INSERT INTO `bms_search_log` VALUES ('139', '41', '9787561340240', null, '2020-04-20 15:59:01');
INSERT INTO `bms_search_log` VALUES ('140', '41', '9787213066856', null, '2020-04-20 15:59:03');
INSERT INTO `bms_search_log` VALUES ('141', '41', '9787559626783', null, '2020-04-20 15:59:05');
INSERT INTO `bms_search_log` VALUES ('142', '41', '9787115319074', null, '2020-04-20 15:59:07');
INSERT INTO `bms_search_log` VALUES ('143', '41', '9787510440809', null, '2020-04-20 15:59:09');
INSERT INTO `bms_search_log` VALUES ('144', '41', '9787511344403', null, '2020-04-20 15:59:11');
INSERT INTO `bms_search_log` VALUES ('145', '41', '9787550008496', null, '2020-04-20 15:59:14');
INSERT INTO `bms_search_log` VALUES ('146', '41', '9787561340240', null, '2020-04-20 15:59:16');
INSERT INTO `bms_search_log` VALUES ('147', '41', '9787801585653', null, '2020-04-20 15:59:19');
INSERT INTO `bms_search_log` VALUES ('148', '40', '9787510440809', null, '2020-04-20 15:59:51');
INSERT INTO `bms_search_log` VALUES ('149', '40', '9787117219556', null, '2020-04-20 15:59:53');
INSERT INTO `bms_search_log` VALUES ('150', '40', '9787301081617', null, '2020-04-20 15:59:55');
INSERT INTO `bms_search_log` VALUES ('151', '40', '9787301295816', null, '2020-04-20 15:59:59');
INSERT INTO `bms_search_log` VALUES ('152', '40', '9787511114938', null, '2020-04-20 16:00:02');
INSERT INTO `bms_search_log` VALUES ('153', '39', '9787510440809', null, '2020-04-20 16:00:20');
INSERT INTO `bms_search_log` VALUES ('154', '39', '9787117219556', null, '2020-04-20 16:00:22');
INSERT INTO `bms_search_log` VALUES ('155', '39', '9787549413027', null, '2020-04-20 16:00:23');
INSERT INTO `bms_search_log` VALUES ('156', '39', '9787213066856', null, '2020-04-20 16:00:25');
INSERT INTO `bms_search_log` VALUES ('157', '39', '9787802254459', null, '2020-04-20 16:00:26');
INSERT INTO `bms_search_log` VALUES ('158', '39', '9787301295335', null, '2020-04-20 16:00:28');
INSERT INTO `bms_search_log` VALUES ('159', '39', '9787511344403', null, '2020-04-20 16:00:29');
INSERT INTO `bms_search_log` VALUES ('160', '39', '9787301297025', null, '2020-04-20 16:00:31');
INSERT INTO `bms_search_log` VALUES ('161', '39', '9787563344987', null, '2020-04-20 16:00:34');
INSERT INTO `bms_search_log` VALUES ('162', '39', '9787559626783', null, '2020-04-20 16:00:36');
INSERT INTO `bms_search_log` VALUES ('163', '39', '9787511344403', null, '2020-04-20 16:00:39');
INSERT INTO `bms_search_log` VALUES ('164', '39', '9787213066856', null, '2020-04-20 16:00:41');
INSERT INTO `bms_search_log` VALUES ('165', '39', '9787115319074', null, '2020-04-20 16:00:43');
INSERT INTO `bms_search_log` VALUES ('166', '39', '9787300225357', null, '2020-04-20 16:01:03');
INSERT INTO `bms_search_log` VALUES ('167', '38', '9787549413027', null, '2020-04-20 16:01:30');
INSERT INTO `bms_search_log` VALUES ('168', '38', '9787510440809', null, '2020-04-20 16:01:32');
INSERT INTO `bms_search_log` VALUES ('169', '38', '9787301292471', null, '2020-04-20 16:01:35');
INSERT INTO `bms_search_log` VALUES ('170', '38', '9787801237354', null, '2020-04-20 16:01:37');
INSERT INTO `bms_search_log` VALUES ('171', '38', '9787301294888', null, '2020-04-20 16:01:39');
INSERT INTO `bms_search_log` VALUES ('172', '38', '9787301292471', null, '2020-04-20 16:01:41');
INSERT INTO `bms_search_log` VALUES ('173', '38', '9787549413027', null, '2020-04-20 16:01:48');
INSERT INTO `bms_search_log` VALUES ('174', '38', '9787111595977', null, '2020-04-20 16:01:50');
INSERT INTO `bms_search_log` VALUES ('175', '38', '9787224100266', null, '2020-04-20 16:01:53');
INSERT INTO `bms_search_log` VALUES ('176', '38', '9787301250051', null, '2020-04-20 16:01:55');
INSERT INTO `bms_search_log` VALUES ('177', '37', '9787117219556', null, '2020-04-20 16:02:26');
INSERT INTO `bms_search_log` VALUES ('178', '37', '9787561549063', null, '2020-04-20 16:02:30');
INSERT INTO `bms_search_log` VALUES ('179', '37', '9787302525516', null, '2020-04-20 16:02:32');
INSERT INTO `bms_search_log` VALUES ('180', '37', '9787513638715', null, '2020-04-20 16:02:34');
INSERT INTO `bms_search_log` VALUES ('181', '37', '9787510434808', null, '2020-04-20 16:02:35');
INSERT INTO `bms_search_log` VALUES ('182', '36', '9787117219556', null, '2020-04-20 16:03:04');
INSERT INTO `bms_search_log` VALUES ('183', '36', '9787561549063', null, '2020-04-20 16:03:07');
INSERT INTO `bms_search_log` VALUES ('184', '35', '9787117219556', null, '2020-04-20 16:03:21');
INSERT INTO `bms_search_log` VALUES ('185', '34', '9787561549063', null, '2020-04-20 16:03:36');
INSERT INTO `bms_search_log` VALUES ('186', '34', '9787301297025', null, '2020-04-20 16:03:39');

-- ----------------------------
-- Table structure for omscompanyaddressidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `omscompanyaddressidgenerator`;
CREATE TABLE `omscompanyaddressidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of omscompanyaddressidgenerator
-- ----------------------------
INSERT INTO `omscompanyaddressidgenerator` VALUES ('19');

-- ----------------------------
-- Table structure for omsorderidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `omsorderidgenerator`;
CREATE TABLE `omsorderidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of omsorderidgenerator
-- ----------------------------
INSERT INTO `omsorderidgenerator` VALUES ('26');

-- ----------------------------
-- Table structure for omsorderitemidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `omsorderitemidgenerator`;
CREATE TABLE `omsorderitemidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of omsorderitemidgenerator
-- ----------------------------
INSERT INTO `omsorderitemidgenerator` VALUES ('103');

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
-- Records of oms_company_address
-- ----------------------------
INSERT INTO `oms_company_address` VALUES ('5', '35', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('6', '52', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('7', '51', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('8', '50', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('9', '49', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('10', '48', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('11', '47', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('12', '46', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('13', '44', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('14', '43', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('15', '41', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('16', '39', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('17', '38', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');
INSERT INTO `oms_company_address` VALUES ('18', '34', '淮安市金湖县戴楼镇', '0', '0', '张广洲', '18852432831', 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇');

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
-- Records of oms_order
-- ----------------------------
INSERT INTO `oms_order` VALUES ('9', '35', '25CD9131450645DE9FBAADD47E919D8C', '2020-04-20 15:43:17', 'userTest2', '6', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:43:18', null, null, '2020-04-20 15:43:18');
INSERT INTO `oms_order` VALUES ('10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '2020-04-20 15:44:31', 'userTest19', '8', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:44:31', null, null, '2020-04-20 15:44:31');
INSERT INTO `oms_order` VALUES ('11', '51', '9C84ED84FD7749659389033C566667ED', '2020-04-20 15:45:51', 'userTest18', '10', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:45:51', null, null, '2020-04-20 15:45:51');
INSERT INTO `oms_order` VALUES ('13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '2020-04-20 15:48:12', 'userTest17', '7', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:48:13', null, null, '2020-04-20 15:48:13');
INSERT INTO `oms_order` VALUES ('14', '50', '66B07CD405F8437ABCCD01FF687A2251', '2020-04-20 15:49:29', 'userTest17', '8', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:49:29', null, null, '2020-04-20 15:49:29');
INSERT INTO `oms_order` VALUES ('15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '2020-04-20 15:50:35', 'userTest16', '7', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:50:35', null, null, '2020-04-20 15:50:35');
INSERT INTO `oms_order` VALUES ('16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '2020-04-20 15:51:45', 'userTest15', '6', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:51:45', null, null, '2020-04-20 15:51:45');
INSERT INTO `oms_order` VALUES ('17', '47', '74E31941649641CF80D61996DFD454C6', '2020-04-20 15:52:54', 'userTest14', '9', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:52:54', null, null, '2020-04-20 15:52:54');
INSERT INTO `oms_order` VALUES ('19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '2020-04-20 15:53:59', 'userTest13', '8', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:53:59', null, null, '2020-04-20 15:53:59');
INSERT INTO `oms_order` VALUES ('20', '44', '4C562DB462964DC38E98CA7B41599B84', '2020-04-20 15:56:04', 'userTest11', '3', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:56:04', null, null, '2020-04-20 15:56:04');
INSERT INTO `oms_order` VALUES ('21', '43', '4E918716EEA24BC481A2D42C75EA45F3', '2020-04-20 15:57:43', 'userTest10', '2', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:57:43', null, null, '2020-04-20 15:57:43');
INSERT INTO `oms_order` VALUES ('22', '41', 'C960344714984C43A3DA0461C1A91D8B', '2020-04-20 15:59:33', 'userTest8', '3', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 15:59:33', null, null, '2020-04-20 15:59:33');
INSERT INTO `oms_order` VALUES ('23', '39', '880AEB1F28E84D288EE0DCE3F6E6B4E4', '2020-04-20 16:00:58', 'userTest6', '5', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 16:00:58', null, null, '2020-04-20 16:00:58');
INSERT INTO `oms_order` VALUES ('24', '38', 'BB7C44AF6B714CCE9AFC2B7D6F2DDA61', '2020-04-20 16:02:10', 'userTest5', '5', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 16:02:10', null, null, '2020-04-20 16:02:10');
INSERT INTO `oms_order` VALUES ('25', '34', '29FB189994DC4FB4A6328F258F3213C8', '2020-04-20 16:03:54', 'userTest1', '1', '1', null, null, '张广洲', '18852432831', null, 'China', '淮安市', '金湖县戴楼镇', '金湖县戴楼镇', null, '0', '0', '2020-04-20 16:03:54', null, null, '2020-04-20 16:03:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='订单中所包含的商品';

-- ----------------------------
-- Records of oms_order_item
-- ----------------------------
INSERT INTO `oms_order_item` VALUES ('15', '9', '35', '25CD9131450645DE9FBAADD47E919D8C', '15', '9787512419384', '人类简史', 'http://api.jisuapi.com/isbn/upload/44/2820344.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('16', '9', '35', '25CD9131450645DE9FBAADD47E919D8C', '16', '9787508672069', '未来简史', 'http://api.jisuapi.com/isbn/upload/32/287432.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('17', '9', '35', '25CD9131450645DE9FBAADD47E919D8C', '17', '9787544276597', '丈量世界', 'http://api.jisuapi.com/isbn/upload/67/1308667.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('18', '9', '35', '25CD9131450645DE9FBAADD47E919D8C', '18', '9787506382397', '兼爱者', 'http://api.jisuapi.com/isbn/upload/26/2209626.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('19', '9', '35', '25CD9131450645DE9FBAADD47E919D8C', '19', '9787108041531', '邓小平时代', 'http://api.jisuapi.com/isbn/upload/49/395749.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('20', '9', '35', '25CD9131450645DE9FBAADD47E919D8C', '20', '9787508651903', '论中国', 'http://api.jisuapi.com/isbn/upload/81/1815781.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('21', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '21', '9787200050349', '人类群星闪耀时', 'http://api.jisuapi.com/isbn/upload/274/273825.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('22', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '22', '9787561386392', '万万没想到', 'http://api.jisuapi.com/isbn/upload/79/2394379.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('23', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '23', '9787030107596', '从一到无穷大', 'http://api.jisuapi.com/isbn/upload/1677/1676389.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('24', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '24', '9787508662923', '给世界的答案', 'http://api.jisuapi.com/isbn/upload/26/507426.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('25', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '25', '9787508619408', '华尔街的伟大博弈', 'http://api.jisuapi.com/isbn/upload/1312/1311350.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('26', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '26', '9787550242234', '哲学家们都干了些什么', 'http://api.jisuapi.com/isbn/upload/43/2520443.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('27', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '27', '9787506366380', '苏菲的世界', 'http://api.jisuapi.com/isbn/upload/9/393309.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('28', '10', '52', '39F6FFB854FA4A5A835775EDF25D8FDF', '28', '9787561351239', '西方哲学史', 'http://api.jisuapi.com/isbn/upload/63/1873263.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('29', '11', '51', '9C84ED84FD7749659389033C566667ED', '29', '9787308086141', '维特根斯坦传', 'http://api.jisuapi.com/isbn/upload/91/1041591.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('30', '11', '51', '9C84ED84FD7749659389033C566667ED', '30', '9787538546422', '黑格尔', 'http://api.jisuapi.com/isbn/upload/1883/1882140.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('31', '11', '51', '9C84ED84FD7749659389033C566667ED', '35', '9787807659938', '中国人的精神', 'http://api.jisuapi.com/isbn/upload/600/599179.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('32', '11', '51', '9C84ED84FD7749659389033C566667ED', '36', '9787563957040', '查拉图斯特拉如是说', 'http://api.jisuapi.com/isbn/upload/3619/3618486.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('33', '11', '51', '9C84ED84FD7749659389033C566667ED', '37', '9787561383254', '月亮与六便士', 'http://api.jisuapi.com/isbn/upload/55/2972955.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('34', '11', '51', '9C84ED84FD7749659389033C566667ED', '38', '9787506868754', '刀锋', 'http://api.jisuapi.com/isbn/upload/3244/3243804.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('35', '11', '51', '9C84ED84FD7749659389033C566667ED', '39', '9787229047214', '冰与火之歌', 'http://api.jisuapi.com/isbn/upload/63/2437963.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('36', '11', '51', '9C84ED84FD7749659389033C566667ED', '40', '9787514014877', '动物庄园', 'http://api.jisuapi.com/isbn/upload/3183/3182967.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('37', '11', '51', '9C84ED84FD7749659389033C566667ED', '41', '9787802566101', '黄金时代', 'http://api.jisuapi.com/isbn/upload/48/393448.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('38', '11', '51', '9C84ED84FD7749659389033C566667ED', '42', '9787205084431', '变形记', 'http://api.jisuapi.com/isbn/upload/46/2885346.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('39', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '43', '9787121301094', '不可思议的毛毛虫', 'http://api.jisuapi.com/isbn/upload/42/2592742.png', '1', null);
INSERT INTO `oms_order_item` VALUES ('40', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '44', '9787532748983', '了不起的盖茨比', 'http://api.jisuapi.com/isbn/upload/73/2208473.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('41', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '45', '9787532778256', '悉达多', 'http://api.jisuapi.com/isbn/upload/3217/3216235.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('42', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '46', '9787020090006', '围城', 'http://api.jisuapi.com/isbn/upload/15/1302815.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('43', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '47', '9787020090501', '洗澡', 'http://api.jisuapi.com/isbn/upload/90/393390.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('44', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '48', '9787516410325', '解密', 'http://api.jisuapi.com/isbn/upload/96/1540796.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('45', '13', '50', '14D8D543CCA74244BF0FDB9DE9CEE6BD', '49', '9787510806032', '一句顶一万句', 'http://api.jisuapi.com/isbn/upload/2088/2087875.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('46', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '50', '9787535449481', '我不是潘金莲', 'http://api.jisuapi.com/isbn/upload/2/918302.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('47', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '52', '9787530217054', '牧羊少年奇幻之旅', 'http://api.jisuapi.com/isbn/upload/3088/3087535.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('48', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '54', '9787541134562', '流浪地球', 'http://api.jisuapi.com/isbn/upload/64/1053964.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('49', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '56', '9787111517436', '在股市遇见凯恩斯', 'http://api.jisuapi.com/isbn/upload/66/2581666.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('50', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '60', '9787542662293', '金融的逻辑', 'http://api.jisuapi.com/isbn/upload/3178/3177802.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('51', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '66', '9787568224666', '人生有何意义', 'http://api.jisuapi.com/isbn/upload/96/516896.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('52', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '67', '9787511123916', '给出一个什么问题', 'http://api.jisuapi.com/isbn/upload/47/1811547.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('53', '14', '50', '66B07CD405F8437ABCCD01FF687A2251', '68', '9787549546817', '美国十讲', 'http://api.jisuapi.com/isbn/upload/2816/2815548.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('54', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '51', '9787020093144', '沧浪之水', 'http://api.jisuapi.com/isbn/upload/82/2165182.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('55', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '53', '9787229030933', '三体', 'http://api.jisuapi.com/isbn/upload/97/393597.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('56', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '55', '9787567711716', '小王子', 'http://api.jisuapi.com/isbn/upload/6/583106.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('57', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '57', '9787508614212', '滚雪球', 'http://api.jisuapi.com/isbn/upload/1874/1873136.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('58', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '58', '9787208105485', '穷查理宝典', 'http://api.jisuapi.com/isbn/upload/396/395802.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('59', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '59', '9787506830645', '保守主义', 'http://api.jisuapi.com/isbn/upload/41/2271841.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('60', '15', '49', '2B9D7E716D954C6685EA1177F020BC5D', '61', '9787530656280', '中国历史的博弈故事', 'http://api.jisuapi.com/isbn/upload/2185/2184162.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('61', '16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '62', '9787553809182', '曾国藩的正面与侧面', 'http://api.jisuapi.com/isbn/upload/3195/3194504.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('62', '16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '63', '9787108051721', '干校六记', 'http://api.jisuapi.com/isbn/upload/32/2342632.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('63', '16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '64', '9787539632049', '容忍比自由更重要', 'http://api.jisuapi.com/isbn/upload/75/1232375.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('64', '16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '65', '9787500111313', '用幽默英语介绍自己', 'http://api.jisuapi.com/isbn/upload/1361/1360469.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('65', '16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '69', '9787508699240', '神在人间的时光', 'http://api.jisuapi.com/isbn/upload/3332/3331770.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('66', '16', '48', '087BF4EF2D12484CA4CFC059EBB7EB5B', '70', '9787549256525', '佛祖都说了些什么', 'http://api.jisuapi.com/isbn/upload/3234/3233469.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('67', '17', '47', '74E31941649641CF80D61996DFD454C6', '71', '9787213046278', '明朝那些事儿', 'http://api.jisuapi.com/isbn/upload/45/1693745.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('68', '17', '47', '74E31941649641CF80D61996DFD454C6', '72', '9787206030048', '自私的基因', 'http://api.jisuapi.com/isbn/upload/3259/3258191.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('69', '17', '47', '74E31941649641CF80D61996DFD454C6', '73', '9787020100255', '追求自由的波伏瓦', 'http://api.jisuapi.com/isbn/upload/11/1253711.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('70', '17', '47', '74E31941649641CF80D61996DFD454C6', '74', '9787508643335', '反脆弱', 'http://api.jisuapi.com/isbn/upload/76/2778376.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('71', '17', '47', '74E31941649641CF80D61996DFD454C6', '75', '9787115373458', '最受欢迎的哈佛大学幸福课', 'http://api.jisuapi.com/isbn/upload/63/1176763.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('72', '17', '47', '74E31941649641CF80D61996DFD454C6', '76', '9787111614418', '高绩效教练', 'http://api.jisuapi.com/isbn/upload/3411/3410286.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('73', '17', '47', '74E31941649641CF80D61996DFD454C6', '77', '9787121298707', '失控', 'http://api.jisuapi.com/isbn/upload/2374/2373777.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('74', '17', '47', '74E31941649641CF80D61996DFD454C6', '78', '9787122309273', '智能时代', 'http://api.jisuapi.com/isbn/upload/3610/3609496.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('75', '17', '47', '74E31941649641CF80D61996DFD454C6', '79', '9787121309564', '80/20生活法则', 'http://api.jisuapi.com/isbn/upload/92/2932592.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('76', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '80', '9787508687322', '养育女孩', 'http://api.jisuapi.com/isbn/upload/3142/3141356.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('77', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '81', '9787555710615', '非暴力沟通', 'http://api.jisuapi.com/isbn/upload/3388/3387088.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('78', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '82', '9787521704365', '养育男孩', 'http://api.jisuapi.com/isbn/upload/3460/3459975.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('79', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '83', '9787513923422', '怎么说，孩子才会听；如何听，孩子才肯说', 'http://api.jisuapi.com/isbn/upload/3403/3402152.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('80', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '84', '9787807667582', '哈佛大学·幸福课', 'http://api.jisuapi.com/isbn/upload/33/2913933.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('81', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '85', '9787564532062', '心理学与生活', 'http://api.jisuapi.com/isbn/upload/87/536187.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('82', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '86', '9787801555373', '一个广告人的自白', 'http://api.jisuapi.com/isbn/upload/21/20097.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('83', '19', '46', '73F586F92B294C10BE7406A9FF72BCEF', '87', '9787508656663', '小说课', 'http://api.jisuapi.com/isbn/upload/31/2801031.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('84', '20', '44', '4C562DB462964DC38E98CA7B41599B84', '88', '9787508642796', '让创意更有黏性', 'http://api.jisuapi.com/isbn/upload/22/2603622.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('85', '20', '44', '4C562DB462964DC38E98CA7B41599B84', '89', '9787508641485', '上瘾', 'http://api.jisuapi.com/isbn/upload/76/1251576.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('86', '20', '44', '4C562DB462964DC38E98CA7B41599B84', '90', '9787560970189', '启示录', 'http://api.jisuapi.com/isbn/upload/91/394791.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('87', '21', '43', '4E918716EEA24BC481A2D42C75EA45F3', '107', '9787206043284', '恐龙骇客', 'http://api.jisuapi.com/isbn/upload/80/79155.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('88', '21', '43', '4E918716EEA24BC481A2D42C75EA45F3', '102', '9787510040498', '清日战争', 'http://api.jisuapi.com/isbn/upload/95/2402895.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('89', '22', '41', 'C960344714984C43A3DA0461C1A91D8B', '91', '9787550008496', '纸牌屋', 'http://api.jisuapi.com/isbn/upload/16/393516.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('90', '22', '41', 'C960344714984C43A3DA0461C1A91D8B', '92', '9787561340240', '奇墓物语', 'http://api.jisuapi.com/isbn/upload/5/1267505.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('91', '22', '41', 'C960344714984C43A3DA0461C1A91D8B', '93', '9787801585653', '王冠', 'http://api.jisuapi.com/isbn/upload/281/280251.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('92', '23', '39', '880AEB1F28E84D288EE0DCE3F6E6B4E4', '99', '9787563344987', '童年的消逝', 'http://api.jisuapi.com/isbn/upload/955/954035.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('93', '23', '39', '880AEB1F28E84D288EE0DCE3F6E6B4E4', '100', '9787559626783', '超级聊天术', 'http://api.jisuapi.com/isbn/upload/3378/3377303.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('94', '23', '39', '880AEB1F28E84D288EE0DCE3F6E6B4E4', '103', '9787511344403', '孤独的人都要吃饱', 'http://api.jisuapi.com/isbn/upload/604/603946.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('95', '23', '39', '880AEB1F28E84D288EE0DCE3F6E6B4E4', '106', '9787213066856', '星际穿越', 'http://api.jisuapi.com/isbn/upload/0/1642200.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('96', '23', '39', '880AEB1F28E84D288EE0DCE3F6E6B4E4', '105', '9787115319074', '隐藏的现实', 'http://api.jisuapi.com/isbn/upload/47/1154847.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('97', '24', '38', 'BB7C44AF6B714CCE9AFC2B7D6F2DDA61', '120', '9787301292471', '中国土地问题调查', 'http://api.jisuapi.com/isbn/upload/3168/3167326.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('98', '24', '38', 'BB7C44AF6B714CCE9AFC2B7D6F2DDA61', '94', '9787549413027', '杰克逊·波洛克', 'http://api.jisuapi.com/isbn/upload/78/1647878.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('99', '24', '38', 'BB7C44AF6B714CCE9AFC2B7D6F2DDA61', '95', '9787111595977', '战略节奏', 'http://api.jisuapi.com/isbn/upload/3198/3197887.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('100', '24', '38', 'BB7C44AF6B714CCE9AFC2B7D6F2DDA61', '96', '9787224100266', '文明与野蛮', 'http://api.jisuapi.com/isbn/upload/89/2743289.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('101', '24', '38', 'BB7C44AF6B714CCE9AFC2B7D6F2DDA61', '97', '9787301250051', '法治及其本土资源', 'http://api.jisuapi.com/isbn/upload/71/1186871.jpg', '1', null);
INSERT INTO `oms_order_item` VALUES ('102', '25', '34', '29FB189994DC4FB4A6328F258F3213C8', '109', '9787301297025', '解读中国经济', 'http://api.jisuapi.com/isbn/upload/3306/3305274.jpg', '1', null);

-- ----------------------------
-- Table structure for umsadminidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminidgenerator`;
CREATE TABLE `umsadminidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsadminidgenerator
-- ----------------------------
INSERT INTO `umsadminidgenerator` VALUES ('2');

-- ----------------------------
-- Table structure for umsadminloginlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminloginlogidgenerator`;
CREATE TABLE `umsadminloginlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsadminloginlogidgenerator
-- ----------------------------
INSERT INTO `umsadminloginlogidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsadminpermissionrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminpermissionrelationidgenerator`;
CREATE TABLE `umsadminpermissionrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsadminpermissionrelationidgenerator
-- ----------------------------
INSERT INTO `umsadminpermissionrelationidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsadminrolerelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsadminrolerelationidgenerator`;
CREATE TABLE `umsadminrolerelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsadminrolerelationidgenerator
-- ----------------------------
INSERT INTO `umsadminrolerelationidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmemberbookcategoryrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberbookcategoryrelationidgenerator`;
CREATE TABLE `umsmemberbookcategoryrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberbookcategoryrelationidgenerator
-- ----------------------------
INSERT INTO `umsmemberbookcategoryrelationidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmemberidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberidgenerator`;
CREATE TABLE `umsmemberidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberidgenerator
-- ----------------------------
INSERT INTO `umsmemberidgenerator` VALUES ('54');

-- ----------------------------
-- Table structure for umsmemberlevelidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberlevelidgenerator`;
CREATE TABLE `umsmemberlevelidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberlevelidgenerator
-- ----------------------------
INSERT INTO `umsmemberlevelidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmemberlikeidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberlikeidgenerator`;
CREATE TABLE `umsmemberlikeidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberlikeidgenerator
-- ----------------------------
INSERT INTO `umsmemberlikeidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmemberloginlogidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberloginlogidgenerator`;
CREATE TABLE `umsmemberloginlogidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberloginlogidgenerator
-- ----------------------------
INSERT INTO `umsmemberloginlogidgenerator` VALUES ('202');

-- ----------------------------
-- Table structure for umsmemberreceiveaddressidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberreceiveaddressidgenerator`;
CREATE TABLE `umsmemberreceiveaddressidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberreceiveaddressidgenerator
-- ----------------------------
INSERT INTO `umsmemberreceiveaddressidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmemberrulesettingsidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberrulesettingsidgenerator`;
CREATE TABLE `umsmemberrulesettingsidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberrulesettingsidgenerator
-- ----------------------------
INSERT INTO `umsmemberrulesettingsidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmemberstatisticsinfoidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmemberstatisticsinfoidgenerator`;
CREATE TABLE `umsmemberstatisticsinfoidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmemberstatisticsinfoidgenerator
-- ----------------------------
INSERT INTO `umsmemberstatisticsinfoidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmembertagidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmembertagidgenerator`;
CREATE TABLE `umsmembertagidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmembertagidgenerator
-- ----------------------------
INSERT INTO `umsmembertagidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsmembertagrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsmembertagrelationidgenerator`;
CREATE TABLE `umsmembertagrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsmembertagrelationidgenerator
-- ----------------------------
INSERT INTO `umsmembertagrelationidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umspermissionidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umspermissionidgenerator`;
CREATE TABLE `umspermissionidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umspermissionidgenerator
-- ----------------------------
INSERT INTO `umspermissionidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsroleidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsroleidgenerator`;
CREATE TABLE `umsroleidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsroleidgenerator
-- ----------------------------
INSERT INTO `umsroleidgenerator` VALUES ('1');

-- ----------------------------
-- Table structure for umsrolepermissionrelationidgenerator
-- ----------------------------
DROP TABLE IF EXISTS `umsrolepermissionrelationidgenerator`;
CREATE TABLE `umsrolepermissionrelationidgenerator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of umsrolepermissionrelationidgenerator
-- ----------------------------
INSERT INTO `umsrolepermissionrelationidgenerator` VALUES ('1');

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
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES ('1', 'adminTest1', 'd2ae28a91bccd29985b2c9851d89a756b27d8110', null, null, null, null, '2020-02-28 19:10:06', null, '1');

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
-- Records of ums_admin_login_log
-- ----------------------------

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
-- Records of ums_admin_permission_relation
-- ----------------------------

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
-- Records of ums_admin_role_relation
-- ----------------------------

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
-- Records of ums_member
-- ----------------------------
INSERT INTO `ums_member` VALUES ('34', 'userTest1', '99999', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:02', null, '4');
INSERT INTO `ums_member` VALUES ('35', 'userTest2', '99994', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('36', 'userTest3', '100000', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('37', 'userTest4', '100000', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('38', 'userTest5', '99995', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('39', 'userTest6', '99995', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('40', 'userTest7', '100000', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('41', 'userTest8', '99997', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('42', 'userTest9', '100000', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('43', 'userTest10', '99998', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('44', 'userTest11', '99997', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('45', 'userTest12', '100000', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('46', 'userTest13', '99992', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('47', 'userTest14', '99991', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('48', 'userTest15', '99994', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('49', 'userTest16', '99993', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('50', 'userTest17', '99985', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('51', 'userTest18', '99990', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('52', 'userTest19', '99992', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');
INSERT INTO `ums_member` VALUES ('53', 'userTest20', '100000', null, '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', null, null, null, null, null, null, '1', null, '2020-04-20 15:41:08', null, '4');

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
-- Records of ums_member_book_category_relation
-- ----------------------------

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
-- Records of ums_member_level
-- ----------------------------
INSERT INTO `ums_member_level` VALUES ('1', '黄金会员', '1000', '0', '199.00', '5');
INSERT INTO `ums_member_level` VALUES ('2', '白金会员', '5000', '0', '99.00', '10');
INSERT INTO `ums_member_level` VALUES ('3', '钻石会员', '15000', '0', '69.00', '15');
INSERT INTO `ums_member_level` VALUES ('4', '普通会员', '1', '1', '199.00', '20');

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
-- Records of ums_member_like
-- ----------------------------

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
-- Records of ums_member_login_log
-- ----------------------------
INSERT INTO `ums_member_login_log` VALUES ('150', '34', '2020-04-20 14:30:25', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('151', '35', '2020-04-20 14:33:52', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('152', '36', '2020-04-20 14:36:43', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('153', '36', '2020-04-20 14:39:34', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('154', '34', '2020-04-20 14:44:23', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('155', '34', '2020-04-20 14:45:47', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('156', '34', '2020-04-20 14:46:24', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('157', '35', '2020-04-20 14:46:42', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('158', '35', '2020-04-20 14:49:14', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('159', '35', '2020-04-20 14:49:22', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('160', '35', '2020-04-20 14:49:41', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('161', '35', '2020-04-20 14:49:56', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('162', '37', '2020-04-20 14:51:55', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('163', '37', '2020-04-20 15:01:49', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('164', '38', '2020-04-20 15:04:12', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('165', '39', '2020-04-20 15:06:23', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('166', '40', '2020-04-20 15:08:56', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('167', '41', '2020-04-20 15:11:39', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('168', '42', '2020-04-20 15:14:22', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('169', '43', '2020-04-20 15:18:11', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('170', '44', '2020-04-20 15:20:11', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('171', '45', '2020-04-20 15:22:20', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('172', '46', '2020-04-20 15:24:35', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('173', '47', '2020-04-20 15:26:49', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('174', '48', '2020-04-20 15:29:13', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('175', '49', '2020-04-20 15:31:41', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('176', '50', '2020-04-20 15:33:54', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('177', '51', '2020-04-20 15:36:19', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('178', '53', '2020-04-20 15:39:42', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('179', '35', '2020-04-20 15:41:43', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('180', '52', '2020-04-20 15:43:44', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('181', '51', '2020-04-20 15:44:56', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('182', '50', '2020-04-20 15:46:17', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('183', '50', '2020-04-20 15:48:33', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('184', '49', '2020-04-20 15:49:55', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('185', '48', '2020-04-20 15:51:14', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('186', '47', '2020-04-20 15:52:09', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('187', '46', '2020-04-20 15:53:15', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('188', '45', '2020-04-20 15:54:19', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('189', '44', '2020-04-20 15:55:17', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('190', '44', '2020-04-20 15:56:42', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('191', '43', '2020-04-20 15:57:16', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('192', '42', '2020-04-20 15:58:05', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('193', '41', '2020-04-20 15:58:31', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('194', '41', '2020-04-20 15:58:59', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('195', '40', '2020-04-20 15:59:50', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('196', '39', '2020-04-20 16:00:19', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('197', '38', '2020-04-20 16:01:29', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('198', '37', '2020-04-20 16:02:24', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('199', '36', '2020-04-20 16:03:03', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('200', '35', '2020-04-20 16:03:19', '127.0.0.1', 'null', '0', 'IANA');
INSERT INTO `ums_member_login_log` VALUES ('201', '34', '2020-04-20 16:03:35', '127.0.0.1', 'null', '0', 'IANA');

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
-- Records of ums_member_receive_address
-- ----------------------------

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
-- Records of ums_member_rule_settings
-- ----------------------------

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
-- Records of ums_member_statistics_info
-- ----------------------------

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
-- Records of ums_member_tag
-- ----------------------------

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
-- Records of ums_member_tag_relation
-- ----------------------------

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
-- Records of ums_permission
-- ----------------------------

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
-- Records of ums_role
-- ----------------------------

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

-- ----------------------------
-- Records of ums_role_permission_relation
-- ----------------------------
