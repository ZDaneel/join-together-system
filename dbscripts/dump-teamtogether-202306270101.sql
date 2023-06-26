-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (arm64)
--
-- Host: localhost    Database: teamtogether
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `partybill`
--

DROP TABLE IF EXISTS `partybill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partybill` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '账单id',
  `bill_name` varchar(255) DEFAULT NULL COMMENT '账单名称',
  `bill_price` double DEFAULT NULL COMMENT '账单费用',
  `bill_username` varchar(255) DEFAULT NULL COMMENT '发起用户',
  `bill_party_id` int DEFAULT NULL COMMENT '关联活动',
  `is_aa` int DEFAULT '1' COMMENT '是否是AA费用，1代表是AA',
  PRIMARY KEY (`id`),
  KEY `bill_user_id` (`bill_username`),
  KEY `bill_party_id` (`bill_party_id`),
  CONSTRAINT `bill_party_id` FOREIGN KEY (`bill_party_id`) REFERENCES `partyinfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partybill`
--

LOCK TABLES `partybill` WRITE;
/*!40000 ALTER TABLE `partybill` DISABLE KEYS */;
INSERT INTO `partybill` VALUES (1,'饮料',30,'王五',1,1),(2,'宣传',100,'admin',1,1),(3,'场地',200,'123',3,1),(4,'报名费用',100,'admin',1,1),(9,'网吧',234,'admin',5,1),(10,'测试',123,'admin',5,1),(11,'测试2',44,'admin',5,1),(12,'测试',10,'admin',5,1),(13,'ces',22,'admin',5,1),(14,'测试2',8,'admin',5,1),(15,'李四独立',30,'李四',60,0),(21,'222',111,'admin',11,1),(22,'测试',100,'admin',9,1),(23,'测试6',45,'233',6,1),(24,'足球场地费',60,'张三',9,1),(46,'报名费用',78,'李四',56,1),(47,'报名费用',23,'李四',57,1),(48,'报名费用',123,'李四',58,1),(49,'李四增加费用',100,'李四',58,1),(50,'张三增加费用',200,'张三',58,1),(51,'报名费用',234,'李四',59,1),(52,'李四测试',235,'李四',59,0),(57,'李四a',12,'李四',59,1),(58,'张三2',19,'张三',59,0),(59,'报名费用',100,'张三',60,1),(60,'AA费用增加',10,'张三',60,1),(61,'独立费用增加',20,'张三',60,0),(62,'报名费用',100,'张三',61,1),(63,'张三AA',20,'张三',61,1),(64,'张三独立费用',50,'张三',61,0),(65,'李四独立费用',40,'李四',61,0),(66,'报名费用',100,'张三',62,1),(67,'张三增加AA费用',50,'张三',62,1),(68,'张三独立费用',30,'张三',62,0),(69,'李四独立费用',20,'李四',62,0),(70,'初始费用',100,NULL,1,1);
/*!40000 ALTER TABLE `partybill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partyinfo`
--

DROP TABLE IF EXISTS `partyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partyinfo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '活动主键',
  `partyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动地点',
  `date` datetime NOT NULL COMMENT '活动日期',
  `charge` double NOT NULL COMMENT '活动花费',
  `number` int NOT NULL COMMENT '活动总人数',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动发起人',
  `partyintro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动介绍',
  `payover` int DEFAULT '0' COMMENT '是否全已经支付，1代表已支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partyinfo`
--

LOCK TABLES `partyinfo` WRITE;
/*!40000 ALTER TABLE `partyinfo` DISABLE KEYS */;
INSERT INTO `partyinfo` VALUES (1,'募捐','操场','2021-07-20 20:00:00',22.01,100,'admin','666',1),(3,'知识竞赛','教学楼','2021-10-16 16:00:00',5,120,'admin','999999',1),(4,'学科擂台','报告厅','2021-11-04 13:00:00',20,10,'admin','',1),(5,'名企一日游','77','2021-11-12 00:30:00',130,5,'admin','77',1),(6,'运动会','操场','2021-10-14 08:00:00',10,3,'123123','',1),(7,'演讲比赛','教学楼','2021-11-14 13:30:00',35,30,'admin','',1),(8,'技能大赛','图书馆','2021-10-14 14:30:00',30,80,'admin','',1),(9,'足球比赛','足球场','2021-09-11 15:00:00',165,70,'username','',1),(10,'篮球比赛','篮球场','2021-10-16 15:00:00',10,40,'admin','',1),(11,'才艺秀','音乐厅','2022-03-03 13:30:00',161,90,'66666','',1),(12,'主持人大赛','教学楼','2021-11-13 14:00:00',40,45,'admin','',1),(13,'合唱比赛','音乐厅','2022-01-06 15:00:00',65,50,'admin','',1),(14,'马列培训','报告厅','2021-10-23 17:00:00',20,80,'123123','',1),(15,'主题晚会','报告厅','2022-01-06 18:00:00',30,300,'123123','',1),(44,'测试一','天堂','2022-07-06 07:03:47',458,2,'admin','测试',1),(45,'admin创建','admin','2022-07-06 11:59:04',138,2,'admin','2人活动测试',1),(47,'测试账单发起','测试','2022-07-29 22:16:14',226,1,'admin','测试',1),(58,'李四创建活动','测试','2022-07-07 02:23:49',423,2,'333','李四测试',1),(59,'111','222','2022-07-11 16:00:00',500,2,'333','2',1),(60,'张三活动测试AA','aa','2022-07-27 16:00:00',130,2,'222','测试',1),(61,'张三完整测试','作者','2022-07-07 05:11:44',210,2,'222','测试完整',1),(62,'张三测试','展示','2022-07-07 05:27:10',200,2,'222','测试',1);
/*!40000 ALTER TABLE `partyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partymessage`
--

DROP TABLE IF EXISTS `partymessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partymessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_user_id` int NOT NULL,
  `message_party_id` int NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid` (`message_user_id`),
  KEY `fk_partyid_2` (`message_party_id`),
  CONSTRAINT `fk_partyid` FOREIGN KEY (`message_party_id`) REFERENCES `partyinfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_userid` FOREIGN KEY (`message_user_id`) REFERENCES `user_party` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partymessage`
--

LOCK TABLES `partymessage` WRITE;
/*!40000 ALTER TABLE `partymessage` DISABLE KEYS */;
INSERT INTO `partymessage` VALUES (1,1,5,'已成团'),(2,1,1,'未缴费'),(10,1,1,'已成团'),(27,16,58,'活动已成团'),(29,16,58,'活动已结束，请缴费'),(34,16,59,'活动已成团'),(36,16,59,'活动已结束，请缴费'),(38,16,60,'活动已成团'),(39,16,60,'活动已结束，请缴费'),(40,16,61,'活动已成团'),(42,16,61,'活动已结束，请缴费'),(44,16,62,'活动已成团'),(45,17,62,'活动已成团'),(46,16,62,'活动已结束，请缴费'),(47,17,62,'活动已结束，请缴费'),(48,1,1,'活动已成团'),(49,16,1,'活动已成团');
/*!40000 ALTER TABLE `partymessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict` (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('user','el-icon-user','icon'),('house','el-icon-house','icon'),('menu','el-icon-menu','icon'),('s-custom','el-icon-s-custom','icon'),('s-grid','el-icon-s-grid','icon'),('document','el-icon-document','icon'),('coffee','el-icon-coffee\r\n','icon'),('s-marketing','el-icon-s-marketing','icon');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `pid` int DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面路径',
  `sort_num` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (4,'系统管理',NULL,'el-icon-menu',NULL,NULL,NULL,300),(5,'用户管理','/user','el-icon-user',NULL,4,'User',301),(6,'角色管理','/role','el-icon-s-custom',NULL,4,'Role',302),(7,'菜单管理','/menu','el-icon-menu',NULL,4,'Menu',303),(10,'主页','/home','el-icon-house',NULL,NULL,'Home',0),(48,'活动组团',NULL,'el-icon-s-grid',NULL,NULL,'',400),(49,'已有活动','/partyinfo','el-icon-coffee\r\n',NULL,48,'PartyInfo',401),(50,'创建活动','/create','el-icon-s-custom',NULL,48,'CreateParty',402),(51,'我的活动',NULL,'el-icon-user',NULL,NULL,NULL,500),(55,'已创建活动','/mycreate','el-icon-document',NULL,51,'MyCreate',501),(56,'已参加活动','/myjoin','el-icon-menu',NULL,51,'MyJoin',502),(57,'活动历史记录','/partyhistory','el-icon-s-marketing',NULL,51,'PartyHistory',503);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','管理员','ROLE_ADMIN'),(5,'团员','员工','ROLE_STAFF');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色菜单关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,4),(1,5),(1,6),(1,7),(1,10),(1,48),(1,49),(1,50),(1,51),(1,55),(1,56),(1,57),(2,2),(2,10),(2,45),(2,46),(2,47),(3,2),(3,10),(3,39),(5,10),(5,48),(5,49),(5,50),(5,51),(5,55),(5,56),(5,57);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','96e79218965eb72c92a549dd5a330112','管理员','admin@qq.com','1394586136','苏州','2022-11-16 13:10:27','','ROLE_ADMIN'),(16,'222','96e79218965eb72c92a549dd5a330112','张三','456@163.com','136832334','苏州','2022-10-07 14:10:14',NULL,'ROLE_STAFF'),(17,'333','96e79218965eb72c92a549dd5a330112','李四','3245@163.com','322624','成都','2022-02-26 14:10:18','','ROLE_STAFF'),(18,'444','96e79218965eb72c92a549dd5a330112','王五','112635@qq.com','1927566','北京','2022-03-29 08:59:44','','ROLE_STAFF'),(33,'555','96e79218965eb72c92a549dd5a330112','abcd','abcd@163.com','123567','天津','2022-11-10 07:34:57',NULL,'ROLE_STAFF'),(34,'aaaaa','202cb962ac59075b964b07152d234b70','aaaaa','aaaaa@qq.com','1356833','海南','2022-06-05 08:44:46',NULL,'ROLE_STAFF'),(35,'wangg','e10adc3949ba59abbe56e057f20f883e','wangg','123@163.om','138222355','南京','2022-09-23 10:26:21',NULL,'ROLE_STAFF'),(37,'7788','202cb962ac59075b964b07152d234b70','七七八八','7788@163.com','138222','西安','2022-08-11 03:11:21',NULL,'ROLE_STAFF'),(38,'ll','202cb962ac59075b964b07152d234b70','ll','lll@163.com','12346','无锡','2022-06-09 03:12:14',NULL,'ROLE_STAFF'),(39,'dj','202cb962ac59075b964b07152d234b70','dj','dj@613.com','13812922','广州','2022-06-09 03:15:52',NULL,'ROLE_STAFF'),(40,'ws','202cb962ac59075b964b07152d234b70','wss','wss@qq.com','134566','徐州','2022-02-16 03:19:35',NULL,'ROLE_FOREMAN'),(43,'zyc','202cb962ac59075b964b07152d234b70','zyc','19200130224@post.usts.edu.cn',NULL,NULL,'2022-06-09 03:58:39',NULL,'ROLE_STAFF');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_party`
--

DROP TABLE IF EXISTS `user_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_party` (
  `user_id` int NOT NULL COMMENT '用户id',
  `party_id` int NOT NULL COMMENT '活动id',
  `is_active` int DEFAULT '1' COMMENT '是否结束，0代表结束',
  `is_group` int DEFAULT '0' COMMENT '是否已经成团，1代表是，默认没有成团',
  `is_paid` int DEFAULT '0' COMMENT '是否已经支付，1代表支付了，默认为0',
  PRIMARY KEY (`user_id`,`party_id`),
  KEY `partyId` (`party_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `partyId` FOREIGN KEY (`party_id`) REFERENCES `partyinfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userID` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_party`
--

LOCK TABLES `user_party` WRITE;
/*!40000 ALTER TABLE `user_party` DISABLE KEYS */;
INSERT INTO `user_party` VALUES (1,1,0,1,1),(1,3,0,1,1),(1,6,0,1,1),(1,44,0,1,1),(1,45,0,1,1),(1,47,0,1,1),(1,48,0,1,1),(16,1,0,1,1),(16,45,0,1,1),(16,48,0,1,1),(16,49,0,1,1),(16,56,0,1,1),(16,58,0,1,1),(16,59,0,1,1),(16,60,0,1,1),(16,61,0,1,1),(16,62,0,1,1),(17,49,0,1,1),(17,55,0,1,1),(17,56,0,1,1),(17,57,1,1,0),(17,58,0,1,1),(17,59,0,1,1),(17,61,0,1,1),(17,62,0,1,1);
/*!40000 ALTER TABLE `user_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'teamtogether'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-27  1:01:32
