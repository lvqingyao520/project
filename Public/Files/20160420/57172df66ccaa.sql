/*
Navicat MySQL Data Transfer

Source Server         : aa
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : epm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-04-16 15:12:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for epm_authset_group
-- ----------------------------
DROP TABLE IF EXISTS `epm_authset_group`;
CREATE TABLE `epm_authset_group` (
  `id` int(11) NOT NULL,
  `groupname` varchar(255) DEFAULT NULL COMMENT '规则所属组的名字（1级分类）',
  `rules` varchar(255) DEFAULT NULL COMMENT '一级分类下的二级分类的权限 用，隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_authset_group
-- ----------------------------

-- ----------------------------
-- Table structure for epm_authset_role
-- ----------------------------
DROP TABLE IF EXISTS `epm_authset_role`;
CREATE TABLE `epm_authset_role` (
  `id` int(11) NOT NULL,
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名字',
  `rules` varchar(255) DEFAULT NULL COMMENT '角色所拥有的权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_authset_role
-- ----------------------------
INSERT INTO `epm_authset_role` VALUES ('1', '董事长', null);
INSERT INTO `epm_authset_role` VALUES ('2', '总经理', null);
INSERT INTO `epm_authset_role` VALUES ('3', '副总经理', null);
INSERT INTO `epm_authset_role` VALUES ('4', '工程技术人员', null);

-- ----------------------------
-- Table structure for epm_authset_rule
-- ----------------------------
DROP TABLE IF EXISTS `epm_authset_rule`;
CREATE TABLE `epm_authset_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' COMMENT '控制器/方法',
  `title` varchar(255) DEFAULT NULL COMMENT '权限名',
  `group_id` int(11) DEFAULT NULL COMMENT '规则所属组(1级分类）',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1启用  2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_authset_rule
-- ----------------------------
INSERT INTO `epm_authset_rule` VALUES ('1', 'index/index', 'aaa', '1', '1');
INSERT INTO `epm_authset_rule` VALUES ('2', 'user/index', 'bbb', '1', '1');
INSERT INTO `epm_authset_rule` VALUES ('3', 'admin/index', 'ccc', '1', '1');
INSERT INTO `epm_authset_rule` VALUES ('4', 'Base/index', 'ddd', '1', '1');
INSERT INTO `epm_authset_rule` VALUES ('5', 'photo/index', 'eeee', '1', '1');

-- ----------------------------
-- Table structure for epm_authset_rule_access
-- ----------------------------
DROP TABLE IF EXISTS `epm_authset_rule_access`;
CREATE TABLE `epm_authset_rule_access` (
  `uid` int(11) NOT NULL,
  `rules` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_authset_rule_access
-- ----------------------------
INSERT INTO `epm_authset_rule_access` VALUES ('1', '1,2,3,4');
INSERT INTO `epm_authset_rule_access` VALUES ('2', null);

-- ----------------------------
-- Table structure for epm_baseset_account
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_account`;
CREATE TABLE `epm_baseset_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) DEFAULT '' COMMENT '账户名称',
  `bank` varchar(255) DEFAULT '' COMMENT '开户银行',
  `account` varchar(19) DEFAULT '' COMMENT '账号',
  `contact` varchar(255) DEFAULT '' COMMENT '联系人',
  `onset` varchar(255) DEFAULT NULL COMMENT '起始资金',
  `phone` char(11) DEFAULT '' COMMENT '电话',
  `tel` varchar(12) DEFAULT '' COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `code` varchar(6) DEFAULT '' COMMENT '邮编',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 默认1启用   2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_account
-- ----------------------------
INSERT INTO `epm_baseset_account` VALUES ('1', 'aaaa', '建设银行', '6245855268996547858', 'aaaa', '-1242341.89', '13342346377', '254-89658784', 'sds@qq.com', 'ddawdaw', '', '23213123', '2');
INSERT INTO `epm_baseset_account` VALUES ('2', 'aaaa', '建设银行', '1222222222222222222', 'aaaa', '412343', '13342346377', '133', '', 'ddawdawd', '123456', '23213123', '2');
INSERT INTO `epm_baseset_account` VALUES ('4', 'aaaa', '建设银行', '178465415', 'cb', '5351', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '1');
INSERT INTO `epm_baseset_account` VALUES ('5', 'aaaa', '建设银行', '1', 'cb', '515155', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '2');
INSERT INTO `epm_baseset_account` VALUES ('14', 't', null, null, null, '152351.78567', null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('15', 'y', null, null, null, '523453.546', null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('21', '5', null, null, null, '2342.5634', null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('22', '6', null, null, null, '34535345', null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_account` VALUES ('23', '7', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('24', '8', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('25', '9', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('26', '6', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('27', '2', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('28', '4', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('29', '5', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('30', '6', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('31', '7', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('32', '8', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('33', '6', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('34', '3', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('35', '4', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('36', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('37', 'qqq', '农行', '1216441545', null, null, '13342346377', '5136938', 'dawda@qq.com', 'wadawd', '123456', 'wefefwefwfd', '1');
INSERT INTO `epm_baseset_account` VALUES ('38', 'fs', 'fs', '0', null, null, '0', '0', 'f', 'f', '0', 'f', '1');
INSERT INTO `epm_baseset_account` VALUES ('39', '', '', '0', null, null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('40', '', '', '0', null, null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('41', 'gs', '', '0', null, null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('42', 'gs', '', '0', null, null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('43', 'gs', '', '0', null, null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('44', 'g', 'gxd', '0', null, null, '0', '0', 'gxdg', 'xdg', '0', 'dg', '2');
INSERT INTO `epm_baseset_account` VALUES ('45', 'rr', 'd', '0', null, null, '0', '0', 'gd', 'gd', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('46', '45', '1', '2', null, null, '0', '-1', 'dawda@qq.com', '21', '2', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('47', '8', '46', '456434545464351', null, null, '18524479021', '0', 'eq@qq.com', '', '0', '1521', '1');
INSERT INTO `epm_baseset_account` VALUES ('48', 'da', 'da', '0', null, null, '0', '0', 'da\'s', 'da\'s', '0', '', '2');
INSERT INTO `epm_baseset_account` VALUES ('49', '1', '1', '1', null, null, '1', '1', '1', '1', '1', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('50', '1', '1', '1', null, null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('51', '1', '1', '1', null, null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('52', '11', '123', '1111111111111111111', null, null, '13342346377', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_account` VALUES ('53', '8', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('54', '8', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_account` VALUES ('55', '1', '1', '1585258525852585258', null, null, '18569635236', '0', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for epm_baseset_constract
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_constract`;
CREATE TABLE `epm_baseset_constract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT '' COMMENT '施工队',
  `bank` varchar(255) DEFAULT '' COMMENT '开户银行',
  `account` varchar(19) DEFAULT '' COMMENT '账号',
  `contact` varchar(255) DEFAULT '' COMMENT '联系人',
  `phone` char(11) DEFAULT '' COMMENT '电话',
  `tel` varchar(12) DEFAULT '' COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `code` varchar(6) DEFAULT '' COMMENT '邮编',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 默认1启用   2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_constract
-- ----------------------------
INSERT INTO `epm_baseset_constract` VALUES ('1', 'aaaa', '建设银行', '6245855268996547858', 'aaaa', '13342346377', '254-89658784', 'sds@qq.com', 'ddawdaw', '', '23213123', '2');
INSERT INTO `epm_baseset_constract` VALUES ('2', 'aaaa', '建设银行', '1222222222222222222', 'aaaa', '13342346377', '133', '', 'ddawdawd', '123456', '23213123', '2');
INSERT INTO `epm_baseset_constract` VALUES ('4', 'aaaa', '建设银行', '178465415', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '2');
INSERT INTO `epm_baseset_constract` VALUES ('14', 't', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_constract` VALUES ('15', 'y', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_constract` VALUES ('19', null, null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_constract` VALUES ('21', '5', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_constract` VALUES ('22', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('23', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('24', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('25', '9', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('26', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('27', '2', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('28', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('29', '5', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('30', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('31', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('32', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('33', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('34', '3', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('35', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('36', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('37', 'qqq', '农行', '1216441545', null, '13342346377', '5136938', 'dawda@qq.com', 'wadawd', '123456', 'wefefwefwfd', '1');
INSERT INTO `epm_baseset_constract` VALUES ('38', 'fs', 'fs', '0', null, '0', '0', 'f', 'f', '0', 'f', '1');
INSERT INTO `epm_baseset_constract` VALUES ('39', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('40', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('41', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('42', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('43', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('44', 'g', 'gxd', '0', null, '0', '0', 'gxdg', 'xdg', '0', 'dg', '2');
INSERT INTO `epm_baseset_constract` VALUES ('45', 'rr', 'd', '0', null, '0', '0', 'gd', 'gd', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('46', '45', '1', '2', null, '0', '-1', 'dawda@qq.com', '21', '2', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('47', '8', '46', '456434545464351', null, '18524479021', '0', 'eq@qq.com', '', '0', '1521', '1');
INSERT INTO `epm_baseset_constract` VALUES ('48', 'da', 'da', '0', null, '0', '0', 'da\'s', 'da\'s', '0', '', '2');
INSERT INTO `epm_baseset_constract` VALUES ('49', '1', '1', '1', null, '1', '1', '1', '1', '1', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('50', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('51', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('52', '11', '123', '1111111111111111111', null, '13342346377', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_constract` VALUES ('53', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('54', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_constract` VALUES ('55', '1', '1', '1585258525852585258', null, '18569635236', '0', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for epm_baseset_department
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_department`;
CREATE TABLE `epm_baseset_department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `pid` int(11) DEFAULT NULL COMMENT '父id',
  `path` varchar(64) DEFAULT '' COMMENT '部门路径，每一级用逗号隔开',
  `code` varchar(30) DEFAULT '' COMMENT '部门编码',
  `state` tinyint(1) DEFAULT '2' COMMENT '部门状态 2:启用，    1：停用',
  `reserved` varchar(30) DEFAULT NULL COMMENT '保留位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_department
-- ----------------------------
INSERT INTO `epm_baseset_department` VALUES ('1', '智能项目管理系统', null, '', '', null, null);
INSERT INTO `epm_baseset_department` VALUES ('2', '工程部', '1', '1，', '', '2', null);
INSERT INTO `epm_baseset_department` VALUES ('3', '销售部', '1', '1，', '', '2', null);
INSERT INTO `epm_baseset_department` VALUES ('4', '商务部', '1', '1，', '', '2', null);
INSERT INTO `epm_baseset_department` VALUES ('5', '采购部', '1', '1，', '', '2', null);
INSERT INTO `epm_baseset_department` VALUES ('6', '行政部', '1', '1，', '', '2', null);
INSERT INTO `epm_baseset_department` VALUES ('7', '财务部', '1', '1，', '', '2', null);

-- ----------------------------
-- Table structure for epm_baseset_employees
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_employees`;
CREATE TABLE `epm_baseset_employees` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) DEFAULT NULL COMMENT '映射 用户表users的id',
  `jobnum` smallint(5) DEFAULT NULL COMMENT '职位     映射   job表的id号',
  `departnum` smallint(5) DEFAULT NULL COMMENT '部门   映射   department表的id号',
  `state` tinyint(1) DEFAULT '2' COMMENT '职员账号状态    2：开通      1：禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_employees
-- ----------------------------
INSERT INTO `epm_baseset_employees` VALUES ('1', '1', '1', '2', '2');

-- ----------------------------
-- Table structure for epm_baseset_job
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_job`;
CREATE TABLE `epm_baseset_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) DEFAULT '' COMMENT '职位名称',
  `did` int(11) DEFAULT NULL COMMENT '所属部门',
  `code` varchar(30) DEFAULT '' COMMENT '职位编码',
  `state` tinyint(1) DEFAULT '2' COMMENT '职位状态    2：启用           1：禁用',
  `reserved` varchar(30) DEFAULT NULL COMMENT '保留位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_job
-- ----------------------------
INSERT INTO `epm_baseset_job` VALUES ('1', '项目经理', '2', '', '2', null);

-- ----------------------------
-- Table structure for epm_baseset_partya
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_partya`;
CREATE TABLE `epm_baseset_partya` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) DEFAULT '' COMMENT '甲方',
  `bank` varchar(255) DEFAULT '' COMMENT '开户银行',
  `account` varchar(19) DEFAULT '' COMMENT '账号',
  `contact` varchar(255) DEFAULT '' COMMENT '联系人',
  `phone` char(11) DEFAULT '' COMMENT '电话',
  `tel` varchar(12) DEFAULT '' COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `code` varchar(6) DEFAULT '' COMMENT '邮编',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 默认1启用   2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_partya
-- ----------------------------
INSERT INTO `epm_baseset_partya` VALUES ('1', 'aaaa就是就是色即是空咔咔咔', '建设银行', '6245855268996547852', 'aaaa', '13342346377', '254-89658784', 'sds@qq.com', 'ddawdaw', '', '23213123', '2');
INSERT INTO `epm_baseset_partya` VALUES ('2', 'aaaa', '建设银行', '1222222222222222222', 'aaaa', '13342346377', '133', '', 'ddawdawd', '123456', '23213123', '1');
INSERT INTO `epm_baseset_partya` VALUES ('4', 'aaaa', '建设银行', '178465415', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '2');
INSERT INTO `epm_baseset_partya` VALUES ('5', 'aaaa', '建设银行', '1', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '1');
INSERT INTO `epm_baseset_partya` VALUES ('14', 't', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_partya` VALUES ('15', 'y', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('21', '5', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_partya` VALUES ('22', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('23', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('24', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('25', '9', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('26', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('27', '2', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('28', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('29', '5', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('30', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('31', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('32', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('33', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('34', '3', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('35', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('36', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('37', 'qqq', '农行', '1216441545', null, '13342346377', '5136938', 'dawda@qq.com', 'wadawd', '123456', 'wefefwefwfd', '1');
INSERT INTO `epm_baseset_partya` VALUES ('38', 'fs', 'fs', '0', null, '0', '0', 'f', 'f', '0', 'f', '1');
INSERT INTO `epm_baseset_partya` VALUES ('39', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('40', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('41', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('42', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('43', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('44', 'g', 'gxd', '0', null, '0', '0', 'gxdg', 'xdg', '0', 'dg', '2');
INSERT INTO `epm_baseset_partya` VALUES ('45', 'rr', 'd', '0', null, '0', '0', 'gd', 'gd', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('46', '45', '1', '2', null, '0', '-1', 'dawda@qq.com', '21', '2', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('47', '8', '46', '456434545464351', null, '18524479021', '0', 'eq@qq.com', '', '0', '1521', '1');
INSERT INTO `epm_baseset_partya` VALUES ('48', 'da', 'da', '0', null, '0', '0', 'da\'s', 'da\'s', '0', '', '2');
INSERT INTO `epm_baseset_partya` VALUES ('49', '1', '1', '1', null, '1', '1', '1', '1', '1', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('50', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('51', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('52', '11', '123', '1111111111111111111', null, '13342346377', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partya` VALUES ('53', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('54', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partya` VALUES ('55', '1', '1', '1585258525852585258', null, '18569635236', '0', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for epm_baseset_partyb
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_partyb`;
CREATE TABLE `epm_baseset_partyb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT '' COMMENT '乙方',
  `bank` varchar(255) DEFAULT '' COMMENT '开户银行',
  `account` varchar(19) DEFAULT '' COMMENT '账号',
  `contact` varchar(255) DEFAULT '' COMMENT '联系人',
  `phone` char(11) DEFAULT '' COMMENT '电话',
  `tel` varchar(12) DEFAULT '' COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `code` varchar(6) DEFAULT '' COMMENT '邮编',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 默认1启用   2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_partyb
-- ----------------------------
INSERT INTO `epm_baseset_partyb` VALUES ('1', 'aaaa', '建设银行', '6245855268996547858', 'aaaa', '13342346377', '758-52755778', 'sds@qq.com', 'ddawdaw', '123456', '23213123', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('2', 'aaaa', '建设银行', '1222222222222222222', 'aaaa', '13342346377', '133', '', 'ddawdawd', '123456', '23213123', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('3', 'aaaa', '建设银行', '1222222222222222222', 'aaaa', '13342346376', '0', '', 'ddawdawd', '0', '23213123', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('4', 'aaaa', '建设银行', '178465415', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('5', 'aaaa', '建设银行', '1', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('14', 't', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('15', 'y', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('17', 'i', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('18', 'e', null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_partyb` VALUES ('19', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('20', '3', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('21', '5', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('22', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('23', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('24', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('26', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('27', '2', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('28', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('29', '5', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('30', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('31', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('32', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('33', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('34', '3', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('35', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('36', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('37', 'qqq', '农行', '1216441545', null, '13342346377', '5136938', 'dawda@qq.com', 'wadawd', '123456', 'wefefwefwfd', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('38', 'fs', 'fs', '0', null, '0', '0', 'f', 'f', '0', 'f', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('39', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('40', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('41', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('42', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('43', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('44', 'g', 'gxd', '0', null, '0', '0', 'gxdg', 'xdg', '0', 'dg', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('45', 'rr', 'd', '0', null, '0', '0', 'gd', 'gd', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('46', '45', '1', '2', null, '0', '-1', 'dawda@qq.com', '21', '2', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('47', '8', '46', '456434545464351', null, '18524479021', '0', 'eq@qq.com', '', '0', '1521', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('48', 'da', 'da', '0', null, '0', '0', 'da\'s', 'da\'s', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('49', '1', '1', '1', null, '1', '1', '1', '1', '1', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('51', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('52', '11', '123', '1111111111111111111', null, '13342346377', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_partyb` VALUES ('53', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('54', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_partyb` VALUES ('55', '1', '1', '1585258525852585258', null, '18569635236', '0', '', '', '0', '', '2');
INSERT INTO `epm_baseset_partyb` VALUES ('56', '', '1', '1222222222222222222', '', '13342346377', '', '', '', '', '', '2');

-- ----------------------------
-- Table structure for epm_baseset_process
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_process`;
CREATE TABLE `epm_baseset_process` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '流程名称',
  `group_id` varchar(255) DEFAULT NULL COMMENT '流程组的设置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_process
-- ----------------------------

-- ----------------------------
-- Table structure for epm_baseset_process_group
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_process_group`;
CREATE TABLE `epm_baseset_process_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL COMMENT '审批组',
  `pid` int(11) DEFAULT NULL COMMENT 'process的id',
  `node_id` int(11) DEFAULT NULL COMMENT '节点编码  用逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_process_group
-- ----------------------------

-- ----------------------------
-- Table structure for epm_baseset_process_node
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_process_node`;
CREATE TABLE `epm_baseset_process_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodename` varchar(255) DEFAULT NULL COMMENT '节点名字',
  `group_id` int(11) DEFAULT NULL COMMENT '审批节点所属组',
  `uid` int(11) DEFAULT NULL COMMENT '审批人的id',
  `uname` varchar(255) DEFAULT NULL COMMENT '审批人的姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_process_node
-- ----------------------------

-- ----------------------------
-- Table structure for epm_baseset_provider
-- ----------------------------
DROP TABLE IF EXISTS `epm_baseset_provider`;
CREATE TABLE `epm_baseset_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT '' COMMENT '供应商',
  `bank` varchar(255) DEFAULT '' COMMENT '开户银行',
  `account` varchar(19) DEFAULT '' COMMENT '账号',
  `contact` varchar(255) DEFAULT '' COMMENT '联系人',
  `phone` char(11) DEFAULT '' COMMENT '电话',
  `tel` varchar(12) DEFAULT '' COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `code` varchar(6) DEFAULT '' COMMENT '邮编',
  `remark` varchar(1000) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 默认1启用   2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_baseset_provider
-- ----------------------------
INSERT INTO `epm_baseset_provider` VALUES ('1', 'aaaa', '建设银行', '6245855268996547858', 'aaaa', '13342346377', '254-89658784', 'sds@qq.com', 'ddawdaw', '', '23213123', '2');
INSERT INTO `epm_baseset_provider` VALUES ('2', 'aaaa', '建设银行', '1222222222222222222', 'aaaa', '13342346377', '133', '', 'ddawdawd', '123456', '23213123', '1');
INSERT INTO `epm_baseset_provider` VALUES ('4', 'aaaa', '建设银行', '178465415', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '2');
INSERT INTO `epm_baseset_provider` VALUES ('5', 'aaaa', '建设银行', '1', 'cb', '13342346378', '123456789', 'sds@qq.com', 'ddawdawd', '11', '23213123', '1');
INSERT INTO `epm_baseset_provider` VALUES ('15', 'y', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('19', null, null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `epm_baseset_provider` VALUES ('21', '5', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('22', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('23', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('24', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('25', '9', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('26', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('27', '2', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('28', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('29', '5', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('30', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('31', '7', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('32', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('33', '6', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('34', '3', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('35', '4', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('36', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('37', 'qqq', '农行', '1216441545', null, '13342346377', '5136938', 'dawda@qq.com', 'wadawd', '123456', 'wefefwefwfd', '1');
INSERT INTO `epm_baseset_provider` VALUES ('38', 'fs', 'fs', '0', null, '0', '0', 'f', 'f', '0', 'f', '1');
INSERT INTO `epm_baseset_provider` VALUES ('39', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('40', '', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('41', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('42', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('43', 'gs', '', '0', null, '0', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('44', 'g', 'gxd', '0', null, '0', '0', 'gxdg', 'xdg', '0', 'dg', '2');
INSERT INTO `epm_baseset_provider` VALUES ('45', 'rr', 'd', '0', null, '0', '0', 'gd', 'gd', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('46', '45', '1', '2', null, '0', '-1', 'dawda@qq.com', '21', '2', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('47', '8', '46', '456434545464351', null, '18524479021', '0', 'eq@qq.com', '', '0', '1521', '1');
INSERT INTO `epm_baseset_provider` VALUES ('48', 'da', 'da', '0', null, '0', '0', 'da\'s', 'da\'s', '0', '', '2');
INSERT INTO `epm_baseset_provider` VALUES ('49', '1', '1', '1', null, '1', '1', '1', '1', '1', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('50', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('51', '1', '1', '1', null, '1', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('52', '11', '123', '1111111111111111111', null, '13342346377', '0', '', '', '0', '', '1');
INSERT INTO `epm_baseset_provider` VALUES ('53', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('54', '8', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `epm_baseset_provider` VALUES ('55', '1', '1', '1585258525852585258', null, '18569635236', '0', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for epm_constract_info
-- ----------------------------
DROP TABLE IF EXISTS `epm_constract_info`;
CREATE TABLE `epm_constract_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT '' COMMENT '合同名称',
  `sender` varchar(18) DEFAULT '' COMMENT '提交人',
  `sendtime` datetime DEFAULT NULL COMMENT '提交日期',
  `partaid` int(11) DEFAULT NULL COMMENT ' 甲方id号',
  `partname` varchar(255) DEFAULT '' COMMENT '甲方公司名',
  `partbid` int(11) DEFAULT NULL COMMENT '乙方id号',
  `partbname` varchar(255) DEFAULT '' COMMENT '乙方公司名',
  `type` smallint(5) DEFAULT NULL COMMENT '合同类型',
  `bankname` varchar(255) DEFAULT NULL COMMENT '银行账户',
  `code` varchar(30) DEFAULT '' COMMENT '合同编号',
  `price` float(10,2) DEFAULT NULL COMMENT '合同金额',
  `groupid` int(11) DEFAULT NULL COMMENT '合同审批组 映射epm_baseset_process_group的id号',
  `principal` varchar(30) DEFAULT NULL COMMENT '项目负责人',
  `pjstart` date DEFAULT NULL COMMENT '开工日期',
  `pjend` date DEFAULT NULL COMMENT '结工时间',
  `contents` varchar(1024) DEFAULT NULL COMMENT '合同内容',
  `liability` varchar(1024) DEFAULT NULL COMMENT '违约责任，',
  `payment` varchar(1024) DEFAULT '' COMMENT '付款方式',
  `note` varchar(255) DEFAULT NULL COMMENT '合同备注',
  `ideas` varchar(1024) DEFAULT NULL COMMENT '审批组的意见 用逗号分隔',
  `url` varchar(1024) DEFAULT NULL COMMENT '附件地址,多个附件用逗号隔开',
  `processnum` int(11) DEFAULT NULL COMMENT '流程序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_constract_info
-- ----------------------------

-- ----------------------------
-- Table structure for epm_filepass_circulate
-- ----------------------------
DROP TABLE IF EXISTS `epm_filepass_circulate`;
CREATE TABLE `epm_filepass_circulate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT '' COMMENT '传阅件标题',
  `receiver_id` int(11) NOT NULL,
  `receiver` varchar(30) DEFAULT NULL COMMENT '收件人，如果是多人，则用逗号，隔开',
  `sender_id` int(11) NOT NULL,
  `sender` varchar(30) DEFAULT '' COMMENT '发件人',
  `status` tinyint(1) DEFAULT '2' COMMENT '传阅件状态，2：共享   1：不共享',
  `read_ok` tinyint(1) unsigned DEFAULT '2' COMMENT '阅读状态： 1 已阅读  2未阅读  3垃圾箱（收件箱，发件箱删除后)',
  `approval_ok` tinyint(1) unsigned DEFAULT NULL COMMENT '批阅状态： 2：未批阅  1：已批阅',
  `attachment_ids` varchar(255) DEFAULT '' COMMENT '附件文件名，多个文件名用逗号隔开。',
  `content` varchar(1024) DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_filepass_circulate
-- ----------------------------
INSERT INTO `epm_filepass_circulate` VALUES ('1', '1', '1', '王菲菲', '2', '万达', '2', '1', '2', '1', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('2', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('3', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('4', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '1', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('6', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('7', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('8', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('9', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('13', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('14', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('15', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('16', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('17', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('18', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('19', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('20', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('28', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('29', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('30', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('31', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('32', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('33', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('34', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('35', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('36', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('37', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('38', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('39', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('40', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('41', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('42', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('43', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('59', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('60', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('61', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('62', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('63', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('64', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('65', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('66', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('67', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('68', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('69', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('70', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('71', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('72', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('73', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('74', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('75', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('76', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('77', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('78', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('79', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('80', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('81', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('82', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('83', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('84', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('85', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('86', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('87', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('88', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('89', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('90', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('122', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('123', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('124', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('125', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('126', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('127', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('128', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('129', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('130', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('131', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('132', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('133', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('134', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('135', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('136', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('137', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('138', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('139', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('140', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('141', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('142', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('143', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('144', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('145', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('146', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('147', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('148', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('149', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('150', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('151', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('152', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('153', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('154', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('155', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('156', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('157', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('158', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('159', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('160', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('161', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('162', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('163', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('164', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('165', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('166', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('167', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('168', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('169', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('170', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('171', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('172', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('173', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('174', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('175', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('176', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('256', '1', '1', '王菲菲', '2', '万达', '2', '1', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('257', '1', '1', '王菲菲', '2', '万达', '2', '1', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('258', '1', '1', '王菲菲', '2', '万达', '2', '1', '2', '1,2', 'hello world', '2016-04-28 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('259', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('260', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('261', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('262', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('263', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('264', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('265', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('266', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('267', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('268', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('269', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('270', '1', '1', '王菲菲', '2', '万达', '2', '3', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('271', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('272', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('273', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('274', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('275', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('276', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('277', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('278', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('279', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('280', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('281', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('282', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('283', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('284', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('285', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('286', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('287', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('288', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('289', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('290', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('291', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('292', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('293', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('294', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('295', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('296', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('297', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('298', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('299', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('300', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('301', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('302', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('303', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('304', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('305', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('306', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('307', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('308', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('309', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('310', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('311', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('312', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('313', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('314', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('315', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('316', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('317', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('318', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('319', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('320', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('321', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('322', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('323', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('324', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('325', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('326', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('327', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('328', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('329', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('330', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('331', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('332', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('333', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('334', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('335', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('336', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('337', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('338', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('339', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('340', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('341', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('342', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('343', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('344', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('345', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('346', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('347', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('348', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('349', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('350', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('351', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('352', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('353', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('354', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('355', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('356', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('357', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('358', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('359', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('360', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('361', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('362', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('363', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('364', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('365', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('366', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('367', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('368', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('369', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('370', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('371', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('372', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('373', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('374', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('375', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');
INSERT INTO `epm_filepass_circulate` VALUES ('376', '1', '1', '王菲菲', '2', '万达', '2', '2', '2', '', null, '2016-04-19 09:48:26');

-- ----------------------------
-- Table structure for epm_filepass_circulate_attachment
-- ----------------------------
DROP TABLE IF EXISTS `epm_filepass_circulate_attachment`;
CREATE TABLE `epm_filepass_circulate_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attachment_pid` int(11) unsigned DEFAULT NULL COMMENT '传阅件的id号',
  `file_size` float(10,2) DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(100) DEFAULT NULL COMMENT '文件类型',
  `file_ctime` datetime DEFAULT NULL COMMENT '文件创建时间',
  `file_name` varchar(100) DEFAULT NULL COMMENT '文件真实名',
  `file_url` varchar(255) DEFAULT NULL COMMENT '文件存放路径',
  `file_stoge_name` varchar(64) DEFAULT NULL COMMENT '文件存储名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_filepass_circulate_attachment
-- ----------------------------
INSERT INTO `epm_filepass_circulate_attachment` VALUES ('1', '258', '234.65', 'html', '2016-04-14 14:07:46', '好花常开', '...', '123445677.txt');
INSERT INTO `epm_filepass_circulate_attachment` VALUES ('2', '258', '3456.76', 'text', '2016-04-15 14:08:42', '花好月圆', '...', '123445677.txt');

-- ----------------------------
-- Table structure for epm_filepass_circulate_idea
-- ----------------------------
DROP TABLE IF EXISTS `epm_filepass_circulate_idea`;
CREATE TABLE `epm_filepass_circulate_idea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) DEFAULT NULL COMMENT '关联epm_circulate表的id字段',
  `receiver` varchar(18) DEFAULT NULL COMMENT '收件人',
  `idea` varchar(255) DEFAULT NULL COMMENT '参阅意见',
  `receivetime` datetime DEFAULT NULL COMMENT '接收时间',
  `status` tinyint(1) DEFAULT '2' COMMENT '参阅意见的状态，2：未阅       1：已阅',
  `state` tinyint(1) DEFAULT NULL COMMENT '审批状态 ，2：未审批       1：已审批',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_filepass_circulate_idea
-- ----------------------------
INSERT INTO `epm_filepass_circulate_idea` VALUES ('1', '258', '', null, null, '2', null);

-- ----------------------------
-- Table structure for epm_msgsystem_message
-- ----------------------------
DROP TABLE IF EXISTS `epm_msgsystem_message`;
CREATE TABLE `epm_msgsystem_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '消息标题',
  `oid` char(10) DEFAULT NULL COMMENT '合同编号',
  `ohref` varchar(255) DEFAULT NULL COMMENT '合同页面地址',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价钱',
  `process` varchar(60) DEFAULT NULL COMMENT '流程',
  `receiver` varchar(18) DEFAULT NULL COMMENT '收件人',
  `receiver_id` int(11) unsigned DEFAULT NULL COMMENT '收件人id',
  `sender` varchar(18) DEFAULT NULL COMMENT '发件人',
  `sender_id` int(11) unsigned DEFAULT NULL COMMENT '发件人id',
  `status` tinyint(1) unsigned DEFAULT '2' COMMENT '状态：2：代办     1：已办     3:通知',
  `read_ok` tinyint(1) unsigned DEFAULT '2' COMMENT '读取状态  1：已读   2： 未读',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间及审批时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2652 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_msgsystem_message
-- ----------------------------
INSERT INTO `epm_msgsystem_message` VALUES ('1188', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1189', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1190', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1191', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1201', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1202', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1203', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1298', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1299', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-20 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1300', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1301', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1303', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-28 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1304', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1305', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1306', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1307', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1308', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1309', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1310', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1374', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1375', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1376', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1377', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1378', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1379', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1380', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1381', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1382', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1383', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1384', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1385', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1386', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1387', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1388', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1389', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1390', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1391', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1392', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1393', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1394', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1395', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1396', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1397', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1398', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1399', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1400', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1401', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1402', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1403', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1404', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1405', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1406', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1407', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1408', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1409', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1410', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1411', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1412', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1413', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1414', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1415', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1416', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1417', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1418', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1419', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1420', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1421', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1422', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1423', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1424', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1425', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1426', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1427', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1428', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1429', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1430', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1431', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1432', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1433', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1434', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1435', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1436', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1437', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1438', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1439', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1440', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1441', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1442', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1443', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1444', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1445', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1446', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1447', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1448', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1449', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1450', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1451', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1453', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1454', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1455', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1456', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1457', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1459', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1629', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1630', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1631', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1632', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1633', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1634', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1635', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '3', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1636', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1637', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1638', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1639', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1640', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1641', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1642', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1643', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1644', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1645', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1646', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1647', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1648', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1649', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1650', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1651', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1652', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1653', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1654', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1655', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1656', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1657', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1658', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1659', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1660', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1661', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1662', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1663', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1664', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1665', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1666', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1667', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1668', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1669', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1670', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1671', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1672', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1673', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1674', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1675', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1676', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1677', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1678', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1679', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1680', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1681', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1682', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1683', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1684', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1685', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1686', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1687', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1688', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1689', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1690', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1691', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1692', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1693', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1694', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1695', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1696', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1697', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1698', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1699', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1700', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1701', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1702', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1703', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1704', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1705', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1706', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1707', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1708', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1709', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1710', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1711', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1712', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1713', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1714', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1715', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1810', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1811', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1812', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1813', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1815', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1816', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1817', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1818', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1819', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1820', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1821', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1822', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1823', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1824', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1825', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1826', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1827', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1828', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1829', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1830', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1831', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1832', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1833', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1834', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1835', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1836', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1837', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1838', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1839', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1840', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1841', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1842', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1843', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1844', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1845', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1846', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1847', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1848', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1849', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1850', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1851', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1852', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1853', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1854', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1855', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1856', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1857', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1858', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1859', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1860', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1861', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1862', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1863', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1864', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1865', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1866', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1867', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1868', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1869', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1870', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1871', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1872', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1873', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1874', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1875', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1876', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1877', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1878', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1879', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1880', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1881', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1882', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1883', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('1884', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2140', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2141', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2142', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2143', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2144', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2145', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2146', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2147', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2148', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2149', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2150', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2151', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2152', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2153', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2154', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2155', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2156', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2157', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2158', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2159', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2160', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2161', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2162', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2163', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2164', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2165', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2166', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2167', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2168', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2169', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2170', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2171', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2172', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2173', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2174', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2175', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2176', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2177', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2178', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2179', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2180', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2181', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2182', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2183', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2184', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2185', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2186', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2187', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2188', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2189', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2190', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2191', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2192', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2193', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2194', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2195', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2196', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2197', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2198', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2199', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2200', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2201', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2202', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2203', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2204', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2205', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2206', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2207', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2208', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2209', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2210', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2211', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2212', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2213', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2214', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2215', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2216', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2217', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2218', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2219', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2220', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2221', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2222', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2223', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2224', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2225', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2226', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2322', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2323', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2324', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2325', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2327', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2328', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2329', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2330', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2331', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2332', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2333', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2334', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2335', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2336', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2337', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2338', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2339', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2340', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2341', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2342', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2343', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2344', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2345', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2346', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2347', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2348', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2349', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2350', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2351', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2352', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2353', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2354', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2355', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2356', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2357', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2358', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2359', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2360', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2361', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2362', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2363', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2364', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2365', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2366', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2367', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2368', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2369', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2370', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2371', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2372', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2373', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2374', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2375', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2376', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2377', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2378', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2379', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2380', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2381', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2382', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2383', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2384', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2385', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2386', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2387', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2388', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2389', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2390', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2391', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2392', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2393', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2394', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2395', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2396', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2397', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2398', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2399', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2400', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2401', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2402', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2403', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2404', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2405', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2406', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2407', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2408', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2409', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2410', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2411', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2412', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2413', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2414', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2415', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2416', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2417', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2418', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2419', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2420', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2421', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2422', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2423', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2424', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2425', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2426', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2427', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2428', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2429', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2430', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2431', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2432', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2433', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2434', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2435', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2436', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2437', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2438', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2439', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2440', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2441', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2442', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2443', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2444', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2445', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2446', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2447', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2448', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2449', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2450', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2451', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2452', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2453', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2454', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2455', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2456', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2457', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2458', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2459', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2460', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2461', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2462', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2463', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2464', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2465', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2466', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2467', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2468', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2469', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2470', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2471', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2472', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2473', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2474', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2475', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2476', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2477', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2478', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2479', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2480', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2481', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2482', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2578', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2580', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2581', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '2', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2583', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2585', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2586', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2587', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2588', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2589', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2590', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2591', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2592', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2593', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2594', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2595', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2596', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2597', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2598', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2599', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2600', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2601', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2602', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2603', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2604', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2605', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2606', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2607', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2608', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2609', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2610', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2611', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2612', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2613', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2614', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2615', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2616', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2617', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2618', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2619', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2620', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2621', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2622', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2623', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2624', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2625', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2626', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2627', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2628', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2629', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2630', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2631', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2632', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2633', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2634', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2635', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2636', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2637', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2638', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2639', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2640', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2641', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2642', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2643', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2644', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2645', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2646', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2647', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2648', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2649', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2650', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');
INSERT INTO `epm_msgsystem_message` VALUES ('2651', '合同', null, null, '236.00', null, '王菲菲', '1', '万达', '2', '1', '2', '2016-04-13 15:07:29');

-- ----------------------------
-- Table structure for epm_personal_users
-- ----------------------------
DROP TABLE IF EXISTS `epm_personal_users`;
CREATE TABLE `epm_personal_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(18) NOT NULL DEFAULT '' COMMENT '用户名',
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密码',
  `truename` varchar(30) DEFAULT '' COMMENT ' 真实姓名',
  `age` tinyint(3) unsigned DEFAULT '0' COMMENT '年龄',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别     枚举型：1-》女  2-》男',
  `phone` char(11) DEFAULT '' COMMENT '手机号',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱',
  `identcard` char(18) DEFAULT '' COMMENT '身份证号码',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `workday` date DEFAULT NULL COMMENT '入职时间',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `imgurl` varchar(255) DEFAULT NULL COMMENT '头像图标地址',
  `status` tinyint(1) unsigned DEFAULT '2' COMMENT '账号状态；2： 普通，1：封存；',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unameKey` (`username`) USING BTREE COMMENT '用户名唯一',
  UNIQUE KEY `phoneKey` (`phone`) USING BTREE COMMENT '电话号码唯一',
  UNIQUE KEY `emailKey` (`email`) USING BTREE COMMENT 'email唯一'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epm_personal_users
-- ----------------------------
INSERT INTO `epm_personal_users` VALUES ('1', 'qwerty', 'qwerty', '王菲菲', '22', '1', '15330809111', 'wangfei@sohu.com.cn', '123456789123456728', '1994-05-08', '2016-04-01', '2016-04-16 13:17:15', 'Uploads/2016-04-12/570c771fdda31.jpg', '2');
INSERT INTO `epm_personal_users` VALUES ('2', 'asd', '123456', '万达', '29', '2', '15330809114', 'wangfei@sohu.com', '789162341234556789', '1987-04-12', null, '2016-04-13 09:14:35', 'Uploads/2016-04-12/570cad9e3309c.jpg', '2');
INSERT INTO `epm_personal_users` VALUES ('3', '', '', '', '0', null, '', '', '', null, null, null, null, '2');
