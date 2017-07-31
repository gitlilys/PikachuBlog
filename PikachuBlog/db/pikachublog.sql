/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pikachublog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-01 04:26:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog` (
  `blog_id` varchar(255) NOT NULL,
  `blog_user` varchar(255) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_content` longtext,
  `blog_createtime` datetime DEFAULT NULL,
  `blog_enable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES ('0902b626-1c0c-484b-9bb3-ba1cad638b28', '1745329286@qq.com', '刘斌伟', '<p>大家好，我是刘斌伟，我很帅！</p>\r\n', '2017-07-31 11:32:46', '1');
INSERT INTO `tb_blog` VALUES ('166410f8-5aa6-418d-ace9-f014416fa780', '1745329286@qq.com', '唐诗-静夜思', '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;静夜思</h1>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 李白</p>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 窗前明月光，</h2>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;疑是地上霜。</h2>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 举头望明月，</h2>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;低头思故乡。</h2>\r\n', '2017-07-31 16:09:55', '1');
INSERT INTO `tb_blog` VALUES ('76b93481-86be-4569-845e-663b21be5655', '1745329286@qq.com', '小笑话', '<p>教大家一个脸显白的方法：把脖子晒黑！</p>\r\n', '2017-07-31 16:07:54', '1');
INSERT INTO `tb_blog` VALUES ('9e505fab-a5e5-4e55-8579-828f9db89457', '1745329286@qq.com', '宋词', '<h1>江城子&middot;乙卯正月二十日夜记梦</h1>\r\n\r\n<p><a href=\"http://hanyu.baidu.com/s?wd=%E8%8B%8F%E8%BD%BC\">【作者】苏轼&nbsp;</a>【朝代】宋</p>\r\n\r\n<p>译文对照</p>\r\n\r\n<p>十年生死两茫茫。&nbsp;不思量。&nbsp;自难忘。&nbsp;千里孤坟，&nbsp;无处话凄凉。&nbsp;纵使相逢应不识，&nbsp;尘满面，&nbsp;鬓如霜。</p>\r\n\r\n<p>夜来幽梦忽还乡。&nbsp;小轩窗。&nbsp;正梳妆。&nbsp;相顾无言，&nbsp;惟有泪千行。&nbsp;料得年年肠断处，&nbsp;明月夜，&nbsp;短松冈。</p>\r\n', '2017-07-31 16:30:56', '1');
INSERT INTO `tb_blog` VALUES ('aea80f50-6f03-474b-809e-ff61ce2d95c5', '1745329286@qq.com', 'lalala', '<p>lalalala</p>\r\n', '2017-08-01 04:25:52', '1');
INSERT INTO `tb_blog` VALUES ('d01ce21c-7185-462c-bdf6-6edda1337608', '1745329286@qq.com', '测试', '<p>123！</p>\r\n', '2017-07-31 16:29:54', '0');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `comment_id` varchar(255) NOT NULL,
  `comment_paperid` varchar(255) DEFAULT NULL,
  `comment_user` varchar(255) DEFAULT NULL,
  `comment_content` text,
  `comment_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('01178a6f-eaac-499f-a6ee-b7496319c800', '0902b626-1c0c-484b-9bb3-ba1cad638b28', null, '瓜皮', null);
