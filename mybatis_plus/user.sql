/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mysql
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : index

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 09/06/2020 14:12:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `deleted` int(1) UNSIGNED NULL DEFAULT 0 COMMENT '逻辑删除',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `version` int(10) NULL DEFAULT 1 COMMENT '乐观锁',
  `gmt_create` date NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` date NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'Jack', 20, 0, 'test2@baomidou.com', 1, '2020-06-08', '2020-06-07');
INSERT INTO `user` VALUES (3, 'Tom', 28, 0, 'test3@baomidou.com', 1, '2020-06-08', '2020-06-07');
INSERT INTO `user` VALUES (4, 'MoBai', 21, 0, 'mobaijun8@163.com', 1, '2020-06-08', '2020-06-07');
INSERT INTO `user` VALUES (5, '小狐狸', 12, 0, 'mobaijun@163.com', 1, '2020-06-09', '2020-06-09');
INSERT INTO `user` VALUES (6, '百科', 21, 1, 'mobaijun@163.com', 1, '2020-06-09', '2020-06-09');
INSERT INTO `user` VALUES (7, '百科', 21, 0, 'mobaijun@163.com', 1, '2020-06-09', '2020-06-09');

SET FOREIGN_KEY_CHECKS = 1;
