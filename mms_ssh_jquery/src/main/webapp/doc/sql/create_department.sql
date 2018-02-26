/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : hibernate2

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2018-02-26 23:04:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_ab` varchar(50) NOT NULL,
  `dept_created_datetime` varchar(50) NOT NULL,
  `dept_created_name` int(11) NOT NULL,
  `dept_default1` varchar(50) DEFAULT NULL,
  `dept_default2` varchar(50) DEFAULT NULL,
  `dept_name` varchar(50) NOT NULL,
  `dept_nlevel` int(11) DEFAULT '1',
  `dept_parent_id` int(11) DEFAULT '0',
  `dept_sort_id` varchar(50) DEFAULT NULL,
  `dept_updated_datetime` varchar(50) NOT NULL,
  `dept_updated_name` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `UK_8vyu57wwejb7qmtymk44oxl80` (`dept_ab`),
  UNIQUE KEY `UK_t28qvy069tso906t0u4h24f7y` (`dept_name`),
  UNIQUE KEY `UK_51i6c2pc9j82kn8k1lupscunv` (`dept_sort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('0', 'clps', '1', '1', '1', null, '华钦', '0', null, '0', '1', '1');
INSERT INTO `department` VALUES ('1', 'cwb', '2018-02-26', '1', '1', null, '财务部', '1', '0', '0,1', '2018-02-26', '1');
