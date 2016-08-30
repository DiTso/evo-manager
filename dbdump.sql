#
# MODX manager panel new design Database Dump
# MODX Version:1.1b-d7.1.2
# 
# Host: 
# Generation Time: 30-08-2016 16:41:16
# Server version: 5.5.41-log
# PHP Version: 5.3.29
# Database : `modx`
#

# --------------------------------------------------------

#
# Table structure for table `modx_active_users`
#

DROP TABLE IF EXISTS `modx_active_users`;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about active users.';

#
# Dumping data for table `modx_active_users`
#

INSERT INTO `modx_active_users` VALUES ('1','a-sharapov','1472564476','','93','127.0.0.1');
INSERT INTO `modx_active_users` VALUES ('2','dmi3yy','1446251666','','8','127.0.0.1');

# --------------------------------------------------------

#
# Table structure for table `modx_categories`
#

DROP TABLE IF EXISTS `modx_categories`;
CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `modx_categories`
#

INSERT INTO `modx_categories` VALUES ('1','Demo Content');
INSERT INTO `modx_categories` VALUES ('2','SEO');
INSERT INTO `modx_categories` VALUES ('3','Forms');
INSERT INTO `modx_categories` VALUES ('4','Templates');
INSERT INTO `modx_categories` VALUES ('5','Js');
INSERT INTO `modx_categories` VALUES ('6','Manager and Admin');
INSERT INTO `modx_categories` VALUES ('7','add');
INSERT INTO `modx_categories` VALUES ('8','Navigation');
INSERT INTO `modx_categories` VALUES ('9','Content');

# --------------------------------------------------------

#
# Table structure for table `modx_document_groups`
#

DROP TABLE IF EXISTS `modx_document_groups`;
CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_documentgroup_names`
#

DROP TABLE IF EXISTS `modx_documentgroup_names`;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_event_log`
#

DROP TABLE IF EXISTS `modx_event_log`;
CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `modx_event_log`
#


# --------------------------------------------------------

#
# Table structure for table `modx_keyword_xref`
#

DROP TABLE IF EXISTS `modx_keyword_xref`;
CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

#
# Dumping data for table `modx_keyword_xref`
#


# --------------------------------------------------------

#
# Table structure for table `modx_manager_log`
#

DROP TABLE IF EXISTS `modx_manager_log`;
CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2259 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `modx_manager_log`
#

