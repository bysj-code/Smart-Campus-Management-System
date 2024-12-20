/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuixiaoyuanguanlixt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuixiaoyuanguanlixt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuixiaoyuanguanlixt`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问学生',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='意见反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'1111',NULL,NULL,NULL,2,1,'2023-03-08 14:50:55'),(2,1,NULL,NULL,'11122312','2023-03-08 14:57:21',NULL,2,'2023-03-08 14:57:22'),(3,1,'321564',NULL,NULL,NULL,1,1,'2023-03-08 14:59:31');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (19,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-08 14:44:27'),(20,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-08 14:44:27'),(21,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-08 14:44:27'),(22,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-08 14:44:27'),(23,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-08 14:44:28'),(24,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-08 14:44:28'),(25,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-08 14:44:28'),(26,'sex_types','性别',1,'男',NULL,NULL,'2023-03-08 14:44:28'),(27,'sex_types','性别',2,'女',NULL,NULL,'2023-03-08 14:44:28'),(28,'jiaoshi_types','教师类型',1,'教师类型1',NULL,NULL,'2023-03-08 14:44:28'),(29,'jiaoshi_types','教师类型',2,'教师类型2',NULL,NULL,'2023-03-08 14:44:28'),(30,'jiaoshi_types','教师类型',3,'教师类型3',NULL,NULL,'2023-03-08 14:44:28'),(31,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-08 14:44:28'),(32,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-08 14:44:28'),(33,'banji_types','星期',1,'星期1',NULL,NULL,'2023-03-08 14:44:28'),(34,'banji_types','星期',2,'星期2',NULL,NULL,'2023-03-08 14:44:28'),(35,'banji_types','星期',3,'星期3',NULL,NULL,'2023-03-08 14:44:28'),(36,'yonghuqingjia_types','请假类型',1,'生病',NULL,NULL,'2023-03-08 14:44:28'),(37,'yonghuqingjia_types','请假类型',2,'有事',NULL,NULL,'2023-03-08 14:44:28'),(38,'yonghuqingjia_types','请假类型',3,'其他',NULL,NULL,'2023-03-08 14:44:28'),(39,'yonghuqingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-08 14:44:28'),(40,'yonghuqingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-08 14:44:28'),(41,'yonghuqingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-08 14:44:28'),(42,'yonghu_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-03-08 14:44:28'),(43,'yonghu_kaoqin_list_types','打卡状态',2,'已打卡',NULL,NULL,'2023-03-08 14:44:28'),(44,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-03-08 14:44:28'),(45,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-03-08 14:44:28'),(46,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-03-08 14:44:28'),(47,'tongzhi_types','通知类型',1,'通知类型1',NULL,NULL,'2023-03-08 14:44:28'),(48,'tongzhi_types','通知类型',2,'通知类型2',NULL,NULL,'2023-03-08 14:44:28'),(49,'tongzhi_types','通知类型',3,'通知类型3',NULL,NULL,'2023-03-08 14:44:28'),(50,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-08 14:44:28'),(51,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-08 14:44:28'),(52,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-08 14:44:29'),(53,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-08 14:44:29'),(54,'xuexiaojianjie_types','简介类型',1,'简介类型1',NULL,NULL,'2023-03-08 14:44:29'),(55,'xuexiaojianjie_types','简介类型',2,'简介类型2',NULL,NULL,'2023-03-08 14:44:29'),(56,'xuexiaojianjie_types','简介类型',3,'简介类型3',NULL,NULL,'2023-03-08 14:44:29'),(57,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-03-08 14:44:29'),(58,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-03-08 14:44:29'),(59,'kemu_types','科目',1,'语文',NULL,NULL,'2023-03-08 14:44:29'),(60,'kemu_types','科目',2,'数学',NULL,NULL,'2023-03-08 14:44:29'),(61,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-03-08 14:44:29'),(62,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-03-08 14:44:29'),(63,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-03-08 14:44:29'),(64,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-03-08 14:44:29'),(65,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-03-08 14:44:29'),(66,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-03-08 14:44:29');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (3,'测试试卷1',60,220,2,1,2,1,'2023-03-08 14:44:29'),(4,'测试试卷2',180,120,2,1,1,1,'2023-03-08 14:44:29'),(5,'123',123,0,2,1,2,2,'2023-03-08 14:56:39'),(6,'123',123,0,1,1,2,2,'2023-03-08 14:56:39');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (35,4,14,10,'2023-03-08 14:54:23'),(36,4,17,10,'2023-03-08 14:54:23'),(37,4,24,10,'2023-03-08 14:54:23'),(38,4,23,10,'2023-03-08 14:54:23'),(39,4,19,10,'2023-03-08 14:54:23'),(40,4,18,10,'2023-03-08 14:54:23'),(41,4,21,10,'2023-03-08 14:54:23'),(42,4,13,10,'2023-03-08 14:54:23'),(43,4,20,20,'2023-03-08 14:54:23'),(44,4,22,20,'2023-03-08 14:54:23'),(45,3,24,20,'2023-03-08 14:55:06'),(46,3,23,50,'2023-03-08 14:55:06'),(47,3,22,50,'2023-03-08 14:55:07');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (13,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-03-08 14:44:29'),(14,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-03-08 14:44:29'),(15,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-03-08 14:44:29'),(16,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-03-08 14:44:29'),(17,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-03-08 14:44:29'),(18,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-03-08 14:44:29'),(19,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-03-08 14:44:29'),(20,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-03-08 14:44:29'),(21,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-03-08 14:44:29'),(22,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-03-08 14:44:29'),(23,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-03-08 14:44:29'),(24,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-03-08 14:44:29');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试学生',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1678258718965',1,4,40,'2023-03-08 14:58:39','2023-03-08 14:58:39'),(2,'1678258720614',1,4,40,'2023-03-08 14:58:41','2023-03-08 14:58:41'),(3,'1678258851997',1,4,30,'2023-03-08 15:00:52','2023-03-08 15:00:52');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '学生id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1678258718965',1,22,'123',0,'2023-03-08 14:58:39'),(2,'1678258718965',1,20,'123',0,'2023-03-08 14:58:39'),(3,'1678258718965',1,13,'B',10,'2023-03-08 14:58:39'),(4,'1678258718965',1,21,'A',10,'2023-03-08 14:58:39'),(5,'1678258718965',1,18,'B',10,'2023-03-08 14:58:39'),(6,'1678258718965',1,19,'B',0,'2023-03-08 14:58:39'),(7,'1678258718965',1,23,'B',10,'2023-03-08 14:58:39'),(8,'1678258718965',1,24,'B',0,'2023-03-08 14:58:39'),(9,'1678258718965',1,17,'C',0,'2023-03-08 14:58:39'),(10,'1678258718965',1,14,'C',0,'2023-03-08 14:58:39'),(11,'1678258720614',1,22,'123',0,'2023-03-08 14:58:41'),(12,'1678258720614',1,20,'123',0,'2023-03-08 14:58:41'),(13,'1678258720614',1,13,'B',10,'2023-03-08 14:58:41'),(14,'1678258720614',1,21,'A',10,'2023-03-08 14:58:41'),(15,'1678258720614',1,18,'B',10,'2023-03-08 14:58:41'),(16,'1678258720614',1,19,'B',0,'2023-03-08 14:58:41'),(17,'1678258720614',1,23,'B',10,'2023-03-08 14:58:41'),(18,'1678258720614',1,24,'B',0,'2023-03-08 14:58:41'),(19,'1678258720614',1,17,'C',0,'2023-03-08 14:58:41'),(20,'1678258720614',1,14,'C',0,'2023-03-08 14:58:41'),(21,'1678258851997',1,22,'123',0,'2023-03-08 15:00:52'),(22,'1678258851997',1,20,'12',0,'2023-03-08 15:00:52'),(23,'1678258851997',1,13,'B',10,'2023-03-08 15:00:52'),(24,'1678258851997',1,21,'B',0,'2023-03-08 15:00:52'),(25,'1678258851997',1,18,'B',10,'2023-03-08 15:00:52'),(26,'1678258851997',1,19,'B,A',0,'2023-03-08 15:00:52'),(27,'1678258851997',1,23,'A',0,'2023-03-08 15:00:52'),(28,'1678258851997',1,24,'B',0,'2023-03-08 15:00:52'),(29,'1678258851997',1,17,'C',0,'2023-03-08 15:00:52'),(30,'1678258851997',1,14,'B',10,'2023-03-08 15:00:52');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '学生id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,4,22,'123','2023-03-08 14:58:39','2023-03-08 14:58:39'),(2,1,4,20,'123','2023-03-08 14:58:39','2023-03-08 14:58:39'),(3,1,4,19,'B','2023-03-08 14:58:39','2023-03-08 14:58:39'),(4,1,4,24,'B','2023-03-08 14:58:39','2023-03-08 14:58:39'),(5,1,4,17,'C','2023-03-08 14:58:39','2023-03-08 14:58:39'),(6,1,4,14,'C','2023-03-08 14:58:39','2023-03-08 14:58:39'),(7,1,4,22,'123','2023-03-08 14:58:41','2023-03-08 14:58:41'),(8,1,4,20,'123','2023-03-08 14:58:41','2023-03-08 14:58:41'),(9,1,4,19,'B','2023-03-08 14:58:41','2023-03-08 14:58:41'),(10,1,4,24,'B','2023-03-08 14:58:41','2023-03-08 14:58:41'),(11,1,4,17,'C','2023-03-08 14:58:41','2023-03-08 14:58:41'),(12,1,4,14,'C','2023-03-08 14:58:41','2023-03-08 14:58:41'),(13,1,4,22,'123','2023-03-08 15:00:52','2023-03-08 15:00:52'),(14,1,4,20,'12','2023-03-08 15:00:52','2023-03-08 15:00:52'),(15,1,4,21,'B','2023-03-08 15:00:52','2023-03-08 15:00:52'),(16,1,4,19,'B,A','2023-03-08 15:00:52','2023-03-08 15:00:52'),(17,1,4,23,'A','2023-03-08 15:00:52','2023-03-08 15:00:52'),(18,1,4,24,'B','2023-03-08 15:00:52','2023-03-08 15:00:52'),(19,1,4,17,'C','2023-03-08 15:00:52','2023-03-08 15:00:52');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',112,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',230,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',474,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',85,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',243,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',419,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,'帖子标题7',1,NULL,NULL,'发布内容7',197,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',251,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',77,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',197,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',386,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',474,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,'帖子标题13',1,NULL,NULL,'发布内容13',219,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',47,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(17,NULL,NULL,1,NULL,'+9898',14,2,'2023-03-08 14:55:31',NULL,'2023-03-08 14:55:31'),(18,NULL,NULL,NULL,1,'31212213',14,2,'2023-03-08 14:57:08',NULL,'2023-03-08 14:57:08'),(20,NULL,1,NULL,NULL,'31123231312123',14,2,'2023-03-08 14:58:58',NULL,'2023-03-08 14:58:58');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_types` int(11) DEFAULT NULL COMMENT '教师类型 Search111',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_shichang` varchar(200) DEFAULT NULL COMMENT '工作时长',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_content` text COMMENT '教师简介',
  `jiaoshi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师信息';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_types`,`jiaoshi_photo`,`jiaoshi_phone`,`jiaoshi_shichang`,`sex_types`,`jiaoshi_content`,`jiaoshi_delete`,`insert_time`,`create_time`) values (1,'a1','123456','教师名称1',2,'upload/jiaoshi1.jpg','17703786901','工作时长1',1,'教师简介1',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,'a2','123456','教师名称2',3,'upload/jiaoshi2.jpg','17703786902','工作时长2',2,'教师简介2',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,'a3','123456','教师名称3',1,'upload/jiaoshi3.jpg','17703786903','工作时长3',2,'教师简介3',1,'2023-03-08 14:44:43','2023-03-08 14:44:43');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111 ',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课件',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `banji_types` int(11) DEFAULT NULL COMMENT '星期 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '上传教师',
  `kecheng_content` text COMMENT '课程简介',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_types`,`kecheng_photo`,`kecheng_video`,`kecheng_file`,`kemu_types`,`banji_types`,`jiaoshi_id`,`kecheng_content`,`kecheng_delete`,`insert_time`,`create_time`) values (1,'课程名称1',3,'upload/kecheng1.jpg','upload/video.mp4','upload/file.rar',1,2,3,'课程简介1',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,'课程名称2',1,'upload/kecheng2.jpg','upload/video.mp4','upload/file.rar',1,1,2,'课程简介2',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,'课程名称3',2,'upload/kecheng3.jpg','upload/video.mp4','upload/file.rar',2,3,3,'课程简介3',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,'课程名称4',3,'upload/kecheng4.jpg','upload/video.mp4','upload/file.rar',1,1,3,'课程简介4',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,'课程名称5',2,'upload/kecheng5.jpg','upload/video.mp4','upload/file.rar',2,1,3,'课程简介5',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,'课程名称6',3,'upload/kecheng6.jpg','upload/video.mp4','upload/file.rar',1,3,2,'课程简介6',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,'课程名称7',1,'upload/kecheng7.jpg','upload/video.mp4','upload/file.rar',1,3,1,'课程简介7',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,'课程名称8',1,'upload/kecheng8.jpg','upload/video.mp4','upload/file.rar',2,3,2,'课程简介8',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,'课程名称9',2,'upload/kecheng9.jpg','upload/video.mp4','upload/file.rar',2,1,1,'课程简介9',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(10,'课程名称10',3,'upload/kecheng10.jpg','upload/video.mp4','upload/file.rar',1,2,3,'课程简介10',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,'课程名称11',2,'upload/kecheng11.jpg','upload/video.mp4','upload/file.rar',1,1,1,'课程简介11',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,'课程名称12',2,'upload/kecheng12.jpg','upload/video.mp4','upload/file.rar',1,2,2,'课程简介12',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,'课程名称13',2,'upload/kecheng13.jpg','upload/video.mp4','upload/file.rar',2,3,3,'课程简介13',1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,'课程名称14',1,'upload/kecheng14.jpg','upload/video.mp4','upload/file.rar',1,1,1,'课程简介14',1,'2023-03-08 14:44:43','2023-03-08 14:44:43');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,2,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,3,1,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,4,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,5,3,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,6,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,7,3,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,8,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,9,3,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,11,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,12,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,13,1,1,'2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,14,3,1,'2023-03-08 14:44:43','2023-03-08 14:44:43');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-08 14:44:43','回复信息1','2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,2,3,'留言内容2','2023-03-08 14:44:43','回复信息2','2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,3,3,'留言内容3','2023-03-08 14:44:43','回复信息3','2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,4,2,'留言内容4','2023-03-08 14:44:43','回复信息4','2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,5,1,'留言内容5','2023-03-08 14:44:43','回复信息5','2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,6,1,'留言内容6','2023-03-08 14:44:43','回复信息6','2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,7,2,'留言内容7','2023-03-08 14:44:43','回复信息7','2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,8,1,'留言内容8','2023-03-08 14:44:43','回复信息8','2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,9,1,'留言内容9','2023-03-08 14:44:43','回复信息9','2023-03-08 14:44:43','2023-03-08 14:44:43'),(10,10,3,'留言内容10','2023-03-08 14:44:43','回复信息10','2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,11,3,'留言内容11','2023-03-08 14:44:43','回复信息11','2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,12,1,'留言内容12','2023-03-08 14:44:43','回复信息12','2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,13,1,'留言内容13','2023-03-08 14:44:43','回复信息13','2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,14,2,'留言内容14','2023-03-08 14:44:43','回复信息1411','2023-03-08 14:53:06','2023-03-08 14:44:43');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-08 14:44:43','公告详情1','2023-03-08 14:44:43'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-08 14:44:43','公告详情2','2023-03-08 14:44:43'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-08 14:44:43','公告详情3','2023-03-08 14:44:43'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-08 14:44:43','公告详情4','2023-03-08 14:44:43'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-08 14:44:43','公告详情5','2023-03-08 14:44:43'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-08 14:44:43','公告详情6','2023-03-08 14:44:43'),(7,'公告标题7',1,'upload/news7.jpg','2023-03-08 14:44:43','公告详情7','2023-03-08 14:44:43'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-08 14:44:43','公告详情8','2023-03-08 14:44:43'),(9,'公告标题9',1,'upload/news9.jpg','2023-03-08 14:44:43','公告详情9','2023-03-08 14:44:43'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-08 14:44:43','公告详情10','2023-03-08 14:44:43'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-08 14:44:43','公告详情11','2023-03-08 14:44:43'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-08 14:44:43','公告详情12','2023-03-08 14:44:43'),(13,'公告标题13',2,'upload/news13.jpg','2023-03-08 14:44:43','公告详情13','2023-03-08 14:44:43'),(14,'公告标题14',2,'upload/news14.jpg','2023-03-08 14:44:43','公告详情14','2023-03-08 14:44:43');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'a1','yonghu','学生','jvlwum8gt22oracvaf9yfa317mrl1u49','2023-03-08 14:49:31','2023-03-08 16:03:57'),(5,1,'admin','users','管理员','rjduakrb7dj8ryh9roi67qyoqkj0t7sc','2023-03-08 14:51:00','2023-03-08 16:06:27'),(6,1,'a1','jiaoshi','教师信息','o1mbguksrdxc3vxu9s520ogbglxebqqk','2023-03-08 14:52:42','2023-03-08 15:52:42');

/*Table structure for table `tongxunlu` */

DROP TABLE IF EXISTS `tongxunlu`;

CREATE TABLE `tongxunlu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tongxunlu_name` varchar(200) DEFAULT NULL COMMENT '联系人名称 Search111 ',
  `tongxunlu_phone` varchar(200) DEFAULT NULL COMMENT '联系人方式',
  `tongxunlu_shenfen` varchar(200) DEFAULT NULL COMMENT '联系人身份',
  `tongxunlu_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通讯录';

