/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.13 : Database - mxw_01
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mxw_01` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `mxw_01`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(11,'Can view group',3,'view_group'),(12,'Can view permission',2,'view_permission'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add 用户信息',6,'add_userprofile'),(22,'Can change 用户信息',6,'change_userprofile'),(23,'Can delete 用户信息',6,'delete_userprofile'),(24,'Can add 轮播图',7,'add_banner'),(25,'Can change 轮播图',7,'change_banner'),(26,'Can delete 轮播图',7,'delete_banner'),(27,'Can add 邮箱验证码',8,'add_emailverifyrecord'),(28,'Can change 邮箱验证码',8,'change_emailverifyrecord'),(29,'Can delete 邮箱验证码',8,'delete_emailverifyrecord'),(30,'Can view 轮播图',7,'view_banner'),(31,'Can view 邮箱验证码',8,'view_emailverifyrecord'),(32,'Can view 用户信息',6,'view_userprofile'),(33,'Can add 课程',9,'add_course'),(34,'Can change 课程',9,'change_course'),(35,'Can delete 课程',9,'delete_course'),(36,'Can add 课程资源',10,'add_courseresource'),(37,'Can change 课程资源',10,'change_courseresource'),(38,'Can delete 课程资源',10,'delete_courseresource'),(39,'Can add 章节',11,'add_lesson'),(40,'Can change 章节',11,'change_lesson'),(41,'Can delete 章节',11,'delete_lesson'),(42,'Can add 视频',12,'add_video'),(43,'Can change 视频',12,'change_video'),(44,'Can delete 视频',12,'delete_video'),(45,'Can view 课程',9,'view_course'),(46,'Can view 课程资源',10,'view_courseresource'),(47,'Can view 章节',11,'view_lesson'),(48,'Can view 视频',12,'view_video'),(49,'Can add 课程评论',13,'add_coursecomments'),(50,'Can change 课程评论',13,'change_coursecomments'),(51,'Can delete 课程评论',13,'delete_coursecomments'),(52,'Can add 用户咨询',14,'add_userask'),(53,'Can change 用户咨询',14,'change_userask'),(54,'Can delete 用户咨询',14,'delete_userask'),(55,'Can add 用户课程',15,'add_usercourse'),(56,'Can change 用户课程',15,'change_usercourse'),(57,'Can delete 用户课程',15,'delete_usercourse'),(58,'Can add 用户收藏',16,'add_userfavorite'),(59,'Can change 用户收藏',16,'change_userfavorite'),(60,'Can delete 用户收藏',16,'delete_userfavorite'),(61,'Can add 用户消息',17,'add_usermessage'),(62,'Can change 用户消息',17,'change_usermessage'),(63,'Can delete 用户消息',17,'delete_usermessage'),(64,'Can view 课程评论',13,'view_coursecomments'),(65,'Can view 用户咨询',14,'view_userask'),(66,'Can view 用户课程',15,'view_usercourse'),(67,'Can view 用户收藏',16,'view_userfavorite'),(68,'Can view 用户消息',17,'view_usermessage'),(69,'Can add 城市',18,'add_citydict'),(70,'Can change 城市',18,'change_citydict'),(71,'Can delete 城市',18,'delete_citydict'),(72,'Can add 课程机构',19,'add_courseorg'),(73,'Can change 课程机构',19,'change_courseorg'),(74,'Can delete 课程机构',19,'delete_courseorg'),(75,'Can add 教师',20,'add_teacher'),(76,'Can change 教师',20,'change_teacher'),(77,'Can delete 教师',20,'delete_teacher'),(78,'Can view 城市',18,'view_citydict'),(79,'Can view 课程机构',19,'view_courseorg'),(80,'Can view 教师',20,'view_teacher'),(81,'Can add Bookmark',21,'add_bookmark'),(82,'Can change Bookmark',21,'change_bookmark'),(83,'Can delete Bookmark',21,'delete_bookmark'),(84,'Can add User Setting',22,'add_usersettings'),(85,'Can change User Setting',22,'change_usersettings'),(86,'Can delete User Setting',22,'delete_usersettings'),(87,'Can add User Widget',23,'add_userwidget'),(88,'Can change User Widget',23,'change_userwidget'),(89,'Can delete User Widget',23,'delete_userwidget'),(90,'Can add log entry',24,'add_log'),(91,'Can change log entry',24,'change_log'),(92,'Can delete log entry',24,'delete_log'),(93,'Can view Bookmark',21,'view_bookmark'),(94,'Can view log entry',24,'view_log'),(95,'Can view User Setting',22,'view_usersettings'),(96,'Can view User Widget',23,'view_userwidget'),(97,'Can add captcha store',25,'add_captchastore'),(98,'Can change captcha store',25,'change_captchastore'),(99,'Can delete captcha store',25,'delete_captchastore'),(100,'Can view captcha store',25,'view_captchastore');

/*Table structure for table `captcha_captchastore` */

DROP TABLE IF EXISTS `captcha_captchastore`;

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `captcha_captchastore` */

insert  into `captcha_captchastore`(`id`,`challenge`,`response`,`hashkey`,`expiration`) values (1,'SCNZ','scnz','06812980ae238bc2603931357b4192cd527e44f4','2019-01-27 20:08:37.297175'),(2,'WVFC','wvfc','951bc7e31e0aca338b2d840abbb294929cb216dc','2019-01-29 13:12:24.448162'),(3,'SBJS','sbjs','e8cba24c2e95c39bbacf26ab5cb45e7b167bf5c9','2019-02-23 12:35:22.179127');

/*Table structure for table `courses_course` */

DROP TABLE IF EXISTS `courses_course`;

CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(20) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_tell` varchar(20) NOT NULL,
  `youneed_know` varchar(20) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `courses_course` */

