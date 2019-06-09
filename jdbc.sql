/*
 Navicat Premium Data Transfer

 Source Server         : lin
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : jdbc

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 09/06/2019 21:23:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gradeID` int(4) NOT NULL COMMENT '年级编号',
  `gradeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '年级名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `studentNo` int(4) NOT NULL COMMENT '学号',
  `subjectNo` int(4) NOT NULL COMMENT '课程编号',
  `examDate` datetime(0) NOT NULL COMMENT '考试日期',
  `studentResult` int(4) NOT NULL COMMENT '考试成绩'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `loginPwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `studentName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学生姓名',
  `sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `gradeId` int(4) UNSIGNED NULL DEFAULT NULL COMMENT '年级编号',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `bornDate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出生时间',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮件账号',
  `identityCard` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`studentNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30014 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (10000, '123', '郭靖', '男', 1, '13645667783', '天津市河西区', '1990-09-08 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10001, '123', '李文才', '男', 1, '13645667890', '地址不详', '1994-04-12 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10002, '123', '李斯文', '男', 1, '13645556793', '河南洛阳', '1993-07-23 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10003, '123', '张萍', '女', 1, '13642345112', '地址不详', '1995-06-10 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10004, '123', '韩秋洁', '女', 1, '13812344566', '北京市海淀区', '1995-07-15 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10005, '123', '张秋丽', '女', 1, '13567893246', '北京市东城区', '1994-01-17 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10006, '123', '肖梅', '女', 1, '13563456721', '河北省石家庄市', '1991-02-17 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10007, '123', '秦洋', '男', 1, '13056434411', '上海市卢湾区', '1992-04-18 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10008, '123', '何睛睛', '女', 1, '13053445221', '广州市天河区', '1997-07-23 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10009, 'lin', '123', '男', 1, '12332112334', 'nanchang', '1991-02-17 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (10019, 'lin', '123', '男', 1, '12332112334', 'nanchang', '1991-02-17 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (20000, '123', '王宝宝', '男', 2, '15076552323', '地址不详', '1996-06-05 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (20010, '123', '何小华', '女', 2, '13318877954', '地址不详', '1995-09-10 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (30011, '123', '陈志强', '男', 3, '13689965430', '地址不详', '1994-09-27 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (30012, '123', '李露露', '女', 3, '13685678854', '地址不详', '1992-09-27 00:00:00', NULL, NULL);
INSERT INTO `student` VALUES (30013, '', 'hhhh', '男', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `subjectNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `subjectName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `classHour` int(4) NULL DEFAULT NULL COMMENT '学时',
  `gradeID` int(4) NULL DEFAULT NULL COMMENT '年级编号',
  PRIMARY KEY (`subjectNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, 'Logic Java', 220, 1);
INSERT INTO `subject` VALUES (2, 'HTML', 160, 1);
INSERT INTO `subject` VALUES (3, 'Java OOP', 230, 2);

SET FOREIGN_KEY_CHECKS = 1;
