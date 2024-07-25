/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : hrm_management

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2017-04-13 16:49:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `emp_address`
-- ----------------------------
DROP TABLE IF EXISTS `emp_address`;
CREATE TABLE `emp_address` (
  `emp_id` varchar(255) NOT NULL,
  `id_address` varchar(255) NOT NULL,
  `house_number` varchar(25) NOT NULL,
  `street` varchar(255) default NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(25) NOT NULL,
  PRIMARY KEY  (`id_address`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_address
-- ----------------------------
INSERT INTO `emp_address` VALUES ('3', 'add1', 's23', 'xyz', 'delhi', 'new delhi', 'india', '110067');
INSERT INTO `emp_address` VALUES ('1', 'add2', 'd34', 'xyz', 'delhi', 'new delhi', 'india', '110023');
INSERT INTO `emp_address` VALUES ('10', 'ADD2193', 'h67', 'xyz', 'chennai', 'tamil nadu', 'India', '110011');
INSERT INTO `emp_address` VALUES ('7', 'add22', 'j89', 'dwarka', 'delhi', 'new', 'india', '119922');
INSERT INTO `emp_address` VALUES ('13', 'ADD2308', 's34', 'MG road', 'chennai', 'Tamil Nadu', 'India', '882277');
INSERT INTO `emp_address` VALUES ('12', 'ADD2326', 'h56', 'MG road', 'chennai', 'Tamil Nadu', 'India', '4243');
INSERT INTO `emp_address` VALUES ('14', 'ADD2385', 'uib', 'correspondence', 'biu', 'b', 'uyb', '3435');
INSERT INTO `emp_address` VALUES ('2', 'add3', 'd34', 'xyz', 'delhi', 'new delhi', 'india', '110023');
INSERT INTO `emp_address` VALUES ('6', 'ADD305', 'S-12', 'Marine', 'Mumbai', 'Maharashtra', 'India', '210023');
INSERT INTO `emp_address` VALUES ('18', 'ADD4101', 'tygu', 'b', 'vty', 'vyuv', 'tyv', '66');
INSERT INTO `emp_address` VALUES ('20', 'ADD4115', 'yuv', 'f', 'ct', 'giu', 'fdgdgfff', '53545');
INSERT INTO `emp_address` VALUES ('15', 'ADD4130', 'hjb', 'fdgdfg', 'ftr', 'cr', 'c', '4567787');
INSERT INTO `emp_address` VALUES ('5', 'add5', 'a12', 'xyz', 'delhi', 'new delhi', 'india', '110056');

-- ----------------------------
-- Table structure for `emp_apar_details`
-- ----------------------------
DROP TABLE IF EXISTS `emp_apar_details`;
CREATE TABLE `emp_apar_details` (
  `id_company` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `payroll_id` varchar(255) default NULL,
  `position` text,
  `department` text,
  `company_email` text,
  `salary` varchar(25) default NULL,
  `status` varchar(50) default NULL,
  `reporting_manager` varchar(255) default NULL,
  `emp_type` varchar(255) default 'Full Time',
  PRIMARY KEY  (`id_company`),
  KEY `FK_COMPANY` (`emp_id`),
  CONSTRAINT `FK_COMPANY` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_apar_details
-- ----------------------------
INSERT INTO `emp_apar_details` VALUES ('c101', '2', 'pay565', 'developer', 'it', 's@apar.com', '45949', 'active', 'kara', 'Administrator');
INSERT INTO `emp_apar_details` VALUES ('c105', '1', 'pay57', 'tester', 'it', 'a@apar.com', '33909', 'active', 'Kavya', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('c115', '3', 'pay232', 'tester', 'it', 'd@apar.com', '93899', 'active', 'kara', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C1677', '5', 'pay87', 'developer', 'java', 'smirit@apar.com', '87878', 'active', 'Kavya', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C1680', '7', 'pay78', 'Senior Developer', 'JAVA', 'sakshidew20@gmail.com', '98989', 'active', 'Kavya', 'Administrator');
INSERT INTO `emp_apar_details` VALUES ('C2133', '10', null, null, null, 'sameer@apar.com', null, null, null, 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C2304', '13', 'pay112', 'delevoper', 'JAVA', 'ritvik@apar.com', '78878', 'active', 'kara', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C2343', '12', 'pay67', 'HR', 'HR', 'sanjana@apar.com', '8979', 'active', 'kara', 'Administrator');
INSERT INTO `emp_apar_details` VALUES ('C2418', '6', 'null', 'manager', 'null', 'mira@apar.com', '56453', 'null', 'null', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C2448', '14', 'null', 'senior', 'java', 'test@apar.com', '54646', 'active', 'Kavya', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4097', '15', 'pay455', 'developer', 'java', 'test15@apar.com', '87888', 'inactive', 'kara', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4098', '9', 'pay879', 'analyst', 'testing', 'ivy@apar.com', '98989', 'active', 'kara', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4145', '23', null, null, null, 'test@dffdv.rfv', null, null, null, 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4147', '20', 'null', 'null', 'null', 'test@apar.com', '54765', 'null', 'null', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4151', '18', 'null', 'null', 'null', 'test@apar.com', '878', 'null', 'null', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4161', '17', 'null', 'null', 'it', 'test@apar.com', '43546', 'active', 'kara', 'Full Time');
INSERT INTO `emp_apar_details` VALUES ('C4164', '16', 'pay66', 'null', 'null', 'test@apar.com', '87878', 'active', 'null', 'Full Time');

-- ----------------------------
-- Table structure for `emp_employment_details`
-- ----------------------------
DROP TABLE IF EXISTS `emp_employment_details`;
CREATE TABLE `emp_employment_details` (
  `id_employment` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `date_of_appointment` varchar(255) default NULL,
  `confirmation_date` varchar(255) default NULL,
  `probation_period` int(11) default NULL,
  `previous_org_resignation_date` varchar(255) default NULL,
  `previous_org_branch` varchar(255) default NULL,
  `previous_org_designation` varchar(255) default NULL,
  `previous_org_department` varchar(255) default NULL,
  `grade` text,
  PRIMARY KEY  (`id_employment`),
  KEY `FK_EMPLOYMENT` (`emp_id`),
  CONSTRAINT `FK_EMPLOYMENT` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_employment_details
-- ----------------------------
INSERT INTO `emp_employment_details` VALUES ('C2182', '10', '2017/04/05', '2017/04/05', '4', '2017/04/05', '2017/04/05', '2017/04/05', 'IT', 'A');
INSERT INTO `emp_employment_details` VALUES ('C2452', '16', '2017/04/06', null, null, null, null, null, null, null);
INSERT INTO `emp_employment_details` VALUES ('C2454', '17', '2017/04/06', null, null, null, null, null, null, null);
INSERT INTO `emp_employment_details` VALUES ('C4146', '23', '2017/04/09', null, null, null, null, null, null, null);
INSERT INTO `emp_employment_details` VALUES ('e2', '1', '2012-02-17', '2012-02-17', '3', '2012-12-12', 'gurgoan', 'developer', 'java', 'A');
INSERT INTO `emp_employment_details` VALUES ('E2311', '13', '2017-04-06', '2017-04-08', '4', '2017-04-22', 'it', 'it', 'it', 'A');
INSERT INTO `emp_employment_details` VALUES ('E2329', '12', '2017-04-02', '2017-04-06', '3', '2017-04-15', 'it', 'it', 'it', 'c');
INSERT INTO `emp_employment_details` VALUES ('E2354', '9', '2017-04-08', null, null, null, null, null, null, null);
INSERT INTO `emp_employment_details` VALUES ('E2388', '14', '2017-04-08', '2017-04-08', '3', '2017-04-01', 'yt', 'it', 'tyv', 'A');
INSERT INTO `emp_employment_details` VALUES ('E308', '6', '2017-03-02', '2017-03-16', '3', '2017-03-17', 'delhi', 'Junior', 'IT', 'A');
INSERT INTO `emp_employment_details` VALUES ('e32', '2', '2012-02-17', '2012-02-17', '5', '2012-12-12', 'noida', 'tester', 'java', 'B');
INSERT INTO `emp_employment_details` VALUES ('E4104', '18', '2017-04-15', '2017-04-01', '3', null, 'dfgdfg', 'vb', 'khv', 'g');
INSERT INTO `emp_employment_details` VALUES ('E4118', '20', '2017-04-15', '2017-04-08', '6', '2017-04-02', 'bhj', 'bjh', 'bj', 'h');
INSERT INTO `emp_employment_details` VALUES ('E4133', '15', '2017-03-31', '2017-04-07', '3', null, 'ggdfg', 'cdfgdg', 'hgc', 'c');
INSERT INTO `emp_employment_details` VALUES ('e5', '3', '2012-02-17', '2012-02-17', '6', '2012-12-12', 'noida', 'developer', 'java', 'A');
INSERT INTO `emp_employment_details` VALUES ('e56', '5', '2014-01-07', '2014-01-08', '6', '2013-12-06', 'gurgoan', 'tester', 'testing', 'A');
INSERT INTO `emp_employment_details` VALUES ('e89', '7', '2014-01-07', '2014-01-08', '4', '2013-12-06', 'jaipur', 'designer', 'designing', 'B');

-- ----------------------------
-- Table structure for `emp_family_details`
-- ----------------------------
DROP TABLE IF EXISTS `emp_family_details`;
CREATE TABLE `emp_family_details` (
  `id_family` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_family`),
  KEY `FK_FAMILY` (`emp_id`),
  CONSTRAINT `FK_FAMILY` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_family_details
-- ----------------------------
INSERT INTO `emp_family_details` VALUES ('F2199', '10', 'prakash', 'mumbai', 'brother', '2017-04-29');
INSERT INTO `emp_family_details` VALUES ('F2320', '13', 'pia kumar', 'mumbai', 'sister', '2017-04-15');
INSERT INTO `emp_family_details` VALUES ('F2338', '12', 'test1', 'test1', 'test1', '2017-04-09');
INSERT INTO `emp_family_details` VALUES ('F2339', '12', 'test2', 'test2', 'test2', '2017-04-14');
INSERT INTO `emp_family_details` VALUES ('F2391', '14', 'ria', 'v', 'ytv', '1970-01-01');
INSERT INTO `emp_family_details` VALUES ('F4113', '18', 'gyu', 'v', 'yuv', '2017-04-06');
INSERT INTO `emp_family_details` VALUES ('F4121', '20', 'bjk', 'bkj', 'b', '2017-04-11');
INSERT INTO `emp_family_details` VALUES ('F4136', '15', 'gh', 'vghv', 'vhg', '2017-04-06');
INSERT INTO `emp_family_details` VALUES ('fa34', '2', 'damon', 'dubai', 'brother', '1990-12-12');
INSERT INTO `emp_family_details` VALUES ('fa4', '2', 'mira', 'janakpuri', 'sister', '2015-12-12');
INSERT INTO `emp_family_details` VALUES ('fa5', '1', 'krsna', 'up', 'father', '1987-09-23');
INSERT INTO `emp_family_details` VALUES ('fa56', '5', 'baldev', 'mumbai', 'husband', '1987-09-08');

-- ----------------------------
-- Table structure for `emp_financial_details`
-- ----------------------------
DROP TABLE IF EXISTS `emp_financial_details`;
CREATE TABLE `emp_financial_details` (
  `id_finance` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_branch` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_finance`),
  KEY `FK_FINANCE` (`emp_id`),
  CONSTRAINT `FK_FINANCE` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_financial_details
-- ----------------------------
INSERT INTO `emp_financial_details` VALUES ('F2192', '7', 'Karnataka Bank', 'delhi', '387482298437', 'KAKA374892');
INSERT INTO `emp_financial_details` VALUES ('F2197', '10', 'ICICI', 'noida', '4546547573234', 'ICICI89342');
INSERT INTO `emp_financial_details` VALUES ('F2312', '13', 'PNB', 'Punjab', '876898', 'pnb876832434');
INSERT INTO `emp_financial_details` VALUES ('F2336', '12', 'PNB', 'Punjab', '76576878', 'pnb876832434');
INSERT INTO `emp_financial_details` VALUES ('F2389', '14', 'icici', 'vt', 'yv', 'tyv');
INSERT INTO `emp_financial_details` VALUES ('F309', '6', 'ICICI', 'Noida', '46545675', 'ICICI928323');
INSERT INTO `emp_financial_details` VALUES ('f34', '1', 'icici', 'subhash nagar', '3420084343', 'icici35252');
INSERT INTO `emp_financial_details` VALUES ('f4', '2', 'axis', 'tilak nagar', '3289429343', 'axis832432');
INSERT INTO `emp_financial_details` VALUES ('F4105', '18', 'vgh', 'vh', '46546', 'v');
INSERT INTO `emp_financial_details` VALUES ('F4119', '20', 'hb', 'hjb', '43546', 'jh');
INSERT INTO `emp_financial_details` VALUES ('F4134', '15', 'gh', 'cghc', '435464', 'hg');
INSERT INTO `emp_financial_details` VALUES ('F78', '3', 'PNB', 'Noida', '7576879798', 'PNB7658768');

-- ----------------------------
-- Table structure for `emp_id_proof`
-- ----------------------------
DROP TABLE IF EXISTS `emp_id_proof`;
CREATE TABLE `emp_id_proof` (
  `proof_id` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `proof_type` varchar(255) NOT NULL,
  `expiry_date` varchar(255) default NULL,
  `proof_number` varchar(255) NOT NULL,
  `file_link` blob,
  PRIMARY KEY  (`proof_id`),
  KEY `FK_EMP_ID` (`emp_id`),
  CONSTRAINT `FK_EMP_ID` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_id_proof
-- ----------------------------
INSERT INTO `emp_id_proof` VALUES ('p1', '1', 'passport', '2012-12-20', '343D665', 0x6E756C6C20666F72206E6F77);
INSERT INTO `emp_id_proof` VALUES ('p10', '1', 'adhar card', null, '332465', 0x6E756C6C20666F72206E6F77);
INSERT INTO `emp_id_proof` VALUES ('p2', '2', 'adhar card', null, '343D665', 0x6E756C6C20666F72206E6F77);
INSERT INTO `emp_id_proof` VALUES ('P2195', '10', 'Passport', '2017-04-01', '3345345353', 0x323031362D30312D31362E6A7067);
INSERT INTO `emp_id_proof` VALUES ('P2328', '12', 'passport', '2017-03-30', '4354654645', 0x323031362D30312D31362E6A7067);
INSERT INTO `emp_id_proof` VALUES ('P2387', '14', 'yv', '2017-03-09', 'ty', 0x323031362D30312D31362E6A7067);
INSERT INTO `emp_id_proof` VALUES ('P307', '6', 'Adhar', '2017-03-16', '34534543', 0x323031362D30312D31362E6A7067);
INSERT INTO `emp_id_proof` VALUES ('P4103', '18', 'yu', 'vy', 'hj', 0x323031362D30312D3136202831292E6A7067);
INSERT INTO `emp_id_proof` VALUES ('P4117', '20', 'ty', 'bj', '54657', 0x323031362D30312D31362E6A7067);
INSERT INTO `emp_id_proof` VALUES ('P4132', '15', 'c', 'c', 'hc', 0x323031362D30312D31362E6A7067);
INSERT INTO `emp_id_proof` VALUES ('p6', '3', 'passport', '2012-12-20', '343D665', 0x6E756C6C20666F72206E6F77);
INSERT INTO `emp_id_proof` VALUES ('P65', '13', 'Adhar card', null, '7878978', null);

-- ----------------------------
-- Table structure for `emp_leave_details`
-- ----------------------------
DROP TABLE IF EXISTS `emp_leave_details`;
CREATE TABLE `emp_leave_details` (
  `id_leaves` varchar(255) NOT NULL,
  `earned` int(11) default NULL,
  `sick` int(11) default NULL,
  `casual` int(11) default NULL,
  `emp_id` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_leaves`),
  KEY `fk_id` (`emp_id`),
  CONSTRAINT `fk_id` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_leave_details
-- ----------------------------
INSERT INTO `emp_leave_details` VALUES ('l12', '7', '9', '5', '1');
INSERT INTO `emp_leave_details` VALUES ('l15', '7', '7', '5', '7');
INSERT INTO `emp_leave_details` VALUES ('L2201', '15', '10', '5', '10');
INSERT INTO `emp_leave_details` VALUES ('L2221', '7', '10', '5', '6');
INSERT INTO `emp_leave_details` VALUES ('L2322', '15', '10', '5', '13');
INSERT INTO `emp_leave_details` VALUES ('L2342', '14', '10', '5', '12');
INSERT INTO `emp_leave_details` VALUES ('L2393', '15', '10', '5', '14');
INSERT INTO `emp_leave_details` VALUES ('L4129', '15', '10', '5', '20');
INSERT INTO `emp_leave_details` VALUES ('L4144', '15', '10', '5', '15');
INSERT INTO `emp_leave_details` VALUES ('l45', '12', '10', '5', '9');
INSERT INTO `emp_leave_details` VALUES ('l5', '0', '0', '0', '5');
INSERT INTO `emp_leave_details` VALUES ('l56', '15', '10', '5', '2');
INSERT INTO `emp_leave_details` VALUES ('l7', '7', '10', '5', '3');

-- ----------------------------
-- Table structure for `emp_leave_request`
-- ----------------------------
DROP TABLE IF EXISTS `emp_leave_request`;
CREATE TABLE `emp_leave_request` (
  `id_request` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `project_id` varchar(255) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL default 'pending',
  `reject_reason` varchar(255) default NULL,
  PRIMARY KEY  (`id_request`),
  KEY `fk_empid` (`emp_id`),
  CONSTRAINT `fk_empid` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_leave_request
-- ----------------------------
INSERT INTO `emp_leave_request` VALUES ('l1', '3', 'T16123-BOT', 'Sick Leave', '2017-03-20', '2017-03-20', 'dental problems', 'approved', null);
INSERT INTO `emp_leave_request` VALUES ('l36', '1', 'JAVA789', 'Sick Leave', '2017-03-17', '2017-03-17', 'fever', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('l37', '1', 'JAVA789', 'Sick Leave', '2017-03-17', '2017-03-17', 'fever', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('l4', '2', 'JAVA78', 'Sick Leave', '2016-12-12', '2016-12-15', 'fever', 'approved', null);
INSERT INTO `emp_leave_request` VALUES ('R1683', '1', 'BOT-78', 'Sick Leave', '2016-08-30', '2016-08-31', 'sick                  ', 'Rejected', 'work load');
INSERT INTO `emp_leave_request` VALUES ('r2', '2', 'JAVA78', 'Casual Leave', '2017-01-12', '2017-01-13', 'holiday', 'rejected', 'work load');
INSERT INTO `emp_leave_request` VALUES ('R2113', '7', 'APAR-78', 'Casual Leave', '2017-03-31', '2017-03-31', 'home errands', 'Rejected', 'deadlines');
INSERT INTO `emp_leave_request` VALUES ('R2115', '9', 'BOT-34', 'Sick Leave', '2017-03-29', '2017-03-30', 'out of town', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('R2116', '9', 'BOT-89', 'Casual Leave', '2017-02-03', '2017-02-03', 'free day', 'Rejected', 'deadlines');
INSERT INTO `emp_leave_request` VALUES ('R2117', '9', 'JAVA-789', 'Casual Leave', '2017-04-08', '2017-04-09', 'over loaded', 'Rejected', 'deadlines');
INSERT INTO `emp_leave_request` VALUES ('R2118', '5', 'CRM-789', 'Sick Leave', '2017-02-03', '2017-02-03', 'fever', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('R4183', '9', 'CRM-565', 'Earned Leave', '2017-04-16', '2017-04-12', 'college exam', 'pending', null);
INSERT INTO `emp_leave_request` VALUES ('R4193', '7', 'dsfdsf', 'Earned Leave', '2012-12-12', '2012-01-12', 'cvbcxbc', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('R4194', '7', 'gdfg', 'Casual Leave', '2012-12-12', '2012-12-12', 'dffgg', 'pending', null);
INSERT INTO `emp_leave_request` VALUES ('R4195', '10', 'sdfdgaer', 'Earned Leave', '2012-12-12', '2012-02-12', 'fvdfsdffd', 'pending', null);
INSERT INTO `emp_leave_request` VALUES ('R4197', '9', 'dfgdfg', 'Earned Leave', '2017-04-06', '2017-03-30', 'fgdfgaeg', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('R4198', '12', 'gfhgh', 'Sick Leave', '2017-04-08', '2017-04-20', 'fggfh', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('R4230', '9', 'bsjfbsdjf', 'Casual Leave', '2017-04-15', '2017-04-18', 'test', 'approved', 'nil');
INSERT INTO `emp_leave_request` VALUES ('R786', '6', 'CRM-98', 'Sick Leave', '2017-03-29', '2017-03-29', 'cold', 'pending', null);
INSERT INTO `emp_leave_request` VALUES ('R788', '6', 'NET-8', 'Earn Leave', '2017-03-30', '2017-03-30', 'over due', 'pending', null);

-- ----------------------------
-- Table structure for `emp_login`
-- ----------------------------
DROP TABLE IF EXISTS `emp_login`;
CREATE TABLE `emp_login` (
  `sno` int(11) NOT NULL auto_increment,
  `login_id` varchar(255) default NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`sno`),
  KEY `empid_fk` (`login_id`),
  CONSTRAINT `empid_fk` FOREIGN KEY (`login_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_login
-- ----------------------------
INSERT INTO `emp_login` VALUES ('100', '1', 'test');
INSERT INTO `emp_login` VALUES ('101', '2', 'admin');
INSERT INTO `emp_login` VALUES ('102', '7', 'admin');
INSERT INTO `emp_login` VALUES ('107', '9', 'test');
INSERT INTO `emp_login` VALUES ('109', '6', 'test');
INSERT INTO `emp_login` VALUES ('111', '3', 'test');
INSERT INTO `emp_login` VALUES ('112', '5', 'test');
INSERT INTO `emp_login` VALUES ('118', '10', 'test');
INSERT INTO `emp_login` VALUES ('119', '12', 'test');
INSERT INTO `emp_login` VALUES ('121', '13', 'test');
INSERT INTO `emp_login` VALUES ('122', '14', 'test');
INSERT INTO `emp_login` VALUES ('123', '15', 'test');
INSERT INTO `emp_login` VALUES ('124', '16', 'test');
INSERT INTO `emp_login` VALUES ('125', '17', 'test');
INSERT INTO `emp_login` VALUES ('126', '18', 'test');
INSERT INTO `emp_login` VALUES ('127', '20', 'test');
INSERT INTO `emp_login` VALUES ('128', '23', 'test');

-- ----------------------------
-- Table structure for `emp_nominee`
-- ----------------------------
DROP TABLE IF EXISTS `emp_nominee`;
CREATE TABLE `emp_nominee` (
  `id_nominee` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `share_percent` float NOT NULL,
  PRIMARY KEY  (`id_nominee`),
  KEY `FK_NOMINEE` (`emp_id`),
  CONSTRAINT `FK_NOMINEE` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_nominee
-- ----------------------------
INSERT INTO `emp_nominee` VALUES ('n2', '3', 'ashima', 'gurgoan', 'sister', '1990-02-02', '4.5');
INSERT INTO `emp_nominee` VALUES ('N2200', '10', 'prakash', 'banglore', 'brother', '2017-04-10', '66');
INSERT INTO `emp_nominee` VALUES ('N2321', '13', 'ranvir', 'banglore', 'partner', '2017-04-18', '55');
INSERT INTO `emp_nominee` VALUES ('N2340', '12', 'nom1', 'nom1', 'nom1', '2017-04-12', '66');
INSERT INTO `emp_nominee` VALUES ('N2341', '12', 'nom2', 'nom2', 'nom2', '2017-04-05', '45');
INSERT INTO `emp_nominee` VALUES ('N2392', '14', 'pia', 'vyt', 'tv', '1970-01-01', '56');
INSERT INTO `emp_nominee` VALUES ('n4', '1', 'tuval', 'turkey', 'friend', '1989-05-03', '67');
INSERT INTO `emp_nominee` VALUES ('N4128', '20', '', '', '', '', '56');
INSERT INTO `emp_nominee` VALUES ('N4137', '15', '', '', '', '', '78');
INSERT INTO `emp_nominee` VALUES ('n5', '2', 'sam', 'moti nagar', 'friend', '1990-05-15', '25');

-- ----------------------------
-- Table structure for `emp_personal_details`
-- ----------------------------
DROP TABLE IF EXISTS `emp_personal_details`;
CREATE TABLE `emp_personal_details` (
  `emp_id` varchar(255) NOT NULL,
  `firstname` text,
  `middlename` text,
  `lastname` text,
  `father_name` text,
  `mother_name` text,
  `date_of_birth` date default NULL,
  `gender` text,
  `PAN` varchar(10) default NULL,
  `permanent_address` text,
  `landline` varchar(25) default NULL,
  `mobile` varchar(10) default NULL,
  `personal_email` varchar(30) default NULL,
  `martial_status` varchar(15) default NULL,
  `marriage_date` varchar(255) default NULL,
  `no_of_dependents` int(11) default NULL,
  `spouse_name` varchar(40) default NULL,
  `religion` varchar(25) default NULL,
  `blood_group` varchar(5) default NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_personal_details
-- ----------------------------
INSERT INTO `emp_personal_details` VALUES ('1', 'Hayat', 'murat', 'Sharma', 'arjun', 'mahira', '2012-12-12', 'female', '32432423DD', 'b4-34,dwarka,Delhi,new delhi,india,110023', '34535353', '9898983456', 'hayat@gmail.com', 'married', '2013-02-16', '1', 'murat', 'islamic', 'A+');
INSERT INTO `emp_personal_details` VALUES ('10', 'sameer', null, 'gupta', 'raichand gupta', 'asha gupta', '2017-04-22', 'Male', '4365475', 's567,xyz,chennai,tamil nadu,India,110011', '54463524', '9898989898', 'sameer@yahoo.co.in', 'married', '2017-04-07', '2', 'ria', 'hindu', 'B+');
INSERT INTO `emp_personal_details` VALUES ('12', 'Sanjana', null, 'Garg', 'ram garg', 'sonal garg', '2017-04-01', 'Female', '465644', 'k45,MG road,chennai,Tamil Nadu,India,34343', '324543', '8787878787', 'sanjana@yahoo.co.in', 'married', '2017-04-13', '2', 'Ranveer', 'hindu', 'A-');
INSERT INTO `emp_personal_details` VALUES ('13', 'ritvik', null, 'kumar', 'shashi kumar', 'sheela kumar', '2017-04-15', 'Male', '45464654', 'g67,MG road,banglore,karnataka,India,882277', '343543', '8787598000', 'ritvik.kumar@gmail.com', 'single', null, '2', null, 'hindu', 'B+');
INSERT INTO `emp_personal_details` VALUES ('14', 'varun', 'b', 'singh', 'jn', 'j', '2012-11-30', 'Female', '35465645', 'j67,xyz,ui,ui,bu,435345', '3453535', '345345', 'varun@gmail.com', 'sada', '2017-03-31', '2', 'fsdf', 'tyv', 'O+');
INSERT INTO `emp_personal_details` VALUES ('15', 'dfgdfg', 'vgf', 'cfg', 'c', 'cf', '2017-04-15', 'Male', '46564645gf', 'hv,hv,y,vuybv,hjb,546546', '46546', '5657675776', 'ty@gdf.thtf', 'c', '2017-04-01', '2', 'g', 'yc', 'B+');
INSERT INTO `emp_personal_details` VALUES ('16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `emp_personal_details` VALUES ('17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `emp_personal_details` VALUES ('18', 'hjb', 'hjb', 'hjb', 'j', 'bj', '2017-04-15', 'Female', '4656546fdg', 'kjb,hj,b,jhb,jhv,66', '4634665666', '5465776574', 'sf@kn.df', 'yu', null, '2', 'v', 'uyv', 'A-');
INSERT INTO `emp_personal_details` VALUES ('2', 'aayan', null, 'sharma', 'mayank', 'vandana', '2012-12-12', 'male', '32009423DD', 'z4-34,xyz,noida,UP,india,677653', '75764657', '9999999999', 'aayan@gmail.com', 'single', null, '1', null, 'hindu', 'O+');
INSERT INTO `emp_personal_details` VALUES ('20', 'bh', 'hb', 'hjb', 'i', 'by', '2017-04-01', 'Male', '545645fg45', 'vu,v,uy,vf,crt,4535345', '454554', '4365465555', 'sa@fs.dom', 'tf', '2017-03-31', '3', 'v', 'hj', 'B+');
INSERT INTO `emp_personal_details` VALUES ('23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `emp_personal_details` VALUES ('3', 'myra', null, 'mehra', 'aswin', 'pooja', '2012-12-12', 'female', '32009423DD', 'h5-30,tilak nagar,new delhi,delhi,india,220843', '75764657', '98693070', 'myra@yahoomail.com', 'single', null, '1', null, 'hindu', 'O+');
INSERT INTO `emp_personal_details` VALUES ('5', 'smriti', null, 'dixit', 'justin', 'alex', '2012-12-12', 'female', '32009423DD', 'a2-90,Sector-62,noida,UP,india,35345', '75764657', '98693070', 'smriti@gmail.com', 'single', null, '1', null, 'hindu', 'O-');
INSERT INTO `emp_personal_details` VALUES ('6', 'Kavya', 'null', 'Shukla', 'Ranjit', 'Irene', '1992-11-30', 'Female', '4534534636', 'S-12,Marine,Mumbai,Maharashtra,India,210023', '4646546', '9898676432', 'kavya@gmail.com', 'single', null, '2', 'null', 'hindu', 'B+');
INSERT INTO `emp_personal_details` VALUES ('7', 'kara', null, 'danvers', 'mike', 'seera', '1994-04-30', 'Female', '4575686876', 'r2-45,friends colony,new,delhi,india,454621', '32424233', '9897685434', 'kara@gmail.com', 'single', null, '3', 'null', 'christian', 'A-');
INSERT INTO `emp_personal_details` VALUES ('9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `emp_qualifications`
-- ----------------------------
DROP TABLE IF EXISTS `emp_qualifications`;
CREATE TABLE `emp_qualifications` (
  `id_qualification` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `year_of_passing` int(11) NOT NULL,
  `percentage` float default NULL,
  `grade` text,
  PRIMARY KEY  (`id_qualification`),
  KEY `FK_EMP` (`emp_id`),
  CONSTRAINT `FK_EMP` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_qualifications
-- ----------------------------
INSERT INTO `emp_qualifications` VALUES ('q1', '2', 'btech', 'ipu', '2003', '88.5', null);
INSERT INTO `emp_qualifications` VALUES ('q10', '2', 'mtech', 'ipu', '2004', '89.5', null);
INSERT INTO `emp_qualifications` VALUES ('Q2194', '10', 'MCA', 'IPU', '2009', '88', 'A');
INSERT INTO `emp_qualifications` VALUES ('Q2309', '13', 'MCA', 'ipu', '2008', '88', 'B');
INSERT INTO `emp_qualifications` VALUES ('Q2327', '12', 'MCA', 'ipu', '2008', '88', 'B');
INSERT INTO `emp_qualifications` VALUES ('Q2386', '14', 'vty', 'college', '2001', '55', 'C');
INSERT INTO `emp_qualifications` VALUES ('Q291', '6', 'BTECH', 'IPU', '2009', '67', 'B');
INSERT INTO `emp_qualifications` VALUES ('Q4102', '18', 'v', 'yv', '2009', '45', 'vuy');
INSERT INTO `emp_qualifications` VALUES ('Q4116', '20', 'fdgd', 'uv', '2008', '56', 'b');
INSERT INTO `emp_qualifications` VALUES ('Q4131', '1', 'BTECH', 'IIT', '2004', '86', 'A');

-- ----------------------------
-- Table structure for `emp_role`
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `id_role` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_role
-- ----------------------------
INSERT INTO `emp_role` VALUES ('ROLE1', 'Admin', 'administrator');
INSERT INTO `emp_role` VALUES ('ROLE2', 'Manager', 'Reporting Manager');
INSERT INTO `emp_role` VALUES ('ROLE3', 'Full_Time', 'full time employee');
INSERT INTO `emp_role` VALUES ('ROLE4', 'Part_Time', 'part time employee');
INSERT INTO `emp_role` VALUES ('ROLE5', 'Training', 'training');

-- ----------------------------
-- Table structure for `emp_work_experience`
-- ----------------------------
DROP TABLE IF EXISTS `emp_work_experience`;
CREATE TABLE `emp_work_experience` (
  `id_experience` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY  (`id_experience`),
  KEY `FK_EXPERIENCE` (`emp_id`),
  CONSTRAINT `FK_EXPERIENCE` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of emp_work_experience
-- ----------------------------
INSERT INTO `emp_work_experience` VALUES ('d14', '2', 'amtex', 'gurgoan', 'developer', '2012-12-12', '2012-12-13');
INSERT INTO `emp_work_experience` VALUES ('D2198', '10', 'ORACLE', 'NOIDA', 'ANALYST', '2017-04-14', '2017-04-05');
INSERT INTO `emp_work_experience` VALUES ('D2313', '13', 'oracle', 'noida', 'analyst', '2017-04-01', '2017-04-21');
INSERT INTO `emp_work_experience` VALUES ('D2337', '12', 'tcs', 'noida', 'it', '2017-03-31', '2017-04-06');
INSERT INTO `emp_work_experience` VALUES ('D2390', '14', 'oracle', 'yt', 'vy', '2017-03-31', '2017-03-31');
INSERT INTO `emp_work_experience` VALUES ('D310', '6', 'TCS', 'noida', 'consultant', '2017-03-04', '2017-03-07');
INSERT INTO `emp_work_experience` VALUES ('D325', '6', 'TCS', 'noida', 'consultant', '2017-03-04', '2017-03-07');
INSERT INTO `emp_work_experience` VALUES ('d34', '2', 'info tech', 'gurgoan', 'developer', '2012-12-12', '2012-12-13');
INSERT INTO `emp_work_experience` VALUES ('D340', '6', 'TCS', 'noida', 'consultant', '2017-03-04', '2017-03-07');
INSERT INTO `emp_work_experience` VALUES ('D4112', '18', 'hjv', 'hj', 'vy', '2017-04-16', '2017-04-05');
INSERT INTO `emp_work_experience` VALUES ('D4120', '20', 'bj', 'bj', 'bj', '2017-04-01', '2017-03-30');
INSERT INTO `emp_work_experience` VALUES ('D4135', '15', 'cgh', 'cgh', 'c', '2017-03-31', '2017-03-27');
INSERT INTO `emp_work_experience` VALUES ('d5', '1', 'grapecity', 'gurgoan', 'developer', '2012-12-12', '2012-12-13');

-- ----------------------------
-- Table structure for `events`
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `event_id` varchar(255) NOT NULL,
  `e_name` varchar(255) NOT NULL,
  `venue` varchar(255) default NULL,
  `e_start` date default NULL,
  `e_end` date default NULL,
  `e_desc` varchar(255) default NULL,
  `photo` varchar(255) default NULL,
  PRIMARY KEY  (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('EVENT4225', 'check width', 'check width', '2017-04-23', '2017-04-20', 'check width', 'https://s12.postimg.org/db5bamrq5/image.jpg');
INSERT INTO `events` VALUES ('EVENT4247', 'Apar Holi Party', ' Unit 502', '2017-04-07', '2017-04-14', 'Apar holi party: holi playing at 5pm.Please join.\n                  ', 'https://s11.postimg.org/ju96e6hoz/holi.jpg');
INSERT INTO `events` VALUES ('EVENT790', 'Holi', 'Office', '2017-03-13', '2017-03-13', 'holi party with snacks and games\r\n@5pm\r\n                  ', 'https://s11.postimg.org/ju96e6hoz/holi.jpg');
INSERT INTO `events` VALUES ('EVENT791', 'Staff Meeting                  ', 'office', '2012-12-12', '2012-12-12', 'Attendance compulsory\r\n                  \r\n                  \r\n                  ', 'https://s17.postimg.org/4asb395mn/event.jpg');
INSERT INTO `events` VALUES ('EVENT792', 'Monthly Birthday Celebration', 'unit', '2017-03-17', '2017-03-17', 'all are requested to assemble at sharp 5pm.\r\n:)\r\n                  ', 'https://s12.postimg.org/db5bamrq5/image.jpg');
INSERT INTO `events` VALUES ('EVENT817', 'sales team meeting', 'unit 501', '2017-03-30', '2017-03-31', 'all team heads to attend', 'https://s17.postimg.org/4asb395mn/event.jpg');
INSERT INTO `events` VALUES ('EVENT818', 'testing', 'test', '2017-03-10', '2017-03-10', 'testing\r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n      ', 'https://s13.postimg.org/frt9tqp1j/image.jpg');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` varchar(255) NOT NULL,
  `n_name` varchar(255) NOT NULL,
  `n_date` varchar(255) default NULL,
  `n_photo` varchar(255) default NULL,
  `n_desc` varchar(255) default NULL,
  PRIMARY KEY  (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('NEWS4227', 'apar conference', '2017-04-12', 'https://s28.postimg.org/y7ozxd1kd/image.jpg', 'test');
INSERT INTO `news` VALUES ('NEWS4228', 'testing image', '2017-04-06', 'https://s23.postimg.org/q8amd1wyj/image.jpg', 'test image');
INSERT INTO `news` VALUES ('NEWS4229', 'testing validations', '2017-04-04', 'https://s23.postimg.org/q8amd1wyj/image.jpg', 'test');
INSERT INTO `news` VALUES ('NEWS4231', 'blob img', '12-12-12', 'https://s8.postimg.org/noha1p9vp/image.jpg', 'img');
INSERT INTO `news` VALUES ('NEWS4245', 'promotions', '2017-04-14', 'https://s28.postimg.org/y7ozxd1kd/image.jpg', null);
INSERT INTO `news` VALUES ('NEWS4246', 'latest update', '2017-04-08', 'https://s28.postimg.org/y7ozxd1kd/image.jpg', null);
INSERT INTO `news` VALUES ('NEWS4248', 'update on conference', '2017-04-11', 'https://s23.postimg.org/q8amd1wyj/image.jpg', null);

-- ----------------------------
-- Table structure for `session_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `session_sequence`;
CREATE TABLE `session_sequence` (
  `Id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1099 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of session_sequence
-- ----------------------------
INSERT INTO `session_sequence` VALUES ('10');
INSERT INTO `session_sequence` VALUES ('11');
INSERT INTO `session_sequence` VALUES ('12');
INSERT INTO `session_sequence` VALUES ('13');
INSERT INTO `session_sequence` VALUES ('14');
INSERT INTO `session_sequence` VALUES ('15');
INSERT INTO `session_sequence` VALUES ('16');
INSERT INTO `session_sequence` VALUES ('17');
INSERT INTO `session_sequence` VALUES ('18');
INSERT INTO `session_sequence` VALUES ('19');
INSERT INTO `session_sequence` VALUES ('20');
INSERT INTO `session_sequence` VALUES ('21');
INSERT INTO `session_sequence` VALUES ('22');
INSERT INTO `session_sequence` VALUES ('23');
INSERT INTO `session_sequence` VALUES ('24');
INSERT INTO `session_sequence` VALUES ('25');
INSERT INTO `session_sequence` VALUES ('26');
INSERT INTO `session_sequence` VALUES ('27');
INSERT INTO `session_sequence` VALUES ('28');
INSERT INTO `session_sequence` VALUES ('29');
INSERT INTO `session_sequence` VALUES ('30');
INSERT INTO `session_sequence` VALUES ('31');
INSERT INTO `session_sequence` VALUES ('32');
INSERT INTO `session_sequence` VALUES ('33');
INSERT INTO `session_sequence` VALUES ('34');
INSERT INTO `session_sequence` VALUES ('35');
INSERT INTO `session_sequence` VALUES ('36');
INSERT INTO `session_sequence` VALUES ('37');
INSERT INTO `session_sequence` VALUES ('38');
INSERT INTO `session_sequence` VALUES ('39');
INSERT INTO `session_sequence` VALUES ('40');
INSERT INTO `session_sequence` VALUES ('41');
INSERT INTO `session_sequence` VALUES ('42');
INSERT INTO `session_sequence` VALUES ('43');
INSERT INTO `session_sequence` VALUES ('44');
INSERT INTO `session_sequence` VALUES ('45');
INSERT INTO `session_sequence` VALUES ('46');
INSERT INTO `session_sequence` VALUES ('47');
INSERT INTO `session_sequence` VALUES ('48');
INSERT INTO `session_sequence` VALUES ('49');
INSERT INTO `session_sequence` VALUES ('50');
INSERT INTO `session_sequence` VALUES ('51');
INSERT INTO `session_sequence` VALUES ('52');
INSERT INTO `session_sequence` VALUES ('53');
INSERT INTO `session_sequence` VALUES ('54');
INSERT INTO `session_sequence` VALUES ('55');
INSERT INTO `session_sequence` VALUES ('56');
INSERT INTO `session_sequence` VALUES ('57');
INSERT INTO `session_sequence` VALUES ('58');
INSERT INTO `session_sequence` VALUES ('59');
INSERT INTO `session_sequence` VALUES ('60');
INSERT INTO `session_sequence` VALUES ('61');
INSERT INTO `session_sequence` VALUES ('62');
INSERT INTO `session_sequence` VALUES ('63');
INSERT INTO `session_sequence` VALUES ('64');
INSERT INTO `session_sequence` VALUES ('65');
INSERT INTO `session_sequence` VALUES ('66');
INSERT INTO `session_sequence` VALUES ('67');
INSERT INTO `session_sequence` VALUES ('68');
INSERT INTO `session_sequence` VALUES ('69');
INSERT INTO `session_sequence` VALUES ('70');
INSERT INTO `session_sequence` VALUES ('71');
INSERT INTO `session_sequence` VALUES ('72');
INSERT INTO `session_sequence` VALUES ('73');
INSERT INTO `session_sequence` VALUES ('74');
INSERT INTO `session_sequence` VALUES ('75');
INSERT INTO `session_sequence` VALUES ('76');
INSERT INTO `session_sequence` VALUES ('77');
INSERT INTO `session_sequence` VALUES ('78');
INSERT INTO `session_sequence` VALUES ('79');
INSERT INTO `session_sequence` VALUES ('80');
INSERT INTO `session_sequence` VALUES ('81');
INSERT INTO `session_sequence` VALUES ('82');
INSERT INTO `session_sequence` VALUES ('83');
INSERT INTO `session_sequence` VALUES ('84');
INSERT INTO `session_sequence` VALUES ('85');
INSERT INTO `session_sequence` VALUES ('86');
INSERT INTO `session_sequence` VALUES ('87');
INSERT INTO `session_sequence` VALUES ('88');
INSERT INTO `session_sequence` VALUES ('89');
INSERT INTO `session_sequence` VALUES ('90');
INSERT INTO `session_sequence` VALUES ('91');
INSERT INTO `session_sequence` VALUES ('92');
INSERT INTO `session_sequence` VALUES ('93');
INSERT INTO `session_sequence` VALUES ('94');
INSERT INTO `session_sequence` VALUES ('95');
INSERT INTO `session_sequence` VALUES ('96');
INSERT INTO `session_sequence` VALUES ('97');
INSERT INTO `session_sequence` VALUES ('98');
INSERT INTO `session_sequence` VALUES ('99');
INSERT INTO `session_sequence` VALUES ('100');
INSERT INTO `session_sequence` VALUES ('101');
INSERT INTO `session_sequence` VALUES ('102');
INSERT INTO `session_sequence` VALUES ('103');
INSERT INTO `session_sequence` VALUES ('104');
INSERT INTO `session_sequence` VALUES ('105');
INSERT INTO `session_sequence` VALUES ('106');
INSERT INTO `session_sequence` VALUES ('107');
INSERT INTO `session_sequence` VALUES ('108');
INSERT INTO `session_sequence` VALUES ('109');
INSERT INTO `session_sequence` VALUES ('110');
INSERT INTO `session_sequence` VALUES ('111');
INSERT INTO `session_sequence` VALUES ('112');
INSERT INTO `session_sequence` VALUES ('113');
INSERT INTO `session_sequence` VALUES ('114');
INSERT INTO `session_sequence` VALUES ('115');
INSERT INTO `session_sequence` VALUES ('116');
INSERT INTO `session_sequence` VALUES ('117');
INSERT INTO `session_sequence` VALUES ('118');
INSERT INTO `session_sequence` VALUES ('119');
INSERT INTO `session_sequence` VALUES ('120');
INSERT INTO `session_sequence` VALUES ('121');
INSERT INTO `session_sequence` VALUES ('122');
INSERT INTO `session_sequence` VALUES ('123');
INSERT INTO `session_sequence` VALUES ('124');
INSERT INTO `session_sequence` VALUES ('125');
INSERT INTO `session_sequence` VALUES ('126');
INSERT INTO `session_sequence` VALUES ('127');
INSERT INTO `session_sequence` VALUES ('128');
INSERT INTO `session_sequence` VALUES ('129');
INSERT INTO `session_sequence` VALUES ('130');
INSERT INTO `session_sequence` VALUES ('131');
INSERT INTO `session_sequence` VALUES ('132');
INSERT INTO `session_sequence` VALUES ('133');
INSERT INTO `session_sequence` VALUES ('134');
INSERT INTO `session_sequence` VALUES ('135');
INSERT INTO `session_sequence` VALUES ('136');
INSERT INTO `session_sequence` VALUES ('137');
INSERT INTO `session_sequence` VALUES ('138');
INSERT INTO `session_sequence` VALUES ('139');
INSERT INTO `session_sequence` VALUES ('140');
INSERT INTO `session_sequence` VALUES ('141');
INSERT INTO `session_sequence` VALUES ('142');
INSERT INTO `session_sequence` VALUES ('143');
INSERT INTO `session_sequence` VALUES ('144');
INSERT INTO `session_sequence` VALUES ('145');
INSERT INTO `session_sequence` VALUES ('146');
INSERT INTO `session_sequence` VALUES ('147');
INSERT INTO `session_sequence` VALUES ('148');
INSERT INTO `session_sequence` VALUES ('149');
INSERT INTO `session_sequence` VALUES ('150');
INSERT INTO `session_sequence` VALUES ('151');
INSERT INTO `session_sequence` VALUES ('152');
INSERT INTO `session_sequence` VALUES ('153');
INSERT INTO `session_sequence` VALUES ('154');
INSERT INTO `session_sequence` VALUES ('155');
INSERT INTO `session_sequence` VALUES ('156');
INSERT INTO `session_sequence` VALUES ('157');
INSERT INTO `session_sequence` VALUES ('158');
INSERT INTO `session_sequence` VALUES ('159');
INSERT INTO `session_sequence` VALUES ('160');
INSERT INTO `session_sequence` VALUES ('161');
INSERT INTO `session_sequence` VALUES ('162');
INSERT INTO `session_sequence` VALUES ('163');
INSERT INTO `session_sequence` VALUES ('164');
INSERT INTO `session_sequence` VALUES ('165');
INSERT INTO `session_sequence` VALUES ('166');
INSERT INTO `session_sequence` VALUES ('167');
INSERT INTO `session_sequence` VALUES ('168');
INSERT INTO `session_sequence` VALUES ('169');
INSERT INTO `session_sequence` VALUES ('170');
INSERT INTO `session_sequence` VALUES ('171');
INSERT INTO `session_sequence` VALUES ('172');
INSERT INTO `session_sequence` VALUES ('173');
INSERT INTO `session_sequence` VALUES ('174');
INSERT INTO `session_sequence` VALUES ('175');
INSERT INTO `session_sequence` VALUES ('176');
INSERT INTO `session_sequence` VALUES ('177');
INSERT INTO `session_sequence` VALUES ('178');
INSERT INTO `session_sequence` VALUES ('179');
INSERT INTO `session_sequence` VALUES ('180');
INSERT INTO `session_sequence` VALUES ('181');
INSERT INTO `session_sequence` VALUES ('182');
INSERT INTO `session_sequence` VALUES ('183');
INSERT INTO `session_sequence` VALUES ('184');
INSERT INTO `session_sequence` VALUES ('185');
INSERT INTO `session_sequence` VALUES ('186');
INSERT INTO `session_sequence` VALUES ('187');
INSERT INTO `session_sequence` VALUES ('188');
INSERT INTO `session_sequence` VALUES ('189');
INSERT INTO `session_sequence` VALUES ('190');
INSERT INTO `session_sequence` VALUES ('191');
INSERT INTO `session_sequence` VALUES ('192');
INSERT INTO `session_sequence` VALUES ('193');
INSERT INTO `session_sequence` VALUES ('194');
INSERT INTO `session_sequence` VALUES ('195');
INSERT INTO `session_sequence` VALUES ('196');
INSERT INTO `session_sequence` VALUES ('197');
INSERT INTO `session_sequence` VALUES ('198');
INSERT INTO `session_sequence` VALUES ('199');
INSERT INTO `session_sequence` VALUES ('200');
INSERT INTO `session_sequence` VALUES ('201');
INSERT INTO `session_sequence` VALUES ('202');
INSERT INTO `session_sequence` VALUES ('203');
INSERT INTO `session_sequence` VALUES ('204');
INSERT INTO `session_sequence` VALUES ('205');
INSERT INTO `session_sequence` VALUES ('206');
INSERT INTO `session_sequence` VALUES ('207');
INSERT INTO `session_sequence` VALUES ('208');
INSERT INTO `session_sequence` VALUES ('209');
INSERT INTO `session_sequence` VALUES ('210');
INSERT INTO `session_sequence` VALUES ('211');
INSERT INTO `session_sequence` VALUES ('212');
INSERT INTO `session_sequence` VALUES ('213');
INSERT INTO `session_sequence` VALUES ('214');
INSERT INTO `session_sequence` VALUES ('215');
INSERT INTO `session_sequence` VALUES ('216');
INSERT INTO `session_sequence` VALUES ('217');
INSERT INTO `session_sequence` VALUES ('218');
INSERT INTO `session_sequence` VALUES ('219');
INSERT INTO `session_sequence` VALUES ('220');
INSERT INTO `session_sequence` VALUES ('221');
INSERT INTO `session_sequence` VALUES ('222');
INSERT INTO `session_sequence` VALUES ('223');
INSERT INTO `session_sequence` VALUES ('224');
INSERT INTO `session_sequence` VALUES ('225');
INSERT INTO `session_sequence` VALUES ('226');
INSERT INTO `session_sequence` VALUES ('227');
INSERT INTO `session_sequence` VALUES ('228');
INSERT INTO `session_sequence` VALUES ('229');
INSERT INTO `session_sequence` VALUES ('230');
INSERT INTO `session_sequence` VALUES ('231');
INSERT INTO `session_sequence` VALUES ('232');
INSERT INTO `session_sequence` VALUES ('233');
INSERT INTO `session_sequence` VALUES ('234');
INSERT INTO `session_sequence` VALUES ('235');
INSERT INTO `session_sequence` VALUES ('236');
INSERT INTO `session_sequence` VALUES ('237');
INSERT INTO `session_sequence` VALUES ('238');
INSERT INTO `session_sequence` VALUES ('239');
INSERT INTO `session_sequence` VALUES ('240');
INSERT INTO `session_sequence` VALUES ('241');
INSERT INTO `session_sequence` VALUES ('242');
INSERT INTO `session_sequence` VALUES ('243');
INSERT INTO `session_sequence` VALUES ('244');
INSERT INTO `session_sequence` VALUES ('245');
INSERT INTO `session_sequence` VALUES ('246');
INSERT INTO `session_sequence` VALUES ('247');
INSERT INTO `session_sequence` VALUES ('248');
INSERT INTO `session_sequence` VALUES ('249');
INSERT INTO `session_sequence` VALUES ('250');
INSERT INTO `session_sequence` VALUES ('251');
INSERT INTO `session_sequence` VALUES ('252');
INSERT INTO `session_sequence` VALUES ('253');
INSERT INTO `session_sequence` VALUES ('254');
INSERT INTO `session_sequence` VALUES ('255');
INSERT INTO `session_sequence` VALUES ('256');
INSERT INTO `session_sequence` VALUES ('257');
INSERT INTO `session_sequence` VALUES ('258');
INSERT INTO `session_sequence` VALUES ('259');
INSERT INTO `session_sequence` VALUES ('260');
INSERT INTO `session_sequence` VALUES ('261');
INSERT INTO `session_sequence` VALUES ('262');
INSERT INTO `session_sequence` VALUES ('263');
INSERT INTO `session_sequence` VALUES ('264');
INSERT INTO `session_sequence` VALUES ('265');
INSERT INTO `session_sequence` VALUES ('266');
INSERT INTO `session_sequence` VALUES ('267');
INSERT INTO `session_sequence` VALUES ('268');
INSERT INTO `session_sequence` VALUES ('269');
INSERT INTO `session_sequence` VALUES ('270');
INSERT INTO `session_sequence` VALUES ('271');
INSERT INTO `session_sequence` VALUES ('272');
INSERT INTO `session_sequence` VALUES ('273');
INSERT INTO `session_sequence` VALUES ('274');
INSERT INTO `session_sequence` VALUES ('275');
INSERT INTO `session_sequence` VALUES ('276');
INSERT INTO `session_sequence` VALUES ('277');
INSERT INTO `session_sequence` VALUES ('278');
INSERT INTO `session_sequence` VALUES ('279');
INSERT INTO `session_sequence` VALUES ('280');
INSERT INTO `session_sequence` VALUES ('281');
INSERT INTO `session_sequence` VALUES ('282');
INSERT INTO `session_sequence` VALUES ('283');
INSERT INTO `session_sequence` VALUES ('284');
INSERT INTO `session_sequence` VALUES ('285');
INSERT INTO `session_sequence` VALUES ('286');
INSERT INTO `session_sequence` VALUES ('287');
INSERT INTO `session_sequence` VALUES ('288');
INSERT INTO `session_sequence` VALUES ('289');
INSERT INTO `session_sequence` VALUES ('290');
INSERT INTO `session_sequence` VALUES ('291');
INSERT INTO `session_sequence` VALUES ('292');
INSERT INTO `session_sequence` VALUES ('293');
INSERT INTO `session_sequence` VALUES ('294');
INSERT INTO `session_sequence` VALUES ('295');
INSERT INTO `session_sequence` VALUES ('296');
INSERT INTO `session_sequence` VALUES ('297');
INSERT INTO `session_sequence` VALUES ('298');
INSERT INTO `session_sequence` VALUES ('299');
INSERT INTO `session_sequence` VALUES ('300');
INSERT INTO `session_sequence` VALUES ('301');
INSERT INTO `session_sequence` VALUES ('302');
INSERT INTO `session_sequence` VALUES ('303');
INSERT INTO `session_sequence` VALUES ('304');
INSERT INTO `session_sequence` VALUES ('305');
INSERT INTO `session_sequence` VALUES ('306');
INSERT INTO `session_sequence` VALUES ('307');
INSERT INTO `session_sequence` VALUES ('308');
INSERT INTO `session_sequence` VALUES ('309');
INSERT INTO `session_sequence` VALUES ('310');
INSERT INTO `session_sequence` VALUES ('311');
INSERT INTO `session_sequence` VALUES ('312');
INSERT INTO `session_sequence` VALUES ('313');
INSERT INTO `session_sequence` VALUES ('314');
INSERT INTO `session_sequence` VALUES ('315');
INSERT INTO `session_sequence` VALUES ('316');
INSERT INTO `session_sequence` VALUES ('317');
INSERT INTO `session_sequence` VALUES ('318');
INSERT INTO `session_sequence` VALUES ('319');
INSERT INTO `session_sequence` VALUES ('320');
INSERT INTO `session_sequence` VALUES ('321');
INSERT INTO `session_sequence` VALUES ('322');
INSERT INTO `session_sequence` VALUES ('323');
INSERT INTO `session_sequence` VALUES ('324');
INSERT INTO `session_sequence` VALUES ('325');
INSERT INTO `session_sequence` VALUES ('326');
INSERT INTO `session_sequence` VALUES ('327');
INSERT INTO `session_sequence` VALUES ('328');
INSERT INTO `session_sequence` VALUES ('329');
INSERT INTO `session_sequence` VALUES ('330');
INSERT INTO `session_sequence` VALUES ('331');
INSERT INTO `session_sequence` VALUES ('332');
INSERT INTO `session_sequence` VALUES ('333');
INSERT INTO `session_sequence` VALUES ('334');
INSERT INTO `session_sequence` VALUES ('335');
INSERT INTO `session_sequence` VALUES ('336');
INSERT INTO `session_sequence` VALUES ('337');
INSERT INTO `session_sequence` VALUES ('338');
INSERT INTO `session_sequence` VALUES ('339');
INSERT INTO `session_sequence` VALUES ('340');
INSERT INTO `session_sequence` VALUES ('341');
INSERT INTO `session_sequence` VALUES ('342');
INSERT INTO `session_sequence` VALUES ('343');
INSERT INTO `session_sequence` VALUES ('344');
INSERT INTO `session_sequence` VALUES ('345');
INSERT INTO `session_sequence` VALUES ('346');
INSERT INTO `session_sequence` VALUES ('347');
INSERT INTO `session_sequence` VALUES ('348');
INSERT INTO `session_sequence` VALUES ('349');
INSERT INTO `session_sequence` VALUES ('350');
INSERT INTO `session_sequence` VALUES ('351');
INSERT INTO `session_sequence` VALUES ('352');
INSERT INTO `session_sequence` VALUES ('353');
INSERT INTO `session_sequence` VALUES ('354');
INSERT INTO `session_sequence` VALUES ('355');
INSERT INTO `session_sequence` VALUES ('356');
INSERT INTO `session_sequence` VALUES ('357');
INSERT INTO `session_sequence` VALUES ('358');
INSERT INTO `session_sequence` VALUES ('359');
INSERT INTO `session_sequence` VALUES ('360');
INSERT INTO `session_sequence` VALUES ('361');
INSERT INTO `session_sequence` VALUES ('362');
INSERT INTO `session_sequence` VALUES ('363');
INSERT INTO `session_sequence` VALUES ('364');
INSERT INTO `session_sequence` VALUES ('365');
INSERT INTO `session_sequence` VALUES ('366');
INSERT INTO `session_sequence` VALUES ('367');
INSERT INTO `session_sequence` VALUES ('368');
INSERT INTO `session_sequence` VALUES ('369');
INSERT INTO `session_sequence` VALUES ('370');
INSERT INTO `session_sequence` VALUES ('371');
INSERT INTO `session_sequence` VALUES ('372');
INSERT INTO `session_sequence` VALUES ('373');
INSERT INTO `session_sequence` VALUES ('374');
INSERT INTO `session_sequence` VALUES ('375');
INSERT INTO `session_sequence` VALUES ('376');
INSERT INTO `session_sequence` VALUES ('377');
INSERT INTO `session_sequence` VALUES ('378');
INSERT INTO `session_sequence` VALUES ('379');
INSERT INTO `session_sequence` VALUES ('380');
INSERT INTO `session_sequence` VALUES ('381');
INSERT INTO `session_sequence` VALUES ('382');
INSERT INTO `session_sequence` VALUES ('383');
INSERT INTO `session_sequence` VALUES ('384');
INSERT INTO `session_sequence` VALUES ('385');
INSERT INTO `session_sequence` VALUES ('386');
INSERT INTO `session_sequence` VALUES ('387');
INSERT INTO `session_sequence` VALUES ('388');
INSERT INTO `session_sequence` VALUES ('389');
INSERT INTO `session_sequence` VALUES ('390');
INSERT INTO `session_sequence` VALUES ('391');
INSERT INTO `session_sequence` VALUES ('392');
INSERT INTO `session_sequence` VALUES ('393');
INSERT INTO `session_sequence` VALUES ('394');
INSERT INTO `session_sequence` VALUES ('395');
INSERT INTO `session_sequence` VALUES ('396');
INSERT INTO `session_sequence` VALUES ('397');
INSERT INTO `session_sequence` VALUES ('398');
INSERT INTO `session_sequence` VALUES ('399');
INSERT INTO `session_sequence` VALUES ('400');
INSERT INTO `session_sequence` VALUES ('401');
INSERT INTO `session_sequence` VALUES ('402');
INSERT INTO `session_sequence` VALUES ('403');
INSERT INTO `session_sequence` VALUES ('404');
INSERT INTO `session_sequence` VALUES ('405');
INSERT INTO `session_sequence` VALUES ('406');
INSERT INTO `session_sequence` VALUES ('407');
INSERT INTO `session_sequence` VALUES ('408');
INSERT INTO `session_sequence` VALUES ('409');
INSERT INTO `session_sequence` VALUES ('410');
INSERT INTO `session_sequence` VALUES ('411');
INSERT INTO `session_sequence` VALUES ('412');
INSERT INTO `session_sequence` VALUES ('413');
INSERT INTO `session_sequence` VALUES ('414');
INSERT INTO `session_sequence` VALUES ('415');
INSERT INTO `session_sequence` VALUES ('416');
INSERT INTO `session_sequence` VALUES ('417');
INSERT INTO `session_sequence` VALUES ('418');
INSERT INTO `session_sequence` VALUES ('419');
INSERT INTO `session_sequence` VALUES ('420');
INSERT INTO `session_sequence` VALUES ('421');
INSERT INTO `session_sequence` VALUES ('422');
INSERT INTO `session_sequence` VALUES ('423');
INSERT INTO `session_sequence` VALUES ('424');
INSERT INTO `session_sequence` VALUES ('425');
INSERT INTO `session_sequence` VALUES ('426');
INSERT INTO `session_sequence` VALUES ('427');
INSERT INTO `session_sequence` VALUES ('428');
INSERT INTO `session_sequence` VALUES ('429');
INSERT INTO `session_sequence` VALUES ('430');
INSERT INTO `session_sequence` VALUES ('431');
INSERT INTO `session_sequence` VALUES ('432');
INSERT INTO `session_sequence` VALUES ('433');
INSERT INTO `session_sequence` VALUES ('434');
INSERT INTO `session_sequence` VALUES ('435');
INSERT INTO `session_sequence` VALUES ('436');
INSERT INTO `session_sequence` VALUES ('437');
INSERT INTO `session_sequence` VALUES ('438');
INSERT INTO `session_sequence` VALUES ('439');
INSERT INTO `session_sequence` VALUES ('440');
INSERT INTO `session_sequence` VALUES ('441');
INSERT INTO `session_sequence` VALUES ('442');
INSERT INTO `session_sequence` VALUES ('443');
INSERT INTO `session_sequence` VALUES ('444');
INSERT INTO `session_sequence` VALUES ('445');
INSERT INTO `session_sequence` VALUES ('446');
INSERT INTO `session_sequence` VALUES ('447');
INSERT INTO `session_sequence` VALUES ('448');
INSERT INTO `session_sequence` VALUES ('449');
INSERT INTO `session_sequence` VALUES ('450');
INSERT INTO `session_sequence` VALUES ('451');
INSERT INTO `session_sequence` VALUES ('452');
INSERT INTO `session_sequence` VALUES ('453');
INSERT INTO `session_sequence` VALUES ('454');
INSERT INTO `session_sequence` VALUES ('455');
INSERT INTO `session_sequence` VALUES ('456');
INSERT INTO `session_sequence` VALUES ('457');
INSERT INTO `session_sequence` VALUES ('458');
INSERT INTO `session_sequence` VALUES ('459');
INSERT INTO `session_sequence` VALUES ('460');
INSERT INTO `session_sequence` VALUES ('461');
INSERT INTO `session_sequence` VALUES ('462');
INSERT INTO `session_sequence` VALUES ('463');
INSERT INTO `session_sequence` VALUES ('464');
INSERT INTO `session_sequence` VALUES ('465');
INSERT INTO `session_sequence` VALUES ('466');
INSERT INTO `session_sequence` VALUES ('467');
INSERT INTO `session_sequence` VALUES ('468');
INSERT INTO `session_sequence` VALUES ('469');
INSERT INTO `session_sequence` VALUES ('470');
INSERT INTO `session_sequence` VALUES ('471');
INSERT INTO `session_sequence` VALUES ('472');
INSERT INTO `session_sequence` VALUES ('473');
INSERT INTO `session_sequence` VALUES ('474');
INSERT INTO `session_sequence` VALUES ('475');
INSERT INTO `session_sequence` VALUES ('476');
INSERT INTO `session_sequence` VALUES ('477');
INSERT INTO `session_sequence` VALUES ('478');
INSERT INTO `session_sequence` VALUES ('479');
INSERT INTO `session_sequence` VALUES ('480');
INSERT INTO `session_sequence` VALUES ('481');
INSERT INTO `session_sequence` VALUES ('482');
INSERT INTO `session_sequence` VALUES ('483');
INSERT INTO `session_sequence` VALUES ('484');
INSERT INTO `session_sequence` VALUES ('485');
INSERT INTO `session_sequence` VALUES ('486');
INSERT INTO `session_sequence` VALUES ('487');
INSERT INTO `session_sequence` VALUES ('488');
INSERT INTO `session_sequence` VALUES ('489');
INSERT INTO `session_sequence` VALUES ('490');
INSERT INTO `session_sequence` VALUES ('491');
INSERT INTO `session_sequence` VALUES ('492');
INSERT INTO `session_sequence` VALUES ('493');
INSERT INTO `session_sequence` VALUES ('494');
INSERT INTO `session_sequence` VALUES ('495');
INSERT INTO `session_sequence` VALUES ('496');
INSERT INTO `session_sequence` VALUES ('497');
INSERT INTO `session_sequence` VALUES ('498');
INSERT INTO `session_sequence` VALUES ('499');
INSERT INTO `session_sequence` VALUES ('500');
INSERT INTO `session_sequence` VALUES ('501');
INSERT INTO `session_sequence` VALUES ('502');
INSERT INTO `session_sequence` VALUES ('503');
INSERT INTO `session_sequence` VALUES ('504');
INSERT INTO `session_sequence` VALUES ('505');
INSERT INTO `session_sequence` VALUES ('506');
INSERT INTO `session_sequence` VALUES ('507');
INSERT INTO `session_sequence` VALUES ('508');
INSERT INTO `session_sequence` VALUES ('509');
INSERT INTO `session_sequence` VALUES ('510');
INSERT INTO `session_sequence` VALUES ('511');
INSERT INTO `session_sequence` VALUES ('512');
INSERT INTO `session_sequence` VALUES ('513');
INSERT INTO `session_sequence` VALUES ('514');
INSERT INTO `session_sequence` VALUES ('515');
INSERT INTO `session_sequence` VALUES ('516');
INSERT INTO `session_sequence` VALUES ('517');
INSERT INTO `session_sequence` VALUES ('518');
INSERT INTO `session_sequence` VALUES ('519');
INSERT INTO `session_sequence` VALUES ('520');
INSERT INTO `session_sequence` VALUES ('521');
INSERT INTO `session_sequence` VALUES ('522');
INSERT INTO `session_sequence` VALUES ('523');
INSERT INTO `session_sequence` VALUES ('524');
INSERT INTO `session_sequence` VALUES ('525');
INSERT INTO `session_sequence` VALUES ('526');
INSERT INTO `session_sequence` VALUES ('527');
INSERT INTO `session_sequence` VALUES ('528');
INSERT INTO `session_sequence` VALUES ('529');
INSERT INTO `session_sequence` VALUES ('530');
INSERT INTO `session_sequence` VALUES ('531');
INSERT INTO `session_sequence` VALUES ('532');
INSERT INTO `session_sequence` VALUES ('533');
INSERT INTO `session_sequence` VALUES ('534');
INSERT INTO `session_sequence` VALUES ('535');
INSERT INTO `session_sequence` VALUES ('536');
INSERT INTO `session_sequence` VALUES ('537');
INSERT INTO `session_sequence` VALUES ('538');
INSERT INTO `session_sequence` VALUES ('539');
INSERT INTO `session_sequence` VALUES ('540');
INSERT INTO `session_sequence` VALUES ('541');
INSERT INTO `session_sequence` VALUES ('542');
INSERT INTO `session_sequence` VALUES ('543');
INSERT INTO `session_sequence` VALUES ('544');
INSERT INTO `session_sequence` VALUES ('545');
INSERT INTO `session_sequence` VALUES ('546');
INSERT INTO `session_sequence` VALUES ('547');
INSERT INTO `session_sequence` VALUES ('548');
INSERT INTO `session_sequence` VALUES ('549');
INSERT INTO `session_sequence` VALUES ('550');
INSERT INTO `session_sequence` VALUES ('551');
INSERT INTO `session_sequence` VALUES ('552');
INSERT INTO `session_sequence` VALUES ('553');
INSERT INTO `session_sequence` VALUES ('554');
INSERT INTO `session_sequence` VALUES ('555');
INSERT INTO `session_sequence` VALUES ('556');
INSERT INTO `session_sequence` VALUES ('557');
INSERT INTO `session_sequence` VALUES ('558');
INSERT INTO `session_sequence` VALUES ('559');
INSERT INTO `session_sequence` VALUES ('560');
INSERT INTO `session_sequence` VALUES ('561');
INSERT INTO `session_sequence` VALUES ('562');
INSERT INTO `session_sequence` VALUES ('563');
INSERT INTO `session_sequence` VALUES ('564');
INSERT INTO `session_sequence` VALUES ('565');
INSERT INTO `session_sequence` VALUES ('566');
INSERT INTO `session_sequence` VALUES ('567');
INSERT INTO `session_sequence` VALUES ('568');
INSERT INTO `session_sequence` VALUES ('569');
INSERT INTO `session_sequence` VALUES ('570');
INSERT INTO `session_sequence` VALUES ('571');
INSERT INTO `session_sequence` VALUES ('572');
INSERT INTO `session_sequence` VALUES ('573');
INSERT INTO `session_sequence` VALUES ('574');
INSERT INTO `session_sequence` VALUES ('575');
INSERT INTO `session_sequence` VALUES ('576');
INSERT INTO `session_sequence` VALUES ('577');
INSERT INTO `session_sequence` VALUES ('578');
INSERT INTO `session_sequence` VALUES ('579');
INSERT INTO `session_sequence` VALUES ('580');
INSERT INTO `session_sequence` VALUES ('581');
INSERT INTO `session_sequence` VALUES ('582');
INSERT INTO `session_sequence` VALUES ('583');
INSERT INTO `session_sequence` VALUES ('584');
INSERT INTO `session_sequence` VALUES ('585');
INSERT INTO `session_sequence` VALUES ('586');
INSERT INTO `session_sequence` VALUES ('587');
INSERT INTO `session_sequence` VALUES ('588');
INSERT INTO `session_sequence` VALUES ('589');
INSERT INTO `session_sequence` VALUES ('590');
INSERT INTO `session_sequence` VALUES ('591');
INSERT INTO `session_sequence` VALUES ('592');
INSERT INTO `session_sequence` VALUES ('593');
INSERT INTO `session_sequence` VALUES ('594');
INSERT INTO `session_sequence` VALUES ('595');
INSERT INTO `session_sequence` VALUES ('596');
INSERT INTO `session_sequence` VALUES ('597');
INSERT INTO `session_sequence` VALUES ('598');
INSERT INTO `session_sequence` VALUES ('599');
INSERT INTO `session_sequence` VALUES ('600');
INSERT INTO `session_sequence` VALUES ('601');
INSERT INTO `session_sequence` VALUES ('602');
INSERT INTO `session_sequence` VALUES ('603');
INSERT INTO `session_sequence` VALUES ('604');
INSERT INTO `session_sequence` VALUES ('605');
INSERT INTO `session_sequence` VALUES ('606');
INSERT INTO `session_sequence` VALUES ('607');
INSERT INTO `session_sequence` VALUES ('608');
INSERT INTO `session_sequence` VALUES ('609');
INSERT INTO `session_sequence` VALUES ('610');
INSERT INTO `session_sequence` VALUES ('611');
INSERT INTO `session_sequence` VALUES ('612');
INSERT INTO `session_sequence` VALUES ('613');
INSERT INTO `session_sequence` VALUES ('614');
INSERT INTO `session_sequence` VALUES ('615');
INSERT INTO `session_sequence` VALUES ('616');
INSERT INTO `session_sequence` VALUES ('617');
INSERT INTO `session_sequence` VALUES ('618');
INSERT INTO `session_sequence` VALUES ('619');
INSERT INTO `session_sequence` VALUES ('620');
INSERT INTO `session_sequence` VALUES ('621');
INSERT INTO `session_sequence` VALUES ('622');
INSERT INTO `session_sequence` VALUES ('623');
INSERT INTO `session_sequence` VALUES ('624');
INSERT INTO `session_sequence` VALUES ('625');
INSERT INTO `session_sequence` VALUES ('626');
INSERT INTO `session_sequence` VALUES ('627');
INSERT INTO `session_sequence` VALUES ('628');
INSERT INTO `session_sequence` VALUES ('629');
INSERT INTO `session_sequence` VALUES ('630');
INSERT INTO `session_sequence` VALUES ('631');
INSERT INTO `session_sequence` VALUES ('632');
INSERT INTO `session_sequence` VALUES ('633');
INSERT INTO `session_sequence` VALUES ('634');
INSERT INTO `session_sequence` VALUES ('635');
INSERT INTO `session_sequence` VALUES ('636');
INSERT INTO `session_sequence` VALUES ('637');
INSERT INTO `session_sequence` VALUES ('638');
INSERT INTO `session_sequence` VALUES ('639');
INSERT INTO `session_sequence` VALUES ('640');
INSERT INTO `session_sequence` VALUES ('641');
INSERT INTO `session_sequence` VALUES ('642');
INSERT INTO `session_sequence` VALUES ('643');
INSERT INTO `session_sequence` VALUES ('644');
INSERT INTO `session_sequence` VALUES ('645');
INSERT INTO `session_sequence` VALUES ('646');
INSERT INTO `session_sequence` VALUES ('647');
INSERT INTO `session_sequence` VALUES ('648');
INSERT INTO `session_sequence` VALUES ('649');
INSERT INTO `session_sequence` VALUES ('650');
INSERT INTO `session_sequence` VALUES ('651');
INSERT INTO `session_sequence` VALUES ('652');
INSERT INTO `session_sequence` VALUES ('653');
INSERT INTO `session_sequence` VALUES ('654');
INSERT INTO `session_sequence` VALUES ('655');
INSERT INTO `session_sequence` VALUES ('656');
INSERT INTO `session_sequence` VALUES ('657');
INSERT INTO `session_sequence` VALUES ('658');
INSERT INTO `session_sequence` VALUES ('659');
INSERT INTO `session_sequence` VALUES ('660');
INSERT INTO `session_sequence` VALUES ('661');
INSERT INTO `session_sequence` VALUES ('662');
INSERT INTO `session_sequence` VALUES ('663');
INSERT INTO `session_sequence` VALUES ('664');
INSERT INTO `session_sequence` VALUES ('665');
INSERT INTO `session_sequence` VALUES ('666');
INSERT INTO `session_sequence` VALUES ('667');
INSERT INTO `session_sequence` VALUES ('668');
INSERT INTO `session_sequence` VALUES ('669');
INSERT INTO `session_sequence` VALUES ('670');
INSERT INTO `session_sequence` VALUES ('671');
INSERT INTO `session_sequence` VALUES ('672');
INSERT INTO `session_sequence` VALUES ('673');
INSERT INTO `session_sequence` VALUES ('674');
INSERT INTO `session_sequence` VALUES ('675');
INSERT INTO `session_sequence` VALUES ('676');
INSERT INTO `session_sequence` VALUES ('677');
INSERT INTO `session_sequence` VALUES ('678');
INSERT INTO `session_sequence` VALUES ('679');
INSERT INTO `session_sequence` VALUES ('680');
INSERT INTO `session_sequence` VALUES ('681');
INSERT INTO `session_sequence` VALUES ('682');
INSERT INTO `session_sequence` VALUES ('683');
INSERT INTO `session_sequence` VALUES ('684');
INSERT INTO `session_sequence` VALUES ('685');
INSERT INTO `session_sequence` VALUES ('686');
INSERT INTO `session_sequence` VALUES ('687');
INSERT INTO `session_sequence` VALUES ('688');
INSERT INTO `session_sequence` VALUES ('689');
INSERT INTO `session_sequence` VALUES ('690');
INSERT INTO `session_sequence` VALUES ('691');
INSERT INTO `session_sequence` VALUES ('692');
INSERT INTO `session_sequence` VALUES ('693');
INSERT INTO `session_sequence` VALUES ('694');
INSERT INTO `session_sequence` VALUES ('695');
INSERT INTO `session_sequence` VALUES ('696');
INSERT INTO `session_sequence` VALUES ('697');
INSERT INTO `session_sequence` VALUES ('698');
INSERT INTO `session_sequence` VALUES ('699');
INSERT INTO `session_sequence` VALUES ('700');
INSERT INTO `session_sequence` VALUES ('701');
INSERT INTO `session_sequence` VALUES ('702');
INSERT INTO `session_sequence` VALUES ('703');
INSERT INTO `session_sequence` VALUES ('704');
INSERT INTO `session_sequence` VALUES ('705');
INSERT INTO `session_sequence` VALUES ('706');
INSERT INTO `session_sequence` VALUES ('707');
INSERT INTO `session_sequence` VALUES ('708');
INSERT INTO `session_sequence` VALUES ('709');
INSERT INTO `session_sequence` VALUES ('710');
INSERT INTO `session_sequence` VALUES ('711');
INSERT INTO `session_sequence` VALUES ('712');
INSERT INTO `session_sequence` VALUES ('713');
INSERT INTO `session_sequence` VALUES ('714');
INSERT INTO `session_sequence` VALUES ('715');
INSERT INTO `session_sequence` VALUES ('716');
INSERT INTO `session_sequence` VALUES ('717');
INSERT INTO `session_sequence` VALUES ('718');
INSERT INTO `session_sequence` VALUES ('719');
INSERT INTO `session_sequence` VALUES ('720');
INSERT INTO `session_sequence` VALUES ('721');
INSERT INTO `session_sequence` VALUES ('722');
INSERT INTO `session_sequence` VALUES ('723');
INSERT INTO `session_sequence` VALUES ('724');
INSERT INTO `session_sequence` VALUES ('725');
INSERT INTO `session_sequence` VALUES ('726');
INSERT INTO `session_sequence` VALUES ('727');
INSERT INTO `session_sequence` VALUES ('728');
INSERT INTO `session_sequence` VALUES ('729');
INSERT INTO `session_sequence` VALUES ('730');
INSERT INTO `session_sequence` VALUES ('731');
INSERT INTO `session_sequence` VALUES ('732');
INSERT INTO `session_sequence` VALUES ('733');
INSERT INTO `session_sequence` VALUES ('734');
INSERT INTO `session_sequence` VALUES ('735');
INSERT INTO `session_sequence` VALUES ('736');
INSERT INTO `session_sequence` VALUES ('737');
INSERT INTO `session_sequence` VALUES ('738');
INSERT INTO `session_sequence` VALUES ('739');
INSERT INTO `session_sequence` VALUES ('740');
INSERT INTO `session_sequence` VALUES ('741');
INSERT INTO `session_sequence` VALUES ('742');
INSERT INTO `session_sequence` VALUES ('743');
INSERT INTO `session_sequence` VALUES ('744');
INSERT INTO `session_sequence` VALUES ('745');
INSERT INTO `session_sequence` VALUES ('746');
INSERT INTO `session_sequence` VALUES ('747');
INSERT INTO `session_sequence` VALUES ('748');
INSERT INTO `session_sequence` VALUES ('749');
INSERT INTO `session_sequence` VALUES ('750');
INSERT INTO `session_sequence` VALUES ('751');
INSERT INTO `session_sequence` VALUES ('752');
INSERT INTO `session_sequence` VALUES ('753');
INSERT INTO `session_sequence` VALUES ('754');
INSERT INTO `session_sequence` VALUES ('755');
INSERT INTO `session_sequence` VALUES ('756');
INSERT INTO `session_sequence` VALUES ('757');
INSERT INTO `session_sequence` VALUES ('758');
INSERT INTO `session_sequence` VALUES ('759');
INSERT INTO `session_sequence` VALUES ('760');
INSERT INTO `session_sequence` VALUES ('761');
INSERT INTO `session_sequence` VALUES ('762');
INSERT INTO `session_sequence` VALUES ('763');
INSERT INTO `session_sequence` VALUES ('764');
INSERT INTO `session_sequence` VALUES ('765');
INSERT INTO `session_sequence` VALUES ('766');
INSERT INTO `session_sequence` VALUES ('767');
INSERT INTO `session_sequence` VALUES ('768');
INSERT INTO `session_sequence` VALUES ('769');
INSERT INTO `session_sequence` VALUES ('770');
INSERT INTO `session_sequence` VALUES ('771');
INSERT INTO `session_sequence` VALUES ('772');
INSERT INTO `session_sequence` VALUES ('773');
INSERT INTO `session_sequence` VALUES ('774');
INSERT INTO `session_sequence` VALUES ('775');
INSERT INTO `session_sequence` VALUES ('776');
INSERT INTO `session_sequence` VALUES ('777');
INSERT INTO `session_sequence` VALUES ('778');
INSERT INTO `session_sequence` VALUES ('779');
INSERT INTO `session_sequence` VALUES ('780');
INSERT INTO `session_sequence` VALUES ('781');
INSERT INTO `session_sequence` VALUES ('782');
INSERT INTO `session_sequence` VALUES ('783');
INSERT INTO `session_sequence` VALUES ('784');
INSERT INTO `session_sequence` VALUES ('785');
INSERT INTO `session_sequence` VALUES ('786');
INSERT INTO `session_sequence` VALUES ('787');
INSERT INTO `session_sequence` VALUES ('788');
INSERT INTO `session_sequence` VALUES ('789');
INSERT INTO `session_sequence` VALUES ('790');
INSERT INTO `session_sequence` VALUES ('791');
INSERT INTO `session_sequence` VALUES ('792');
INSERT INTO `session_sequence` VALUES ('793');
INSERT INTO `session_sequence` VALUES ('794');
INSERT INTO `session_sequence` VALUES ('795');
INSERT INTO `session_sequence` VALUES ('796');
INSERT INTO `session_sequence` VALUES ('797');
INSERT INTO `session_sequence` VALUES ('798');
INSERT INTO `session_sequence` VALUES ('799');
INSERT INTO `session_sequence` VALUES ('800');
INSERT INTO `session_sequence` VALUES ('801');
INSERT INTO `session_sequence` VALUES ('802');
INSERT INTO `session_sequence` VALUES ('803');
INSERT INTO `session_sequence` VALUES ('804');
INSERT INTO `session_sequence` VALUES ('805');
INSERT INTO `session_sequence` VALUES ('806');
INSERT INTO `session_sequence` VALUES ('807');
INSERT INTO `session_sequence` VALUES ('808');
INSERT INTO `session_sequence` VALUES ('809');
INSERT INTO `session_sequence` VALUES ('810');
INSERT INTO `session_sequence` VALUES ('811');
INSERT INTO `session_sequence` VALUES ('812');
INSERT INTO `session_sequence` VALUES ('813');
INSERT INTO `session_sequence` VALUES ('814');
INSERT INTO `session_sequence` VALUES ('815');
INSERT INTO `session_sequence` VALUES ('816');
INSERT INTO `session_sequence` VALUES ('817');
INSERT INTO `session_sequence` VALUES ('818');
INSERT INTO `session_sequence` VALUES ('819');
INSERT INTO `session_sequence` VALUES ('820');
INSERT INTO `session_sequence` VALUES ('821');
INSERT INTO `session_sequence` VALUES ('822');
INSERT INTO `session_sequence` VALUES ('823');
INSERT INTO `session_sequence` VALUES ('824');
INSERT INTO `session_sequence` VALUES ('825');
INSERT INTO `session_sequence` VALUES ('826');
INSERT INTO `session_sequence` VALUES ('827');
INSERT INTO `session_sequence` VALUES ('828');
INSERT INTO `session_sequence` VALUES ('829');
INSERT INTO `session_sequence` VALUES ('830');
INSERT INTO `session_sequence` VALUES ('831');
INSERT INTO `session_sequence` VALUES ('832');
INSERT INTO `session_sequence` VALUES ('833');
INSERT INTO `session_sequence` VALUES ('834');
INSERT INTO `session_sequence` VALUES ('835');
INSERT INTO `session_sequence` VALUES ('836');
INSERT INTO `session_sequence` VALUES ('837');
INSERT INTO `session_sequence` VALUES ('838');
INSERT INTO `session_sequence` VALUES ('839');
INSERT INTO `session_sequence` VALUES ('840');
INSERT INTO `session_sequence` VALUES ('841');
INSERT INTO `session_sequence` VALUES ('842');
INSERT INTO `session_sequence` VALUES ('843');
INSERT INTO `session_sequence` VALUES ('844');
INSERT INTO `session_sequence` VALUES ('845');
INSERT INTO `session_sequence` VALUES ('846');
INSERT INTO `session_sequence` VALUES ('847');
INSERT INTO `session_sequence` VALUES ('848');
INSERT INTO `session_sequence` VALUES ('849');
INSERT INTO `session_sequence` VALUES ('850');
INSERT INTO `session_sequence` VALUES ('851');
INSERT INTO `session_sequence` VALUES ('852');
INSERT INTO `session_sequence` VALUES ('853');
INSERT INTO `session_sequence` VALUES ('854');
INSERT INTO `session_sequence` VALUES ('855');
INSERT INTO `session_sequence` VALUES ('856');
INSERT INTO `session_sequence` VALUES ('857');
INSERT INTO `session_sequence` VALUES ('858');
INSERT INTO `session_sequence` VALUES ('859');
INSERT INTO `session_sequence` VALUES ('860');
INSERT INTO `session_sequence` VALUES ('861');
INSERT INTO `session_sequence` VALUES ('862');
INSERT INTO `session_sequence` VALUES ('863');
INSERT INTO `session_sequence` VALUES ('864');
INSERT INTO `session_sequence` VALUES ('865');
INSERT INTO `session_sequence` VALUES ('866');
INSERT INTO `session_sequence` VALUES ('867');
INSERT INTO `session_sequence` VALUES ('868');
INSERT INTO `session_sequence` VALUES ('869');
INSERT INTO `session_sequence` VALUES ('870');
INSERT INTO `session_sequence` VALUES ('871');
INSERT INTO `session_sequence` VALUES ('872');
INSERT INTO `session_sequence` VALUES ('873');
INSERT INTO `session_sequence` VALUES ('874');
INSERT INTO `session_sequence` VALUES ('875');
INSERT INTO `session_sequence` VALUES ('876');
INSERT INTO `session_sequence` VALUES ('877');
INSERT INTO `session_sequence` VALUES ('878');
INSERT INTO `session_sequence` VALUES ('879');
INSERT INTO `session_sequence` VALUES ('880');
INSERT INTO `session_sequence` VALUES ('881');
INSERT INTO `session_sequence` VALUES ('882');
INSERT INTO `session_sequence` VALUES ('883');
INSERT INTO `session_sequence` VALUES ('884');
INSERT INTO `session_sequence` VALUES ('885');
INSERT INTO `session_sequence` VALUES ('886');
INSERT INTO `session_sequence` VALUES ('887');
INSERT INTO `session_sequence` VALUES ('888');
INSERT INTO `session_sequence` VALUES ('889');
INSERT INTO `session_sequence` VALUES ('890');
INSERT INTO `session_sequence` VALUES ('891');
INSERT INTO `session_sequence` VALUES ('892');
INSERT INTO `session_sequence` VALUES ('893');
INSERT INTO `session_sequence` VALUES ('894');
INSERT INTO `session_sequence` VALUES ('895');
INSERT INTO `session_sequence` VALUES ('896');
INSERT INTO `session_sequence` VALUES ('897');
INSERT INTO `session_sequence` VALUES ('898');
INSERT INTO `session_sequence` VALUES ('899');
INSERT INTO `session_sequence` VALUES ('900');
INSERT INTO `session_sequence` VALUES ('901');
INSERT INTO `session_sequence` VALUES ('902');
INSERT INTO `session_sequence` VALUES ('903');
INSERT INTO `session_sequence` VALUES ('904');
INSERT INTO `session_sequence` VALUES ('905');
INSERT INTO `session_sequence` VALUES ('906');
INSERT INTO `session_sequence` VALUES ('907');
INSERT INTO `session_sequence` VALUES ('908');
INSERT INTO `session_sequence` VALUES ('909');
INSERT INTO `session_sequence` VALUES ('910');
INSERT INTO `session_sequence` VALUES ('911');
INSERT INTO `session_sequence` VALUES ('912');
INSERT INTO `session_sequence` VALUES ('913');
INSERT INTO `session_sequence` VALUES ('914');
INSERT INTO `session_sequence` VALUES ('915');
INSERT INTO `session_sequence` VALUES ('916');
INSERT INTO `session_sequence` VALUES ('917');
INSERT INTO `session_sequence` VALUES ('918');
INSERT INTO `session_sequence` VALUES ('919');
INSERT INTO `session_sequence` VALUES ('920');
INSERT INTO `session_sequence` VALUES ('921');
INSERT INTO `session_sequence` VALUES ('922');
INSERT INTO `session_sequence` VALUES ('923');
INSERT INTO `session_sequence` VALUES ('924');
INSERT INTO `session_sequence` VALUES ('925');
INSERT INTO `session_sequence` VALUES ('926');
INSERT INTO `session_sequence` VALUES ('927');
INSERT INTO `session_sequence` VALUES ('928');
INSERT INTO `session_sequence` VALUES ('929');
INSERT INTO `session_sequence` VALUES ('930');
INSERT INTO `session_sequence` VALUES ('931');
INSERT INTO `session_sequence` VALUES ('932');
INSERT INTO `session_sequence` VALUES ('933');
INSERT INTO `session_sequence` VALUES ('934');
INSERT INTO `session_sequence` VALUES ('935');
INSERT INTO `session_sequence` VALUES ('936');
INSERT INTO `session_sequence` VALUES ('937');
INSERT INTO `session_sequence` VALUES ('938');
INSERT INTO `session_sequence` VALUES ('939');
INSERT INTO `session_sequence` VALUES ('940');
INSERT INTO `session_sequence` VALUES ('941');
INSERT INTO `session_sequence` VALUES ('942');
INSERT INTO `session_sequence` VALUES ('943');
INSERT INTO `session_sequence` VALUES ('944');
INSERT INTO `session_sequence` VALUES ('945');
INSERT INTO `session_sequence` VALUES ('946');
INSERT INTO `session_sequence` VALUES ('947');
INSERT INTO `session_sequence` VALUES ('948');
INSERT INTO `session_sequence` VALUES ('949');
INSERT INTO `session_sequence` VALUES ('950');
INSERT INTO `session_sequence` VALUES ('951');
INSERT INTO `session_sequence` VALUES ('952');
INSERT INTO `session_sequence` VALUES ('953');
INSERT INTO `session_sequence` VALUES ('954');
INSERT INTO `session_sequence` VALUES ('955');
INSERT INTO `session_sequence` VALUES ('956');
INSERT INTO `session_sequence` VALUES ('957');
INSERT INTO `session_sequence` VALUES ('958');
INSERT INTO `session_sequence` VALUES ('959');
INSERT INTO `session_sequence` VALUES ('960');
INSERT INTO `session_sequence` VALUES ('961');
INSERT INTO `session_sequence` VALUES ('962');
INSERT INTO `session_sequence` VALUES ('963');
INSERT INTO `session_sequence` VALUES ('964');
INSERT INTO `session_sequence` VALUES ('965');
INSERT INTO `session_sequence` VALUES ('966');
INSERT INTO `session_sequence` VALUES ('967');
INSERT INTO `session_sequence` VALUES ('968');
INSERT INTO `session_sequence` VALUES ('969');
INSERT INTO `session_sequence` VALUES ('970');
INSERT INTO `session_sequence` VALUES ('971');
INSERT INTO `session_sequence` VALUES ('972');
INSERT INTO `session_sequence` VALUES ('973');
INSERT INTO `session_sequence` VALUES ('974');
INSERT INTO `session_sequence` VALUES ('975');
INSERT INTO `session_sequence` VALUES ('976');
INSERT INTO `session_sequence` VALUES ('977');
INSERT INTO `session_sequence` VALUES ('978');
INSERT INTO `session_sequence` VALUES ('979');
INSERT INTO `session_sequence` VALUES ('980');
INSERT INTO `session_sequence` VALUES ('981');
INSERT INTO `session_sequence` VALUES ('982');
INSERT INTO `session_sequence` VALUES ('983');
INSERT INTO `session_sequence` VALUES ('984');
INSERT INTO `session_sequence` VALUES ('985');
INSERT INTO `session_sequence` VALUES ('986');
INSERT INTO `session_sequence` VALUES ('987');
INSERT INTO `session_sequence` VALUES ('988');
INSERT INTO `session_sequence` VALUES ('989');
INSERT INTO `session_sequence` VALUES ('990');
INSERT INTO `session_sequence` VALUES ('991');
INSERT INTO `session_sequence` VALUES ('992');
INSERT INTO `session_sequence` VALUES ('993');
INSERT INTO `session_sequence` VALUES ('994');
INSERT INTO `session_sequence` VALUES ('995');
INSERT INTO `session_sequence` VALUES ('996');
INSERT INTO `session_sequence` VALUES ('997');
INSERT INTO `session_sequence` VALUES ('998');
INSERT INTO `session_sequence` VALUES ('999');
INSERT INTO `session_sequence` VALUES ('1000');
INSERT INTO `session_sequence` VALUES ('1001');
INSERT INTO `session_sequence` VALUES ('1002');
INSERT INTO `session_sequence` VALUES ('1003');
INSERT INTO `session_sequence` VALUES ('1004');
INSERT INTO `session_sequence` VALUES ('1005');
INSERT INTO `session_sequence` VALUES ('1006');
INSERT INTO `session_sequence` VALUES ('1007');
INSERT INTO `session_sequence` VALUES ('1008');
INSERT INTO `session_sequence` VALUES ('1009');
INSERT INTO `session_sequence` VALUES ('1010');
INSERT INTO `session_sequence` VALUES ('1011');
INSERT INTO `session_sequence` VALUES ('1012');
INSERT INTO `session_sequence` VALUES ('1013');
INSERT INTO `session_sequence` VALUES ('1014');
INSERT INTO `session_sequence` VALUES ('1015');
INSERT INTO `session_sequence` VALUES ('1016');
INSERT INTO `session_sequence` VALUES ('1017');
INSERT INTO `session_sequence` VALUES ('1018');
INSERT INTO `session_sequence` VALUES ('1019');
INSERT INTO `session_sequence` VALUES ('1020');
INSERT INTO `session_sequence` VALUES ('1021');
INSERT INTO `session_sequence` VALUES ('1022');
INSERT INTO `session_sequence` VALUES ('1023');
INSERT INTO `session_sequence` VALUES ('1024');
INSERT INTO `session_sequence` VALUES ('1025');
INSERT INTO `session_sequence` VALUES ('1026');
INSERT INTO `session_sequence` VALUES ('1027');
INSERT INTO `session_sequence` VALUES ('1028');
INSERT INTO `session_sequence` VALUES ('1029');
INSERT INTO `session_sequence` VALUES ('1030');
INSERT INTO `session_sequence` VALUES ('1031');
INSERT INTO `session_sequence` VALUES ('1032');
INSERT INTO `session_sequence` VALUES ('1033');
INSERT INTO `session_sequence` VALUES ('1034');
INSERT INTO `session_sequence` VALUES ('1035');
INSERT INTO `session_sequence` VALUES ('1036');
INSERT INTO `session_sequence` VALUES ('1037');
INSERT INTO `session_sequence` VALUES ('1038');
INSERT INTO `session_sequence` VALUES ('1039');
INSERT INTO `session_sequence` VALUES ('1040');
INSERT INTO `session_sequence` VALUES ('1041');
INSERT INTO `session_sequence` VALUES ('1042');
INSERT INTO `session_sequence` VALUES ('1043');
INSERT INTO `session_sequence` VALUES ('1044');
INSERT INTO `session_sequence` VALUES ('1045');
INSERT INTO `session_sequence` VALUES ('1046');
INSERT INTO `session_sequence` VALUES ('1047');
INSERT INTO `session_sequence` VALUES ('1048');
INSERT INTO `session_sequence` VALUES ('1049');
INSERT INTO `session_sequence` VALUES ('1050');
INSERT INTO `session_sequence` VALUES ('1051');
INSERT INTO `session_sequence` VALUES ('1052');
INSERT INTO `session_sequence` VALUES ('1053');
INSERT INTO `session_sequence` VALUES ('1054');
INSERT INTO `session_sequence` VALUES ('1055');
INSERT INTO `session_sequence` VALUES ('1056');
INSERT INTO `session_sequence` VALUES ('1057');
INSERT INTO `session_sequence` VALUES ('1058');
INSERT INTO `session_sequence` VALUES ('1059');
INSERT INTO `session_sequence` VALUES ('1060');
INSERT INTO `session_sequence` VALUES ('1061');
INSERT INTO `session_sequence` VALUES ('1062');
INSERT INTO `session_sequence` VALUES ('1063');
INSERT INTO `session_sequence` VALUES ('1064');
INSERT INTO `session_sequence` VALUES ('1065');
INSERT INTO `session_sequence` VALUES ('1066');
INSERT INTO `session_sequence` VALUES ('1067');
INSERT INTO `session_sequence` VALUES ('1068');
INSERT INTO `session_sequence` VALUES ('1069');
INSERT INTO `session_sequence` VALUES ('1070');
INSERT INTO `session_sequence` VALUES ('1071');
INSERT INTO `session_sequence` VALUES ('1072');
INSERT INTO `session_sequence` VALUES ('1073');
INSERT INTO `session_sequence` VALUES ('1074');
INSERT INTO `session_sequence` VALUES ('1075');
INSERT INTO `session_sequence` VALUES ('1076');
INSERT INTO `session_sequence` VALUES ('1077');
INSERT INTO `session_sequence` VALUES ('1078');
INSERT INTO `session_sequence` VALUES ('1079');
INSERT INTO `session_sequence` VALUES ('1080');
INSERT INTO `session_sequence` VALUES ('1081');
INSERT INTO `session_sequence` VALUES ('1082');
INSERT INTO `session_sequence` VALUES ('1083');
INSERT INTO `session_sequence` VALUES ('1084');
INSERT INTO `session_sequence` VALUES ('1085');
INSERT INTO `session_sequence` VALUES ('1086');
INSERT INTO `session_sequence` VALUES ('1087');
INSERT INTO `session_sequence` VALUES ('1088');
INSERT INTO `session_sequence` VALUES ('1089');
INSERT INTO `session_sequence` VALUES ('1090');
INSERT INTO `session_sequence` VALUES ('1091');
INSERT INTO `session_sequence` VALUES ('1092');
INSERT INTO `session_sequence` VALUES ('1093');
INSERT INTO `session_sequence` VALUES ('1094');
INSERT INTO `session_sequence` VALUES ('1095');
INSERT INTO `session_sequence` VALUES ('1096');
INSERT INTO `session_sequence` VALUES ('1097');
INSERT INTO `session_sequence` VALUES ('1098');

-- ----------------------------
-- Table structure for `test_t`
-- ----------------------------
DROP TABLE IF EXISTS `test_t`;
CREATE TABLE `test_t` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `todayd` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test_t
-- ----------------------------
INSERT INTO `test_t` VALUES ('1', 'ssx', null);
INSERT INTO `test_t` VALUES ('2', 'aaaa', null);
INSERT INTO `test_t` VALUES ('3', 'dsc', null);
INSERT INTO `test_t` VALUES ('4', 'dc', null);
INSERT INTO `test_t` VALUES ('5', 'sdc', null);
INSERT INTO `test_t` VALUES ('6', 'hello', '2017-04-05');
INSERT INTO `test_t` VALUES ('7', 'hello', '2017-04-05');
INSERT INTO `test_t` VALUES ('8', 'hello', '2017-04-05');
INSERT INTO `test_t` VALUES ('9', 'hello', '2017-04-05');

-- ----------------------------
-- Table structure for `user_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `user_role_map`;
CREATE TABLE `user_role_map` (
  `role_id` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `pk_role` varchar(255) NOT NULL,
  PRIMARY KEY  (`pk_role`),
  KEY `fk_role` (`role_id`),
  KEY `FK_users_role_map` (`emp_id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `emp_role` (`id_role`),
  CONSTRAINT `FK_users_role_map` FOREIGN KEY (`emp_id`) REFERENCES `emp_personal_details` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_role_map
-- ----------------------------
INSERT INTO `user_role_map` VALUES ('ROLE3', '9', 'ER1673');
INSERT INTO `user_role_map` VALUES ('ROLE2', '9', 'ER1944');
INSERT INTO `user_role_map` VALUES ('ROLE3', '13', 'ER2305');
INSERT INTO `user_role_map` VALUES ('ROLE1', '12', 'ER2307');
INSERT INTO `user_role_map` VALUES ('ROLE1', '12', 'ER2325');
INSERT INTO `user_role_map` VALUES ('ROLE1', '12', 'ER2344');
INSERT INTO `user_role_map` VALUES ('ROLE3', '15', 'ER2402');
INSERT INTO `user_role_map` VALUES ('ROLE3', '14', 'ER2449');
INSERT INTO `user_role_map` VALUES ('ROLE2', '14', 'ER2450');
INSERT INTO `user_role_map` VALUES ('ROLE1', '17', 'ER4100');
INSERT INTO `user_role_map` VALUES ('ROLE3', '20', 'ER4148');
INSERT INTO `user_role_map` VALUES ('ROLE3', '17', 'ER4162');
INSERT INTO `user_role_map` VALUES ('ROLE3', '16', 'ER4165');
INSERT INTO `user_role_map` VALUES ('ROLE3', '3', 'ER611');
INSERT INTO `user_role_map` VALUES ('ROLE1', '2', 'ER620');
INSERT INTO `user_role_map` VALUES ('ROLE1', '7', 'ER631');
INSERT INTO `user_role_map` VALUES ('ROLE2', '6', 'ER634');
INSERT INTO `user_role_map` VALUES ('ROLE3', '1', 'ER654');
INSERT INTO `user_role_map` VALUES ('ROLE2', '7', 'ER655');

-- ----------------------------
-- Procedure structure for `GetAllProducts`
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetAllProducts`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts`()
BEGIN
   SELECT *  FROM products;
   END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Prod_session_sequence`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Prod_session_sequence`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Prod_session_sequence`(OUT p_FileID INT)
BEGIN
 insert into session_sequence(Id)  values (null);
 select LAST_INSERT_ID() into p_FileID;
END
;;
DELIMITER ;