insert  into `courses_course`(`id`,`name`,`desc`,`detail`,`degree`,`learn_times`,`students`,`fav_num`,`image`,`click_nums`,`add_time`,`course_org_id`,`category`,`teacher_id`,`tag`,`teacher_tell`,`youneed_know`,`is_banner`) values (1,'django入门','django入门','django入门','cj',60,15,1,'courses/2019/02/QQ浏览器截图20190102165555.png',13,'2019-01-27 18:18:00.000000',1,'django',NULL,'django','afwa','wad',1),(2,'GO语言入门','GO语言入门','GO语言入门','zj',0,23,0,'courses/2019/02/QQ浏览器截图20190122123020.png',23,'2019-01-27 18:19:00.000000',2,'go',1,'wad','ww','awdwadaw',1);

/*Table structure for table `courses_courseresource` */

DROP TABLE IF EXISTS `courses_courseresource`;

CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dowload` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `courses_courseresource` */

/*Table structure for table `courses_lesson` */

DROP TABLE IF EXISTS `courses_lesson`;

CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `courses_lesson` */

insert  into `courses_lesson`(`id`,`name`,`add_time`,`course_id`) values (1,'第一章','2019-02-23 10:47:00.000000',1),(2,'第一章2','2019-02-23 10:47:00.000000',2);

/*Table structure for table `courses_video` */

DROP TABLE IF EXISTS `courses_video`;

CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `courses_video` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(25,'captcha','captchastore'),(4,'contenttypes','contenttype'),(9,'courses','course'),(10,'courses','courseresource'),(11,'courses','lesson'),(12,'courses','video'),(13,'operation','coursecomments'),(14,'operation','userask'),(15,'operation','usercourse'),(16,'operation','userfavorite'),(17,'operation','usermessage'),(18,'organization','citydict'),(19,'organization','courseorg'),(20,'organization','teacher'),(5,'sessions','session'),(7,'users','banner'),(8,'users','emailverifyrecord'),(6,'users','userprofile'),(21,'xadmin','bookmark'),(24,'xadmin','log'),(22,'xadmin','usersettings'),(23,'xadmin','userwidget');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2019-01-26 15:56:31.865533'),(2,'contenttypes','0002_remove_content_type_name','2019-01-26 15:56:34.774563'),(3,'auth','0001_initial','2019-01-26 15:56:46.749810'),(4,'auth','0002_alter_permission_name_max_length','2019-01-26 15:56:49.232406'),(5,'auth','0003_alter_user_email_max_length','2019-01-26 15:56:49.575511'),(6,'auth','0004_alter_user_username_opts','2019-01-26 15:56:49.854765'),(7,'auth','0005_alter_user_last_login_null','2019-01-26 15:56:50.004364'),(8,'auth','0006_require_contenttypes_0002','2019-01-26 15:56:50.216797'),(9,'auth','0007_alter_validators_add_error_messages','2019-01-26 15:56:50.711979'),(10,'auth','0008_alter_user_username_max_length','2019-01-26 15:56:51.462846'),(11,'users','0001_initial','2019-01-26 15:57:05.999570'),(12,'admin','0001_initial','2019-01-26 15:57:10.191418'),(13,'admin','0002_logentry_remove_auto_add','2019-01-26 15:57:10.253254'),(14,'captcha','0001_initial','2019-01-26 15:57:11.121490'),(15,'courses','0001_initial','2019-01-26 15:57:19.128577'),(16,'operation','0001_initial','2019-01-26 15:57:35.068998'),(17,'organization','0001_initial','2019-01-26 15:57:39.311299'),(18,'sessions','0001_initial','2019-01-26 15:57:40.961185'),(19,'users','0002_banner_emailverifyrecord','2019-01-26 15:57:42.237293'),(20,'users','0003_auto_20190122_1102','2019-01-26 15:57:43.339123'),(21,'users','0004_auto_20190123_2010','2019-01-26 15:57:43.389987'),(22,'xadmin','0001_initial','2019-01-26 15:57:56.090412'),(23,'xadmin','0002_log','2019-01-26 15:58:01.368723'),(24,'xadmin','0003_auto_20160715_0100','2019-01-26 15:58:03.051658'),(25,'organization','0002_courseorg_category','2019-01-26 17:23:53.903709'),(26,'organization','0003_auto_20190126_2102','2019-01-26 21:03:46.625004'),(27,'organization','0004_auto_20190127_1811','2019-01-27 18:11:34.646098'),(28,'courses','0002_course_course_org','2019-01-27 18:18:07.493433'),(29,'organization','0005_auto_20190127_2015','2019-01-27 20:15:46.741063'),(30,'courses','0003_course_category','2019-01-29 18:31:44.092784'),(31,'courses','0004_video_url','2019-02-23 10:30:15.826172'),(32,'courses','0005_video_learn_times','2019-02-23 10:43:30.375877'),(33,'courses','0006_course_teacher','2019-02-23 11:13:59.367478'),(34,'courses','0007_auto_20190223_1212','2019-02-23 12:12:37.864760'),(35,'courses','0008_auto_20190223_1317','2019-02-23 13:17:54.288392'),(36,'organization','0006_auto_20190223_1427','2019-02-23 14:27:29.020418'),(37,'courses','0009_course_is_banner','2019-02-24 16:35:57.246865');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('0sot4tpdqhbrnf3y2tii7270kzrf3pit','YzA3MjE3YmM0ODFhOWQ1ZDI0Nzg4NDg3NWRhZTRkODg1Y2NhNWE0NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZjMmEyYjhmNTMyNDE2MTE5MGQ5NTM5NTE5MzU3NDdhOGYxZDY4YTAiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiX2NvbHM9bmFtZS5kZXNjLmNsaWNrX251bXMuZmF2X251bS5pbWFnZS5hZGRyZXNzLmFkZF90aW1lLmNpdHkuY2F0ZWdvcnkiXX0=','2019-02-09 20:32:33.903499'),('75pc50rfrfynwkmx1ugaxjxw9uidrrw8','YWY5ZDc0NTcxMDFiZDViZTU5ZDZjYjM3ZGJmZDQ2ZDQ1MGNkOWM5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZjMmEyYjhmNTMyNDE2MTE5MGQ5NTM5NTE5MzU3NDdhOGYxZDY4YTAifQ==','2019-02-12 15:51:55.469416'),('ka0ylg7cja3wz59r4cgs1a8k9q6hzens','MzY3Nzg1NTI4ZDQ3YzQxNjA2NzQxNzAyNjY3MDFiMDkyODI0ZDY3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjZjMmEyYjhmNTMyNDE2MTE5MGQ5NTM5NTE5MzU3NDdhOGYxZDY4YTAiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsImJhbm5lciJdLCIiXX0=','2019-03-10 17:01:50.869470');

/*Table structure for table `operation_coursecomments` */

DROP TABLE IF EXISTS `operation_coursecomments`;

CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `operation_coursecomments` */

insert  into `operation_coursecomments`(`id`,`comments`,`add_time`,`course_id`,`user_id`) values (1,'e3rfase','2019-02-23 12:51:15.554178',2,1);

/*Table structure for table `operation_userask` */

DROP TABLE IF EXISTS `operation_userask`;

CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `operation_userask` */

/*Table structure for table `operation_usercourse` */

DROP TABLE IF EXISTS `operation_usercourse`;

CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `operation_usercourse` */

/*Table structure for table `operation_userfavorite` */

DROP TABLE IF EXISTS `operation_userfavorite`;

CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `operation_userfavorite` */

insert  into `operation_userfavorite`(`id`,`fav_id`,`fav_type`,`add_time`,`user_id`) values (7,1,2,'2019-01-29 20:32:22.471499',1);

/*Table structure for table `operation_usermessage` */

DROP TABLE IF EXISTS `operation_usermessage`;

CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `operation_usermessage` */

/*Table structure for table `organization_citydict` */

DROP TABLE IF EXISTS `organization_citydict`;

CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `organization_citydict` */

insert  into `organization_citydict`(`id`,`name`,`desc`,`add_time`) values (1,'北京市','中国首都','2019-01-26 16:30:00.000000'),(3,'上海市','东风明珠','2019-01-26 16:30:00.000000'),(4,'天津市','天津','2019-01-26 16:31:00.000000'),(5,'深圳市','深圳','2019-01-26 16:31:00.000000'),(6,'广州市','广州','2019-01-26 16:32:00.000000');

/*Table structure for table `organization_courseorg` */

DROP TABLE IF EXISTS `organization_courseorg`;

CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `organization_courseorg` */

insert  into `organization_courseorg`(`id`,`name`,`desc`,`click_nums`,`fav_num`,`image`,`address`,`add_time`,`city_id`,`category`,`course_nums`,`students`) values (1,'慕课网','慕课网(IMOOC)是IT技能学习平台。慕课网(IMOOC)提供了丰富的移动端开发、php开发、web前端、android开发以及html5等视频教程资源公开课。',40,5,'org/2019/01/01.jpg','北京市','2019-01-26 16:36:00.000000',1,'pxjg',0,0),(2,'菜鸟网站','菜鸟教程(www.runoob.com)提供了编程的基础技术教程, 介绍了HTML、CSS、Javascript、Python,Java,Ruby,C,PHP , MySQL等各种编程语言的基础知识',0,0,'org/2019/01/5b66fa4de4dd3_CdedMEt.jpg','上海市','2019-01-26 16:45:00.000000',3,'gx',0,0),(3,'W3C','w3cschool是一个专业的编程入门学习及技术文档查询网站,提供包括HTML,CSS,Javascript,jQuery,C,PHP,Java,Python,Sql,Mysql等编程语言和开源技术的在线教程',0,0,'org/2019/01/20161216144107015.jpg','深圳','2019-01-26 16:50:00.000000',5,'pxjg',0,0);

/*Table structure for table `organization_teacher` */

DROP TABLE IF EXISTS `organization_teacher`;

CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(20) NOT NULL,
  `work_position` varchar(20) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `organization_teacher` */

insert  into `organization_teacher`(`id`,`name`,`work_years`,`work_company`,`work_position`,`points`,`click_nums`,`fav_num`,`add_time`,`org_id`,`image`) values (1,'兰溪',5,'xxx','xxx','xxx',2,0,'2019-01-27 18:12:00.000000',1,'org/2019/01/1.jpg'),(2,'ww',3,'xxxx','xxxx','xxxx',0,0,'2019-01-27 18:12:00.000000',2,'org/2019/01/2.jpg');

/*Table structure for table `users_banner` */

DROP TABLE IF EXISTS `users_banner`;

CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users_banner` */