/*Data for the table `tongxunlu` */

insert  into `tongxunlu`(`id`,`tongxunlu_name`,`tongxunlu_phone`,`tongxunlu_shenfen`,`tongxunlu_content`,`insert_time`,`create_time`) values (1,'联系人名称1','17703786901','联系人身份1','备注1','2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,'联系人名称2','17703786902','联系人身份2','备注2','2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,'联系人名称3','17703786903','联系人身份3','备注3','2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,'联系人名称4','17703786904','联系人身份4','备注4','2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,'联系人名称5','17703786905','联系人身份5','备注5','2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,'联系人名称6','17703786906','联系人身份6','备注6','2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,'联系人名称7','17703786907','联系人身份7','备注7','2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,'联系人名称8','17703786908','联系人身份8','备注8','2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,'联系人名称9','17703786909','联系人身份9','备注9','2023-03-08 14:44:43','2023-03-08 14:44:43'),(10,'联系人名称10','17703786910','联系人身份10','备注10','2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,'联系人名称11','17703786911','联系人身份11','备注11','2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,'联系人名称12','17703786912','联系人身份12','备注12','2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,'联系人名称13','17703786913','联系人身份13','备注13','2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,'联系人名称14','17703786914','张三家长','<p>备注14</p>','2023-03-08 14:44:43','2023-03-08 14:44:43');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知标题  Search111 ',
  `tongzhi_types` int(11) DEFAULT NULL COMMENT '通知类型  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `tongzhi_content` text COMMENT '通知详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知信息';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`tongzhi_name`,`tongzhi_types`,`insert_time`,`tongzhi_content`,`create_time`) values (1,'通知标题1',3,'2023-03-08 14:44:43','通知详情1','2023-03-08 14:44:43'),(2,'通知标题2',2,'2023-03-08 14:44:43','通知详情2','2023-03-08 14:44:43'),(3,'通知标题3',1,'2023-03-08 14:44:43','通知详情3','2023-03-08 14:44:43'),(4,'通知标题4',3,'2023-03-08 14:44:43','通知详情4','2023-03-08 14:44:43'),(5,'通知标题5',1,'2023-03-08 14:44:43','通知详情5','2023-03-08 14:44:43'),(6,'通知标题6',1,'2023-03-08 14:44:43','通知详情6','2023-03-08 14:44:43'),(7,'通知标题7',3,'2023-03-08 14:44:43','通知详情7','2023-03-08 14:44:43'),(8,'通知标题8',2,'2023-03-08 14:44:43','通知详情8','2023-03-08 14:44:43'),(9,'通知标题9',1,'2023-03-08 14:44:43','通知详情9','2023-03-08 14:44:43'),(10,'通知标题10',2,'2023-03-08 14:44:43','通知详情10','2023-03-08 14:44:43'),(11,'通知标题11',3,'2023-03-08 14:44:43','通知详情11','2023-03-08 14:44:43'),(12,'通知标题12',1,'2023-03-08 14:44:43','通知详情12','2023-03-08 14:44:43'),(13,'通知标题13',1,'2023-03-08 14:44:43','通知详情13','2023-03-08 14:44:43'),(14,'通知标题14',3,'2023-03-08 14:44:43','通知详情14','2023-03-08 14:44:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-08 14:44:30');

