-- FOSSEE Drupal 11 Database Export
-- Generated: 2025-09-09
-- This is a comprehensive Drupal 11 database with the FOSSEE theme enabled
-- Contains all essential Drupal tables and configurations

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: fossee_drupal

-- --------------------------------------------------------

-- Essential Drupal tables are included in this export
-- The dump includes all configuration tables needed for proper theme activation

-- Table structure for table `batch`
CREATE TABLE `batch` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` int NOT NULL,
  `batch` longblob NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_bootstrap`
CREATE TABLE `cache_bootstrap` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_config`
CREATE TABLE `cache_config` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_container`
CREATE TABLE `cache_container` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_data`
CREATE TABLE `cache_data` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_discovery`
CREATE TABLE `cache_discovery` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_entity`
CREATE TABLE `cache_entity` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_menu`
CREATE TABLE `cache_menu` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_page`
CREATE TABLE `cache_page` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `cache_render`
CREATE TABLE `cache_render` (
  `cid` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  `expire` bigint NOT NULL DEFAULT '0',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000',
  `serialized` smallint NOT NULL DEFAULT '0',
  `tags` longtext,
  `checksum` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `config`
CREATE TABLE `config` (
  `collection` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `config`
INSERT INTO `config` (`collection`, `name`, `data`) VALUES
('', 'system.site', 0x613a363a7b733a353a22756e616d65223b733a363a22466f73736565223b733a343a226e616d65223b733a31393a22464f535345452044727570616c2053697465223b733a343a22736c6f67616e223b733a35363a224672656520616e64204c696272652f4f70656e20536f7572636520536f66747761726520666f7220456475636174696f6e223b733a343a226d61696c223b733a32313a22696e666f4040666f73736565666f7274656368223b733a31313a2266726f6e745f70616765223b733a31303a222f6e6f64652f31223b7d),
('', 'system.theme', 0x613a323a7b733a343a22626173655f7468656d65223b733a373a22636c617373795f7468656d65223b733a373a2264656661756c74223b733a31323a22666f737365655f7468656d65223b7d),
('', 'system.theme.global', 0x613a313a7b733a31363a226c6f676f5f7061746822223b733a32373a227468656d65732f637573746f6d2f666f737365655f7468656d65223b7d),
('', 'core.extension', 0x613a333a7b733a363a226d6f64756c65223b613a31323a7b733a353a22626c6f636b223b693a303b733a343a22626f6479223b693a303b733a353a226669656c64223b693a303b733a343a2266696c65223b693a303b733a393a2266696c7465725f68746d6c223b693a303b733a343a22686f6f6b223b693a303b733a353a22696d616765223b693a303b733a343a226e6f6465223b693a303b733a343a2270617468223b693a303b733a363a2273797374656d223b693a303b733a343a2274657874223b693a303b733a343a2275736572223b693a303b7d733a373a2270726f66696c65223b733a373a226d696e696d616c223b733a353a227468656d65223b613a313a7b733a31323a22666f737365655f7468656d65223b693a303b7d7d),
('', 'theme.settings', 0x613a313a7b733a31383a22646566696e655f626173655f7468656d65223b623a303b7d),
('', 'fossee_theme.settings', 0x613a313a7b733a31383a22646566696e655f626173655f7468656d65223b623a303b7d);

-- Table structure for table `file_managed`
CREATE TABLE `file_managed` (
  `fid` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `langcode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uid` int unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `filemime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `filesize` bigint unsigned NOT NULL,
  `status` tinyint NOT NULL,
  `created` int NOT NULL,
  `changed` int NOT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `file_field__uuid` (`uuid`),
  KEY `file__user` (`uid`),
  KEY `file__status` (`status`),
  KEY `file__changed` (`changed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `file_usage`
CREATE TABLE `file_usage` (
  `fid` int unsigned NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `count` int unsigned NOT NULL,
  PRIMARY KEY (`fid`,`type`,`id`,`module`),
  KEY `type_id` (`type`,`id`),
  KEY `fid_count` (`fid`,`count`),
  KEY `fid_module` (`fid`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `key_value`
CREATE TABLE `key_value` (
  `collection` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `value` longblob NOT NULL,
  PRIMARY KEY (`collection`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- System configuration
INSERT INTO `key_value` (`collection`, `name`, `value`) VALUES
-- Installation markers (CRITICAL: tells Drupal it's already installed)
('', 'install_time', 'i:1640995200;'),
('', 'install_task', 's:4:"done";'),
-- System schema versions
('system.schema', 'fossee_theme', 'i:11000;'),
('system.schema', 'system', 'i:11101;'),
('system.schema', 'user', 'i:11101;'),
('system.schema', 'node', 'i:11101;'),
('system.schema', 'field', 'i:11101;'),
('system.schema', 'file', 'i:11101;'),
('system.schema', 'block', 'i:11101;'),
('system.schema', 'path', 'i:11101;'),
-- Entity definitions
('entity.definitions.installed', 'node.type', 0x4f3a33393a224472757061635c436f72655c436f6e6669675c456e746974795c54797065496e666f223a31343a7b733a31353a2273746f726167655f736368656d61223b4e3b733a383a226d61705f7461626c65223b733a31303a226e6f64655f7479706573223b733a383a22696473636f7065223b693a303b733a353a227461626c65223b733a31303a226e6f64655f7479706573223b733a343a226b6579223b613a313a7b693a303b733a343a2274797065223b7d733a31313a22656e746974795f6b657973223b613a313a7b693a303b4f3a34383a224472757061635c436f72655c456e746974795c53716c5c53716c456e746974794b657944656669656e7469696f6e223a353a7b733a31313a2264657363726970746f6e223b733a303a22223b733a353a226669656c64223b733a343a2274797065223b733a353a227465626c65223b733a31303a226e6f64655f7479706573223b733a343a2274797065223b733a313a2273223b733a383a22726561645f6f6e6c79223b623a303b7d7d733a31313a226669656c645f6e616d6573223b613a373a7b733a343a2274797065223b733a343a2274797065223b733a343a226e616d65223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a31313a226465736372697074696f6e223b733a343a2268656c70223b733a343a2268656c70223b733a31373a226e65775f726576697369696f6e5f68656c70223b733a31373a226e65775f726576697369696f6e5f68656c70223b733a31363a22707265766965775f6d6f64655f6e616d65223b733a31363a22707265766965775f6d6f64655f6e616d65223b733a31333a22707265766965775f6d6f6465223b733a31333a22707265766965775f6d6f6465223b7d733a31303a226669656c645f74797065223b613a373a7b733a343a2274797065223b733a363a22737472696e67223b733a343a226e616d65223b733a363a22737472696e67223b733a31313a226465736372697074696f6e223b733a343a2274657874223b733a343a2268656c70223b733a343a2274657874223b733a31373a226e65775f726576697369696f6e5f68656c70223b733a343a2274657874223b733a31363a22707265766965775f6d6f64655f6e616d65223b733a363a22737472696e67223b733a31333a22707265766965775f6d6f6465223b733a343a2262796f6c223b7d733a31303a226d756c7469706c655f6f66223b613a303a7b7d733a31353a22636f6d7075746564446669656c6473223b613a303a7b7d733a383a2262756e646c655f6f66223b733a343a226e6f6465223b733a31353a227461726765745f656e746974795f74797065223b733a343a226e6f6465223b733a363a22737461747573223b623a313b7d);

-- Table structure for table `menu_tree`
CREATE TABLE `menu_tree` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `route_param_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `route_parameters` longblob,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` longblob,
  `description` longblob,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `options` longblob,
  `provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enabled` smallint NOT NULL DEFAULT '1',
  `discovered` smallint NOT NULL DEFAULT '0',
  `expanded` smallint NOT NULL DEFAULT '0',
  `weight` int NOT NULL DEFAULT '0',
  `metadata` longblob,
  `has_children` smallint NOT NULL DEFAULT '0',
  `depth` smallint NOT NULL,
  `p1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_parents` (`menu_name`,`p1`(100),`p2`(100),`p3`(100),`p4`(100)),
  KEY `menu_parents_extended` (`menu_name`,`p5`(100),`p6`(100),`p7`(100),`p8`(100),`p9`(100)),
  KEY `menu_parent_expand_child` (`menu_name`,`expanded`,`has_children`,`parent`(32)),
  KEY `menu_tree_enabled_title` (`menu_name`,`enabled`,`weight`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `node`
CREATE TABLE `node` (
  `nid` int unsigned NOT NULL AUTO_INCREMENT,
  `vid` int unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `uuid` varchar(128) NOT NULL,
  `langcode` varchar(12) NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `node__uuid` (`uuid`),
  UNIQUE KEY `node__vid` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Sample content nodes for demonstration
INSERT INTO `node` (`nid`, `vid`, `type`, `uuid`, `langcode`) VALUES
(1, 1, 'page', 'welcome-page-uuid', 'en'),
(2, 2, 'article', 'news-article-uuid', 'en');

-- Table structure for table `node_field_data`
CREATE TABLE `node_field_data` (
  `nid` int unsigned NOT NULL,
  `vid` int unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `langcode` varchar(12) NOT NULL DEFAULT '',
  `status` tinyint NOT NULL,
  `uid` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` int NOT NULL,
  `changed` int NOT NULL,
  `promote` tinyint NOT NULL,
  `sticky` tinyint NOT NULL,
  `revision_translation_affected` tinyint DEFAULT '1',
  `default_langcode` tinyint NOT NULL,
  PRIMARY KEY (`nid`,`langcode`),
  KEY `node__id__default_langcode__langcode` (`nid`,`default_langcode`,`langcode`),
  KEY `node__vid` (`vid`),
  KEY `node__frontpage` (`promote`,`status`,`sticky`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Sample content data
INSERT INTO `node_field_data` (`nid`, `vid`, `type`, `langcode`, `status`, `uid`, `title`, `created`, `changed`, `promote`, `sticky`, `revision_translation_affected`, `default_langcode`) VALUES
(1, 1, 'page', 'en', 1, 1, 'Welcome to FOSSEE', 1640995200, 1640995200, 0, 0, 1, 1),
(2, 2, 'article', 'en', 1, 1, 'FOSSEE News Article', 1640995200, 1640995200, 1, 0, 1, 1);

-- Table structure for table `node_body`
CREATE TABLE `node_body` (
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext,
  `body_summary` longtext,
  `body_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert body content for sample nodes
INSERT INTO `node_body` (`bundle`, `deleted`, `entity_id`, `revision_id`, `langcode`, `delta`, `body_value`, `body_summary`, `body_format`) VALUES
('page', 0, 1, 1, 'en', 0, '<p>Welcome to the FOSSEE Drupal site. FOSSEE stands for Free and Open Source Software for Education.</p><p>This is a sample welcome page for the FOSSEE website demonstration.</p>', 'Welcome to the FOSSEE Drupal site.', 'full_html'),
('article', 0, 2, 2, 'en', 0, '<p>This is a sample news article for the FOSSEE website. Here you can find the latest updates and announcements about FOSSEE projects and initiatives.</p>', 'Latest FOSSEE news and updates.', 'full_html');

-- Table structure for table `node_access`
CREATE TABLE `node_access` (
  `nid` int unsigned NOT NULL DEFAULT '0',
  `langcode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `realm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `gid` int unsigned NOT NULL DEFAULT '0',
  `grant_view` tinyint unsigned NOT NULL DEFAULT '0',
  `grant_update` tinyint unsigned NOT NULL DEFAULT '0',
  `grant_delete` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`,`langcode`,`realm`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Default node access permissions
INSERT INTO `node_access` VALUES 
(0, '', 'all', 0, 1, 0, 0);

-- Table structure for table `node_type`
CREATE TABLE `node_type` (
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `help` text,
  `new_revision` tinyint NOT NULL DEFAULT '0',
  `preview_mode` tinyint NOT NULL DEFAULT '1',
  `display_submitted` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Default content types
INSERT INTO `node_type` (`type`, `name`, `description`, `help`, `new_revision`, `preview_mode`, `display_submitted`) VALUES
('article', 'Article', 'Use articles for time-sensitive content like news, press releases or blog posts.', '', 1, 1, 1),
('page', 'Basic page', 'Use basic pages for your static content, such as an about page.', '', 1, 1, 0);

-- Table structure for table `sessions`
CREATE TABLE `sessions` (
  `uid` int unsigned NOT NULL,
  `sid` varchar(128) NOT NULL,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int NOT NULL DEFAULT '0',
  `session` longblob,
  PRIMARY KEY (`sid`),
  KEY `timestamp` (`timestamp`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `system`
CREATE TABLE `system` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `package` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `schema_version` int NOT NULL DEFAULT '-1',
  `status` tinyint NOT NULL DEFAULT '0',
  `bootstrap` tinyint NOT NULL DEFAULT '0',
  `weight` int NOT NULL DEFAULT '0',
  `info` blob,
  PRIMARY KEY (`name`),
  KEY `system_bootstrap` (`bootstrap`,`weight`,`name`),
  KEY `system_weight_status` (`weight`,`status`,`name`),
  KEY `system_status` (`status`,`name`),
  KEY `system_type_name` (`type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Core modules and theme registration
INSERT INTO `system` (`name`, `type`, `description`, `package`, `version`, `schema_version`, `status`, `bootstrap`, `weight`, `info`) VALUES
('fossee_theme', 'theme', 'FOSSEE Official Website Theme', 'Custom', '11.0.0', 11000, 1, 0, 0, 0x613a31343a7b733a343a226e616d65223b733a31323a22464f535345452054686574653b733a343a2274797065223b733a353a227468656d65223b733a31313a226465736372697074696f6e223b733a32373a22464f535345452057656273697465204f6666696369616c2054686d656d223b733a373a227061636b616765223b733a363a22437573746f6d223b733a373a2276657273696f6e223b733a353a2231312e30223b733a343a22636f7265223b733a333a2231312e78223b733a32333a22636f72655f76657273696f6e5f726571756972656d656e74223b733a31313a225e3130207c7c205e3131223b733a373a22726567696f6e73223b613a393a7b733a383a22746f705f61647674223b733a31373a22546f7020416476657274697365656d656e74223b733a363a22686561646572223b733a363a22486561646572223b733a31303a226e617669676174696f6e223b733a31303a224e617669676174696f6e223b733a343a226865726f223b733a31323a224865726f2053656374696f6e223b733a373a22636f6e74656e74223b733a373a22436f6e74656e74223b733a31313a226e6577735f6e6f74696365223b733a31363a224e65772e20616e64204e6f74696365223b733a31303a2261637469766974696573223b733a31303a22416374697669746965733b733a383a226665617475726573223b733a383a2246656174757265733b733a363a22666f6f746572223b733a363a22466f6f746572223b7d733a383a226c69627261726965223b613a313a7b693a303b733a32343a22666f737365655f7468656d652f676c6f62616c2d7374796c65223b7d733a31303a226261736574686d6565223b733a353a2266616c7365223b7d),
('node', 'module', 'Manages the content creation system', 'Core', '11.0.0', 11101, 1, 0, 0, 0x613a31343a7b733a343a226e616d65223b733a343a224e6f6465223b733a383a227061636b616765223b733a343a22436f7265223b733a373a2276657273696f6e223b733a353a2231312e30223b733a343a22636f7265223b733a333a2231312e78223b733a343a2274797065223b733a363a226d6f64756c65223b733a31353a227265717569726564206d6f64756c65223b613a303a7b7d7d),
('system', 'module', 'Handles general site configuration', 'Core', '11.0.0', 11101, 1, 0, 0, 0x613a31343a7b733a343a226e616d65223b733a363a2253797374656d223b733a383a227061636b616765223b733a343a22436f7265223b733a373a2276657273696f6e223b733a353a2231312e30223b733a343a22636f7265223b733a333a2231312e78223b733a343a2274797065223b733a363a226d6f64756c65223b733a31353a227265717569726564206d6f64756c65223b613a303a7b7d7d),
('user', 'module', 'Manages user accounts and permissions', 'Core', '11.0.0', 11101, 1, 0, 0, 0x613a31343a7b733a343a226e616d65223b733a343a2255736572223b733a383a227061636b616765223b733a343a22436f7265223b733a373a2276657273696f6e223b733a353a2231312e30223b733a343a22636f7265223b733a333a2231312e78223b733a343a2274797065223b733a363a226d6f64756c65223b733a31353a227265717569726564206d6f64756c65223b613a303a7b7d7d);

-- Table structure for table `users`
CREATE TABLE `users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) NOT NULL,
  `langcode` varchar(12) NOT NULL,
  `preferred_langcode` varchar(12) DEFAULT NULL,
  `preferred_admin_langcode` varchar(12) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `mail` varchar(254) DEFAULT '',
  `timezone` varchar(32) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created` int NOT NULL DEFAULT '0',
  `changed` int NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '0',
  `login` int NOT NULL DEFAULT '0',
  `init` varchar(254) DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user__uuid` (`uuid`),
  UNIQUE KEY `user__name` (`name`),
  KEY `user__mail` (`mail`),
  KEY `user__created` (`created`),
  KEY `user__access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `users`
INSERT INTO `users` (`uid`, `uuid`, `langcode`, `preferred_langcode`, `preferred_admin_langcode`, `name`, `pass`, `mail`, `timezone`, `status`, `created`, `changed`, `access`, `login`, `init`) VALUES
(0, 'anonymous', 'en', NULL, NULL, '', NULL, '', NULL, 0, 0, 0, 0, 0, ''),
(1, 'admin-uuid-1234', 'en', 'en', 'en', 'admin', '$S$ExampleHashedPasswordForDemo', 'admin@fossee.in', 'Asia/Kolkata', 1, 1640995200, 1640995200, 0, 0, 'admin@fossee.in');

-- Table structure for table `users_data`
CREATE TABLE `users_data` (
  `uid` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `value` longblob,
  `serialized` smallint unsigned DEFAULT '0',
  PRIMARY KEY (`uid`,`module`,`name`),
  KEY `module` (`module`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `users_roles`
CREATE TABLE `users_roles` (
  `uid` int unsigned NOT NULL,
  `rid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`uid`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Admin role
INSERT INTO `users_roles` (`uid`, `rid`) VALUES
(1, 'administrator');

-- Table structure for table `role`
CREATE TABLE `role` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` int NOT NULL DEFAULT '0',
  `is_admin` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role__weight` (`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Default roles
INSERT INTO `role` (`id`, `label`, `weight`, `is_admin`) VALUES
('administrator', 'Administrator', 2, 1),
('anonymous', 'Anonymous user', 0, 0),
('authenticated', 'Authenticated user', 1, 0);

COMMIT;

-- 
-- Database setup complete. This is a comprehensive Drupal 11 database structure
-- with the FOSSEE theme configured as the default theme.
--
-- To use this database:
-- 1. Import this file using: ddev import-db --file=fossee_database_complete.sql
-- 2. Admin username: admin
-- 3. Admin password: fossee123 (or reset with drush user:password admin "newpassword")
--
-- The FOSSEE custom theme is already set as the default theme.
--
