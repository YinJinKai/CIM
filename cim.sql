-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cim
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'123456','1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classinfor`
--

DROP TABLE IF EXISTS `classinfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classinfor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classNumber` varchar(20) DEFAULT NULL,
  `className` varchar(20) DEFAULT NULL,
  `classSpecialFieldNumber` varchar(20) DEFAULT NULL,
  `classBirthDate` varchar(20) DEFAULT NULL,
  `classTeacherCharge` varchar(20) DEFAULT NULL,
  `classMemo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classinfor`
--

LOCK TABLES `classinfor` WRITE;
/*!40000 ALTER TABLE `classinfor` DISABLE KEYS */;
INSERT INTO `classinfor` VALUES (5,'01','计应一班','2','2018-02-26','2','好班'),(6,'02','飞行一班','6','2018-02-26','1','好班.....');
/*!40000 ALTER TABLE `classinfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collegeNumber` varchar(20) DEFAULT NULL,
  `collegeName` varchar(20) DEFAULT NULL,
  `collegeBirthDate` varchar(10) DEFAULT NULL,
  `collegeMan` varchar(10) DEFAULT NULL,
  `collegeTelephone` varchar(20) DEFAULT NULL,
  `collegeMemo` varchar(999) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (20,'01','信息学院','2018-02-17','尹金凯','110','信息工程专业学生主要学习各种类型模拟与数字信息传输过程、信息的采集与处理相关技术、协议、传输安全等内容，具备从事通信网络一般设计、调试的基本能力，具备信息电子采集系统设计、信息处理和网络安全基础设计的基本能力。','/CIM/uploadFile/70efd032-effa-4a76-9745-fa922d522f0d.jpg'),(21,'02','美术学院','2018-02-17','尹金凯','112','美术专业为美术史论、美术教育领域培养教学和科研，美术评论和编辑、艺术管理和博物馆等方面的高级专门人才，学生毕业后能从事美术教育、美术研究、文博艺术管理、新闻出版等方面的工作。','/CIM/uploadFile/2633af22-ed09-4f09-a460-57af01917804.jpg'),(22,'03','航天航空学院','2018-02-17','尹金凯','119','航空航天专业的培养目标是培养具有较好数学、力学基础知识和飞行器工程基本理论及飞行器总体结构设计与强度分析、试验能力，能从事飞行器（包括航天器与运载端）设计、结构设计与研究、结构强度分析与试验，并有从事通用机械设计及制造的高级工程技术人员和研究人员。培养要求是本专业学生主要学习飞行器设计方面的基本理论和基本知识，受到航空航天飞行器工程方面的基本训练，具有参与飞行器总体和部件设计方面的基本能力。','/CIM/uploadFile/eecdd658-152e-48b0-99fd-83af41500299.jpg');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specialFieldNumber` varchar(20) DEFAULT NULL,
  `specialFieldName` varchar(20) DEFAULT NULL,
  `specialCollegeNumber` varchar(20) DEFAULT NULL,
  `specialBirthDate` varchar(20) DEFAULT NULL,
  `specialMan` varchar(20) DEFAULT NULL,
  `specialMemo` varchar(900) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (2,'01','计算机应用技术','20','2018-02-19','尹金凯','《计算机组成原理》系统地介绍了计算机的基本组成原理和内部工作机制。《计算机组成原理》共分8章，主要内容分成两个部分：第1、2章介绍了计算机的基础知识；第3～8章介绍了计算机的各子系统（包括运算器、存储器、控制器、外部设备和输入输出子系统等）的基本组成原理、设计方法、相互关系以及各子系统互相连接构成整机系统的技术。'),(3,'02','软件工程','20','2018-02-21','尹金凯','C语言是一门通用计算机编程语言，应用广泛。C语言的设计目标是提供一种能以简易的方式编译、处理低级存储器、产生少量的机器码以及不需要任何运行环境支持便能运行的编程语言。'),(4,'03','影视动画','21','2018-02-27','尹金凯','影视三维动画涉及影视特效创意、前期拍摄、影视3D动画、特效后期合成、影视剧特效动画等。'),(5,'04','服装设计','21','2018-02-21','尹金凯','服装设计属于工艺美术范畴，是实用性和艺术性相结合的一种艺术形式。设计（Design）意指计划、构思、设立方案，也含有意象、作图、造型之意，而服装设计的定义就是解决人们穿着生活体系中诸问题的富有创造性的计划及创作行为。'),(6,'05','飞行器设计','22','2018-02-06','尹金凯','飞行器设计与工程专业（代码 081501）属于工学大类，航空航天类。一般设有飞行器设计、飞行力学与控制、直升机设计、空气动力学、飞行器结构强度等专业方面，主要研究的是各种航天飞行器，包括人造卫星、宇宙飞船、空间站、深空探测器运载火箭、航天飞机等空间飞行器及导弹的设计。'),(7,'06','固体力学','22','2018-02-14','尹金凯','固体力学是力学中研究固体机械性质的学科，连续介质力学组成部分之一，主要研究固体介质在外力，温度和形变的作用下的表现，是连续介质力学的一个分支。一般包括材料力学、弹性力学、塑性力学等部分。固体力学广泛的应用张量来描述应力，应变和它们之间的关系。');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsTitle` varchar(200) DEFAULT NULL,
  `newsContent` varchar(999) DEFAULT NULL,
  `newsDate` varchar(200) DEFAULT NULL,
  `newsPhoto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'清华药学院肖百龙与生命学院李雪明课题组合作发文\r\n揭示细胞“感知”机械力的精巧分子机器结构与机制','清华药学院肖百龙与生命学院李雪明课题组合作发文\r\n揭示细胞“感知”机械力的精巧分子机器结构与机制','2018-02-01','/CIM/uploadFile/81d7c13a-3199-4c87-b1fb-1ff12fe7f68d.jpg'),(3,'吉旺迎春 福满清华 2018年清华师生除夕联欢辞旧迎新','邱勇向留校学生和寒假期间坚守岗位的教职员工致以热情洋溢的新春问候和美好祝愿。邱勇回顾了过去一年清华大学在改革发展方面取得的累累硕果。2017年，党的十九大胜利召开，中国进入新时代，清华大学踏上了建设世界一流大学的新征程。学校持续增加奖助学金种类和总量，引导帮助遇到困难的同学奋发自强、追求梦想；推出“开放交流时间”制度，缩短师生距离，营造有温度的校园；设立新百年教学成就奖、年度教学优秀奖，鼓励教师投身教书育人事业；在本科教学工作审核评估中，专家组对清华大学本科教学给予高度肯定。学校倡议创建了亚洲大学联盟，先后举办“世界和平论坛”“长城工程科技会议”“一带一路达沃斯论坛”等，不断扩展国际影响力。今年的联欢会是国际学生参加人数最多的一年，清华大家庭正敞开怀抱欢迎全世界的学子。邱勇对全体师生过去一年的共同努力表示感谢，期望清华师生携手创造更加精彩的2018年。','2018-02-02','/CIM/uploadFile/2d90a82d-8d3a-4085-ac3e-e7e2e5be2b33.jpg'),(4,'2017年清华大学十大新闻揭晓','2017年1月9日，在2016年度国家科学技术奖励大会上，清华大学共有22项科技成果获得国家科学技术奖励，作为第一单位或第一完成人所在单位获奖8项。其中，国家自然科学奖4项，国家技术发明奖2项，国家科学技术进步奖16项，获奖总数居全国高校首位。由杨知行教授等完成的“DTMB系统国际化和产业化的关键技术及应用”项目获国家科技进步奖一等奖。','2018-02-03','/CIM/uploadFile/7829fcb9-e554-41fa-937d-0a8ae29aba48.jpg'),(5,'清华师生开展“重走总书记初心之路”社会实践\r\n陈旭参加梁家河支队实践并为师生讲党课','陈旭对师生们通过参加“重走总书记初心之路”社会实践，自觉学习党的十九大精神表示肯定。陈旭指出，习近平总书记曾经工作和生活的地方正是习近平新时代中国特色社会主义思想萌发、形成、实践的地方。学校组织师生分赴这些地方开展社会实践，是让师生通过亲身体会，感受改革开放四十年来中国特色社会主义事业取得的伟大成就，学习总书记治国理政思想的发展过程，进而更加坚定“四个自信”，牢固树立“四个意识”。','2018-02-04','/CIM/uploadFile/d35fcc24-f168-4272-9d44-1c1201fcef8f.jpg'),(6,'清华召开首届年度科研创新交流会\r\n发布年度亮点成果及纪念梅贻琦学术论文奖名单','薛其坤代表学校宣布“清华大学2017年亮点成果”和“清华大学纪念梅贻琦学术论文奖”名单。生命学院施一公“揭示RNA剪接的分子机理”、航天航空学院李路明“清华脑起搏器实现异国植入与跨国程控”、第一附属医院李小梅“一站式镶嵌治疗低龄婴幼儿难治性心律失常”、电子系刘仿“集成切伦科夫辐射芯片”、微电子所任天令“人工智能微纳电子器件”、地学系付昊桓“基于‘神威·太湖之光’的非线性地震模拟”、物理系于浦“电场调控双离子诱导材料多态相变”、环境学院贺克斌“国际贸易中隐含的PM2.5污染健康影响”、人文学院李学勤“清华简整理取得春秋史研究新突破”和经管学院钱颖一“大学为学生：清华经管学院教育改革思与行”等10项研究成果获评“清华大学2017年亮点成果”。来自工程科学、生命医药科学、数学和物质科学、人文科学、社会科学、艺术学及马克思主义哲学领域的30篇优秀论文入选2017年“清华大学纪念梅贻琦学术论文奖”。','2018-02-05','/CIM/uploadFile/3fddabdf-3de6-426e-92a3-0f3629726d17.jpg'),(7,'国务院副总理刘延东考察清华大学','刘延东指出，党的十九大做出了中国特色社会主义进入新时代这一重要的政治论断，把习近平新时代中国特色社会主义思想确立为我们党长期坚持的指导思想，开启了党和国家事业发展的新征程。面对新时代、新征程，教育是基础，科技是核心，人才是关键。面对新形势、新要求，清华大学要认真贯彻落实党的十九大精神，以习近平新时代中国特色社会主义思想为指导，坚定走中国特色社会主义高等教育发展道路，扎根中国大地、加快一流大学建设，为国家发展、人民幸福和人类文明进步作出新的更大的贡献。','2018-02-06','/CIM/uploadFile/2dffcd70-caca-4670-8eb4-5166bad469cb.jpg');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseNumber` varchar(20) DEFAULT NULL,
  `courseName` varchar(20) DEFAULT NULL,
  `courseTeacher` varchar(20) DEFAULT NULL,
  `courseTime` varchar(20) DEFAULT NULL,
  `coursePlace` varchar(20) DEFAULT NULL,
  `courseScore` varchar(20) DEFAULT NULL,
  `courseMemo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `studentName` varchar(20) DEFAULT NULL,
  `studentPassword` varchar(20) DEFAULT NULL,
  `studentSex` varchar(20) DEFAULT NULL,
  `studentClassNumber` varchar(20) DEFAULT NULL,
  `studentBirthday` varchar(20) DEFAULT NULL,
  `studentState` varchar(20) DEFAULT NULL,
  `studentPhoto` varchar(200) DEFAULT NULL,
  `studentTelephone` varchar(20) DEFAULT NULL,
  `studentEmail` varchar(200) DEFAULT NULL,
  `studentAddress` varchar(200) DEFAULT NULL,
  `studentMemo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (2,'1','张二','123456','1','5','2014-01-02','2','CIM/uploadFile/859f0448-10f8-4546-996e-2cd8968a8814.jpg','46546','11111','22222','222'),(3,'2','小花','1111','0','6','2018-01-29','2','CIM/uploadFile/859f0448-10f8-4546-996e-2cd8968a8814.jpg','111111','111@qq.com','某某街道','好好....');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherNumber` varchar(20) DEFAULT NULL,
  `teacherName` varchar(20) DEFAULT NULL,
  `studentNumber` varchar(20) DEFAULT NULL,
  `teacherPassword` varchar(20) DEFAULT NULL,
  `teacherSex` varchar(20) DEFAULT NULL,
  `teacherBirthday` varchar(20) DEFAULT NULL,
  `teacherArriveDate` varchar(20) DEFAULT NULL,
  `teacherCardNumber` varchar(200) DEFAULT NULL,
  `teacherPhone` varchar(20) DEFAULT NULL,
  `teacherPhoto` varchar(200) DEFAULT NULL,
  `teacherAddress` varchar(200) DEFAULT NULL,
  `teacherMemo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (2,'01','小一',NULL,'123','1','1993-02-11','2018-02-20','111111111111111','123456','/CIM/uploadFile/cea46a09-28ce-4c7e-a2ca-7dd12dcd79c9.jpg','某某街道','好人一个'),(3,'02','小二',NULL,'4545','0','1995-02-07','2018-02-08','222222222','123456','/CIM/uploadFile/57dea9fb-0d13-439a-8ba7-641198db1c4d.jpg','某某街道','好人'),(4,'03','大王',NULL,'55555','1','1996-02-05','2018-02-27','25555555555','55555555555555','/CIM/uploadFile/a10d8dac-d21b-4255-8df7-158a6850b1dd.jpg','某某街道','好好好.....'),(5,'04','翠花',NULL,'2522','0','2011-02-08','2018-02-05','555555555555555555','44444444','/CIM/uploadFile/d9c26dae-d111-4154-b785-b2b2e570f338.jpg','某某街道','哈哈哈...');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-26  9:47:40
