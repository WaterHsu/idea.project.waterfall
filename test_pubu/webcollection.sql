/*
MySQL Data Transfer
Source Host: localhost
Source Database: webcollection
Target Host: localhost
Target Database: webcollection
Date: 2013/4/5 0:03:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for xpf_first_manage_users
-- ----------------------------
DROP TABLE IF EXISTS `xpf_first_manage_users`;
CREATE TABLE `xpf_first_manage_users` (
  `id` int(64) NOT NULL auto_increment,
  `xpf_first_manage_users_username` varchar(512) default NULL,
  `xpf_first_manage_users_password` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xpf_first_root_users
-- ----------------------------
DROP TABLE IF EXISTS `xpf_first_root_users`;
CREATE TABLE `xpf_first_root_users` (
  `id` int(64) NOT NULL auto_increment,
  `xpf_first_root_users_username` varchar(512) default NULL,
  `xpf_first_root_users_password` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xpf_first_webcollection_kinds
-- ----------------------------
DROP TABLE IF EXISTS `xpf_first_webcollection_kinds`;
CREATE TABLE `xpf_first_webcollection_kinds` (
  `id` int(128) NOT NULL auto_increment,
  `xpf_first_webcollection_kinds_name` varchar(512) default NULL,
  `xpf_first_webcollection_kinds_introduction` text,
  `xpf_first_webcollection_kinds_picture` varchar(512) default NULL,
  `xpf_first_webcollection_kinds_webs` int(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xpf_first_webs
-- ----------------------------
DROP TABLE IF EXISTS `xpf_first_webs`;
CREATE TABLE `xpf_first_webs` (
  `id` int(200) NOT NULL auto_increment,
  `xpf_first_webs_name` varchar(512) default NULL,
  `xpf_first_webs_address` varchar(512) default NULL,
  `xpf_first_webs_belongkinds` varchar(512) default NULL,
  `xpf_first_webs_logpicture` varchar(512) default NULL,
  `xpf_first_webs_webpicture` varchar(512) default NULL,
  `xpf_first_webs_introduction` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `xpf_first_manage_users` VALUES ('1', 'xpf12', '475356336');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('9', '购物网站', '这里搜集了国内外流行的购物网站！', '/upImage/kind/1361196928981.jpg', '3');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('10', '视频网站', '这里搜集了国内外流行的视频网站', '/upImage/kind/1361196957338.jpg', '4');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('11', '社交网站', '这里搜集了国内外流行的社交网站', '/upImage/kind/1361196989596.jpg', '4');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('12', '博客网站', '这里搜集了国内外著名的博客网站！', '/upImage/kind/1361197031791.jpg', '0');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('13', '门户网站', '这里搜集了国内外著名的门户网站', '/upImage/kind/1361197073210.jpg', '5');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('14', '团购网站', '这里搜集了国内外知名的团购网站', '/upImage/kind/1361197112050.jpg', '0');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('15', '游戏网站', '这里搜集了国内外著名的游戏网站', '/upImage/kind/1361197168150.jpg', '0');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('16', '新型网站', '这里搜集了国内外新型的网站，各种new idea！', '/upImage/kind/1361197230952.jpg', '0');
INSERT INTO `xpf_first_webcollection_kinds` VALUES ('17', '科技网站', '这里搜集了技术爱好者们经常光顾的网站', '/upImage/kind/1361197269129.jpg', '4');
INSERT INTO `xpf_first_webs` VALUES ('17', '优酷网', 'http://www.youku.com', '视频网站', '/upImage/web/log/1361282563781.jpg', '/upImage/web/web/1361282563781.jpg', '中国最大的视频网站');
INSERT INTO `xpf_first_webs` VALUES ('18', '人人网', 'http://www.renren.com', '社交网站', '/upImage/web/log/1361282615737.jpg', '/upImage/web/web/1361282615737.jpg', '中国最大的实名制社交网站');
INSERT INTO `xpf_first_webs` VALUES ('19', '淘宝网', 'http://www.taobao.com', '购物网站', '/upImage/web/log/1361282776480.jpg', '/upImage/web/web/1361282776480.jpg', '中国最大的购物网站');
INSERT INTO `xpf_first_webs` VALUES ('20', '京东网', 'http://www.360buy.com', '购物网站', '/upImage/web/log/1361282868305.jpg', '/upImage/web/web/1361282868305.jpg', '中国最大的BtoC购物网站');
INSERT INTO `xpf_first_webs` VALUES ('21', '新浪网', 'http://www.sina.com', '门户网站', '/upImage/web/log/1361282957329.jpg', '/upImage/web/web/1361282957329.jpg', '我经常上的门户网站');
INSERT INTO `xpf_first_webs` VALUES ('22', '搜狐网', 'http://www.souhu.com', '门户网站', '/upImage/web/log/1361283040880.jpg', '/upImage/web/web/1361283040880.jpg', '还可以的门户网站');
INSERT INTO `xpf_first_webs` VALUES ('23', '网易网', 'http://www.163.com', '门户网站', '/upImage/web/log/1361283097043.jpg', '/upImage/web/web/1361283097043.jpg', '丁磊的网站');
INSERT INTO `xpf_first_webs` VALUES ('24', '36kr网', 'http://www.36kr.com', '科技网站', '/upImage/web/log/1361283189729.jpg', '/upImage/web/web/1361283189729.jpg', '我每天都上的科技网站');
INSERT INTO `xpf_first_webs` VALUES ('25', '博客园', 'http://www.cnblogs.com', '科技网站', '/upImage/web/log/1361283276976.jpg', '/upImage/web/web/1361283276976.jpg', '我最喜欢的国内科技网站');
INSERT INTO `xpf_first_webs` VALUES ('26', '腾讯网', 'http://www.qq.com', '门户网站', '/upImage/web/log/1361283396623.jpg', '/upImage/web/web/1361283396623.jpg', '中国最有钱的网站');
INSERT INTO `xpf_first_webs` VALUES ('27', '人人网', 'http://www.renren.com', '社交网站', '/upImage/web/log/1361284322634.jpg', '/upImage/web/web/1361284322634.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('28', '淘宝网', 'http://www.taobao.com', '门户网站', '/upImage/web/log/1361284344521.jpg', '/upImage/web/web/1361284344521.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('29', '优酷网', 'http://www.taobao.com', '购物网站', '/upImage/web/log/1361284366381.jpg', '/upImage/web/web/1361284366381.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('30', '京东网', 'http://www.renren.com', '社交网站', '/upImage/web/log/1361284395122.jpg', '/upImage/web/web/1361284395122.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('31', '36kr网', 'http://www.taobao.com', '视频网站', '/upImage/web/log/1361284419096.jpg', '/upImage/web/web/1361284419096.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('32', '京东网', 'http://www.taobao.com', '社交网站', '/upImage/web/log/1361284443833.jpg', '/upImage/web/web/1361284443833.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('33', '博客园', 'http://www.36kr.com', '科技网站', '/upImage/web/log/1361284510659.jpg', '/upImage/web/web/1361284510659.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('34', '优酷网', 'http://www.360buy.com', '视频网站', '/upImage/web/log/1361284531353.jpg', '/upImage/web/web/1361284531353.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('35', '博客园', 'http://www.youku.com', '科技网站', '/upImage/web/log/1361284576753.jpg', '/upImage/web/web/1361284576753.jpg', '社交网站');
INSERT INTO `xpf_first_webs` VALUES ('36', '博客园', 'http://www.163.com', '视频网站', '/upImage/web/log/1361284610495.jpg', '/upImage/web/web/1361284610495.jpg', '社交网站');
