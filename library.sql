/*
Navicat MySQL Data Transfer

Source Server         : alertint-dev
Source Server Version : 50171
Source Host           : 192.168.172.29:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2018-01-07 19:00:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
`Aname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`Asex`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Aage`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`AidCard`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Atel`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Alevel`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Aid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Apsw`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`Aid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
BEGIN;
INSERT INTO `tb_admin` VALUES ('admin', '男', '25', 'admin', '123456', '1', 'admin', '111');
COMMIT;

-- ----------------------------
-- Table structure for `tb_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_blacklist`;
CREATE TABLE `tb_blacklist` (
`arrearageName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`arrearageId`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`arrearageIdCard`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`arrearageBalance`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`arrearageId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_blacklist
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tb_bookinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
`ISBN`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`bookname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`writer`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`translator`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`publisher`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`date`  date NULL DEFAULT NULL ,
`price`  double NULL DEFAULT NULL ,
`typeId`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`ISBN`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
BEGIN;
INSERT INTO `tb_bookinfo` VALUES ('9787513903509', '耶路撒冷三千年', '[英]西蒙·蒙蒂菲奥里', '不知道', '民主与建设出版社', '2015-01-01', '100', '1');
COMMIT;

-- ----------------------------
-- Table structure for `tb_booktype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
`btid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`dasys`  int(11) NULL DEFAULT 30 ,
PRIMARY KEY (`btid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
BEGIN;
INSERT INTO `tb_booktype` VALUES ('1', '育儿亲子', '30');
COMMIT;

-- ----------------------------
-- Table structure for `tb_borrowrecord`
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrowrecord`;
CREATE TABLE `tb_borrowrecord` (
`recordid`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`bookISBN`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`userISBN`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`borrowDate`  date NULL DEFAULT NULL ,
`isback`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`backDate`  date NULL DEFAULT NULL ,
PRIMARY KEY (`recordid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_borrowrecord
-- ----------------------------
BEGIN;
INSERT INTO `tb_borrowrecord` VALUES ('', '9787513903509', 'test', '2018-01-07', '0', '2018-02-06');
COMMIT;

-- ----------------------------
-- Table structure for `tb_newbooks`
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbooks`;
CREATE TABLE `tb_newbooks` (
`newISBN`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`newTypeId`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`newBookName`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`newWrite`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`newPublisher`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`newDate`  date NULL DEFAULT NULL ,
`newPrice`  float NULL DEFAULT NULL ,
`newTranslator`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`newISBN`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_newbooks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tb_stockpile`
-- ----------------------------
DROP TABLE IF EXISTS `tb_stockpile`;
CREATE TABLE `tb_stockpile` (
`ISBN`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`amount`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`ISBN`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_stockpile
-- ----------------------------
BEGIN;
INSERT INTO `tb_stockpile` VALUES ('9787513903509', '9');
COMMIT;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
`Uname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`UidCard`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Uage`  int(11) NULL DEFAULT NULL ,
`Upsw`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`UserId`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`effectivedate`  date NULL DEFAULT NULL ,
`starttime`  date NULL DEFAULT NULL ,
`balance`  float(11,0) NULL DEFAULT NULL ,
`Utel`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`UserId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES ('test', '111', '18', '11', 'test', '2018-01-11', '2018-01-11', '0', '19012345678'), ('test110', 'test110', '110', '110', 'test110', '2020-01-07', '2018-01-07', '0', '110');
COMMIT;
