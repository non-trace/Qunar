/*
MySQL Data Transfer
Source Host: localhost
Source Database: qunar
Target Host: localhost
Target Database: qunar
Date: 2014/4/23 23:49:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for attractions
-- ----------------------------
CREATE TABLE `attractions` (
  `attractions_id` int(11) NOT NULL COMMENT '主键ID',
  `attractions_name` varchar(50) DEFAULT NULL COMMENT '景点名称',
  `attractions_describe` text COMMENT '景点描述',
  `attractions_time` varchar(100) DEFAULT NULL COMMENT '开放时间',
  `attractions_phone` varchar(15) DEFAULT NULL COMMENT '电话',
  `attractions_address` varchar(200) DEFAULT NULL,
  `attractions_ticket_info` varchar(200) DEFAULT NULL COMMENT '门票信息',
  PRIMARY KEY (`attractions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for test
-- ----------------------------
CREATE TABLE `test` (
  `test_id` varchar(255) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `attractions` VALUES ('1', '青关山', '', '7:00-17:30', '0335-7888111', '唐山市迁西县上营乡青山口村', null);
INSERT INTO `attractions` VALUES ('2', '万佛园', null, '8:30-16:00', '4000-899-888', '唐山市遵化市清东陵西元宝山', null);
INSERT INTO `attractions` VALUES ('3', '白羊峪', null, null, null, '迁安市北25公里处', null);
INSERT INTO `attractions` VALUES ('4', '大城山', null, null, null, null, null);
INSERT INTO `attractions` VALUES ('5', '凤凰山', null, null, null, null, null);
INSERT INTO `attractions` VALUES ('6', '唐山抗震纪念碑', null, '9:00-12:00（11:00停止入馆），13:30（夏季14:30）-17:30      （16:30停止入馆），星期一闭馆。', '0315-5265530', '唐山市路南区新华东道102号', '个人参观须持有效证件到服务处领取门票，凭票入馆，票券当日有效。团体观众参观须提前预约，持证统一到服务处领票，凭票入馆参观。');
INSERT INTO `attractions` VALUES ('7', '南湖公园', null, '全天开放', '0315-2834514', '唐山市中心南部2公里处', '入园免费，园内娱乐设施收费');
INSERT INTO `attractions` VALUES ('8', '清东陵', null, '　　8:00-17:00。', null, '河北省遵化市市西北', null);
INSERT INTO `test` VALUES ('aa', 'bb');
INSERT INTO `test` VALUES ('cc', 'dd');