INSERT INTO `modx_manager_log` VALUES ('1','1446022721','1','root','54','-','modx_manager_log','Optimizing a table');
INSERT INTO `modx_manager_log` VALUES ('2','1446022721','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('3','1446022752','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4','1446022759','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('5','1446022786','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6','1446022810','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('7','1446022815','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('8','1446022836','1','root','27','4','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('9','1446022852','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('10','1446022860','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('11','1446022931','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('12','1446022932','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('13','1446022933','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('14','1446022946','1','root','22','1','alterTitle','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('15','1446022952','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('16','1446022963','1','root','16','4','MODxHost','Editing template');
INSERT INTO `modx_manager_log` VALUES ('17','1446022966','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('18','1446022968','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('19','1446022970','1','root','300','-','Новый параметр (TV)','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('20','1446022980','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('21','1446022982','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('22','1446023137','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('23','1446023139','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('24','1446023174','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('25','1446023181','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('26','1446023208','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('27','1446023249','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('28','1446023251','1','root','27','19','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('29','1446023254','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('30','1446023259','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('31','1446023262','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('32','1446023308','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('33','1446023335','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('34','1446023382','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('35','1446023387','1','root','3','2','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('36','1446023389','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('37','1446023395','1','root','3','2','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('38','1446023397','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('39','1446023401','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('40','1446023403','1','root','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('41','1446023406','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('42','1446023408','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('43','1446023480','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('44','1446023540','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('45','1446023545','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('46','1446023547','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('47','1446023618','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('48','1446023700','1','root','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('49','1446023762','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('50','1446023811','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('51','1446023883','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('52','1446023887','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('53','1446023941','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('54','1446023946','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('55','1446023948','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('56','1446023998','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('57','1446024095','1','root','27','19','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('58','1446024101','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('59','1446024142','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('60','1446024145','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('61','1446024186','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('62','1446024190','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('63','1446024192','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('64','1446024195','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('65','1446024198','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('66','1446024199','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('67','1446024200','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('68','1446024200','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('69','1446024203','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('70','1446024214','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('71','1446024221','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('72','1446028157','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('73','1446028161','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('74','1446028163','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('75','1446028163','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('76','1446028166','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('77','1446028295','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('78','1446028299','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('79','1446028301','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('80','1446028718','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('81','1446028720','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('82','1446028720','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('83','1446028721','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('84','1446028722','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('85','1446028724','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('86','1446028725','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('87','1446028725','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('88','1446028726','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('89','1446028727','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('90','1446028727','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('91','1446028727','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('92','1446028728','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('93','1446028728','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('94','1446028728','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('95','1446028728','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('96','1446028728','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('97','1446028728','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('98','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('99','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('100','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('101','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('102','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('103','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('104','1446028729','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('105','1446028730','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('106','1446028730','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('107','1446028730','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('108','1446028730','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('109','1446028730','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('110','1446028731','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('111','1446028731','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('112','1446028731','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('113','1446028731','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('114','1446028731','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('115','1446028731','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('116','1446028732','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('117','1446028732','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('118','1446028732','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('119','1446028732','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('120','1446028732','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('121','1446028732','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('122','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('123','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('124','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('125','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('126','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('127','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('128','1446028733','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('129','1446028734','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('130','1446028734','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('131','1446028734','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('132','1446028734','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('133','1446028734','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('134','1446028734','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('135','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('136','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('137','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('138','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('139','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('140','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('141','1446028735','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('142','1446028736','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('143','1446028736','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('144','1446028736','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('145','1446028736','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('146','1446028736','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('147','1446028736','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('148','1446028744','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('149','1446028748','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('150','1446028750','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('151','1446028772','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('152','1446028781','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('153','1446028933','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('154','1446028957','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('155','1446028960','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('156','1446028961','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('157','1446029005','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('158','1446029013','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('159','1446029014','1','root','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('160','1446029021','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('161','1446029022','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('162','1446029023','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('163','1446029023','1','root','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('164','1446029023','1','root','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('165','1446029024','1','root','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('166','1446029024','1','root','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('167','1446029027','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('168','1446029027','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('169','1446029028','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('170','1446029272','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('171','1446029274','1','root','27','19','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('172','1446029274','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('173','1446029275','1','root','27','19','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('174','1446029276','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('175','1446029276','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('176','1446029277','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('177','1446029278','1','root','27','4','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('178','1446029278','1','root','27','5','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('179','1446029279','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('180','1446029279','1','root','27','8','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('181','1446029280','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('182','1446029281','1','root','27','16','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('183','1446029282','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('184','1446029283','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('185','1446029283','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('186','1446029284','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('187','1446029285','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('188','1446029286','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('189','1446029287','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('190','1446029288','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('191','1446029289','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('192','1446029290','1','root','27','4','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('193','1446029292','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('194','1446029293','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('195','1446029295','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('196','1446029299','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('197','1446029328','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('198','1446029329','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('199','1446029330','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('200','1446029332','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('201','1446029333','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('202','1446029334','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('203','1446029336','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('204','1446029337','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('205','1446029344','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('206','1446029348','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('207','1446029349','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('208','1446029380','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('209','1446029395','1','root','3','6','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('210','1446029459','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('211','1446029462','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('212','1446029477','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('213','1446029488','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('214','1446029492','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('215','1446029563','1','root','3','23','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('216','1446029586','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('217','1446029590','1','root','3','23','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('218','1446030190','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('219','1446030191','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('220','1446030192','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('221','1446030207','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('222','1446030213','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('223','1446030219','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('224','1446030221','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('225','1446030223','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('226','1446030225','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('227','1446030226','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('228','1446030226','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('229','1446030229','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('230','1446030278','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('231','1446030282','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('232','1446030282','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('233','1446030296','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('234','1446030303','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('235','1446030310','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('236','1446030320','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('237','1446030323','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('238','1446030326','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('239','1446030332','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('240','1446030514','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('241','1446030519','1','root','3','7','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('242','1446030670','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('243','1446030672','1','root','5','7','Новый ресурс','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('244','1446030673','1','root','3','7','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('245','1446030674','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('246','1446030712','1','root','3','7','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('247','1446030740','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('248','1446030744','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('249','1446030774','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('250','1446030783','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('251','1446031147','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('252','1446031547','1','root','9','-','-','Viewing help');
INSERT INTO `modx_manager_log` VALUES ('253','1446032259','1','root','27','19','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('254','1446032269','1','root','3','19','Duplicate of Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('255','1446032342','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('256','1446032342','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('257','1446034037','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('258','1446034373','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('259','1446034409','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('260','1446036360','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('261','1446037157','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('262','1446037195','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('263','1446037334','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('264','1446037338','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('265','1446037340','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('266','1446037529','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('267','1446037534','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('268','1446037574','1','root','51','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Moving resource');
INSERT INTO `modx_manager_log` VALUES ('269','1446037577','1','root','3','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('270','1446037579','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('271','1446037668','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('272','1446037913','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('273','1446037916','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('274','1446038329','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('275','1446038353','1','root','51','23','Новый ресурс','Moving resource');
INSERT INTO `modx_manager_log` VALUES ('276','1446038355','1','root','3','23','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('277','1446038530','1','root','51','20','Новый ресурс','Moving resource');
INSERT INTO `modx_manager_log` VALUES ('278','1446038537','1','root','94','4','Duplicate of Новый ресурс','Duplicate resource');
INSERT INTO `modx_manager_log` VALUES ('279','1446038537','1','root','3','24','Duplicate of Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('280','1446038548','1','root','94','8','Duplicate of Новая веб-ссылка','Duplicate resource');
INSERT INTO `modx_manager_log` VALUES ('281','1446038548','1','root','3','25','Duplicate of Новая веб-ссылка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('282','1446038556','1','root','51','4','Новый ресурс','Moving resource');
INSERT INTO `modx_manager_log` VALUES ('283','1446038564','1','root','52','4','Новый ресурс','Moved resource');
INSERT INTO `modx_manager_log` VALUES ('284','1446039535','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('285','1446040249','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('286','1446040257','1','root','3','23','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('287','1446040351','1','root','3','20','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('288','1446040369','1','root','27','20','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('289','1446040424','1','root','27','16','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('290','1446040446','1','root','3','23','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('291','1446040572','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('292','1446040674','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('293','1446040680','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('294','1446041171','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('295','1446041240','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('296','1446041524','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('297','1446041614','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('298','1446041619','1','root','5','1','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('299','1446041621','1','root','3','1','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('300','1446041622','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('301','1446041625','1','root','5','1','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('302','1446041626','1','root','3','1','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('303','1446041626','1','root','27','3','239uhroqhfuqioufqiifhqaiuwhfiuhauisfiuhaswiudfhiuaweiufialwhefiqwuifhweafe','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('304','1446041632','1','root','5','3','Folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('305','1446041633','1','root','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('306','1446041633','1','root','27','17','sdfnalskdfhbsjakdfbasfd','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('307','1446041638','1','root','5','17','Link folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('308','1446041639','1','root','3','17','Link folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('309','1446041641','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('310','1446041647','1','root','27','20','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('311','1446041669','1','root','5','20','Folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('312','1446041670','1','root','3','20','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('313','1446041673','1','root','27','21','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('314','1446041679','1','root','5','21','Folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('315','1446041679','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('316','1446041681','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('317','1446041685','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('318','1446041859','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('319','1446041861','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('320','1446041868','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('321','1446041886','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('322','1446042025','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('323','1446042054','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('324','1446042057','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('325','1446042060','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('326','1446042062','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('327','1446042071','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('328','1446042080','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('329','1446042083','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('330','1446042091','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('331','1446042145','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('332','1446042147','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('333','1446042150','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('334','1446042152','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('335','1446042154','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('336','1446042156','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('337','1446042158','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('338','1446042162','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('339','1446042166','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('340','1446042169','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('341','1446042173','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('342','1446042187','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('343','1446042189','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('344','1446042200','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('345','1446042202','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('346','1446042205','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('347','1446042207','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('348','1446042291','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('349','1446042294','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('350','1446042296','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('351','1446042298','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('352','1446042301','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('353','1446042303','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('354','1446042305','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('355','1446042306','1','root','3','21','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('356','1446042358','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('357','1446042359','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('358','1446042363','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('359','1446042364','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('360','1446042365','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('361','1446042367','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('362','1446042368','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('363','1446042375','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('364','1446042376','1','root','27','5','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('365','1446042376','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('366','1446042377','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('367','1446042378','1','root','27','8','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('368','1446042378','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('369','1446042378','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('370','1446042379','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('371','1446042380','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('372','1446042388','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('373','1446042391','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('374','1446042400','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('375','1446042409','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('376','1446042415','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('377','1446042421','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('378','1446042454','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('379','1446042483','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('380','1446042487','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('381','1446042517','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('382','1446042519','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('383','1446042521','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('384','1446042522','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('385','1446042523','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('386','1446042524','1','root','27','5','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('387','1446042525','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('388','1446042526','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('389','1446042529','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('390','1446042534','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('391','1446042544','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('392','1446042546','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('393','1446042564','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('394','1446042565','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('395','1446042565','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('396','1446042567','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('397','1446042567','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('398','1446042568','1','root','27','5','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('399','1446042569','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('400','1446042569','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('401','1446042570','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('402','1446042571','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('403','1446042572','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('404','1446042601','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('405','1446042601','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('406','1446042602','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('407','1446042603','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('408','1446042604','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('409','1446042644','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('410','1446042645','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('411','1446042646','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('412','1446042648','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('413','1446042663','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('414','1446042664','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('415','1446042665','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('416','1446042666','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('417','1446042668','1','root','27','5','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('418','1446042669','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('419','1446042670','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('420','1446042670','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('421','1446042671','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('422','1446042672','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('423','1446042910','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('424','1446042910','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('425','1446042911','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('426','1446042912','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('427','1446042913','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('428','1446042915','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('429','1446042916','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('430','1446042917','1','root','27','18','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('431','1446042920','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('432','1446042952','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('433','1446042955','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('434','1446042963','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('435','1446042968','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('436','1446042971','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('437','1446042976','1','root','27','15','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('438','1446042986','1','root','27','14','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('439','1446043040','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('440','1446043042','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('441','1446043043','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('442','1446043045','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('443','1446043048','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('444','1446043050','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('445','1446043052','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('446','1446043094','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('447','1446043099','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('448','1446043102','1','root','27','15','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('449','1446043120','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('450','1446043164','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('451','1446043171','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('452','1446043177','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('453','1446043181','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('454','1446043192','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('455','1446043194','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('456','1446043196','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('457','1446043286','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('458','1446043289','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('459','1446043291','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('460','1446043293','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('461','1446043296','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('462','1446043298','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('463','1446043300','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('464','1446043302','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('465','1446043308','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('466','1446043310','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('467','1446043311','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('468','1446043313','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('469','1446043316','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('470','1446043324','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('471','1446043351','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('472','1446043356','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('473','1446043386','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('474','1446043557','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('475','1446043602','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('476','1446043679','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('477','1446043766','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('478','1446043767','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('479','1446043824','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('480','1446043865','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('481','1446043869','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('482','1446043870','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('483','1446043872','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('484','1446043874','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('485','1446043875','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('486','1446043882','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('487','1446043884','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('488','1446043977','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('489','1446043981','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('490','1446043986','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('491','1446044004','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('492','1446044005','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('493','1446044009','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('494','1446044048','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('495','1446044050','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('496','1446044052','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('497','1446044325','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('498','1446044328','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('499','1446044337','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('500','1446044343','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('501','1446044458','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('502','1446044461','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('503','1446044469','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('504','1446044472','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('505','1446044519','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('506','1446044521','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('507','1446044614','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('508','1446044645','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('509','1446044655','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('510','1446044658','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('511','1446044685','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('512','1446044726','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('513','1446045031','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('514','1446045034','1','root','51','17','Link folder','Moving resource');
INSERT INTO `modx_manager_log` VALUES ('515','1446045036','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('516','1446045037','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('517','1446045058','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('518','1446045061','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('519','1446045062','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('520','1446045064','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('521','1446045065','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('522','1446045067','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('523','1446045090','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('524','1446045092','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('525','1446045094','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('526','1446045101','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('527','1446045112','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('528','1446045115','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('529','1446045117','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('530','1446045117','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('531','1446045120','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('532','1446045122','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('533','1446045123','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('534','1446045125','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('535','1446045128','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('536','1446045129','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('537','1446045131','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('538','1446045362','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('539','1446045365','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('540','1446045367','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('541','1446045396','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('542','1446045399','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('543','1446045461','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('544','1446045462','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('545','1446045464','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('546','1446045470','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('547','1446045476','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('548','1446045478','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('549','1446045484','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('550','1446045485','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('551','1446045503','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('552','1446045505','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('553','1446045507','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('554','1446045512','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('555','1446045514','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('556','1446045530','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('557','1446045531','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('558','1446045533','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('559','1446045534','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('560','1446045536','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('561','1446045537','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('562','1446045538','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('563','1446045540','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('564','1446045541','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('565','1446045542','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('566','1446045543','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('567','1446045544','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('568','1446045546','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('569','1446045547','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('570','1446045547','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('571','1446045548','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('572','1446045549','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('573','1446045550','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('574','1446045553','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('575','1446045555','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('576','1446045556','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('577','1446045567','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('578','1446045568','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('579','1446045570','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('580','1446045571','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('581','1446045574','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('582','1446045576','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('583','1446045577','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('584','1446045580','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('585','1446045582','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('586','1446045814','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('587','1446045817','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('588','1446045819','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('589','1446045822','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('590','1446045824','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('591','1446045826','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('592','1446045828','1','root','3','20','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('593','1446046291','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('594','1446046309','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('595','1446046403','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('596','1446046405','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('597','1446046407','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('598','1446046409','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('599','1446046410','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('600','1446046446','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('601','1446046449','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('602','1446046451','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('603','1446046459','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('604','1446046461','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('605','1446046465','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('606','1446046468','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('607','1446046470','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('608','1446046492','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('609','1446046552','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('610','1446046554','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('611','1446046556','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('612','1446046558','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('613','1446046630','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('614','1446046635','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('615','1446046637','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('616','1446046674','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('617','1446046677','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('618','1446046680','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('619','1446046717','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('620','1446046722','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('621','1446046864','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('622','1446046865','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('623','1446046867','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('624','1446046872','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('625','1446046954','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('626','1446046957','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('627','1446046958','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('628','1446046960','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('629','1446047073','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('630','1446047076','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('631','1446047079','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('632','1446047082','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('633','1446047134','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('634','1446047137','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('635','1446047139','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('636','1446047184','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('637','1446047187','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('638','1446047196','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('639','1446047202','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('640','1446047206','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('641','1446047209','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('642','1446047438','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('643','1446047442','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('644','1446047444','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('645','1446047448','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('646','1446047449','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('647','1446047455','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('648','1446047459','1','root','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('649','1446047486','1','root','27','21','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('650','1446047487','1','root','27','22','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('651','1446047496','1','root','5','22','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('652','1446047497','1','root','3','22','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('653','1446047498','1','root','27','1','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('654','1446047503','1','root','5','1','Home','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('655','1446047504','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('656','1446047505','1','root','27','23','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('657','1446047507','1','root','5','23','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('658','1446047508','1','root','3','23','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('659','1446047508','1','root','27','5','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('660','1446047521','1','root','5','5','Unpublish document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('661','1446047522','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('662','1446047523','1','root','27','6','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('663','1446047530','1','root','5','6','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('664','1446047532','1','root','3','6','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('665','1446047532','1','root','27','7','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('666','1446047535','1','root','5','7','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('667','1446047536','1','root','3','7','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('668','1446047537','1','root','27','8','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('669','1446047546','1','root','5','8','Link Folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('670','1446047547','1','root','3','8','Link Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('671','1446047550','1','root','27','4','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('672','1446047572','1','root','5','4','Document html','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('673','1446047573','1','root','3','4','Document html','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('674','1446047573','1','root','27','18','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('675','1446047579','1','root','27','4','Document html','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('676','1446047583','1','root','27','4','Document html','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('677','1446047584','1','root','27','4','Document html','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('678','1446047590','1','root','3','4','Document html','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('679','1446047592','1','root','27','18','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('680','1446047596','1','root','5','18','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('681','1446047597','1','root','3','18','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('682','1446047597','1','root','27','10','Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('683','1446047601','1','root','5','10','Link','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('684','1446047602','1','root','3','10','Link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('685','1446047604','1','root','27','12','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('686','1446047606','1','root','5','12','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('687','1446047607','1','root','3','12','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('688','1446047608','1','root','27','15','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('689','1446047618','1','root','5','15','Новый ресурс','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('690','1446047619','1','root','3','15','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('691','1446047621','1','root','27','15','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('692','1446047627','1','root','5','15','Empty Folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('693','1446047628','1','root','3','15','Empty Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('694','1446047629','1','root','27','16','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('695','1446047633','1','root','5','16','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('696','1446047634','1','root','3','16','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('697','1446047634','1','root','27','19','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('698','1446047642','1','root','5','19','Duplicate of document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('699','1446047643','1','root','3','19','Duplicate of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('700','1446047644','1','root','27','24','Duplicate of Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('701','1446047646','1','root','5','24','Duplicate of document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('702','1446047647','1','root','3','24','Duplicate of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('703','1446047647','1','root','27','25','Duplicate of Новая веб-ссылка','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('704','1446047650','1','root','5','25','Duplicate of document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('705','1446047651','1','root','3','25','Duplicate of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('706','1446047653','1','root','27','13','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('707','1446047661','1','root','5','13','Delited of document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('708','1446047662','1','root','3','13','Delited of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('709','1446047663','1','root','27','14','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('710','1446047665','1','root','5','14','Delited of document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('711','1446047666','1','root','3','14','Delited of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('712','1446047670','1','root','27','14','Delited of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('713','1446047682','1','root','5','14','Delited folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('714','1446047683','1','root','3','14','Delited folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('715','1446047684','1','root','27','13','Delited of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('716','1446047688','1','root','5','13','Delited document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('717','1446047689','1','root','3','13','Delited document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('718','1446048112','1','root','27','14','Delited folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('719','1446048115','1','root','27','14','Delited folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('720','1446048116','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('721','1446048117','1','root','27','12','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('722','1446048118','1','root','27','10','Link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('723','1446048119','1','root','27','18','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('724','1446048119','1','root','27','4','Document html','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('725','1446048120','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('726','1446048120','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('727','1446048120','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('728','1446048121','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('729','1446048121','1','root','27','23','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('730','1446048122','1','root','27','22','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('731','1446048124','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('732','1446048125','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('733','1446048125','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('734','1446048126','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('735','1446048127','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('736','1446048129','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('737','1446048141','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('738','1446048144','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('739','1446048844','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('740','1446048848','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('741','1446048856','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('742','1446048856','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('743','1446048857','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('744','1446048858','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('745','1446048861','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('746','1446048865','1','root','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('747','1446048925','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('748','1446048928','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('749','1446049001','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('750','1446049013','1','root','27','22','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('751','1446049033','1','root','27','22','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('752','1446049042','1','root','27','22','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('753','1446049159','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('754','1446049238','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('755','1446049242','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('756','1446049253','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('757','1446049276','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('758','1446049293','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('759','1446049299','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('760','1446049319','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('761','1446049335','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('762','1446049335','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('763','1446049351','1','root','27','20','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('764','1446049442','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('765','1446049470','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('766','1446049531','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('767','1446049545','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('768','1446049559','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('769','1446049576','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('770','1446049598','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('771','1446049630','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('772','1446049654','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('773','1446049682','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('774','1446049693','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('775','1446049694','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('776','1446049701','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('777','1446049770','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('778','1446049799','1','root','27','17','Link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('779','1446049847','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('780','1446049859','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('781','1446049919','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('782','1446049963','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('783','1446050049','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('784','1446050057','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('785','1446050081','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('786','1446050096','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('787','1446050110','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('788','1446050137','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('789','1446050139','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('790','1446050178','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('791','1446050220','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('792','1446050249','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('793','1446050270','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('794','1446050295','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('795','1446050320','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('796','1446050365','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('797','1446050375','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('798','1446050382','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('799','1446050382','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('800','1446050482','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('801','1446050580','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('802','1446050607','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('803','1446050763','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('804','1446050770','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('805','1446050812','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('806','1446050910','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('807','1446050956','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('808','1446050961','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('809','1446050971','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('810','1446051043','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('811','1446051052','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('812','1446051060','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('813','1446051069','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('814','1446051072','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('815','1446051100','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('816','1446051188','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('817','1446051196','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('818','1446051198','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('819','1446051201','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('820','1446051202','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('821','1446052413','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('822','1446052547','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('823','1446052591','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('824','1446052596','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('825','1446052601','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('826','1446052603','1','root','5','1','Home','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('827','1446052604','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('828','1446052605','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('829','1446052609','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('830','1446052651','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('831','1446052653','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('832','1446052669','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('833','1446052671','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('834','1446052747','1','root','3','8','Link Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('835','1446053664','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('836','1446056092','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('837','1446056638','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('838','1446057634','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('839','1446057656','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('840','1446057659','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('841','1446057739','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('842','1446057754','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('843','1446057773','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('844','1446057773','1','root','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('845','1446057774','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('846','1446057778','1','root','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('847','1446057779','1','root','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('848','1446057780','1','root','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('849','1446057780','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('850','1446057784','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('851','1446057802','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('852','1446057812','1','root','5','5','Unpublish document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('853','1446057813','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('854','1446057815','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('855','1446057817','1','root','5','5','Unpublish document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('856','1446057818','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('857','1446057819','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('858','1446057820','1','root','5','5','Unpublish document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('859','1446057821','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('860','1446057822','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('861','1446057823','1','root','5','5','Unpublish document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('862','1446057824','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('863','1446057824','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('864','1446057825','1','root','5','5','Unpublish document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('865','1446057826','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('866','1446057870','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('867','1446057939','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('868','1446057940','1','root','3','5','Unpublish document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('869','1446057951','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('870','1446058005','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('871','1446058053','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('872','1446058056','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('873','1446058070','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('874','1446058098','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('875','1446058188','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('876','1446058297','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('877','1446058364','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('878','1446058367','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('879','1446058368','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('880','1446058474','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('881','1446058521','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('882','1446058541','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('883','1446058661','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('884','1446058670','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('885','1446058732','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('886','1446058747','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('887','1446058752','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('888','1446058775','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('889','1446058786','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('890','1446058815','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('891','1446058831','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('892','1446058832','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('893','1446058845','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('894','1446058933','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('895','1446058982','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('896','1446059005','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('897','1446059006','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('898','1446059009','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('899','1446059010','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('900','1446059011','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('901','1446059011','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('902','1446059036','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('903','1446059044','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('904','1446059079','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('905','1446059081','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('906','1446059085','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('907','1446059087','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('908','1446059094','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('909','1446059104','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('910','1446059106','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('911','1446059113','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('912','1446059122','1','root','27','25','Duplicate of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('913','1446059129','1','root','3','25','Duplicate of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('914','1446059132','1','root','27','25','Duplicate of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('915','1446059141','1','root','3','25','Duplicate of document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('916','1446059147','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('917','1446059148','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('918','1446059149','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('919','1446059150','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('920','1446062520','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('921','1446062777','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('922','1446062779','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('923','1446062782','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('924','1446062783','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('925','1446062786','1','root','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('926','1446062800','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('927','1446062804','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('928','1446062846','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('929','1446063197','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('930','1446064231','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('931','1446064235','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('932','1446064347','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('933','1446064353','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('934','1446064380','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('935','1446064389','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('936','1446064390','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('937','1446064399','1','root','67','-','-','Removing locks');
INSERT INTO `modx_manager_log` VALUES ('938','1446114443','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('939','1446114445','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('940','1446114445','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('941','1446114450','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('942','1446114450','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('943','1446114451','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('944','1446114455','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('945','1446115737','1','root','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('946','1446115754','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('947','1446116061','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('948','1446116062','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('949','1446116062','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('950','1446116063','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('951','1446116064','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('952','1446116067','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('953','1446116076','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('954','1446116096','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('955','1446116099','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('956','1446116103','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('957','1446116107','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('958','1446116174','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('959','1446116193','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('960','1446116222','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('961','1446116512','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('962','1446116514','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('963','1446116517','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('964','1446116519','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('965','1446116522','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('966','1446116524','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('967','1446116526','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('968','1446116528','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('969','1446116629','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('970','1446116700','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('971','1446116718','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('972','1446116721','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('973','1446116723','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('974','1446116724','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('975','1446116728','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('976','1446116735','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('977','1446116736','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('978','1446116738','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('979','1446116739','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('980','1446116741','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('981','1446116743','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('982','1446116821','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('983','1446116822','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('984','1446116824','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('985','1446116826','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('986','1446116827','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('987','1446116829','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('988','1446116830','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('989','1446116832','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('990','1446116834','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('991','1446116840','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('992','1446117281','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('993','1446117777','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('994','1446117781','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('995','1446117782','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('996','1446117967','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('997','1446120951','1','root','27','10','Link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('998','1446120955','1','root','27','12','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('999','1446121427','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('1000','1446121429','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1001','1446121507','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1002','1446121534','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1003','1446121535','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1004','1446121537','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1005','1446121577','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1006','1446121579','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1007','1446121591','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1008','1446121595','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1009','1446121597','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1010','1446121598','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1011','1446121613','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1012','1446121614','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1013','1446121616','1','root','27','15','Empty Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1014','1446121646','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1015','1446121664','1','root','71','-','-','Searching');
INSERT INTO `modx_manager_log` VALUES ('1016','1446121666','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1017','1446121823','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1018','1446121854','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1019','1446121859','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1020','1446124690','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1021','1446124723','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1022','1446124729','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1023','1446124731','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1024','1446125009','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1025','1446125009','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1026','1446125012','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1027','1446125034','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1028','1446125037','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1029','1446125046','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1030','1446125049','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1031','1446125050','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1032','1446125051','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1033','1446125052','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1034','1446125053','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1035','1446125054','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1036','1446125055','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1037','1446125104','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1038','1446125106','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1039','1446125108','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1040','1446125110','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1041','1446125127','1','root','3','7','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1042','1446125129','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1043','1446125131','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1044','1446125132','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1045','1446125133','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1046','1446125134','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1047','1446125135','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1048','1446125136','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1049','1446125136','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1050','1446125137','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1051','1446125139','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1052','1446125140','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1053','1446125141','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1054','1446125143','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1055','1446125145','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1056','1446125161','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1057','1446126075','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1058','1446126363','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1059','1446126689','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1060','1446126800','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1061','1446126880','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1062','1446127141','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1063','1446127156','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1064','1446127174','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1065','1446127184','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1066','1446127200','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1067','1446127226','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1068','1446127227','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1069','1446127275','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1070','1446127277','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1071','1446127333','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1072','1446127348','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1073','1446127352','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1074','1446127460','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1075','1446127474','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1076','1446127493','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1077','1446127904','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1078','1446128125','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1079','1446128131','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1080','1446128256','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1081','1446128268','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1082','1446128269','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1083','1446128476','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1084','1446128489','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1085','1446128494','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1086','1446128499','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1087','1446128530','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1088','1446128540','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1089','1446128561','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1090','1446128569','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1091','1446128575','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1092','1446128582','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1093','1446128588','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1094','1446128620','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1095','1446128633','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1096','1446128634','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1097','1446128636','1','root','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1098','1446128637','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1099','1446128642','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1100','1446128642','1','root','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('1101','1446128647','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1102','1446128658','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1103','1446128663','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1104','1446128679','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1105','1446128682','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1106','1446128698','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1107','1446128715','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1108','1446128717','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1109','1446128718','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1110','1446128724','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1111','1446128725','1','root','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('1112','1446128727','1','root','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('1113','1446128728','1','root','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1114','1446128729','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1115','1446128730','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1116','1446128731','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1117','1446128740','1','root','27','14','Delited folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1118','1446128748','1','root','5','14','Delited empty folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1119','1446128749','1','root','3','14','Delited empty folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1120','1446128750','1','root','27','14','Delited empty folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1121','1446128771','1','root','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1122','1446128782','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1123','1446128789','1','root','27','22','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1124','1446128797','1','root','3','22','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1125','1446128808','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1126','1446128815','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1127','1446129565','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1128','1446129628','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1129','1446129631','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1130','1446129667','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1131','1446129670','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1132','1446129737','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1133','1446129745','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1134','1446129745','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1135','1446129790','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1136','1446129793','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1137','1446129881','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1138','1446129897','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1139','1446129898','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1140','1446129899','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1141','1446129900','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1142','1446129900','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1143','1446129903','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1144','1446129905','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1145','1446129937','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1146','1446129979','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1147','1446129982','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1148','1446129998','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1149','1446130065','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1150','1446130073','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1151','1446130141','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1152','1446130143','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1153','1446130147','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1154','1446130185','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1155','1446130282','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1156','1446130364','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1157','1446130367','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1158','1446130652','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1159','1446130654','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1160','1446130659','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1161','1446130664','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1162','1446130666','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1163','1446130667','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1164','1446130789','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1165','1446130790','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1166','1446130811','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1167','1446130831','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1168','1446130850','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1169','1446130914','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1170','1446131147','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1171','1446131172','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1172','1446131222','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1173','1446131249','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1174','1446131252','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1175','1446131277','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1176','1446131321','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1177','1446131339','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1178','1446131390','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1179','1446131428','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1180','1446131450','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1181','1446131454','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1182','1446131500','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1183','1446131645','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1184','1446131657','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1185','1446131750','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1186','1446131754','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1187','1446131803','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1188','1446131878','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1189','1446131923','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1190','1446132002','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1191','1446132073','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1192','1446132106','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1193','1446132151','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1194','1446132152','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1195','1446132181','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1196','1446132188','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1197','1446132202','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1198','1446132209','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1199','1446132239','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1200','1446132261','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1201','1446132287','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1202','1446132301','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1203','1446132323','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1204','1446132356','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1205','1446132442','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1206','1446132458','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1207','1446132504','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1208','1446132530','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1209','1446132545','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1210','1446132582','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1211','1446132599','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1212','1446132609','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1213','1446132621','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1214','1446132799','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1215','1446132851','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1216','1446132958','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1217','1446133007','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1218','1446133011','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1219','1446133020','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1220','1446133077','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1221','1446133217','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1222','1446133325','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1223','1446133365','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1224','1446133374','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1225','1446133376','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1226','1446133397','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1227','1446133510','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1228','1446133518','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1229','1446133615','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1230','1446133637','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1231','1446133667','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1232','1446133779','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1233','1446133867','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1234','1446134024','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1235','1446134060','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1236','1446134195','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1237','1446134248','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1238','1446134351','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1239','1446134404','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1240','1446134566','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1241','1446134584','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1242','1446134608','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1243','1446134622','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1244','1446134667','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1245','1446134692','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1246','1446134774','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1247','1446134841','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1248','1446135049','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1249','1446135136','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1250','1446135173','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1251','1446135225','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1252','1446135256','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1253','1446135287','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1254','1446135307','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1255','1446135324','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1256','1446135365','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1257','1446135421','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1258','1446135422','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1259','1446135455','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1260','1446135649','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1261','1446135676','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1262','1446135693','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1263','1446135723','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1264','1446135724','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1265','1446135725','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1266','1446135759','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1267','1446135778','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1268','1446135780','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1269','1446135833','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1270','1446135846','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1271','1446136038','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1272','1446136068','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1273','1446136089','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1274','1446136127','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1275','1446136196','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1276','1446136205','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1277','1446136207','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1278','1446136384','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1279','1446136554','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1280','1446136577','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1281','1446136604','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1282','1446136659','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1283','1446136666','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1284','1446136702','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1285','1446137020','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1286','1446137058','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1287','1446137542','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1288','1446137553','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1289','1446137556','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1290','1446137563','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1291','1446137566','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1292','1446137569','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1293','1446137614','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1294','1446137673','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1295','1446137687','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1296','1446137688','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1297','1446137718','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1298','1446137721','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1299','1446137724','1','root','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('1300','1446137725','1','root','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1301','1446137727','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1302','1446137729','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1303','1446137758','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1304','1446137784','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1305','1446137826','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1306','1446137864','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1307','1446138079','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1308','1446138170','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1309','1446138414','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1310','1446138417','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1311','1446138430','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1312','1446138433','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1313','1446138637','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1314','1446138658','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1315','1446139006','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1316','1446139029','1','root','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1317','1446139031','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1318','1446139034','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1319','1446139052','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1320','1446139054','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1321','1446139413','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1322','1446139627','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1323','1446139628','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1324','1446139695','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1325','1446139697','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1326','1446139698','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1327','1446139704','1','root','6','2','Новый ресурс','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('1328','1446139705','1','root','3','2','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1329','1446139709','1','root','27','2','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1330','1446139719','1','root','5','2','Delited link','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1331','1446139720','1','root','3','2','Delited link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1332','1446139726','1','root','27','19','Duplicate of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1333','1446139733','1','root','5','19','Duplicate of link','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1334','1446139734','1','root','3','19','Duplicate of link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1335','1446139734','1','root','27','25','Duplicate of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1336','1446139736','1','root','5','25','Duplicate of link','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1337','1446139737','1','root','3','25','Duplicate of link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1338','1446139760','1','root','27','18','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1339','1446139761','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1340','1446139763','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1341','1446139774','1','root','27','26','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1342','1446139782','1','root','5','26','New inner resource','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1343','1446139783','1','root','3','26','New inner resource','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1344','1446139785','1','root','27','26','New inner resource','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1345','1446139794','1','root','5','26','New inner unpublished resource','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1346','1446139795','1','root','3','26','New inner unpublished resource','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1347','1446140033','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1348','1446140034','1','root','71','-','-','Searching');
INSERT INTO `modx_manager_log` VALUES ('1349','1446140034','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1350','1446140035','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1351','1446140036','1','root','71','-','-','Searching');
INSERT INTO `modx_manager_log` VALUES ('1352','1446140039','1','root','71','-','-','Searching');
INSERT INTO `modx_manager_log` VALUES ('1353','1446140052','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1354','1446140054','1','root','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1355','1446140131','1','root','27','10','Link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1356','1446140132','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1357','1446140133','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1358','1446140134','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1359','1446140135','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1360','1446140137','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1361','1446140146','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1362','1446140147','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1363','1446140148','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1364','1446140150','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1365','1446140152','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1366','1446140153','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1367','1446140155','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1368','1446140156','1','root','102','4','ManagerManager','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('1369','1446140236','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1370','1446140238','1','root','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `modx_manager_log` VALUES ('1371','1446140252','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1372','1446140258','1','root','19','-','Новый шаблон','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('1373','1446140260','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1374','1446140263','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1375','1446140452','1','root','27','25','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1376','1446140454','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1377','1446140454','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1378','1446140512','1','root','63','2','Delited link','Un-deleting a resource');
INSERT INTO `modx_manager_log` VALUES ('1379','1446140513','1','root','3','2','Delited link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1380','1446140522','1','root','6','2','Delited link','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('1381','1446140523','1','root','3','2','Delited link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1382','1446140585','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1383','1446140617','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1384','1446140631','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1385','1446146761','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1386','1446146773','1','root','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1387','1446146776','1','root','27','5','Unpublish document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1388','1446146786','1','root','5','5','Unpublish document 404','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1389','1446146787','1','root','3','5','Unpublish document 404','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1390','1446146791','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1391','1446146794','1','root','3','6','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1392','1446146795','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1393','1446146796','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1394','1446146797','1','root','27','5','Unpublish document 404','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1395','1446146798','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1396','1446146802','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1397','1446146803','1','root','27','5','Unpublish document 404','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1398','1446146804','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1399','1446146807','1','root','27','12','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1400','1446146816','1','root','5','12','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1401','1446146817','1','root','3','12','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1402','1446146818','1','root','27','12','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1403','1446146824','1','root','5','12','Document XML','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1404','1446146825','1','root','3','12','Document XML','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1405','1446146828','1','root','27','24','Duplicate of document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1406','1446146846','1','root','5','24','Duplicate of PDF','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1407','1446146848','1','root','3','24','Duplicate of PDF','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1408','1446146878','1','root','27','14','Delited empty folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1409','1446146878','1','root','27','14','Delited empty folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1410','1446146878','1','root','27','14','Delited empty folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1411','1446146879','1','root','27','14','Delited empty folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1412','1446147299','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1413','1446147335','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1414','1446147645','1','root','3','7','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1415','1446147695','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1416','1446150018','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1417','1446150086','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1418','1446150087','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1419','1446150132','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1420','1446150167','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1421','1446150183','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1422','1446150203','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1423','1446150220','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1424','1446150283','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1425','1446150315','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1426','1446150330','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1427','1446150367','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1428','1446150395','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1429','1446150549','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1430','1446150555','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1431','1446150581','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1432','1446150582','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1433','1446150583','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1434','1446150584','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1435','1446150585','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1436','1446150586','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1437','1446150588','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1438','1446150589','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1439','1446150590','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1440','1446150609','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1441','1446150612','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1442','1446150623','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1443','1446150630','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1444','1446150634','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1445','1446150648','1','root','27','25','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1446','1446150663','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1447','1446196885','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1448','1446196915','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1449','1446196920','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1450','1446200614','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1451','1446200616','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1452','1446200617','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1453','1446200933','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1454','1446201352','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1455','1446201929','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1456','1446201953','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1457','1446201975','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1458','1446203565','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1459','1446203566','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1460','1446208477','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1461','1446209017','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1462','1446209018','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1463','1446209019','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1464','1446209033','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('1465','1446209036','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('1466','1446209040','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('1467','1446209094','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1468','1446209122','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1469','1446209129','1','root','5','7','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1470','1446209130','1','root','3','7','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1471','1446209132','1','root','27','7','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1472','1446209144','1','root','5','7','Plain text','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1473','1446209145','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1474','1446209287','1','root','27','16','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1475','1446209298','1','root','5','16','RSS','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1476','1446209298','1','root','27','16','RSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1477','1446209307','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1478','1446209324','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1479','1446209332','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1480','1446209600','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1481','1446209605','1','root','3','6','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1482','1446209611','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1483','1446209619','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1484','1446209621','1','root','5','13','Delited document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1485','1446209622','1','root','3','13','Delited document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1486','1446209630','1','root','27','5','Unpublish document 404','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1487','1446209632','1','root','27','5','Unpublish document 404','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1488','1446209633','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1489','1446209634','1','root','27','5','Unpublish document 404','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1490','1446209635','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1491','1446209647','1','root','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1492','1446209659','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1493','1446209665','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1494','1446209670','1','root','3','13','Delited document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1495','1446209674','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1496','1446209764','1','root','27','25','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1497','1446209769','1','root','5','25','Duplicate of link folder','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1498','1446209770','1','root','3','25','Duplicate of link folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1499','1446209771','1','root','27','25','Duplicate of link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1500','1446209773','1','root','27','26','New inner unpublished resource','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1501','1446209774','1','root','27','25','Duplicate of link folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1502','1446209780','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1503','1446210131','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1504','1446210137','1','root','5','7','Plain text','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1505','1446210138','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1506','1446210139','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1507','1446210146','1','root','5','7','Plain text','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1508','1446210147','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1509','1446210148','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1510','1446210257','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1511','1446210269','1','root','3','6','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1512','1446210270','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1513','1446210286','1','root','5','7','Plain text','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1514','1446210286','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1515','1446210291','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1516','1446210310','1','root','5','7','Plain text','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1517','1446210312','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1518','1446210313','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1519','1446210315','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1520','1446211216','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1521','1446211220','1','root','5','13','Delited document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1522','1446211221','1','root','3','13','Delited document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1523','1446211222','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1524','1446211226','1','root','5','6','Document','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1525','1446211227','1','root','3','6','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1526','1446211229','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1527','1446211229','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1528','1446211233','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1529','1446211236','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1530','1446211239','1','root','27','6','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1531','1446211246','1','root','5','6','Document 503','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1532','1446211247','1','root','3','6','Document 503','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1533','1446211266','1','root','27','26','New inner unpublished resource','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1534','1446211272','1','root','3','26','New inner unpublished resource','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1535','1446211281','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1536','1446211306','1','root','5','-','Document word','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1537','1446211307','1','root','3','27','Document word','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1538','1446211310','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1539','1446211322','1','root','5','-','Document excel','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1540','1446211323','1','root','3','28','Document excel','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1541','1446211327','1','root','27','27','Document word','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1542','1446211334','1','root','5','27','Document WORD','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1543','1446211335','1','root','3','27','Document WORD','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1544','1446211335','1','root','27','28','Document excel','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1545','1446211343','1','root','5','28','Document EXCEL','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1546','1446211344','1','root','3','28','Document EXCEL','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1547','1446211345','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1548','1446211347','1','root','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1549','1446211348','1','root','3','28','Document EXCEL','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1550','1446211353','1','root','27','16','RSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1551','1446211357','1','root','27','5','Unpublish document 404','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1552','1446211358','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1553','1446211361','1','root','27','6','Document 503','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1554','1446211362','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1555','1446211364','1','root','27','12','Document XML','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1556','1446211364','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1557','1446211365','1','root','27','12','Document XML','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1558','1446211366','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1559','1446211367','1','root','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1560','1446211370','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1561','1446211464','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1562','1446211571','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1563','1446211575','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1564','1446211764','1','root','27','18','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1565','1446211767','1','root','3','18','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1566','1446211796','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1567','1446211801','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1568','1446211803','1','root','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1569','1446211812','1','root','3','28','Document EXCEL','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1570','1446211868','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1571','1446211874','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1572','1446211930','1','root','27','12','Document XML','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1573','1446211932','1','root','3','12','Document XML','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1574','1446211950','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1575','1446212039','1','root','27','7','Plain text','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1576','1446212044','1','root','3','7','Plain text','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1577','1446212119','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1578','1446213791','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1579','1446213808','1','root','5','-','JS','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1580','1446213809','1','root','3','29','JS','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1581','1446213811','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1582','1446213818','1','root','5','-','CSS','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1583','1446213820','1','root','3','30','CSS','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1584','1446215035','1','root','27','16','RSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1585','1446215040','1','root','5','16','RSS','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1586','1446215041','1','root','3','16','RSS','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1587','1446215589','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1588','1446216177','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1589','1446216210','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1590','1446216333','1','root','27','6','Document 503','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1591','1446216338','1','root','5','6','Document 403','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1592','1446216339','1','root','3','6','Document 403','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1593','1446216972','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1594','1446221442','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1595','1446221449','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1596','1446221453','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1597','1446221465','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1598','1446221470','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1599','1446221477','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1600','1446221480','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1601','1446221740','1','root','27','16','RSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1602','1446221743','1','root','3','16','RSS','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1603','1446221893','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1604','1446221896','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1605','1446222558','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1606','1446223712','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1607','1446223736','1','root','27','15','Empty Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1608','1446223872','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1609','1446225034','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1610','1446225582','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1611','1446225584','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1612','1446225586','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1613','1446225587','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1614','1446225589','1','root','27','19','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1615','1446225590','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1616','1446225591','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1617','1446225592','1','root','27','19','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1618','1446225592','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1619','1446226840','1','root','27','29','JS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1620','1446226970','1','root','27','29','JS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1621','1446226977','1','root','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1622','1446226978','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1623','1446226985','1','root','27','24','Duplicate of PDF','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1624','1446227458','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1625','1446227465','1','root','3','27','Document WORD','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1626','1446228779','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1627','1446229880','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1628','1446229887','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1629','1446229909','1','root','27','18','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1630','1446229912','1','root','27','4','Document html','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1631','1446229924','1','root','5','4','json','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1632','1446229925','1','root','3','4','json','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1633','1446229930','1','root','27','4','json','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1634','1446229932','1','root','5','4','json','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1635','1446229933','1','root','3','4','json','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1636','1446229943','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1637','1446229978','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1638','1446229980','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1639','1446229992','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1640','1446229993','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1641','1446230011','1','root','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1642','1446230016','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1643','1446230017','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1644','1446230031','1','root','27','29','JS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1645','1446230033','1','root','27','30','CSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1646','1446230035','1','root','3','30','CSS','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1647','1446230040','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1648','1446230042','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1649','1446230044','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1650','1446230046','1','root','3','1','Home','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1651','1446230048','1','root','27','8','Link Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1652','1446230049','1','root','3','8','Link Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1653','1446230051','1','root','27','14','Delited empty folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1654','1446230226','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1655','1446230227','1','root','27','16','RSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1656','1446230229','1','root','27','13','Delited document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1657','1446230230','1','root','27','12','Document XML','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1658','1446230231','1','root','27','10','Link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1659','1446230236','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1660','1446230244','1','root','27','19','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1661','1446230297','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1662','1446230299','1','root','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1663','1446230301','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1664','1446230303','1','root','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1665','1446230303','1','root','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1666','1446230306','1','root','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1667','1446230318','1','root','3','23','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1668','1446230321','1','root','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1669','1446230325','1','root','3','5','Unpublish document 404','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1670','1446230331','1','root','3','24','Duplicate of PDF','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1671','1446230334','1','root','3','24','Duplicate of PDF','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1672','1446230336','1','root','3','24','Duplicate of PDF','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1673','1446230342','1','root','3','24','Duplicate of PDF','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1674','1446234812','1','root','27','29','JS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1675','1446235425','1','root','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('1676','1446235427','1','root','5','-','Новый ресурс','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1677','1446235428','1','root','3','31','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1678','1446235435','1','root','27','31','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1679','1446235439','1','root','5','31','Новый ресурс','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1680','1446235440','1','root','3','31','Новый ресурс','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1681','1446235515','1','root','27','31','Новый ресурс','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1682','1446235521','1','root','5','31','Not in menu','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1683','1446235522','1','root','3','31','Not in menu','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1684','1446235833','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1685','1446235837','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1686','1446236527','1','root','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1687','1446236533','1','root','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('1688','1446236555','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1689','1446236559','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1690','1446236660','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1691','1446236676','1','root','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1692','1446236681','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1693','1446236682','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1694','1446236692','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1695','1446237662','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1696','1446237663','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1697','1446237665','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1698','1446237666','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1699','1446237676','1','root','32','1','root','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1700','1446237676','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1701','1446237682','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1702','1446237683','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1703','1446237688','1','root','32','1','root','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1704','1446237688','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1705','1446237898','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1706','1446237900','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1707','1446237962','1','root','32','1','root','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1708','1446237962','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1709','1446238346','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1710','1446238349','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1711','1446238351','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1712','1446239918','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1713','1446239924','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1714','1446240017','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1715','1446240018','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1716','1446240019','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('1717','1446240020','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1718','1446240021','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1719','1446240021','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1720','1446240031','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1721','1446240041','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1722','1446240042','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1723','1446240042','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('1724','1446240098','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1725','1446240099','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1726','1446240100','1','root','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1727','1446240103','1','root','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1728','1446240104','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1729','1446240143','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1730','1446240146','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1731','1446240147','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1732','1446240220','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1733','1446240220','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1734','1446240239','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1735','1446240342','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1736','1446240350','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1737','1446240566','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1738','1446240567','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1739','1446240569','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1740','1446240578','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1741','1446240598','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1742','1446240610','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1743','1446240657','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1744','1446240817','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1745','1446240838','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1746','1446240855','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1747','1446240860','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1748','1446240891','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1749','1446240953','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1750','1446240965','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1751','1446240975','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1752','1446240985','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1753','1446240998','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1754','1446241013','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1755','1446241023','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1756','1446241098','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1757','1446241120','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1758','1446241121','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1759','1446241122','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1760','1446241135','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1761','1446241158','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1762','1446241221','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1763','1446241241','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1764','1446241267','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1765','1446241285','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1766','1446241305','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1767','1446241369','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1768','1446241392','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1769','1446241426','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1770','1446241473','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1771','1446241482','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1772','1446241519','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1773','1446241522','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1774','1446243777','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1775','1446245278','1','root','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('1776','1446245281','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1777','1446246774','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1778','1446246784','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1779','1446246786','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1780','1446246788','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1781','1446247121','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1782','1446247125','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1783','1446247134','1','root','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('1784','1446247137','1','root','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1785','1446247144','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1786','1446247146','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1787','1446247147','1','root','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('1788','1446247150','1','root','67','-','-','Removing locks');
INSERT INTO `modx_manager_log` VALUES ('1789','1446247154','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1790','1446247158','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1791','1446247167','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1792','1446247201','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1793','1446247470','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1794','1446247472','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1795','1446247509','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1796','1446247544','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1797','1446247571','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1798','1446247581','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1799','1446247583','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1800','1446247585','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1801','1446247586','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1802','1446247588','1','root','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1803','1446247591','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1804','1446247594','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1805','1446247997','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1806','1446248070','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1807','1446248120','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1808','1446248227','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1809','1446248239','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1810','1446248260','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1811','1446248297','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1812','1446248298','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1813','1446248322','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1814','1446248367','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1815','1446248461','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1816','1446248527','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1817','1446248562','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1818','1446248609','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1819','1446248657','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1820','1446248670','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1821','1446248672','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1822','1446248673','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1823','1446248676','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1824','1446248769','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1825','1446248772','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1826','1446248786','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1827','1446248789','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1828','1446248791','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1829','1446248794','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1830','1446248947','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1831','1446249076','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1832','1446249167','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1833','1446249171','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1834','1446249174','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1835','1446249180','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1836','1446249181','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1837','1446249182','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1838','1446249184','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1839','1446249221','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1840','1446249266','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1841','1446249369','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1842','1446249371','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1843','1446249374','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1844','1446249377','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1845','1446249383','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1846','1446249465','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1847','1446249497','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1848','1446249497','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1849','1446249503','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1850','1446249527','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1851','1446249532','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1852','1446249534','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1853','1446249536','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1854','1446249581','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1855','1446249583','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1856','1446249585','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1857','1446249657','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1858','1446249659','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1859','1446249663','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1860','1446249664','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1861','1446249687','1','root','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1862','1446249689','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1863','1446249702','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1864','1446249874','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1865','1446249905','1','root','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1866','1446249905','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1867','1446249908','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1868','1446249915','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1869','1446249936','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1870','1446249955','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1871','1446249960','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1872','1446249962','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1873','1446249966','1','root','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1874','1446249967','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1875','1446249968','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1876','1446250184','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1877','1446250205','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1878','1446250207','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1879','1446250210','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1880','1446250285','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1881','1446250376','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1882','1446250397','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1883','1446250426','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1884','1446250467','1','root','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1885','1446250468','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1886','1446250470','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1887','1446250489','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1888','1446250505','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1889','1446250521','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1890','1446250542','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1891','1446250558','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1892','1446250641','1','root','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1893','1446250643','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1894','1446250700','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1895','1446250715','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1896','1446250779','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1897','1446250853','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1898','1446250913','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1899','1446250945','1','root','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('1900','1446250951','1','root','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1901','1446251183','1','root','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1902','1446251190','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1903','1446251192','1','root','11','-','Новый пользователь','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('1904','1446251270','1','root','11','-','Новый пользователь','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('1905','1446251305','1','root','11','-','Новый пользователь','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('1906','1446251312','1','root','11','-','Новый пользователь','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('1907','1446251320','1','root','32','-','dmi3yy','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1908','1446251333','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1909','1446251335','1','root','12','1','root','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1910','1446251345','1','root','32','1','a-sharapov','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1911','1446251345','1','root','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1912','1446251349','1','root','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1913','1446251358','2','dmi3yy','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1914','1446251363','2','dmi3yy','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1915','1446251367','2','dmi3yy','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1916','1446251369','2','dmi3yy','12','2','dmi3yy','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1917','1446251375','2','dmi3yy','32','2','dmi3yy','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1918','1446251375','2','dmi3yy','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1919','1446251439','2','dmi3yy','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1920','1446251441','2','dmi3yy','12','2','dmi3yy','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1921','1446251454','2','dmi3yy','32','2','dmi3yy','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1922','1446251454','2','dmi3yy','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1923','1446251462','2','dmi3yy','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1924','1446251464','2','dmi3yy','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1925','1446251468','2','dmi3yy','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1926','1446251577','2','dmi3yy','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1927','1446251581','2','dmi3yy','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1928','1446251582','2','dmi3yy','12','2','dmi3yy','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1929','1446251599','2','dmi3yy','32','2','dmi3yy','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1930','1446251599','2','dmi3yy','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1931','1446251657','2','dmi3yy','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1932','1446251666','2','dmi3yy','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1933','1446251674','1','a-sharapov','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1934','1446251683','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1935','1446251751','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1936','1446251764','1','a-sharapov','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1937','1446251766','1','a-sharapov','27','2','Delited link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1938','1446251769','1','a-sharapov','27','6','Document 403','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1939','1446251776','1','a-sharapov','3','6','Document 403','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1940','1446251778','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1941','1446251783','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1942','1446251788','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1943','1446251796','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1944','1446251799','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1945','1446251810','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1946','1446251811','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1947','1446251811','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1948','1446257942','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1949','1446257943','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1950','1446257945','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1951','1446257957','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1952','1446258792','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1953','1446258795','1','a-sharapov','9','-','-','Viewing help');
INSERT INTO `modx_manager_log` VALUES ('1954','1446258798','1','a-sharapov','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('1955','1446258802','1','a-sharapov','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('1956','1446258805','1','a-sharapov','9','-','-','Viewing help');
INSERT INTO `modx_manager_log` VALUES ('1957','1446258805','1','a-sharapov','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('1958','1446258807','1','a-sharapov','9','-','-','Viewing help');
INSERT INTO `modx_manager_log` VALUES ('1959','1446258818','1','a-sharapov','9','-','-','Viewing help');
INSERT INTO `modx_manager_log` VALUES ('1960','1446258820','1','a-sharapov','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('1961','1446258822','1','a-sharapov','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('1962','1446258825','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1963','1446258831','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1964','1446258838','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1965','1446258917','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1966','1446259456','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1967','1446259702','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1968','1446259708','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1969','1446259711','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1970','1446259758','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1971','1446259769','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1972','1446259803','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1973','1446259805','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1974','1446259806','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1975','1446259808','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1976','1446259864','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1977','1446259874','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1978','1446259880','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1979','1446260013','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1980','1446260016','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1981','1446260039','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1982','1446260042','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1983','1446260047','1','a-sharapov','27','6','Document 403','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1984','1446260049','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1985','1446260085','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1986','1446260091','1','a-sharapov','27','6','Document 403','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1987','1446260096','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1988','1446260135','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1989','1446260210','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1990','1446260213','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1991','1446260239','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1992','1446260244','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1993','1446260245','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1994','1446260247','1','a-sharapov','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1995','1446260249','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1996','1446260278','1','a-sharapov','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1997','1446260279','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1998','1446260293','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('1999','1446260310','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2000','1446260328','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2001','1446260336','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2002','1446260337','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2003','1446260340','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2004','1446260345','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2005','1446260347','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2006','1446260417','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2007','1446260419','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2008','1446260421','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2009','1446260423','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2010','1446260428','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2011','1446260468','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2012','1446260470','1','a-sharapov','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2013','1446260475','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2014','1446260477','1','a-sharapov','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('2015','1446260480','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2016','1446260482','1','a-sharapov','101','-','Новый плагин','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('2017','1446260494','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2018','1446260505','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2019','1446260507','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2020','1446260510','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2021','1446260514','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2022','1446261153','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2023','1446261550','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2024','1446261568','1','a-sharapov','93','-','-','Backup Manager');
INSERT INTO `modx_manager_log` VALUES ('2025','1446261573','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2026','1446261615','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2027','1446261653','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2028','1446261931','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2029','1446261986','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2030','1446262020','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2031','1446262021','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2032','1446262211','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2033','1446262225','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2034','1446262233','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2035','1446262269','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2036','1446262270','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2037','1446262298','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2038','1446262309','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2039','1446262327','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2040','1446262343','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2041','1446262353','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2042','1446262354','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2043','1446262355','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2044','1446262355','1','a-sharapov','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2045','1446262357','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2046','1446262358','1','a-sharapov','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2047','1446262360','1','a-sharapov','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('2048','1446262361','1','a-sharapov','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('2049','1446262365','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2050','1446262371','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2051','1446262404','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2052','1446262431','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2053','1446262440','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2054','1446262486','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2055','1446262652','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2056','1446262677','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2057','1446262725','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2058','1446262728','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2059','1446262776','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2060','1446262780','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2061','1446262939','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2062','1446262985','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2063','1446262985','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2064','1446263026','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2065','1446263038','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2066','1446263047','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2067','1446263072','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2068','1446263104','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2069','1446263144','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2070','1446263148','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2071','1446263190','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2072','1446263210','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2073','1446263262','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2074','1446263278','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2075','1446263312','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2076','1446263372','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2077','1446263390','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2078','1446263417','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2079','1446263418','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2080','1446263477','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2081','1446263500','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2082','1446263517','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2083','1446263544','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2084','1446263620','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2085','1446263630','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2086','1446263655','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2087','1446263672','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2088','1446263701','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2089','1446263714','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2090','1446263727','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2091','1446263748','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2092','1446263753','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2093','1446263762','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2094','1446263802','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2095','1446263819','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2096','1446263856','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2097','1446263902','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2098','1446263914','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2099','1446263959','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2100','1446264036','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2101','1446264065','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2102','1446264066','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2103','1446264068','1','a-sharapov','301','1','Мета дескрипшин','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2104','1446264127','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2105','1446264132','1','a-sharapov','23','-','Новый сниппет','Creating a new Snippet');
INSERT INTO `modx_manager_log` VALUES ('2106','1446264139','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2107','1446264147','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2108','1446264151','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2109','1446264162','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2110','1446264162','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2111','1446264163','1','a-sharapov','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2112','1446264164','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2113','1446264164','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2114','1446264170','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2115','1446264170','1','a-sharapov','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('2116','1446264171','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2117','1446264173','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2118','1446264182','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2119','1446264187','1','a-sharapov','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('2120','1446264190','1','a-sharapov','9','-','-','Viewing help');
INSERT INTO `modx_manager_log` VALUES ('2121','1446264195','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2122','1446301932','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2123','1446302835','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2124','1446302869','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2125','1446302900','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2126','1446302912','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2127','1446302921','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2128','1446302958','1','a-sharapov','100','-','-','Previewing resource');
INSERT INTO `modx_manager_log` VALUES ('2129','1446306674','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2130','1446314538','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2131','1446314541','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2132','1446314543','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2133','1446314545','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2134','1446314547','1','a-sharapov','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('2135','1446314586','1','a-sharapov','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2136','1446315333','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2137','1446315337','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2138','1446315341','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2139','1446315356','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2140','1446315358','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2141','1446317285','1','a-sharapov','64','-','-','Removing deleted content');
INSERT INTO `modx_manager_log` VALUES ('2142','1446317890','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2143','1446317891','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2144','1446317894','1','a-sharapov','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2145','1446317901','1','a-sharapov','11','-','Новый пользователь','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('2146','1446317903','1','a-sharapov','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2147','1446317913','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2148','1446317946','1','a-sharapov','27','15','Empty Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2149','1446317948','1','a-sharapov','3','15','Empty Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2150','1446493153','1','a-sharapov','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('2151','1446493302','1','a-sharapov','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('2152','1446493303','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2153','1446493304','1','a-sharapov','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2154','1446493304','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2155','1446493305','1','a-sharapov','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2156','1446493306','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2157','1446493306','1','a-sharapov','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2158','1446493306','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2159','1446493307','1','a-sharapov','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2160','1446493307','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2161','1446493308','1','a-sharapov','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2162','1446493308','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2163','1446493312','1','a-sharapov','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('2164','1446493475','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2165','1446493476','1','a-sharapov','13','-','-','Viewing logging');
INSERT INTO `modx_manager_log` VALUES ('2166','1446493477','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2167','1446493480','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2168','1446493523','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2169','1446497972','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2170','1446499599','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2171','1446499605','1','a-sharapov','27','15','Empty Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2172','1446499627','1','a-sharapov','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('2173','1446499628','1','a-sharapov','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2174','1446499633','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2175','1446499635','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2176','1446499636','1','a-sharapov','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('2177','1446499637','1','a-sharapov','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('2178','1446504623','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2179','1446504628','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2180','1446504630','1','a-sharapov','22','1','alterTitle','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('2181','1446504643','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2182','1446504646','1','a-sharapov','19','-','Новый шаблон','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('2183','1446504649','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2184','1446504651','1','a-sharapov','301','1','Мета дескрипшин','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('2185','1446504657','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2186','1446504690','1','a-sharapov','27','19','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2187','1446504695','1','a-sharapov','6','19','Duplicate of link','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('2188','1446504697','1','a-sharapov','3','19','Duplicate of link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2189','1446628630','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2190','1446628634','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2191','1446630266','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2192','1453301037','1','a-sharapov','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2193','1453301072','1','a-sharapov','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2194','1453301079','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2195','1453301081','1','a-sharapov','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2196','1453301087','1','a-sharapov','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('2197','1453301090','1','a-sharapov','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2198','1453301095','1','a-sharapov','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('2199','1453301109','1','a-sharapov','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('2200','1453301113','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2201','1453301133','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2202','1453301133','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2203','1453301133','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2204','1453301133','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2205','1453301136','1','a-sharapov','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2206','1453301142','1','a-sharapov','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2207','1453301168','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2208','1453301187','1','a-sharapov','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('2209','1453301237','1','a-sharapov','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2210','1453301244','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2211','1453301245','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2212','1453301250','1','a-sharapov','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2213','1453301251','1','a-sharapov','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2214','1453301253','1','a-sharapov','27','15','Empty Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2215','1453301255','1','a-sharapov','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2216','1453301256','1','a-sharapov','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2217','1453301257','1','a-sharapov','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2218','1453301258','1','a-sharapov','27','28','Document EXCEL','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2219','1453301259','1','a-sharapov','27','27','Document WORD','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2220','1453301260','1','a-sharapov','27','12','Document XML','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2221','1453301264','1','a-sharapov','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2222','1453301265','1','a-sharapov','27','1','Home','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2223','1453301269','1','a-sharapov','27','30','CSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2224','1453301270','1','a-sharapov','27','30','CSS','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2225','1453301271','1','a-sharapov','27','31','Not in menu','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2226','1453301272','1','a-sharapov','27','31','Not in menu','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2227','1453301288','1','a-sharapov','27','19','Duplicate of link','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2228','1453301291','1','a-sharapov','3','19','Duplicate of link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2229','1453301294','1','a-sharapov','51','19','Duplicate of link','Moving resource');
INSERT INTO `modx_manager_log` VALUES ('2230','1453301296','1','a-sharapov','3','19','Duplicate of link','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2231','1453301319','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2232','1453301324','1','a-sharapov','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('2233','1453301324','1','a-sharapov','4','-','Новый ресурс','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('2234','1453301325','1','a-sharapov','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('2235','1453301326','1','a-sharapov','72','-','Новый ресурс','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('2236','1453301434','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2237','1454488897','1','a-sharapov','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2238','1454488905','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2239','1454488909','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2240','1454488915','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2241','1454488937','1','a-sharapov','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2242','1454488939','1','a-sharapov','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2243','1454488947','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2244','1454489081','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2245','1454489082','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2246','1454489087','1','a-sharapov','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('2247','1454489089','1','a-sharapov','70','-','-','Viewing site schedule');
INSERT INTO `modx_manager_log` VALUES ('2248','1454490470','1','a-sharapov','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2249','1454490475','1','a-sharapov','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2250','1454493467','1','a-sharapov','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2251','1454493470','1','a-sharapov','27','3','Folder','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2252','1454493471','1','a-sharapov','3','3','Folder','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2253','1454493479','1','a-sharapov','27','18','Document','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2254','1454493481','1','a-sharapov','3','18','Document','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2255','1472564462','1','a-sharapov','58','-','MODX','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2256','1472564468','1','a-sharapov','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('2257','1472564472','1','a-sharapov','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('2258','1472564473','1','a-sharapov','93','-','-','Backup Manager');

# --------------------------------------------------------

#
# Table structure for table `modx_manager_users`
#

DROP TABLE IF EXISTS `modx_manager_users`;
CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `modx_manager_users`
#

INSERT INTO `modx_manager_users` VALUES ('1','a-sharapov','uncrypt>7fc120cab5336814c5e817e9cd2f2ad915411916');
INSERT INTO `modx_manager_users` VALUES ('2','dmi3yy','uncrypt>d356505dfedd5ed132de21ab54770b0a9aee5ba5');

# --------------------------------------------------------

#
# Table structure for table `modx_member_groups`
#

DROP TABLE IF EXISTS `modx_member_groups`;
CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_access`
#

DROP TABLE IF EXISTS `modx_membergroup_access`;
CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_names`
#

DROP TABLE IF EXISTS `modx_membergroup_names`;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_content`
#

DROP TABLE IF EXISTS `modx_site_content`;
CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `modx_site_content`
#

INSERT INTO `modx_site_content` VALUES ('1','document','text/html','Home','','','index','','1','0','0','0','0','','','1','3','0','1','1','1','1130304721','1','1446052602','0','0','0','1130304721','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('3','document','text/html','Folder','','','novyj-resurs1','','1','0','0','0','1','','','1','3','2','1','1','1','1445803778','1','1446041632','0','0','0','1445803778','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('17','reference','text/html','Link folder','','','sdfnalskdfhbsjakdfbasfd','','1','0','0','3','1','','http://','1','3','0','1','1','1','1445868417','1','1446041638','0','0','0','1445868417','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('4','document','application/json','json','','','novyj-resurs2','','1','0','0','8','0','','','1','3','3','1','1','1','1445808198','1','1446229932','0','0','0','1445808198','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('5','document','text/html','Unpublish document 404','','','novyj-resurs3','','0','0','0','0','0','','','1','3','4','1','1','1','1445808201','1','1446146786','0','0','0','0','0','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('6','document','text/html','Document 403','','','novyj-resurs4','','1','0','0','0','0','','','1','3','5','1','1','1','1445808204','1','1446216338','0','0','0','1445808204','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('7','document','text/plain','Plain text','','','novyj-resurs5','','1','0','0','0','0','','','1','3','6','1','1','1','1445808210','1','1446210310','0','0','0','1445808210','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('8','reference','text/html','Link Folder','','','novaya-veb-ssylka','','1','0','0','0','1','','http://','1','3','7','1','1','1','1445808215','1','1446047546','0','0','0','1445808215','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('10','reference','text/html','Link','','','novaya-veb-ssylka2','','1','0','0','0','0','','http://','1','3','9','1','1','1','1445808220','1','1446047601','0','0','0','1445808220','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('18','document','text/html','Document','','','novyj-resurs11','','1','0','0','8','0','','','1','3','0','1','1','1','1445901388','1','1446047596','0','0','0','1445901388','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('12','document','text/xml','Document XML','','','novyj-resurs6','','1','0','0','0','0','','','1','3','11','1','1','1','1445809215','1','1446146824','0','0','0','1445809215','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('15','document','text/html','Empty Folder','','','novyj-resurs9','','1','0','0','0','1','','','1','3','14','1','1','1','1445809223','1','1446047627','0','0','0','1445809223','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('16','document','application/rss+xml','RSS','','','novyj-resurs10','','1','0','0','0','0','','','1','3','15','1','1','1','1445809226','1','1446215040','0','0','0','1445809226','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('19','reference','text/html','Duplicate of link','','','duplicate-of-document','','0','0','0','0','0','','http://','1','3','1','1','1','1','1445908871','1','1446139733','1','1446504695','1','1445803767','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('20','document','text/html','Folder','','','novyj-resurs12','','1','0','0','17','1','','','1','3','0','1','1','1','1445942403','1','1446041669','0','0','0','1445942403','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('21','document','text/html','Folder','','','novyj-resurs13','','1','0','0','20','1','','','1','3','0','1','1','1','1445942414','1','1446041679','0','0','0','1445942414','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('22','document','text/html','Document','','','novyj-resurs14','','1','0','0','21','0','','','1','3','0','1','1','1','1445942432','1','1446047496','0','0','0','1445942432','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('23','document','text/html','Document','','','novyj-resurs15','','1','0','0','3','0','','','1','3','1','1','1','1','1445984666','1','1446047507','0','0','0','1445984666','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('24','document','application/pdf','Duplicate of PDF','','','duplicate-of-document1','','0','0','0','0','0','','','1','3','3','1','1','1','1446038537','1','1446146846','0','0','0','1445808198','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('25','reference','text/html','Duplicate of link folder','','','duplicate-of-document2','','0','0','0','0','1','','http://','1','3','7','1','1','1','1446038548','1','1446209769','0','0','0','1445808215','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('26','document','text/html','New inner unpublished resource','','','new-inner-resource','','0','0','0','25','0','','','1','3','0','1','1','1','1446038548','1','1446139794','0','0','0','1445901388','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('27','document','application/vnd.ms-word','Document WORD','','','document-word','','1','0','0','0','0','','','1','3','16','1','1','1','1446211306','1','1446211334','0','0','0','1446211306','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('28','document','application/vnd.ms-excel','Document EXCEL','','','document-excel','','1','0','0','0','0','','','1','3','17','1','1','1','1446211322','1','1446211343','0','0','0','1446211322','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('29','document','text/javascript','JS','','','js','','1','0','0','0','0','','','1','3','18','1','1','1','1446213808','1','1446213808','0','0','0','1446213808','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('30','document','text/css','CSS','','','css','','1','0','0','0','0','','','1','3','19','1','1','1','1446213818','1','1446213818','0','0','0','1446213818','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('31','document','text/html','Not in menu','','','novyj-resurs16','','1','0','0','0','0','','','1','3','20','1','1','1','1446235427','1','1446235521','0','0','0','1446235427','1','','0','0','0','0','0','0','1','1');

# --------------------------------------------------------

#
# Table structure for table `modx_site_content_metatags`
#

DROP TABLE IF EXISTS `modx_site_content_metatags`;
CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

#
# Dumping data for table `modx_site_content_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_htmlsnippets`
#

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `modx_site_htmlsnippets`
#

INSERT INTO `modx_site_htmlsnippets` VALUES ('1','eFeedbackForm','eFeedbackForm Шаблон формы обратной связи','0','3','0','<p><span style=\"color:#900;\">[+validationmessage+]</span></p>\n\n<form  class=\"eform\" method=\"post\" action=\"[~[*id*]~]\">\n\n<input type=\"hidden\" name=\"formid\" value=\"feedbackForm\" />\n<input value=\"\" name=\"special\" class=\"special\" type=\"text\" eform=\"Спец:date:0\"  style=\"display:none;\" />\n<p>\n    <input type=\"text\" name=\"name\" id=\"name\" class=\"grid_3\" value=\"\"  eform=\"Имя:string:1\"/>\n    <label for=\"name\">Ваше имя</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"email\" id=\"email\" class=\"grid_3\" value=\"\" eform=\"E-mail:email:1\" />\n    <label for=\"email\">Ваш E-mail</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"phone\" id=\"subject\" class=\"grid_3\" value=\"\" eform=\"Номер телефона:string:1\"/>\n    <label for=\"subject\">Номер телефона</label>\n</p>\n            \n<p>\n    <textarea name=\"comments\" id=\"message\" class=\"grid_6\" cols=\"50\" rows=\"10\" eform=\"Текст сообщения:string:1\"></textarea>\n</p>\n<p>Введите код с картинки: <br />\n    <input type=\"text\" class=\"ver\" name=\"vericode\" /><img class=\"feed\" src=\"[+verimageurl+]\" alt=\"Введите код\" />\n</p>            \n<p>\n    <input type=\"submit\" name=\"submit\" class=\"subeform grid_2\" value=\"Отправить сообщение\"/>\n </p>\n\n</form>\n\n\n \n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('2','eFeedbackReport','eFeedbackReport  шаблон отправки на почту','0','3','0','<p>Прислано человеком, с именем: [+name+] . Подробности ниже:</p>\n<table>\n<tr valign=\"top\"><td>Имя:</td><td>[+name+]</td></tr>\n<tr valign=\"top\"><td>E-mail:</td><td>[+email+]</td></tr>\n<tr valign=\"top\"><td>Номер телефона:</td><td>[+phone+]</td></tr>\n<tr valign=\"top\"><td>Текст сообщения:</td><td>[+comments+]</td></tr>\n</table>\n<p>Можно использовать ссылку для ответа: <a href=\"mailto:[+email+]?subject=RE:[+subject+]\">[+email+]</a></p>\n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('3','feedback','форма обратной связи','0','3','0','[!eForm? &formid=`feedbackForm` &subject=`Сообщение с сайта` &tpl=`eFeedbackForm` &report=`eFeedbackReport` &gotoid=`[*id*]` &vericode=`1` !] \n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('4','footer','низ сайта','0','4','0','<!--  Mem : [^m^], MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document from [^s^]. -->','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('5','header','шапка','0','4','0','<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" /> \n<title>[*titl*]</title>\n[*noIndex*]\n<meta name=\"keywords\" content=\"[*keyw*]\" />\n<meta name=\"description\" content=\"[*desc*]\" />\n<base href=\"[(site_url)]\"/>\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('6','mm_rules','Default ManagerManager rules.','0','5','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n\nmm_widget_showimagetvs(); // Показываем превью ТВ\n\nmm_renameField(\'log\', \'Дочерние ресурсы отображаются в дереве\');\nmm_changeFieldHelp(\'log\', \'Это поле используется для папок с большим числом вложенных страниц\');\n\nmm_createTab(\'Для SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Изображения\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n\n//mm_widget_evogallery(1, Галерея, \'1,2,3\', 3);   // подключаем галерею \n//mm_galleryLink($fields, $roles, $templates, $moduleid);\n//mm_widget_evogallery($moduleid, $title, $roles, $templates);\n','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_keywords`
#

DROP TABLE IF EXISTS `modx_site_keywords`;
CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

#
# Dumping data for table `modx_site_keywords`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_metatags`
#

DROP TABLE IF EXISTS `modx_site_metatags`;
CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

#
# Dumping data for table `modx_site_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_access`
#

DROP TABLE IF EXISTS `modx_site_module_access`;
CREATE TABLE `modx_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `modx_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_depobj`
#

DROP TABLE IF EXISTS `modx_site_module_depobj`;
CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `modx_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_modules`
#

DROP TABLE IF EXISTS `modx_site_modules`;
CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `modx_site_modules`
#

INSERT INTO `modx_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','6','0','0','','0','','0','0','docman435243542tf542t5t','1','','include_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');
INSERT INTO `modx_site_modules` VALUES ('2','Extras','<strong>0.1.2</strong> first repository for MODX EVO','0','0','6','0','0','','0','','0','0','store435243542tf542t5t','1','','//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');

# --------------------------------------------------------

#
# Table structure for table `modx_site_plugin_events`
#

DROP TABLE IF EXISTS `modx_site_plugin_events`;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `modx_site_plugin_events`
#

INSERT INTO `modx_site_plugin_events` VALUES ('1','23','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','29','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','41','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','47','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','73','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','34','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','36','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','40','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','41','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','42','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','80','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','81','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','93','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','28','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','29','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','30','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','31','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','53','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','205','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','3','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','13','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','28','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','31','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','92','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','85','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','87','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','88','0');
INSERT INTO `modx_site_plugin_events` VALUES ('7','100','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_plugins`
#

DROP TABLE IF EXISTS `modx_site_plugins`;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `modx_site_plugins`
#

INSERT INTO `modx_site_plugins` VALUES ('1','CodeMirror','<strong>1.2b</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 3.13','0','6','0','$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\n\n','0','&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light; &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true','0','');
INSERT INTO `modx_site_plugins` VALUES ('2','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','6','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','');
INSERT INTO `modx_site_plugins` VALUES ('3','Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation','0','6','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','');
INSERT INTO `modx_site_plugins` VALUES ('4','ManagerManager','<strong>0.6.2</strong> Customize the MODX Manager to offer bespoke admin functions for end users.','0','6','0','// You can put your ManagerManager rules EITHER in a chunk OR in an external file - whichever suits your development style the best\n\n// To use an external file, put your rules in /assets/plugins/managermanager/mm_rules.inc.php \n// (you can rename default.mm_rules.inc.php and use it as an example)\n// The chunk SHOULD have php opening tags at the beginning and end\n\n// If you want to put your rules in a chunk (so you can edit them through the Manager),\n// create the chunk, and enter its name in the configuration tab.\n// The chunk should NOT have php tags at the beginning or end.\n\n// See also user-friendly module for editing ManagerManager configuration file ddMMEditor (http://code.divandesign.biz/modx/ddmmeditor).\n\n// ManagerManager requires jQuery 1.9.1, which is located in /assets/plugins/managermanager/js/ folder.\n\n// You don\'t need to change anything else from here onwards\n//-------------------------------------------------------\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');','0','&remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules','0','');
INSERT INTO `modx_site_plugins` VALUES ('5','Quick Manager+','<strong>1.5.6</strong> Enables QuickManager+ front end content editing support','0','6','0','// In manager\nif (isset($_SESSION[\'mgrValidated\'])) {\n\n    $show = TRUE;\n\n    if ($disabled  != \'\') {\n        $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n        if (in_array($modx->documentIdentifier, $arr)) {\n            $show = FALSE;\n        }\n    }\n\n    if ($show) {\n        // Replace [*#tv*] with QM+ edit TV button placeholders\n        if ($tvbuttons == \'true\') {\n            $e = $modx->Event;\n            if ($e->name == \'OnParseDocument\') {\n                 $output = &$modx->documentOutput;\n                 $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n                 $modx->documentOutput = $output;\n             }\n         }\n        // In manager\n        if (isset($_SESSION[\'mgrValidated\'])) {\n            include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n            $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n        }\n    }\n}','0','&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv','1','');
INSERT INTO `modx_site_plugins` VALUES ('6','TinyMCE Rich Text Editor','<strong>3.5.11</strong> Javascript WYSIWYG Editor','0','6','0','require MODX_BASE_PATH.\'assets/plugins/tinymce/plugin.tinymce.php\';\n','0','&customparams=Custom Parameters;textarea;valid_elements : \"*[*]\", &mce_formats=Block Formats;text;p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre &entity_encoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &mce_path_options=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &mce_resizing=Advanced Resizing;list;true,false;true &disabledButtons=Disabled Buttons;text; &link_list=Link List;list;enabled,disabled;enabled &webtheme=Web Theme;list;simple,editor,creative,custom;simple &webPlugins=Web Plugins;text;style,advimage,advlink,searchreplace,contextmenu,paste,fullscreen,xhtmlxtras,media &webButtons1=Web Buttons 1;text;undo,redo,selectall,|,pastetext,pasteword,|,search,replace,|,hr,charmap,|,image,link,unlink,anchor,media,|,cleanup,removeformat,|,fullscreen,code,help &webButtons2=Web Buttons 2;text;bold,italic,underline,strikethrough,sub,sup,|,|,blockquote,bullist,numlist,outdent,indent,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,|,styleprops &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;500','0','');
INSERT INTO `modx_site_plugins` VALUES ('7','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','6','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','&table_name=Trans table;list;common,russian,dutch,german,czech,utf8,utf8lowercase;russian &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;lowercase alphanumeric &remove_periods=Remove Periods;list;Yes,No;No &word_separator=Word Separator;list;dash,underscore,none;dash &override_tv=Override TV name;string;','0','');

# --------------------------------------------------------

#
# Table structure for table `modx_site_snippets`
#

DROP TABLE IF EXISTS `modx_site_snippets`;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `modx_site_snippets`
#

INSERT INTO `modx_site_snippets` VALUES ('1','alterTitle','<strong>1</strong> Pagetitle если Longtitle пуст','0','7','0','//[[alterTitle? &id = `[+id+]`]] к примеру для вывода в Ditto\n$id = isset($id) ? $id : $modx->documentIdentifier;  \n$arr = $modx->getPageInfo($id,1,\'pagetitle,longtitle\');\n$title = (strlen($arr[\"longtitle\"])>0) ? $arr[\"longtitle\"] : $arr[\"pagetitle\"]; \nreturn $title;','0','','');
INSERT INTO `modx_site_snippets` VALUES ('2','Breadcrumbs','<strong>1.0.5</strong> Configurable breadcrumb page-trail navigation','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('3','Ditto','<strong>2.1.1</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more','0','9','0','return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('4','DocInfo','<strong>1</strong> Берем любое поле из любого документа (меньше запросов по сравнению с GetField)','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('5','eForm','<strong>1.4.6</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','3','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('6','FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('7','if','<strong>1.2</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('8','phpthumb','<strong>1.2</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','9','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','');
INSERT INTO `modx_site_snippets` VALUES ('9','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('10','Wayfinder','<strong>2.0.4</strong> Completely template-driven and highly flexible menu builder','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n','0','','');

# --------------------------------------------------------

#
# Table structure for table `modx_site_templates`
#

DROP TABLE IF EXISTS `modx_site_templates`;
CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `modx_site_templates`
#

INSERT INTO `modx_site_templates` VALUES ('3','Home','','0','0','','0','{{header}}\n[*content*]\n{{footer}}','0');
INSERT INTO `modx_site_templates` VALUES ('4','MODxHost','<strong>1.0</strong> Legacy MODX Host template including dropdown menu','0','1','','0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n\n<head>\n  <title>[(site_name)] | [*pagetitle*]</title>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" />\n  <base href=\"[(site_url)]\"></base>\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/layout.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/modxmenu.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/form.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/modx.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/print.css\" type=\"text/css\" media=\"print\" />\n  <link rel=\"alternate\" type=\"application/rss+xml\" title=\"RSS 2.0\" href=\"[(site_url)][~11~]\" />\n  <script src=\"[(site_manager_url)]media/script/mootools/mootools.js\" type=\"text/javascript\"></script>\n  <script src=\"assets/templates/modxhost/drop_down_menu.js\" type=\"text/javascript\"></script>\n</head>\n<body>\n<div id=\"wrapper\">\n  <div id=\"minHeight\"></div>\n  <div id=\"outer\">\n    <div id=\"inner\">\n      <div id=\"right\">\n        <div id=\"right-inner\">\n          <h1 style=\"text-indent: -5000px;padding: 0px; margin:0px; font-size: 1px;\">[(site_name)]</h1>\n          <div id=\"sidebar\">\n            <h2>News:</h2>\n            [[Ditto? &parents=`2` &display=`2` &total=`20` &removeChunk=`Comments` &tpl=`nl_sidebar`]]\n            <div id=\"recentdocsctnr\">\n              <h2>Most Recent:</h2>\n				<a name=\"recentdocs\"></a><ul class=\"LIn_shortMode\">[[Ditto? &showInMenuOnly=\"1\" &parents=0&display=5&tpl=\'@CODE:<li><a href=\"[+url+]\" title=\"[+pagetitle+]\">[+pagetitle+]</a> <span class=\"LIn_date\">[+date+]</span> <span class=\"LIn_desc\"></span></li>\']]</ul> </div>\n            <h2>Login:</h2>\n            <div id=\"sidebarlogin\">[!WebLogin? &tpl=`WebLoginSideBar` &loginhomeid=`[(site_start)]`!]</div>\n            <h2>Meta:</h2>\n            <p><a href=\"http://validator.w3.org/check/referer\" title=\"This page validates as XHTML 1.0 Transitional\">Valid <abbr title=\"eXtensible HyperText Markup Language\">XHTML</abbr></a></p>\n            <p><a href=\"http://jigsaw.w3.org/css-validator/check/referer\" title=\"This page uses valid Cascading Stylesheets\" rel=\"external\">Valid <abbr title=\"W3C Cascading Stylesheets\">css</abbr></a></p>\n            <p><a href=\"http://modx.com\" title=\"Ajax CMS and PHP Application Framework\">MODX</a></p>\n          </div>\n          <!-- close #sidebar -->\n        </div>\n        <!-- end right inner-->\n      </div>\n      <!-- end right -->\n      <div id=\"left\">\n        <div id=\"left-inner\">\n          [[Breadcrumbs?]]\n          <div id=\"content\">\n            <div class=\"post\">\n              <h2>[*longtitle*]</h2>\n              [*#content*] </div>\n            <!-- close .post (main column content) -->\n          </div>\n          <!-- close #content -->\n        </div>\n        <!-- end left-inner -->\n      </div>\n      <!-- end left -->\n    </div>\n    <!-- end inner -->\n    <div id=\"clearfooter\"></div>\n    <div id=\"header\">\n      <h1><a id=\"logo\" href=\"[~[(site_start)]~]\" title=\"[(site_name)]\">[(site_name)]</a></h1>\n\n      <div id=\"search\"><!--search_terms--><span id=\"search-txt\">SEARCH</span><a name=\"search\"></a>[!AjaxSearch? &ajaxSearch=`1` &landingPage=`8` &moreResultsPage=`8` &addJscript=`0` &showIntro=`0` &ajaxMax=`5` &extract=`1`!]</div>\n      <div id=\"ajaxmenu\"> [[Wayfinder?startId=`0` &outerTpl=`mh.OuterTpl` &innerTpl=`mh.InnerTpl` &rowTpl=`mh.RowTpl` &innerRowTpl=`mh.InnerRowTpl` &firstClass=`first` &hereClass=``]] </div>\n      <!-- end topmenu -->\n    </div>\n    <!-- end header -->\n    <br style=\"clear:both;height:0;font-size: 1px\" />\n    <div id=\"footer\">\n      <p> <a href=\"http://modx.com\" title=\"Ajax CMS and PHP Application Framework\">Powered\n          by MODX</a> &nbsp;<a href=\"http://modx.com/\" title=\"Template Designed by modXhost.com\">Template &copy; 2006-2011\n          modXhost.com</a><br />\n        Memory: [^m^], MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document retrieved\n        from [^s^]. </p>\n    </div>\n    <!-- end footer -->\n  </div>\n  <!-- end outer div -->\n</div>\n<!-- end wrapper -->\n</body>\n</html>','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_access`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `modx_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_contentvalues`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `modx_site_tmplvar_contentvalues`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_templates`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `modx_site_tmplvar_templates`
#

INSERT INTO `modx_site_tmplvar_templates` VALUES ('1','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('2','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('3','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','3','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvars`
#

DROP TABLE IF EXISTS `modx_site_tmplvars`;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `modx_site_tmplvars`
#

INSERT INTO `modx_site_tmplvars` VALUES ('1','textarea','desc','Мета дескрипшин','Мета дескрипшин','0','2','0','','0','','','[*introtext*]');
INSERT INTO `modx_site_tmplvars` VALUES ('2','text','keyw','Ключевые слова','Ключевые слова','0','2','0','','0','','','[*pagetitle*]');
INSERT INTO `modx_site_tmplvars` VALUES ('3','checkbox','noIndex','Индексировать страницу','Управление URL','0','2','0','Нет==<meta name=\"robots\" content=\"noindex, nofollow\">','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('4','text','titl','Мета тайтл','Мета тайтл','0','2','0','','0','','','[*pagetitle*] - [(site_name)]');

# --------------------------------------------------------

#
# Table structure for table `modx_system_eventnames`
#

DROP TABLE IF EXISTS `modx_system_eventnames`;
CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `modx_system_eventnames`
#

INSERT INTO `modx_system_eventnames` VALUES ('1','OnDocPublished','5','');
INSERT INTO `modx_system_eventnames` VALUES ('2','OnDocUnPublished','5','');
INSERT INTO `modx_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');
INSERT INTO `modx_system_eventnames` VALUES ('4','OnWebLogin','3','');
INSERT INTO `modx_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');
INSERT INTO `modx_system_eventnames` VALUES ('6','OnWebLogout','3','');
INSERT INTO `modx_system_eventnames` VALUES ('7','OnWebSaveUser','3','');
INSERT INTO `modx_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');
INSERT INTO `modx_system_eventnames` VALUES ('9','OnWebChangePassword','3','');
INSERT INTO `modx_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');
INSERT INTO `modx_system_eventnames` VALUES ('11','OnManagerLogin','2','');
INSERT INTO `modx_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');
INSERT INTO `modx_system_eventnames` VALUES ('13','OnManagerLogout','2','');
INSERT INTO `modx_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');
INSERT INTO `modx_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');
INSERT INTO `modx_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');
INSERT INTO `modx_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');
INSERT INTO `modx_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');
INSERT INTO `modx_system_eventnames` VALUES ('19','OnCacheUpdate','4','');
INSERT INTO `modx_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');
INSERT INTO `modx_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');
INSERT INTO `modx_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');
INSERT INTO `modx_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('1034','onBeforeMoveDocument','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('1035','onAfterMoveDocument','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('70','OnSiteRefresh','1','');
INSERT INTO `modx_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');
INSERT INTO `modx_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');
INSERT INTO `modx_system_eventnames` VALUES ('79','OnWebAuthentication','3','');
INSERT INTO `modx_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');
INSERT INTO `modx_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');
INSERT INTO `modx_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');
INSERT INTO `modx_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');
INSERT INTO `modx_system_eventnames` VALUES ('89','OnManagerPageInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('90','OnWebPageInit','5','');
INSERT INTO `modx_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');
INSERT INTO `modx_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');
INSERT INTO `modx_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');
INSERT INTO `modx_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');
INSERT INTO `modx_system_eventnames` VALUES ('92','OnParseDocument','5','');
INSERT INTO `modx_system_eventnames` VALUES ('106','OnParseProperties','5','');
INSERT INTO `modx_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('94','OnWebPageComplete','5','');
INSERT INTO `modx_system_eventnames` VALUES ('95','OnLogPageHit','5','');
INSERT INTO `modx_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');
INSERT INTO `modx_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');
INSERT INTO `modx_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');
INSERT INTO `modx_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');
INSERT INTO `modx_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');
INSERT INTO `modx_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');
INSERT INTO `modx_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');
INSERT INTO `modx_system_eventnames` VALUES ('1000','OnPageNotFound','1','');
INSERT INTO `modx_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');

# --------------------------------------------------------

#
# Table structure for table `modx_system_settings`
#

DROP TABLE IF EXISTS `modx_system_settings`;
CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `modx_system_settings`
#

INSERT INTO `modx_system_settings` VALUES ('manager_theme','Carbon');
INSERT INTO `modx_system_settings` VALUES ('settings_version','1.1b-d7.1.2');
INSERT INTO `modx_system_settings` VALUES ('show_meta','0');
INSERT INTO `modx_system_settings` VALUES ('server_offset_time','0');
INSERT INTO `modx_system_settings` VALUES ('server_protocol','http');
INSERT INTO `modx_system_settings` VALUES ('manager_language','russian-UTF8');
INSERT INTO `modx_system_settings` VALUES ('modx_charset','UTF-8');
INSERT INTO `modx_system_settings` VALUES ('site_name','MODX manager panel new design');
INSERT INTO `modx_system_settings` VALUES ('site_start','1');
INSERT INTO `modx_system_settings` VALUES ('error_page','5');
INSERT INTO `modx_system_settings` VALUES ('unauthorized_page','6');
INSERT INTO `modx_system_settings` VALUES ('site_status','1');
INSERT INTO `modx_system_settings` VALUES ('site_unavailable_message','The site is currently unavailable');
INSERT INTO `modx_system_settings` VALUES ('track_visitors','0');
INSERT INTO `modx_system_settings` VALUES ('top_howmany','10');
INSERT INTO `modx_system_settings` VALUES ('auto_template_logic','sibling');
INSERT INTO `modx_system_settings` VALUES ('default_template','3');
INSERT INTO `modx_system_settings` VALUES ('old_template','3');
INSERT INTO `modx_system_settings` VALUES ('publish_default','1');
INSERT INTO `modx_system_settings` VALUES ('cache_default','1');
INSERT INTO `modx_system_settings` VALUES ('search_default','1');
INSERT INTO `modx_system_settings` VALUES ('friendly_urls','1');
INSERT INTO `modx_system_settings` VALUES ('friendly_url_prefix','');
INSERT INTO `modx_system_settings` VALUES ('friendly_url_suffix','.html');
INSERT INTO `modx_system_settings` VALUES ('friendly_alias_urls','1');
INSERT INTO `modx_system_settings` VALUES ('use_alias_path','1');
INSERT INTO `modx_system_settings` VALUES ('use_udperms','1');
INSERT INTO `modx_system_settings` VALUES ('udperms_allowroot','0');
INSERT INTO `modx_system_settings` VALUES ('failed_login_attempts','3');
INSERT INTO `modx_system_settings` VALUES ('blocked_minutes','60');
INSERT INTO `modx_system_settings` VALUES ('use_captcha','0');
INSERT INTO `modx_system_settings` VALUES ('captcha_words','0,1,2,3,4,5,6,7,8,9');
INSERT INTO `modx_system_settings` VALUES ('emailsender','mail@a-sharapov.com');
INSERT INTO `modx_system_settings` VALUES ('email_method','mail');
INSERT INTO `modx_system_settings` VALUES ('smtp_auth','0');
INSERT INTO `modx_system_settings` VALUES ('smtp_host','');
INSERT INTO `modx_system_settings` VALUES ('smtp_port','25');
INSERT INTO `modx_system_settings` VALUES ('smtp_username','');
INSERT INTO `modx_system_settings` VALUES ('emailsubject','Your login details');
INSERT INTO `modx_system_settings` VALUES ('number_of_logs','100');
INSERT INTO `modx_system_settings` VALUES ('number_of_messages','30');
INSERT INTO `modx_system_settings` VALUES ('number_of_results','20');
INSERT INTO `modx_system_settings` VALUES ('use_editor','1');
INSERT INTO `modx_system_settings` VALUES ('use_browser','1');
INSERT INTO `modx_system_settings` VALUES ('rb_base_dir','D:/OpenServer/domains/evo-manager.local/assets/');
INSERT INTO `modx_system_settings` VALUES ('rb_base_url','assets/');
INSERT INTO `modx_system_settings` VALUES ('which_editor','TinyMCE');
INSERT INTO `modx_system_settings` VALUES ('fe_editor_lang','russian-UTF8');
INSERT INTO `modx_system_settings` VALUES ('fck_editor_toolbar','standard');
INSERT INTO `modx_system_settings` VALUES ('fck_editor_autolang','0');
INSERT INTO `modx_system_settings` VALUES ('editor_css_path','');
INSERT INTO `modx_system_settings` VALUES ('editor_css_selectors','');
INSERT INTO `modx_system_settings` VALUES ('strip_image_paths','1');
INSERT INTO `modx_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff');
INSERT INTO `modx_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');
INSERT INTO `modx_system_settings` VALUES ('upload_flash','fla,flv,swf');
INSERT INTO `modx_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF');
INSERT INTO `modx_system_settings` VALUES ('upload_maxsize','10485760');
INSERT INTO `modx_system_settings` VALUES ('new_file_permissions','0644');
INSERT INTO `modx_system_settings` VALUES ('new_folder_permissions','0755');
INSERT INTO `modx_system_settings` VALUES ('filemanager_path','D:/OpenServer/domains/evo-manager.local/');
INSERT INTO `modx_system_settings` VALUES ('theme_refresher','');
INSERT INTO `modx_system_settings` VALUES ('manager_layout','4');
INSERT INTO `modx_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');
INSERT INTO `modx_system_settings` VALUES ('auto_menuindex','1');
INSERT INTO `modx_system_settings` VALUES ('session.cookie.lifetime','604800');
INSERT INTO `modx_system_settings` VALUES ('mail_check_timeperiod','600');
INSERT INTO `modx_system_settings` VALUES ('manager_direction','ltr');
INSERT INTO `modx_system_settings` VALUES ('tinymce_editor_theme','editor');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_plugins','style,advimage,advlink,searchreplace,print,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons1','undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,link,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons2','bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops');
INSERT INTO `modx_system_settings` VALUES ('tree_show_protected','0');
INSERT INTO `modx_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/modx-announce');
INSERT INTO `modx_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/modxsecurity');
INSERT INTO `modx_system_settings` VALUES ('validate_referer','1');
INSERT INTO `modx_system_settings` VALUES ('datepicker_offset','-10');
INSERT INTO `modx_system_settings` VALUES ('xhtml_urls','0');
INSERT INTO `modx_system_settings` VALUES ('allow_duplicate_alias','0');
INSERT INTO `modx_system_settings` VALUES ('automatic_alias','1');
INSERT INTO `modx_system_settings` VALUES ('datetime_format','dd-mm-YYYY');
INSERT INTO `modx_system_settings` VALUES ('warning_visibility','0');
INSERT INTO `modx_system_settings` VALUES ('remember_last_tab','1');
INSERT INTO `modx_system_settings` VALUES ('enable_bindings','1');
INSERT INTO `modx_system_settings` VALUES ('seostrict','1');
INSERT INTO `modx_system_settings` VALUES ('cache_type','2');
INSERT INTO `modx_system_settings` VALUES ('maxImageWidth','1600');
INSERT INTO `modx_system_settings` VALUES ('maxImageHeight','1200');
INSERT INTO `modx_system_settings` VALUES ('thumbWidth','150');
INSERT INTO `modx_system_settings` VALUES ('thumbHeight','150');
INSERT INTO `modx_system_settings` VALUES ('thumbsDir','.thumbs');
INSERT INTO `modx_system_settings` VALUES ('jpegQuality','90');
INSERT INTO `modx_system_settings` VALUES ('denyZipDownload','0');
INSERT INTO `modx_system_settings` VALUES ('denyExtensionRename','0');
INSERT INTO `modx_system_settings` VALUES ('showHiddenFiles','0');
INSERT INTO `modx_system_settings` VALUES ('docid_incrmnt_method','0');
INSERT INTO `modx_system_settings` VALUES ('make_folders','0');
INSERT INTO `modx_system_settings` VALUES ('tree_page_click','27');
INSERT INTO `modx_system_settings` VALUES ('clean_uploaded_filename','1');
INSERT INTO `modx_system_settings` VALUES ('site_id','562bd13229c41');
INSERT INTO `modx_system_settings` VALUES ('site_unavailable_page','');
INSERT INTO `modx_system_settings` VALUES ('reload_site_unavailable','');
INSERT INTO `modx_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');
INSERT INTO `modx_system_settings` VALUES ('aliaslistingfolder','0');
INSERT INTO `modx_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');
INSERT INTO `modx_system_settings` VALUES ('error_reporting','1');
INSERT INTO `modx_system_settings` VALUES ('send_errormail','0');
INSERT INTO `modx_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');
INSERT INTO `modx_system_settings` VALUES ('reload_captcha_words','');
INSERT INTO `modx_system_settings` VALUES ('captcha_words_default','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');
INSERT INTO `modx_system_settings` VALUES ('smtp_secure','none');
INSERT INTO `modx_system_settings` VALUES ('reload_emailsubject','');
INSERT INTO `modx_system_settings` VALUES ('emailsubject_default','Данные для авторизации');
INSERT INTO `modx_system_settings` VALUES ('reload_signupemail_message','');
INSERT INTO `modx_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('reload_websignupemail_message','');
INSERT INTO `modx_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('reload_system_email_webreminder_message','');
INSERT INTO `modx_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('resource_tree_node_name','pagetitle');
INSERT INTO `modx_system_settings` VALUES ('mce_editor_skin','cirkuit');
INSERT INTO `modx_system_settings` VALUES ('mce_template_docs','');
INSERT INTO `modx_system_settings` VALUES ('mce_template_chunks','');
INSERT INTO `modx_system_settings` VALUES ('mce_entermode','p');
INSERT INTO `modx_system_settings` VALUES ('mce_element_format','xhtml');
INSERT INTO `modx_system_settings` VALUES ('mce_schema','html4');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons3','');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons4','');
INSERT INTO `modx_system_settings` VALUES ('tinymce_css_selectors','left=justifyleft;right=justifyright');
INSERT INTO `modx_system_settings` VALUES ('rb_webuser','0');
INSERT INTO `modx_system_settings` VALUES ('sys_files_checksum','a:4:{s:49:\"D:/OpenServer/domains/evo-manager.local/index.php\";s:32:\"657db3d7274dbb84c80d4aac08a75417\";s:49:\"D:/OpenServer/domains/evo-manager.local/.htaccess\";s:32:\"aa196ef65d07f9406b55aaf000f8a0a2\";s:57:\"D:/OpenServer/domains/evo-manager.local/manager/index.php\";s:32:\"05fe089c6b8fe0db4c8114f93efedd68\";s:71:\"D:/OpenServer/domains/evo-manager.local/manager/includes/config.inc.php\";s:32:\"a32c9c5f3f08c3db17f0de337c027d9a\";}');

# --------------------------------------------------------

#
# Table structure for table `modx_user_attributes`
#

DROP TABLE IF EXISTS `modx_user_attributes`;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `modx_user_attributes`
#

INSERT INTO `modx_user_attributes` VALUES ('1','1','Admin','1','mail@a-sharapov.com','','','0','1446221441','0','24','1454488897','1472564462','0','thhcpuktgpm9a3iech399depq1','0','0','','','','','','','assets/images/logo(1).png','');
INSERT INTO `modx_user_attributes` VALUES ('2','2','','1','dmi3yy@gmail.com','','','0','0','0','1','0','1446251358','0','ltpvpnr70tuuieopvstb5isdv7','0','0','','','','','','','assets/images/a55ddc.jpg','');

# --------------------------------------------------------

#
# Table structure for table `modx_user_messages`
#

DROP TABLE IF EXISTS `modx_user_messages`;
CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `modx_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `modx_user_roles`
#

DROP TABLE IF EXISTS `modx_user_roles`;
CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `modx_user_roles`
#

INSERT INTO `modx_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','1','0','0','1');
INSERT INTO `modx_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','1','0','1','0','0','1');
INSERT INTO `modx_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');

# --------------------------------------------------------

#
# Table structure for table `modx_user_settings`
#

DROP TABLE IF EXISTS `modx_user_settings`;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `modx_user_settings`
#

INSERT INTO `modx_user_settings` VALUES ('1','allow_manager_access','1');
INSERT INTO `modx_user_settings` VALUES ('2','allow_manager_access','1');

# --------------------------------------------------------

#
# Table structure for table `modx_web_groups`
#

DROP TABLE IF EXISTS `modx_web_groups`;
CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_attributes`
#

DROP TABLE IF EXISTS `modx_web_user_attributes`;
CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `modx_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_settings`
#

DROP TABLE IF EXISTS `modx_web_user_settings`;
CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `modx_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_users`
#

DROP TABLE IF EXISTS `modx_web_users`;
CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `modx_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_access`
#

DROP TABLE IF EXISTS `modx_webgroup_access`;
CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_names`
#

DROP TABLE IF EXISTS `modx_webgroup_names`;
CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_names`
#
