/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : locationworld

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-10-22 10:53:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_admini`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admini`;
CREATE TABLE `tb_admini` (
  `AdminId` int(11) NOT NULL,
  `AdminImage` varchar(200) NOT NULL,
  `AdminName` varchar(20) NOT NULL,
  `AdminUsername` varchar(20) NOT NULL,
  `AdminUserPasswrod` varchar(20) NOT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admini
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_group`
-- ----------------------------
DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group` (
  `GroupId` int(11) NOT NULL,
  `GroupName` varchar(20) NOT NULL,
  `GroupDisctribe` varchar(20) NOT NULL,
  `GroupImage` varchar(200) NOT NULL,
  `GroupInfoContent` varchar(200) NOT NULL,
  PRIMARY KEY (`GroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_group
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_grouplist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_grouplist`;
CREATE TABLE `tb_grouplist` (
  `GroupListId` int(11) NOT NULL,
  `GroupImage` varchar(200) NOT NULL,
  `GroupName` varchar(20) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `GroupUserId` int(11) NOT NULL,
  PRIMARY KEY (`GroupListId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_grouplist
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_groupmember`
-- ----------------------------
DROP TABLE IF EXISTS `tb_groupmember`;
CREATE TABLE `tb_groupmember` (
  `GroupMemberID` int(11) NOT NULL,
  `MemberImage` varchar(200) NOT NULL,
  `MemberName` varchar(200) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `MemberId` int(11) NOT NULL,
  `IsGroupMan` int(11) NOT NULL,
  PRIMARY KEY (`GroupMemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_groupmember
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_groupnew`
-- ----------------------------
DROP TABLE IF EXISTS `tb_groupnew`;
CREATE TABLE `tb_groupnew` (
  `GroupNewId` int(11) NOT NULL,
  `GroupNewImage` varchar(200) NOT NULL,
  `GroupNewContent` varchar(200) NOT NULL,
  `GroupNewType` int(11) NOT NULL,
  `GroupUserId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  PRIMARY KEY (`GroupNewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_groupnew
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_new`
-- ----------------------------
DROP TABLE IF EXISTS `tb_new`;
CREATE TABLE `tb_new` (
  `NewId` int(11) NOT NULL,
  `NewType` int(11) NOT NULL,
  `NewImage` varchar(200) NOT NULL,
  `NewInfo` varchar(200) NOT NULL,
  `NewNum` int(11) NOT NULL,
  `toUserId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`NewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_new
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_privatenew`
-- ----------------------------
DROP TABLE IF EXISTS `tb_privatenew`;
CREATE TABLE `tb_privatenew` (
  `PrivateNewId` int(11) NOT NULL,
  `PrivateNewImage` varchar(200) NOT NULL,
  `PrivateNewContent` varchar(200) NOT NULL,
  `GroupNewType` int(11) NOT NULL,
  `SendUserId` int(11) NOT NULL,
  `PrivateUserId` int(11) NOT NULL,
  PRIMARY KEY (`PrivateNewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_privatenew
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_t_new`
-- ----------------------------
DROP TABLE IF EXISTS `tb_t_new`;
CREATE TABLE `tb_t_new` (
  `T_NewId` int(11) DEFAULT NULL,
  `T_NewContent` varchar(255) DEFAULT NULL,
  `T_NewUserId` int(11) DEFAULT NULL,
  `T_NewTime` date DEFAULT NULL,
  `T_NewType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_t_new
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `UserId` int(11) NOT NULL,
  `UserPhone` varchar(20) NOT NULL,
  `NickName` varchar(20) NOT NULL,
  `RealName` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserAvarl` varchar(200) NOT NULL,
  `UserSex` varchar(1) NOT NULL,
  `IsBreak` int(11) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