/*Table structure for table `xuexiaojianjie` */

DROP TABLE IF EXISTS `xuexiaojianjie`;

CREATE TABLE `xuexiaojianjie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuexiaojianjie_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `xuexiaojianjie_types` int(11) DEFAULT NULL COMMENT '简介类型  Search111 ',
  `xuexiaojianjie_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `xuexiaojianjie_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学校简介';

/*Data for the table `xuexiaojianjie` */

insert  into `xuexiaojianjie`(`id`,`xuexiaojianjie_name`,`xuexiaojianjie_types`,`xuexiaojianjie_photo`,`insert_time`,`xuexiaojianjie_content`,`create_time`) values (1,'标题1',2,'upload/xuexiaojianjie1.jpg','2023-03-08 14:44:43','详情1','2023-03-08 14:44:43'),(2,'标题2',3,'upload/xuexiaojianjie2.jpg','2023-03-08 14:44:43','详情2','2023-03-08 14:44:43'),(3,'标题3',2,'upload/xuexiaojianjie3.jpg','2023-03-08 14:44:43','详情3','2023-03-08 14:44:43'),(4,'标题4',1,'upload/xuexiaojianjie4.jpg','2023-03-08 14:44:43','详情4','2023-03-08 14:44:43'),(5,'标题5',3,'upload/xuexiaojianjie5.jpg','2023-03-08 14:44:43','详情5','2023-03-08 14:44:43'),(6,'标题6',2,'upload/xuexiaojianjie6.jpg','2023-03-08 14:44:43','详情6','2023-03-08 14:44:43'),(7,'标题7',3,'upload/xuexiaojianjie7.jpg','2023-03-08 14:44:43','详情7','2023-03-08 14:44:43'),(8,'标题8',3,'upload/xuexiaojianjie8.jpg','2023-03-08 14:44:43','详情8','2023-03-08 14:44:43'),(9,'标题9',2,'upload/xuexiaojianjie9.jpg','2023-03-08 14:44:43','详情9','2023-03-08 14:44:43'),(10,'标题10',2,'upload/xuexiaojianjie10.jpg','2023-03-08 14:44:43','详情10','2023-03-08 14:44:43'),(11,'标题11',1,'upload/xuexiaojianjie11.jpg','2023-03-08 14:44:43','详情11','2023-03-08 14:44:43'),(12,'标题12',1,'upload/xuexiaojianjie12.jpg','2023-03-08 14:44:43','详情12','2023-03-08 14:44:43'),(13,'标题13',1,'upload/xuexiaojianjie13.jpg','2023-03-08 14:44:43','详情13','2023-03-08 14:44:43'),(14,'标题14',3,'upload/xuexiaojianjie14.jpg','2023-03-08 14:44:43','详情14','2023-03-08 14:44:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1',2,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-03-08 14:44:43'),(2,'a2','123456','学生姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-03-08 14:44:43'),(3,'a3','123456','学生姓名3',2,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-03-08 14:44:43');

/*Table structure for table `yonghu_kaoqin` */

DROP TABLE IF EXISTS `yonghu_kaoqin`;

CREATE TABLE `yonghu_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `yonghu_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `yonghu_kaoqin_content` text COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生考勤';

/*Data for the table `yonghu_kaoqin` */

insert  into `yonghu_kaoqin`(`id`,`yonghu_kaoqin_uuid_number`,`yonghu_kaoqin_name`,`yonghu_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,'1678257883255','考勤标题1','考勤详情1','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,'1678257883310','考勤标题2','考勤详情2','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,'1678257883326','考勤标题3','考勤详情3','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,'1678257883338','考勤标题4','考勤详情4','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,'1678257883334','考勤标题5','考勤详情5','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,'1678257883325','考勤标题6','考勤详情6','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,'1678257883281','考勤标题7','考勤详情7','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,'1678257883288','考勤标题8','考勤详情8','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,'1678257883337','考勤标题9','考勤详情9','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(10,'1678257883263','考勤标题10','考勤详情10','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,'1678257883325','考勤标题11','考勤详情11','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,'1678257883297','考勤标题12','考勤详情12','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,'1678257883350','考勤标题13','考勤详情13','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,'1678257883288','考勤标题14','考勤详情14','2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(15,'1678258413351','123','<p>123</p>','2023-03-08 14:53:38','2023-03-09 00:00:00','2023-03-08 14:53:38');