insert  into `users_banner`(`id`,`title`,`image`,`url`,`index`,`add_time`) values (1,'编程学习','banner/2019/02/5b66fa4de4dd3.jpg','http://www.qiwen007.com/pc-sg/qiwenyishi/186953.html',1,'2019-02-24 17:00:00.000000'),(2,'学习','banner/2019/02/2.jpeg','http://www.phpfensi.com/article/20180127/10637.html',2,'2019-02-24 17:01:00.000000');

/*Table structure for table `users_emailverifyrecord` */

DROP TABLE IF EXISTS `users_emailverifyrecord`;

CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users_emailverifyrecord` */

/*Table structure for table `users_userprofile` */

DROP TABLE IF EXISTS `users_userprofile`;

CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(7) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users_userprofile` */

insert  into `users_userprofile`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`,`nick_name`,`birday`,`gender`,`address`,`mobile`,`image`) values (1,'pbkdf2_sha256$36000$5D31l7c7bXL7$eY1K7tqxRRb77EFC3CAukS1pSnmbse9ZjKwKClavdTA=','2019-02-24 16:14:03.274235',1,'python','','','1337983798@qq.com',1,1,'2019-01-26 15:59:08.431441','awdwadwa','2019-02-24','female','awdwadwa','None','image/2019/02/3.jpg');

/*Table structure for table `users_userprofile_groups` */

DROP TABLE IF EXISTS `users_userprofile_groups`;

CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users_userprofile_groups` */

