/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : qilinbi

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-31 22:14:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `acer_member`
-- ----------------------------
DROP TABLE IF EXISTS `acer_member`;
CREATE TABLE `acer_member` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(16) NOT NULL DEFAULT '',
  `paypassword` varchar(16) NOT NULL DEFAULT '' COMMENT '交易密码',
  `uname` varchar(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `realname` varchar(16) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `certificates_type` varchar(16) NOT NULL COMMENT '证件类型',
  `certificates` varchar(32) NOT NULL COMMENT '证件号',
  `tel` int(16) NOT NULL,
  `register_time` int(10) NOT NULL COMMENT '注册时间',
  `log_time` int(10) NOT NULL COMMENT '登录时间',
  `vip` tinyint(2) NOT NULL,
  `vip_end` int(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `cny` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '人民币',
  `cny_cold` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '冻结rmb',
  `headpic` varchar(32) NOT NULL DEFAULT '' COMMENT '头像',
  `content` varchar(256) NOT NULL DEFAULT '' COMMENT '个人简介',
  `city` varchar(32) NOT NULL DEFAULT '',
  `region` varchar(128) NOT NULL DEFAULT '' COMMENT '区域',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acer_member
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yang_admin`;
CREATE TABLE `yang_admin` (
  `admin_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `username` varchar(32) NOT NULL COMMENT '管理员登陆账号',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `pwd_show` varchar(64) NOT NULL,
  `nav` varchar(255) NOT NULL COMMENT '权限',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_admin
-- ----------------------------
INSERT INTO `yang_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '1,2,3,4,6,7,8,15,9,10,11,12,13,14,17,16,21,22,26,27,28,29,30,18,33,32,35,36,40,61,41,52,43,45,46,47,48,49,50,51,56,57,58,59,60,62', '0');
INSERT INTO `yang_admin` VALUES ('2', '123', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '0');
INSERT INTO `yang_admin` VALUES ('3', '1', '96e79218965eb72c92a549dd5a330112', '111111', '', '0');

-- ----------------------------
-- Table structure for `yang_areas`
-- ----------------------------
DROP TABLE IF EXISTS `yang_areas`;
CREATE TABLE `yang_areas` (
  `area_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `parent_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '地区父id',
  `area_name` varchar(120) NOT NULL DEFAULT '' COMMENT '地区名称',
  `area_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '地区类型 0:country,1:province,2:city,3:district',
  PRIMARY KEY (`area_id`),
  KEY `parent_id` (`parent_id`),
  KEY `area_type` (`area_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3437 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_areas
-- ----------------------------
INSERT INTO `yang_areas` VALUES ('1', '0', '中国', '0');
INSERT INTO `yang_areas` VALUES ('2', '1', '北京', '1');
INSERT INTO `yang_areas` VALUES ('3', '1', '安徽', '1');
INSERT INTO `yang_areas` VALUES ('4', '1', '福建', '1');
INSERT INTO `yang_areas` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `yang_areas` VALUES ('6', '1', '广东', '1');
INSERT INTO `yang_areas` VALUES ('7', '1', '广西', '1');
INSERT INTO `yang_areas` VALUES ('8', '1', '贵州', '1');
INSERT INTO `yang_areas` VALUES ('9', '1', '海南', '1');
INSERT INTO `yang_areas` VALUES ('10', '1', '河北', '1');
INSERT INTO `yang_areas` VALUES ('11', '1', '河南', '1');
INSERT INTO `yang_areas` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `yang_areas` VALUES ('13', '1', '湖北', '1');
INSERT INTO `yang_areas` VALUES ('14', '1', '湖南', '1');
INSERT INTO `yang_areas` VALUES ('15', '1', '吉林', '1');
INSERT INTO `yang_areas` VALUES ('16', '1', '江苏', '1');
INSERT INTO `yang_areas` VALUES ('17', '1', '江西', '1');
INSERT INTO `yang_areas` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `yang_areas` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `yang_areas` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `yang_areas` VALUES ('21', '1', '青海', '1');
INSERT INTO `yang_areas` VALUES ('22', '1', '山东', '1');
INSERT INTO `yang_areas` VALUES ('23', '1', '山西', '1');
INSERT INTO `yang_areas` VALUES ('24', '1', '陕西', '1');
INSERT INTO `yang_areas` VALUES ('25', '1', '上海', '1');
INSERT INTO `yang_areas` VALUES ('26', '1', '四川', '1');
INSERT INTO `yang_areas` VALUES ('27', '1', '天津', '1');
INSERT INTO `yang_areas` VALUES ('28', '1', '西藏', '1');
INSERT INTO `yang_areas` VALUES ('29', '1', '新疆', '1');
INSERT INTO `yang_areas` VALUES ('30', '1', '云南', '1');
INSERT INTO `yang_areas` VALUES ('31', '1', '浙江', '1');
INSERT INTO `yang_areas` VALUES ('32', '1', '重庆', '1');
INSERT INTO `yang_areas` VALUES ('33', '1', '香港', '1');
INSERT INTO `yang_areas` VALUES ('34', '1', '澳门', '1');
INSERT INTO `yang_areas` VALUES ('35', '1', '台湾', '1');
INSERT INTO `yang_areas` VALUES ('36', '3', '安庆', '2');
INSERT INTO `yang_areas` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `yang_areas` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `yang_areas` VALUES ('39', '3', '池州', '2');
INSERT INTO `yang_areas` VALUES ('40', '3', '滁州', '2');
INSERT INTO `yang_areas` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `yang_areas` VALUES ('42', '3', '淮北', '2');
INSERT INTO `yang_areas` VALUES ('43', '3', '淮南', '2');
INSERT INTO `yang_areas` VALUES ('44', '3', '黄山', '2');
INSERT INTO `yang_areas` VALUES ('45', '3', '六安', '2');
INSERT INTO `yang_areas` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `yang_areas` VALUES ('47', '3', '宿州', '2');
INSERT INTO `yang_areas` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `yang_areas` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `yang_areas` VALUES ('50', '3', '宣城', '2');
INSERT INTO `yang_areas` VALUES ('51', '3', '亳州', '2');
INSERT INTO `yang_areas` VALUES ('52', '2', '北京', '2');
INSERT INTO `yang_areas` VALUES ('53', '4', '福州', '2');
INSERT INTO `yang_areas` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `yang_areas` VALUES ('55', '4', '南平', '2');
INSERT INTO `yang_areas` VALUES ('56', '4', '宁德', '2');
INSERT INTO `yang_areas` VALUES ('57', '4', '莆田', '2');
INSERT INTO `yang_areas` VALUES ('58', '4', '泉州', '2');
INSERT INTO `yang_areas` VALUES ('59', '4', '三明', '2');
INSERT INTO `yang_areas` VALUES ('60', '4', '厦门', '2');
INSERT INTO `yang_areas` VALUES ('61', '4', '漳州', '2');
INSERT INTO `yang_areas` VALUES ('62', '5', '兰州', '2');
INSERT INTO `yang_areas` VALUES ('63', '5', '白银', '2');
INSERT INTO `yang_areas` VALUES ('64', '5', '定西', '2');
INSERT INTO `yang_areas` VALUES ('65', '5', '甘南', '2');
INSERT INTO `yang_areas` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `yang_areas` VALUES ('67', '5', '金昌', '2');
INSERT INTO `yang_areas` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `yang_areas` VALUES ('69', '5', '临夏', '2');
INSERT INTO `yang_areas` VALUES ('70', '5', '陇南', '2');
INSERT INTO `yang_areas` VALUES ('71', '5', '平凉', '2');
INSERT INTO `yang_areas` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `yang_areas` VALUES ('73', '5', '天水', '2');
INSERT INTO `yang_areas` VALUES ('74', '5', '武威', '2');
INSERT INTO `yang_areas` VALUES ('75', '5', '张掖', '2');
INSERT INTO `yang_areas` VALUES ('76', '6', '广州', '2');
INSERT INTO `yang_areas` VALUES ('77', '6', '深圳', '2');
INSERT INTO `yang_areas` VALUES ('78', '6', '潮州', '2');
INSERT INTO `yang_areas` VALUES ('79', '6', '东莞', '2');
INSERT INTO `yang_areas` VALUES ('80', '6', '佛山', '2');
INSERT INTO `yang_areas` VALUES ('81', '6', '河源', '2');
INSERT INTO `yang_areas` VALUES ('82', '6', '惠州', '2');
INSERT INTO `yang_areas` VALUES ('83', '6', '江门', '2');
INSERT INTO `yang_areas` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `yang_areas` VALUES ('85', '6', '茂名', '2');
INSERT INTO `yang_areas` VALUES ('86', '6', '梅州', '2');
INSERT INTO `yang_areas` VALUES ('87', '6', '清远', '2');
INSERT INTO `yang_areas` VALUES ('88', '6', '汕头', '2');
INSERT INTO `yang_areas` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `yang_areas` VALUES ('90', '6', '韶关', '2');
INSERT INTO `yang_areas` VALUES ('91', '6', '阳江', '2');
INSERT INTO `yang_areas` VALUES ('92', '6', '云浮', '2');
INSERT INTO `yang_areas` VALUES ('93', '6', '湛江', '2');
INSERT INTO `yang_areas` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `yang_areas` VALUES ('95', '6', '中山', '2');
INSERT INTO `yang_areas` VALUES ('96', '6', '珠海', '2');
INSERT INTO `yang_areas` VALUES ('97', '7', '南宁', '2');
INSERT INTO `yang_areas` VALUES ('98', '7', '桂林', '2');
INSERT INTO `yang_areas` VALUES ('99', '7', '百色', '2');
INSERT INTO `yang_areas` VALUES ('100', '7', '北海', '2');
INSERT INTO `yang_areas` VALUES ('101', '7', '崇左', '2');
INSERT INTO `yang_areas` VALUES ('102', '7', '防城港', '2');
INSERT INTO `yang_areas` VALUES ('103', '7', '贵港', '2');
INSERT INTO `yang_areas` VALUES ('104', '7', '河池', '2');
INSERT INTO `yang_areas` VALUES ('105', '7', '贺州', '2');
INSERT INTO `yang_areas` VALUES ('106', '7', '来宾', '2');
INSERT INTO `yang_areas` VALUES ('107', '7', '柳州', '2');
INSERT INTO `yang_areas` VALUES ('108', '7', '钦州', '2');
INSERT INTO `yang_areas` VALUES ('109', '7', '梧州', '2');
INSERT INTO `yang_areas` VALUES ('110', '7', '玉林', '2');
INSERT INTO `yang_areas` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `yang_areas` VALUES ('112', '8', '安顺', '2');
INSERT INTO `yang_areas` VALUES ('113', '8', '毕节', '2');
INSERT INTO `yang_areas` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `yang_areas` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `yang_areas` VALUES ('116', '8', '黔南', '2');
INSERT INTO `yang_areas` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `yang_areas` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `yang_areas` VALUES ('119', '8', '遵义', '2');
INSERT INTO `yang_areas` VALUES ('120', '9', '海口', '2');
INSERT INTO `yang_areas` VALUES ('121', '9', '三亚', '2');
INSERT INTO `yang_areas` VALUES ('122', '9', '白沙', '2');
INSERT INTO `yang_areas` VALUES ('123', '9', '保亭', '2');
INSERT INTO `yang_areas` VALUES ('124', '9', '昌江', '2');
INSERT INTO `yang_areas` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `yang_areas` VALUES ('126', '9', '定安县', '2');
INSERT INTO `yang_areas` VALUES ('127', '9', '东方', '2');
INSERT INTO `yang_areas` VALUES ('128', '9', '乐东', '2');
INSERT INTO `yang_areas` VALUES ('129', '9', '临高县', '2');
INSERT INTO `yang_areas` VALUES ('130', '9', '陵水', '2');
INSERT INTO `yang_areas` VALUES ('131', '9', '琼海', '2');
INSERT INTO `yang_areas` VALUES ('132', '9', '琼中', '2');
INSERT INTO `yang_areas` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `yang_areas` VALUES ('134', '9', '万宁', '2');
INSERT INTO `yang_areas` VALUES ('135', '9', '文昌', '2');
INSERT INTO `yang_areas` VALUES ('136', '9', '五指山', '2');
INSERT INTO `yang_areas` VALUES ('137', '9', '儋州', '2');
INSERT INTO `yang_areas` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `yang_areas` VALUES ('139', '10', '保定', '2');
INSERT INTO `yang_areas` VALUES ('140', '10', '沧州', '2');
INSERT INTO `yang_areas` VALUES ('141', '10', '承德', '2');
INSERT INTO `yang_areas` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `yang_areas` VALUES ('143', '10', '衡水', '2');
INSERT INTO `yang_areas` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `yang_areas` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `yang_areas` VALUES ('146', '10', '唐山', '2');
INSERT INTO `yang_areas` VALUES ('147', '10', '邢台', '2');
INSERT INTO `yang_areas` VALUES ('148', '10', '张家口', '2');
INSERT INTO `yang_areas` VALUES ('149', '11', '郑州', '2');
INSERT INTO `yang_areas` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `yang_areas` VALUES ('151', '11', '开封', '2');
INSERT INTO `yang_areas` VALUES ('152', '11', '安阳', '2');
INSERT INTO `yang_areas` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `yang_areas` VALUES ('154', '11', '济源', '2');
INSERT INTO `yang_areas` VALUES ('155', '11', '焦作', '2');
INSERT INTO `yang_areas` VALUES ('156', '11', '南阳', '2');
INSERT INTO `yang_areas` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `yang_areas` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `yang_areas` VALUES ('159', '11', '商丘', '2');
INSERT INTO `yang_areas` VALUES ('160', '11', '新乡', '2');
INSERT INTO `yang_areas` VALUES ('161', '11', '信阳', '2');
INSERT INTO `yang_areas` VALUES ('162', '11', '许昌', '2');
INSERT INTO `yang_areas` VALUES ('163', '11', '周口', '2');
INSERT INTO `yang_areas` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `yang_areas` VALUES ('165', '11', '漯河', '2');
INSERT INTO `yang_areas` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `yang_areas` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `yang_areas` VALUES ('168', '12', '大庆', '2');
INSERT INTO `yang_areas` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `yang_areas` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `yang_areas` VALUES ('171', '12', '黑河', '2');
INSERT INTO `yang_areas` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `yang_areas` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `yang_areas` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `yang_areas` VALUES ('175', '12', '七台河', '2');
INSERT INTO `yang_areas` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `yang_areas` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `yang_areas` VALUES ('178', '12', '绥化', '2');
INSERT INTO `yang_areas` VALUES ('179', '12', '伊春', '2');
INSERT INTO `yang_areas` VALUES ('180', '13', '武汉', '2');
INSERT INTO `yang_areas` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `yang_areas` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `yang_areas` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `yang_areas` VALUES ('184', '13', '黄石', '2');
INSERT INTO `yang_areas` VALUES ('185', '13', '荆门', '2');
INSERT INTO `yang_areas` VALUES ('186', '13', '荆州', '2');
INSERT INTO `yang_areas` VALUES ('187', '13', '潜江', '2');
INSERT INTO `yang_areas` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `yang_areas` VALUES ('189', '13', '十堰', '2');
INSERT INTO `yang_areas` VALUES ('190', '13', '随州', '2');
INSERT INTO `yang_areas` VALUES ('191', '13', '天门', '2');
INSERT INTO `yang_areas` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `yang_areas` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `yang_areas` VALUES ('194', '13', '孝感', '2');
INSERT INTO `yang_areas` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `yang_areas` VALUES ('196', '13', '恩施', '2');
INSERT INTO `yang_areas` VALUES ('197', '14', '长沙', '2');
INSERT INTO `yang_areas` VALUES ('198', '14', '张家界', '2');
INSERT INTO `yang_areas` VALUES ('199', '14', '常德', '2');
INSERT INTO `yang_areas` VALUES ('200', '14', '郴州', '2');
INSERT INTO `yang_areas` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `yang_areas` VALUES ('202', '14', '怀化', '2');
INSERT INTO `yang_areas` VALUES ('203', '14', '娄底', '2');
INSERT INTO `yang_areas` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `yang_areas` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `yang_areas` VALUES ('206', '14', '湘西', '2');
INSERT INTO `yang_areas` VALUES ('207', '14', '益阳', '2');
INSERT INTO `yang_areas` VALUES ('208', '14', '永州', '2');
INSERT INTO `yang_areas` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `yang_areas` VALUES ('210', '14', '株洲', '2');
INSERT INTO `yang_areas` VALUES ('211', '15', '长春', '2');
INSERT INTO `yang_areas` VALUES ('212', '15', '吉林', '2');
INSERT INTO `yang_areas` VALUES ('213', '15', '白城', '2');
INSERT INTO `yang_areas` VALUES ('214', '15', '白山', '2');
INSERT INTO `yang_areas` VALUES ('215', '15', '辽源', '2');
INSERT INTO `yang_areas` VALUES ('216', '15', '四平', '2');
INSERT INTO `yang_areas` VALUES ('217', '15', '松原', '2');
INSERT INTO `yang_areas` VALUES ('218', '15', '通化', '2');
INSERT INTO `yang_areas` VALUES ('219', '15', '延边', '2');
INSERT INTO `yang_areas` VALUES ('220', '16', '南京', '2');
INSERT INTO `yang_areas` VALUES ('221', '16', '苏州', '2');
INSERT INTO `yang_areas` VALUES ('222', '16', '无锡', '2');
INSERT INTO `yang_areas` VALUES ('223', '16', '常州', '2');
INSERT INTO `yang_areas` VALUES ('224', '16', '淮安', '2');
INSERT INTO `yang_areas` VALUES ('225', '16', '连云港', '2');
INSERT INTO `yang_areas` VALUES ('226', '16', '南通', '2');
INSERT INTO `yang_areas` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `yang_areas` VALUES ('228', '16', '泰州', '2');
INSERT INTO `yang_areas` VALUES ('229', '16', '徐州', '2');
INSERT INTO `yang_areas` VALUES ('230', '16', '盐城', '2');
INSERT INTO `yang_areas` VALUES ('231', '16', '扬州', '2');
INSERT INTO `yang_areas` VALUES ('232', '16', '镇江', '2');
INSERT INTO `yang_areas` VALUES ('233', '17', '南昌', '2');
INSERT INTO `yang_areas` VALUES ('234', '17', '抚州', '2');
INSERT INTO `yang_areas` VALUES ('235', '17', '赣州', '2');
INSERT INTO `yang_areas` VALUES ('236', '17', '吉安', '2');
INSERT INTO `yang_areas` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `yang_areas` VALUES ('238', '17', '九江', '2');
INSERT INTO `yang_areas` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `yang_areas` VALUES ('240', '17', '上饶', '2');
INSERT INTO `yang_areas` VALUES ('241', '17', '新余', '2');
INSERT INTO `yang_areas` VALUES ('242', '17', '宜春', '2');
INSERT INTO `yang_areas` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `yang_areas` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `yang_areas` VALUES ('245', '18', '大连', '2');
INSERT INTO `yang_areas` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `yang_areas` VALUES ('247', '18', '本溪', '2');
INSERT INTO `yang_areas` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `yang_areas` VALUES ('249', '18', '丹东', '2');
INSERT INTO `yang_areas` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `yang_areas` VALUES ('251', '18', '阜新', '2');
INSERT INTO `yang_areas` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `yang_areas` VALUES ('253', '18', '锦州', '2');
INSERT INTO `yang_areas` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `yang_areas` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `yang_areas` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `yang_areas` VALUES ('257', '18', '营口', '2');
INSERT INTO `yang_areas` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `yang_areas` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `yang_areas` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `yang_areas` VALUES ('261', '19', '包头', '2');
INSERT INTO `yang_areas` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `yang_areas` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `yang_areas` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `yang_areas` VALUES ('265', '19', '通辽', '2');
INSERT INTO `yang_areas` VALUES ('266', '19', '乌海', '2');
INSERT INTO `yang_areas` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `yang_areas` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `yang_areas` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `yang_areas` VALUES ('270', '20', '银川', '2');
INSERT INTO `yang_areas` VALUES ('271', '20', '固原', '2');
INSERT INTO `yang_areas` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `yang_areas` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `yang_areas` VALUES ('274', '20', '中卫', '2');
INSERT INTO `yang_areas` VALUES ('275', '21', '西宁', '2');
INSERT INTO `yang_areas` VALUES ('276', '21', '果洛', '2');
INSERT INTO `yang_areas` VALUES ('277', '21', '海北', '2');
INSERT INTO `yang_areas` VALUES ('278', '21', '海东', '2');
INSERT INTO `yang_areas` VALUES ('279', '21', '海南', '2');
INSERT INTO `yang_areas` VALUES ('280', '21', '海西', '2');
INSERT INTO `yang_areas` VALUES ('281', '21', '黄南', '2');
INSERT INTO `yang_areas` VALUES ('282', '21', '玉树', '2');
INSERT INTO `yang_areas` VALUES ('283', '22', '济南', '2');
INSERT INTO `yang_areas` VALUES ('284', '22', '青岛', '2');
INSERT INTO `yang_areas` VALUES ('285', '22', '滨州', '2');
INSERT INTO `yang_areas` VALUES ('286', '22', '德州', '2');
INSERT INTO `yang_areas` VALUES ('287', '22', '东营', '2');
INSERT INTO `yang_areas` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `yang_areas` VALUES ('289', '22', '济宁', '2');
INSERT INTO `yang_areas` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `yang_areas` VALUES ('291', '22', '聊城', '2');
INSERT INTO `yang_areas` VALUES ('292', '22', '临沂', '2');
INSERT INTO `yang_areas` VALUES ('293', '22', '日照', '2');
INSERT INTO `yang_areas` VALUES ('294', '22', '泰安', '2');
INSERT INTO `yang_areas` VALUES ('295', '22', '威海', '2');
INSERT INTO `yang_areas` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `yang_areas` VALUES ('297', '22', '烟台', '2');
INSERT INTO `yang_areas` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `yang_areas` VALUES ('299', '22', '淄博', '2');
INSERT INTO `yang_areas` VALUES ('300', '23', '太原', '2');
INSERT INTO `yang_areas` VALUES ('301', '23', '长治', '2');
INSERT INTO `yang_areas` VALUES ('302', '23', '大同', '2');
INSERT INTO `yang_areas` VALUES ('303', '23', '晋城', '2');
INSERT INTO `yang_areas` VALUES ('304', '23', '晋中', '2');
INSERT INTO `yang_areas` VALUES ('305', '23', '临汾', '2');
INSERT INTO `yang_areas` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `yang_areas` VALUES ('307', '23', '朔州', '2');
INSERT INTO `yang_areas` VALUES ('308', '23', '忻州', '2');
INSERT INTO `yang_areas` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `yang_areas` VALUES ('310', '23', '运城', '2');
INSERT INTO `yang_areas` VALUES ('311', '24', '西安', '2');
INSERT INTO `yang_areas` VALUES ('312', '24', '安康', '2');
INSERT INTO `yang_areas` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `yang_areas` VALUES ('314', '24', '汉中', '2');
INSERT INTO `yang_areas` VALUES ('315', '24', '商洛', '2');
INSERT INTO `yang_areas` VALUES ('316', '24', '铜川', '2');
INSERT INTO `yang_areas` VALUES ('317', '24', '渭南', '2');
INSERT INTO `yang_areas` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `yang_areas` VALUES ('319', '24', '延安', '2');
INSERT INTO `yang_areas` VALUES ('320', '24', '榆林', '2');
INSERT INTO `yang_areas` VALUES ('321', '25', '上海', '2');
INSERT INTO `yang_areas` VALUES ('322', '26', '成都', '2');
INSERT INTO `yang_areas` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `yang_areas` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `yang_areas` VALUES ('325', '26', '巴中', '2');
INSERT INTO `yang_areas` VALUES ('326', '26', '达州', '2');
INSERT INTO `yang_areas` VALUES ('327', '26', '德阳', '2');
INSERT INTO `yang_areas` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `yang_areas` VALUES ('329', '26', '广安', '2');
INSERT INTO `yang_areas` VALUES ('330', '26', '广元', '2');
INSERT INTO `yang_areas` VALUES ('331', '26', '乐山', '2');
INSERT INTO `yang_areas` VALUES ('332', '26', '凉山', '2');
INSERT INTO `yang_areas` VALUES ('333', '26', '眉山', '2');
INSERT INTO `yang_areas` VALUES ('334', '26', '南充', '2');
INSERT INTO `yang_areas` VALUES ('335', '26', '内江', '2');
INSERT INTO `yang_areas` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `yang_areas` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `yang_areas` VALUES ('338', '26', '雅安', '2');
INSERT INTO `yang_areas` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `yang_areas` VALUES ('340', '26', '资阳', '2');
INSERT INTO `yang_areas` VALUES ('341', '26', '自贡', '2');
INSERT INTO `yang_areas` VALUES ('342', '26', '泸州', '2');
INSERT INTO `yang_areas` VALUES ('343', '27', '天津', '2');
INSERT INTO `yang_areas` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `yang_areas` VALUES ('345', '28', '阿里', '2');
INSERT INTO `yang_areas` VALUES ('346', '28', '昌都', '2');
INSERT INTO `yang_areas` VALUES ('347', '28', '林芝', '2');
INSERT INTO `yang_areas` VALUES ('348', '28', '那曲', '2');
INSERT INTO `yang_areas` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `yang_areas` VALUES ('350', '28', '山南', '2');
INSERT INTO `yang_areas` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `yang_areas` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `yang_areas` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `yang_areas` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `yang_areas` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `yang_areas` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `yang_areas` VALUES ('357', '29', '哈密', '2');
INSERT INTO `yang_areas` VALUES ('358', '29', '和田', '2');
INSERT INTO `yang_areas` VALUES ('359', '29', '喀什', '2');
INSERT INTO `yang_areas` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `yang_areas` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `yang_areas` VALUES ('362', '29', '石河子', '2');
INSERT INTO `yang_areas` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `yang_areas` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `yang_areas` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `yang_areas` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `yang_areas` VALUES ('367', '30', '昆明', '2');
INSERT INTO `yang_areas` VALUES ('368', '30', '怒江', '2');
INSERT INTO `yang_areas` VALUES ('369', '30', '普洱', '2');
INSERT INTO `yang_areas` VALUES ('370', '30', '丽江', '2');
INSERT INTO `yang_areas` VALUES ('371', '30', '保山', '2');
INSERT INTO `yang_areas` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `yang_areas` VALUES ('373', '30', '大理', '2');
INSERT INTO `yang_areas` VALUES ('374', '30', '德宏', '2');
INSERT INTO `yang_areas` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `yang_areas` VALUES ('376', '30', '红河', '2');
INSERT INTO `yang_areas` VALUES ('377', '30', '临沧', '2');
INSERT INTO `yang_areas` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `yang_areas` VALUES ('379', '30', '文山', '2');
INSERT INTO `yang_areas` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `yang_areas` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `yang_areas` VALUES ('382', '30', '昭通', '2');
INSERT INTO `yang_areas` VALUES ('383', '31', '杭州', '2');
INSERT INTO `yang_areas` VALUES ('384', '31', '湖州', '2');
INSERT INTO `yang_areas` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `yang_areas` VALUES ('386', '31', '金华', '2');
INSERT INTO `yang_areas` VALUES ('387', '31', '丽水', '2');
INSERT INTO `yang_areas` VALUES ('388', '31', '宁波', '2');
INSERT INTO `yang_areas` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `yang_areas` VALUES ('390', '31', '台州', '2');
INSERT INTO `yang_areas` VALUES ('391', '31', '温州', '2');
INSERT INTO `yang_areas` VALUES ('392', '31', '舟山', '2');
INSERT INTO `yang_areas` VALUES ('393', '31', '衢州', '2');
INSERT INTO `yang_areas` VALUES ('394', '32', '重庆', '2');
INSERT INTO `yang_areas` VALUES ('395', '33', '香港', '2');
INSERT INTO `yang_areas` VALUES ('396', '34', '澳门', '2');
INSERT INTO `yang_areas` VALUES ('397', '35', '台湾', '2');
INSERT INTO `yang_areas` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `yang_areas` VALUES ('399', '36', '大观区', '3');
INSERT INTO `yang_areas` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `yang_areas` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `yang_areas` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `yang_areas` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `yang_areas` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `yang_areas` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `yang_areas` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `yang_areas` VALUES ('407', '36', '望江县', '3');
INSERT INTO `yang_areas` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `yang_areas` VALUES ('409', '37', '中市区', '3');
INSERT INTO `yang_areas` VALUES ('410', '37', '东市区', '3');
INSERT INTO `yang_areas` VALUES ('411', '37', '西市区', '3');
INSERT INTO `yang_areas` VALUES ('412', '37', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `yang_areas` VALUES ('414', '37', '五河县', '3');
INSERT INTO `yang_areas` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `yang_areas` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `yang_areas` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `yang_areas` VALUES ('418', '38', '无为县', '3');
INSERT INTO `yang_areas` VALUES ('419', '38', '含山县', '3');
INSERT INTO `yang_areas` VALUES ('420', '38', '和县', '3');
INSERT INTO `yang_areas` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `yang_areas` VALUES ('422', '39', '东至县', '3');
INSERT INTO `yang_areas` VALUES ('423', '39', '石台县', '3');
INSERT INTO `yang_areas` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `yang_areas` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `yang_areas` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `yang_areas` VALUES ('427', '40', '天长市', '3');
INSERT INTO `yang_areas` VALUES ('428', '40', '明光市', '3');
INSERT INTO `yang_areas` VALUES ('429', '40', '来安县', '3');
INSERT INTO `yang_areas` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `yang_areas` VALUES ('431', '40', '定远县', '3');
INSERT INTO `yang_areas` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `yang_areas` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `yang_areas` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `yang_areas` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `yang_areas` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `yang_areas` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `yang_areas` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `yang_areas` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `yang_areas` VALUES ('440', '41', '界首市', '3');
INSERT INTO `yang_areas` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `yang_areas` VALUES ('442', '41', '太和县', '3');
INSERT INTO `yang_areas` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `yang_areas` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `yang_areas` VALUES ('445', '42', '相山区', '3');
INSERT INTO `yang_areas` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `yang_areas` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `yang_areas` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `yang_areas` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `yang_areas` VALUES ('450', '43', '大通区', '3');
INSERT INTO `yang_areas` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `yang_areas` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `yang_areas` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `yang_areas` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `yang_areas` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `yang_areas` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `yang_areas` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `yang_areas` VALUES ('458', '44', '歙县', '3');
INSERT INTO `yang_areas` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `yang_areas` VALUES ('460', '44', '黟县', '3');
INSERT INTO `yang_areas` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `yang_areas` VALUES ('462', '45', '金安区', '3');
INSERT INTO `yang_areas` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `yang_areas` VALUES ('464', '45', '寿县', '3');
INSERT INTO `yang_areas` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `yang_areas` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `yang_areas` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `yang_areas` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `yang_areas` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `yang_areas` VALUES ('470', '46', '花山区', '3');
INSERT INTO `yang_areas` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `yang_areas` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `yang_areas` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `yang_areas` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `yang_areas` VALUES ('475', '47', '萧县', '3');
INSERT INTO `yang_areas` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `yang_areas` VALUES ('477', '47', '泗县', '3');
INSERT INTO `yang_areas` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `yang_areas` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `yang_areas` VALUES ('480', '48', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `yang_areas` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `yang_areas` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `yang_areas` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `yang_areas` VALUES ('485', '49', '三山区', '3');
INSERT INTO `yang_areas` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `yang_areas` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `yang_areas` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `yang_areas` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `yang_areas` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `yang_areas` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `yang_areas` VALUES ('492', '50', '广德县', '3');
INSERT INTO `yang_areas` VALUES ('493', '50', '泾县', '3');
INSERT INTO `yang_areas` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `yang_areas` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `yang_areas` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `yang_areas` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `yang_areas` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `yang_areas` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `yang_areas` VALUES ('500', '52', '东城区', '3');
INSERT INTO `yang_areas` VALUES ('501', '52', '西城区', '3');
INSERT INTO `yang_areas` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `yang_areas` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `yang_areas` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `yang_areas` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `yang_areas` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `yang_areas` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `yang_areas` VALUES ('508', '52', '房山区', '3');
INSERT INTO `yang_areas` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `yang_areas` VALUES ('510', '52', '通州区', '3');
INSERT INTO `yang_areas` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `yang_areas` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `yang_areas` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `yang_areas` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `yang_areas` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `yang_areas` VALUES ('516', '52', '密云县', '3');
INSERT INTO `yang_areas` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `yang_areas` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('519', '53', '台江区', '3');
INSERT INTO `yang_areas` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `yang_areas` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `yang_areas` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `yang_areas` VALUES ('523', '53', '福清市', '3');
INSERT INTO `yang_areas` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `yang_areas` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `yang_areas` VALUES ('526', '53', '连江县', '3');
INSERT INTO `yang_areas` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `yang_areas` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `yang_areas` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `yang_areas` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `yang_areas` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `yang_areas` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `yang_areas` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `yang_areas` VALUES ('534', '54', '永定县', '3');
INSERT INTO `yang_areas` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `yang_areas` VALUES ('536', '54', '武平县', '3');
INSERT INTO `yang_areas` VALUES ('537', '54', '连城县', '3');
INSERT INTO `yang_areas` VALUES ('538', '55', '延平区', '3');
INSERT INTO `yang_areas` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `yang_areas` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `yang_areas` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `yang_areas` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `yang_areas` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `yang_areas` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `yang_areas` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `yang_areas` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `yang_areas` VALUES ('547', '55', '政和县', '3');
INSERT INTO `yang_areas` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `yang_areas` VALUES ('549', '56', '福安市', '3');
INSERT INTO `yang_areas` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `yang_areas` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `yang_areas` VALUES ('552', '56', '古田县', '3');
INSERT INTO `yang_areas` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `yang_areas` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `yang_areas` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `yang_areas` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `yang_areas` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `yang_areas` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `yang_areas` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `yang_areas` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `yang_areas` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `yang_areas` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `yang_areas` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `yang_areas` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `yang_areas` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `yang_areas` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `yang_areas` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `yang_areas` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `yang_areas` VALUES ('569', '58', '南安市', '3');
INSERT INTO `yang_areas` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `yang_areas` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `yang_areas` VALUES ('572', '58', '永春县', '3');
INSERT INTO `yang_areas` VALUES ('573', '58', '德化县', '3');
INSERT INTO `yang_areas` VALUES ('574', '58', '金门县', '3');
INSERT INTO `yang_areas` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `yang_areas` VALUES ('576', '59', '三元区', '3');
INSERT INTO `yang_areas` VALUES ('577', '59', '永安市', '3');
INSERT INTO `yang_areas` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `yang_areas` VALUES ('579', '59', '清流县', '3');
INSERT INTO `yang_areas` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `yang_areas` VALUES ('581', '59', '大田县', '3');
INSERT INTO `yang_areas` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `yang_areas` VALUES ('583', '59', '沙县', '3');
INSERT INTO `yang_areas` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `yang_areas` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `yang_areas` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `yang_areas` VALUES ('587', '60', '思明区', '3');
INSERT INTO `yang_areas` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `yang_areas` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `yang_areas` VALUES ('590', '60', '集美区', '3');
INSERT INTO `yang_areas` VALUES ('591', '60', '同安区', '3');
INSERT INTO `yang_areas` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `yang_areas` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `yang_areas` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `yang_areas` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `yang_areas` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `yang_areas` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `yang_areas` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `yang_areas` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `yang_areas` VALUES ('600', '61', '东山县', '3');
INSERT INTO `yang_areas` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `yang_areas` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `yang_areas` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `yang_areas` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `yang_areas` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `yang_areas` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `yang_areas` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `yang_areas` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `yang_areas` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `yang_areas` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `yang_areas` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `yang_areas` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `yang_areas` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `yang_areas` VALUES ('1034', '118', '印江', '3');
INSERT INTO `yang_areas` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `yang_areas` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `yang_areas` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `yang_areas` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `yang_areas` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `yang_areas` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `yang_areas` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `yang_areas` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `yang_areas` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `yang_areas` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `yang_areas` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `yang_areas` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `yang_areas` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `yang_areas` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `yang_areas` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `yang_areas` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `yang_areas` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `yang_areas` VALUES ('1052', '119', '道真', '3');
INSERT INTO `yang_areas` VALUES ('1053', '119', '务川', '3');
INSERT INTO `yang_areas` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `yang_areas` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `yang_areas` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `yang_areas` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `yang_areas` VALUES ('1058', '137', '市区', '3');
INSERT INTO `yang_areas` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `yang_areas` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `yang_areas` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `yang_areas` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `yang_areas` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `yang_areas` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `yang_areas` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `yang_areas` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `yang_areas` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `yang_areas` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `yang_areas` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `yang_areas` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `yang_areas` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `yang_areas` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `yang_areas` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `yang_areas` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `yang_areas` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `yang_areas` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `yang_areas` VALUES ('1077', '137', '其他', '3');
INSERT INTO `yang_areas` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `yang_areas` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `yang_areas` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `yang_areas` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `yang_areas` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `yang_areas` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `yang_areas` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `yang_areas` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `yang_areas` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `yang_areas` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `yang_areas` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `yang_areas` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `yang_areas` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `yang_areas` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `yang_areas` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `yang_areas` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `yang_areas` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `yang_areas` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `yang_areas` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `yang_areas` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `yang_areas` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `yang_areas` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `yang_areas` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `yang_areas` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `yang_areas` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `yang_areas` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `yang_areas` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `yang_areas` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `yang_areas` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `yang_areas` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `yang_areas` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `yang_areas` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `yang_areas` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `yang_areas` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `yang_areas` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `yang_areas` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `yang_areas` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `yang_areas` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `yang_areas` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `yang_areas` VALUES ('1121', '139', '易县', '3');
INSERT INTO `yang_areas` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `yang_areas` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `yang_areas` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `yang_areas` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `yang_areas` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `yang_areas` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `yang_areas` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `yang_areas` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `yang_areas` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `yang_areas` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `yang_areas` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `yang_areas` VALUES ('1134', '140', '青县', '3');
INSERT INTO `yang_areas` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `yang_areas` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `yang_areas` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `yang_areas` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `yang_areas` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `yang_areas` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `yang_areas` VALUES ('1141', '140', '献县', '3');
INSERT INTO `yang_areas` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `yang_areas` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `yang_areas` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `yang_areas` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `yang_areas` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `yang_areas` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `yang_areas` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `yang_areas` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `yang_areas` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `yang_areas` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `yang_areas` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `yang_areas` VALUES ('1153', '141', '围场', '3');
INSERT INTO `yang_areas` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `yang_areas` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `yang_areas` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `yang_areas` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `yang_areas` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `yang_areas` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `yang_areas` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `yang_areas` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `yang_areas` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `yang_areas` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `yang_areas` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `yang_areas` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `yang_areas` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `yang_areas` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `yang_areas` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `yang_areas` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `yang_areas` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `yang_areas` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `yang_areas` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `yang_areas` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `yang_areas` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `yang_areas` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `yang_areas` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `yang_areas` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `yang_areas` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `yang_areas` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `yang_areas` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `yang_areas` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `yang_areas` VALUES ('1182', '143', '景县', '3');
INSERT INTO `yang_areas` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `yang_areas` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `yang_areas` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `yang_areas` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `yang_areas` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `yang_areas` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `yang_areas` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `yang_areas` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `yang_areas` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `yang_areas` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `yang_areas` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `yang_areas` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `yang_areas` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `yang_areas` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `yang_areas` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `yang_areas` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `yang_areas` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `yang_areas` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `yang_areas` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `yang_areas` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `yang_areas` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `yang_areas` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `yang_areas` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `yang_areas` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `yang_areas` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `yang_areas` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `yang_areas` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `yang_areas` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `yang_areas` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `yang_areas` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `yang_areas` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `yang_areas` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `yang_areas` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `yang_areas` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `yang_areas` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `yang_areas` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `yang_areas` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `yang_areas` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `yang_areas` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `yang_areas` VALUES ('1224', '147', '任县', '3');
INSERT INTO `yang_areas` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `yang_areas` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `yang_areas` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `yang_areas` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `yang_areas` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `yang_areas` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `yang_areas` VALUES ('1231', '147', '威县', '3');
INSERT INTO `yang_areas` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `yang_areas` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `yang_areas` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `yang_areas` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `yang_areas` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `yang_areas` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `yang_areas` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `yang_areas` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `yang_areas` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `yang_areas` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `yang_areas` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `yang_areas` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `yang_areas` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `yang_areas` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `yang_areas` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `yang_areas` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `yang_areas` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `yang_areas` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `yang_areas` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `yang_areas` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `yang_areas` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `yang_areas` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `yang_areas` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `yang_areas` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `yang_areas` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `yang_areas` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `yang_areas` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `yang_areas` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `yang_areas` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `yang_areas` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `yang_areas` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `yang_areas` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `yang_areas` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `yang_areas` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `yang_areas` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `yang_areas` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `yang_areas` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `yang_areas` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `yang_areas` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `yang_areas` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `yang_areas` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `yang_areas` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `yang_areas` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `yang_areas` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `yang_areas` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `yang_areas` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `yang_areas` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `yang_areas` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `yang_areas` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `yang_areas` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `yang_areas` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `yang_areas` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `yang_areas` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `yang_areas` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `yang_areas` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `yang_areas` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `yang_areas` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `yang_areas` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `yang_areas` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `yang_areas` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `yang_areas` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `yang_areas` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `yang_areas` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `yang_areas` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `yang_areas` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `yang_areas` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `yang_areas` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `yang_areas` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `yang_areas` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `yang_areas` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `yang_areas` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `yang_areas` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `yang_areas` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `yang_areas` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `yang_areas` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `yang_areas` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `yang_areas` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `yang_areas` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `yang_areas` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `yang_areas` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `yang_areas` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `yang_areas` VALUES ('1317', '155', '温县', '3');
INSERT INTO `yang_areas` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `yang_areas` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `yang_areas` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `yang_areas` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `yang_areas` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `yang_areas` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `yang_areas` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `yang_areas` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `yang_areas` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `yang_areas` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `yang_areas` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `yang_areas` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `yang_areas` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `yang_areas` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `yang_areas` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `yang_areas` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `yang_areas` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `yang_areas` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `yang_areas` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `yang_areas` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `yang_areas` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `yang_areas` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `yang_areas` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `yang_areas` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `yang_areas` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `yang_areas` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `yang_areas` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `yang_areas` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `yang_areas` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `yang_areas` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `yang_areas` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `yang_areas` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `yang_areas` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `yang_areas` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `yang_areas` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `yang_areas` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `yang_areas` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `yang_areas` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `yang_areas` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `yang_areas` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `yang_areas` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `yang_areas` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `yang_areas` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `yang_areas` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `yang_areas` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `yang_areas` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `yang_areas` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `yang_areas` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `yang_areas` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `yang_areas` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `yang_areas` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `yang_areas` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `yang_areas` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `yang_areas` VALUES ('1372', '161', '新县', '3');
INSERT INTO `yang_areas` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `yang_areas` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `yang_areas` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `yang_areas` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `yang_areas` VALUES ('1377', '161', '息县', '3');
INSERT INTO `yang_areas` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `yang_areas` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `yang_areas` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `yang_areas` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `yang_areas` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `yang_areas` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `yang_areas` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `yang_areas` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `yang_areas` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `yang_areas` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `yang_areas` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `yang_areas` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `yang_areas` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `yang_areas` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `yang_areas` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `yang_areas` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `yang_areas` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `yang_areas` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `yang_areas` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `yang_areas` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `yang_areas` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `yang_areas` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `yang_areas` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `yang_areas` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `yang_areas` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `yang_areas` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `yang_areas` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `yang_areas` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `yang_areas` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `yang_areas` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `yang_areas` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `yang_areas` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `yang_areas` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `yang_areas` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `yang_areas` VALUES ('1412', '166', '范县', '3');
INSERT INTO `yang_areas` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `yang_areas` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `yang_areas` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `yang_areas` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `yang_areas` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `yang_areas` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `yang_areas` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `yang_areas` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `yang_areas` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `yang_areas` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `yang_areas` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `yang_areas` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `yang_areas` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `yang_areas` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `yang_areas` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `yang_areas` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `yang_areas` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `yang_areas` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `yang_areas` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `yang_areas` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `yang_areas` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `yang_areas` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `yang_areas` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `yang_areas` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `yang_areas` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `yang_areas` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `yang_areas` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `yang_areas` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `yang_areas` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `yang_areas` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `yang_areas` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `yang_areas` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `yang_areas` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `yang_areas` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `yang_areas` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `yang_areas` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `yang_areas` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `yang_areas` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `yang_areas` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `yang_areas` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `yang_areas` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `yang_areas` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `yang_areas` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `yang_areas` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `yang_areas` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `yang_areas` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `yang_areas` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `yang_areas` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `yang_areas` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `yang_areas` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `yang_areas` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `yang_areas` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `yang_areas` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `yang_areas` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `yang_areas` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `yang_areas` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `yang_areas` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `yang_areas` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `yang_areas` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `yang_areas` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `yang_areas` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `yang_areas` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `yang_areas` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `yang_areas` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `yang_areas` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `yang_areas` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `yang_areas` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `yang_areas` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `yang_areas` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `yang_areas` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `yang_areas` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `yang_areas` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `yang_areas` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `yang_areas` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `yang_areas` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `yang_areas` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `yang_areas` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `yang_areas` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `yang_areas` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `yang_areas` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `yang_areas` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `yang_areas` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `yang_areas` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `yang_areas` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `yang_areas` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `yang_areas` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `yang_areas` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `yang_areas` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `yang_areas` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `yang_areas` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `yang_areas` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `yang_areas` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `yang_areas` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `yang_areas` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `yang_areas` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `yang_areas` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `yang_areas` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `yang_areas` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `yang_areas` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `yang_areas` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `yang_areas` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `yang_areas` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `yang_areas` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `yang_areas` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `yang_areas` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `yang_areas` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `yang_areas` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `yang_areas` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `yang_areas` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `yang_areas` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `yang_areas` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `yang_areas` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `yang_areas` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `yang_areas` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `yang_areas` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `yang_areas` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `yang_areas` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `yang_areas` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `yang_areas` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `yang_areas` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `yang_areas` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `yang_areas` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `yang_areas` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `yang_areas` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `yang_areas` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `yang_areas` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `yang_areas` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `yang_areas` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `yang_areas` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `yang_areas` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `yang_areas` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `yang_areas` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `yang_areas` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `yang_areas` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `yang_areas` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `yang_areas` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `yang_areas` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `yang_areas` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `yang_areas` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `yang_areas` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `yang_areas` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `yang_areas` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `yang_areas` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `yang_areas` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `yang_areas` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `yang_areas` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `yang_areas` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `yang_areas` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `yang_areas` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `yang_areas` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `yang_areas` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `yang_areas` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `yang_areas` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `yang_areas` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `yang_areas` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `yang_areas` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `yang_areas` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `yang_areas` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `yang_areas` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `yang_areas` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `yang_areas` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `yang_areas` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `yang_areas` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `yang_areas` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `yang_areas` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `yang_areas` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `yang_areas` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `yang_areas` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `yang_areas` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `yang_areas` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `yang_areas` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `yang_areas` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `yang_areas` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `yang_areas` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `yang_areas` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `yang_areas` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `yang_areas` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `yang_areas` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `yang_areas` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `yang_areas` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `yang_areas` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `yang_areas` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `yang_areas` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `yang_areas` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `yang_areas` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `yang_areas` VALUES ('1600', '189', '房县', '3');
INSERT INTO `yang_areas` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `yang_areas` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `yang_areas` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `yang_areas` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `yang_areas` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `yang_areas` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `yang_areas` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `yang_areas` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `yang_areas` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `yang_areas` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `yang_areas` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `yang_areas` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `yang_areas` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `yang_areas` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `yang_areas` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `yang_areas` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `yang_areas` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `yang_areas` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `yang_areas` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `yang_areas` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `yang_areas` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `yang_areas` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `yang_areas` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `yang_areas` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `yang_areas` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `yang_areas` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `yang_areas` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `yang_areas` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `yang_areas` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `yang_areas` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `yang_areas` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `yang_areas` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `yang_areas` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `yang_areas` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `yang_areas` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `yang_areas` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `yang_areas` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `yang_areas` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `yang_areas` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `yang_areas` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `yang_areas` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `yang_areas` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `yang_areas` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `yang_areas` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `yang_areas` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `yang_areas` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `yang_areas` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `yang_areas` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `yang_areas` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `yang_areas` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `yang_areas` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `yang_areas` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `yang_areas` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `yang_areas` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `yang_areas` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `yang_areas` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `yang_areas` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `yang_areas` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `yang_areas` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `yang_areas` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `yang_areas` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `yang_areas` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `yang_areas` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `yang_areas` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `yang_areas` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `yang_areas` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `yang_areas` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `yang_areas` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `yang_areas` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `yang_areas` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `yang_areas` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `yang_areas` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `yang_areas` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `yang_areas` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `yang_areas` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `yang_areas` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `yang_areas` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `yang_areas` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `yang_areas` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `yang_areas` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `yang_areas` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `yang_areas` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `yang_areas` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `yang_areas` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `yang_areas` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `yang_areas` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `yang_areas` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `yang_areas` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `yang_areas` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `yang_areas` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `yang_areas` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `yang_areas` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `yang_areas` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `yang_areas` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `yang_areas` VALUES ('1696', '202', '通道', '3');
INSERT INTO `yang_areas` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `yang_areas` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `yang_areas` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `yang_areas` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `yang_areas` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `yang_areas` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `yang_areas` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `yang_areas` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `yang_areas` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `yang_areas` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `yang_areas` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `yang_areas` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `yang_areas` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `yang_areas` VALUES ('1710', '204', '城步', '3');
INSERT INTO `yang_areas` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `yang_areas` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `yang_areas` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `yang_areas` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `yang_areas` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `yang_areas` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `yang_areas` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `yang_areas` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `yang_areas` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `yang_areas` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `yang_areas` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `yang_areas` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `yang_areas` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `yang_areas` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `yang_areas` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `yang_areas` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `yang_areas` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `yang_areas` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `yang_areas` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `yang_areas` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `yang_areas` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `yang_areas` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `yang_areas` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `yang_areas` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `yang_areas` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `yang_areas` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `yang_areas` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `yang_areas` VALUES ('1738', '207', '南县', '3');
INSERT INTO `yang_areas` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `yang_areas` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `yang_areas` VALUES ('1741', '208', '江华', '3');
INSERT INTO `yang_areas` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `yang_areas` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `yang_areas` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `yang_areas` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `yang_areas` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `yang_areas` VALUES ('1747', '208', '道县', '3');
INSERT INTO `yang_areas` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `yang_areas` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `yang_areas` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `yang_areas` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `yang_areas` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `yang_areas` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `yang_areas` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `yang_areas` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `yang_areas` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `yang_areas` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `yang_areas` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `yang_areas` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `yang_areas` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `yang_areas` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `yang_areas` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `yang_areas` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `yang_areas` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `yang_areas` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `yang_areas` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `yang_areas` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `yang_areas` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `yang_areas` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `yang_areas` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `yang_areas` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `yang_areas` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `yang_areas` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `yang_areas` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `yang_areas` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `yang_areas` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `yang_areas` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `yang_areas` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `yang_areas` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `yang_areas` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `yang_areas` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `yang_areas` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `yang_areas` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `yang_areas` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `yang_areas` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `yang_areas` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `yang_areas` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `yang_areas` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `yang_areas` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `yang_areas` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `yang_areas` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `yang_areas` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `yang_areas` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `yang_areas` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `yang_areas` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `yang_areas` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `yang_areas` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `yang_areas` VALUES ('1800', '214', '长白', '3');
INSERT INTO `yang_areas` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `yang_areas` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `yang_areas` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `yang_areas` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `yang_areas` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `yang_areas` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `yang_areas` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `yang_areas` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `yang_areas` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `yang_areas` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `yang_areas` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `yang_areas` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `yang_areas` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `yang_areas` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `yang_areas` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `yang_areas` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `yang_areas` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `yang_areas` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `yang_areas` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `yang_areas` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `yang_areas` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `yang_areas` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `yang_areas` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `yang_areas` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `yang_areas` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `yang_areas` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `yang_areas` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `yang_areas` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `yang_areas` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `yang_areas` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `yang_areas` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `yang_areas` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `yang_areas` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `yang_areas` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `yang_areas` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `yang_areas` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `yang_areas` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `yang_areas` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `yang_areas` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `yang_areas` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `yang_areas` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `yang_areas` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `yang_areas` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `yang_areas` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `yang_areas` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `yang_areas` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `yang_areas` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `yang_areas` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `yang_areas` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `yang_areas` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `yang_areas` VALUES ('1853', '221', '园区', '3');
INSERT INTO `yang_areas` VALUES ('1854', '221', '新区', '3');
INSERT INTO `yang_areas` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `yang_areas` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `yang_areas` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `yang_areas` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `yang_areas` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `yang_areas` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `yang_areas` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `yang_areas` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `yang_areas` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `yang_areas` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `yang_areas` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `yang_areas` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `yang_areas` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `yang_areas` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `yang_areas` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `yang_areas` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `yang_areas` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `yang_areas` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `yang_areas` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `yang_areas` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `yang_areas` VALUES ('1876', '222', '新区', '3');
INSERT INTO `yang_areas` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `yang_areas` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `yang_areas` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `yang_areas` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `yang_areas` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `yang_areas` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `yang_areas` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `yang_areas` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `yang_areas` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `yang_areas` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `yang_areas` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `yang_areas` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `yang_areas` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `yang_areas` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `yang_areas` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `yang_areas` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `yang_areas` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `yang_areas` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `yang_areas` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `yang_areas` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `yang_areas` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `yang_areas` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `yang_areas` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `yang_areas` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `yang_areas` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `yang_areas` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `yang_areas` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `yang_areas` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `yang_areas` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `yang_areas` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `yang_areas` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `yang_areas` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `yang_areas` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `yang_areas` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `yang_areas` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `yang_areas` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `yang_areas` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `yang_areas` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `yang_areas` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `yang_areas` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `yang_areas` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `yang_areas` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `yang_areas` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `yang_areas` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `yang_areas` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `yang_areas` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `yang_areas` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `yang_areas` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `yang_areas` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `yang_areas` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `yang_areas` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `yang_areas` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `yang_areas` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `yang_areas` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `yang_areas` VALUES ('1934', '230', '城区', '3');
INSERT INTO `yang_areas` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `yang_areas` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `yang_areas` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `yang_areas` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `yang_areas` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `yang_areas` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `yang_areas` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `yang_areas` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `yang_areas` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `yang_areas` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `yang_areas` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `yang_areas` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `yang_areas` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `yang_areas` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `yang_areas` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `yang_areas` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `yang_areas` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `yang_areas` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `yang_areas` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `yang_areas` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `yang_areas` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `yang_areas` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `yang_areas` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `yang_areas` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `yang_areas` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `yang_areas` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `yang_areas` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `yang_areas` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `yang_areas` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `yang_areas` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `yang_areas` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `yang_areas` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `yang_areas` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `yang_areas` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `yang_areas` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `yang_areas` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `yang_areas` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `yang_areas` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `yang_areas` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `yang_areas` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `yang_areas` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `yang_areas` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `yang_areas` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `yang_areas` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `yang_areas` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `yang_areas` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `yang_areas` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `yang_areas` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `yang_areas` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `yang_areas` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `yang_areas` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `yang_areas` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `yang_areas` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `yang_areas` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `yang_areas` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `yang_areas` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `yang_areas` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `yang_areas` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `yang_areas` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `yang_areas` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `yang_areas` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `yang_areas` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `yang_areas` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `yang_areas` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `yang_areas` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `yang_areas` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `yang_areas` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `yang_areas` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `yang_areas` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `yang_areas` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `yang_areas` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `yang_areas` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `yang_areas` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `yang_areas` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `yang_areas` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `yang_areas` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `yang_areas` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `yang_areas` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `yang_areas` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `yang_areas` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `yang_areas` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `yang_areas` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `yang_areas` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `yang_areas` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `yang_areas` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `yang_areas` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `yang_areas` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `yang_areas` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `yang_areas` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `yang_areas` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `yang_areas` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `yang_areas` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `yang_areas` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `yang_areas` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `yang_areas` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `yang_areas` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `yang_areas` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `yang_areas` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `yang_areas` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `yang_areas` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `yang_areas` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `yang_areas` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `yang_areas` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `yang_areas` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `yang_areas` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `yang_areas` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `yang_areas` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `yang_areas` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `yang_areas` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `yang_areas` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `yang_areas` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `yang_areas` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `yang_areas` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `yang_areas` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `yang_areas` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `yang_areas` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `yang_areas` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `yang_areas` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `yang_areas` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `yang_areas` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `yang_areas` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `yang_areas` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `yang_areas` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `yang_areas` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `yang_areas` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `yang_areas` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `yang_areas` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `yang_areas` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `yang_areas` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `yang_areas` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `yang_areas` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `yang_areas` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `yang_areas` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `yang_areas` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `yang_areas` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `yang_areas` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `yang_areas` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `yang_areas` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `yang_areas` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `yang_areas` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `yang_areas` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `yang_areas` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `yang_areas` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `yang_areas` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `yang_areas` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `yang_areas` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `yang_areas` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `yang_areas` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `yang_areas` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `yang_areas` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `yang_areas` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `yang_areas` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `yang_areas` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `yang_areas` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `yang_areas` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `yang_areas` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `yang_areas` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `yang_areas` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `yang_areas` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `yang_areas` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `yang_areas` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `yang_areas` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `yang_areas` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `yang_areas` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `yang_areas` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `yang_areas` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `yang_areas` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `yang_areas` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `yang_areas` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `yang_areas` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `yang_areas` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `yang_areas` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `yang_areas` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `yang_areas` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `yang_areas` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `yang_areas` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `yang_areas` VALUES ('2115', '250', '清原', '3');
INSERT INTO `yang_areas` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `yang_areas` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `yang_areas` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `yang_areas` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `yang_areas` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `yang_areas` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `yang_areas` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `yang_areas` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `yang_areas` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `yang_areas` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `yang_areas` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `yang_areas` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `yang_areas` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `yang_areas` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `yang_areas` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `yang_areas` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `yang_areas` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `yang_areas` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `yang_areas` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `yang_areas` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `yang_areas` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `yang_areas` VALUES ('2137', '253', '义县', '3');
INSERT INTO `yang_areas` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `yang_areas` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `yang_areas` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `yang_areas` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `yang_areas` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `yang_areas` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `yang_areas` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `yang_areas` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `yang_areas` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `yang_areas` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `yang_areas` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `yang_areas` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `yang_areas` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `yang_areas` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `yang_areas` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `yang_areas` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `yang_areas` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `yang_areas` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `yang_areas` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `yang_areas` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `yang_areas` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `yang_areas` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `yang_areas` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `yang_areas` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `yang_areas` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `yang_areas` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `yang_areas` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `yang_areas` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `yang_areas` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `yang_areas` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `yang_areas` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `yang_areas` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `yang_areas` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `yang_areas` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `yang_areas` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `yang_areas` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `yang_areas` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `yang_areas` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `yang_areas` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `yang_areas` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `yang_areas` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `yang_areas` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `yang_areas` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `yang_areas` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `yang_areas` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `yang_areas` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `yang_areas` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `yang_areas` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `yang_areas` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `yang_areas` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `yang_areas` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `yang_areas` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `yang_areas` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `yang_areas` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `yang_areas` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `yang_areas` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `yang_areas` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `yang_areas` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `yang_areas` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `yang_areas` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `yang_areas` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `yang_areas` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `yang_areas` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `yang_areas` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `yang_areas` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `yang_areas` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `yang_areas` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `yang_areas` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `yang_areas` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `yang_areas` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `yang_areas` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `yang_areas` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `yang_areas` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `yang_areas` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `yang_areas` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `yang_areas` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `yang_areas` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `yang_areas` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `yang_areas` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `yang_areas` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `yang_areas` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `yang_areas` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `yang_areas` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `yang_areas` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `yang_areas` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `yang_areas` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `yang_areas` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `yang_areas` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `yang_areas` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `yang_areas` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `yang_areas` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `yang_areas` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `yang_areas` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `yang_areas` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `yang_areas` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `yang_areas` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `yang_areas` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `yang_areas` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `yang_areas` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `yang_areas` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `yang_areas` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `yang_areas` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `yang_areas` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `yang_areas` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `yang_areas` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `yang_areas` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `yang_areas` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `yang_areas` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `yang_areas` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `yang_areas` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `yang_areas` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `yang_areas` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `yang_areas` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `yang_areas` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `yang_areas` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `yang_areas` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `yang_areas` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `yang_areas` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `yang_areas` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `yang_areas` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `yang_areas` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `yang_areas` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `yang_areas` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `yang_areas` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `yang_areas` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `yang_areas` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `yang_areas` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `yang_areas` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `yang_areas` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `yang_areas` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `yang_areas` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `yang_areas` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `yang_areas` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `yang_areas` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `yang_areas` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `yang_areas` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `yang_areas` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `yang_areas` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `yang_areas` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `yang_areas` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `yang_areas` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `yang_areas` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `yang_areas` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `yang_areas` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `yang_areas` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `yang_areas` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `yang_areas` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `yang_areas` VALUES ('2295', '275', '大通', '3');
INSERT INTO `yang_areas` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `yang_areas` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `yang_areas` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `yang_areas` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `yang_areas` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `yang_areas` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `yang_areas` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `yang_areas` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `yang_areas` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `yang_areas` VALUES ('2305', '277', '门源', '3');
INSERT INTO `yang_areas` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `yang_areas` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `yang_areas` VALUES ('2308', '278', '民和', '3');
INSERT INTO `yang_areas` VALUES ('2309', '278', '互助', '3');
INSERT INTO `yang_areas` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `yang_areas` VALUES ('2311', '278', '循化', '3');
INSERT INTO `yang_areas` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `yang_areas` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `yang_areas` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `yang_areas` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `yang_areas` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `yang_areas` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `yang_areas` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `yang_areas` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `yang_areas` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `yang_areas` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `yang_areas` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `yang_areas` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `yang_areas` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `yang_areas` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `yang_areas` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `yang_areas` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `yang_areas` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `yang_areas` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `yang_areas` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `yang_areas` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `yang_areas` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `yang_areas` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `yang_areas` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `yang_areas` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `yang_areas` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `yang_areas` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `yang_areas` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `yang_areas` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `yang_areas` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `yang_areas` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `yang_areas` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `yang_areas` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `yang_areas` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `yang_areas` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `yang_areas` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `yang_areas` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `yang_areas` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `yang_areas` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `yang_areas` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `yang_areas` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `yang_areas` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `yang_areas` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `yang_areas` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `yang_areas` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `yang_areas` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `yang_areas` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `yang_areas` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `yang_areas` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `yang_areas` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `yang_areas` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `yang_areas` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `yang_areas` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `yang_areas` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `yang_areas` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `yang_areas` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `yang_areas` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `yang_areas` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `yang_areas` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `yang_areas` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `yang_areas` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `yang_areas` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `yang_areas` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `yang_areas` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `yang_areas` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `yang_areas` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `yang_areas` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `yang_areas` VALUES ('2379', '288', '单县', '3');
INSERT INTO `yang_areas` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `yang_areas` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `yang_areas` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `yang_areas` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `yang_areas` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `yang_areas` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `yang_areas` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `yang_areas` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `yang_areas` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `yang_areas` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `yang_areas` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `yang_areas` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `yang_areas` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `yang_areas` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `yang_areas` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `yang_areas` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `yang_areas` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `yang_areas` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `yang_areas` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `yang_areas` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `yang_areas` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `yang_areas` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `yang_areas` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `yang_areas` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `yang_areas` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `yang_areas` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `yang_areas` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `yang_areas` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `yang_areas` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `yang_areas` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `yang_areas` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `yang_areas` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `yang_areas` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `yang_areas` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `yang_areas` VALUES ('2415', '292', '费县', '3');
INSERT INTO `yang_areas` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `yang_areas` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `yang_areas` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `yang_areas` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `yang_areas` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `yang_areas` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `yang_areas` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `yang_areas` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `yang_areas` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `yang_areas` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `yang_areas` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `yang_areas` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `yang_areas` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `yang_areas` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `yang_areas` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `yang_areas` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `yang_areas` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `yang_areas` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `yang_areas` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `yang_areas` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `yang_areas` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `yang_areas` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `yang_areas` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `yang_areas` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `yang_areas` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `yang_areas` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `yang_areas` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `yang_areas` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `yang_areas` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `yang_areas` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `yang_areas` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `yang_areas` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `yang_areas` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `yang_areas` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `yang_areas` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `yang_areas` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `yang_areas` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `yang_areas` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `yang_areas` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `yang_areas` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `yang_areas` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `yang_areas` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `yang_areas` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `yang_areas` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `yang_areas` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `yang_areas` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `yang_areas` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `yang_areas` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `yang_areas` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `yang_areas` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `yang_areas` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `yang_areas` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `yang_areas` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `yang_areas` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `yang_areas` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `yang_areas` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `yang_areas` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `yang_areas` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `yang_areas` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `yang_areas` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `yang_areas` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `yang_areas` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `yang_areas` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `yang_areas` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `yang_areas` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `yang_areas` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `yang_areas` VALUES ('2486', '301', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `yang_areas` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `yang_areas` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `yang_areas` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `yang_areas` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `yang_areas` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `yang_areas` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `yang_areas` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `yang_areas` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `yang_areas` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `yang_areas` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `yang_areas` VALUES ('2499', '302', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `yang_areas` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `yang_areas` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `yang_areas` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `yang_areas` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `yang_areas` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `yang_areas` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `yang_areas` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `yang_areas` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `yang_areas` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `yang_areas` VALUES ('2510', '303', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `yang_areas` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `yang_areas` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `yang_areas` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `yang_areas` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `yang_areas` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `yang_areas` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `yang_areas` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `yang_areas` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `yang_areas` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `yang_areas` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `yang_areas` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `yang_areas` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `yang_areas` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `yang_areas` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `yang_areas` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `yang_areas` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `yang_areas` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `yang_areas` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `yang_areas` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `yang_areas` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `yang_areas` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `yang_areas` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `yang_areas` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `yang_areas` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `yang_areas` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `yang_areas` VALUES ('2537', '305', '古县', '3');
INSERT INTO `yang_areas` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `yang_areas` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `yang_areas` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `yang_areas` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `yang_areas` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `yang_areas` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `yang_areas` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `yang_areas` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `yang_areas` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `yang_areas` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `yang_areas` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `yang_areas` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `yang_areas` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `yang_areas` VALUES ('2551', '306', '临县', '3');
INSERT INTO `yang_areas` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `yang_areas` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `yang_areas` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `yang_areas` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `yang_areas` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `yang_areas` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `yang_areas` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `yang_areas` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `yang_areas` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `yang_areas` VALUES ('2561', '307', '应县', '3');
INSERT INTO `yang_areas` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `yang_areas` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `yang_areas` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `yang_areas` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `yang_areas` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `yang_areas` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `yang_areas` VALUES ('2568', '308', '代县', '3');
INSERT INTO `yang_areas` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `yang_areas` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `yang_areas` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `yang_areas` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `yang_areas` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `yang_areas` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `yang_areas` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `yang_areas` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `yang_areas` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `yang_areas` VALUES ('2578', '309', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `yang_areas` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `yang_areas` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `yang_areas` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `yang_areas` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `yang_areas` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `yang_areas` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `yang_areas` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `yang_areas` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `yang_areas` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `yang_areas` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `yang_areas` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `yang_areas` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `yang_areas` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `yang_areas` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `yang_areas` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `yang_areas` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `yang_areas` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `yang_areas` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `yang_areas` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `yang_areas` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `yang_areas` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `yang_areas` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `yang_areas` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `yang_areas` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `yang_areas` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `yang_areas` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `yang_areas` VALUES ('2607', '311', '户县', '3');
INSERT INTO `yang_areas` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `yang_areas` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `yang_areas` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `yang_areas` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `yang_areas` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `yang_areas` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `yang_areas` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `yang_areas` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `yang_areas` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `yang_areas` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `yang_areas` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `yang_areas` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `yang_areas` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `yang_areas` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `yang_areas` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `yang_areas` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `yang_areas` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `yang_areas` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `yang_areas` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `yang_areas` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `yang_areas` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `yang_areas` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `yang_areas` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `yang_areas` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `yang_areas` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `yang_areas` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `yang_areas` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `yang_areas` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `yang_areas` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `yang_areas` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `yang_areas` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `yang_areas` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `yang_areas` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `yang_areas` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `yang_areas` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `yang_areas` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `yang_areas` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `yang_areas` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `yang_areas` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `yang_areas` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `yang_areas` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `yang_areas` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `yang_areas` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `yang_areas` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `yang_areas` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `yang_areas` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `yang_areas` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `yang_areas` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `yang_areas` VALUES ('2656', '317', '华县', '3');
INSERT INTO `yang_areas` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `yang_areas` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `yang_areas` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `yang_areas` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `yang_areas` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `yang_areas` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `yang_areas` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `yang_areas` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `yang_areas` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `yang_areas` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `yang_areas` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `yang_areas` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `yang_areas` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `yang_areas` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `yang_areas` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `yang_areas` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `yang_areas` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `yang_areas` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `yang_areas` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `yang_areas` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `yang_areas` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `yang_areas` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `yang_areas` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `yang_areas` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `yang_areas` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `yang_areas` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `yang_areas` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `yang_areas` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `yang_areas` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `yang_areas` VALUES ('2686', '319', '富县', '3');
INSERT INTO `yang_areas` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `yang_areas` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `yang_areas` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `yang_areas` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `yang_areas` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `yang_areas` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `yang_areas` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `yang_areas` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `yang_areas` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `yang_areas` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `yang_areas` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `yang_areas` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `yang_areas` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `yang_areas` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `yang_areas` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `yang_areas` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `yang_areas` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `yang_areas` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `yang_areas` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `yang_areas` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `yang_areas` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `yang_areas` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `yang_areas` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `yang_areas` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `yang_areas` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `yang_areas` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `yang_areas` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `yang_areas` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `yang_areas` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `yang_areas` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `yang_areas` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `yang_areas` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `yang_areas` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `yang_areas` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `yang_areas` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `yang_areas` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `yang_areas` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `yang_areas` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `yang_areas` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `yang_areas` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `yang_areas` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `yang_areas` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `yang_areas` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `yang_areas` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `yang_areas` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `yang_areas` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `yang_areas` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `yang_areas` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `yang_areas` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `yang_areas` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `yang_areas` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `yang_areas` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `yang_areas` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `yang_areas` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `yang_areas` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `yang_areas` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `yang_areas` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `yang_areas` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `yang_areas` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `yang_areas` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `yang_areas` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `yang_areas` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `yang_areas` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `yang_areas` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `yang_areas` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `yang_areas` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `yang_areas` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `yang_areas` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `yang_areas` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `yang_areas` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `yang_areas` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `yang_areas` VALUES ('2759', '323', '安县', '3');
INSERT INTO `yang_areas` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `yang_areas` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `yang_areas` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `yang_areas` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `yang_areas` VALUES ('2764', '324', '理县', '3');
INSERT INTO `yang_areas` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `yang_areas` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `yang_areas` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `yang_areas` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `yang_areas` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `yang_areas` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `yang_areas` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `yang_areas` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `yang_areas` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `yang_areas` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `yang_areas` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `yang_areas` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `yang_areas` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `yang_areas` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `yang_areas` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `yang_areas` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `yang_areas` VALUES ('2781', '326', '达县', '3');
INSERT INTO `yang_areas` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `yang_areas` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `yang_areas` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `yang_areas` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `yang_areas` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `yang_areas` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `yang_areas` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `yang_areas` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `yang_areas` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `yang_areas` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `yang_areas` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `yang_areas` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `yang_areas` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `yang_areas` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `yang_areas` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `yang_areas` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `yang_areas` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `yang_areas` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `yang_areas` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `yang_areas` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `yang_areas` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `yang_areas` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `yang_areas` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `yang_areas` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `yang_areas` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `yang_areas` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `yang_areas` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `yang_areas` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `yang_areas` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `yang_areas` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `yang_areas` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `yang_areas` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `yang_areas` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `yang_areas` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `yang_areas` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `yang_areas` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `yang_areas` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `yang_areas` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `yang_areas` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `yang_areas` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `yang_areas` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `yang_areas` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `yang_areas` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `yang_areas` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `yang_areas` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `yang_areas` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `yang_areas` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `yang_areas` VALUES ('2829', '331', '马边', '3');
INSERT INTO `yang_areas` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `yang_areas` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `yang_areas` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `yang_areas` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `yang_areas` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `yang_areas` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `yang_areas` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `yang_areas` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `yang_areas` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `yang_areas` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `yang_areas` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `yang_areas` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `yang_areas` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `yang_areas` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `yang_areas` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `yang_areas` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `yang_areas` VALUES ('2846', '332', '木里', '3');
INSERT INTO `yang_areas` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `yang_areas` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `yang_areas` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `yang_areas` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `yang_areas` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `yang_areas` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `yang_areas` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `yang_areas` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `yang_areas` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `yang_areas` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `yang_areas` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `yang_areas` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `yang_areas` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `yang_areas` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `yang_areas` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `yang_areas` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `yang_areas` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `yang_areas` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `yang_areas` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `yang_areas` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `yang_areas` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `yang_areas` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `yang_areas` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `yang_areas` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `yang_areas` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `yang_areas` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `yang_areas` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `yang_areas` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `yang_areas` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `yang_areas` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `yang_areas` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `yang_areas` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `yang_areas` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `yang_areas` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `yang_areas` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `yang_areas` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `yang_areas` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `yang_areas` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `yang_areas` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `yang_areas` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `yang_areas` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `yang_areas` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `yang_areas` VALUES ('2890', '339', '高县', '3');
INSERT INTO `yang_areas` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `yang_areas` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `yang_areas` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `yang_areas` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `yang_areas` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `yang_areas` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `yang_areas` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `yang_areas` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `yang_areas` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `yang_areas` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `yang_areas` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `yang_areas` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `yang_areas` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `yang_areas` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `yang_areas` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `yang_areas` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `yang_areas` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `yang_areas` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `yang_areas` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `yang_areas` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `yang_areas` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `yang_areas` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `yang_areas` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `yang_areas` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `yang_areas` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `yang_areas` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `yang_areas` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `yang_areas` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `yang_areas` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `yang_areas` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `yang_areas` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `yang_areas` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `yang_areas` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `yang_areas` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `yang_areas` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `yang_areas` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `yang_areas` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `yang_areas` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `yang_areas` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `yang_areas` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `yang_areas` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `yang_areas` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `yang_areas` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `yang_areas` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `yang_areas` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `yang_areas` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `yang_areas` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `yang_areas` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `yang_areas` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `yang_areas` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `yang_areas` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `yang_areas` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `yang_areas` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `yang_areas` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `yang_areas` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `yang_areas` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `yang_areas` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `yang_areas` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `yang_areas` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `yang_areas` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `yang_areas` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `yang_areas` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `yang_areas` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `yang_areas` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `yang_areas` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `yang_areas` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `yang_areas` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `yang_areas` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `yang_areas` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `yang_areas` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `yang_areas` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `yang_areas` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `yang_areas` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `yang_areas` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `yang_areas` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `yang_areas` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `yang_areas` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `yang_areas` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `yang_areas` VALUES ('2970', '348', '索县', '3');
INSERT INTO `yang_areas` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `yang_areas` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `yang_areas` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `yang_areas` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `yang_areas` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `yang_areas` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `yang_areas` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `yang_areas` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `yang_areas` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `yang_areas` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `yang_areas` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `yang_areas` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `yang_areas` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `yang_areas` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `yang_areas` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `yang_areas` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `yang_areas` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `yang_areas` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `yang_areas` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `yang_areas` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `yang_areas` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `yang_areas` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `yang_areas` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `yang_areas` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `yang_areas` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `yang_areas` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `yang_areas` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `yang_areas` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `yang_areas` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `yang_areas` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `yang_areas` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `yang_areas` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `yang_areas` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `yang_areas` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `yang_areas` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `yang_areas` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `yang_areas` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `yang_areas` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `yang_areas` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `yang_areas` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `yang_areas` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `yang_areas` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `yang_areas` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `yang_areas` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `yang_areas` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `yang_areas` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `yang_areas` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `yang_areas` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `yang_areas` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `yang_areas` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `yang_areas` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `yang_areas` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `yang_areas` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `yang_areas` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `yang_areas` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `yang_areas` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `yang_areas` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `yang_areas` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `yang_areas` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `yang_areas` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `yang_areas` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `yang_areas` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `yang_areas` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `yang_areas` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `yang_areas` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `yang_areas` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `yang_areas` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `yang_areas` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `yang_areas` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `yang_areas` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `yang_areas` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `yang_areas` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `yang_areas` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `yang_areas` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `yang_areas` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `yang_areas` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `yang_areas` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `yang_areas` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `yang_areas` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `yang_areas` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `yang_areas` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `yang_areas` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `yang_areas` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `yang_areas` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `yang_areas` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `yang_areas` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `yang_areas` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `yang_areas` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `yang_areas` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `yang_areas` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `yang_areas` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `yang_areas` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `yang_areas` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `yang_areas` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `yang_areas` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `yang_areas` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `yang_areas` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `yang_areas` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `yang_areas` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `yang_areas` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `yang_areas` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `yang_areas` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `yang_areas` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `yang_areas` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `yang_areas` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `yang_areas` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `yang_areas` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `yang_areas` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `yang_areas` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `yang_areas` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `yang_areas` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `yang_areas` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `yang_areas` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `yang_areas` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `yang_areas` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `yang_areas` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `yang_areas` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `yang_areas` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `yang_areas` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `yang_areas` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `yang_areas` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `yang_areas` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `yang_areas` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `yang_areas` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `yang_areas` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `yang_areas` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `yang_areas` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `yang_areas` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `yang_areas` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `yang_areas` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `yang_areas` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `yang_areas` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `yang_areas` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `yang_areas` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `yang_areas` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `yang_areas` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `yang_areas` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `yang_areas` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `yang_areas` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `yang_areas` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `yang_areas` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `yang_areas` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `yang_areas` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `yang_areas` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `yang_areas` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `yang_areas` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `yang_areas` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `yang_areas` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `yang_areas` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `yang_areas` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `yang_areas` VALUES ('3121', '369', '景东', '3');
INSERT INTO `yang_areas` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `yang_areas` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `yang_areas` VALUES ('3124', '369', '江城', '3');
INSERT INTO `yang_areas` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `yang_areas` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `yang_areas` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `yang_areas` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `yang_areas` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `yang_areas` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `yang_areas` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `yang_areas` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `yang_areas` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `yang_areas` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `yang_areas` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `yang_areas` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `yang_areas` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `yang_areas` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `yang_areas` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `yang_areas` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `yang_areas` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `yang_areas` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `yang_areas` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `yang_areas` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `yang_areas` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `yang_areas` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `yang_areas` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `yang_areas` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `yang_areas` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `yang_areas` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `yang_areas` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `yang_areas` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `yang_areas` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `yang_areas` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `yang_areas` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `yang_areas` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `yang_areas` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `yang_areas` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `yang_areas` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `yang_areas` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `yang_areas` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `yang_areas` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `yang_areas` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `yang_areas` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `yang_areas` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `yang_areas` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `yang_areas` VALUES ('3167', '375', '维西', '3');
INSERT INTO `yang_areas` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `yang_areas` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `yang_areas` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `yang_areas` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `yang_areas` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `yang_areas` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `yang_areas` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `yang_areas` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `yang_areas` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `yang_areas` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `yang_areas` VALUES ('3178', '376', '金平', '3');
INSERT INTO `yang_areas` VALUES ('3179', '376', '河口', '3');
INSERT INTO `yang_areas` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `yang_areas` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `yang_areas` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `yang_areas` VALUES ('3183', '377', '云县', '3');
INSERT INTO `yang_areas` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `yang_areas` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `yang_areas` VALUES ('3186', '377', '双江', '3');
INSERT INTO `yang_areas` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `yang_areas` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `yang_areas` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `yang_areas` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `yang_areas` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `yang_areas` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `yang_areas` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `yang_areas` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `yang_areas` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `yang_areas` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `yang_areas` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `yang_areas` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `yang_areas` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `yang_areas` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `yang_areas` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `yang_areas` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `yang_areas` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `yang_areas` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `yang_areas` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `yang_areas` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `yang_areas` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `yang_areas` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `yang_areas` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `yang_areas` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `yang_areas` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `yang_areas` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `yang_areas` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `yang_areas` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `yang_areas` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `yang_areas` VALUES ('3216', '381', '新平', '3');
INSERT INTO `yang_areas` VALUES ('3217', '381', '元江', '3');
INSERT INTO `yang_areas` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `yang_areas` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `yang_areas` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `yang_areas` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `yang_areas` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `yang_areas` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `yang_areas` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `yang_areas` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `yang_areas` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `yang_areas` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `yang_areas` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `yang_areas` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `yang_areas` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `yang_areas` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `yang_areas` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `yang_areas` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `yang_areas` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `yang_areas` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `yang_areas` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `yang_areas` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `yang_areas` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `yang_areas` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `yang_areas` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `yang_areas` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `yang_areas` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `yang_areas` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `yang_areas` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `yang_areas` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `yang_areas` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `yang_areas` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `yang_areas` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `yang_areas` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `yang_areas` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `yang_areas` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `yang_areas` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `yang_areas` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `yang_areas` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `yang_areas` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `yang_areas` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `yang_areas` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `yang_areas` VALUES ('3258', '386', '市区', '3');
INSERT INTO `yang_areas` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `yang_areas` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `yang_areas` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `yang_areas` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `yang_areas` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `yang_areas` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `yang_areas` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `yang_areas` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `yang_areas` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `yang_areas` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `yang_areas` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `yang_areas` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `yang_areas` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `yang_areas` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `yang_areas` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `yang_areas` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `yang_areas` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `yang_areas` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `yang_areas` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `yang_areas` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `yang_areas` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `yang_areas` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `yang_areas` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `yang_areas` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `yang_areas` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `yang_areas` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `yang_areas` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `yang_areas` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `yang_areas` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `yang_areas` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `yang_areas` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `yang_areas` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `yang_areas` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `yang_areas` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `yang_areas` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `yang_areas` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `yang_areas` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `yang_areas` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `yang_areas` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `yang_areas` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `yang_areas` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `yang_areas` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `yang_areas` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `yang_areas` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `yang_areas` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `yang_areas` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `yang_areas` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `yang_areas` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `yang_areas` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `yang_areas` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `yang_areas` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `yang_areas` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `yang_areas` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `yang_areas` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `yang_areas` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `yang_areas` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `yang_areas` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `yang_areas` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `yang_areas` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `yang_areas` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `yang_areas` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `yang_areas` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `yang_areas` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `yang_areas` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `yang_areas` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `yang_areas` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `yang_areas` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `yang_areas` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `yang_areas` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `yang_areas` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `yang_areas` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `yang_areas` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `yang_areas` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `yang_areas` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `yang_areas` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `yang_areas` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `yang_areas` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `yang_areas` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `yang_areas` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `yang_areas` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `yang_areas` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `yang_areas` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `yang_areas` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `yang_areas` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `yang_areas` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `yang_areas` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `yang_areas` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `yang_areas` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `yang_areas` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `yang_areas` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `yang_areas` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `yang_areas` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `yang_areas` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `yang_areas` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `yang_areas` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `yang_areas` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `yang_areas` VALUES ('3355', '394', '开县', '3');
INSERT INTO `yang_areas` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `yang_areas` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `yang_areas` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `yang_areas` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `yang_areas` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `yang_areas` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `yang_areas` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `yang_areas` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `yang_areas` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `yang_areas` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `yang_areas` VALUES ('3366', '395', '东区', '3');
INSERT INTO `yang_areas` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `yang_areas` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `yang_areas` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `yang_areas` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `yang_areas` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `yang_areas` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `yang_areas` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `yang_areas` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `yang_areas` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `yang_areas` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `yang_areas` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `yang_areas` VALUES ('3378', '395', '北区', '3');
INSERT INTO `yang_areas` VALUES ('3379', '395', '南区', '3');
INSERT INTO `yang_areas` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `yang_areas` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `yang_areas` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `yang_areas` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `yang_areas` VALUES ('3384', '397', '台北', '3');
INSERT INTO `yang_areas` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `yang_areas` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `yang_areas` VALUES ('3387', '397', '台中', '3');
INSERT INTO `yang_areas` VALUES ('3388', '397', '台南', '3');
INSERT INTO `yang_areas` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `yang_areas` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `yang_areas` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `yang_areas` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `yang_areas` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `yang_areas` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `yang_areas` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `yang_areas` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `yang_areas` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `yang_areas` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `yang_areas` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `yang_areas` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `yang_areas` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `yang_areas` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `yang_areas` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `yang_areas` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `yang_areas` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `yang_areas` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `yang_areas` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `yang_areas` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `yang_areas` VALUES ('3426', '1', 'www', '2');
INSERT INTO `yang_areas` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `yang_areas` VALUES ('602', '61', '平和县', '3');
INSERT INTO `yang_areas` VALUES ('603', '61', '华安县', '3');
INSERT INTO `yang_areas` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `yang_areas` VALUES ('605', '62', '城关区', '3');
INSERT INTO `yang_areas` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `yang_areas` VALUES ('607', '62', '西固区', '3');
INSERT INTO `yang_areas` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `yang_areas` VALUES ('609', '62', '红古区', '3');
INSERT INTO `yang_areas` VALUES ('610', '62', '永登县', '3');
INSERT INTO `yang_areas` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `yang_areas` VALUES ('612', '63', '白银区', '3');
INSERT INTO `yang_areas` VALUES ('613', '63', '平川区', '3');
INSERT INTO `yang_areas` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `yang_areas` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `yang_areas` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `yang_areas` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `yang_areas` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `yang_areas` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `yang_areas` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `yang_areas` VALUES ('621', '64', '漳县', '3');
INSERT INTO `yang_areas` VALUES ('622', '64', '岷县', '3');
INSERT INTO `yang_areas` VALUES ('623', '64', '安定区', '3');
INSERT INTO `yang_areas` VALUES ('624', '64', '安定区', '3');
INSERT INTO `yang_areas` VALUES ('625', '65', '合作市', '3');
INSERT INTO `yang_areas` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `yang_areas` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `yang_areas` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `yang_areas` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `yang_areas` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `yang_areas` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `yang_areas` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `yang_areas` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `yang_areas` VALUES ('634', '67', '金川区', '3');
INSERT INTO `yang_areas` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `yang_areas` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `yang_areas` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `yang_areas` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `yang_areas` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `yang_areas` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `yang_areas` VALUES ('641', '68', '肃北', '3');
INSERT INTO `yang_areas` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `yang_areas` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `yang_areas` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `yang_areas` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `yang_areas` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `yang_areas` VALUES ('647', '69', '广河县', '3');
INSERT INTO `yang_areas` VALUES ('648', '69', '和政县', '3');
INSERT INTO `yang_areas` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `yang_areas` VALUES ('650', '69', '积石山', '3');
INSERT INTO `yang_areas` VALUES ('651', '70', '成县', '3');
INSERT INTO `yang_areas` VALUES ('652', '70', '徽县', '3');
INSERT INTO `yang_areas` VALUES ('653', '70', '康县', '3');
INSERT INTO `yang_areas` VALUES ('654', '70', '礼县', '3');
INSERT INTO `yang_areas` VALUES ('655', '70', '两当县', '3');
INSERT INTO `yang_areas` VALUES ('656', '70', '文县', '3');
INSERT INTO `yang_areas` VALUES ('657', '70', '西和县', '3');
INSERT INTO `yang_areas` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `yang_areas` VALUES ('659', '70', '武都区', '3');
INSERT INTO `yang_areas` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `yang_areas` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `yang_areas` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `yang_areas` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `yang_areas` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `yang_areas` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `yang_areas` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `yang_areas` VALUES ('667', '72', '合水县', '3');
INSERT INTO `yang_areas` VALUES ('668', '72', '华池县', '3');
INSERT INTO `yang_areas` VALUES ('669', '72', '环县', '3');
INSERT INTO `yang_areas` VALUES ('670', '72', '宁县', '3');
INSERT INTO `yang_areas` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `yang_areas` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `yang_areas` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `yang_areas` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `yang_areas` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `yang_areas` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `yang_areas` VALUES ('677', '73', '清水县', '3');
INSERT INTO `yang_areas` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `yang_areas` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `yang_areas` VALUES ('680', '73', '武山县', '3');
INSERT INTO `yang_areas` VALUES ('681', '73', '张家川', '3');
INSERT INTO `yang_areas` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `yang_areas` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `yang_areas` VALUES ('684', '74', '天祝', '3');
INSERT INTO `yang_areas` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `yang_areas` VALUES ('686', '75', '高台县', '3');
INSERT INTO `yang_areas` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `yang_areas` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `yang_areas` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `yang_areas` VALUES ('690', '75', '肃南', '3');
INSERT INTO `yang_areas` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `yang_areas` VALUES ('692', '76', '从化市', '3');
INSERT INTO `yang_areas` VALUES ('693', '76', '天河区', '3');
INSERT INTO `yang_areas` VALUES ('694', '76', '东山区', '3');
INSERT INTO `yang_areas` VALUES ('695', '76', '白云区', '3');
INSERT INTO `yang_areas` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `yang_areas` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `yang_areas` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `yang_areas` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `yang_areas` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `yang_areas` VALUES ('701', '76', '花都区', '3');
INSERT INTO `yang_areas` VALUES ('702', '76', '增城区', '3');
INSERT INTO `yang_areas` VALUES ('703', '76', '从化区', '3');
INSERT INTO `yang_areas` VALUES ('704', '76', '市郊', '3');
INSERT INTO `yang_areas` VALUES ('705', '77', '福田区', '3');
INSERT INTO `yang_areas` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `yang_areas` VALUES ('707', '77', '南山区', '3');
INSERT INTO `yang_areas` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `yang_areas` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `yang_areas` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `yang_areas` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `yang_areas` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `yang_areas` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `yang_areas` VALUES ('714', '79', '南城区', '3');
INSERT INTO `yang_areas` VALUES ('715', '79', '东城区', '3');
INSERT INTO `yang_areas` VALUES ('716', '79', '万江区', '3');
INSERT INTO `yang_areas` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `yang_areas` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `yang_areas` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `yang_areas` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `yang_areas` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `yang_areas` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `yang_areas` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `yang_areas` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `yang_areas` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `yang_areas` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `yang_areas` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `yang_areas` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `yang_areas` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `yang_areas` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `yang_areas` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `yang_areas` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `yang_areas` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `yang_areas` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `yang_areas` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `yang_areas` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `yang_areas` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `yang_areas` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `yang_areas` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `yang_areas` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `yang_areas` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `yang_areas` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `yang_areas` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `yang_areas` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `yang_areas` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `yang_areas` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `yang_areas` VALUES ('747', '80', '南海区', '3');
INSERT INTO `yang_areas` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `yang_areas` VALUES ('749', '80', '三水区', '3');
INSERT INTO `yang_areas` VALUES ('750', '80', '高明区', '3');
INSERT INTO `yang_areas` VALUES ('751', '81', '东源县', '3');
INSERT INTO `yang_areas` VALUES ('752', '81', '和平县', '3');
INSERT INTO `yang_areas` VALUES ('753', '81', '源城区', '3');
INSERT INTO `yang_areas` VALUES ('754', '81', '连平县', '3');
INSERT INTO `yang_areas` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `yang_areas` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `yang_areas` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `yang_areas` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `yang_areas` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `yang_areas` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `yang_areas` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `yang_areas` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `yang_areas` VALUES ('763', '83', '江海区', '3');
INSERT INTO `yang_areas` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `yang_areas` VALUES ('765', '83', '新会区', '3');
INSERT INTO `yang_areas` VALUES ('766', '83', '台山市', '3');
INSERT INTO `yang_areas` VALUES ('767', '83', '开平市', '3');
INSERT INTO `yang_areas` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `yang_areas` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `yang_areas` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `yang_areas` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `yang_areas` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `yang_areas` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `yang_areas` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `yang_areas` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `yang_areas` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `yang_areas` VALUES ('777', '85', '高州市', '3');
INSERT INTO `yang_areas` VALUES ('778', '85', '化州市', '3');
INSERT INTO `yang_areas` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `yang_areas` VALUES ('780', '85', '电白县', '3');
INSERT INTO `yang_areas` VALUES ('781', '86', '梅县', '3');
INSERT INTO `yang_areas` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `yang_areas` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `yang_areas` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `yang_areas` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `yang_areas` VALUES ('786', '86', '五华县', '3');
INSERT INTO `yang_areas` VALUES ('787', '86', '平远县', '3');
INSERT INTO `yang_areas` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `yang_areas` VALUES ('789', '87', '清城区', '3');
INSERT INTO `yang_areas` VALUES ('790', '87', '英德市', '3');
INSERT INTO `yang_areas` VALUES ('791', '87', '连州市', '3');
INSERT INTO `yang_areas` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `yang_areas` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `yang_areas` VALUES ('794', '87', '清新县', '3');
INSERT INTO `yang_areas` VALUES ('795', '87', '连山', '3');
INSERT INTO `yang_areas` VALUES ('796', '87', '连南', '3');
INSERT INTO `yang_areas` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `yang_areas` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `yang_areas` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `yang_areas` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `yang_areas` VALUES ('801', '88', '金平区', '3');
INSERT INTO `yang_areas` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `yang_areas` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `yang_areas` VALUES ('804', '89', '城区', '3');
INSERT INTO `yang_areas` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `yang_areas` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `yang_areas` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `yang_areas` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `yang_areas` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `yang_areas` VALUES ('810', '90', '武江区', '3');
INSERT INTO `yang_areas` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `yang_areas` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `yang_areas` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `yang_areas` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `yang_areas` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `yang_areas` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `yang_areas` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `yang_areas` VALUES ('818', '90', '乳源', '3');
INSERT INTO `yang_areas` VALUES ('819', '91', '江城区', '3');
INSERT INTO `yang_areas` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `yang_areas` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `yang_areas` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `yang_areas` VALUES ('823', '92', '云城区', '3');
INSERT INTO `yang_areas` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `yang_areas` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `yang_areas` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `yang_areas` VALUES ('827', '92', '云安县', '3');
INSERT INTO `yang_areas` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `yang_areas` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `yang_areas` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `yang_areas` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `yang_areas` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `yang_areas` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `yang_areas` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `yang_areas` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `yang_areas` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `yang_areas` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `yang_areas` VALUES ('838', '94', '高要市', '3');
INSERT INTO `yang_areas` VALUES ('839', '94', '四会市', '3');
INSERT INTO `yang_areas` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `yang_areas` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `yang_areas` VALUES ('842', '94', '封开县', '3');
INSERT INTO `yang_areas` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `yang_areas` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `yang_areas` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `yang_areas` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `yang_areas` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `yang_areas` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `yang_areas` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `yang_areas` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `yang_areas` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `yang_areas` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `yang_areas` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `yang_areas` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `yang_areas` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `yang_areas` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `yang_areas` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `yang_areas` VALUES ('858', '97', '江南区', '3');
INSERT INTO `yang_areas` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `yang_areas` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `yang_areas` VALUES ('861', '97', '马山县', '3');
INSERT INTO `yang_areas` VALUES ('862', '97', '上林县', '3');
INSERT INTO `yang_areas` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `yang_areas` VALUES ('864', '97', '横县', '3');
INSERT INTO `yang_areas` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `yang_areas` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `yang_areas` VALUES ('867', '98', '象山区', '3');
INSERT INTO `yang_areas` VALUES ('868', '98', '七星区', '3');
INSERT INTO `yang_areas` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `yang_areas` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `yang_areas` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `yang_areas` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `yang_areas` VALUES ('873', '98', '全州县', '3');
INSERT INTO `yang_areas` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `yang_areas` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `yang_areas` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `yang_areas` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `yang_areas` VALUES ('878', '98', '资源县', '3');
INSERT INTO `yang_areas` VALUES ('879', '98', '永福县', '3');
INSERT INTO `yang_areas` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `yang_areas` VALUES ('881', '98', '恭城', '3');
INSERT INTO `yang_areas` VALUES ('882', '99', '右江区', '3');
INSERT INTO `yang_areas` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `yang_areas` VALUES ('884', '99', '平果县', '3');
INSERT INTO `yang_areas` VALUES ('885', '99', '西林县', '3');
INSERT INTO `yang_areas` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `yang_areas` VALUES ('887', '99', '德保县', '3');
INSERT INTO `yang_areas` VALUES ('888', '99', '田林县', '3');
INSERT INTO `yang_areas` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `yang_areas` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `yang_areas` VALUES ('891', '99', '田东县', '3');
INSERT INTO `yang_areas` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `yang_areas` VALUES ('893', '99', '隆林', '3');
INSERT INTO `yang_areas` VALUES ('894', '100', '海城区', '3');
INSERT INTO `yang_areas` VALUES ('895', '100', '银海区', '3');
INSERT INTO `yang_areas` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `yang_areas` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `yang_areas` VALUES ('898', '101', '江州区', '3');
INSERT INTO `yang_areas` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `yang_areas` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `yang_areas` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `yang_areas` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `yang_areas` VALUES ('903', '101', '大新县', '3');
INSERT INTO `yang_areas` VALUES ('904', '101', '天等县', '3');
INSERT INTO `yang_areas` VALUES ('905', '102', '港口区', '3');
INSERT INTO `yang_areas` VALUES ('906', '102', '防城区', '3');
INSERT INTO `yang_areas` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `yang_areas` VALUES ('908', '102', '上思县', '3');
INSERT INTO `yang_areas` VALUES ('909', '103', '港北区', '3');
INSERT INTO `yang_areas` VALUES ('910', '103', '港南区', '3');
INSERT INTO `yang_areas` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `yang_areas` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `yang_areas` VALUES ('913', '103', '平南县', '3');
INSERT INTO `yang_areas` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `yang_areas` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `yang_areas` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `yang_areas` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `yang_areas` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `yang_areas` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `yang_areas` VALUES ('920', '104', '都安', '3');
INSERT INTO `yang_areas` VALUES ('921', '104', '罗城', '3');
INSERT INTO `yang_areas` VALUES ('922', '104', '巴马', '3');
INSERT INTO `yang_areas` VALUES ('923', '104', '环江', '3');
INSERT INTO `yang_areas` VALUES ('924', '104', '大化', '3');
INSERT INTO `yang_areas` VALUES ('925', '105', '八步区', '3');
INSERT INTO `yang_areas` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `yang_areas` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `yang_areas` VALUES ('928', '105', '富川', '3');
INSERT INTO `yang_areas` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `yang_areas` VALUES ('930', '106', '合山市', '3');
INSERT INTO `yang_areas` VALUES ('931', '106', '象州县', '3');
INSERT INTO `yang_areas` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `yang_areas` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `yang_areas` VALUES ('934', '106', '金秀', '3');
INSERT INTO `yang_areas` VALUES ('935', '107', '城中区', '3');
INSERT INTO `yang_areas` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `yang_areas` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `yang_areas` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `yang_areas` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `yang_areas` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `yang_areas` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `yang_areas` VALUES ('942', '107', '融安县', '3');
INSERT INTO `yang_areas` VALUES ('943', '107', '融水', '3');
INSERT INTO `yang_areas` VALUES ('944', '107', '三江', '3');
INSERT INTO `yang_areas` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `yang_areas` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `yang_areas` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `yang_areas` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `yang_areas` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `yang_areas` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `yang_areas` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `yang_areas` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `yang_areas` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `yang_areas` VALUES ('954', '109', '藤县', '3');
INSERT INTO `yang_areas` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `yang_areas` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `yang_areas` VALUES ('957', '110', '北流市', '3');
INSERT INTO `yang_areas` VALUES ('958', '110', '容县', '3');
INSERT INTO `yang_areas` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `yang_areas` VALUES ('960', '110', '博白县', '3');
INSERT INTO `yang_areas` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `yang_areas` VALUES ('962', '111', '南明区', '3');
INSERT INTO `yang_areas` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `yang_areas` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `yang_areas` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `yang_areas` VALUES ('966', '111', '白云区', '3');
INSERT INTO `yang_areas` VALUES ('967', '111', '小河区', '3');
INSERT INTO `yang_areas` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `yang_areas` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `yang_areas` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `yang_areas` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `yang_areas` VALUES ('972', '111', '修文县', '3');
INSERT INTO `yang_areas` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `yang_areas` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `yang_areas` VALUES ('975', '112', '关岭', '3');
INSERT INTO `yang_areas` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `yang_areas` VALUES ('977', '112', '紫云', '3');
INSERT INTO `yang_areas` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `yang_areas` VALUES ('979', '112', '普定县', '3');
INSERT INTO `yang_areas` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `yang_areas` VALUES ('981', '113', '大方县', '3');
INSERT INTO `yang_areas` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `yang_areas` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `yang_areas` VALUES ('984', '113', '织金县', '3');
INSERT INTO `yang_areas` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `yang_areas` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `yang_areas` VALUES ('987', '113', '威宁', '3');
INSERT INTO `yang_areas` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `yang_areas` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `yang_areas` VALUES ('990', '114', '水城县', '3');
INSERT INTO `yang_areas` VALUES ('991', '114', '盘县', '3');
INSERT INTO `yang_areas` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `yang_areas` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `yang_areas` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `yang_areas` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `yang_areas` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `yang_areas` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `yang_areas` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `yang_areas` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `yang_areas` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `yang_areas` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `yang_areas` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `yang_areas` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `yang_areas` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `yang_areas` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `yang_areas` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `yang_areas` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `yang_areas` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `yang_areas` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `yang_areas` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `yang_areas` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `yang_areas` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `yang_areas` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `yang_areas` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `yang_areas` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `yang_areas` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `yang_areas` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `yang_areas` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `yang_areas` VALUES ('1019', '116', '三都', '3');
INSERT INTO `yang_areas` VALUES ('1020', '117', '兴义市', '3');

-- ----------------------------
-- Table structure for `yang_article`
-- ----------------------------
DROP TABLE IF EXISTS `yang_article`;
CREATE TABLE `yang_article` (
  `article_id` int(32) NOT NULL AUTO_INCREMENT,
  `position_id` int(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` mediumtext NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sign` int(4) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_article
-- ----------------------------
INSERT INTO `yang_article` VALUES ('27', '1', '发生的发生多岁的', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;亲爱的元宝网用户：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-siz', '1458026416', '0', '', '1');
INSERT INTO `yang_article` VALUES ('132', '1', '元宝网币币交易全新改版啦！', '&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;元宝网币币交易全新改版啦！&lt;/span&gt; \r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;全新的排版布局和数据展示方式，为你呈现更清晰直观的交易动态，及时把握市场行情，获取最大利益。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;申请上币请发送相关资料至邮箱：&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;shangbi@yuanbao.com&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;，元宝网收到邮件后会发送上币申请表，请耐心等待！&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&', '1458028654', '0', '', '1');
INSERT INTO `yang_article` VALUES ('34', '1', '测试标红', '&lt;p&gt;\r\n	我来测试是否标红&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 3月16\r\n&lt;/p&gt;', '1458098396', '0', '', '1');
INSERT INTO `yang_article` VALUES ('42', '1', '服务条款', '<h3>\r\n	第一条 服务条款的确认与接纳\r\n</h3>\r\n<p>\r\n	（一）以下所述条款和条件即构成您与元宝网平台就使用服务所达成的协议。当您完成注册并在本服务条款前方囗打√时，即表示双方已就服务条款\r\n达成一致意见，该服务协议对您及本网具有约束力，包括但不限于本协议、元宝网平台会员服务协议和隐私权政策等。如果您不同意接受全部的条款和条件，请不要\r\n在口打√，此时，双方未就服务条款达成一致意见，该服务协议对您及本网不具有约束力，本网亦无义务向您提供元宝网平台的服务。\r\n</p>\r\n<p>\r\n	（二）在合同有效期内，元宝网平台有权随时修改本协议条款和条件，在其网站公布后即行对您及本网具有约束力。在元宝网平台修改服务条款后，您继续使用服务应被视作您已接受了修改后的条款。\r\n</p>\r\n<p>\r\n	（三）除非得到元宝网平台的书面授权，任何人将不得修改本协议。\r\n</p>\r\n<p>\r\n	（四）元宝网平台提供的网络服务的所有权和最终解释权归元宝网络交易有限公司（香港）所有。 本协议中，被许可使用元宝网平台服务的用户均简称为“用户”。\r\n</p>\r\n<h3>\r\n	第二条 服务内容\r\n</h3>\r\n<p>\r\n	（一）在用户同意遵守本协议条款前提下，用户有权在元宝网平台网站指定位置上发布符合中国各项法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）及包括部门规章、地方规章、决定、命令等在内的其他各类规范性文件以及元宝网平台网站服务条款要求的信息。\r\n</p>\r\n<p>\r\n	（二）元宝网平台运用自己的操作系统通过国际互联网络为用户顺利实现在元宝网平台网站的信息发布提供服务。\r\n</p>\r\n<h3>\r\n	第三条 用户权利义务\r\n</h3>\r\n<p>\r\n	（一）用户有权在元宝网平台网站指定位置上发布符合中国各项法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）及包括部门规\r\n章、地方规章、决定、命令等在内的其他各类规范性文件以及元宝网平台网站服务条款要求的信息，并依据本平台服务规则享受元宝网平台提供的各项服务。\r\n</p>\r\n<p>\r\n	（二）用户有义务保证其发布的信息符合法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）及包括部门规章、地方规章、决定、命\r\n令等在内的其他各类规范性文件及元宝网平台网站的相关服务规则，并及时对已发布的信息进行维护和管理。因用户发布的信息不合法产生任何争议，均由用户自己\r\n负责，与本平台不存在任何关系。\r\n</p>\r\n<p>\r\n	（三）考虑到元宝网平台产品服务的重要性，用户有义务保证其提供的所有信息（包括但不限于个人注册信息、 \r\n发布的项目信息等）真实、准确，无重大遗漏或误导。如因用户提供的信息不准确，不真实，不合法有效或有重大遗漏或误导，元宝网平台保留结束用户使用元宝网\r\n平台各项服务的权利，同时用户应赔偿因此造成的一切损失。\r\n</p>\r\n<p>\r\n	（四）除元宝网平台规定的条件外，用户因其在元宝网平台网站的信息发布行为而达成的交易，应当与交易对方约定具体交易条件并完成交易。同时，用户明确知道，自己应当对元宝网平台上发布的项目做出独立的投资判断，元宝网平台不对用户的投资判断承担任何责任。\r\n</p>\r\n<p>\r\n	（五）元宝网只接受实名充值，提现时银行等姓名信息必须与您的认证姓名一致。我承认提交的信息属于本人所有，不存在冒用、盗用他人证件的行为。因冒用、盗用他人证件造成的一切后果，由本人承担。\r\n</p>\r\n<p>\r\n	（六）元宝网有合理的理由怀疑用户提供虚假身份信息时，有权拒绝注册或者冻结、注销已经注册的账户及资产。\r\n</p>\r\n<h3>\r\n	第四条 元宝网平台权利义务\r\n</h3>\r\n<p>\r\n	（一）元宝网平台应运用专业电子技术为用户发布信息提供技术服务。\r\n</p>\r\n<p>\r\n	（二）如用户有如下行为之一的，元宝网平台有权立即停止用户所发布的信息的技术支持，并保存有关记录， \r\n必要时可依据法律法规等规定向国家有关机关报告，并且删除含有该内容的地址、目录或关闭服务器。用户应承担全部法律责任，并赔偿元宝网平台由此受到的损\r\n失，包括合理的追索费用：<br />\r\n1、用户提供的产品有侵害任何第三方知识产权、财产权等合法权益，或可能对第三方造成不利影响或侵害；<br />\r\n2、用户利用元宝网平台提供之网络平台进行任何犯罪活动，或宣传散播法律法规禁止散播的信息，或一切损害元宝网平台利益的活动；<br />\r\n3、用户有违反本协议任何条款的行为，经元宝网平台警告后仍未更正的；<br />\r\n4、用户的行为干扰元宝网平台的服务。\r\n</p>\r\n<p>\r\n	（三）用户同意元宝网平台有权依据本协议及本平台服务规则对用户的涉嫌违反法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）\r\n及包括部门规章、地方规章、决定、命令等在内的其他各类规范性文件以及元宝网平台网站服务条款的行为采取行动，包括但不限于中断其帐号、删除地址、目录或\r\n关闭服务器等。\r\n</p>\r\n<p>\r\n	（四）元宝网平台或元宝网络交易有限公司（香港）对本平台发布的信息真实性、及时性和有效性不做任何形式的担保， 对该等信息的理解和认识应当依赖于用户自身判断。\r\n</p>\r\n<h3>\r\n	第五条 免责及责任的限制与排除\r\n</h3>\r\n<p>\r\n	（一）根据本协议，元宝网平台仅为用户提供网络空间及技术服务，对用户发布的信息的真实性、合法性、及时性和有效性不作任何性质的担保及保\r\n证，用户理解并使用这些信息应当依赖自身的独立思考和投资判断，除另有说明外，用户不会从元宝网络交易有限公司（香港）收到口头或书面的意见或信息。元宝\r\n网平台对用户的投资收益不做任何承诺，同时对用户的投资损失不承担任何责任。\r\n</p>\r\n<p>\r\n	（二）元宝网络交易有限公司（香港）尽力维护元宝网平台的稳定，但不就电讯系统或互联网的中断或无法运作、技术 故障、计算机错误或病毒、信息损坏或丢失或由此而产生的其他任何性质的破坏而向用户或任何第三方承担赔偿责任。\r\n</p>\r\n<p>\r\n	（三）用户明确同意使用元宝网平台服务的风险由用户个人承担。元宝网平台不担保服务一定能满足用户的要求，用户理解并接受下载或通过元宝网平台产品服务取得的任何信息资料取决于用户自己，并由用户自己承担系统受损、资料丢失以及其它任何风险。\r\n</p>\r\n<p>\r\n	（四）各方承认本条款反映了各方就协商谈判达成的一致意见。各方均完全了解本条款的后果并进一步承认本条款的合理性。\r\n</p>\r\n<h3>\r\n	第六条 隐私政策与安全\r\n</h3>\r\n<p>\r\n	（一）尊重用户个人隐私是元宝网平台的一项基本政策，元宝网平台将尽力维护用户隐私。除非用户授权，元宝网平台一定不会公开、修改或透露用户的注册资料，亦不会公开元宝网平台各项服务中的非公开内容，但以下情况除外：<br />\r\n1、为符合国家法律法规强制性规定，或应有权机关要求，提供用户在元宝网平台的网页上发布的信息内容及其发布时间、互联网地址或者域名。<br />\r\n2、为维护元宝网平台的知识产权和其他重要权利。<br />\r\n3、在紧急情况下为维护用户个人和社会大众的隐私安全。<br />\r\n4、根据本条款相关规定或者元宝网平台认为必要的其他情况下。\r\n</p>\r\n<p>\r\n	（二）用户一旦注册成功成为用户，即得到一个密码和帐号。如果用户未保管好自己的帐号和密码而对用户、 \r\n元宝网平台或第三方造成的损害，用户将负全部责任。另外，每个用户应对其在对应帐户中的所有活动和事件承担全部责任 。 \r\n用户可随时改变您的密码和图标，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，应立即通告元宝网络交易有限公\r\n司（香港）。\r\n</p>\r\n<h3>\r\n	第七条 知识产权\r\n</h3>\r\n<p>\r\n	（一）元宝网平台服务涉及到的产品的所有权以及相关软件的知识产权归元宝网络交易有限公司（香港）所有。\r\n</p>\r\n<p>\r\n	（二）在本平台内，无论是用户原创或是用户得到著作权人授权转载的作品，用户上载的行为即意味着用户或用户代理的著作权人授权元宝网平台及\r\n元宝网络交易有限公司（香港）对上载作品享有不可撤销的永久的使用权和收益权且无需支付任何费用，但用户或原著作权人仍保有上载作品的著作权。\r\n</p>\r\n<p>\r\n	（三）用户应当保证其发布的信息不侵犯任何第三方知识产权及其他权利，否则由此给第三方及元宝网平台造成的损失由用户承担。\r\n</p>\r\n<h3>\r\n	第八条 不可抗力\r\n</h3>\r\n<p>\r\n	如果由于黑客攻击或政府管制或网络通讯瘫痪等原因，致使发生的不能预见的事件，双方均确认此属不可抗力；双方应按照不可抗力对影响履行本协议的程度，协商决定是否解除本协议、免除履行本协议的部分义务， 或者延期履行本协议。\r\n</p>\r\n<h3>\r\n	第九条 法律及争议解决\r\n</h3>\r\n<p>\r\n	（一）本协议签署、效力、解释和执行以及争议之解决均应适用中国法律。\r\n</p>\r\n<p>\r\n	（二）因本协议引起之双方争议，应该通过友好协商解决；协商不成的，任一方均可向元宝网络交易有限公司（香港）所在地人民法院起诉。\r\n</p>\r\n<h3>\r\n	第十条 期限\r\n</h3>\r\n<p>\r\n	本协议的期限自用户点击同意之日起算，至用户注销账号之日起自动终止。\r\n</p>\r\n<h3>\r\n	第十一条 协议的转让\r\n</h3>\r\n<p>\r\n	除非取得元宝网平台的事先书面同意。用户不得将其在本协议项下的权利与义务转让给任何第三方。否则，第三方所造成的任何损害后果或给该第三方造成任何损害的，均由用户承担全部责任，与本元宝网平台无关。\r\n</p>\r\n<h3>\r\n	第十二条 其他\r\n</h3>\r\n<p>\r\n	（一）本协议构成用户和元宝网平台间就使用平台的完整的协议，并取代双方就有关本协议所载任何事项于先前以口头及书面达成的共识。\r\n</p>\r\n<p>\r\n	（二）如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部分则仍具有法律效力。\r\n</p>\r\n<p>\r\n	（三）本协议的标题仅为方便阅读所设，非对条款的定义、限制、解释或描述其范围或界限。\r\n</p>\r\n<p>\r\n	（四）元宝网平台于用户过失或违约时放弃本协议规定的权利的，不得视为其对用户的其他或以后同类之过失 或违约行为弃权。\r\n</p>\r\n<p>\r\n	（五）本平台不参与任何买卖行为，买卖双方均为本站注册用户。作为注册用户，您应保证您是帐户中所有资金的合法拥有者， \r\n您进行的交易不侵犯任何第三方的权利或适用法律。在法律允许范围内，本网站将不对用户的任何损害、利润损失、收入损失、业务损失、数据损失负责，除非损失\r\n是因本网站违反此服务条款所致。本网站不对任何因网络故障、网络中断或网络延迟，以及其它任何因无法正常访问本网站而导致的损失负责。 \r\n如果本网站的内容中包括由第三方提供的其它网站链接，这些链接仅用于提供信息，我们无法对其内容负责， 本网站不对因使用其内容而导致的损失负责。 \r\n如果出现诈骗或是其他违法行为，本网站将向有关监管部门提供所有必需的用户信息。 当监管部门要求调查诈骗或其他非法行为时，用户的帐户可能会被冻结。\r\n</p>\r\n<p>\r\n	（六）用户注册以及在注册后更改的联系方式均为有效联系方式，均能产生送达的法律效力。元宝网平台或元宝网络交易有限公司（香港）以邮寄方\r\n式送达的，以邮件签收当日视为送达；以电子邮件方式送达的，邮件发送后即视为送达；以传真方式送达的，在发出传真时视为送达；以挂号信方式送达的，挂号寄\r\n出或者投邮当日视为送达。\r\n</p>\r\n<p>\r\n	（七）请您在注册时，认真阅读本协议条款，若您有任何异议或需要本网说明的，请随时联系本网站以获得解释和说明。若您未向本网站提出异议或\r\n要求说明解释，则表明您对本协议之条款已有充分的认识和理解，且视为元宝网平台或元宝网络交易有限公司（香港）已向您做了充分的解释和说明。\r\n</p>\r\n<h3 style=\"font-weight:normal;\">\r\n	元宝网平台或元宝网络交易有限公司（香港）保留最终解释权。\r\n</h3>', '1458052273', '0', '', '0');
INSERT INTO `yang_article` VALUES ('1', '1', '新会员规则', '&lt;div class=&quot;tagContent selectTag&quot;&gt;\r\n	&lt;ul class=&quot;ybc_con&quot;&gt;\r\n		&lt;li&gt;\r\n			新会员规则\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				1. 会员升级需逐级升，不可越级\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 当升至下一级别时，相应的等级特权即时生效，会员返还重新按照最新等级计算（原等级不再返还）。\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 会员返还结束后将不再返还，会员等级保持不变。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				2. 升级时效\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 当前等级升级下一级的有效时间为30天，超过30天后升级将按照超时升级费用收取；（30天每天24小时计算）\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				3. 金元宝最低理财金额\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 当用户理财金额达到等级要求，或者被推荐用户理财金额达到等级要求，才可升级。\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 当用户理财金额低于当前等级要求，每日等级返还暂停，其他奖励不变；待用户理财金额重新达到当前等级要求后继续返还。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				4. 金元宝活期理财用户每天参与价值10000元理财积分的配送，按投资额占平台总投资额的比例分发\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				5. 推荐奖励 = （被推荐人理财积分收益 + 被推荐人会员返还收益）* 推荐人会员等级对应的推荐奖励比例\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 被推荐人理财积分收益不包含其作为推荐人获得的理财积分。\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 推荐人根据自身的会员等级决定推荐奖励比例。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				6. 会员返还结束后\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 若用户不满足最低理财金额要求，则会员特权（金元宝收益、理财积分收益、推荐奖励、提现手续费）将按照VIP1执行；\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;• 当用户重新满足最低理财金额要求后，将重新享受原VIP等级特权。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;p&gt;\r\n				新老会员规则对接\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				1. 老会员仍按照原返还规则返还；\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				2. 新会员规则上线后，老会员升级将按照新规则收取升级费用；\r\n			&lt;/p&gt;\r\n			&lt;p&gt;\r\n				3. 老会员升级后，所有规则都按照新会员规则执行。\r\n			&lt;/p&gt;\r\n		&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt;', '1458100146', '0', '', '1');
INSERT INTO `yang_article` VALUES ('2', '1', '【公告】元宝网加强反洗钱措施的公告', '为了响应央行等国家五部委《关于防范比特币风险的通知》，以及落实《中华人民共和国反洗钱法》的规定，维护正常的交易秩序，从即日起，元宝网将执行以下反洗钱措施：<br />\r\n<br />\r\n<strong>实名认证</strong><br />\r\n1. 用户注册时，必须提供真实姓名，真实姓名经实名认证后将不能够更改，请务必如实填写；<br />\r\n2.	元宝网只接受实名充值、提现，充值及提现银行卡信息必须与您的实名认证信息一致；<br />\r\n3.	注册元宝网账户需同意：我承认提交的信息属于本人所有，不存在冒用、盗用他人证件的行为。因冒用、盗用他人证件造成的一切后果，由本人承担；<br />\r\n4. 用户更改交易密码后，应当提供清晰的手持身份证明照片，元宝网将对用户提供的身份信息进行识别和比对；<br />\r\n5. 元宝网有合理的理由怀疑用户提供虚假身份信息时，有权拒绝注册或者冻结、注销已经注册的账户及资产。<br />\r\n<br />\r\n<strong>资金进出审核</strong><br />\r\n1. 根据国家反洗钱政策及保障客户资产安全，汇款人姓名必须和元宝网实名认证姓名一致，提现账户的姓名也必须与元宝网实名认证姓名一致；<br />\r\n2 .对于超过5万以上的人民币提现及大额的提币，我们将对用户身份通过客服电话（4008-367-667）进行人工核实；<br />\r\n3.	元宝网将参照《金融机构大额交易和可疑交易报告管理办法》的规定，保存大额交易和有洗钱嫌疑的交易记录，在监管机构要求提供大额交易和可疑交易的记录时，向监管机构提供；<br />\r\n4.	元宝网将对用户身份信息以及大额交易、可疑交易记录进行保存，依法协助、配合司法机关和行政执法机关打击洗钱活动，依照法律法规的规定协助司法机关、海关、税务等部门查询、冻结和扣划客户存款。<br />\r\n<br />\r\n<strong>犯罪线索举报</strong><br />\r\n元宝网已成立专门风险控制部门，对各类违法犯罪活动进行监控。如果您有违法犯罪的线索，请通过以下联系方式联系我们或者有关国家机关：<br />\r\n1. 元宝网反洗钱举报电话：010-57741547 联系人: 李怀顺<br />\r\n2. 中国反洗钱监测分析中心举报电话：	010－88092000  电子邮箱：fiureport@pbc.gov.cn<br />\r\n3. 网络110报警网址：http://www.cyberpolice.cn', '1458983678', '0', '', '1');
INSERT INTO `yang_article` VALUES ('4', '1', '行情API', '&lt;ul&gt;\r\n	&lt;h3&gt;\r\n		获取行情 (GET)\r\n	&lt;/h3&gt;\r\n	&lt;li&gt;\r\n		BTC：http://api.btctrade.com/api/ticker?coin=btc\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		LTC：http://api.btctrade.com/api/ticker?coin=ltc\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DOGE：http://api.btctrade.com/api/ticker?coin=doge\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		YBC：http://api.btctrade.com/api/ticker?coin=ybc\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		返回结果示例：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		{&quot;high&quot;:0,&quot;low&quot;:0,&quot;buy&quot;:1850,&quot;sell&quot;:1851.1,&quot;last&quot;:1851.1,&quot;vol&quot;:10000,&quot;time&quot;:1420711226}\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		返回结果说明：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		high: 最高价\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		low: 最低价\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		buy: 买一价\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		sell: 卖一价\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		last: 最新成交价\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		vol: 成交量(最近的24小时)\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		time: 返回数据时服务器时间\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n	&lt;h3&gt;\r\n		深度行情 (GET)\r\n	&lt;/h3&gt;\r\n	&lt;li&gt;\r\n		BTC：http://api.btctrade.com/api/depth?coin=btc\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		LTC：http://api.btctrade.com/api/depth?coin=ltc\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DOGE：http://api.btctrade.com/api/depth?coin=doge\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		YBC：http://api.btctrade.com/api/depth?coin=ybc\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		返回结果示例：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		{&quot;result&quot;:true,&quot;asks&quot;:[[&quot;2350&quot;,&quot;2.607&quot;]],&quot;bids&quot;:[[&quot;1850&quot;,&quot;1.031&quot;]]}\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		返回结果说明：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		asks: 卖方深度[价格, 委单量]，价格从高到低排序\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		bids: 买方深度[价格, 委单量]，价格从高到低排序\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;ul&gt;\r\n	&lt;h3&gt;\r\n		成交记录 (GET)\r\n	&lt;/h3&gt;\r\n	&lt;li&gt;\r\n		BTC：http://api.btctrade.com/api/trades?coin=btc\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		LTC：http://api.btctrade.com/api/trades?coin=ltc\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DOGE：http://api.btctrade.com/api/trades?coin=doge\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		YBC：http://api.btctrade.com/api/trades?coin=ybc\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		请求参数：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		coin: 交易币种\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		since: 根据记录id返回，默认返回最新的100条交易记录\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		返回结果示例：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		[{&quot;date&quot;:&quot;1420713686&quot;,&quot;price&quot;:1773.1,&quot;amount&quot;:0.656,&quot;tid&quot;:&quot;5236256&quot;,&quot;type&quot;:&quot;buy&quot;}]\r\n	&lt;/li&gt;\r\n	&lt;h4&gt;\r\n		返回结果说明：\r\n	&lt;/h4&gt;\r\n	&lt;li&gt;\r\n		date: 成交时间\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		price: 交易价格\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		amount: 交易数量\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		tid: 交易ID\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		type: 交易类型\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;', '1458108741', '0', '', '1');
INSERT INTO `yang_article` VALUES ('5', '118', '关于我们', '&lt;div class=&quot;main_content&quot;&gt;\r\n	&lt;div class=&quot;page&quot;&gt;\r\n		&lt;div class=&quot;main-content&quot;&gt;\r\n			&lt;div&gt;\r\n				本站是一个统计收录虚拟币山寨币的专业网站，对新手玩币族提供一个选币的导航平台。本站坚持以最公正的态度对待每一个币种。同时提供大家评论讨论的机会，让我们一起去发现新币，热币。一起去摒弃黑币平台。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				1、所有收录币种最新虚拟币、山寨币网均没有经过评测，请网友自行分析投资与挖矿风险。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				2、对于已收录虚拟币、山寨币但缺乏操守的币种，请网友告知，本站将予以下架删除等妥当处理。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				3、炒币有风险，投资需谨慎。选好平台是关键。山寨币但缺乏操守的币种，请网友告知，本站将予以下架删除等妥当处理。\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;br /&gt;', '1458797434', '0', '', '0');
INSERT INTO `yang_article` VALUES ('6', '120', '提现人民币说明', '1. 提现手续费0.3%，请仔细确认后再操作。&lt;br /&gt;\r\n&lt;p&gt;\r\n	2. 单笔提现限额100元——5万元；单日累计最大提现限额50万元。&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;span style=&quot;color:#E53333;&quot;&gt;3. 由于近期充值提现业务量暴增，提现到账时间临时延长到24小时，敬请谅解!&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;', '1458808275', '0', '', '0');
INSERT INTO `yang_article` VALUES ('51', '61', '交易指南', '<h1>\r\n	交易指南\r\n</h1>\r\n<p>\r\n	1.首先，进入聚币网首页（www.jubi.com），登录已有账号，将鼠标放在【交易中心】按钮上，页面将显示聚币网上所有类别的币种，选择您想交易的币种，如图：\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade1.png\" />\r\n</p>\r\n<a name=\"buy\"></a> <b>买入指南 <span style=\"font-weight:normal;\">（以狗狗币买入为例）</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade2.png\" />\r\n</p>\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在买入栏中填入【买入价格】【买入数量】【交易密码】，点击【买入】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade3.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：买入数量应小于等于【最大可买】。<br />\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。<br />\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2.挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade4.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>', '1458616884', '0', '', '0');
INSERT INTO `yang_article` VALUES ('50', '63', '转出指南', '<b>转出虚拟币 <span>(以转出狗狗币为例)</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig5.png\" />\r\n</p>\r\n<p>\r\n	1. 进入财务中心，点击【转出虚拟币】，页面跳转到转出币种页面，选择狗狗币 <br />\r\n2. 在狗狗币转出页面，输入转出信息，包括钱包地址（将狗狗币转入的钱包地址）、转出数量（应少于等于可用狗狗币数量）、交易密码、GA码及手机验证码。确认无误后，点击【确认转出】。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig6.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若短信验证码无法正常接收，请换用语音验证码。</span><br />\r\n3.请等待客服人员确认转出。转出后，可通过狗狗币的区块链接查询当前的网络确认数。达到网络确认数后将自动转入到接收方的账户中 。 <br />\r\n如有其他问题，请咨询在线客服400-657-8880。\r\n</p>', '1458615410', '0', '', '0');
INSERT INTO `yang_article` VALUES ('58', '60', '注册指南', '&lt;img src=&quot;http://www.jubi.com/images/jubi/help/regguide1.png&quot; /&gt; \r\n&lt;div class=&quot;about_text&quot;&gt;\r\n	&lt;p&gt;\r\n		1.打开聚币网首页（www.jubi.com)，点击【注册】或【免费注册】，进入注册页面。\r\n                    也可通过QQ登录入口，注册新账户或绑定已有账户。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.jubi.com/images/jubi/help/regguide2.png&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		2.填写常用的电子邮箱（用于登录和找回密码）、登录密码（需设置6位以上）、邀请码，并仔细阅读《注册协议》，点击【下一步】。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.jubi.com/images/jubi/help/regguide3.png&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;span class=&quot;impo&quot;&gt;注：邀请码项非必填项。通过聚币经理人的专属推荐地址进入聚币网，邀请码项不显示。\r\n填写交易密码（填写6位以上，且与登录密码不同），确认后点击【下一步】。&lt;/span&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		3.填写交易密码（填写6位以上，且与登录密码不同），确认后点击【下一步】。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.jubi.com/images/jubi/help/regguide4.png&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		4.根据国家相关规定，聚币网需对注册用户进行实名登记。&lt;br /&gt;\r\n请选择证件类型（系统默认身份证，可选择护照/军官证/港澳通行证等），输入用户本人真实的证件信息后（证件信息注册后不可修改），点击【下一步】。&lt;br /&gt;\r\n&lt;span class=&quot;impo&quot;&gt;注：提现时银行卡信息须与填写的身份信息一致，请填写真实身份信息，以免带来不便。&lt;/span&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.jubi.com/images/jubi/help/regguide5.png&quot; /&gt; \r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		5. 注册成功。登录账户后即可直接进行充值并交易。\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;img src=&quot;http://www.jubi.com/images/jubi/help/regguide6.png&quot; /&gt; \r\n	&lt;/p&gt;\r\n&lt;/div&gt;', '1458714418', '0', '', '1');
INSERT INTO `yang_article` VALUES ('59', '62', '充值指南', '<p>\r\n	首先，进入聚币网首页（www.jubi.com），登录已有账号，点击【去财务中心】或在导航栏选择【财务中心】，如图：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi1.png\" alt=\"充值流程1\" /><br />\r\n<br />\r\n<p>\r\n	人民币充值有两种： 在线自动充值和银行转账充值。以下分别演示两种充值方式流程。\r\n</p>\r\n<a name=\"ru\"></a> <b>在线自动充值</b> <img src=\"http://www.jubi.com/images/jubi/help/chongzhi2.png\" alt=\"充值流程2\" /><br />\r\n<p>\r\n	1.在页面左侧菜单选择【人民币在线自动充值】，填写充值金额，点击【到网上银行支付】。 <br />\r\n<span class=\"impo\">注：每次充值最少不少于100元，最多不超过5万元。</span> \r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi3.png\" alt=\"充值流程3\" /><br />\r\n<p>\r\n	2.确认充值信息，核实无误后点击【确认提交】。 <br />\r\n<span class=\"impo\">注：Chrome浏览器可能不支持部分银行的网银控件，建议使用IE内核浏览器进行充值。</span> \r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi4.png\" alt=\"充值流程4\" /><br />\r\n<p>\r\n	3.请确认充值金额，并选择银行进行付款。（以招商银行为例）\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi5.png\" alt=\"充值流程5\" /><br />\r\n<p>\r\n	4.根据银行提示完成网上支付。 <br />\r\n<span>1）选择卡号密码支付，输入银行卡号及网上支付密码，完成支付。</span> \r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi6.png\" alt=\"充值流程6\" /><br />\r\n<p>\r\n	<span class=\"impo\">注：部分银行可能需要下载插件，安装插件后，请重新启动浏览器。</span><br />\r\n2）选择手机支付，输入手机号码、卡号后四位，完成支付。\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi7.png\" alt=\"充值流程7\" /><br />\r\n<p>\r\n	提示充值成功后，请刷新聚币网或重新登录聚币账户查看资产。 <br />\r\n具体到账时间根据不同银行的受理时间而定，请耐心等待。若转账后超过1小时仍未入账，请联系在线客服400-657-8880。\r\n</p>\r\n<a name=\"ru\"></a> <b>银行转账充值</b> <img src=\"http://www.jubi.com/images/jubi/help/chongzhi8.png\" alt=\"充值流程8\" /> \r\n<p>\r\n	<span class=\"impo\">注：汇款人姓名默认为实名认证的姓名，仅允许使用本人的银行卡或支付宝进行转账充值。</span>\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi9.png\" alt=\"充值流程9\" /> \r\n<p>\r\n	2. 页面弹出平台的收款账号及汇款信息，请根据“银行转账汇款”信息通过网银、去银行柜台或使用支付宝进行转账汇款。 <br />\r\n1）使用招商银行网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi10.png\" alt=\"充值流程10\" /> \r\n<p>\r\n	2）使用招商银行手机网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi11.png\" alt=\"充值流程11\" />', '1458717944', '0', '', '0');
INSERT INTO `yang_article` VALUES ('60', '64', '提现指南', '<div class=\"about_text\">\r\n	<p>\r\n		<img src=\"http://www.jubi.com/images/jubi/help/tixian1.png\" />\r\n	</p>\r\n	<p>\r\n		1.进入聚币网首页（www.jubi.com），登录已有账号，点击【去财务中心】或在导航栏选择【财务中心】，如图：\r\n	</p>\r\n	<p>\r\n		<img src=\"http://www.jubi.com/images/jubi/help/tixian2.png\" />\r\n	</p>\r\n	<p>\r\n		2.人民币提现操作需绑定用户本人的银行卡，在页面左侧菜单选择【人民币提现】，点击【管理银行卡】。若已绑定可直接申请提现。\r\n	</p>\r\n	<p>\r\n		<img src=\"http://www.jubi.com/images/jubi/help/tixian3.png\" />\r\n	</p>\r\n	<p>\r\n		3.进入银行卡管理页面，填写用户本人的银行卡信息（储蓄卡/借记卡）后，点击【添加银行卡】。\r\n	</p>\r\n	<p>\r\n		<img src=\"http://www.jubi.com/images/jubi/help/tixian4.png\" />\r\n	</p>\r\n	<p>\r\n		<span class=\"impo\">注：姓名栏，系统默认为实名认证姓名。 <br />\r\n若此处的姓名与本人真实姓名不符，请联系在线客服400-657-8880。</span>\r\n	</p>\r\n	<p>\r\n		4.银行卡添加成功后，返回【人民币提现】页面，填写提现申请。\r\n	</p>\r\n	<p>\r\n		<img src=\"http://www.jubi.com/images/jubi/help/tixian5.png\" />\r\n	</p>\r\n	<p>\r\n		<span class=\"impo\">注：提现金额单笔最低可申请100元，最高50000元。提现手续费率为提现金额的1％，每笔提现最低收费2元。</span>\r\n	</p>\r\n	<p>\r\n		5.申请提现后，财务会在24小时之内处理提现。请耐心等待并随时关注银行账户资金变动。若超过24小时仍未到账，请联系在线客服400-657-8880。\r\n	</p>\r\n</div>', '1458717985', '0', '', '1');
INSERT INTO `yang_article` VALUES ('61', '110', '转入币', '<b>转入虚拟币<span style=\"font-weight:normal;\">（以狗狗币为例）</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig2.png\" />\r\n</p>\r\n<p>\r\n	1.进入财务中心，点击【转入虚拟币】，页面跳转到转入币种页面，选择狗狗币。\r\n</p>\r\n<p>\r\n	2.页面显示狗狗币在聚币网上的钱包地址，将虚拟币转入该钱包即可。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig3.png\" />\r\n</p>\r\n<p>\r\n	也可通过手机扫描右侧的【狗币钱包地址】二维码，获取钱包地址。 <br />\r\n<span class=\"impo\">注：转入虚拟币是自动的，各个币种需要达到不同的确认数后将自动充值到聚币网账户中。请了解转入币种的网络确认数。</span>\r\n</p>\r\n<p>\r\n	3.请确认已达到确认数后，刷新页面，点击【财务中心】查看资产变化。 <br />\r\n可在转入记录中查询转入具体情况，如图：\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig4.png\" />\r\n</p>\r\n<p>\r\n	如遇转入未到账等问题，可咨询在线客服400-657-8880。\r\n</p>', '1458718009', '0', '', '1');
INSERT INTO `yang_article` VALUES ('124', '124', '卖出指南', '<img src=\"http://www.jubi.com/images/jubi/help/trade6.png\" />\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在卖出栏中填入【卖出价格】【卖出数量】【交易密码】，点击【卖出】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade7.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：卖出数量应小于等于【最大可买】。\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2. 挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade8.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade9.png\" />\r\n</p>\r\n<p>\r\n	4. 挂单成交后，请刷新页面，点击【财务中心】查看资产变化。 <br />\r\n如有挂单其他问题，可咨询在线客服400-657-8880。\r\n</p>', '1458960091', '0', '', '0');
INSERT INTO `yang_article` VALUES ('62', '111', '转出币', '<b>转出虚拟币 <span>(以转出狗狗币为例)</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig5.png\" />\r\n</p>\r\n<p>\r\n	1. 进入财务中心，点击【转出虚拟币】，页面跳转到转出币种页面，选择狗狗币 <br />\r\n2. 在狗狗币转出页面，输入转出信息，包括钱包地址（将狗狗币转入的钱包地址）、转出数量（应少于等于可用狗狗币数量）、交易密码、GA码及手机验证码。确认无误后，点击【确认转出】。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig6.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若短信验证码无法正常接收，请换用语音验证码。</span><br />\r\n3.请等待客服人员确认转出。转出后，可通过狗狗币的区块链接查询当前的网络确认数。达到网络确认数后将自动转入到接收方的账户中 。 <br />\r\n如有其他问题，请咨询在线客服400-657-8880。\r\n</p>', '1458718034', '0', '', '1');
INSERT INTO `yang_article` VALUES ('119', '119', '加入我们', '我要开始招聘啦，你来不来！！！！！', '1458800420', '0', '', '0');
INSERT INTO `yang_article` VALUES ('120', '121', '邀请规则', '1.被邀请的用户在元宝网成功注册账户、完善资料并充值CNY，邀请人可在活动期内每天最高获得被推荐人45%太一股配送收益。<br />\r\n2.如果同一用户被多名元宝网用户邀请，元宝网将认定第一位确定的邀请人为该用户邀请人。<br />\r\n3.禁止通过作弊手段进行虚假邀请注册骗取返利，一经发现将取消奖励并酌情处理。<br />\r\n<p>\r\n	<br />\r\n</p>', '1458973500', '0', '', '0');
INSERT INTO `yang_article` VALUES ('126', '125', '银行转账充值', '<img src=\"http://www.jubi.com/images/jubi/help/chongzhi8.png\" alt=\"充值流程8\" /> \r\n<p>\r\n	<span class=\"impo\">注：汇款人姓名默认为实名认证的姓名，仅允许使用本人的银行卡或支付宝进行转账充值。</span>\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi9.png\" alt=\"充值流程9\" /> \r\n<p>\r\n	2. 页面弹出平台的收款账号及汇款信息，请根据“银行转账汇款”信息通过网银、去银行柜台或使用支付宝进行转账汇款。 <br />\r\n1）使用招商银行网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi10.png\" alt=\"充值流程10\" /> \r\n<p>\r\n	2）使用招商银行手机网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi11.png\" alt=\"充值流程11\" /> \r\n<p>\r\n	3）使用支付宝转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi12.png\" alt=\"充值流程12\" /> \r\n<p>\r\n	3. 银行转账成功后，聚币会在收到汇款后30分钟内入账。请及时刷新页面，并查看资产。\r\n                            若转账后超过30分钟仍未入账，请联系在线客服400-657-8880。\r\n</p>', '1458976342', '0', '', '0');
INSERT INTO `yang_article` VALUES ('121', '122', '邀请好友', '&lt;span&gt;邀请好友注册，可在活动期内每天获得被推荐人10%太一股配送收益。&lt;/span&gt;', '1458824052', '0', '', '0');
INSERT INTO `yang_article` VALUES ('122', '1', 'ceshi', '<span style=\"font-size:14px;\"> \r\n<p>\r\n	<span style=\"font-size:14px;\">亲爱的元宝网用户：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"> </span><span style=\"font-size:14px;\"> </span><span style=\"font-size:14px;\"> 为了更好的保证钱包服务器稳定性，提高充币提币的确认速度，元宝网钱包服务器将于<span style=\"font-size:14px;\"><strong>今天下午15:00进行机房迁移</strong></span>，期间将暂停所有币种的充币、提币服务。迁移<strong>预计将在五个小时左右完成</strong>，具体恢复时间以公告为准。给您造成的不便，敬请谅解！</span> \r\n</p>\r\n</span> \r\n<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:14px;\"> <strong><span style=\"color:#FF0000;\"> 已升级完毕</span></strong> >><a href=\"https://yuanbaohui.com/news/detail/?id=852\" target=\"_blank\">点击查看</a></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:14px;\"><a href=\"https://yuanbaohui.com/news/detail/?id=852\" target=\"_blank\"><u></u>按时打算打算<br />\r\n</a></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:14px;\"><a href=\"https://yuanbaohui.com/news/detail/?id=852\" target=\"_blank\"><u></u><br />\r\n</a></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-size:14px;\"><a href=\"https://yuanbaohui.com/news/detail/?id=852\" target=\"_blank\"><strong><br />\r\n</strong></a></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"><span style=\"font-size:14px;\"><strong></strong></span><strong></strong></span> \r\n</p>', '1458959832', '0', '', '1');
INSERT INTO `yang_article` VALUES ('123', '123', '买入指南', '<b><span style=\"font-weight:normal;\"></span></b><img src=\"http://www.jubi.com/images/jubi/help/trade2.png\" height=\"158\" width=\"1158\" />\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在买入栏中填入【买入价格】【买入数量】【交易密码】，点击【买入】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade3.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：买入数量应小于等于【最大可买】。<br />\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。<br />\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2.挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade4.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade5.png\" />\r\n</p>\r\n<p>\r\n	4.挂单成交后，请刷新页面，点击【财务中心】查看资产变化。 <br />\r\n如有挂单其他问题，可咨询在线客服400-657-8880。\r\n</p>', '1458960048', '0', '', '0');
INSERT INTO `yang_article` VALUES ('125', '2', '测试', '<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> <a href=\"http://www.btctrade.com/\">比特币</a>区块链作为一项新兴技术，已经在科技和金融领域中试水了几个月。如今，其他行业和政府机构中的人开始询问关于区块链的问题。我相信，比特币区块链技术不仅有潜力改变商业的运营模式，也能在政府企业和市民间发挥作用。</span> \r\n<p style=\"text-align:center;\">\r\n	<img src=\"http://www.btctrade.com/images/trade/news/201603/1440040.jpg\" height=\"454\" width=\"713\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> </span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 美国众议院能源和商务小组委员会的成员正在寻找他们所谓的“颠覆性”的技术，以此来评估他们对企业、政府和经济的影响力潜力，他们也请我给出一些关于比特币区块链的意见和看法。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 他们称比特币区块链技术是颠覆性的，这一点毋庸置疑。这绝对是一项革命性的技术。以比特币区块链为基础的系统可以有助于从根本上提高整个行业，这一改变将\r\n从银行业和保险业开始。但这一影响范围可能会更广泛。只要有价值的产业从一方转向另一方的时候，只要你需要确切的知道数字信息是独一无二的时候（而且任何\r\n一方在没有其余当事方同意的情况下不可以改变这一信息），你就会明白区块链技术大有作为。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 以下是人们需要了解的比特币区块链的四个关键信息：</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 1）比特币区块链创造守信高效的互动。</span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 尽管比特币区块链是使比特币加密货币运行的核心技术，但他也可以被用在完全不同的事上。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 比特币区块链是通过P2P网络分享的分布式总账，其中内容是一份不断扩大的数据列表。除去在网络上广而宣传的资料外，每个参与者都还有一份台账数据的精确\r\n副本。因此在一个交流互动活动上的所有参与者都有一个即时更新的台账，能够反映最新的交易和变更。通过这种方式，比特币区块链减少了用传统方法建立信用的\r\n需求。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 2）比特币区块链技术必须不断提升，以满足企业的需要。</span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 核心的技术需不断适应进一步的地址安全和隐私问题，由此才能开创一个为企业时刻准备着的区块链。另外，必须架构起计算机和互联网系统，以便他们能扩大规模\r\n处理更大量的交易，尤其是当企业和政府开始使用这种技术去处理他们核心组织事件的时候——要以秒为单位，而不是分钟。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 3）比特币区块链必须具备开放性和互操作性。</span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 为了让区块链实现其全部的潜力，它必须基于非专有技术标准，以此来确保系统的兼容性和互操作性。此外，不同种类的区块链版本应该使用开源软件，将自由的许\r\n可条款和严格的管理结合起来，而不是使用专有软件，专有软件可以被用来打压竞争对手。只有确保比特币区块链的开放性，他才能被广泛的接受，也才能不断地发\r\n展。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 这里有几个比特币区块链的开源项目，但是只有Linux基金会批准和管理的项目（被称作Hyperledger项目）才能提供业界友好条款和多公司治理。这也是为什么我们要加入Hyperledger项目，并且敦促其他国家也这样做的原因。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 4）政府的参与能为比特币区块链带来巨额利润。</span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 一个国内很有竞争力的观点批判的认为，美国企业和政府机构需要在了解比特币区块链技术潜力的情况下再引领世界走向，推进它的使用。因为比特币区块链技术使\r\n透明公开变为可能，政府机构能更好的了解金融和商贸体系里究竟发生了什么，并且在事情变得严重之前发现潜在的问题。比特币区块链还能更有效率的联结政府和\r\n企业，从税务事物到土地使用无所不能。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 就拿美国社会保障系统做一个例子。美国社保系统包括联邦政府，数以百万计的雇主，他们的薪资服务供应商以及两亿多受益者和向这个系统付款的个体工作者。这\r\n就是比特币区块链的一个模型场景。许多党派，规则，管理系统过程的许多步骤，以及高标准保护个人隐私安全不被泄露的迫切需。比特币区块链是一个典型的新兴\r\n技术。它有着广泛的用途，能带来很大的利益，但是它们和人们过去所习惯的有很大的区别，所以很多企业和政府领导人都采取了截然不同的等待和观望的态度。我\r\n们赞赏明智谨慎，但同时，我们也相信如果组织和机构不能尽快的评估比特币区块链的潜力，并且开始做切实的实验，他们将会被甩在我们所说的世界结构性转变的\r\n后面。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \'Microsoft YaHei\';font-size:14px;color:#595959;\"> 比特币区块链也许已经开始在加密货币领域的阴影中开始活动了，但现在的情况是它站在了大众的视野里——作为一个强大的工具，准备为企业和社会提供服务。</span> \r\n</p>', '1458960515', '0', '', '1');
INSERT INTO `yang_article` VALUES ('32', '126', '新币上线申请', '<span>   若您是加密数字货币开发者或者官方团队成员，有意向将您开发的币种上线聚币网，欢迎您通过以下方式和流程递交申请。</span> \r\n<p>\r\n	申请流程：\r\n</p>\r\n<ol>\r\n	<li>\r\n		下载 <a href=\"http://www.jubi.com/newcoin-sheet.docx\" target=\"_blank\">“新币上线申请表”</a>，按要求填写并发送至邮箱market@jubi.com。\r\n	</li>\r\n	<li>\r\n		若申请资料填写齐全并符合聚币上线条件，我们将和申请人或官方团队联系并确定币种上线可行性。\r\n	</li>\r\n	<li>\r\n		确定上线币种后，聚币会安排技术进行钱包、交易相关开发，我们将至少提前1天通知上线新币 。\r\n	</li>\r\n</ol>\r\n<p>\r\n	另：若在聚币已上线的币种出现下列情况之一，聚币将考虑下线该币种。\r\n</p>\r\n<ol>\r\n	<li>\r\n		官方团队解散或者不再有正常维护更新，导致该币种不能进行正常挖矿、转币、区块查询等；\r\n	</li>\r\n	<li>\r\n		该币种已经没有用户进行交易或者使用、持有；\r\n	</li>\r\n	<li>\r\n		该币种出现重大技术故障，影响到区块查询、挖矿转币等正常功能；\r\n	</li>\r\n	<li>\r\n		官方团队涉嫌恶意预挖、传销诈骗、坐庄圈钱等欺诈行为。\r\n	</li>\r\n</ol>\r\n<p>\r\n	<a>为了维护广大用户的财产安全我们将尽量避免币种下线。</a>\r\n</p>', '1459152106', '0', '', '0');
INSERT INTO `yang_article` VALUES ('128', '63', '6565656565', '656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565', '1460083469', '0', '', '1');
INSERT INTO `yang_article` VALUES ('129', '62', '34r5tw4rt', 'waerwrwerwer', '1460083529', '0', '', '1');
INSERT INTO `yang_article` VALUES ('323', '1', '434334433443', '<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日\r\n		<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n		</div>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n		</p>\r\n		<div>\r\n			<strong><br />\r\n</strong>\r\n		</div>\r\n		<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n		</div>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n		</p>\r\n		<div>\r\n			<strong><br />\r\n</strong>\r\n		</div>\r\n		<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n		</div>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n		</p>\r\n		<div>\r\n			<strong><br />\r\n</strong>\r\n		</div>\r\n		<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n		</div>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n		</p>\r\n		<div>\r\n			<strong><br />\r\n</strong>\r\n		</div>\r\n		<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n		</div>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n		</p>\r\n		<div>\r\n			<strong><br />\r\n</strong>\r\n		</div>\r\n		<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n		</div>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n		</p>\r\n		<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n			<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n		</p>\r\n		<div>\r\n			<strong><br />\r\n</strong>\r\n		</div>\r\n</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n	<div>\r\n		<strong><br />\r\n</strong>\r\n	</div>\r\n</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n</div>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n	</div>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n	</p>\r\n	<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n		<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n	</p>\r\n</div>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>\r\n<div style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong>活动简介：</strong></span><br />\r\n</div>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">此次集训营，是猪八戒成立10年来，最系统的一次服务商培训，总裁亲临，由猪八戒商学院联合类目运营事业部、手机猪八戒等部门倾力巨献。涵盖店铺引流、提升店铺转化率、手机店铺运营等一些列成长课程。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">首站重庆圆满开营，4月落户杭州，此后数月集训营将陆续登陆北京、广州、深圳、南京、西安、成都等城市。</span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\">本次集训营  <strong><span style=\"color:#3333FF;\">培训</span></strong></span><span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><strong><span style=\"color:#3333FF;\">时间：4月23日</span></strong></span>\r\n</p>\r\n<p style=\"color:#333333;font-family:\'Helvetica Neue\', Helvetica, Arial, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:\'Microsoft YaHei\';font-size:18px;\"><span style=\"color:#3333FF;\">                   <strong>培训地点：杭州海外海纳川酒店（杭州市石祥路575号）</strong></span></span>\r\n</p>\r\n<div>\r\n	<strong><br />\r\n</strong>\r\n</div>', '1461061039', '0', '', '0');

-- ----------------------------
-- Table structure for `yang_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `yang_article_category`;
CREATE TABLE `yang_article_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `keywords` varchar(128) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_article_category
-- ----------------------------
INSERT INTO `yang_article_category` VALUES ('1', '官方公告', '0', '11', '111', '1');
INSERT INTO `yang_article_category` VALUES ('2', '市场动态', '0', '首页文章', '2', '1');
INSERT INTO `yang_article_category` VALUES ('123', '买入指南', '61', '0', '0', '0');
INSERT INTO `yang_article_category` VALUES ('3', '单条提示', '0', '111', '1', '1');
INSERT INTO `yang_article_category` VALUES ('32', '系统公告', '0', '系统公告', '10', '1');
INSERT INTO `yang_article_category` VALUES ('6', '帮助中心', '0', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('60', '注册指南', '6', '注册指南', '60', '1');
INSERT INTO `yang_article_category` VALUES ('61', '交易指南', '6', '交易指南', '61', '1');
INSERT INTO `yang_article_category` VALUES ('62', '充值指南', '6', '充值指南', '62', '1');
INSERT INTO `yang_article_category` VALUES ('64', '提现指南', '6', '提现指南', '64', '1');
INSERT INTO `yang_article_category` VALUES ('63', '转币指南', '6', '转币指南', '63', '1');
INSERT INTO `yang_article_category` VALUES ('4', '风险提示', '0', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('125', '银行转账充值', '62', '0', '0', '0');
INSERT INTO `yang_article_category` VALUES ('110', '转入币', '63', '转入币', '110', '1');
INSERT INTO `yang_article_category` VALUES ('111', '转出币', '63', '转出币', '111', '1');
INSERT INTO `yang_article_category` VALUES ('7', '团队信息', '0', '团队信息', '0', '1');
INSERT INTO `yang_article_category` VALUES ('118', '关于我们', '7', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('119', '加入我们', '7', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('120', '提现提示', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('121', '邀请规则', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('122', '邀请好友', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('126', '新币上线申请', '3', '', '0', '0');

-- ----------------------------
-- Table structure for `yang_bank`
-- ----------------------------
DROP TABLE IF EXISTS `yang_bank`;
CREATE TABLE `yang_bank` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `bankname` varchar(32) NOT NULL COMMENT '银行',
  `uid` int(32) NOT NULL,
  `cardname` varchar(32) NOT NULL COMMENT '用户名',
  `address` varchar(128) NOT NULL COMMENT '开户地',
  `cardnum` varchar(128) NOT NULL COMMENT '卡号',
  `bname` varchar(32) NOT NULL COMMENT '标签',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_bank
-- ----------------------------
INSERT INTO `yang_bank` VALUES ('1', '工商银行', '0', '', '252', '234', '1234', '0');
INSERT INTO `yang_bank` VALUES ('4', '中信银行', '60', '456', '9127', '756756756765', '7657657', '0');
INSERT INTO `yang_bank` VALUES ('5', '华夏银行', '60', '456', '15213', '23456', '456', '0');
INSERT INTO `yang_bank` VALUES ('6', '华夏银行', '60', '456', '18245', '23456', '456', '0');
INSERT INTO `yang_bank` VALUES ('7', '华夏银行', '60', '456', '广东0', '23456', '456', '0');
INSERT INTO `yang_bank` VALUES ('8', '华夏银行', '60', '456', '福建0', '23456', '456', '0');
INSERT INTO `yang_bank` VALUES ('9', '华夏银行', '60', '456', '福建0', '23456', '456', '0');
INSERT INTO `yang_bank` VALUES ('10', '华夏银行', '60', '456', '271', '2345', '456', '0');
INSERT INTO `yang_bank` VALUES ('16', '交通银行', '60', '456', '122', '666666', '6666', '0');
INSERT INTO `yang_bank` VALUES ('17', '兴业银行', '59', '姜鹏', '159', '666666', 'kk', '0');
INSERT INTO `yang_bank` VALUES ('18', '农业银行', '62', '打的', '55', '444444', '体系那', '0');
INSERT INTO `yang_bank` VALUES ('20', '工商银行', '62', '打的', '176', '4545665', '阿萨德', '0');
INSERT INTO `yang_bank` VALUES ('22', '招商银行', '62', '打的', '239', '5', '+6', '0');
INSERT INTO `yang_bank` VALUES ('25', '中国银行', '59', '我我14141', '236', '65885477855547884', 'asdf', '0');

-- ----------------------------
-- Table structure for `yang_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_config`;
CREATE TABLE `yang_config` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_config
-- ----------------------------
INSERT INTO `yang_config` VALUES ('title', '麒麟币交易网站~~~');
INSERT INTO `yang_config` VALUES ('keywords', '虚拟币比特币麒麟币');
INSERT INTO `yang_config` VALUES ('desc', '友情提示：请控制风险，不要投入超过您风险承受能力的资金，不要投资您所不了解的数字货币，拒绝传销组织，警惕虚假宣传。');
INSERT INTO `yang_config` VALUES ('logo', '/Uploads/Public/Uploads/2016-04-12/570c8f8fc65d4.png');
INSERT INTO `yang_config` VALUES ('copyright', 'Copyright 2013-2016 数据库 All Rights Reserved. Powered by 大连仟源科技有限公司');
INSERT INTO `yang_config` VALUES ('record', 'ICP备13052038号-1');
INSERT INTO `yang_config` VALUES ('tel', '4008-367-667');
INSERT INTO `yang_config` VALUES ('email', 'ybw@yuanbao.com');
INSERT INTO `yang_config` VALUES ('qqcode', '2522');
INSERT INTO `yang_config` VALUES ('business_email', 'contact@yuanbao.com');
INSERT INTO `yang_config` VALUES ('name', '虚拟币');
INSERT INTO `yang_config` VALUES ('address', '地址地址地址地址地址地址地址地址地址地址');
INSERT INTO `yang_config` VALUES ('qq', '4008367667');
INSERT INTO `yang_config` VALUES ('qqqun2', '12345678');
INSERT INTO `yang_config` VALUES ('qqqun3', '123456789');
INSERT INTO `yang_config` VALUES ('qqqun1', '1234567');
INSERT INTO `yang_config` VALUES ('pay_min_money', '500');
INSERT INTO `yang_config` VALUES ('pay_max_money', '1000000');
INSERT INTO `yang_config` VALUES ('pay_fee', '10');
INSERT INTO `yang_config` VALUES ('pay_get_name', '大连仟源科技有限公司');
INSERT INTO `yang_config` VALUES ('pay_get_card', '1100 1042 1000 5302 8052');
INSERT INTO `yang_config` VALUES ('pay_get_bank', '中国建设银行北京电子城科技园区支行');
INSERT INTO `yang_config` VALUES ('xnb', 'JMBd');
INSERT INTO `yang_config` VALUES ('xnb_name', '进盟币');
INSERT INTO `yang_config` VALUES ('bili', '0.01');
INSERT INTO `yang_config` VALUES ('weixin', '/Uploads/Public/Uploads/2016-03-19/56ecc75e1312d.jpg');
INSERT INTO `yang_config` VALUES ('weibo', 'ybcoin');
INSERT INTO `yang_config` VALUES ('time_limit', '20');
INSERT INTO `yang_config` VALUES ('localhost', 'www.shujuku.comdsafds');
INSERT INTO `yang_config` VALUES ('worktime', '工作日:9-19时 节假日:9-18时');
INSERT INTO `yang_config` VALUES ('qqqun_url', 'http://shang.qq.com/wpa/qunwpa?\r\n\r\nidkey=6df577b6412b273c9171e0c204c633c0baa5c6e4301b2cc6171d10c3bcdc7c28');
INSERT INTO `yang_config` VALUES ('fee', '0.3');
INSERT INTO `yang_config` VALUES ('CODE_USER_NAME', 'ren829');
INSERT INTO `yang_config` VALUES ('CODE_USER_PASS', 'ren8291122dx');
INSERT INTO `yang_config` VALUES ('CODE_NAME', '进盟币555');
INSERT INTO `yang_config` VALUES ('', 'friendship_tips');
INSERT INTO `yang_config` VALUES ('', 'risk_warning');
INSERT INTO `yang_config` VALUES ('friendship_tips', '阿达撒范德萨');
INSERT INTO `yang_config` VALUES ('risk_warning', '发俺的沙发十大');
INSERT INTO `yang_config` VALUES ('biaoge_url', '/Uploads/Public/Uploads/2016-03-31/新币申请表');
INSERT INTO `yang_config` VALUES ('jiedong_bili', '100');
INSERT INTO `yang_config` VALUES ('withdraw_warning', '爱的色放阿萨德');
INSERT INTO `yang_config` VALUES ('invite_rule', '<p>\r\n	<span style=\"color:#333333;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:40px;background-color:#FFFFFF;\">邀请规则</span>\r\n</p>');
INSERT INTO `yang_config` VALUES ('tcoin_fee', '0.1');
INSERT INTO `yang_config` VALUES ('jiaoyi_over_hour', '24');
INSERT INTO `yang_config` VALUES ('jiaoyi_start_minute', '0');
INSERT INTO `yang_config` VALUES ('jiaoyi_start_hour', '0');
INSERT INTO `yang_config` VALUES ('jiaoyi_over_minute', '0');
INSERT INTO `yang_config` VALUES ('zibenfen_bili', '100');
INSERT INTO `yang_config` VALUES ('VAP_rule', '爱的色放');
INSERT INTO `yang_config` VALUES ('transaction_false', '500000');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_CURRENCY_ID', '26');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_ONE_RATIO', '100');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_TWO_RATIO', '50');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_STATUS', '1');
INSERT INTO `yang_config` VALUES ('qq2', '2033126020');
INSERT INTO `yang_config` VALUES ('qq3', '262109334');
INSERT INTO `yang_config` VALUES ('qq1', '738636185');
INSERT INTO `yang_config` VALUES ('FWTK', '爱的色放打算');
INSERT INTO `yang_config` VALUES ('disclaimer', '阿德分手大师');
INSERT INTO `yang_config` VALUES ('EMAIL_USERNAME', 'mail@koumang.com');
INSERT INTO `yang_config` VALUES ('EMAIL_PASSWORD', 'xiaowei7758258');
INSERT INTO `yang_config` VALUES ('EMAIL_HOST', 'smtp.qq.com');
INSERT INTO `yang_config` VALUES ('zhuce_jiangli', '100');
INSERT INTO `yang_config` VALUES ('new_coin_up', '<span><span>  若您是加密数字货币开发者或者官方团队成员，有意向将您开发的币种上线聚币网，欢迎您通过以下方式和流程递交申请。</span> \r\n<p>\r\n	申请流程：\r\n</p>\r\n<ol>\r\n	<li>\r\n		下载 <a href=\"http://www.jubi.com/newcoin-sheet.docx\" target=\"_blank\">“新币上线申请表”</a>，按要求填写并发送至邮箱market@jubi.com。\r\n	</li>\r\n	<li>\r\n		若申请资料填写齐全并符合聚币上线条件，我们将和申请人或官方团队联系并确定币种上线可行性。\r\n	</li>\r\n	<li>\r\n		确定上线币种后，聚币会安排技术进行钱包、交易相关开发，我们将至少提前1天通知上线新币 。\r\n	</li>\r\n</ol>\r\n<p>\r\n	另：若在聚币已上线的币种出现下列情况之一，聚币将考虑下线该币种。\r\n</p>\r\n<ol>\r\n	<li>\r\n		官方团队解散或者不再有正常维护更新，导致该币种不能进行正常挖矿、转币、区块查询等；\r\n	</li>\r\n	<li>\r\n		该币种已经没有用户进行交易或者使用、持有；\r\n	</li>\r\n	<li>\r\n		该币种出现重大技术故障，影响到区块查询、挖矿转币等正常功能；\r\n	</li>\r\n	<li>\r\n		官方团队涉嫌恶意预挖、传销诈骗、坐庄圈钱等欺诈行为。\r\n	</li>\r\n</ol>\r\n<p>\r\n	<a>为了维护广大用户的财产安全我们将尽量避免币种下线。</a> \r\n</p>\r\n</span>');

-- ----------------------------
-- Table structure for `yang_currency`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency`;
CREATE TABLE `yang_currency` (
  `currency_id` int(32) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(32) NOT NULL COMMENT '货币名称',
  `currency_logo` varchar(255) NOT NULL COMMENT '货币logo',
  `currency_mark` varchar(32) NOT NULL COMMENT '英文标识',
  `currency_content` text NOT NULL,
  `currency_all_money` decimal(40,6) NOT NULL COMMENT '总市值',
  `currency_all_num` decimal(40,4) DEFAULT '0.0000' COMMENT '币总数量',
  `currency_buy_fee` float(64,4) NOT NULL COMMENT '买入手续费',
  `currency_sell_fee` float(64,4) NOT NULL COMMENT '卖出手续费',
  `currency_url` varchar(128) NOT NULL COMMENT '该币种的链接地址',
  `trade_currency_id` int(10) NOT NULL DEFAULT '1' COMMENT '可以进行交易的币种',
  `is_line` tinyint(4) NOT NULL DEFAULT '0',
  `is_lock` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否交易 0 是交易许可 1是交易不许可',
  `port_number` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `rpc_url` varchar(255) NOT NULL COMMENT 'rpc路径',
  `rpc_pwd` varchar(255) NOT NULL COMMENT 'rpc密码',
  `rpc_user` varchar(255) NOT NULL COMMENT 'rpc账号（用户名）',
  `currency_all_tibi` int(10) NOT NULL DEFAULT '0' COMMENT '最大提币额',
  `detail_url` varchar(64) NOT NULL COMMENT '详情跳转链接',
  `qianbao_url` varchar(64) NOT NULL COMMENT '钱包储存路径',
  `qianbao_key` varchar(64) NOT NULL COMMENT '钱包密钥',
  `price_up` float(64,4) NOT NULL COMMENT '涨停',
  `price_down` float(64,4) NOT NULL COMMENT '跌停',
  `sort` int(10) NOT NULL DEFAULT '0',
  `currency_digit_num` int(10) NOT NULL COMMENT '限制位数',
  `set_price` float(64,4) NOT NULL COMMENT '设置的价格',
  PRIMARY KEY (`currency_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_mark` (`currency_mark`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency
-- ----------------------------
INSERT INTO `yang_currency` VALUES ('25', '元宝币', '/Uploads/Public/Uploads/2016-03-25/56f5284e7de29.png', 'YBB', '元宝币元宝币元宝币元宝币', '2147483648.000000', '100000.0000', '0.1000', '0.1000', 'www.yuanbaohui.com', '0', '1', '0', '3', '1472567208', '0', '3', '3', '3', '3', 'http://101.201.72.102/Home/Art/details/id/132.html', '/Uploads/Public/Uploads2016-03-31/56fc9bfeb3b13.zip', '3', '0.0000', '0.0000', '0', '0', '2.0000');
INSERT INTO `yang_currency` VALUES ('26', '狗狗币', '/Uploads/Public/Uploads/2016-03-12/56e38721f0537.png', 'GODE', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa', '5000000000.000000', '0.0000', '0.1000', '0.1000', '', '0', '1', '0', '0', '1459749882', '0', '', '', '', '0', '', '/Uploads/Public/Uploads2016-03-31/56fc9dbd18618.zip', '', '1000.0000', '0.1000', '0', '0', '0.0000');
INSERT INTO `yang_currency` VALUES ('27', '进盟币', '/Uploads/Public/Uploads/2016-03-25/56f52838632ea.png', 'jmb', '进盟币进盟币进盟币', '2147483648.000000', '500007.0000', '0.1000', '0.1000', '', '0', '1', '1', '29991', '1461139379', '0', '47.89.49.145', '123456', 'green', '0', '', '/Uploads/Public/Uploads2016-03-31/56fc9da499d01.zip', '', '0.0000', '0.0000', '0', '0', '0.0000');
INSERT INTO `yang_currency` VALUES ('28', '比特币', '/Uploads/Public/Uploads/2016-03-25/56f52840e4e1c.png', 'btc', '比特币比特币比特币', '0.000000', '0.0000', '0.1000', '0.1000', '', '26', '1', '0', '29992', '1461942334', '0', '47.89.49.145', '123456', 'green', '0', '', '/Uploads/Public/Uploads2016-03-31/56fc9d92272b8.zip', '', '0.0000', '0.0000', '0', '8', '0.0000');
INSERT INTO `yang_currency` VALUES ('29', '货币大', '', 'hbd', '', '0.000000', '10000000.0000', '0.1000', '0.1000', 'www.yuanbaohui.com', '0', '1', '0', '12', '1461725234', '0', '1', '1', '1', '1', '', '', '1', '0.0000', '0.0000', '1', '0', '0.0000');
INSERT INTO `yang_currency` VALUES ('30', '分红币', '/Uploads/Public/Uploads/2016-05-01/57261640eb041.png', 'fhc', '', '0.000000', '100000.0000', '1.0000', '1.0000', '', '0', '1', '0', '1999', '1462113856', '0', '122.114.132.61', 'passwd', 'user', '100000', '', '', '', '0.0000', '0.0000', '0', '6', '0.0000');
INSERT INTO `yang_currency` VALUES ('31', '沃尔玛币', '/Uploads/Public/Uploads/2016-08-30/57c4eb6532f16.jpg', 'wem', '', '0.000000', '10000.0000', '1.0000', '1.0000', 'http://www.baidu.com', '0', '1', '0', '1', '1472524111', '0', '1', '1', '1', '100', 'http://www.163.com', '', '1', '0.0000', '0.0000', '0', '0', '3.0000');

-- ----------------------------
-- Table structure for `yang_currency_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_comment`;
CREATE TABLE `yang_currency_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种评论表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `content` varchar(256) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_currency_concern`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_concern`;
CREATE TABLE `yang_currency_concern` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种关注表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_concern
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_currency_pic`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_pic`;
CREATE TABLE `yang_currency_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种详情图片',
  `currency_id` int(11) NOT NULL,
  `pic` varchar(128) NOT NULL COMMENT '图片路径',
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_pic
-- ----------------------------
INSERT INTO `yang_currency_pic` VALUES ('1', '25', '/Uploads/Public/Uploads/2016-03-29/56f9eacacdfe6.jpg', '1459219262', '0');
INSERT INTO `yang_currency_pic` VALUES ('2', '25', '/Uploads/Public/Uploads/2016-03-29/56f9ead02625a.jpg', '1459219263', '0');

-- ----------------------------
-- Table structure for `yang_currency_recovery`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_recovery`;
CREATE TABLE `yang_currency_recovery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL COMMENT '虚拟币',
  `add_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `add_user` int(11) DEFAULT NULL COMMENT '创建人id',
  `status` smallint(6) DEFAULT '0' COMMENT '0:等待处理，1:处理中，2,处理完成,3,处理失败',
  `price` decimal(10,4) NOT NULL COMMENT '拆分价格',
  `member_get` decimal(10,2) NOT NULL COMMENT '会员获得比例，小数，例如70%为0.7',
  `level1_get` decimal(10,2) NOT NULL COMMENT '直接推荐人获得的比例 ,例如10%为0.1',
  `level2_get` decimal(10,2) NOT NULL COMMENT '推荐人的上级得的比例 ,例如5%为0.05',
  `level3_get` decimal(10,2) NOT NULL COMMENT '推荐人的上级的上级得的比例 ,例如5%为0.05',
  `finish_time` int(11) DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='货币-强制回收明细';

-- ----------------------------
-- Records of yang_currency_recovery
-- ----------------------------
INSERT INTO `yang_currency_recovery` VALUES ('2', '31', '1472648404', '1', '1', '3.0000', '0.70', '0.10', '0.05', '0.05', '1472648970');

-- ----------------------------
-- Table structure for `yang_currency_split`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_split`;
CREATE TABLE `yang_currency_split` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL COMMENT '虚拟币',
  `add_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `add_user` int(11) DEFAULT NULL COMMENT '创建人id',
  `status` smallint(6) DEFAULT '0' COMMENT '0:等待处理，1:处理中，2,处理完成,3,处理失败',
  `price` decimal(10,4) NOT NULL COMMENT '拆分价格',
  `mult` decimal(10,2) NOT NULL COMMENT '拆分倍数',
  `member_get` decimal(10,2) NOT NULL COMMENT '会员获得比例，小数，例如70%为0.7',
  `level1_get` decimal(10,2) NOT NULL COMMENT '直接推荐人获得的比例 ,例如10%为0.1',
  `level2_get` decimal(10,2) NOT NULL COMMENT '推荐人的上级得的比例 ,例如5%为0.05',
  `level3_get` decimal(10,2) NOT NULL COMMENT '推荐人的上级的上级得的比例 ,例如5%为0.05',
  `finish_time` int(11) DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='货币-强制拆分明细';

-- ----------------------------
-- Records of yang_currency_split
-- ----------------------------
INSERT INTO `yang_currency_split` VALUES ('3', '31', '1472639278', '1', '2', '1.0000', '1.00', '0.70', '0.10', '0.05', '0.05', '1472642847');

-- ----------------------------
-- Table structure for `yang_currency_user`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_user`;
CREATE TABLE `yang_currency_user` (
  `cu_id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `num` decimal(20,4) NOT NULL COMMENT '数量',
  `forzen_num` decimal(10,4) NOT NULL COMMENT '冻结数量',
  `status` tinyint(4) NOT NULL,
  `chongzhi_url` varchar(128) NOT NULL COMMENT '钱包充值地址',
  PRIMARY KEY (`cu_id`),
  KEY `member_id_2` (`member_id`,`currency_id`),
  KEY `cu_id` (`cu_id`,`member_id`,`currency_id`,`num`,`forzen_num`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_currency_user
-- ----------------------------
INSERT INTO `yang_currency_user` VALUES ('1', '1', '25', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('2', '1', '26', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('3', '62', '25', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('4', '62', '26', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('5', '64', '25', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('6', '64', '26', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('7', '59', '27', '3000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('8', '59', '26', '1899.0000', '-900.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('9', '60', '25', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('10', '60', '26', '1000.9990', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('11', '60', '27', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('12', '60', '28', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('15', '59', '25', '629.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('16', '59', '28', '2000.0000', '0.0000', '0', '17QUJCUdCbgUEWhDuKxR7hEb1phEQQAWKr');
INSERT INTO `yang_currency_user` VALUES ('17', '65', '25', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('18', '65', '26', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('19', '65', '27', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('20', '65', '28', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('21', '66', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('22', '66', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('23', '66', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('24', '66', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('25', '67', '25', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('26', '67', '26', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('27', '67', '27', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('28', '67', '28', '1000.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('29', '69', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('30', '69', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('31', '69', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('32', '69', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('33', '70', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('34', '70', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('35', '70', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('36', '70', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('37', '71', '25', '998.9970', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('38', '71', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('39', '71', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('40', '71', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('41', '72', '25', '70.9290', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('42', '72', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('43', '72', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('44', '72', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('45', '72', '29', '39.9391', '11055.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('46', '71', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('47', '73', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('48', '73', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('49', '73', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('50', '73', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('51', '73', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('52', '74', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('53', '74', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('54', '74', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('55', '74', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('56', '74', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('57', '75', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('58', '75', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('59', '75', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('60', '75', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('61', '75', '29', '4.9950', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('62', '76', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('63', '76', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('64', '76', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('65', '76', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('66', '76', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('67', '71', '30', '1.0000', '0.0000', '0', '6gK571wbyMWN93jYRgc4NxGHjk84RGuPXC');
INSERT INTO `yang_currency_user` VALUES ('68', '77', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('69', '77', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('70', '77', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('71', '77', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('72', '77', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('73', '77', '30', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('74', '78', '25', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('75', '78', '26', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('76', '78', '27', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('77', '78', '28', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('78', '78', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('79', '78', '30', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('80', '59', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('81', '59', '30', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('82', '59', '31', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('83', '67', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('84', '67', '30', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('85', '67', '31', '0.0000', '0.0000', '0', '');

-- ----------------------------
-- Table structure for `yang_currency_voted`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_voted`;
CREATE TABLE `yang_currency_voted` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种投票表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_voted
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_dividend_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_dividend_config`;
CREATE TABLE `yang_dividend_config` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_dividend_config
-- ----------------------------
INSERT INTO `yang_dividend_config` VALUES ('dividend_id', '0', '0');
INSERT INTO `yang_dividend_config` VALUES ('num1', '0', '0');
INSERT INTO `yang_dividend_config` VALUES ('num2', '50', '0');
INSERT INTO `yang_dividend_config` VALUES ('num3', '100', '0');
INSERT INTO `yang_dividend_config` VALUES ('num4', '150', '0');
INSERT INTO `yang_dividend_config` VALUES ('money1', '1', '0');
INSERT INTO `yang_dividend_config` VALUES ('money2', '2000', '0');
INSERT INTO `yang_dividend_config` VALUES ('money3', '3000', '0');

-- ----------------------------
-- Table structure for `yang_entrust`
-- ----------------------------
DROP TABLE IF EXISTS `yang_entrust`;
CREATE TABLE `yang_entrust` (
  `entrust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '委托记录表（委托管理）',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `all_num` decimal(10,4) NOT NULL COMMENT '总数量',
  `surplus_num` decimal(10,4) NOT NULL COMMENT '剩余数量',
  `price` decimal(10,2) NOT NULL COMMENT '实际价格(卖出价格）',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `type` tinyint(4) NOT NULL COMMENT '类型 卖出单1 还是买入单2',
  `on_price` decimal(10,2) NOT NULL COMMENT '委托价格(挂单价格全价格 卖出价格是扣除手续费的）',
  `fee` decimal(10,2) NOT NULL COMMENT '手续费比例',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`entrust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_entrust
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_examine_pwdtrade`
-- ----------------------------
DROP TABLE IF EXISTS `yang_examine_pwdtrade`;
CREATE TABLE `yang_examine_pwdtrade` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `u_id` int(32) NOT NULL COMMENT '用户ID',
  `pwdtrade` varchar(64) NOT NULL COMMENT '修改支付密码',
  `idcard` varchar(20) NOT NULL COMMENT '身份证号',
  `idcardPositive` varchar(64) NOT NULL COMMENT '身份证正面',
  `idcardSide` varchar(64) NOT NULL COMMENT '身份证反面',
  `idcardHold` varchar(64) NOT NULL COMMENT '手持身份证',
  `add_time` int(32) NOT NULL COMMENT '添加时间',
  `examine_time` int(32) NOT NULL COMMENT '审核通过时间',
  `examine_name` varchar(32) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未审核1通过',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_examine_pwdtrade
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_fill`
-- ----------------------------
DROP TABLE IF EXISTS `yang_fill`;
CREATE TABLE `yang_fill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `num` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bank` int(5) NOT NULL,
  `banknum` varchar(36) NOT NULL,
  `uname` varchar(36) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `bankname` varchar(36) NOT NULL,
  `ctime` int(11) NOT NULL,
  `random` int(10) NOT NULL,
  `tradeno` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL COMMENT '1:网上支付 2：支付宝手动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_fill
-- ----------------------------
INSERT INTO `yang_fill` VALUES ('206', '3355', '2.00', '1106', '', '123', '', '', '1460868657', '4591', '20160417125057531228', '0', '1');
INSERT INTO `yang_fill` VALUES ('207', '3355', '2.00', '1106', '', '123', '', '', '1460868813', '2682', '20160417125333561570', '0', '1');
INSERT INTO `yang_fill` VALUES ('208', '3355', '2.00', '1106', '', '123', '', '', '1460868931', '2759', '20160417125531598926', '0', '1');
INSERT INTO `yang_fill` VALUES ('209', '3355', '2.00', '1106', '', '123', '', '', '1460869161', '9109', '20160417125921605944', '0', '1');
INSERT INTO `yang_fill` VALUES ('210', '3355', '2.00', '1106', '', '123', '', '', '1460869649', '3536', '20160417130729941988', '0', '1');
INSERT INTO `yang_fill` VALUES ('211', '3355', '2.00', '1106', '', '123', '', '', '1460869966', '3298', '20160417131246640300', '1', '1');
INSERT INTO `yang_fill` VALUES ('212', '3355', '2.00', '0', '', '123', '', '1106', '1460870529', '1859', '20160417132209612443', '1', '1');
INSERT INTO `yang_fill` VALUES ('213', '3355', '2.00', '0', '', '123', '', '1106', '1460870950', '7984', '20160417132910390607', '1', '1');
INSERT INTO `yang_fill` VALUES ('214', '3355', '2.00', '0', '', '123', '', '1106', '1460871092', '9997', '20160417133132761973', '1', '1');
INSERT INTO `yang_fill` VALUES ('215', '3355', '2.00', '0', '', '123', '', '1106', '1460871165', '867', '20160417133245253252', '1', '1');

-- ----------------------------
-- Table structure for `yang_finance`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance`;
CREATE TABLE `yang_finance` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=436 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance
-- ----------------------------
INSERT INTO `yang_finance` VALUES ('261', '59', '8', '众筹扣款50', '2', '50.00', '1460633966', '27', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('262', '59', '9', '众筹获取500', '1', '500.00', '1460633966', '27', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('263', '59', '8', '众筹扣款50', '2', '50.00', '1460634054', '27', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('264', '59', '9', '众筹获取500', '1', '500.00', '1460634054', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('265', '59', '11', '交易手续费', '2', '0.00', '1460707583', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('266', '59', '11', '交易手续费', '2', '0.01', '1460707583', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('267', '59', '11', '交易手续费', '2', '0.00', '1460707625', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('268', '59', '11', '交易手续费', '2', '0.01', '1460707625', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('269', '59', '11', '交易手续费', '2', '0.00', '1460707651', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('270', '59', '11', '交易手续费', '2', '0.00', '1460707651', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('271', '59', '11', '交易手续费', '2', '0.01', '1460708069', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('272', '59', '11', '交易手续费', '2', '0.01', '1460708069', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('273', '59', '11', '交易手续费', '2', '0.00', '1460708069', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('274', '59', '11', '交易手续费', '2', '0.01', '1460708069', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('275', '59', '11', '交易手续费', '2', '0.01', '1460708082', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('276', '59', '11', '交易手续费', '2', '0.03', '1460708082', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('277', '59', '11', '交易手续费', '2', '0.01', '1460708082', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('278', '59', '11', '交易手续费', '2', '0.03', '1460708082', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('279', '59', '11', '交易手续费', '2', '0.00', '1461048857', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('280', '59', '11', '交易手续费', '2', '0.01', '1461048857', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('281', '59', '11', '交易手续费', '2', '0.00', '1461048881', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('282', '59', '11', '交易手续费', '2', '0.02', '1461048881', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('283', '59', '11', '交易手续费', '2', '0.00', '1461048881', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('284', '59', '11', '交易手续费', '2', '0.01', '1461048881', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('285', '59', '11', '交易手续费', '2', '0.01', '1461048881', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('286', '59', '11', '交易手续费', '2', '0.05', '1461048881', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('287', '59', '11', '交易手续费', '2', '0.01', '1461048989', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('288', '59', '11', '交易手续费', '2', '0.01', '1461048989', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('289', '59', '11', '交易手续费', '2', '0.00', '1461049080', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('290', '59', '11', '交易手续费', '2', '0.00', '1461049080', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('291', '59', '11', '交易手续费', '2', '0.01', '1461049570', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('292', '59', '11', '交易手续费', '2', '0.01', '1461049570', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('293', '59', '11', '交易手续费', '2', '0.00', '1461049597', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('294', '59', '11', '交易手续费', '2', '0.00', '1461049597', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('295', '59', '11', '交易手续费', '2', '0.00', '1461049618', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('296', '59', '11', '交易手续费', '2', '0.00', '1461049618', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('297', '59', '11', '交易手续费', '2', '0.00', '1461049638', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('298', '59', '11', '交易手续费', '2', '0.00', '1461049638', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('299', '59', '11', '交易手续费', '2', '0.01', '1461049701', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('300', '59', '11', '交易手续费', '2', '0.01', '1461049701', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('301', '59', '11', '交易手续费', '2', '0.00', '1461117996', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('302', '59', '11', '交易手续费', '2', '0.00', '1461117996', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('303', '59', '11', '交易手续费', '2', '0.00', '1461118217', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('304', '59', '11', '交易手续费', '2', '0.00', '1461118217', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('305', '59', '11', '交易手续费', '2', '0.00', '1461118258', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('306', '59', '11', '交易手续费', '2', '0.00', '1461118258', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('307', '59', '11', '交易手续费', '2', '0.00', '1461118273', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('308', '59', '11', '交易手续费', '2', '0.00', '1461118273', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('309', '59', '11', '交易手续费', '2', '0.00', '1461118412', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('310', '59', '11', '交易手续费', '2', '0.00', '1461118412', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('311', '59', '11', '交易手续费', '2', '0.00', '1461118438', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('312', '59', '11', '交易手续费', '2', '0.00', '1461118438', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('313', '59', '11', '交易手续费', '2', '0.00', '1461120145', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('314', '59', '11', '交易手续费', '2', '0.00', '1461120145', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('315', '59', '11', '交易手续费', '2', '0.00', '1461120703', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('316', '59', '11', '交易手续费', '2', '0.00', '1461120703', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('317', '59', '11', '交易手续费', '2', '0.00', '1461120734', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('318', '59', '11', '交易手续费', '2', '0.00', '1461120734', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('319', '59', '11', '交易手续费', '2', '0.00', '1461120788', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('320', '59', '11', '交易手续费', '2', '0.00', '1461120788', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('321', '59', '11', '交易手续费', '2', '0.00', '1461121311', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('322', '59', '11', '交易手续费', '2', '0.00', '1461121311', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('323', '59', '11', '交易手续费', '2', '0.00', '1461121340', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('324', '59', '11', '交易手续费', '2', '0.00', '1461121340', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('325', '59', '11', '交易手续费', '2', '0.00', '1461121394', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('326', '59', '11', '交易手续费', '2', '0.00', '1461121394', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('327', '59', '11', '交易手续费', '2', '0.00', '1461121559', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('328', '59', '11', '交易手续费', '2', '0.00', '1461121559', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('329', '59', '11', '交易手续费', '2', '0.00', '1461121574', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('330', '59', '11', '交易手续费', '2', '0.00', '1461121574', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('331', '59', '11', '交易手续费', '2', '0.00', '1461121589', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('332', '59', '11', '交易手续费', '2', '0.00', '1461121589', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('333', '59', '11', '交易手续费', '2', '0.00', '1461121696', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('334', '59', '11', '交易手续费', '2', '0.00', '1461121696', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('335', '59', '11', '交易手续费', '2', '0.00', '1461121919', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('336', '59', '11', '交易手续费', '2', '0.00', '1461121919', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('337', '59', '11', '交易手续费', '2', '0.00', '1461121972', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('338', '59', '11', '交易手续费', '2', '0.00', '1461121972', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('339', '59', '11', '交易手续费', '2', '0.00', '1461122022', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('340', '59', '11', '交易手续费', '2', '0.00', '1461122022', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('341', '59', '11', '交易手续费', '2', '0.00', '1461122060', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('342', '59', '11', '交易手续费', '2', '0.00', '1461122060', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('343', '59', '11', '交易手续费', '2', '0.00', '1461125219', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('344', '59', '11', '交易手续费', '2', '0.00', '1461125219', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('345', '59', '11', '交易手续费', '2', '0.00', '1461125266', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('346', '59', '11', '交易手续费', '2', '0.00', '1461125266', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('347', '59', '11', '交易手续费', '2', '0.00', '1461125285', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('348', '59', '11', '交易手续费', '2', '0.00', '1461125285', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('349', '59', '11', '交易手续费', '2', '0.00', '1461125476', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('350', '59', '11', '交易手续费', '2', '0.00', '1461125476', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('351', '59', '11', '交易手续费', '2', '0.00', '1461125506', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('352', '59', '11', '交易手续费', '2', '0.00', '1461125506', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('353', '59', '11', '交易手续费', '2', '0.09', '1461132522', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('354', '59', '11', '交易手续费', '2', '0.09', '1461132522', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('355', '59', '11', '交易手续费', '2', '0.91', '1461132522', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('356', '59', '11', '交易手续费', '2', '1.82', '1461132522', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('357', '59', '11', '交易手续费', '2', '2.00', '1461132597', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('358', '59', '11', '交易手续费', '2', '2.00', '1461132597', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('359', '59', '11', '交易手续费', '2', '2.00', '1461137695', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('360', '59', '11', '交易手续费', '2', '2.00', '1461137695', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('361', '59', '11', '交易手续费', '2', '0.01', '1461225045', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('362', '59', '11', '交易手续费', '2', '0.01', '1461225045', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('363', '59', '3', '管理员充值', '1', '5000.00', '1461228938', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('364', '59', '3', '管理员充值', '1', '1000.00', '1461228959', '27', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('365', '59', '11', '交易手续费', '2', '0.01', '1461326038', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('366', '59', '11', '交易手续费', '2', '0.01', '1461326038', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('367', '59', '11', '交易手续费', '2', '0.00', '1461326610', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('368', '59', '11', '交易手续费', '2', '0.00', '1461326610', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('369', '59', '11', '交易手续费', '2', '0.00', '1461326771', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('370', '59', '11', '交易手续费', '2', '0.00', '1461326771', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('371', '60', '11', '交易手续费', '2', '0.00', '1461327560', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('372', '60', '11', '交易手续费', '2', '0.00', '1461327560', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('373', '59', '11', '交易手续费', '2', '0.00', '1461327634', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('374', '60', '11', '交易手续费', '2', '0.00', '1461327634', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('375', '59', '11', '交易手续费', '2', '0.00', '1461327794', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('376', '60', '11', '交易手续费', '2', '0.00', '1461327794', '26', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('377', '71', '3', '管理员充值', '1', '1000.00', '1461421868', '0', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('378', '71', '3', '管理员充值', '1', '1000.00', '1461421886', '25', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('379', '71', '11', '交易手续费', '2', '1.00', '1461422119', '25', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('380', '71', '11', '交易手续费', '2', '1.00', '1461422119', '0', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('381', '71', '11', '交易手续费', '2', '0.00', '1461422187', '25', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('382', '71', '11', '交易手续费', '2', '0.00', '1461422187', '0', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('383', '71', '11', '交易手续费', '2', '0.00', '1461422187', '25', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('384', '71', '11', '交易手续费', '2', '0.00', '1461422187', '0', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('385', '71', '11', '交易手续费', '2', '0.01', '1461422234', '0', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('386', '71', '11', '交易手续费', '2', '0.00', '1461422234', '25', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('387', '71', '11', '交易手续费', '2', '0.00', '1461422270', '25', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('388', '71', '11', '交易手续费', '2', '0.10', '1461422270', '0', '112.192.42.214');
INSERT INTO `yang_finance` VALUES ('389', '71', '6', '线下充值510.5400。', '1', '510.54', '1461719204', '0', '112.243.33.103');
INSERT INTO `yang_finance` VALUES ('390', '72', '6', '线下充值21222.9297。', '1', '21222.93', '1461724692', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('391', '72', '8', '众筹扣款1000', '2', '1000.00', '1461724787', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('392', '72', '9', '众筹获取10000', '1', '10000.00', '1461724787', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('393', '72', '8', '众筹扣款10', '2', '10.00', '1461725088', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('394', '72', '9', '众筹获取100', '1', '100.00', '1461725088', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('395', '72', '8', '众筹扣款100', '2', '100.00', '1461725098', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('396', '72', '9', '众筹获取1000', '1', '1000.00', '1461725098', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('397', '72', '11', '交易手续费', '2', '0.01', '1461726089', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('398', '72', '11', '交易手续费', '2', '0.01', '1461726089', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('399', '72', '11', '交易手续费', '2', '0.01', '1461726100', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('400', '72', '11', '交易手续费', '2', '0.01', '1461726100', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('401', '72', '11', '交易手续费', '2', '0.01', '1461726111', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('402', '72', '11', '交易手续费', '2', '0.01', '1461726111', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('403', '72', '11', '交易手续费', '2', '0.01', '1461726123', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('404', '72', '11', '交易手续费', '2', '0.01', '1461726123', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('405', '72', '11', '交易手续费', '2', '0.01', '1461726158', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('406', '72', '11', '交易手续费', '2', '0.01', '1461726158', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('407', '72', '11', '交易手续费', '2', '0.01', '1461726169', '0', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('408', '72', '11', '交易手续费', '2', '0.01', '1461726169', '29', '116.25.205.226');
INSERT INTO `yang_finance` VALUES ('409', '75', '6', '线下充值2010.3000。', '1', '2010.30', '1461832491', '0', '222.212.201.118');
INSERT INTO `yang_finance` VALUES ('410', '59', '23', '提现123.00', '2', '119.31', '1461832518', '0', '222.212.201.118');
INSERT INTO `yang_finance` VALUES ('411', '75', '11', '交易手续费', '2', '0.01', '1461832968', '29', '222.212.201.118');
INSERT INTO `yang_finance` VALUES ('412', '72', '11', '交易手续费', '2', '0.00', '1461832968', '0', '222.212.201.118');
INSERT INTO `yang_finance` VALUES ('413', '59', '3', '管理员充值', '1', '200.00', '1461833304', '0', '222.212.201.118');
INSERT INTO `yang_finance` VALUES ('414', '59', '11', '交易手续费', '2', '0.01', '1472522632', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('415', '72', '11', '交易手续费', '2', '0.05', '1472522632', '25', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('416', '59', '11', '交易手续费', '2', '0.00', '1472522698', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('417', '72', '11', '交易手续费', '2', '0.02', '1472522698', '25', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('418', '59', '3', '管理员充值', '1', '1000.00', '1472524346', '31', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('419', '59', '3', '管理员充值', '1', '2000.00', '1472525389', '31', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('420', '67', '11', '交易手续费', '2', '15.00', '1472525786', '31', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('421', '59', '11', '交易手续费', '2', '1.50', '1472525786', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('422', '59', '24', '会员自助购买', '2', '200.00', '1472614301', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('423', '59', '24', '会员自助购买', '2', '200.00', '1472614391', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('424', '59', '25', '拆分获得', '1', '1050.00', '1472642087', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('425', '59', '25', '拆分获得', '1', '1050.00', '1472642365', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('426', '67', '25', '拆分获得', '1', '1039.50', '1472642395', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('427', '59', '25', '拆分获得', '1', '1050.00', '1472642767', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('428', '67', '25', '拆分获得', '1', '1039.50', '1472642781', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('429', '61', '25', '拆分获得', '1', '148.50', '1472642811', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('430', '60', '25', '拆分获得', '1', '74.25', '1472642838', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('431', '59', '26', '系统回收获得', '1', '3150.00', '1472648873', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('432', '67', '26', '系统回收获得', '1', '3118.50', '1472648928', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('433', '61', '26', '系统回收获得', '1', '445.50', '1472648954', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('434', '60', '26', '系统回收获得', '1', '222.75', '1472648964', '0', '127.0.0.1');
INSERT INTO `yang_finance` VALUES ('435', '59', '27', '订单回收获得', '1', '700.00', '1472652638', '0', '127.0.0.1');

-- ----------------------------
-- Table structure for `yang_finance_type`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_type`;
CREATE TABLE `yang_finance_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_type
-- ----------------------------
INSERT INTO `yang_finance_type` VALUES ('1', '会员升级', '1');
INSERT INTO `yang_finance_type` VALUES ('3', '管理员充值', '1');
INSERT INTO `yang_finance_type` VALUES ('4', '管理员扣款', '1');
INSERT INTO `yang_finance_type` VALUES ('5', '升级会员', '1');
INSERT INTO `yang_finance_type` VALUES ('6', '充值', '1');
INSERT INTO `yang_finance_type` VALUES ('8', '众筹扣款', '1');
INSERT INTO `yang_finance_type` VALUES ('9', '众筹获取', '1');
INSERT INTO `yang_finance_type` VALUES ('10', '分红奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('11', '交易手续费', '1');
INSERT INTO `yang_finance_type` VALUES ('12', '推荐奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('13', '分红股奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('23', '提现', '1');
INSERT INTO `yang_finance_type` VALUES ('24', '会员自助购买', '1');
INSERT INTO `yang_finance_type` VALUES ('25', '系统拆分获得', '1');
INSERT INTO `yang_finance_type` VALUES ('26', '系统回收获得', '0');
INSERT INTO `yang_finance_type` VALUES ('27', '订单回收获得', '0');

-- ----------------------------
-- Table structure for `yang_findpwd`
-- ----------------------------
DROP TABLE IF EXISTS `yang_findpwd`;
CREATE TABLE `yang_findpwd` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL,
  `token` varchar(100) NOT NULL,
  `add_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_findpwd
-- ----------------------------
INSERT INTO `yang_findpwd` VALUES ('12', '66', 'C9C5D5AEC4D4BCAA49F3CB8A7BA5DBF90A63A9328E5185341228E884A1A58748', '1460718823');
INSERT INTO `yang_findpwd` VALUES ('13', '66', 'C9C5D5AEC4D4BCAA49F3CB8A7BA5DBF916E98A29D552B179551D81A46975C397', '1460719103');
INSERT INTO `yang_findpwd` VALUES ('14', '66', 'C9C5D5AEC4D4BCAA49F3CB8A7BA5DBF93AA1936B542E8AAE9CAF44C3EC3C4977', '1460719228');

-- ----------------------------
-- Table structure for `yang_flash`
-- ----------------------------
DROP TABLE IF EXISTS `yang_flash`;
CREATE TABLE `yang_flash` (
  `flash_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `pic` varchar(128) NOT NULL,
  `jump_url` varchar(128) NOT NULL COMMENT '跳转地址',
  `sort` int(16) NOT NULL COMMENT '排序',
  `type` varchar(16) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`flash_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_flash
-- ----------------------------
INSERT INTO `yang_flash` VALUES ('1', '标题1', '/Uploads/Public/Uploads/2016-03-10/56e0decb7de29.png', 'www.baidu.com', '13', '', '1457577675', '0');
INSERT INTO `yang_flash` VALUES ('2', '标题2', '/Uploads/Public/Uploads/2016-03-10/56e0dedbaba95.png', 'www.baidu.com', '1', '', '1457577691', '0');
INSERT INTO `yang_flash` VALUES ('4', '标题3', '/Uploads/Public/Uploads/2016-03-10/56e0dee822551.png', 'www.baidu.com', '12', '', '1457577704', '0');
INSERT INTO `yang_flash` VALUES ('6', '标题4', '/Uploads/Public/Uploads/2016-03-10/56e0df0f501bd.png', '', '15', '', '1457577743', '0');

-- ----------------------------
-- Table structure for `yang_follow`
-- ----------------------------
DROP TABLE IF EXISTS `yang_follow`;
CREATE TABLE `yang_follow` (
  `follow_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '关注表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `uid` int(32) NOT NULL COMMENT '关注人id',
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`follow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_follow
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_issue`
-- ----------------------------
DROP TABLE IF EXISTS `yang_issue`;
CREATE TABLE `yang_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '众筹表',
  `currency_id` int(11) NOT NULL,
  `num` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '发行数量',
  `price` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '发行价格',
  `deal` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '剩余数量',
  `ctime` varchar(32) NOT NULL COMMENT '添加时间',
  `money` decimal(32,2) NOT NULL COMMENT '总金额',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `min_limit` decimal(32,2) NOT NULL DEFAULT '0.00' COMMENT '最低购买',
  `limit` decimal(32,2) NOT NULL DEFAULT '0.00' COMMENT '限购数量',
  `limit_count` int(32) NOT NULL DEFAULT '1' COMMENT '限购次数',
  `title` varchar(32) NOT NULL,
  `info` text NOT NULL,
  `url1` varchar(64) NOT NULL,
  `url2` varchar(64) NOT NULL,
  `wenjian_url` varchar(64) NOT NULL COMMENT '上传文件路径',
  `num_nosell` decimal(64,0) NOT NULL,
  `add_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `zhongchou_success_bili` decimal(20,4) NOT NULL COMMENT '众筹成功比例',
  `buy_currency_id` int(11) NOT NULL,
  `is_forzen` tinyint(4) NOT NULL COMMENT '0冻结1是可用',
  `remove_forzen_bili` tinyint(4) NOT NULL,
  `remove_forzen_cycle` int(20) NOT NULL COMMENT 's解冻周期',
  `zc_awards_currency_id` varchar(32) NOT NULL,
  `zc_awards_one_ratio` varchar(32) NOT NULL,
  `zc_awards_two_ratio` varchar(32) NOT NULL,
  `zc_awards_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_issue
-- ----------------------------
INSERT INTO `yang_issue` VALUES ('7', '25', '5000000000.000', '0.100', '4999000000.000', '1458316600', '0.00', '2', '0.00', '200000.00', '12', '众筹项目--1', '<div class=\"n5box1\" style=\"margin:0px auto;padding:50px 0px 70px;text-align:center;font-size:16px;color:#333333;font-family:\'microsoft yahei\';background-color:#EFEFEF;\">\r\n	<p>\r\n		本次众筹资金将全部用于项目的\r\n	</p>\r\n	<p>\r\n		租赁费、税费、装修费、招商及物业管理费，\r\n	</p>\r\n	<p>\r\n		众筹成功之后项目方将以投资数额为基准分配收益权，\r\n	</p>\r\n	<p>\r\n		2016年1月27日正式项目预热，\r\n	</p>\r\n	<p>\r\n		项目正式启动后开始计算收益，每三个月分红一次，\r\n	</p>\r\n	<p>\r\n		分红金额将通过投资者在平台开立的账户进行分配。\r\n	</p>\r\n	<p class=\"n5bg1\" style=\"color:#FFFFFF;background-color:#193854;\">\r\n		众筹用户总占股比例前三年80%，后三年67%，预期年回报率17.19%。\r\n	</p>\r\n</div>\r\n<div class=\"n5t2\" style=\"margin:0px;padding:0px;text-align:center;font-family:\'microsoft yahei\';\">\r\n	<img src=\"http://www.ybb.com/Public/Home/images/n5_5_w.png\" alt=\"\" />\r\n</div>\r\n<div class=\"n5box1 n5pt1\" style=\"margin:0px auto;padding:15px 0px 70px;text-align:center;font-size:16px;color:#333333;font-family:\'microsoft yahei\';background-color:#EFEFEF;\">\r\n	<ul>\r\n		<li style=\"text-align:left;background:url(&quot;\">\r\n			项目地块所处的科技园中区，随着高新区日益繁荣和成熟，<br />\r\n基于后续发展优势和自身区位等优势，在产业发展的带动下，<br />\r\n发展为以新材料、计算机、生物医药工程、新一代信息技术为主的高新技术产业密集区，区内物业价值具备强势的上升空间。未来科研办公的需求非常旺盛，平均出租率达9成以上，<br />\r\n项目所在物业一期园区出租率高于95%。\r\n		</li>\r\n		<li style=\"text-align:left;background:url(&quot;\">\r\n			爱创•StarUp创客中心由物业7-12层改造，共6层（物业总共25层）。<br />\r\n旨在为中小企业提供开放，融合的办公环境。<br />\r\n本次众筹标的将分为3期进行，<br />\r\n本次众筹为项目第1期，众筹金额160万。\r\n		</li>\r\n	</ul>\r\n</div>\r\n<div class=\"n5box1 n5pt3\" style=\"margin:0px auto;padding:0px;text-align:center;font-size:16px;color:#333333;font-family:\'microsoft yahei\';background-color:#EFEFEF;\">\r\n	<img src=\"http://www.ybb.com/Public/Home/images/n5_6_w.png\" alt=\"\" />\r\n</div>', '/Uploads/Public/Uploads/2016-03-18/56eb9fdd501bd.jpg', '/Uploads/Public/Uploads/2016-03-18/56eb9f13487ab.jpg', '', '1000000', '1458316800', '1472523640', '0.2000', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `yang_issue` VALUES ('9', '25', '10000.000', '0.100', '8000.000', '1459910808', '0.00', '2', '0.00', '1000.00', '50', '测试', '内容', '/Uploads/Public/Uploads/2016-03-25/56f528fb0b71b.jpg', '/Uploads/Public/Uploads/2016-03-18/56ebddd33d090.jpg', '', '2000', '1458144000', '1472523640', '0.5000', '0', '0', '0', '0', '', '', '', '0');
INSERT INTO `yang_issue` VALUES ('10', '26', '100000.000', '0.100', '98500.000', '1460602023', '0.00', '2', '500.00', '5000.00', '2', '重酬测试', '44545544545544554878744587554458754', '/Uploads/Public/Uploads/2016-04-14/570efebfb71b0.png', '/Uploads/Public/Uploads/2016-04-14/570efebfd1cef.png', '', '500', '1460600628', '1472523640', '0.2000', '27', '0', '10', '0', '26', '10', '5', '1');
INSERT INTO `yang_issue` VALUES ('11', '29', '2000000.000', '0.100', '1868900.000', '1461725498', '0.00', '3', '100.00', '1000000.00', '25', '货币大第一次众筹', '', '', '', '', '120000', '1461724981', '1472523640', '0.5000', '0', '1', '0', '0', '', '', '', '0');

-- ----------------------------
-- Table structure for `yang_issue_log`
-- ----------------------------
DROP TABLE IF EXISTS `yang_issue_log`;
CREATE TABLE `yang_issue_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '认筹日志表',
  `iid` int(11) NOT NULL COMMENT '认筹表id',
  `uid` int(11) NOT NULL,
  `num` decimal(32,0) NOT NULL,
  `price` decimal(32,3) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `buy_currency_id` int(11) NOT NULL,
  `deal` decimal(32,0) NOT NULL COMMENT '冻结剩余量',
  `cid` int(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_issue_log
-- ----------------------------
INSERT INTO `yang_issue_log` VALUES ('30', '10', '59', '500', '0.100', '1472613216', '0', '27', '0', '26');
INSERT INTO `yang_issue_log` VALUES ('31', '10', '59', '500', '0.100', '1472613216', '0', '27', '0', '26');
INSERT INTO `yang_issue_log` VALUES ('32', '11', '72', '10000', '0.100', '1461725613', '1', '0', '0', '29');
INSERT INTO `yang_issue_log` VALUES ('33', '11', '72', '100', '0.100', '1461725613', '1', '0', '0', '29');
INSERT INTO `yang_issue_log` VALUES ('34', '11', '72', '1000', '0.100', '1461725613', '1', '0', '0', '29');

-- ----------------------------
-- Table structure for `yang_link`
-- ----------------------------
DROP TABLE IF EXISTS `yang_link`;
CREATE TABLE `yang_link` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `url` varchar(125) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_link
-- ----------------------------
INSERT INTO `yang_link` VALUES ('1', '百度', 'https://www.baidu.com/', '1', '1458907682');
INSERT INTO `yang_link` VALUES ('3', '新浪', 'https://www.baidu.com/', '1', '1458907678');
INSERT INTO `yang_link` VALUES ('4', '凤凰', 'https://www.baidu.com/', '1', '1458907719');
INSERT INTO `yang_link` VALUES ('5', '比特币', 'https://www.baidu.com/', '1', '1458907730');
INSERT INTO `yang_link` VALUES ('6', '虚拟币', 'https://www.baidu.com/', '1', '1458907737');
INSERT INTO `yang_link` VALUES ('7', '支付宝', 'https://www.baidu.com/', '1', '1458907745');
INSERT INTO `yang_link` VALUES ('8', '淘宝', 'https://www.baidu.com/', '1', '1458907791');
INSERT INTO `yang_link` VALUES ('9', '网易', 'https://www.baidu.com/', '1', '1458907803');
INSERT INTO `yang_link` VALUES ('10', '京东', 'https://www.baidu.com/', '1', '1458907821');
INSERT INTO `yang_link` VALUES ('11', '央视', 'https://www.baidu.com/', '1', '1458907834');
INSERT INTO `yang_link` VALUES ('12', '太平洋', 'https://www.baidu.com/', '1', '1458907845');
INSERT INTO `yang_link` VALUES ('13', '汽车', 'https://www.baidu.com/', '1', '1458907860');
INSERT INTO `yang_link` VALUES ('14', '银行', 'https://www.baidu.com/', '1', '1458907866');
INSERT INTO `yang_link` VALUES ('15', '银行', 'https://www.baidu.com/', '1', '1458907866');
INSERT INTO `yang_link` VALUES ('18', '百度', 'https://www.baidu.com/', '1', '1458907682');
INSERT INTO `yang_link` VALUES ('19', '百度', 'https://www.baidu.com/', '1', '1458907682');
INSERT INTO `yang_link` VALUES ('20', '百度', 'https://www.baidu.com/', '1', '1458907682');
INSERT INTO `yang_link` VALUES ('21', '虚拟币', 'https://www.baidu.com/', '1', '1458907737');
INSERT INTO `yang_link` VALUES ('22', '虚拟币', 'https://www.baidu.com/', '1', '1458907737');
INSERT INTO `yang_link` VALUES ('23', '虚拟币', 'https://www.baidu.com/', '1', '1458907737');

-- ----------------------------
-- Table structure for `yang_member`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member`;
CREATE TABLE `yang_member` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `pid` varchar(64) NOT NULL COMMENT '邀请人',
  `pwdtrade` varchar(64) NOT NULL COMMENT '支付密码',
  `nick` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `name` varchar(32) NOT NULL COMMENT '真实姓名',
  `cardtype` varchar(4) NOT NULL DEFAULT '1' COMMENT '1=身份证2=护照',
  `idcard` varchar(20) NOT NULL COMMENT '身份证',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `ip` varchar(64) NOT NULL COMMENT '注册IP',
  `reg_time` int(32) NOT NULL COMMENT '注册时间',
  `login_ip` varchar(64) NOT NULL COMMENT '本次登录IP',
  `login_time` int(10) NOT NULL COMMENT '登录时间',
  `vip_level` int(10) NOT NULL COMMENT 'vip等级',
  `vip_end_time` int(10) NOT NULL COMMENT 'vip到期时间',
  `rmb` decimal(10,4) NOT NULL COMMENT '人民币',
  `forzen_rmb` decimal(10,4) NOT NULL COMMENT 'forzen_rmb',
  `head` varchar(64) NOT NULL COMMENT 'head',
  `profile` text NOT NULL COMMENT '个人简介',
  `province` int(10) NOT NULL COMMENT '省市',
  `city` int(10) NOT NULL COMMENT '城市',
  `job` varchar(64) NOT NULL COMMENT '职位/头衔',
  `is_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0是正常 1是锁定',
  `status` tinyint(4) NOT NULL COMMENT '0=有效未填写个人信息1=有效并且填写完个人信息2=无效',
  `dividend_num` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `threepwd` varchar(64) DEFAULT '',
  PRIMARY KEY (`member_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member
-- ----------------------------
INSERT INTO `yang_member` VALUES ('59', '867633862@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '我是推荐人', 'e10adc3949ba59abbe56e057f20f883e', '我我14141', '我我14141', '1', '', '15998326815', '127.0.0.1', '1457592457', '127.0.0.1', '1472652058', '0', '0', '7946.5919', '-113.0000', '/Uploads/Member/Head/2016-03-28/56f80917209b4.jpg', '个人简介111', '2', '52', '职位/头衔', '0', '1', '1972.0000', '');
INSERT INTO `yang_member` VALUES ('60', '867633861@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'e10adc3949ba59abbe56e057f20f883e', '我的姓名', '我的姓名', '1', '130823198311224014', '13940295698', '127.0.0.1', '1457592508', '127.0.0.1', '1461327428', '0', '0', '1294.0000', '1.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('61', '867633863@qq.com', 'fa9b5ec55962c97b617ae3bc58229fe1', '60', 'bb76352ecc628b1b9c699fd1038ead1a', '恩恩', '姜鹏', '1', '210106199308251855', '15998326814', '127.0.0.1', '1457592553', '', '0', '0', '0', '1594.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('62', '我33332@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '59', 'e10adc3949ba59abbe56e057f20f883e', '21313', '打的', '1', '210106199308251855', '15998326813', '127.0.0.1', '1457747103', '127.0.0.1', '1458821732', '0', '0', '1000.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('63', '我12580@qq.com', 'fa9b5ec55962c97b617ae3bc58229fe1', '', 'bb76352ecc628b1b9c699fd1038ead1a', '你呗炫斗', '的萨达速度', '1', '21010619930851855', '15999999999', '127.0.0.1', '1457770490', '', '0', '0', '0', '1000.0000', '0.0000', '/Public/Home/images/ulogodefault.jpg', '', '4', '56', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('64', '我1425568992@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '96e79218965eb72c92a549dd5a330112', '张壹', '张壹', '1', '210922199415152221', '13840334995', '127.0.0.1', '1458039491', '127.0.0.1', '1458301344', '0', '0', '1000.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('65', '我ren829@126.com', 'e10adc3949ba59abbe56e057f20f883e', '', '5622616cf9bfca67740e38c1e56eac33', '', '', '1', '', '', '127.0.0.1', '1460001549', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('66', 'ren829@126.com', 'e10adc3949ba59abbe56e057f20f883e', '', '5622616cf9bfca67740e38c1e56eac33', '', '', '1', '', '', '127.0.0.1', '1460524149', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('67', '275043418@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '61', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '', '127.0.0.1', '1460600386', '127.0.0.1', '1472525647', '0', '0', '9947.5000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('68', '2@qq.com', '96e79218965eb72c92a549dd5a330112', '', 'e3ceb5881a0a1fdaad01296d7554868d', '', '', '1', '', '', '101.47.186.255', '1460973084', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('69', '227633862@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '5622616cf9bfca67740e38c1e56eac33', '', '', '1', '', '', '127.0.0.1', '1461062546', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('70', '8676333862@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '5101537566328844dedb399e100f9cd6', '', '', '1', '', '', '127.0.0.1', '1461064420', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('71', 'admin@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'e3ceb5881a0a1fdaad01296d7554868d', '哈哈', '哈哈', '1', '513029199104084053', '13086322508', '112.192.42.214', '1461397230', '175.154.100.246', '1462113991', '0', '0', '995069.4280', '1010.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('72', '123132@163.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'fcea920f7412b5da7be0cf42b8c93759', '测试', '李晓光', '1', '371121198111274811', '13641427302', '116.25.205.226', '1461724142', '60.181.115.253', '1461830562', '0', '0', '999999.9999', '122.4300', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('73', '1q@11.com', 'e7a1878fb11c0373dc646ae5ae18e43b', '', '4297f44b13955235245b2497399d7a93', '', '', '1', '', '', '222.211.212.233', '1461742695', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('74', 'admin@qq.cn', '96e79218965eb72c92a549dd5a330112', '', '9cbf8a4dcb8e30682b927f352d6559a0', '', '', '1', '', '', '39.82.251.88', '1461757871', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('75', 'scourasf@gmail.com', '96e79218965eb72c92a549dd5a330112', '', 'e3ceb5881a0a1fdaad01296d7554868d', '风过吹沙', '霖夺', '1', '371121198111274811', '13551287752', '222.212.201.118', '1461832025', '122.235.142.138', '1461911655', '0', '0', '2006.3000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('76', '123321@qq.com', '4297f44b13955235245b2497399d7a93', '', '8d4646eb2d7067126eb08adb0672f7bb', '', '', '1', '', '', '113.233.92.140', '1461896384', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('77', '1027498421@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '96e79218965eb72c92a549dd5a330112', '', '', '1', '', '', '119.132.67.181', '1462284923', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('78', 'rhszm@126.com', '6df81fd494a7a26fe033c8b432bdbc95', '', '7184fa9b2de35d09070e2854e92273db', '', '', '1', '', '', '123.14.184.15', '1462545069', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');

-- ----------------------------
-- Table structure for `yang_member_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member_comment`;
CREATE TABLE `yang_member_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `comment` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_member_old`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member_old`;
CREATE TABLE `yang_member_old` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `paypwd` varchar(64) NOT NULL COMMENT '邀请人',
  `nike` varchar(32) NOT NULL,
  `realname` varchar(32) NOT NULL,
  `document_type` tinyint(4) NOT NULL,
  `document_num` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `reg_time` int(32) NOT NULL,
  `login_time` int(10) NOT NULL,
  `vip_level` int(10) NOT NULL,
  `vip_end_time` int(10) NOT NULL,
  `rmb` decimal(10,2) NOT NULL,
  `forzen_rmb` decimal(10,2) NOT NULL,
  `head` varchar(64) NOT NULL,
  `profile` text NOT NULL,
  `city` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member_old
-- ----------------------------
INSERT INTO `yang_member_old` VALUES ('1', 'admin@qq.com', '', '', '', '', '0', '', '', '0', '0', '0', '0', '0.00', '0.00', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `yang_message`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message`;
CREATE TABLE `yang_message` (
  `message_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `member_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `message_all_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message
-- ----------------------------
INSERT INTO `yang_message` VALUES ('54', '众筹成功', '64', '3', '您参与的众筹项目测试已成功,扣除交易币5,获取众筹币50', '1458298735', '0', '24');
INSERT INTO `yang_message` VALUES ('55', '我是标题', '60', '4', '我是内容', '1458014795', '1', '21');
INSERT INTO `yang_message` VALUES ('56', '我是标题', '60', '4', '我是内容', '1458014795', '1', '21');
INSERT INTO `yang_message` VALUES ('57', '众筹失败', '60', '-2', '您参与的众筹项目测试未成功', '1458891683', '1', '25');
INSERT INTO `yang_message` VALUES ('58', '众筹失败', '60', '-2', '您参与的众筹项目众筹项目--1未成功', '1458894074', '0', '26');
INSERT INTO `yang_message` VALUES ('59', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984256', '1', '27');
INSERT INTO `yang_message` VALUES ('60', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984260', '1', '28');
INSERT INTO `yang_message` VALUES ('61', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984298', '1', '29');
INSERT INTO `yang_message` VALUES ('62', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1458984340', '1', '30');
INSERT INTO `yang_message` VALUES ('63', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1458994993', '1', '31');
INSERT INTO `yang_message` VALUES ('64', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币2,获取众筹币20', '1458998972', '1', '32');
INSERT INTO `yang_message` VALUES ('65', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999061', '1', '33');
INSERT INTO `yang_message` VALUES ('66', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999086', '1', '34');
INSERT INTO `yang_message` VALUES ('67', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999107', '1', '35');
INSERT INTO `yang_message` VALUES ('68', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1459141895', '0', '36');
INSERT INTO `yang_message` VALUES ('69', 'CNY提现成功', '59', '-2', '恭喜您提现成功！', '1459142269', '0', '37');
INSERT INTO `yang_message` VALUES ('70', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1459142304', '0', '38');
INSERT INTO `yang_message` VALUES ('71', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为100000', '1459142553', '0', '39');
INSERT INTO `yang_message` VALUES ('72', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为600000', '1459142573', '0', '40');
INSERT INTO `yang_message` VALUES ('73', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1459156907', '1', '41');
INSERT INTO `yang_message` VALUES ('74', '分红奖励', '59', '-2', '585', '1459272075', '0', '45');
INSERT INTO `yang_message` VALUES ('75', '分红奖励', '59', '-2', '8547', '1459272123', '1', '50');
INSERT INTO `yang_message` VALUES ('76', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1459272579', '0', '54');
INSERT INTO `yang_message` VALUES ('77', '分红奖励', '59', '-2', 'rdds', '1459302015', '1', '58');
INSERT INTO `yang_message` VALUES ('78', '分红奖励', '59', '-2', 'eee', '1459302056', '1', '63');
INSERT INTO `yang_message` VALUES ('79', '分红奖励', '59', '-2', 'dssd', '1459302173', '1', '69');
INSERT INTO `yang_message` VALUES ('80', '管理员充值', '59', '-2', '管理员充值人民币:2000', '1459417852', '0', '70');
INSERT INTO `yang_message` VALUES ('81', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1459437549', '0', '73');
INSERT INTO `yang_message` VALUES ('82', '分红奖励', '60', '-2', '585', '1459272075', '0', '46');
INSERT INTO `yang_message` VALUES ('83', '分红奖励', '60', '-2', '8547', '1459272123', '0', '51');
INSERT INTO `yang_message` VALUES ('84', '分红奖励', '60', '-2', 'rdds', '1459302015', '0', '59');
INSERT INTO `yang_message` VALUES ('85', '分红奖励', '60', '-2', 'eee', '1459302056', '0', '64');
INSERT INTO `yang_message` VALUES ('86', '分红奖励', '60', '-2', 'dssd', '1459302173', '0', '68');
INSERT INTO `yang_message` VALUES ('87', '管理员充值', '59', '-2', '管理员充值人民币:500', '1460032830', '0', '74');
INSERT INTO `yang_message` VALUES ('88', '管理员充值', '59', '-2', '管理员充值狗狗币:1000', '1460086552', '0', '76');
INSERT INTO `yang_message` VALUES ('89', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460118277', '0', '77');
INSERT INTO `yang_message` VALUES ('90', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1460118279', '0', '78');
INSERT INTO `yang_message` VALUES ('91', 'CNY提现成功', '59', '-2', '恭喜您提现1000.00成功！', '1460126924', '0', '79');
INSERT INTO `yang_message` VALUES ('92', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460126929', '0', '80');
INSERT INTO `yang_message` VALUES ('93', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127223', '0', '87');
INSERT INTO `yang_message` VALUES ('94', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127227', '0', '88');
INSERT INTO `yang_message` VALUES ('95', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127240', '0', '89');
INSERT INTO `yang_message` VALUES ('96', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127273', '0', '90');
INSERT INTO `yang_message` VALUES ('97', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127274', '0', '91');
INSERT INTO `yang_message` VALUES ('98', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127275', '0', '92');
INSERT INTO `yang_message` VALUES ('99', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127276', '0', '93');
INSERT INTO `yang_message` VALUES ('100', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127277', '0', '94');
INSERT INTO `yang_message` VALUES ('101', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127278', '0', '95');
INSERT INTO `yang_message` VALUES ('102', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127283', '0', '96');
INSERT INTO `yang_message` VALUES ('103', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127299', '0', '97');
INSERT INTO `yang_message` VALUES ('104', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127306', '0', '98');
INSERT INTO `yang_message` VALUES ('105', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127326', '0', '99');
INSERT INTO `yang_message` VALUES ('106', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127328', '0', '100');
INSERT INTO `yang_message` VALUES ('107', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127452', '0', '101');
INSERT INTO `yang_message` VALUES ('108', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460127455', '0', '102');
INSERT INTO `yang_message` VALUES ('109', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127465', '0', '103');
INSERT INTO `yang_message` VALUES ('110', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127506', '0', '104');
INSERT INTO `yang_message` VALUES ('111', '管理员充值', '59', '-2', '管理员充值人民币:1000', '1460349599', '0', '105');
INSERT INTO `yang_message` VALUES ('112', '管理员充值', '59', '-2', '管理员充值人民币:1111', '1460349612', '0', '106');
INSERT INTO `yang_message` VALUES ('113', '管理员充值', '59', '-2', '管理员充值人民币:2222', '1460349639', '0', '107');
INSERT INTO `yang_message` VALUES ('114', '管理员充值', '59', '-2', '管理员充值人民币:888', '1460350077', '1', '108');
INSERT INTO `yang_message` VALUES ('115', '管理员充值', '59', '-2', '管理员充值狗狗币:50', '1460350099', '1', '109');
INSERT INTO `yang_message` VALUES ('116', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601735', '1', '111');
INSERT INTO `yang_message` VALUES ('117', '众筹成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601033', '0', '110');
INSERT INTO `yang_message` VALUES ('118', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601852', '0', '112');
INSERT INTO `yang_message` VALUES ('119', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602083', '0', '113');
INSERT INTO `yang_message` VALUES ('120', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602123', '0', '114');
INSERT INTO `yang_message` VALUES ('121', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602172', '0', '115');
INSERT INTO `yang_message` VALUES ('122', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602247', '0', '116');
INSERT INTO `yang_message` VALUES ('123', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460632973', '0', '117');
INSERT INTO `yang_message` VALUES ('124', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633136', '0', '118');
INSERT INTO `yang_message` VALUES ('125', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633246', '0', '119');
INSERT INTO `yang_message` VALUES ('126', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633283', '0', '120');
INSERT INTO `yang_message` VALUES ('127', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633326', '0', '121');
INSERT INTO `yang_message` VALUES ('128', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633459', '0', '122');
INSERT INTO `yang_message` VALUES ('129', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633966', '0', '124');
INSERT INTO `yang_message` VALUES ('130', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460634054', '1', '125');
INSERT INTO `yang_message` VALUES ('131', '434334433443', '59', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039', '1', '126');
INSERT INTO `yang_message` VALUES ('132', '管理员充值', '59', '-2', '管理员充值狗狗币:5000', '1461228938', '0', '127');
INSERT INTO `yang_message` VALUES ('133', '管理员充值', '59', '-2', '管理员充值进盟币:1000', '1461228959', '1', '128');
INSERT INTO `yang_message` VALUES ('134', '434334433443', '60', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039', '0', '126');
INSERT INTO `yang_message` VALUES ('135', '管理员充值', '71', '-2', '管理员充值人民币:1000', '1461421868', '0', '129');
INSERT INTO `yang_message` VALUES ('136', '管理员充值', '71', '-2', '管理员充值元宝币:1000', '1461421886', '1', '130');
INSERT INTO `yang_message` VALUES ('137', '人工充值成功', '71', '-2', '您申请的人工充值已成功，充值金额为', '1461719204', '0', '131');
INSERT INTO `yang_message` VALUES ('138', '人工充值成功', '72', '-2', '您申请的人工充值已成功，充值金额为', '1461724692', '0', '132');
INSERT INTO `yang_message` VALUES ('139', '认购成功', '72', '-2', '您参与的众筹项目货币大第一次众筹已成功,扣除交易币1000,获取众筹币10000', '1461724787', '0', '133');
INSERT INTO `yang_message` VALUES ('140', '认购成功', '72', '-2', '您参与的众筹项目货币大第一次众筹已成功,扣除交易币10,获取众筹币100', '1461725088', '0', '134');
INSERT INTO `yang_message` VALUES ('141', '认购成功', '72', '-2', '您参与的众筹项目货币大第一次众筹已成功,扣除交易币100,获取众筹币1000', '1461725098', '0', '135');
INSERT INTO `yang_message` VALUES ('142', '人工充值成功', '75', '-2', '您申请的人工充值已成功，充值金额为', '1461832491', '1', '136');
INSERT INTO `yang_message` VALUES ('143', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1461832518', '0', '137');
INSERT INTO `yang_message` VALUES ('144', '管理员充值', '59', '-2', '管理员充值人民币:200', '1461833304', '0', '138');
INSERT INTO `yang_message` VALUES ('145', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633488', '0', '123');
INSERT INTO `yang_message` VALUES ('146', '434334433443', '67', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039', '0', '126');
INSERT INTO `yang_message` VALUES ('147', '管理员充值', '59', '-2', '管理员充值沃尔玛币:1000', '1472524346', '0', '139');
INSERT INTO `yang_message` VALUES ('148', '管理员充值', '59', '-2', '管理员充值沃尔玛币:2000', '1472525389', '1', '140');
INSERT INTO `yang_message` VALUES ('149', '会员自助购买', '59', '-2', '会员自助购买元宝币:200', '1472614302', '0', '141');
INSERT INTO `yang_message` VALUES ('150', '会员自助购买', '59', '-2', '会员自助购买元宝币:200', '1472614391', '0', '142');

-- ----------------------------
-- Table structure for `yang_message_all`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message_all`;
CREATE TABLE `yang_message_all` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `u_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message_all
-- ----------------------------
INSERT INTO `yang_message_all` VALUES ('21', '我是标题', '-1', '4', '我是内容', '1458014795');
INSERT INTO `yang_message_all` VALUES ('22', '我是标题', '59', '4', '我是内容', '1458014795');
INSERT INTO `yang_message_all` VALUES ('24', '众筹成功', '64', '3', '您参与的众筹项目测试已成功,扣除交易币5,获取众筹币50', '1458298735');
INSERT INTO `yang_message_all` VALUES ('25', '众筹失败', '60', '-2', '您参与的众筹项目测试未成功', '1458891683');
INSERT INTO `yang_message_all` VALUES ('26', '众筹失败', '60', '-2', '您参与的众筹项目众筹项目--1未成功', '1458894074');
INSERT INTO `yang_message_all` VALUES ('27', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984256');
INSERT INTO `yang_message_all` VALUES ('28', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984260');
INSERT INTO `yang_message_all` VALUES ('29', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984298');
INSERT INTO `yang_message_all` VALUES ('30', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1458984340');
INSERT INTO `yang_message_all` VALUES ('31', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1458994993');
INSERT INTO `yang_message_all` VALUES ('32', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币2,获取众筹币20', '1458998972');
INSERT INTO `yang_message_all` VALUES ('33', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999061');
INSERT INTO `yang_message_all` VALUES ('34', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999086');
INSERT INTO `yang_message_all` VALUES ('35', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999107');
INSERT INTO `yang_message_all` VALUES ('36', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1459141895');
INSERT INTO `yang_message_all` VALUES ('37', 'CNY提现成功', '59', '-2', '恭喜您提现成功！', '1459142269');
INSERT INTO `yang_message_all` VALUES ('38', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1459142304');
INSERT INTO `yang_message_all` VALUES ('39', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为100000', '1459142553');
INSERT INTO `yang_message_all` VALUES ('40', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为600000', '1459142573');
INSERT INTO `yang_message_all` VALUES ('41', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1459156907');
INSERT INTO `yang_message_all` VALUES ('42', '分红奖励', '1', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('43', '分红奖励', '61', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('44', '分红奖励', '64', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('45', '分红奖励', '59', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('46', '分红奖励', '60', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('47', '分红奖励', '1', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('48', '分红奖励', '61', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('49', '分红奖励', '64', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('50', '分红奖励', '59', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('51', '分红奖励', '60', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('52', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459272571');
INSERT INTO `yang_message_all` VALUES ('53', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459272576');
INSERT INTO `yang_message_all` VALUES ('54', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1459272579');
INSERT INTO `yang_message_all` VALUES ('55', '分红奖励', '1', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('56', '分红奖励', '61', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('57', '分红奖励', '64', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('58', '分红奖励', '59', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('59', '分红奖励', '60', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('60', '分红奖励', '1', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('61', '分红奖励', '61', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('62', '分红奖励', '64', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('63', '分红奖励', '59', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('64', '分红奖励', '60', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('65', '分红奖励', '1', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('66', '分红奖励', '61', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('67', '分红奖励', '64', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('68', '分红奖励', '60', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('69', '分红奖励', '59', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('70', '管理员充值', '59', '-2', '管理员充值人民币:2000', '1459417852');
INSERT INTO `yang_message_all` VALUES ('71', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459437542');
INSERT INTO `yang_message_all` VALUES ('72', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459437546');
INSERT INTO `yang_message_all` VALUES ('73', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1459437549');
INSERT INTO `yang_message_all` VALUES ('74', '管理员充值', '59', '-2', '管理员充值人民币:500', '1460032830');
INSERT INTO `yang_message_all` VALUES ('75', '管理员充值', '65', '-2', '管理员充值进盟币:500', '1460086516');
INSERT INTO `yang_message_all` VALUES ('76', '管理员充值', '59', '-2', '管理员充值狗狗币:1000', '1460086552');
INSERT INTO `yang_message_all` VALUES ('77', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460118277');
INSERT INTO `yang_message_all` VALUES ('78', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1460118279');
INSERT INTO `yang_message_all` VALUES ('79', 'CNY提现成功', '59', '-2', '恭喜您提现1000.00成功！', '1460126924');
INSERT INTO `yang_message_all` VALUES ('80', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460126929');
INSERT INTO `yang_message_all` VALUES ('81', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460126933');
INSERT INTO `yang_message_all` VALUES ('82', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127006');
INSERT INTO `yang_message_all` VALUES ('83', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127009');
INSERT INTO `yang_message_all` VALUES ('84', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127152');
INSERT INTO `yang_message_all` VALUES ('85', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127161');
INSERT INTO `yang_message_all` VALUES ('86', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127163');
INSERT INTO `yang_message_all` VALUES ('87', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127223');
INSERT INTO `yang_message_all` VALUES ('88', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127227');
INSERT INTO `yang_message_all` VALUES ('89', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127240');
INSERT INTO `yang_message_all` VALUES ('90', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127273');
INSERT INTO `yang_message_all` VALUES ('91', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127274');
INSERT INTO `yang_message_all` VALUES ('92', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127275');
INSERT INTO `yang_message_all` VALUES ('93', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127276');
INSERT INTO `yang_message_all` VALUES ('94', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127277');
INSERT INTO `yang_message_all` VALUES ('95', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127278');
INSERT INTO `yang_message_all` VALUES ('96', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127283');
INSERT INTO `yang_message_all` VALUES ('97', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127299');
INSERT INTO `yang_message_all` VALUES ('98', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127306');
INSERT INTO `yang_message_all` VALUES ('99', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127326');
INSERT INTO `yang_message_all` VALUES ('100', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127328');
INSERT INTO `yang_message_all` VALUES ('101', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127452');
INSERT INTO `yang_message_all` VALUES ('102', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460127455');
INSERT INTO `yang_message_all` VALUES ('103', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127465');
INSERT INTO `yang_message_all` VALUES ('104', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127506');
INSERT INTO `yang_message_all` VALUES ('105', '管理员充值', '59', '-2', '管理员充值人民币:1000', '1460349599');
INSERT INTO `yang_message_all` VALUES ('106', '管理员充值', '59', '-2', '管理员充值人民币:1111', '1460349612');
INSERT INTO `yang_message_all` VALUES ('107', '管理员充值', '59', '-2', '管理员充值人民币:2222', '1460349639');
INSERT INTO `yang_message_all` VALUES ('108', '管理员充值', '59', '-2', '管理员充值人民币:888', '1460350077');
INSERT INTO `yang_message_all` VALUES ('109', '管理员充值', '59', '-2', '管理员充值狗狗币:50', '1460350099');
INSERT INTO `yang_message_all` VALUES ('110', '众筹成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601033');
INSERT INTO `yang_message_all` VALUES ('111', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601735');
INSERT INTO `yang_message_all` VALUES ('112', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601852');
INSERT INTO `yang_message_all` VALUES ('113', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602083');
INSERT INTO `yang_message_all` VALUES ('114', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602123');
INSERT INTO `yang_message_all` VALUES ('115', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602172');
INSERT INTO `yang_message_all` VALUES ('116', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602247');
INSERT INTO `yang_message_all` VALUES ('117', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460632973');
INSERT INTO `yang_message_all` VALUES ('118', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633136');
INSERT INTO `yang_message_all` VALUES ('119', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633246');
INSERT INTO `yang_message_all` VALUES ('120', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633283');
INSERT INTO `yang_message_all` VALUES ('121', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633326');
INSERT INTO `yang_message_all` VALUES ('122', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633459');
INSERT INTO `yang_message_all` VALUES ('123', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633488');
INSERT INTO `yang_message_all` VALUES ('124', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633966');
INSERT INTO `yang_message_all` VALUES ('125', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460634054');
INSERT INTO `yang_message_all` VALUES ('126', '434334433443', '-1', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039');
INSERT INTO `yang_message_all` VALUES ('127', '管理员充值', '59', '-2', '管理员充值狗狗币:5000', '1461228938');
INSERT INTO `yang_message_all` VALUES ('128', '管理员充值', '59', '-2', '管理员充值进盟币:1000', '1461228959');
INSERT INTO `yang_message_all` VALUES ('129', '管理员充值', '71', '-2', '管理员充值人民币:1000', '1461421868');
INSERT INTO `yang_message_all` VALUES ('130', '管理员充值', '71', '-2', '管理员充值元宝币:1000', '1461421886');
INSERT INTO `yang_message_all` VALUES ('131', '人工充值成功', '71', '-2', '您申请的人工充值已成功，充值金额为', '1461719204');
INSERT INTO `yang_message_all` VALUES ('132', '人工充值成功', '72', '-2', '您申请的人工充值已成功，充值金额为', '1461724692');
INSERT INTO `yang_message_all` VALUES ('133', '认购成功', '72', '-2', '您参与的众筹项目货币大第一次众筹已成功,扣除交易币1000,获取众筹币10000', '1461724787');
INSERT INTO `yang_message_all` VALUES ('134', '认购成功', '72', '-2', '您参与的众筹项目货币大第一次众筹已成功,扣除交易币10,获取众筹币100', '1461725088');
INSERT INTO `yang_message_all` VALUES ('135', '认购成功', '72', '-2', '您参与的众筹项目货币大第一次众筹已成功,扣除交易币100,获取众筹币1000', '1461725098');
INSERT INTO `yang_message_all` VALUES ('136', '人工充值成功', '75', '-2', '您申请的人工充值已成功，充值金额为', '1461832491');
INSERT INTO `yang_message_all` VALUES ('137', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1461832518');
INSERT INTO `yang_message_all` VALUES ('138', '管理员充值', '59', '-2', '管理员充值人民币:200', '1461833304');
INSERT INTO `yang_message_all` VALUES ('139', '管理员充值', '59', '-2', '管理员充值沃尔玛币:1000', '1472524346');
INSERT INTO `yang_message_all` VALUES ('140', '管理员充值', '59', '-2', '管理员充值沃尔玛币:2000', '1472525389');
INSERT INTO `yang_message_all` VALUES ('141', '会员自助购买', '59', '-2', '会员自助购买元宝币:200', '1472614302');
INSERT INTO `yang_message_all` VALUES ('142', '会员自助购买', '59', '-2', '会员自助购买元宝币:200', '1472614391');

-- ----------------------------
-- Table structure for `yang_message_category`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message_category`;
CREATE TABLE `yang_message_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message_category
-- ----------------------------
INSERT INTO `yang_message_category` VALUES ('-2', '个人信息');
INSERT INTO `yang_message_category` VALUES ('4', '系统消息');
INSERT INTO `yang_message_category` VALUES ('-1', '系统公告');

-- ----------------------------
-- Table structure for `yang_nav`
-- ----------------------------
DROP TABLE IF EXISTS `yang_nav`;
CREATE TABLE `yang_nav` (
  `nav_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '权限表',
  `nav_name` varchar(32) NOT NULL COMMENT '列表名称',
  `nav_e` varchar(32) NOT NULL COMMENT '英文标识',
  `nav_url` varchar(64) NOT NULL COMMENT 'url路径',
  `cat_id` varchar(32) NOT NULL COMMENT '类别',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_nav
-- ----------------------------
INSERT INTO `yang_nav` VALUES ('1', '系统设置', '&#xe642;', '/Config/index', 'sys');
INSERT INTO `yang_nav` VALUES ('2', '幻灯管理', '&#xf002c;', '/Flash/index', 'common');
INSERT INTO `yang_nav` VALUES ('3', '币种管理', '&#xe756;', '/Currency/index', 'wallet');
INSERT INTO `yang_nav` VALUES ('4', '官方公告管理', '&#xe6f7;', '/Art/index/article_category_id/1', 'article');
INSERT INTO `yang_nav` VALUES ('6', '友情链接', '&#xe602;', '/Link/index', 'common');
INSERT INTO `yang_nav` VALUES ('7', '会员列表', '&#x3434;', '/Member/index', 'user');
INSERT INTO `yang_nav` VALUES ('8', '添加会员', '&#xe62f;', '/Member/addMember', 'user');
INSERT INTO `yang_nav` VALUES ('15', '提现审核', '&#xe6a7;', '/Pending/index', 'finance');
INSERT INTO `yang_nav` VALUES ('9', '系统消息', '&#xe627;', '/Message/index', 'user');
INSERT INTO `yang_nav` VALUES ('10', '交易密码修改审核', '&#xe600;', '/Examine/index', 'user');
INSERT INTO `yang_nav` VALUES ('11', '人工充值管理', '&#xe61e;', '/Pay/payByMan', 'finance');
INSERT INTO `yang_nav` VALUES ('12', '财务日志', '&#xe659;', '/Finance/index', 'finance');
INSERT INTO `yang_nav` VALUES ('13', '众筹管理', '&#xe73e;', '/Zhongchou/index', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('14', '众筹记录', '&#xe78a;', '/Zhongchou/log', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('17', '委托记录', '&#xecf6;', '/Trade/orders', 'trade');
INSERT INTO `yang_nav` VALUES ('16', '交易记录', '&#xe608;', '/Trade/trade', 'trade');
INSERT INTO `yang_nav` VALUES ('21', '充币记录', '&#xe604;', '/Currency/chongzhi_index', 'wallet');
INSERT INTO `yang_nav` VALUES ('22', '提币记录', '&#xe601;', '/Currency/tibi_index', 'wallet');
INSERT INTO `yang_nav` VALUES ('26', '添加分红奖励', '&#xe617;', '/Bonus/index', 'bonus');
INSERT INTO `yang_nav` VALUES ('27', '信息设置', '&#xe642;', '/Config/information', 'sys');
INSERT INTO `yang_nav` VALUES ('28', '财务设置', '&#xe61d;', '/Config/finance', 'sys');
INSERT INTO `yang_nav` VALUES ('29', '客服设置', '&#xe77f;', '/Config/customerService', 'sys');
INSERT INTO `yang_nav` VALUES ('30', '短信邮箱设置', '&#xe6ef;', '/Config/shortMessage', 'sys');
INSERT INTO `yang_nav` VALUES ('18', '全站统计信息', '&#xe73e;', '/Index/infoStatistics', 'common');
INSERT INTO `yang_nav` VALUES ('33', '银行列表', '&#xe637;', '/Websitebank/index', 'bank');
INSERT INTO `yang_nav` VALUES ('32', '添加银行', '&#xe601;', '/Websitebank/addBank', 'bank');
INSERT INTO `yang_nav` VALUES ('35', '会员钱包充值列表', '&#xe60e;', '/CurrencyUser/MemberQianbaoChongzhiUrl', 'wallet');
INSERT INTO `yang_nav` VALUES ('36', '会员钱包提币列表', '&#xe640;', '/CurrencyUser/MemberQianbaoTibiUrl', 'wallet');
INSERT INTO `yang_nav` VALUES ('40', '分红列表', '&#xe617;', '/Bonus/bonusList', 'bonus');
INSERT INTO `yang_nav` VALUES ('61', '币种拆分', '&#xe640;', '/Currency/split', 'wallet');
INSERT INTO `yang_nav` VALUES ('41', '管理员管理', '&#xe64d;', '/Manage/index', 'admin');
INSERT INTO `yang_nav` VALUES ('52', '财务明细', '&#xe73e;', '/Finance/count', 'finance');
INSERT INTO `yang_nav` VALUES ('43', '众筹推荐奖励列表', '&#xe601;', '/Zhongchou/awardsList', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('45', '管理员充值管理', '&#xe61e;', '/Pay/admRecharge', 'finance');
INSERT INTO `yang_nav` VALUES ('46', '后台入口配置管理', '&#xe642;', '/Fileconfigoperation/saveEntrance', 'sys');
INSERT INTO `yang_nav` VALUES ('47', '数据库配置管理', '&#xe642;', '/Fileconfigoperation/saveDb', 'sys');
INSERT INTO `yang_nav` VALUES ('48', '分红股管理', '&#xe617;', '/Dividend/index', 'bonus');
INSERT INTO `yang_nav` VALUES ('49', '市场动态管理', '&#xe6f7;', '/Art/index/article_category_id/2', 'article');
INSERT INTO `yang_nav` VALUES ('50', '帮助中心管理', '&#xe6f7;', '/Art/helpindex/article_category_id/6', 'article');
INSERT INTO `yang_nav` VALUES ('51', '团队信息管理', '&#xe6f7;', '/Art/index/article_category_id/7', 'article');
INSERT INTO `yang_nav` VALUES ('56', '第三方充值记录', '&#xe6f7;', '/Pay/fill', 'finance');
INSERT INTO `yang_nav` VALUES ('57', '推广排名', '&#xe6f7;', '/Tongji/tuiguang', 'tongji');
INSERT INTO `yang_nav` VALUES ('58', '数据统计', '&#xe6f7;', '/Tongji/shuju', 'tongji');
INSERT INTO `yang_nav` VALUES ('59', '详细统计', '&#xe6f7;', '/Tongji/xiangxi', 'tongji');
INSERT INTO `yang_nav` VALUES ('60', '余额排名', '&#xe6f7;', '/Tongji/yue', 'tongji');
INSERT INTO `yang_nav` VALUES ('62', '币种回收', '&#xe640;', '/Currency/recovery', 'wallet');

-- ----------------------------
-- Table structure for `yang_orders`
-- ----------------------------
DROP TABLE IF EXISTS `yang_orders`;
CREATE TABLE `yang_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `currency_id` int(10) NOT NULL COMMENT '主币种ID',
  `currency_trade_id` int(10) NOT NULL COMMENT '对应交易币种ID',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `num` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT '挂单数量',
  `trade_num` decimal(20,4) NOT NULL COMMENT '成交数量',
  `fee` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT '记录的是比例',
  `type` char(4) NOT NULL DEFAULT '0' COMMENT 'buy sell',
  `add_time` int(10) NOT NULL,
  `trade_time` int(10) NOT NULL COMMENT '成交时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0是挂单，1是部分成交,2成交， -1撤销',
  PRIMARY KEY (`orders_id`),
  KEY `add_time` (`add_time`),
  KEY `cid` (`currency_id`),
  KEY `id` (`orders_id`),
  KEY `member_id` (`member_id`),
  KEY `trade_id` (`currency_trade_id`),
  KEY `member_id_2` (`member_id`,`currency_id`,`currency_trade_id`,`price`,`num`,`trade_num`,`type`,`status`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `currency_trade_id` (`currency_trade_id`),
  KEY `currency_id` (`currency_id`,`type`,`add_time`) USING BTREE,
  KEY `price` (`price`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_orders
-- ----------------------------
INSERT INTO `yang_orders` VALUES ('746', '60', '26', '0', '1.0000', '1.0000', '0.0000', '0.0010', 'buy', '1461327774', '0', '2');
INSERT INTO `yang_orders` VALUES ('747', '60', '26', '0', '2.0000', '1.0000', '1.0000', '0.0010', 'buy', '1461327782', '1461327794', '2');
INSERT INTO `yang_orders` VALUES ('748', '59', '26', '0', '2.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461327794', '1461327794', '2');
INSERT INTO `yang_orders` VALUES ('749', '71', '25', '0', '1.0000', '1000.0000', '1000.0000', '0.0010', 'sell', '1461422073', '1461422187', '2');
INSERT INTO `yang_orders` VALUES ('750', '71', '25', '0', '1.0000', '999.0000', '999.0000', '0.0010', 'buy', '1461422119', '1461422119', '2');
INSERT INTO `yang_orders` VALUES ('751', '71', '25', '0', '2.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461422165', '1461422187', '2');
INSERT INTO `yang_orders` VALUES ('752', '71', '25', '0', '2.0000', '2.0000', '2.0000', '0.0010', 'buy', '1461422187', '1461422187', '2');
INSERT INTO `yang_orders` VALUES ('753', '71', '25', '0', '10.0000', '1.0000', '1.0000', '0.0010', 'buy', '1461422218', '1461422234', '2');
INSERT INTO `yang_orders` VALUES ('754', '71', '25', '0', '10.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461422234', '1461422234', '2');
INSERT INTO `yang_orders` VALUES ('755', '71', '25', '0', '100.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461422254', '1461422270', '2');
INSERT INTO `yang_orders` VALUES ('756', '71', '25', '0', '100.0000', '1.0000', '1.0000', '0.0010', 'buy', '1461422270', '1461422270', '2');
INSERT INTO `yang_orders` VALUES ('757', '71', '26', '0', '1.0000', '1000.0000', '0.0000', '0.0010', 'buy', '1461719106', '0', '2');
INSERT INTO `yang_orders` VALUES ('758', '72', '29', '0', '0.1100', '12312.0000', '0.0000', '0.0010', 'buy', '1461725268', '0', '2');
INSERT INTO `yang_orders` VALUES ('759', '72', '29', '0', '0.1500', '121111.0000', '0.0000', '0.0010', 'buy', '1461725307', '0', '2');
INSERT INTO `yang_orders` VALUES ('760', '72', '25', '0', '0.1000', '121.0000', '71.0000', '0.0010', 'buy', '1461725438', '1472522698', '2');
INSERT INTO `yang_orders` VALUES ('761', '72', '29', '0', '0.8000', '11100.0000', '45.0000', '0.0010', 'sell', '1461725680', '1461832968', '2');
INSERT INTO `yang_orders` VALUES ('762', '72', '29', '0', '0.8000', '10.0000', '10.0000', '0.0010', 'buy', '1461726088', '1461726088', '2');
INSERT INTO `yang_orders` VALUES ('763', '72', '29', '0', '0.8000', '10.0000', '10.0000', '0.0010', 'buy', '1461726100', '1461726100', '2');
INSERT INTO `yang_orders` VALUES ('764', '72', '29', '0', '0.8000', '10.0000', '10.0000', '0.0010', 'buy', '1461726111', '1461726111', '2');
INSERT INTO `yang_orders` VALUES ('765', '72', '29', '0', '0.8000', '10.0000', '10.0000', '0.0010', 'buy', '1461726123', '1461726123', '2');
INSERT INTO `yang_orders` VALUES ('766', '72', '29', '0', '0.6000', '1000.0000', '20.9500', '0.0010', 'buy', '1461726147', '1461726169', '2');
INSERT INTO `yang_orders` VALUES ('767', '72', '29', '0', '0.6000', '10.0000', '10.0000', '0.0010', 'sell', '1461726158', '1461726158', '2');
INSERT INTO `yang_orders` VALUES ('768', '72', '29', '0', '0.6000', '10.9500', '10.9500', '0.0010', 'sell', '1461726169', '1461726169', '2');
INSERT INTO `yang_orders` VALUES ('769', '75', '29', '0', '0.8000', '5.0000', '5.0000', '0.0010', 'buy', '1461832968', '1461832968', '2');
INSERT INTO `yang_orders` VALUES ('770', '59', '25', '0', '0.1000', '50.0000', '50.0000', '0.0010', 'sell', '1472522632', '1472522632', '2');
INSERT INTO `yang_orders` VALUES ('771', '59', '25', '0', '0.1000', '21.0000', '21.0000', '0.0010', 'sell', '1472522698', '1472522698', '2');
INSERT INTO `yang_orders` VALUES ('772', '59', '25', '0', '0.1000', '100.0000', '0.0000', '0.0010', 'buy', '1472522738', '0', '2');
INSERT INTO `yang_orders` VALUES ('773', '59', '31', '0', '0.1000', '1500.0000', '1500.0000', '0.0100', 'sell', '1472525460', '1472525786', '2');
INSERT INTO `yang_orders` VALUES ('774', '67', '31', '0', '0.1000', '1500.0000', '1500.0000', '0.0100', 'buy', '1472525786', '1472525786', '2');
INSERT INTO `yang_orders` VALUES ('775', '59', '31', '0', '1.0000', '500.0000', '0.0000', '0.0100', 'sell', '1472526677', '0', '2');
INSERT INTO `yang_orders` VALUES ('776', '59', '25', '0', '0.1000', '500.0000', '0.0000', '0.0010', 'sell', '1412652180', '0', '-1');

-- ----------------------------
-- Table structure for `yang_pay`
-- ----------------------------
DROP TABLE IF EXISTS `yang_pay`;
CREATE TABLE `yang_pay` (
  `pay_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '充值表',
  `member_name` varchar(32) NOT NULL COMMENT '汇款人',
  `add_time` int(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `account` varchar(128) NOT NULL COMMENT '汇出银行账号',
  `type` int(4) NOT NULL COMMENT '1是银行   2是支付宝 ,3管理员充值,4,用户自行购买',
  `money` int(64) NOT NULL COMMENT '要充值钱数',
  `count` float(64,4) NOT NULL COMMENT '总量，等于充值数+手续费',
  `currency_id` int(32) DEFAULT '0',
  `member_id` varchar(32) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_pay
-- ----------------------------
INSERT INTO `yang_pay` VALUES ('1', '姜鹏', '1458965067', '1', '2147483647', '1', '1000', '1006.6600', '0', '59');
INSERT INTO `yang_pay` VALUES ('2', '姜鹏', '1459142515', '1', '2147483647', '1', '6000', '6010.0098', '0', '59');
INSERT INTO `yang_pay` VALUES ('16', '', '0', '1', '', '3', '2000', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('17', '姜鹏', '1459825141', '0', '665887878787578', '1', '600', '610.8400', '0', '59');
INSERT INTO `yang_pay` VALUES ('18', '我我14141', '1460024910', '0', '55555555145454655', '1', '10000', '10010.5400', '0', '59');
INSERT INTO `yang_pay` VALUES ('19', '', '1460032830', '1', '', '3', '500', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('20', '', '1460086516', '1', '', '3', '500', '0.0000', '27', '65');
INSERT INTO `yang_pay` VALUES ('21', '', '1460086551', '1', '', '3', '1000', '0.0000', '26', '59');
INSERT INTO `yang_pay` VALUES ('22', '我我14141', '1460349599', '1', '', '3', '1000', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('23', '我我14141', '1460349612', '1', '', '3', '1111', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('24', '我我14141', '1460349639', '1', '', '3', '2222', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('25', '我我14141', '1460350077', '1', '', '3', '888', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('26', '我我14141', '1460350099', '1', '', '3', '50', '0.0000', '26', '59');
INSERT INTO `yang_pay` VALUES ('27', '我我14141', '1461228938', '1', '', '3', '5000', '0.0000', '26', '59');
INSERT INTO `yang_pay` VALUES ('28', '我我14141', '1461228959', '1', '', '3', '1000', '0.0000', '27', '59');
INSERT INTO `yang_pay` VALUES ('29', '哈哈', '1461421868', '1', '', '3', '1000', '0.0000', '0', '71');
INSERT INTO `yang_pay` VALUES ('30', '哈哈', '1461421886', '1', '', '3', '1000', '0.0000', '25', '71');
INSERT INTO `yang_pay` VALUES ('31', '哈哈', '1461719186', '1', '121321321323123', '1', '500', '510.5400', '0', '71');
INSERT INTO `yang_pay` VALUES ('32', '天地英雄', '1461724641', '1', '111111111111', '1', '21212', '21222.9297', '0', '72');
INSERT INTO `yang_pay` VALUES ('33', '霖夺', '1461832433', '1', '52100268889998874', '1', '2000', '2010.3000', '0', '75');
INSERT INTO `yang_pay` VALUES ('34', '我我14141', '1461833304', '1', '', '3', '200', '0.0000', '0', '59');
INSERT INTO `yang_pay` VALUES ('35', '霖夺', '1461848109', '0', '111111111111111111', '1', '1000', '1010.1500', '0', '75');
INSERT INTO `yang_pay` VALUES ('36', '我我14141', '1472524346', '1', '', '3', '1000', '0.0000', '31', '59');
INSERT INTO `yang_pay` VALUES ('37', '我我14141', '1472525389', '1', '', '3', '2000', '0.0000', '31', '59');

-- ----------------------------
-- Table structure for `yang_position`
-- ----------------------------
DROP TABLE IF EXISTS `yang_position`;
CREATE TABLE `yang_position` (
  `position_id` int(32) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(128) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_position
-- ----------------------------
INSERT INTO `yang_position` VALUES ('1', '首页左侧导航banner');

-- ----------------------------
-- Table structure for `yang_qianbao_address`
-- ----------------------------
DROP TABLE IF EXISTS `yang_qianbao_address`;
CREATE TABLE `yang_qianbao_address` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `qianbao_url` varchar(128) NOT NULL COMMENT '钱包地址',
  `status` tinyint(4) NOT NULL,
  `add_time` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_qianbao_address
-- ----------------------------
INSERT INTO `yang_qianbao_address` VALUES ('1', '71', 'ziji', '6kUoy5nnppJx5vRfm8KgcsYZhQUEyRdmzp', '1', '1462114550', '30');

-- ----------------------------
-- Table structure for `yang_recovery_order_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_recovery_order_config`;
CREATE TABLE `yang_recovery_order_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `set_days` int(11) NOT NULL COMMENT '回收的天数',
  `member_get` decimal(10,2) NOT NULL COMMENT '会员获得比例，小数，例如70%为0.7',
  `level1_get` decimal(10,2) NOT NULL COMMENT '直接推荐人获得的比例 ,例如10%为0.1',
  `level2_get` decimal(10,2) NOT NULL COMMENT '推荐人的上级得的比例 ,例如5%为0.05',
  `level3_get` decimal(10,2) NOT NULL COMMENT '推荐人的上级的上级得的比例 ,例如5%为0.05',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统自动回收订单的设置';

-- ----------------------------
-- Records of yang_recovery_order_config
-- ----------------------------
INSERT INTO `yang_recovery_order_config` VALUES ('1', '7', '0.70', '0.10', '0.05', '0.05');

-- ----------------------------
-- Table structure for `yang_tibi`
-- ----------------------------
DROP TABLE IF EXISTS `yang_tibi`;
CREATE TABLE `yang_tibi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `url` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `add_time` int(10) NOT NULL,
  `num` decimal(20,8) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0为提币中 1为提币成功  2为充值中 3位充值成功',
  `ti_id` varchar(128) NOT NULL,
  `check_time` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `fee` decimal(10,4) NOT NULL,
  `actual` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_tibi
-- ----------------------------
INSERT INTO `yang_tibi` VALUES ('1', '71', '6gK571wbyMWN93jYRgc4NxGHjk84RGuPXC', 'admin@qq.com', '1462114128', '1.00000000', '3', '571d4e2a403d69f69a36d6304940caafd1969deb8f77e02c7947444a9fe3e030', '1462114128', '30', '0.0000', '0.0000');

-- ----------------------------
-- Table structure for `yang_trade`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade`;
CREATE TABLE `yang_trade` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,4) NOT NULL COMMENT '价格',
  `num` decimal(20,4) NOT NULL COMMENT '数量',
  `money` decimal(20,4) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade
-- ----------------------------
INSERT INTO `yang_trade` VALUES ('328', 'T1461326771', '59', '26', '0', '2.0000', '1.0000', '2.0000', '0.0020', 'sell', '1461326771', '0');
INSERT INTO `yang_trade` VALUES ('329', 'T1461326771', '59', '26', '0', '2.0000', '1.0000', '2.0000', '0.0020', 'buy', '1461326771', '0');
INSERT INTO `yang_trade` VALUES ('330', 'T1461327560', '60', '26', '0', '1.0000', '1.0000', '1.0000', '0.0010', 'buy', '1461327560', '0');
INSERT INTO `yang_trade` VALUES ('331', 'T1461327560', '60', '26', '0', '1.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461327560', '0');
INSERT INTO `yang_trade` VALUES ('332', 'T1461327634', '59', '26', '0', '1.0000', '1.0000', '1.0000', '0.0010', 'buy', '1461327634', '0');
INSERT INTO `yang_trade` VALUES ('333', 'T1461327634', '60', '26', '0', '1.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461327634', '0');
INSERT INTO `yang_trade` VALUES ('334', 'T1461327794', '59', '26', '0', '2.0000', '1.0000', '2.0000', '0.0020', 'sell', '1461327794', '0');
INSERT INTO `yang_trade` VALUES ('335', 'T1461327794', '60', '26', '0', '2.0000', '1.0000', '2.0000', '0.0020', 'buy', '1461327794', '0');
INSERT INTO `yang_trade` VALUES ('336', 'T1461422119', '71', '25', '0', '1.0000', '999.0000', '999.0000', '0.9990', 'buy', '1461422119', '0');
INSERT INTO `yang_trade` VALUES ('337', 'T1461422119', '71', '25', '0', '1.0000', '999.0000', '999.0000', '0.9990', 'sell', '1461422119', '0');
INSERT INTO `yang_trade` VALUES ('338', 'T1461422187', '71', '25', '0', '1.0000', '1.0000', '1.0000', '0.0010', 'buy', '1461422187', '0');
INSERT INTO `yang_trade` VALUES ('339', 'T1461422187', '71', '25', '0', '1.0000', '1.0000', '1.0000', '0.0010', 'sell', '1461422187', '0');
INSERT INTO `yang_trade` VALUES ('340', 'T1461422187', '71', '25', '0', '2.0000', '1.0000', '2.0000', '0.0020', 'buy', '1461422187', '0');
INSERT INTO `yang_trade` VALUES ('341', 'T1461422187', '71', '25', '0', '2.0000', '1.0000', '2.0000', '0.0020', 'sell', '1461422187', '0');
INSERT INTO `yang_trade` VALUES ('342', 'T1461422234', '71', '25', '0', '10.0000', '1.0000', '10.0000', '0.0100', 'sell', '1461422234', '0');
INSERT INTO `yang_trade` VALUES ('343', 'T1461422234', '71', '25', '0', '10.0000', '1.0000', '10.0000', '0.0100', 'buy', '1461422234', '0');
INSERT INTO `yang_trade` VALUES ('344', 'T1461422270', '71', '25', '0', '100.0000', '1.0000', '100.0000', '0.1000', 'buy', '1461422270', '0');
INSERT INTO `yang_trade` VALUES ('345', 'T1461422270', '71', '25', '0', '100.0000', '1.0000', '100.0000', '0.1000', 'sell', '1461422270', '0');
INSERT INTO `yang_trade` VALUES ('346', 'T1461726089', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'buy', '1461726089', '0');
INSERT INTO `yang_trade` VALUES ('347', 'T1461726089', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'sell', '1461726089', '0');
INSERT INTO `yang_trade` VALUES ('348', 'T1461726100', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'buy', '1461726100', '0');
INSERT INTO `yang_trade` VALUES ('349', 'T1461726100', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'sell', '1461726100', '0');
INSERT INTO `yang_trade` VALUES ('350', 'T1461726111', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'buy', '1461726111', '0');
INSERT INTO `yang_trade` VALUES ('351', 'T1461726111', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'sell', '1461726111', '0');
INSERT INTO `yang_trade` VALUES ('352', 'T1461726123', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'buy', '1461726123', '0');
INSERT INTO `yang_trade` VALUES ('353', 'T1461726123', '72', '29', '0', '0.8000', '10.0000', '8.0000', '0.0080', 'sell', '1461726123', '0');
INSERT INTO `yang_trade` VALUES ('354', 'T1461726158', '72', '29', '0', '0.6000', '10.0000', '6.0000', '0.0060', 'sell', '1461726158', '0');
INSERT INTO `yang_trade` VALUES ('355', 'T1461726158', '72', '29', '0', '0.6000', '10.0000', '6.0000', '0.0060', 'buy', '1461726158', '0');
INSERT INTO `yang_trade` VALUES ('356', 'T1461726169', '72', '29', '0', '0.6000', '10.9500', '6.5700', '0.0066', 'sell', '1461726169', '0');
INSERT INTO `yang_trade` VALUES ('357', 'T1461726169', '72', '29', '0', '0.6000', '10.9500', '6.5700', '0.0066', 'buy', '1461726169', '0');
INSERT INTO `yang_trade` VALUES ('358', 'T1461832968', '75', '29', '0', '0.8000', '5.0000', '4.0000', '0.0040', 'buy', '1461832968', '0');
INSERT INTO `yang_trade` VALUES ('359', 'T1461832969', '72', '29', '0', '0.8000', '5.0000', '4.0000', '0.0040', 'sell', '1461832969', '0');
INSERT INTO `yang_trade` VALUES ('360', 'T1472522632', '59', '25', '0', '0.1000', '50.0000', '5.0000', '0.0050', 'sell', '1472522632', '0');
INSERT INTO `yang_trade` VALUES ('361', 'T1472522632', '72', '25', '0', '0.1000', '50.0000', '5.0000', '0.0050', 'buy', '1472522632', '0');
INSERT INTO `yang_trade` VALUES ('362', 'T1472522698', '59', '25', '0', '0.1000', '21.0000', '2.1000', '0.0021', 'sell', '1472522698', '0');
INSERT INTO `yang_trade` VALUES ('363', 'T1472522698', '72', '25', '0', '0.1000', '21.0000', '2.1000', '0.0021', 'buy', '1472522698', '0');
INSERT INTO `yang_trade` VALUES ('364', 'T1472525786', '67', '31', '0', '0.1000', '1500.0000', '150.0000', '1.5000', 'buy', '1472525786', '0');
INSERT INTO `yang_trade` VALUES ('365', 'T1472525786', '59', '31', '0', '0.1000', '1500.0000', '150.0000', '1.5000', 'sell', '1472525786', '0');

-- ----------------------------
-- Table structure for `yang_website_bank`
-- ----------------------------
DROP TABLE IF EXISTS `yang_website_bank`;
CREATE TABLE `yang_website_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(125) NOT NULL,
  `bank_adddress` varchar(252) NOT NULL,
  `bank_no` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_website_bank
-- ----------------------------
INSERT INTO `yang_website_bank` VALUES ('1', 'safdsadf', 'sadfsadfsad', '4674867587', '1');

-- ----------------------------
-- Table structure for `yang_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `yang_withdraw`;
CREATE TABLE `yang_withdraw` (
  `withdraw_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '提现表',
  `uid` int(32) NOT NULL COMMENT '用户id',
  `all_money` decimal(10,2) NOT NULL COMMENT '全部价格',
  `withdraw_fee` decimal(10,2) NOT NULL COMMENT '手续费',
  `money` decimal(10,2) NOT NULL COMMENT '实际价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `order_num` varchar(32) NOT NULL COMMENT '订单号',
  `check_time` int(10) NOT NULL COMMENT '审核时间',
  `admin_uid` int(32) NOT NULL COMMENT '审核操作人(管理员）',
  `bank_id` int(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1不通过2通过3审核中',
  PRIMARY KEY (`withdraw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_withdraw
-- ----------------------------
INSERT INTO `yang_withdraw` VALUES ('1', '0', '123.00', '0.00', '123.00', '1458195580', '60-1458195580', '0', '0', '1', '3');
INSERT INTO `yang_withdraw` VALUES ('17', '0', '123.00', '3.69', '123.00', '1458270065', '59-1458270065', '0', '0', '17', '3');
INSERT INTO `yang_withdraw` VALUES ('18', '59', '123.00', '3.69', '119.31', '1458270437', '59-1458270437', '1461832518', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('19', '59', '123.00', '3.69', '119.31', '1458270494', '59-1458270494', '1460127506', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('9', '0', '123.00', '0.00', '123.00', '1458196059', '60-1458196059', '0', '0', '16', '3');
INSERT INTO `yang_withdraw` VALUES ('12', '0', '123.00', '0.00', '123.00', '1458204559', '60-1458204559', '1459301718', '1', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('13', '0', '123.00', '0.00', '123.00', '1458204601', '60-1458204601', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('14', '0', '213.00', '0.00', '213.00', '1458225111', '60-1458225111', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('15', '0', '123.00', '0.00', '123.00', '1458225147', '60-1458225147', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('16', '0', '123.00', '3.69', '123.00', '1458226415', '60-1458226415', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('20', '59', '123.00', '0.37', '122.63', '1458373311', '59-1458373311', '1460127465', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('21', '59', '100.00', '0.30', '99.70', '1458373377', '59-1458373377', '1460127455', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('22', '59', '123.00', '0.37', '122.63', '1458373454', '59-1458373454', '1460127452', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('23', '59', '123.00', '0.37', '122.63', '1458373636', '59-1458373636', '1460127328', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('24', '59', '123.00', '0.37', '122.63', '1458373637', '59-1458373637', '1460127305', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('25', '59', '123.00', '0.37', '122.63', '1458373662', '59-1458373662', '1460127283', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('26', '59', '123.00', '0.37', '122.63', '1458373671', '59-1458373671', '1460127240', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('27', '59', '123.00', '0.37', '122.63', '1458374378', '59-1458374378', '1460127227', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('28', '62', '123.00', '0.37', '122.63', '1458807258', '62-1458807258', '1460127163', '1', '18', '2');
INSERT INTO `yang_withdraw` VALUES ('29', '62', '123.00', '0.37', '122.63', '1458807279', '62-1458807279', '1460127152', '1', '18', '2');
INSERT INTO `yang_withdraw` VALUES ('30', '62', '123.00', '0.37', '122.63', '1458818469', '62-1458818469', '1460127009', '1', '18', '2');
INSERT INTO `yang_withdraw` VALUES ('31', '62', '123.00', '0.37', '122.63', '1458821635', '62-1458821635', '1460126933', '1', '18', '2');
INSERT INTO `yang_withdraw` VALUES ('32', '59', '100.00', '0.30', '99.70', '1458965298', '59-1458965298', '1460126929', '1', '17', '2');
INSERT INTO `yang_withdraw` VALUES ('33', '59', '1000.00', '3.00', '997.00', '1459142211', '59-1459142211', '1460126924', '1', '17', '2');
