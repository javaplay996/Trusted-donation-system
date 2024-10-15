/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kexinjuanzengxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kexinjuanzengxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kexinjuanzengxitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(2,1,'收货人2','17703786902','地址2',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(4,3,'收货人4','17703786904','地址4',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(6,2,'收货人6','17703786906','地址6',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(7,3,'收货人7','17703786907','地址7',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(8,3,'收货人8','17703786908','地址8',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(9,2,'收货人9','17703786909','地址9',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(10,2,'收货人10','17703786910','地址10',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(12,3,'收货人12','17703786912','地址12',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(13,1,'收货人13','17703786913','地址13',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(14,2,'收货人14','17703786914','地址14',1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-08 15:55:45'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-08 15:55:45'),(3,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-04-08 15:55:45'),(4,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-04-08 15:55:45'),(5,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-04-08 15:55:45'),(6,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-04-08 15:55:45'),(7,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-04-08 15:55:45'),(8,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-08 15:55:45'),(9,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-08 15:55:45'),(10,'juanzeng_yuyue_yesno_types','捐赠状态',1,'待审核',NULL,NULL,'2023-04-08 15:55:45'),(11,'juanzeng_yuyue_yesno_types','捐赠状态',2,'同意',NULL,NULL,'2023-04-08 15:55:45'),(12,'juanzeng_yuyue_yesno_types','捐赠状态',3,'拒绝',NULL,NULL,'2023-04-08 15:55:45'),(13,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-08 15:55:45'),(14,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-08 15:55:45'),(15,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-08 15:55:45'),(16,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-08 15:55:45'),(17,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-08 15:55:45'),(18,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-04-08 15:55:45'),(19,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-08 15:55:45'),(20,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-08 15:55:45'),(21,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-08 15:55:45'),(22,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-08 15:55:45'),(23,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-08 15:55:45'),(24,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-08 15:55:45');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',430,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(2,'帖子标题2',3,NULL,'发布内容2',266,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(3,'帖子标题3',3,NULL,'发布内容3',69,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(4,'帖子标题4',2,NULL,'发布内容4',59,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(5,'帖子标题5',1,NULL,'发布内容5',266,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(6,'帖子标题6',3,NULL,'发布内容6',179,1,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(7,'帖子标题7',1,NULL,'发布内容7',464,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(8,'帖子标题8',1,NULL,'发布内容8',328,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(9,'帖子标题9',3,NULL,'发布内容9',319,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(10,'帖子标题10',3,NULL,'发布内容10',160,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(11,'帖子标题11',2,NULL,'发布内容11',498,1,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(12,'帖子标题12',1,NULL,'发布内容12',78,1,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(13,'帖子标题13',2,NULL,'发布内容13',92,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(14,'帖子标题14',2,NULL,'发布内容14',82,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57','2023-04-08 15:55:57'),(15,'帖子',1,NULL,'<p>帖子111</p>',NULL,1,1,'2023-04-08 16:09:15',NULL,'2023-04-08 16:09:15'),(16,NULL,NULL,1,'是的撒大',15,NULL,2,'2023-04-08 16:12:18',NULL,'2023-04-08 16:12:18');

/*Table structure for table `juanzeng_yuyue` */

DROP TABLE IF EXISTS `juanzeng_yuyue`;

CREATE TABLE `juanzeng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `juanzeng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `juanzeng_yuyue_text` longtext COMMENT '捐赠理由',
  `juanzeng_yuyue_name` varchar(200) DEFAULT NULL COMMENT '名称  Search111 ',
  `juanzeng_yuyue_shuliang` int(11) DEFAULT NULL COMMENT '捐赠数量 ',
  `juanzeng_yuyue_photo` varchar(200) DEFAULT NULL COMMENT '捐赠照片',
  `juanzeng_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '捐赠状态 Search111 ',
  `juanzeng_yuyue_yesno_text` longtext COMMENT '审核回复',
  `juanzeng_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '捐赠时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='捐赠';

/*Data for the table `juanzeng_yuyue` */

insert  into `juanzeng_yuyue`(`id`,`juanzeng_yuyue_uuid_number`,`yonghu_id`,`juanzeng_yuyue_text`,`juanzeng_yuyue_name`,`juanzeng_yuyue_shuliang`,`juanzeng_yuyue_photo`,`juanzeng_yuyue_yesno_types`,`juanzeng_yuyue_yesno_text`,`juanzeng_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1680940557893',2,'捐赠理由1','名称1',13,'upload/juanzeng_yuyue1.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(2,'1680940557854',1,'捐赠理由2','名称2',7,'upload/juanzeng_yuyue2.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(3,'1680940557847',3,'捐赠理由3','名称3',494,'upload/juanzeng_yuyue3.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(4,'1680940557862',3,'捐赠理由4','名称4',492,'upload/juanzeng_yuyue4.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(5,'1680940557858',3,'捐赠理由5','名称5',175,'upload/juanzeng_yuyue5.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(6,'1680940557850',2,'捐赠理由6','名称6',267,'upload/juanzeng_yuyue6.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(7,'1680940557894',1,'捐赠理由7','名称7',84,'upload/juanzeng_yuyue7.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(8,'1680940557886',2,'捐赠理由8','名称8',407,'upload/juanzeng_yuyue8.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(9,'1680940557870',3,'捐赠理由9','名称9',121,'upload/juanzeng_yuyue9.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(10,'1680940557831',1,'捐赠理由10','名称10',441,'upload/juanzeng_yuyue10.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(11,'1680940557825',1,'捐赠理由11','名称11',101,'upload/juanzeng_yuyue11.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(12,'1680940557836',3,'捐赠理由12','名称12',331,'upload/juanzeng_yuyue12.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(13,'1680940557913',1,'捐赠理由13','名称13',211,'upload/juanzeng_yuyue13.jpg',1,NULL,NULL,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(14,'1680940557910',1,'捐赠理由14','名称14',89,'upload/juanzeng_yuyue14.jpg',2,'好的积分加50','2023-04-08 16:06:37','2023-04-08 15:55:57','2023-04-08 15:55:57'),(15,'1680940957207',1,'大撒','sad阿萨德',20,'upload/1680940970221.jpg',2,'好的','2023-04-08 16:06:56','2023-04-08 16:02:51','2023-04-08 16:02:51'),(16,'1680941468687',1,'呀呀呀','物品',20,'upload/1680941479737.jpg',2,'好的','2023-04-08 16:12:51','2023-04-08 16:11:21','2023-04-08 16:11:21');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','upload/news1.jpg',1,'2023-04-08 15:55:57','新闻详情1','2023-04-08 15:55:57'),(2,'新闻名称2','upload/news2.jpg',1,'2023-04-08 15:55:57','新闻详情2','2023-04-08 15:55:57'),(3,'新闻名称3','upload/news3.jpg',1,'2023-04-08 15:55:57','新闻详情3','2023-04-08 15:55:57'),(4,'新闻名称4','upload/news4.jpg',1,'2023-04-08 15:55:57','新闻详情4','2023-04-08 15:55:57'),(5,'新闻名称5','upload/news5.jpg',2,'2023-04-08 15:55:57','新闻详情5','2023-04-08 15:55:57'),(6,'新闻名称6','upload/news6.jpg',2,'2023-04-08 15:55:57','新闻详情6','2023-04-08 15:55:57'),(7,'新闻名称7','upload/news7.jpg',1,'2023-04-08 15:55:57','新闻详情7','2023-04-08 15:55:57'),(8,'新闻名称8','upload/news8.jpg',1,'2023-04-08 15:55:57','新闻详情8','2023-04-08 15:55:57'),(9,'新闻名称9','upload/news9.jpg',1,'2023-04-08 15:55:57','新闻详情9','2023-04-08 15:55:57'),(10,'新闻名称10','upload/news10.jpg',1,'2023-04-08 15:55:57','新闻详情10','2023-04-08 15:55:57'),(11,'新闻名称11','upload/news11.jpg',2,'2023-04-08 15:55:57','新闻详情11','2023-04-08 15:55:57'),(12,'新闻名称12','upload/news12.jpg',2,'2023-04-08 15:55:57','新闻详情12','2023-04-08 15:55:57'),(13,'新闻名称13','upload/news13.jpg',2,'2023-04-08 15:55:57','新闻详情13','2023-04-08 15:55:57'),(14,'新闻名称14','upload/news14.jpg',1,'2023-04-08 15:55:57','新闻详情14','2023-04-08 15:55:57');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '积分 ',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1680940557885','upload/shangpin1.jpg',1,101,'253.74','商品介绍1',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(2,'商品名称2','1680940557879','upload/shangpin2.jpg',2,102,'417.17','商品介绍2',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(3,'商品名称3','1680940557920','upload/shangpin3.jpg',4,103,'448.60','商品介绍3',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(4,'商品名称4','1680940557846','upload/shangpin4.jpg',2,104,'82.71','商品介绍4',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(5,'商品名称5','1680940557917','upload/shangpin5.jpg',1,105,'184.33','商品介绍5',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(6,'商品名称6','1680940557917','upload/shangpin6.jpg',2,106,'408.01','商品介绍6',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(7,'商品名称7','1680940557899','upload/shangpin7.jpg',4,107,'158.68','商品介绍7',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(8,'商品名称8','1680940557853','upload/shangpin8.jpg',2,108,'233.90','商品介绍8',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(9,'商品名称9','1680940557898','upload/shangpin9.jpg',1,109,'456.93','商品介绍9',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(10,'商品名称10','1680940557868','upload/shangpin10.jpg',3,1010,'393.45','商品介绍10',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(11,'商品名称11','1680940557862','upload/shangpin11.jpg',2,1011,'47.15','商品介绍11',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(12,'商品名称12','1680940557878','upload/shangpin12.jpg',3,1012,'423.48','商品介绍12',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(13,'商品名称13','1680940557892','upload/shangpin13.jpg',1,1011,'341.37','商品介绍13',1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(14,'商品名称14','1680940557886','upload/shangpin14.jpg',3,1014,'422.84','商品介绍14',1,'2023-04-08 15:55:57','2023-04-08 15:55:57');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(2,2,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(3,3,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(4,4,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(5,5,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(6,6,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(7,7,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(8,8,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(9,9,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(10,10,3,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(11,11,1,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(12,12,1,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(14,14,2,1,'2023-04-08 15:55:57','2023-04-08 15:55:57'),(15,13,1,1,'2023-04-08 16:11:34','2023-04-08 16:11:34');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-08 15:55:57','回复信息1','2023-04-08 15:55:57','2023-04-08 15:55:57'),(2,2,1,'评价内容2','2023-04-08 15:55:57','回复信息2','2023-04-08 15:55:57','2023-04-08 15:55:57'),(3,3,3,'评价内容3','2023-04-08 15:55:57','回复信息3','2023-04-08 15:55:57','2023-04-08 15:55:57'),(4,4,2,'评价内容4','2023-04-08 15:55:57','回复信息4','2023-04-08 15:55:57','2023-04-08 15:55:57'),(5,5,1,'评价内容5','2023-04-08 15:55:57','回复信息5','2023-04-08 15:55:57','2023-04-08 15:55:57'),(6,6,3,'评价内容6','2023-04-08 15:55:57','回复信息6','2023-04-08 15:55:57','2023-04-08 15:55:57'),(7,7,2,'评价内容7','2023-04-08 15:55:57','回复信息7','2023-04-08 15:55:57','2023-04-08 15:55:57'),(8,8,2,'评价内容8','2023-04-08 15:55:57','回复信息8','2023-04-08 15:55:57','2023-04-08 15:55:57'),(9,9,3,'评价内容9','2023-04-08 15:55:57','回复信息9','2023-04-08 15:55:57','2023-04-08 15:55:57'),(10,10,1,'评价内容10','2023-04-08 15:55:57','回复信息10','2023-04-08 15:55:57','2023-04-08 15:55:57'),(11,11,3,'评价内容11','2023-04-08 15:55:57','回复信息11','2023-04-08 15:55:57','2023-04-08 15:55:57'),(12,12,2,'评价内容12','2023-04-08 15:55:57','回复信息12','2023-04-08 15:55:57','2023-04-08 15:55:57'),(13,13,3,'评价内容13','2023-04-08 15:55:57','回复信息13','2023-04-08 15:55:57','2023-04-08 15:55:57'),(14,14,3,'评价内容14','2023-04-08 15:55:57','回复信息14','2023-04-08 15:55:57','2023-04-08 15:55:57'),(15,13,1,'不错','2023-04-08 16:13:43','阿萨德阿萨德','2023-04-08 16:13:49','2023-04-08 16:13:43');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '积分',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`insert_time`,`create_time`) values (1,'1680941506290',1,13,1,2,'682.74','萨达','22 6362',105,'2023-04-08 16:11:46','2023-04-08 16:11:46');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','b4atfwz3na5ri428j4b9905cipays2p9','2023-04-08 15:57:24','2023-04-08 17:08:51'),(2,1,'admin','users','管理员','8swi20gsbjlx3q557qmrbl70b55f968p','2023-04-08 15:59:20','2023-04-08 17:11:55');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-08 15:55:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '积分',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','667.26','2023-04-08 15:55:57'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','465.13','2023-04-08 15:55:57'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','277.28','2023-04-08 15:55:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
