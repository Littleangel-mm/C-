/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : underworld_db

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 30/06/2025 17:05:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for life_and_death
-- ----------------------------
DROP TABLE IF EXISTS `life_and_death`;
CREATE TABLE `life_and_death`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `virtue` int NOT NULL DEFAULT 0,
  `birth_date` date NOT NULL,
  `death_date` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '在世',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE,
  INDEX `idx_birth_date`(`birth_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of life_and_death
-- ----------------------------
INSERT INTO `life_and_death` VALUES (1, '张三', '男', 85, '1980-05-15', '', '在世', '2025-06-29 18:16:36', '2025-06-29 18:16:36');
INSERT INTO `life_and_death` VALUES (2, '李四', '女', 92, '1975-08-22', '', '在世', '2025-06-29 18:16:36', '2025-06-29 18:16:36');
INSERT INTO `life_and_death` VALUES (3, '王五', '男', 78, '1965-12-03', '', '在世', '2025-06-29 18:16:36', '2025-06-29 18:16:36');
INSERT INTO `life_and_death` VALUES (4, '赵六', '女', 95, '1990-03-10', '', '在世', '2025-06-29 18:16:36', '2025-06-29 18:16:36');
INSERT INTO `life_and_death` VALUES (5, '孙七', '男', 88, '1985-07-21', '', '已故', '2025-06-29 18:16:36', '2025-06-29 18:16:36');
INSERT INTO `life_and_death` VALUES (6, '周八', '女', 76, '1970-11-30', '2020-03-19', '已故', '2025-06-29 18:16:36', '2025-06-29 18:51:35');
INSERT INTO `life_and_death` VALUES (8, '小天使', '女', 1000, '2020-05-01', '2020-06-01', '已故', '2025-06-29 19:18:30', '2025-06-29 19:38:24');
INSERT INTO `life_and_death` VALUES (11, '孙悟空', '男', 1000, '2020-05-01', '', '在世', '2025-06-29 20:59:18', '2025-06-29 20:59:18');
INSERT INTO `life_and_death` VALUES (12, '猪八戒', '男', 100, '2020-05-01', '', '在世', '2025-06-29 21:14:42', '2025-06-29 21:14:42');
INSERT INTO `life_and_death` VALUES (13, '小王', '男', 100, '2020-05-01', '2025-6-30', '已故', '2025-06-30 09:35:34', '2025-06-30 10:09:56');
INSERT INTO `life_and_death` VALUES (15, '小红', '男', 99, '2020-05-01', '', '在世', '2025-06-30 09:46:33', '2025-06-30 09:46:33');
INSERT INTO `life_and_death` VALUES (16, '小李', '男', 100, '2020-03-01', '', '在世', '2025-06-30 09:55:30', '2025-06-30 09:55:30');
INSERT INTO `life_and_death` VALUES (17, '小瘪三', '女', 1, '2000-01-06', '2020-01-06', '已故', '2025-06-30 10:10:48', '2025-06-30 10:10:48');
INSERT INTO `life_and_death` VALUES (18, '小二', '男', 12, '2020-05-01', '', '在世', '2025-06-30 10:36:01', '2025-06-30 10:36:01');
INSERT INTO `life_and_death` VALUES (19, '纱雾', '女', 100, '2002-05-01', '', '在世', '2025-06-30 10:40:07', '2025-06-30 10:40:07');
INSERT INTO `life_and_death` VALUES (21, '小三', '男', 1, '2020-03-31', '', '在世', '2025-06-30 11:06:57', '2025-06-30 11:11:31');
INSERT INTO `life_and_death` VALUES (22, '小舞', '女', 1, '1000-01-01', '', '在世', '2025-06-30 11:13:13', '2025-06-30 11:13:13');

SET FOREIGN_KEY_CHECKS = 1;