/*Table structure for table `users_userprofile_user_permissions` */

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;

CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users_userprofile_user_permissions` */

/*Table structure for table `xadmin_bookmark` */

DROP TABLE IF EXISTS `xadmin_bookmark`;

CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xadmin_bookmark` */

/*Table structure for table `xadmin_log` */

DROP TABLE IF EXISTS `xadmin_log`;

CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xadmin_log` */

insert  into `xadmin_log`(`id`,`action_time`,`ip_addr`,`object_id`,`object_repr`,`action_flag`,`message`,`content_type_id`,`user_id`) values (1,'2019-01-26 16:30:48.333824','127.0.0.1','1','北京市','create','已添加。',18,1),(2,'2019-01-26 16:30:51.876800','127.0.0.1','2','北京市','create','已添加。',18,1),(3,'2019-01-26 16:31:08.647708','127.0.0.1','3','上海市','create','已添加。',18,1),(4,'2019-01-26 16:31:36.542024','127.0.0.1','4','天津市','create','已添加。',18,1),(5,'2019-01-26 16:32:01.967564','127.0.0.1','5','深圳市','create','已添加。',18,1),(6,'2019-01-26 16:32:14.712210','127.0.0.1','6','广州市','create','已添加。',18,1),(7,'2019-01-26 16:35:10.689437','127.0.0.1','2','北京市','delete','',18,1),(8,'2019-01-26 16:41:48.588589','127.0.0.1','1','慕课网','create','已添加。',19,1),(9,'2019-01-26 16:46:14.672968','127.0.0.1','2','菜鸟网站','create','已添加。',19,1),(10,'2019-01-26 16:50:33.370077','127.0.0.1','3','W3C','create','已添加。',19,1),(11,'2019-01-26 20:32:21.633023','127.0.0.1','2','菜鸟网站','change','修改 category 和 image',19,1),(12,'2019-01-27 18:12:48.778916','127.0.0.1','1','兰溪','create','已添加。',20,1),(13,'2019-01-27 18:13:26.169220','127.0.0.1','2','ww','create','已添加。',20,1),(14,'2019-01-27 18:19:34.423349','127.0.0.1','1','django入门','create','已添加。',9,1),(15,'2019-01-27 18:20:23.827991','127.0.0.1','2','GO语言入门','create','已添加。',9,1),(16,'2019-01-27 20:19:15.447774','127.0.0.1','2','ww','change','修改 image',20,1),(17,'2019-01-27 20:19:37.387820','127.0.0.1','1','兰溪','change','修改 image',20,1),(18,'2019-02-23 10:47:32.439078','127.0.0.1','1','第一章','create','已添加。',11,1),(19,'2019-02-23 10:47:47.857577','127.0.0.1','2','第一章2','create','已添加。',11,1),(20,'2019-02-24 16:51:28.284965','127.0.0.1','2','GO语言入门','change','修改 is_banner，teacher，category，image，tag，youneed_know 和 teacher_tell',9,1),(21,'2019-02-24 16:52:05.816870','127.0.0.1','1','django入门','change','修改 is_banner，category，image，tag，youneed_know 和 teacher_tell',9,1),(22,'2019-02-24 17:01:32.220396','127.0.0.1','1','Banner object','create','已添加。',7,1),(23,'2019-02-24 17:01:50.465551','127.0.0.1','2','Banner object','create','已添加。',7,1);

/*Table structure for table `xadmin_usersettings` */

DROP TABLE IF EXISTS `xadmin_usersettings`;

CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xadmin_usersettings` */

insert  into `xadmin_usersettings`(`id`,`key`,`value`,`user_id`) values (1,'dashboard:home:pos','',1);

/*Table structure for table `xadmin_userwidget` */

DROP TABLE IF EXISTS `xadmin_userwidget`;

CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xadmin_userwidget` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
