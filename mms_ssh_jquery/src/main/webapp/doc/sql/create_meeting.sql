# Host: localhost  (Version: 5.5.15)
# Date: 2018-02-26 11:30:20
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "meeting"
#

DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_title` varchar(50) NOT NULL DEFAULT '' COMMENT '会议标题',
  `meeting_content` varchar(1000) DEFAULT NULL COMMENT '会议内容',
  `meeting_begintime` varchar(50) NOT NULL DEFAULT '' COMMENT '会议开始时间',
  `meeting_endtime` varchar(50) DEFAULT NULL COMMENT '会议结束时间',
  `meeting_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '会议负责人',
  `meeting_room_id` int(11) NOT NULL DEFAULT '0' COMMENT '所在会议室',
  `meeting_status` int(2) NOT NULL DEFAULT '1' COMMENT '会议状态',
  `meeting_create_datetime` varchar(50) NOT NULL DEFAULT '' COMMENT '创建时间',
  `meeting_create_name` int(11) NOT NULL DEFAULT '0' COMMENT '创建人名',
  `meeting_update_datetime` varchar(50) DEFAULT NULL COMMENT '修改时间',
  `meeting_update_name` varchar(50) DEFAULT NULL COMMENT '修改人名',
  `meeting_default1` varchar(50) DEFAULT NULL COMMENT '默认字段1',
  `meeting_default2` varchar(50) DEFAULT NULL COMMENT '默认字段2',
  `meetingStatusType` int(11) DEFAULT NULL,
  PRIMARY KEY (`meeting_id`),
  KEY `fk_meeting_room_id` (`meeting_room_id`),
  KEY `FK_ejuraxlto54pgee7thrm89qmy` (`meeting_user_id`),
  CONSTRAINT `FK_ejuraxlto54pgee7thrm89qmy` FOREIGN KEY (`meeting_user_id`) REFERENCES `userinfo_main` (`user_id`),
  CONSTRAINT `fk_meeting_room_id` FOREIGN KEY (`meeting_room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

#
# Data for table "meeting"
#

INSERT INTO `meeting` VALUES (9,'年会年会','年会.....','2018-02-01 23:34:12','2017-12-23 23:34',2,1,1,'2017-12-23 23:34',1,'','','','',NULL),(65,'年会lcdlcd','年会.....','2017-12-23 23:34:12','2017-12-23 23:34',1,1,1,'2017-12-23 23:34:12',1,NULL,NULL,NULL,NULL,NULL),(66,'年会lcd','年会.....','2018-01-26 23:34:12','2017-12-23 23:34',2,1,1,'Mon Jan 29 13:41:30 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(70,'座谈小组大会','座谈小组大会','2017-12-23 23:34:12','2017-12-23 23:34',2,1,0,'Wed Jan 31 11:26:57 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(71,'玻璃鱼缸式商讨会议','玻璃鱼缸式....','2018-01-26 23:34:12','2017-12-23 23:34',2,1,1,'2018-01-26 23:34:12',1,NULL,NULL,NULL,NULL,NULL),(73,'产品需求分析','产品需求分析.....','2017-12-23 23:34:12','2018-02-07 10:10',2,1,0,'Wed Feb 07 16:31:42 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(75,'公司年会','公司年会.....','2017-12-23 23:34:12','2018-02-07 10:10',2,1,1,'Wed Feb 07 09:26:36 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(78,'动员会','动员会.....','2017-12-23 23:34:12','2018-02-07 10:10',2,1,1,'Wed Feb 07 09:30:58 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(82,'部门会议','部门会议.....','2017-12-26 23:34:12','2018-02-07 10:10',1,1,1,'Thu Feb 08 09:54:13 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(83,'公司评比会','公司评比会.....','2018-02-07 18:01','2018-02-07 10:12',2,1,1,'Wed Feb 07 18:01:13 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(84,'部门例会','部门例会....','2018-02-14 17:52','2018-02-14 10:15',2,2,1,'Wed Feb 07 17:52:50 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(88,'公司行政会','公司行政会.....','2018-02-14 10:21','2018-02-14 10:21',2,3,1,'Sat Feb 24 11:42:00 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(89,'汇报会','汇报会......','2018-02-04 10:24','2018-02-04 10:24',2,1,1,'Wed Feb 07 10:24:14 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(92,'论坛','论坛....','2018-01-06 23:34:12','2018-02-27 10:25',1,1,0,'Wed Feb 07 10:25:58 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(97,'网络会议','网络会议....','2018-01-11 10:45','2018-02-11 10:45',1,1,1,'Wed Feb 07 10:45:52 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(101,'辩论会','辩论会...','2018-02-15 11:03','2018-02-15 11:03',1,1,1,'Wed Feb 07 11:03:29 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(102,'学术讨论会','学术讨论会...','2018-02-04 11:04','2018-02-04 11:04',1,1,1,'Wed Feb 07 11:04:37 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(110,'研讨会','研讨会....','2018-02-17 11:24','2018-02-17 11:24',2,2,1,'Thu Feb 08 16:05:52 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(115,'全体大会','全体大会....','2017-12-23 25:34:12','2018-02-13 14:54',2,2,1,'Wed Feb 07 14:55:04 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(116,'产品设计大会','产品设计大会.....','2018-02-13 14:58','2018-02-13 14:58',1,1,1,'Wed Feb 07 14:58:49 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(117,'lichundidahaoren','lichundi','2018-02-16 12:46','2018-02-16 12:46',1,1,1,'Sun Feb 25 12:46:46 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(118,'火车会议','火车上的会议','2018-02-12 12:57','2018-02-12 12:57',1,2,1,'Sun Feb 25 12:58:17 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(119,'视频会议','视频会议','2018-02-25 13:01','2018-02-25 13:01',3,2,1,'Sun Feb 25 13:01:44 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(120,'视频会议','视频会议','2018-02-06 13:02','2018-02-06 13:02',1,1,1,'Sun Feb 25 13:03:00 CST 2018',1,NULL,NULL,NULL,NULL,NULL),(121,'最后的测试会议','最后的测试会议','2018-02-28 10:58','2018-02-28 10:58',2,1,1,'Mon Feb 26 10:58:28 CST 2018',1,NULL,NULL,NULL,NULL,NULL);
