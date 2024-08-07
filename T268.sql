/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t268`;
CREATE DATABASE IF NOT EXISTS `t268` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t268`;

DROP TABLE IF EXISTS `baoyangdengji`;
CREATE TABLE IF NOT EXISTS `baoyangdengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `baoyangdengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '保养登记唯一编号 Search111 ',
  `baoyangdengji_name` varchar(200) DEFAULT NULL COMMENT '保养名称 Search111 ',
  `baoyangdengji_types` int DEFAULT NULL COMMENT '保养类型',
  `baoyangdengji_content` text COMMENT '保养详情 ',
  `baoyangdengji_time` timestamp NULL DEFAULT NULL COMMENT '保养时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='保养登记';

DELETE FROM `baoyangdengji`;
INSERT INTO `baoyangdengji` (`id`, `yonghu_id`, `yuangong_id`, `baoyangdengji_uuid_number`, `baoyangdengji_name`, `baoyangdengji_types`, `baoyangdengji_content`, `baoyangdengji_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '16454258869553', '保养名称1', 3, '保养详情1', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(2, 2, 2, '164542588695518', '保养名称2', 2, '保养详情2', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(3, 3, 2, '16454258869554', '保养名称3', 3, '保养详情3', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(4, 4, 1, '16454258869555', '保养名称4', 4, '保养详情4', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(5, 5, 2, '16454258869559', '保养名称5', 4, '保养详情5', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(6, 6, 2, '16454258869567', '保养名称6', 3, '保养详情6', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(7, 7, 3, '164542588695620', '保养名称7', 3, '保养详情7', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(8, 8, 3, '16454258869565', '保养名称8', 4, '保养详情8', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(9, 9, 2, '164542588695616', '保养名称9', 5, '保养详情9', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(10, 10, 3, '16454258869569', '保养名称10', 1, '保养详情10', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(11, 11, 2, '164542588695610', '保养名称11', 4, '保养详情11', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46');

DROP TABLE IF EXISTS `cheliang`;
CREATE TABLE IF NOT EXISTS `cheliang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称 Search111 ',
  `cheliang_types` int DEFAULT NULL COMMENT '车辆类型',
  `cheliang_paihao` varchar(200) DEFAULT NULL COMMENT '绑定车牌号 Search111 ',
  `cheliang_content` text COMMENT '车辆备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='车辆';

DELETE FROM `cheliang`;
INSERT INTO `cheliang` (`id`, `yonghu_id`, `cheliang_name`, `cheliang_types`, `cheliang_paihao`, `cheliang_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '车辆名称1', 5, '绑定车牌号1', '车辆备注1', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(2, 2, '车辆名称2', 1, '绑定车牌号2', '车辆备注2', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(3, 3, '车辆名称3', 1, '绑定车牌号3', '车辆备注3', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(4, 4, '车辆名称4', 5, '绑定车牌号4', '车辆备注4', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(5, 5, '车辆名称5', 1, '绑定车牌号5', '车辆备注5', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(6, 6, '车辆名称6', 1, '绑定车牌号6', '车辆备注6', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(7, 7, '车辆名称7', 3, '绑定车牌号7', '车辆备注7', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(8, 8, '车辆名称8', 2, '绑定车牌号8', '车辆备注8', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(9, 9, '车辆名称9', 3, '绑定车牌号9', '车辆备注9', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(10, 10, '车辆名称10', 2, '绑定车牌号10', '车辆备注10', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(11, 11, '车辆名称11', 2, '绑定车牌号11', '车辆备注11', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(12, 11, '车辆1', 4, '浙A9999', '<p>wu</p>', '2022-02-21 06:57:35', '2022-02-21 06:57:35');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-21 06:42:02'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-21 06:42:02'),
	(3, 'zhunjia_types', '准驾车型', 1, '大型客车', NULL, NULL, '2022-02-21 06:42:02'),
	(4, 'zhunjia_types', '准驾车型', 2, '牵引车', NULL, NULL, '2022-02-21 06:42:02'),
	(5, 'zhunjia_types', '准驾车型', 3, '城市公交车', NULL, NULL, '2022-02-21 06:42:02'),
	(6, 'zhunjia_types', '准驾车型', 4, '中型客车', NULL, NULL, '2022-02-21 06:42:02'),
	(7, 'zhunjia_types', '准驾车型', 5, '大型货车', NULL, NULL, '2022-02-21 06:42:02'),
	(8, 'cheliang_types', '车辆类型', 1, '大货车', NULL, NULL, '2022-02-21 06:42:02'),
	(9, 'cheliang_types', '车辆类型', 2, '吊车', NULL, NULL, '2022-02-21 06:42:02'),
	(10, 'cheliang_types', '车辆类型', 3, '小轿车', NULL, NULL, '2022-02-21 06:42:02'),
	(11, 'cheliang_types', '车辆类型', 4, '跑车', NULL, NULL, '2022-02-21 06:42:02'),
	(12, 'cheliang_types', '车辆类型', 5, '面包车', NULL, NULL, '2022-02-21 06:42:02'),
	(13, 'zeren_types', '责任方', 1, '我方', NULL, NULL, '2022-02-21 06:42:02'),
	(14, 'zeren_types', '责任方', 2, '他方', NULL, NULL, '2022-02-21 06:42:02'),
	(15, 'shigudengji_types', '事故类型', 1, '事故类型1', NULL, NULL, '2022-02-21 06:42:02'),
	(16, 'shigudengji_types', '事故类型', 2, '事故类型2', NULL, NULL, '2022-02-21 06:42:02'),
	(17, 'shigudengji_types', '事故类型', 3, '事故类型3', NULL, NULL, '2022-02-21 06:42:02'),
	(18, 'shigudengji_types', '事故类型', 4, '事故类型4', NULL, NULL, '2022-02-21 06:42:02'),
	(19, 'shigudengji_types', '事故类型', 5, '事故类型5', NULL, NULL, '2022-02-21 06:42:02'),
	(20, 'weixiudengji_types', '维修类型', 1, '维修类型1', NULL, NULL, '2022-02-21 06:42:02'),
	(21, 'weixiudengji_types', '维修类型', 2, '维修类型2', NULL, NULL, '2022-02-21 06:42:02'),
	(22, 'weixiudengji_types', '维修类型', 3, '维修类型3', NULL, NULL, '2022-02-21 06:42:02'),
	(23, 'weixiudengji_types', '维修类型', 4, '维修类型4', NULL, NULL, '2022-02-21 06:42:02'),
	(24, 'weixiudengji_types', '维修类型', 5, '维修类型5', NULL, NULL, '2022-02-21 06:42:02'),
	(25, 'baoyangdengji_types', '保养类型', 1, '保养类型1', NULL, NULL, '2022-02-21 06:42:02'),
	(26, 'baoyangdengji_types', '保养类型', 2, '保养类型2', NULL, NULL, '2022-02-21 06:42:02'),
	(27, 'baoyangdengji_types', '保养类型', 3, '保养类型3', NULL, NULL, '2022-02-21 06:42:02'),
	(28, 'baoyangdengji_types', '保养类型', 4, '保养类型4', NULL, NULL, '2022-02-21 06:42:02'),
	(29, 'baoyangdengji_types', '保养类型', 5, '保养类型5', NULL, NULL, '2022-02-21 06:42:02'),
	(30, 'weizhangdengji_types', '违章类型', 1, '违章类型1', NULL, NULL, '2022-02-21 06:42:02'),
	(31, 'weizhangdengji_types', '违章类型', 2, '违章类型2', NULL, NULL, '2022-02-21 06:42:02'),
	(32, 'weizhangdengji_types', '违章类型', 3, '违章类型3', NULL, NULL, '2022-02-21 06:42:02'),
	(33, 'weizhangdengji_types', '违章类型', 4, '违章类型4', NULL, NULL, '2022-02-21 06:42:02'),
	(34, 'weizhangdengji_types', '违章类型', 5, '违章类型5', NULL, NULL, '2022-02-21 06:42:02'),
	(35, 'weizhangdengji_types', '违章类型', 6, '违章类型7', NULL, '', '2022-02-21 06:56:14');

DROP TABLE IF EXISTS `shigudengji`;
CREATE TABLE IF NOT EXISTS `shigudengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `shigudengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '事故登记唯一编号 Search111 ',
  `shigudengji_name` varchar(200) DEFAULT NULL COMMENT '事故名称 Search111 ',
  `shigudengji_types` int DEFAULT NULL COMMENT '事故类型',
  `zeren_types` int DEFAULT NULL COMMENT '责任方',
  `shigudengji_content` text COMMENT '事故详情 ',
  `shigudengji_time` timestamp NULL DEFAULT NULL COMMENT '发生时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='事故登记';

DELETE FROM `shigudengji`;
INSERT INTO `shigudengji` (`id`, `yonghu_id`, `yuangong_id`, `shigudengji_uuid_number`, `shigudengji_name`, `shigudengji_types`, `zeren_types`, `shigudengji_content`, `shigudengji_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '164542588696412', '事故名称1', 1, 2, '事故详情1', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(2, 2, 2, '16454258869640', '事故名称2', 3, 1, '事故详情2', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(3, 3, 1, '164542588696412', '事故名称3', 3, 2, '事故详情3', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(4, 4, 1, '164542588696415', '事故名称4', 4, 1, '事故详情4', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(5, 5, 1, '164542588696420', '事故名称5', 2, 1, '事故详情5', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(6, 6, 3, '16454258869640', '事故名称6', 4, 2, '事故详情6', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(7, 7, 3, '16454258869647', '事故名称7', 1, 2, '事故详情7', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(8, 8, 2, '16454258869642', '事故名称8', 1, 2, '事故详情8', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(9, 9, 3, '16454258869644', '事故名称9', 5, 1, '事故详情9', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(10, 10, 3, '164542588696418', '事故名称10', 3, 1, '事故详情10', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(11, 11, 1, '16454258869644', '事故名称11', 2, 1, '事故详情11', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(12, 11, 3, '1645426665647', '事故名称99', 4, 2, '<p>事故详情</p>', '2022-02-21 16:00:00', '2022-02-21 06:58:12', '2022-02-21 06:58:12');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'y06z4flcchce3u18cmipjx4v6u0unjqf', '2022-02-21 06:47:21', '2024-07-15 06:49:06'),
	(2, 1, 'a1', 'yuangong', '员工', '8u8mq3ej8ojaehk40w5qfd1fvgrlhbc9', '2022-02-21 06:58:30', '2024-07-15 06:50:07');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `weixiudengji`;
CREATE TABLE IF NOT EXISTS `weixiudengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `weixiudengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '维修登记唯一编号 Search111 ',
  `weixiudengji_name` varchar(200) DEFAULT NULL COMMENT '维修名称 Search111 ',
  `weixiudengji_types` int DEFAULT NULL COMMENT '维修类型',
  `weixiudengji_content` text COMMENT '维修详情 ',
  `weixiudengji_time` timestamp NULL DEFAULT NULL COMMENT '维修时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='维修登记';

DELETE FROM `weixiudengji`;
INSERT INTO `weixiudengji` (`id`, `yonghu_id`, `yuangong_id`, `weixiudengji_uuid_number`, `weixiudengji_name`, `weixiudengji_types`, `weixiudengji_content`, `weixiudengji_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, '16454258869682', '维修名称1', 2, '维修详情1', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(2, 2, 1, '164542588696815', '维修名称2', 3, '维修详情2', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(3, 3, 1, '164542588696811', '维修名称3', 5, '维修详情3', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(4, 4, 1, '16454258869680', '维修名称4', 4, '维修详情4', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(5, 5, 1, '16454258869682', '维修名称5', 1, '维修详情5', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(6, 6, 3, '164542588696814', '维修名称6', 3, '维修详情6', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(7, 7, 3, '16454258869686', '维修名称7', 2, '维修详情7', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(8, 8, 1, '164542588696817', '维修名称8', 5, '维修详情8', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(9, 9, 1, '164542588696919', '维修名称9', 3, '维修详情9', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(10, 10, 2, '164542588696914', '维修名称10', 1, '维修详情10', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(11, 11, 2, '164542588696912', '维修名称11', 4, '维修详情11', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46');

DROP TABLE IF EXISTS `weizhangdengji`;
CREATE TABLE IF NOT EXISTS `weizhangdengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `weizhangdengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '违章登记唯一编号 Search111 ',
  `weizhangdengji_name` varchar(200) DEFAULT NULL COMMENT '违章名称 Search111 ',
  `weizhangdengji_types` int DEFAULT NULL COMMENT '违章类型',
  `weizhangdengji_content` text COMMENT '违章详情 ',
  `chufa_content` text COMMENT '处罚详情 ',
  `weizhangdengji_time` timestamp NULL DEFAULT NULL COMMENT '违章时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='违章登记';

DELETE FROM `weizhangdengji`;
INSERT INTO `weizhangdengji` (`id`, `yonghu_id`, `yuangong_id`, `weizhangdengji_uuid_number`, `weizhangdengji_name`, `weizhangdengji_types`, `weizhangdengji_content`, `chufa_content`, `weizhangdengji_time`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, '164542588697116', '违章名称1', 3, '违章详情1', '处罚详情1', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(2, 2, 1, '16454258869713', '违章名称2', 2, '违章详情2', '处罚详情2', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(3, 3, 1, '164542588697118', '违章名称3', 3, '违章详情3', '处罚详情3', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(4, 4, 3, '164542588697114', '违章名称4', 4, '违章详情4', '处罚详情4', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(5, 5, 3, '16454258869713', '违章名称5', 3, '违章详情5', '处罚详情5', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(6, 6, 2, '164542588697116', '违章名称6', 4, '违章详情6', '处罚详情6', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(7, 7, 1, '164542588697120', '违章名称7', 2, '违章详情7', '处罚详情7', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(8, 8, 1, '164542588697119', '违章名称8', 1, '违章详情8', '处罚详情8', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(9, 9, 2, '16454258869716', '违章名称9', 2, '违章详情9', '处罚详情9', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(10, 10, 3, '164542588697110', '违章名称10', 4, '违章详情10', '处罚详情10', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(11, 11, 1, '16454258869711', '违章名称11', 3, '违章详情11', '处罚详情11', '2022-02-21 06:44:46', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(12, 11, 1, '1645426770005', '违章92', 6, '<p>违章92的详情</p>', '<p>违章92的处罚结果</p>', '2022-02-19 16:00:00', '2022-02-21 06:59:58', '2022-02-21 06:59:58');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `zhunjia_types` int DEFAULT NULL COMMENT '准驾车型 Search111',
  `jiashizhenghao` varchar(200) DEFAULT NULL COMMENT '驾驶证 Search111 ',
  `yonghu_content` text COMMENT '用户备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `zhunjia_types`, `jiashizhenghao`, `yonghu_content`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '17703786901', '410224199610232001', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 1, 3, '驾驶证1', '用户备注1', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(2, '用户2', '17703786902', '410224199610232002', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 5, '驾驶证2', '用户备注2', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(3, '用户3', '17703786903', '410224199610232003', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 2, '驾驶证3', '用户备注3', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(4, '用户4', '17703786904', '410224199610232004', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 1, 4, '驾驶证4', '用户备注4', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(5, '用户5', '17703786905', '410224199610232005', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 1, 2, '驾驶证5', '用户备注5', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(6, '用户姓名6', '17703786906', '410224199610232006', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 1, '驾驶证6', '用户备注6', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(7, '用户姓名7', '17703786907', '410224199610232007', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 3, '驾驶证7', '用户备注7', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(8, '用户姓名8', '17703786908', '410224199610232008', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 4, '驾驶证8', '用户备注8', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(9, '用户姓名9', '17703786909', '410224199610232009', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 3, '驾驶证9', '用户备注9', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(10, '用户姓名10', '17703786910', '410224199610232010', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 1, 2, '驾驶证10', '用户备注10', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(11, '用户姓名11', '17703786911', '410224199610232011', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', 2, 3, '驾驶证11', '用户备注11', '2022-02-21 06:44:46', '2022-02-21 06:44:46'),
	(12, '张99', '17703786969', '410224199610232009', 'http://localhost:8080/cheliangguanli/upload/1645426609681.jpg', 2, 4, 'a924151', '<p>用户备注</p>', '2022-02-21 06:57:03', '2022-02-21 06:57:03');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_uuid_number`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `yuangong_email`, `sex_types`, `create_time`) VALUES
	(1, '员工1', '123456', '16454258869779', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/cheliangguanli/upload/touxiang1.jpg', '1@qq.com', 1, '2022-02-21 06:44:46'),
	(2, '员工2', '123456', '164542588697710', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/cheliangguanli/upload/touxiang2.jpg', '2@qq.com', 2, '2022-02-21 06:44:46'),
	(3, '员工3', '123456', '16454258869771', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/cheliangguanli/upload/touxiang3.jpg', '3@qq.com', 1, '2022-02-21 06:44:46');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