INSERT INTO `tb_comment` VALUES ('061e3f85-2c46-4746-8441-56f9dd53d55f', '', 'user', '哈哈哈！', null);
INSERT INTO `tb_comment` VALUES ('06459533-5e30-44d1-b998-61912ec8086d', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '666', null);
INSERT INTO `tb_comment` VALUES ('06a2b215-2098-4002-91d0-b3e897c97670', '', '1745329286@qq.com', '666', null);
INSERT INTO `tb_comment` VALUES ('0af5ad34-9740-4a4d-ae65-8d517ff1aac1', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '666', null);
INSERT INTO `tb_comment` VALUES ('1053444c-aab8-435d-8514-ad1af45dc45f', '', '匿名', 'dd', null);
INSERT INTO `tb_comment` VALUES ('16815f8d-1971-4ed8-a3fc-0f9996d899cd', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '666', null);
INSERT INTO `tb_comment` VALUES ('1741c6e4-f9a6-4ac1-af67-ad28a368eb06', '72b99743-b4b6-454f-87ea-055582b86134', null, '', null);
INSERT INTO `tb_comment` VALUES ('17bb5fb0-044f-4a27-865c-00e03182743c', 'ddbba5b9-0371-4a4c-aeb6-a5b9d3eceb94', null, '666', null);
INSERT INTO `tb_comment` VALUES ('19d09f51-0d0b-4b58-ba90-f769fb8c86f1', '0902b626-1c0c-484b-9bb3-ba1cad638b28', null, '哈哈哈哈', null);
INSERT INTO `tb_comment` VALUES ('2aa6da44-9ab5-4336-b777-280bde18f4dd', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '写的不错', null);
INSERT INTO `tb_comment` VALUES ('2d66fefe-89cd-49c5-b213-6b7166237469', 'bb8c1ff5-f6f4-401f-83e6-681a5a8de739', null, '666', null);
INSERT INTO `tb_comment` VALUES ('357754c4-ec0c-4459-84c2-93277fbe1124', '', 'user', '帅气', null);
INSERT INTO `tb_comment` VALUES ('4b2e2094-7430-4f38-8ee9-6af30c5b946b', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, 'hahaha', null);
INSERT INTO `tb_comment` VALUES ('4f68c2c2-acb7-4a73-861c-4a06e5b506a9', '', 'user', 'fff', null);
INSERT INTO `tb_comment` VALUES ('568a186b-4990-4eaf-8745-9cd7bc81f125', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, 'jjj', null);
INSERT INTO `tb_comment` VALUES ('5815889c-f347-47e4-a125-a47a4200d174', '0902b626-1c0c-484b-9bb3-ba1cad638b28', null, '12', null);
INSERT INTO `tb_comment` VALUES ('5cac7d68-7145-4c73-a190-bff446dda645', 'ddbba5b9-0371-4a4c-aeb6-a5b9d3eceb94', null, '666', null);
INSERT INTO `tb_comment` VALUES ('68772f16-34cf-4a5e-9b30-104fc6ddc128', '', 'user', '', null);
INSERT INTO `tb_comment` VALUES ('6bfd61df-519b-4799-8546-598a4934abdb', '0902b626-1c0c-484b-9bb3-ba1cad638b28', 'user', '12', null);
INSERT INTO `tb_comment` VALUES ('71992185-5ace-4572-aff1-67cc2a695553', 'bb8c1ff5-f6f4-401f-83e6-681a5a8de739', null, '555', null);
INSERT INTO `tb_comment` VALUES ('7e06c647-8103-46e2-8122-05470e7bef78', '', '匿名', '啦啦', null);
INSERT INTO `tb_comment` VALUES ('840e2f54-b3c5-41ca-876c-859548b52f7b', '0902b626-1c0c-484b-9bb3-ba1cad638b28', null, '12', null);
INSERT INTO `tb_comment` VALUES ('8c034fa3-68bf-4a9e-b97a-058532821bc0', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '999', null);
INSERT INTO `tb_comment` VALUES ('920d5b60-b426-420e-9b71-58599d555ef5', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '555', null);
INSERT INTO `tb_comment` VALUES ('9248d336-160f-44d3-9768-9bbde5ff6a0f', 'f73911dc-5827-44b5-97bc-82bd08455441', null, '666', null);
INSERT INTO `tb_comment` VALUES ('9744d226-056e-4e05-876c-9345f6cd25b9', '', '匿名', '啦啦', null);
INSERT INTO `tb_comment` VALUES ('9fb1d198-9957-488a-93bc-1f3d156a0276', 'bb8c1ff5-f6f4-401f-83e6-681a5a8de739', null, '共和国换个换个换个', null);
INSERT INTO `tb_comment` VALUES ('aec307cc-ca8e-4401-a386-0bd3a40ab79b', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '666', null);
INSERT INTO `tb_comment` VALUES ('d157bc26-141d-4e0b-ae7f-f0efb8dd23b7', 'bb8c1ff5-f6f4-401f-83e6-681a5a8de739', null, '好厉害', null);
INSERT INTO `tb_comment` VALUES ('dd616014-4ec5-41b1-a767-c06375e0a0c3', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '666', null);
INSERT INTO `tb_comment` VALUES ('e0bd0580-8e1b-4377-986c-ae3e2bc26bbd', '11b6e382-9d1b-45b4-996f-5a5569b357b7', null, '777\r\n', null);
INSERT INTO `tb_comment` VALUES ('e2e233db-c414-42b2-b44e-e655ffc0abdb', '0902b626-1c0c-484b-9bb3-ba1cad638b28', 'user', 'gp', null);
INSERT INTO `tb_comment` VALUES ('ef5d7977-fe89-419b-bdfc-db794545a0db', 'ddbba5b9-0371-4a4c-aeb6-a5b9d3eceb94', null, '444\r\n', null);
INSERT INTO `tb_comment` VALUES ('f01cac14-b7f4-43d0-afcb-e0095325a7ad', '198d1c7f-1719-4037-992d-c8598e4c3bf2', null, '666', null);
INSERT INTO `tb_comment` VALUES ('f028cd89-1ad5-4b19-8bd1-1ec55816184d', '0902b626-1c0c-484b-9bb3-ba1cad638b28', 'user', '111', null);
INSERT INTO `tb_comment` VALUES ('fb68184d-af12-486a-82eb-abdbed8bee4d', '11b6e382-9d1b-45b4-996f-5a5569b357b7', null, '瓜皮', null);

-- ----------------------------
-- Table structure for tb_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file` (
  `file_id` varchar(255) NOT NULL,
  `file_user` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_createtime` datetime DEFAULT NULL,
  `file_enable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_file
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL,
  `role_authority` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_role` tinyint(4) DEFAULT NULL,
  `user_cretetime` datetime DEFAULT NULL,
  `user_enable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('a592f9a6-32e7-4c45-b8fe-b18be5d0722d', 'gitlily@outlook.com', '9108eb7fb9f15d990711dc07ea7f2a7e26c4847d', '0', null, '1');
INSERT INTO `tb_user` VALUES ('d29b7a8c-d497-4570-980a-ee33c7eb93dd', '1745329286@qq.com', '711a2b5c7203b902874e06f90b26eed2f82dd056', '1', null, '1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('9', '2', '121');
INSERT INTO `test` VALUES ('10', null, null);
INSERT INTO `test` VALUES ('11', '12', '12');
