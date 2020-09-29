/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost:3306
 Source Schema         : souhu

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 29/09/2020 20:26:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index
-- ----------------------------
DROP TABLE IF EXISTS `index`;
CREATE TABLE `index`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of index
-- ----------------------------
INSERT INTO `index` VALUES (1, 'https://photovms.tv.sohu.com/bc11075d02404ee691e4df5bc1034256.jpg', '伊能静儿子哈利晒女装照', '粉色桃花妆潮味十足', NULL, 'news', NULL);
INSERT INTO `index` VALUES (2, 'https://photovms.tv.sohu.com/f56765c65e9348ce9896b0ba422e65e3.gif', '神话组合JunJin婚礼曝光', '新郎对着新娘跳《WA》', NULL, 'news', NULL);
INSERT INTO `index` VALUES (3, 'https://photovms.tv.sohu.com/b7939fa8a6264f8a810fe4517f19b099.jpg', '女子拍到不明物空中绕圈', '网友：新型UFO？', NULL, 'news', NULL);
INSERT INTO `index` VALUES (4, 'https://photovms.tv.sohu.com/07c3cdc974f14235bd2f290713fa12d8.gif', '男子加油时摩托突然起火', '下一秒突发大爆炸', NULL, 'news', NULL);
INSERT INTO `index` VALUES (5, 'https://photovms.tv.sohu.com/fe7c4979932244b588bb8395daa8d6bb.jpg', '女作家自曝遭导演性骚扰', '\\\"舌吻\\\"耳朵 强行搂抱', NULL, 'news', NULL);
INSERT INTO `index` VALUES (6, 'https://photovms.tv.sohu.com/31ff81a6222940ca93c64c3eeeddec81.jpg', '赵薇新欢身份疑似曝光', '系富二代摄影师', NULL, 'news', NULL);
INSERT INTO `index` VALUES (7, 'https://photovms.tv.sohu.com/81d98109851340c7931e2a7d1c970d64.jpg', '男子酒后持刀伤人', '热心店主持棍两棒子制服', NULL, 'news', NULL);
INSERT INTO `index` VALUES (8, 'https://photovms.tv.sohu.com/06f244e57b8249558d8233311087c864.jpg', '蓝军出击', '会员24点跟播卫视', '硬汉于震演绎热血军旅剧', 'tv', NULL);
INSERT INTO `index` VALUES (9, 'https://photovms.tv.sohu.com/a7ce11a0864c4eaa81909b0d3bfddc58.0.jpg', '月是故乡明', '更新至26集', '王茜华回乡创业脱贫攻坚', 'tv', NULL);
INSERT INTO `index` VALUES (10, 'https://photovms.tv.sohu.com/13e7aa7bcf164293b1441452cda14dcc.gif', '雪地娘子军', '40集全', '穿貂扛枪不爱红装爱武装', 'tv', NULL);
INSERT INTO `index` VALUES (11, 'https://photovms.tv.sohu.com/d92d9499227c45e0b4706d34b65cbfa3.jpg', '楚乔传', '67集全', '赵丽颖困境中逆袭', 'tv', NULL);
INSERT INTO `index` VALUES (12, 'https://photovms.tv.sohu.com/e34ae89ae53f47b79bb0a1f4fab62055.jpg', '随后闯荡校园被警方击毙', '野猪闯进花店撞碎三道门', NULL, 'news', NULL);
INSERT INTO `index` VALUES (13, 'https://photovms.tv.sohu.com/20190417/299356607155546680240429958.jpg', '法医秦明第一季', '会员尊享全集', '正宗普法下饭剧了解一下', 'tv', '自制');
INSERT INTO `index` VALUES (14, 'https://photovms.tv.sohu.com/5679c39cc63f4ef4ad06911a50c4ce34.jpg', '蓝军出击·挥洒热血', '于震梅婷演绎现代军旅丨会员24点跟播卫视', NULL, 'lunbo', NULL);
INSERT INTO `index` VALUES (15, 'https://photovms.tv.sohu.com/fa43b88cfbf74cb098276d678a571bd9.jpg', '月是故乡明·脱贫攻坚', '王茜华带领全村奔小康 丨每晚零点同步央视播出', NULL, 'lunbo', NULL);
INSERT INTO `index` VALUES (16, 'https://photovms.tv.sohu.com/1c5e14ee7b0c43f8bed3cf971357909c.jpg', '降龙伏虎小济公第一季·欢乐卖萌', '已中毒！最强罗汉CP爆笑捉妖打怪丨会员尊享全集', NULL, 'lunbo', NULL);
INSERT INTO `index` VALUES (17, 'https://photovms.tv.sohu.com/12d37395c0e2476bb77cec9cd5194b1f.jpg', '新边城浪子·虐恋情深', '朱一龙张馨予情定大漠丨会员尊享全集', NULL, 'lunbo', NULL);
INSERT INTO `index` VALUES (18, 'https://photovms.tv.sohu.com/7890fa4e5270487485708cfa1621ab45.jpg', '生活大爆炸第十二季·完结篇', '充满欢笑与泪水 我们将和青春告别丨24集全', NULL, 'lunbo', NULL);
INSERT INTO `index` VALUES (19, 'https://photovms.tv.sohu.com/01fe874185634a86b87dba9b16fd5d4b.jpg', '小公交车太友·汽车之城冒险', '新手小公交来啦！交通常识轻松掌握', NULL, 'lunbo', NULL);
INSERT INTO `index` VALUES (20, 'https://photovms.tv.sohu.com/8c53ede6578844a486c0aaf293569a5b.jpg', '我成了他的班主任', '会员尊享全集', '麻辣班主任带差班逆袭', 'tv', '自制');
INSERT INTO `index` VALUES (21, 'https://photovms.tv.sohu.com/e1eabf7b165a42eeabaeb247d9689d7b.gif', '继承者计划', '会员尊享全集', '王彦霖变卧底演双面人生', 'tv', '自制');
INSERT INTO `index` VALUES (22, 'https://photovms.tv.sohu.com/a283467976314c22aa2abba41f7b209f.jpg', '他来了，请闭眼', '会员尊享全集', '超燃！两大男神正邪斗法', 'tv', '自制');
INSERT INTO `index` VALUES (23, 'https://photovms.tv.sohu.com/31524fa4ed094005bebf9355ac4bd979.jpg', '大好时光', '38集全', '胡歌王晓晨上演欢喜冤家', 'tv', NULL);
INSERT INTO `index` VALUES (24, 'https://photovms.tv.sohu.com/37210e90faae4c1fb9131ec426a1e927.jpg', '我们是一家人', '33集全', '杨幂深陷情感漩涡', 'tv', NULL);
INSERT INTO `index` VALUES (25, 'https://photovms.tv.sohu.com/33de8f6663bc4a749f18a14a783a39b7.gif', '二哥', '24集全', '笑料百出的生活故事', 'tv', NULL);
INSERT INTO `index` VALUES (26, 'https://photovms.tv.sohu.com/066449324ce64b85846a5ce402593bf8.gif', '急诊科医生', '43集全', '张嘉益实力诠释妙手仁心', 'tv', NULL);
INSERT INTO `index` VALUES (27, 'https://photocdn.tv.sohu.com/img/20191224/vrsa_hor_1577156936177_9355203_a8X55_pic29.jpg', '龙之战2017', '', '民族英雄舍生取义！', 'movie', '会员');
INSERT INTO `index` VALUES (28, 'https://photovms.tv.sohu.com/bf4092ad2376442091c8907e115191f8.jpg', '橘色奇迹', NULL, '如果有奇迹那一定的橘色的', 'movie', '会员');
INSERT INTO `index` VALUES (29, 'https://photovms.tv.sohu.com/89bad2c815064dedb956b75b380a44fe.jpg', '救火英雄', NULL, '致敬逆行战士', 'movie', '会员');
INSERT INTO `index` VALUES (30, 'https://photovms.tv.sohu.com/9f5576453bad4f7d9b5406f69d599b1e.jpg', '擅离职守的猫咪', NULL, '“酷盖”闪亮登场！', 'movie', '会员');
INSERT INTO `index` VALUES (31, 'https://photovms.tv.sohu.com/d79f26cfea5048da89a5eee02509c3dc.jpg', '白幽灵传奇之绝命逃亡', NULL, '绝色“花木兰”命悬一线', 'movie', '会员');
INSERT INTO `index` VALUES (32, 'https://photovms.tv.sohu.com/5204398005ce4aa99147125ff78cca18.jpg', '东邪西毒', NULL, '重温哥哥绝代风华', 'movie', '会员');
INSERT INTO `index` VALUES (33, 'https://photovms.tv.sohu.com/b7757289c4364ff4bce8bd1a70f1f938.jpg', '极限挑战', NULL, '男人帮爆笑挑战连体骑行 张艺兴意外受工伤', 'show', NULL);
INSERT INTO `index` VALUES (34, 'https://photocdn.tv.sohu.com/img/20200929/pic_org_27a6cdc5-763c-49c7-bbf8-c8937077c0d8.gif', '非你莫属', NULL, '甜美女生上演霸气走秀', 'show', NULL);
INSERT INTO `index` VALUES (35, 'https://photocdn.tv.sohu.com/img/20200929/pic_org_0c7922e2-abbc-4f4c-a9bd-ff6965e6d70b.jpg', '艾伦秀', NULL, '华盛顿分享疫情期育儿经验', 'show', NULL);
INSERT INTO `index` VALUES (36, 'https://photocdn.tv.sohu.com/img/20200929/pic_org_dac7cac5-c58d-4ccc-a3f0-53f18a335030.jpg', '养生堂', NULL, '警惕易被忽视的特殊血瘀', 'show', NULL);
INSERT INTO `index` VALUES (37, 'https://photocdn.tv.sohu.com/img/20200928/pic_org_9a6aca5a-3bd3-4a91-abb8-10be76a558a1.jpg', '综艺饭', NULL, '王俊凯暖心回归《中餐厅》 ', 'show', '独播');
INSERT INTO `index` VALUES (38, 'https://photocdn.tv.sohu.com/img/20200928/pic_org_542bb0c4-8648-4584-bda8-3bfb0814a832.jpg', '金牌调解', NULL, '老实丈夫私吞房产家暴妻子', 'show', NULL);
INSERT INTO `index` VALUES (39, 'https://photovms.tv.sohu.com/2dfaa5208c954966af5b5e37584771b3.横图.jpg', '禽兽超人之无奸不摧', '会员尊享全集', '禽兽超人专治禽兽', 'anime', '独播');
INSERT INTO `index` VALUES (40, 'https://photovms.tv.sohu.com/207724d433f24f30a31b23ee941d7637.jpg', '迪迦奥特曼', '52集全', '高清版本诚意上线', 'anime', NULL);
INSERT INTO `index` VALUES (41, 'https://photovms.tv.sohu.com/0ee2fca96a5d431db7eb6da240fae3f4.gif', '憨豆先生动画版第2季', '52集全', '憨豆是个麻烦精！', 'anime', NULL);
INSERT INTO `index` VALUES (42, 'https://photovms.tv.sohu.com/02bf2791a0f84dcb83fe270e8be67b64.jpg', '妖神记第2季', '40集全', '修仙大佬不好惹', 'anime', NULL);
INSERT INTO `index` VALUES (43, 'https://photovms.tv.sohu.com/358e9343f1cf49c5bf4bd3149c3785ab.jpg', '请吃红小豆吧！', '12集全', '佛系沙雕悲喜豆生', 'anime', NULL);
INSERT INTO `index` VALUES (44, 'https://photovms.tv.sohu.com/ef4604861ea249e5a3d96defd75faf80.jpg', '罗小黑战记', '更新至28集', '妖怪们的犯二日常', 'anime', NULL);
INSERT INTO `index` VALUES (45, 'https://photovms.tv.sohu.com/a90afb1c3cb84886a8d8a0c75de10e9a.7.jpg', '小谢尔顿第二季', '会员优先看全季', '毒舌小天才爆笑回归', 'ustv', NULL);
INSERT INTO `index` VALUES (46, 'https://photovms.tv.sohu.com/a889d40de2364ceebf6c3248e0b1cf83.gif', '相对宇宙第一季', '10集全', '平行世界的自我相互救赎', 'ustv', NULL);
INSERT INTO `index` VALUES (47, 'https://photovms.tv.sohu.com/e7a1fe7846ed41afa4645f5d71acaeb1.jpg', '生活大爆炸第十二季', '会员优先看全季', '确认过眼神 是搞科研的人', 'ustv', '独播');
INSERT INTO `index` VALUES (48, 'https://photovms.tv.sohu.com/40b977f484784180bd5667fc2efbd15b.jpg', '绝命毒师第一季', '会员尊享全集', '白老师黑化走上不归路', 'ustv', NULL);

SET FOREIGN_KEY_CHECKS = 1;