/*Table structure for table `yonghu_kaoqin_list` */

DROP TABLE IF EXISTS `yonghu_kaoqin_list`;

CREATE TABLE `yonghu_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `yonghu_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `yonghu_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='学生考勤详情';

/*Data for the table `yonghu_kaoqin_list` */

insert  into `yonghu_kaoqin_list`(`id`,`yonghu_id`,`yonghu_kaoqin_id`,`yonghu_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,1,1,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(2,1,2,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(3,1,3,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(4,2,4,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(5,2,5,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(6,3,6,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(7,1,7,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(8,3,8,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(9,3,9,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(10,3,10,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(11,1,11,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(12,2,12,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(13,2,13,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(14,2,14,1,'2023-03-08 14:44:43','2023-03-08 14:44:43','2023-03-08 14:44:43'),(15,1,15,2,'2023-03-08 14:53:38','2023-03-08 14:59:53','2023-03-08 14:53:38'),(16,2,15,1,'2023-03-08 14:53:38',NULL,'2023-03-08 14:53:38'),(17,3,15,1,'2023-03-08 14:53:38',NULL,'2023-03-08 14:53:38');

/*Table structure for table `yonghuqingjia` */

DROP TABLE IF EXISTS `yonghuqingjia`;

CREATE TABLE `yonghuqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `yonghuqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `yonghuqingjia_text` text COMMENT '请假缘由',
  `yonghuqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yonghuqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `yonghuqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `yonghuqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `yonghuqingjia_yesno_text` text COMMENT '处理意见',
  `yonghuqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `yonghuqingjia` */

insert  into `yonghuqingjia`(`id`,`yonghu_id`,`yonghuqingjia_name`,`yonghuqingjia_text`,`yonghuqingjia_types`,`insert_time`,`yonghuqingjia_time`,`yonghuqingjia_number`,`yonghuqingjia_yesno_types`,`yonghuqingjia_yesno_text`,`yonghuqingjia_shenhe_time`,`create_time`) values (1,2,'请假标题1','请假缘由1',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',309,1,NULL,NULL,'2023-03-08 14:44:43'),(2,3,'请假标题2','请假缘由2',1,'2023-03-08 14:44:43','2023-03-08 14:44:43',176,1,NULL,NULL,'2023-03-08 14:44:43'),(3,1,'请假标题3','请假缘由3',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',411,1,NULL,NULL,'2023-03-08 14:44:43'),(4,2,'请假标题4','请假缘由4',1,'2023-03-08 14:44:43','2023-03-08 14:44:43',335,1,NULL,NULL,'2023-03-08 14:44:43'),(5,1,'请假标题5','请假缘由5',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',345,1,NULL,NULL,'2023-03-08 14:44:43'),(6,1,'请假标题6','请假缘由6',3,'2023-03-08 14:44:43','2023-03-08 14:44:43',408,1,NULL,NULL,'2023-03-08 14:44:43'),(7,1,'请假标题7','请假缘由7',3,'2023-03-08 14:44:43','2023-03-08 14:44:43',15,1,NULL,NULL,'2023-03-08 14:44:43'),(8,2,'请假标题8','请假缘由8',3,'2023-03-08 14:44:43','2023-03-08 14:44:43',497,1,NULL,NULL,'2023-03-08 14:44:43'),(9,1,'请假标题9','请假缘由9',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',90,1,NULL,NULL,'2023-03-08 14:44:43'),(10,3,'请假标题10','请假缘由10',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',478,1,NULL,NULL,'2023-03-08 14:44:43'),(11,3,'请假标题11','请假缘由11',3,'2023-03-08 14:44:43','2023-03-08 14:44:43',74,1,NULL,NULL,'2023-03-08 14:44:43'),(12,1,'请假标题12','请假缘由12',3,'2023-03-08 14:44:43','2023-03-08 14:44:43',97,1,NULL,NULL,'2023-03-08 14:44:43'),(13,3,'请假标题13','请假缘由13',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',3,1,NULL,NULL,'2023-03-08 14:44:43'),(14,2,'请假标题14','请假缘由14',2,'2023-03-08 14:44:43','2023-03-08 14:44:43',315,2,'123123','2023-03-08 14:53:55','2023-03-08 14:44:43');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业唯一编号 Search111 ',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称 Search111 ',
  `zuoye_types` int(11) NOT NULL COMMENT '作业类型 Search111 ',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业发布时间 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_content` text COMMENT '作业详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`jiaoshi_id`,`zuoye_uuid_number`,`zuoye_name`,`zuoye_types`,`kemu_types`,`insert_time`,`zuoye_file`,`zuoye_content`,`create_time`) values (1,2,'1678257883363','作业名称1',3,2,'2023-03-08 14:44:43','upload/file.rar','作业详情1','2023-03-08 14:44:43'),(2,3,'1678257883313','作业名称2',1,2,'2023-03-08 14:44:43','upload/file.rar','作业详情2','2023-03-08 14:44:43'),(3,3,'1678257883282','作业名称3',2,2,'2023-03-08 14:44:43','upload/file.rar','作业详情3','2023-03-08 14:44:43'),(4,1,'1678257883281','作业名称4',1,2,'2023-03-08 14:44:43','upload/file.rar','作业详情4','2023-03-08 14:44:43'),(5,2,'1678257883269','作业名称5',3,1,'2023-03-08 14:44:43','upload/file.rar','作业详情5','2023-03-08 14:44:43'),(6,3,'1678257883350','作业名称6',2,2,'2023-03-08 14:44:43','upload/file.rar','作业详情6','2023-03-08 14:44:43'),(7,1,'1678257883326','作业名称7',3,1,'2023-03-08 14:44:43','upload/file.rar','作业详情7','2023-03-08 14:44:43'),(8,1,'1678257883322','作业名称8',3,2,'2023-03-08 14:44:43','upload/file.rar','作业详情8','2023-03-08 14:44:43'),(9,3,'1678257883343','作业名称9',1,2,'2023-03-08 14:44:43','upload/file.rar','作业详情9','2023-03-08 14:44:43'),(10,2,'1678257883358','作业名称10',1,2,'2023-03-08 14:44:43','upload/file.rar','作业详情10','2023-03-08 14:44:43'),(11,3,'1678257883298','作业名称11',3,1,'2023-03-08 14:44:43','upload/file.rar','作业详情11','2023-03-08 14:44:43'),(12,3,'1678257883308','作业名称12',2,2,'2023-03-08 14:44:43','upload/file.rar','作业详情12','2023-03-08 14:44:43'),(13,3,'1678257883310','作业名称13',3,2,'2023-03-08 14:44:43','upload/file.rar','作业详情13','2023-03-08 14:44:43'),(14,3,'1678257883299','作业名称14',2,1,'2023-03-08 14:44:43','upload/file.rar','作业详情14','2023-03-08 14:44:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
