SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_data
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data`  (
  `id` int(11) NOT NULL,
  `vp` int(11) NULL DEFAULT 0,
  `dp` int(11) NULL DEFAULT 0,
  `total_votes` int(11) NOT NULL DEFAULT 0,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default.gif',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_data
-- ----------------------------

-- ----------------------------
-- Table structure for acl_account_groups
-- ----------------------------
DROP TABLE IF EXISTS `acl_account_groups`;
CREATE TABLE `acl_account_groups`  (
  `account_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`account_id`, `group_id`) USING BTREE,
  UNIQUE INDEX `account_id_group_id`(`account_id`, `group_id`) USING BTREE,
  INDEX `FK__acl_groups`(`group_id`) USING BTREE,
  CONSTRAINT `FK__acl_groups` FOREIGN KEY (`group_id`) REFERENCES `acl_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_account_groups
-- ----------------------------

-- ----------------------------
-- Table structure for acl_account_permissions
-- ----------------------------
DROP TABLE IF EXISTS `acl_account_permissions`;
CREATE TABLE `acl_account_permissions`  (
  `account_id` int(10) UNSIGNED NOT NULL,
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `account_id_permission_id`(`account_id`, `permission_name`, `module`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_account_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for acl_account_roles
-- ----------------------------
DROP TABLE IF EXISTS `acl_account_roles`;
CREATE TABLE `acl_account_roles`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`account_id`, `role_name`) USING BTREE,
  UNIQUE INDEX `account_id_role_name`(`account_id`, `role_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_account_roles
-- ----------------------------

-- ----------------------------
-- Table structure for acl_group_roles
-- ----------------------------
DROP TABLE IF EXISTS `acl_group_roles`;
CREATE TABLE `acl_group_roles`  (
  `group_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`group_id`, `role_name`, `module`) USING BTREE,
  UNIQUE INDEX `group_id_role_id`(`group_id`, `role_name`, `module`) USING BTREE,
  CONSTRAINT `FK__groups` FOREIGN KEY (`group_id`) REFERENCES `acl_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_group_roles
-- ----------------------------
INSERT INTO `acl_group_roles` VALUES (1, '11', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (1, '2', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (1, '5', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (1, '8', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (1, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'login');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (1, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (2, '100', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (2, '101', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (2, '13', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (2, '19', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (2, '6', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (2, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (2, 'use', 'messages');
INSERT INTO `acl_group_roles` VALUES (2, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (2, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (2, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (2, 'use', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'login');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (2, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (3, 'moderate', 'news');
INSERT INTO `acl_group_roles` VALUES (3, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (3, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (3, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (3, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (3, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (4, '100', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (4, '101', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (4, '13', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (4, '19', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (4, '6', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (4, 'moderate', 'news');
INSERT INTO `acl_group_roles` VALUES (4, 'moderate', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (4, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (4, 'use', 'messages');
INSERT INTO `acl_group_roles` VALUES (4, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (4, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (4, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (4, 'use', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'login');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (4, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (5, '100', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (5, '101', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (5, '13', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (5, '19', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (5, '6', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (5, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (5, 'use', 'messages');
INSERT INTO `acl_group_roles` VALUES (5, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (5, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (5, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (5, 'use', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'login');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (5, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (6, '100', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (6, '101', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (6, '13', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (6, '19', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (6, '6', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (6, 'manage', 'changelog');
INSERT INTO `acl_group_roles` VALUES (6, 'manageTickets', 'gm');
INSERT INTO `acl_group_roles` VALUES (6, 'moderate', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (6, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (6, 'use', 'messages');
INSERT INTO `acl_group_roles` VALUES (6, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (6, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (6, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (6, 'use', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'login');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (6, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (7, '100', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (7, '101', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (7, '13', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (7, '19', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (7, '21', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (7, '6', '--MENU--');
INSERT INTO `acl_group_roles` VALUES (7, 'administrate', 'donate');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'changelog');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'news');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'page');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'store');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'teleport');
INSERT INTO `acl_group_roles` VALUES (7, 'manage', 'vote');
INSERT INTO `acl_group_roles` VALUES (7, 'manageAccounts', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'manageMenu', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'manageSideboxes', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'manageSlider', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'manageTickets', 'gm');
INSERT INTO `acl_group_roles` VALUES (7, 'moderate', 'news');
INSERT INTO `acl_group_roles` VALUES (7, 'moderate', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (7, 'moderate', 'store');
INSERT INTO `acl_group_roles` VALUES (7, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (7, 'use', 'messages');
INSERT INTO `acl_group_roles` VALUES (7, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (7, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (7, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (7, 'use', 'sidebox_shoutbox');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'login');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (7, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (7, 'viewLanguage', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'viewLogs', 'admin');
INSERT INTO `acl_group_roles` VALUES (7, 'viewSessions', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'administrate', 'donate');
INSERT INTO `acl_group_roles` VALUES (8, 'editBackupSettings', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'editSystemSettings', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'executeBackupActions', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'generateBackup', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'globalMaintenance', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'changelog');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'news');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'page');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'store');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'teleport');
INSERT INTO `acl_group_roles` VALUES (8, 'manage', 'vote');
INSERT INTO `acl_group_roles` VALUES (8, 'manageAccounts', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manageCache', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manageMenu', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manageModules', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'managePermissions', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manageSideboxes', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manageSlider', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'manageTheme', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'moderate', 'news');
INSERT INTO `acl_group_roles` VALUES (8, 'moderate', 'store');
INSERT INTO `acl_group_roles` VALUES (8, 'updateAccount', 'ucp');
INSERT INTO `acl_group_roles` VALUES (8, 'use', 'news');
INSERT INTO `acl_group_roles` VALUES (8, 'use', 'sidebox_language_picker');
INSERT INTO `acl_group_roles` VALUES (8, 'use', 'sidebox_poll');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'armory');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'bugtracker');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'changelog');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'character');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'donate');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'guild');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'mod');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'news');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'online');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'password_recovery');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'profile');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'register');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'store');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'teleport');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'ucp');
INSERT INTO `acl_group_roles` VALUES (8, 'view', 'vote');
INSERT INTO `acl_group_roles` VALUES (8, 'viewBackups', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'viewCharInfos', 'profile');
INSERT INTO `acl_group_roles` VALUES (8, 'viewLanguage', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'viewLogs', 'admin');
INSERT INTO `acl_group_roles` VALUES (8, 'viewSessions', 'admin');

-- ----------------------------
-- Table structure for acl_groups
-- ----------------------------
DROP TABLE IF EXISTS `acl_groups`;
CREATE TABLE `acl_groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#FFFFFF',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_groups
-- ----------------------------
INSERT INTO `acl_groups` VALUES (1, 'Guest', '', 'Rank that the user gets when they are not logged in, can be defined in the configs that it is this rank.');
INSERT INTO `acl_groups` VALUES (2, 'Player', '', 'Default player rank, the normal rank that you get when you are logged in and got no extra special rights.');
INSERT INTO `acl_groups` VALUES (3, 'GM', '#8e208f', 'The rank GM, they got rights to access the Admin panel but then only with their tools that they need, examples are player support tickets, ...');
INSERT INTO `acl_groups` VALUES (4, 'Moderator', '#00a3b6', 'They can manage shouts, users, ...');
INSERT INTO `acl_groups` VALUES (5, 'QA', '#2a9553', 'A QA (= Quality Assurance) checks the quality on the website, ingame and on the other services, they then report this to the developers to get bugs fixed whey they find some.');
INSERT INTO `acl_groups` VALUES (6, 'Developer', '#d56007', 'A developer');
INSERT INTO `acl_groups` VALUES (7, 'Administrator', '#dc6200', 'The Administrators take care of the staff');
INSERT INTO `acl_groups` VALUES (8, 'Owner', '#ae1600', 'This is the owner of the server.');

-- ----------------------------
-- Table structure for acl_roles
-- ----------------------------
DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE `acl_roles`  (
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`name`, `module`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_roles
-- ----------------------------

-- ----------------------------
-- Table structure for acl_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `acl_roles_permissions`;
CREATE TABLE `acl_roles_permissions`  (
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_name`, `permission_name`, `module`) USING BTREE,
  UNIQUE INDEX `role_name_permission_name`(`role_name`, `permission_name`, `module`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_roles_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag`  (
  `article_id` int(11) NOT NULL,
  `tag_id` int(10) NOT NULL,
  PRIMARY KEY (`article_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `comments` int(11) NULL DEFAULT 0,
  `type` int(11) NULL DEFAULT NULL,
  `type_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headline_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_de` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_de` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_es` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_es` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_fr` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_fr` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_no` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_no` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_ro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_ro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_se` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_se` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_ru` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_ru` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_zh` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_zh` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headline_ko` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_ko` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for backup
-- ----------------------------
DROP TABLE IF EXISTS `backup`;
CREATE TABLE `backup`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `backup_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `backup_name_UNIQUE`(`backup_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backup
-- ----------------------------

-- ----------------------------
-- Table structure for changelog
-- ----------------------------
DROP TABLE IF EXISTS `changelog`;
CREATE TABLE `changelog`  (
  `change_id` int(10) NOT NULL AUTO_INCREMENT,
  `changelog` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`change_id`) USING BTREE,
  INDEX `FK_changelog_changelog_type`(`type`) USING BTREE,
  CONSTRAINT `FK_changelog_changelog_type` FOREIGN KEY (`type`) REFERENCES `changelog_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of changelog
-- ----------------------------

-- ----------------------------
-- Table structure for changelog_type
-- ----------------------------
DROP TABLE IF EXISTS `changelog_type`;
CREATE TABLE `changelog_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of changelog_type
-- ----------------------------

-- ----------------------------
-- Table structure for failed_logins
-- ----------------------------
DROP TABLE IF EXISTS `failed_logins`;
CREATE TABLE `failed_logins`  (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attempts` int(5) NOT NULL DEFAULT 0,
  `last_attempt` datetime NULL DEFAULT NULL,
  `block_until` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumblob NOT NULL,
  PRIMARY KEY (`id`, `ip_address`) USING BTREE,
  INDEX `last_activity_idx`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `timestamp` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_gm` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for daily_signups
-- ----------------------------
DROP TABLE IF EXISTS `daily_signups`;
CREATE TABLE `daily_signups`  (
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_signups
-- ----------------------------

-- ----------------------------
-- Table structure for email_log
-- ----------------------------
DROP TABLE IF EXISTS `email_log`;
CREATE TABLE `email_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_log
-- ----------------------------

-- ----------------------------
-- Table structure for email_templates
-- ----------------------------
DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_templates
-- ----------------------------
INSERT INTO `email_templates` VALUES (1, 'password_recovery.tpl');

-- ----------------------------
-- Table structure for image_slider
-- ----------------------------
DROP TABLE IF EXISTS `image_slider`;
CREATE TABLE `image_slider`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `footer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_slider
-- ----------------------------
INSERT INTO `image_slider` VALUES (1, NULL, '', '', 1, 'Header', 'Body', 'Footer');
INSERT INTO `image_slider` VALUES (2, NULL, 'register', 'Join the battle today! Click here to sign up!', 2, 'Header', 'Body', 'Footer');
INSERT INTO `image_slider` VALUES (3, NULL, 'vote', 'Vote and be rewarded', 3, 'Header', 'Body', 'Footer');
INSERT INTO `image_slider` VALUES (4, NULL, '', '', 4, 'Header', 'Body', 'Footer');
INSERT INTO `image_slider` VALUES (5, NULL, '', '', 5, 'Header', 'Body', 'Footer');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logType` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logMessage` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` int(11) UNSIGNED NULL DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `custom` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#',
  `side` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'top',
  `rank` int(11) NOT NULL,
  `specific_rank` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(11) NULL DEFAULT NULL,
  `permission` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lrd` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dropdown_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_menu_ranks`(`rank`) USING BTREE,
  CONSTRAINT `FK_menu_ranks` FOREIGN KEY (`rank`) REFERENCES `ranks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Home', 'news', 'top', 1, 0, 1, NULL, NULL, NULL);
INSERT INTO `menu` VALUES (2, '{\"english\":\"How to connect\"}', 'page/connect', 'top', 1, 0, 3, NULL, NULL, NULL);
INSERT INTO `menu` VALUES (4, 'Online players', 'online', 'bottom', 1, 0, 5, NULL, NULL, NULL);
INSERT INTO `menu` VALUES (5, 'PvP Statistics', 'pvp_statistics', 'side', 1, 0, 6, NULL, NULL, NULL);
INSERT INTO `menu` VALUES (6, '{\"english\":\"dropdown item\"}', 'tt', 'top', 1, 0, 7, NULL, 'L', 7);
INSERT INTO `menu` VALUES (7, 'Dropdown', '#', 'top', 1, 0, 2, NULL, 'D', NULL);

-- ----------------------------
-- Table structure for mod_logs
-- ----------------------------
DROP TABLE IF EXISTS `mod_logs`;
CREATE TABLE `mod_logs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `action` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mod` int(11) UNSIGNED NULL DEFAULT NULL,
  `affected` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `time` int(11) NOT NULL,
  `isAcc` int(1) NOT NULL,
  `realm` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 830 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_logs
-- ----------------------------

-- ----------------------------
-- Table structure for monthly_income
-- ----------------------------
DROP TABLE IF EXISTS `monthly_income`;
CREATE TABLE `monthly_income`  (
  `month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`month`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monthly_income
-- ----------------------------
INSERT INTO `monthly_income` VALUES ('2022-09', 5);

-- ----------------------------
-- Table structure for monthly_votes
-- ----------------------------
DROP TABLE IF EXISTS `monthly_votes`;
CREATE TABLE `monthly_votes`  (
  `month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`month`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monthly_votes
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `read` int(1) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for order_log
-- ----------------------------
DROP TABLE IF EXISTS `order_log`;
CREATE TABLE `order_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `completed` int(1) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `vp_cost` int(11) NULL DEFAULT NULL,
  `dp_cost` int(11) NULL DEFAULT NULL,
  `cart` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_log
-- ----------------------------

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `permission` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_needed` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identifier`(`identifier`) USING BTREE,
  INDEX `fk_rank_needed_ranks`(`rank_needed`) USING BTREE,
  CONSTRAINT `fk_rank_needed_ranks` FOREIGN KEY (`rank_needed`) REFERENCES `ranks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'connect', '{\"english\":\"How to connect\"}', '<p><strong>1.</strong> First of all, you must create an account. The account is used to log into both the game and our website. <a href=\"./register\">Click here</a> to open the registration page. <br /><br /><strong>2.</strong> Install World of Warcraft. You can download it (legally) from here: <a href=\"https://www.worldofwarcraft.com/account/download/clients/pc/InstallWoW.exe\" target=\"_blank\" rel=\"noopener\">Windows</a> or <a href=\"https://www.worldofwarcraft.com/account/download/clients/mac/InstallWoW.zip\" target=\"_blank\" rel=\"noopener\">Mac</a>. Make sure to upgrade to our current supported patch, which is 3.3.5 (build 12340). Patch mirrors can be found <a href=\"http://www.wowwiki.com/Patch_mirrors\" target=\"_blank\" rel=\"noopener\">here</a>. <br /><br /><strong>3.</strong> Open up the \"World of Warcraft\" directory. The default directory is \"C:\\Program Files\\World of Warcraft\". When you\'ve found it, open up the directory called \"data\", then go into the directory called either enUS or enGB, depending on your client language. <br /><br /><strong>4.</strong> Open up the file called \"realmlist.wtf\" with a text editor such as Notepad. To do this, you must right click on the file and choose properties, then select notepad as the default software for files with the \".wtf\" ending. You may also just start the text editor and drag the file into the edit window. <br /><br /><strong>5.</strong> Erase all text and change it to:</p>\n<div style=\"padding: 30px; display: block; font-weight: bold;\">set realmlist logon.myserver.com (edit from admin panel -&gt; pages)</div>\n<p><strong>You may now start playing! If you need any help, do not hesitate to create a support ticket.</strong></p>', NULL, 1);

-- ----------------------------
-- Table structure for password_recovery_key
-- ----------------------------
DROP TABLE IF EXISTS `password_recovery_key`;
CREATE TABLE `password_recovery_key`  (
  `recoverykey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_recovery_key
-- ----------------------------

-- ----------------------------
-- Table structure for paygol_logs
-- ----------------------------
DROP TABLE IF EXISTS `paygol_logs`;
CREATE TABLE `paygol_logs`  (
  `message_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `service_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shortcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `points` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paygol_logs
-- ----------------------------

-- ----------------------------
-- Table structure for paypal_donate
-- ----------------------------
DROP TABLE IF EXISTS `paypal_donate`;
CREATE TABLE `paypal_donate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `points` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paypal_donate
-- ----------------------------
INSERT INTO `paypal_donate` VALUES (1, '5.00', '0.00', 15);
INSERT INTO `paypal_donate` VALUES (2, '10.00', '0.00', 20);
INSERT INTO `paypal_donate` VALUES (3, '20.00', '0.00', 50);
INSERT INTO `paypal_donate` VALUES (4, '40.00', '0.00', 100);
INSERT INTO `paypal_donate` VALUES (5, '60.00', '0.00', 150);
INSERT INTO `paypal_donate` VALUES (6, '80.00', '0.00', 200);
INSERT INTO `paypal_donate` VALUES (7, '100.00', '0.00', 300);

-- ----------------------------
-- Table structure for paypal_logs
-- ----------------------------
DROP TABLE IF EXISTS `paypal_logs`;
CREATE TABLE `paypal_logs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment_amount` double NOT NULL,
  `payment_currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payer_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `points` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `validated` int(1) NULL DEFAULT 0,
  `error` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pending_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paypal_logs
-- ----------------------------

-- ----------------------------
-- Table structure for ranks
-- ----------------------------
DROP TABLE IF EXISTS `ranks`;
CREATE TABLE `ranks`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'RANK',
  `access_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `is_gm` int(1) NULL DEFAULT 0,
  `is_dev` int(1) NULL DEFAULT 0,
  `is_admin` int(1) NULL DEFAULT 0,
  `is_owner` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ranks
-- ----------------------------
INSERT INTO `ranks` VALUES (1, 'Guest', '-1', 0, 0, 0, 0);
INSERT INTO `ranks` VALUES (2, 'Player', '0', 0, 0, 0, 0);
INSERT INTO `ranks` VALUES (3, 'Game master', '1', 1, 0, 0, 0);
INSERT INTO `ranks` VALUES (4, 'Developer', '2', 1, 1, 0, 0);
INSERT INTO `ranks` VALUES (5, 'Administrator', '3', 1, 1, 1, 0);
INSERT INTO `ranks` VALUES (6, 'Owner', '4', 1, 1, 1, 1);

-- ----------------------------
-- Table structure for realms
-- ----------------------------
DROP TABLE IF EXISTS `realms`;
CREATE TABLE `realms`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `char_database` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `world_database` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cap` int(5) NULL DEFAULT 100,
  `realmName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `console_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `console_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `console_port` int(6) NULL DEFAULT NULL,
  `emulator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realm_port` int(11) NULL DEFAULT NULL,
  `override_port_world` int(11) NULL DEFAULT NULL,
  `override_username_world` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `override_password_world` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `override_hostname_world` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `override_port_char` int(11) NULL DEFAULT NULL,
  `override_username_char` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `override_password_char` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `override_hostname_char` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of realms
-- ----------------------------
-- ----------------------------
-- Table structure for sideboxes
-- ----------------------------
DROP TABLE IF EXISTS `sideboxes`;
CREATE TABLE `sideboxes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `displayName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank_needed` int(10) NOT NULL DEFAULT 1,
  `order` int(11) NULL DEFAULT 100,
  `permission` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_sb_rank_needed`(`rank_needed`) USING BTREE,
  CONSTRAINT `fk_sb_rank_needed` FOREIGN KEY (`rank_needed`) REFERENCES `ranks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sideboxes
-- ----------------------------
INSERT INTO `sideboxes` VALUES (1, 'online_players_extended', 'Server status', 1, 3, NULL);
INSERT INTO `sideboxes` VALUES (3, 'language_picker', '{\"english\":\"Lang\"}', 1, 1, NULL);
INSERT INTO `sideboxes` VALUES (4, 'toppvp', 'PvP statistics', 1, 100, NULL);

-- ----------------------------
-- Table structure for sideboxes_custom
-- ----------------------------
DROP TABLE IF EXISTS `sideboxes_custom`;
CREATE TABLE `sideboxes_custom`  (
  `sidebox_id` int(10) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `sidebox_id`(`sidebox_id`) USING BTREE,
  CONSTRAINT `FK_sideboxes_custom_sideboxes` FOREIGN KEY (`sidebox_id`) REFERENCES `sideboxes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sideboxes_custom
-- ----------------------------

-- ----------------------------
-- Table structure for sideboxes_poll_answers
-- ----------------------------
DROP TABLE IF EXISTS `sideboxes_poll_answers`;
CREATE TABLE `sideboxes_poll_answers`  (
  `answerid` int(10) NOT NULL AUTO_INCREMENT,
  `questionid` int(10) NOT NULL,
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`answerid`) USING BTREE,
  INDEX `FK__sideboxes_poll_questions`(`questionid`) USING BTREE,
  CONSTRAINT `FK__sideboxes_poll_questions` FOREIGN KEY (`questionid`) REFERENCES `sideboxes_poll_questions` (`questionid`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sideboxes_poll_answers
-- ----------------------------

-- ----------------------------
-- Table structure for sideboxes_poll_questions
-- ----------------------------
DROP TABLE IF EXISTS `sideboxes_poll_questions`;
CREATE TABLE `sideboxes_poll_questions`  (
  `questionid` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`questionid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sideboxes_poll_questions
-- ----------------------------

-- ----------------------------
-- Table structure for sideboxes_poll_votes
-- ----------------------------
DROP TABLE IF EXISTS `sideboxes_poll_votes`;
CREATE TABLE `sideboxes_poll_votes`  (
  `questionid` int(11) NULL DEFAULT NULL,
  `answerid` int(11) NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL,
  INDEX `fk_answers`(`questionid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sideboxes_poll_votes
-- ----------------------------

-- ----------------------------
-- Table structure for spelltext_en
-- ----------------------------
DROP TABLE IF EXISTS `spelltext_en`;
CREATE TABLE `spelltext_en`  (
  `spellId` int(11) NOT NULL,
  `spellText` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spelltext_en
-- ----------------------------
INSERT INTO `spelltext_en` VALUES (5, 'Instantly Kills the target. I hope you feel good about yourself now.....');
INSERT INTO `spelltext_en` VALUES (56, 'Stuns target for 3 sec.');
INSERT INTO `spelltext_en` VALUES (89, 'Cripples the target, reducing movement speed by 40%, increasing time between melee and ranged attacks by 20%. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (126, 'Summons an Eye of Kilrogg and binds your vision to it. The eye moves quickly but is very fragile.');
INSERT INTO `spelltext_en` VALUES (265, 'Kills all enemies in a 30 yard radius. Cheater.');
INSERT INTO `spelltext_en` VALUES (403, 'Casts a bolt of lightning at the target for 13 to 15 Nature damage.');
INSERT INTO `spelltext_en` VALUES (430, 'Restores 151.2 mana over 18 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (431, 'Restores 436.8 mana over 21 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (432, 'Restores 835.2 mana over 24 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (433, 'Restores 51 health over 18 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (434, 'Restores 232 health over 21 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (435, 'Restores 460 health over 24 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (437, 'Restores 140 to 180 mana.');
INSERT INTO `spelltext_en` VALUES (438, 'Restores 280 to 360 mana.');
INSERT INTO `spelltext_en` VALUES (439, 'Restores 70 to 90 health.');
INSERT INTO `spelltext_en` VALUES (440, 'Restores 140 to 180 health.');
INSERT INTO `spelltext_en` VALUES (441, 'Restores 280 to 360 health.');
INSERT INTO `spelltext_en` VALUES (458, 'Summons and dismisses a rideable Brown Horse.');
INSERT INTO `spelltext_en` VALUES (459, 'Summons and dismisses a rideable gray wolf.');
INSERT INTO `spelltext_en` VALUES (468, 'Summons and dismisses a rideable White Stallion.');
INSERT INTO `spelltext_en` VALUES (470, 'Summons and dismisses a rideable Black Stallion.');
INSERT INTO `spelltext_en` VALUES (471, 'Summons and dismisses a rideable Palomino.');
INSERT INTO `spelltext_en` VALUES (472, 'Summons and dismisses a rideable Pinto.');
INSERT INTO `spelltext_en` VALUES (578, 'Summons and dismisses a rideable black wolf.');
INSERT INTO `spelltext_en` VALUES (579, 'Summons and dismisses a rideable red wolf.');
INSERT INTO `spelltext_en` VALUES (580, 'Summons and dismisses a rideable Timber Wolf.');
INSERT INTO `spelltext_en` VALUES (581, 'Summons and dismisses a rideable winter wolf.');
INSERT INTO `spelltext_en` VALUES (673, 'Increases armor by 50 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (700, 'Puts the enemy target to sleep for up to 20 sec. Any damage caused will awaken the target. Only one target can be asleep at a time. Unreliable on targets above level 30.');
INSERT INTO `spelltext_en` VALUES (746, 'Heals 66 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (833, 'Instantly heals 30 damage. Also restores 60 mana over 10 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (835, 'Stuns target for 3 sec. Increased chance to be resisted when used against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (871, 'Reduces all damage taken by 60% for 12 sec.');
INSERT INTO `spelltext_en` VALUES (1090, 'Puts the enemy target to sleep for up to 30 sec. Any damage caused will awaken the target. Only one target can be asleep at a time.');
INSERT INTO `spelltext_en` VALUES (1122, 'Summons a meteor from the Twisting Nether, causing 200 Fire damage and stunning all enemy targets in the area for 2 sec. An Infernal rises from the crater, under the command of the caster for 1 min.');
INSERT INTO `spelltext_en` VALUES (1127, 'Restores 810 health over 27 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (1129, 'Restores 1392 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (1131, 'Restores 2148 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (1133, 'Restores 1344.6 mana over 27 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (1135, 'Restores 1992 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (1137, 'Restores 2934 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (1138, 'Increases Frost and Shadow resistance by 10 for 1 min.');
INSERT INTO `spelltext_en` VALUES (1139, 'Increases time between target\'s attacks by 5% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (1159, 'Heals 114 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (1538, 'Charges the Rod of Helcular when used at the three ceremonial pyres.');
INSERT INTO `spelltext_en` VALUES (1940, 'Inflicts 28 to 32 Fire damage in a 3 yard radius.');
INSERT INTO `spelltext_en` VALUES (2023, 'Restores 455 to 585 mana.');
INSERT INTO `spelltext_en` VALUES (2024, 'Restores 455 to 585 health.');
INSERT INTO `spelltext_en` VALUES (2052, 'Heal your target for 71 to 85.');
INSERT INTO `spelltext_en` VALUES (2120, 'Calls down a pillar of fire, burning all enemies within the area for 52 to 68 Fire damage and an additional 48 Fire damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (2367, 'Increases Strength by 4 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (2370, 'Restores 90 to 150 mana and 90 to 150 health.');
INSERT INTO `spelltext_en` VALUES (2374, 'Increases Agility by 4 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (2378, 'Increases the player\'s maximum health by 27 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (2379, 'Increases run speed by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (2380, 'Increases your resistance to all schools of magic by 25 for 3 min.');
INSERT INTO `spelltext_en` VALUES (2639, 'Restores 280 health and 280 mana over 21 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (2823, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [6*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (2824, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [9*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (2828, 'Increase sharp weapon damage by 2 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (2829, 'Increase sharp weapon damage by 3 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (2830, 'Increase sharp weapon damage by 4 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (2831, 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 8.');
INSERT INTO `spelltext_en` VALUES (2832, 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 16.');
INSERT INTO `spelltext_en` VALUES (2833, 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 24. Only usable on item_display level 15 and above.');
INSERT INTO `spelltext_en` VALUES (3112, 'Increase the damage of a blunt weapon by 2 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (3113, 'Increase the damage of a blunt weapon by 3 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (3114, 'Increase the damage of a blunt weapon by 4 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (3160, 'Increases Agility by 8 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (3164, 'Increases Strength by 8 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (3166, 'Increases Intellect by 6 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (3169, 'Reduces physical damage taken by 120 for 8 sec.');
INSERT INTO `spelltext_en` VALUES (3219, 'Regenerate 2 health every 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (3220, 'Increases armor by 150 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (3222, 'Regenerate 6 health every 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (3223, 'Regenerate 12 health every 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (3267, 'Heals 161 damage over 7 sec.');
INSERT INTO `spelltext_en` VALUES (3268, 'Heals 301 damage over 7 sec.');
INSERT INTO `spelltext_en` VALUES (3407, 'Opens certain Dalaran-sealed containers.');
INSERT INTO `spelltext_en` VALUES (3408, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy, slowing their movement speed by 70% for 12 sec.');
INSERT INTO `spelltext_en` VALUES (3591, 'Blessing from the Holy Spring of Stranglethorn Vale.');
INSERT INTO `spelltext_en` VALUES (3592, 'Cures diseases and neutralizes poisons. This effect is less effective against higher level poisons.');
INSERT INTO `spelltext_en` VALUES (3593, 'Increases the player\'s maximum health by 120 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (3594, 'When applied to a melee weapon it gives a 15% chance of casting Shadow Bolt (Rank 3) at the opponent when it hits. Lasts 30 minutes. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (3595, 'When applied to a melee weapon it gives a 10% chance of casting Frostbolt at the opponent when it hits. Lasts 30 minutes. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (3607, 'Will release Yenniku from his imprisonment.');
INSERT INTO `spelltext_en` VALUES (3678, 'Use the blade on the Altar of the Tides.');
INSERT INTO `spelltext_en` VALUES (3680, 'Gives the imbiber invisibility for 15 sec.');
INSERT INTO `spelltext_en` VALUES (3742, 'Surrounds you with electricity, dealing 15 Nature damage to any who strike you for 15 sec.');
INSERT INTO `spelltext_en` VALUES (3921, 'Target Iskalder to subjugate him. Deliver him to The Bone Witch. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (3933, 'A Small Seaforium charge which is enough to blast open some doors.');
INSERT INTO `spelltext_en` VALUES (3968, 'Build a Goblin Land Mine.');
INSERT INTO `spelltext_en` VALUES (3974, 'Attaches a permanent scope to a bow or gun that increases its damage by 1.');
INSERT INTO `spelltext_en` VALUES (3975, 'Attaches a permanent scope to a bow or gun that increases its damage by 2.');
INSERT INTO `spelltext_en` VALUES (3976, 'Attaches a permanent scope to a bow or gun that increases its damage by 3.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (4042, 'Restores 700 to 900 health.');
INSERT INTO `spelltext_en` VALUES (4054, 'Inflicts 26 to 34 Fire damage in a 5 yard radius.');
INSERT INTO `spelltext_en` VALUES (4055, 'Creates a Mechanical Squirrel that follows you around. Right Click to summon and dismiss your Squirrel.');
INSERT INTO `spelltext_en` VALUES (4056, 'Blasts open simple locked doors and chests.');
INSERT INTO `spelltext_en` VALUES (4057, 'Absorbs 500 fire damage. Lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (4060, 'Transforms the target into a Leper Gnome, reducing its melee damage and spell power by 40 and its movement rate by 20% for 12 sec.');
INSERT INTO `spelltext_en` VALUES (4061, 'Inflicts 51 to 69 Fire damage in a 5 yard radius.');
INSERT INTO `spelltext_en` VALUES (4062, 'Inflicts 128 to 172 Fire damage in a 5 yard radius.');
INSERT INTO `spelltext_en` VALUES (4064, 'Inflicts 22 to 28 Fire damage and incapacitates targets in a 3 yard radius for 1 sec. Any damage will break the effect. Unreliable against targets higher than level 24.');
INSERT INTO `spelltext_en` VALUES (4065, 'Inflicts 43 to 57 Fire damage and incapacitates targets in a 5 yard radius for 1 sec. Any damage will break the effect. Unreliable against targets higher than level 36.');
INSERT INTO `spelltext_en` VALUES (4066, 'Inflicts 73 to 97 Fire damage and incapacitates targets in a 3 yard radius for 2 sec. Any damage will break the effect. Unreliable against targets higher than level 39.');
INSERT INTO `spelltext_en` VALUES (4067, 'Inflicts 85 to 115 Fire damage and incapacitates targets in a 5 yard radius for 2 sec. Any damage will break the effect. Unreliable against targets higher than level 44.');
INSERT INTO `spelltext_en` VALUES (4068, 'Inflicts 132 to 218 Fire damage and incapacitates targets for 3 sec in a 3 yard radius. Any damage will break the effect. Unreliable against targets higher than level 50.');
INSERT INTO `spelltext_en` VALUES (4069, 'Inflicts 149 to 201 Fire damage and incapacitates targets in a 5 yard radius for 3 sec. Any damage will break the effect. Unreliable against targets higher than level 53.');
INSERT INTO `spelltext_en` VALUES (4070, 'Have a 2% chance when struck in combat of increasing armor by 350 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (4071, 'Drops a target dummy on the ground that attracts nearby monsters to attack it. Lasts for 15 seconds or until killed.');
INSERT INTO `spelltext_en` VALUES (4072, 'Drops a target dummy on the ground that attracts nearby monsters to attack it. Lasts for 15 seconds or until killed.');
INSERT INTO `spelltext_en` VALUES (4073, 'Activates your Mechanical Dragonling to fight for you for 1 min.');
INSERT INTO `spelltext_en` VALUES (4074, 'Summons an Explosive Sheep which will charge at a nearby enemy and explode for 135 to 165 damage. Lasts for 3 min or until it explodes.');
INSERT INTO `spelltext_en` VALUES (4075, 'Blasts open difficult locked doors and chests.');
INSERT INTO `spelltext_en` VALUES (4077, 'Absorbs 600 Frost damage. Lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (4078, 'Creates a Compact Harvest Reaper that will fight for you for 10 min or until it is destroyed.');
INSERT INTO `spelltext_en` VALUES (4079, 'Gives invisibility for 10 sec.');
INSERT INTO `spelltext_en` VALUES (4100, 'Places the Goblin Land Mine on the ground. It will explode for 394 to 506 fire damage the next time a hostile creature passes near it. The mine has a duration of 1 min.');
INSERT INTO `spelltext_en` VALUES (4130, 'Banishes a Burning Exile');
INSERT INTO `spelltext_en` VALUES (4131, 'Banishes a Cresting Exile');
INSERT INTO `spelltext_en` VALUES (4132, 'Banishes a Thundering Exile');
INSERT INTO `spelltext_en` VALUES (4141, 'Summon Myzrael from the Shards of Myzrael.');
INSERT INTO `spelltext_en` VALUES (4152, 'Nearby elven gems appear on the minimap.');
INSERT INTO `spelltext_en` VALUES (4239, 'Activates Trelane\'s tower defenses.');
INSERT INTO `spelltext_en` VALUES (4318, 'Increases your Agility by 12 for 30 min.');
INSERT INTO `spelltext_en` VALUES (4941, 'Increases armor by 1000 for 1 min.');
INSERT INTO `spelltext_en` VALUES (4945, 'Place upon the Seaworn Altar, if you dare...');
INSERT INTO `spelltext_en` VALUES (4954, 'Right click near a forge to break.');
INSERT INTO `spelltext_en` VALUES (4975, 'Invokes Winterhoof spirits of cleansing.');
INSERT INTO `spelltext_en` VALUES (4976, 'Right-click to fill the Crystal Phial at the Shadowglen moonwell.');
INSERT INTO `spelltext_en` VALUES (4977, 'Invokes Thunderhorn spirits of cleansing.');
INSERT INTO `spelltext_en` VALUES (4978, 'Invokes Wildmane spirits of cleansing.');
INSERT INTO `spelltext_en` VALUES (4981, 'Induces a Vision.');
INSERT INTO `spelltext_en` VALUES (5004, 'Restores 51 health over 18 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (5005, 'Restores 232 health over 21 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (5006, 'Restores 460 health over 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (5007, 'Restores 810 health over 27 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (5020, 'A powerful ale that increases your Strength by 4 and decreases your Intellect by 5 for 5 min.');
INSERT INTO `spelltext_en` VALUES (5021, 'Increases your health by 23 to 37, but decreases your Spirit by 4 for 5 min.');
INSERT INTO `spelltext_en` VALUES (5024, 'Increase your run speed by 60% for 10 sec, but deals damage equal to 60% of your maximum health and drains 60% of your maximum mana over 10 seconds.');
INSERT INTO `spelltext_en` VALUES (5099, 'Place upon the Altar of Fire');
INSERT INTO `spelltext_en` VALUES (5100, 'Inflicts 47 to 53 Nature damage in a 10 yard radius.');
INSERT INTO `spelltext_en` VALUES (5107, 'Opens the Kolkar Booty chest.');
INSERT INTO `spelltext_en` VALUES (5134, 'Causes all Beasts in a 5 yard radius to run away for 10 sec. Chance of failure when used against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (5140, 'Perfect for destroying flying machines.');
INSERT INTO `spelltext_en` VALUES (5161, 'This dig rat is still struggling, why don\'t you let it go?');
INSERT INTO `spelltext_en` VALUES (5166, 'Digs up silithid eggs.');
INSERT INTO `spelltext_en` VALUES (5206, 'Plant these seeds in the Stagnant Oasis fissure.');
INSERT INTO `spelltext_en` VALUES (5257, 'Increases Stamina by 3 and gets you pretty drunk.');
INSERT INTO `spelltext_en` VALUES (5316, 'Place at a scytheclaw nest.');
INSERT INTO `spelltext_en` VALUES (5405, 'Restores 390 to 410 mana.');
INSERT INTO `spelltext_en` VALUES (5513, 'Throw at the targeted Dark Subjugator in order to disguise them against their will. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (5665, 'Increases physical damage by 1 for 10 min.');
INSERT INTO `spelltext_en` VALUES (5666, 'Summons a Timberling to protect you for 20 min.');
INSERT INTO `spelltext_en` VALUES (5707, 'Restores 10 health every 5 sec.');
INSERT INTO `spelltext_en` VALUES (5720, 'Instantly restores 500 life.');
INSERT INTO `spelltext_en` VALUES (5723, 'Instantly restores 800 life.');
INSERT INTO `spelltext_en` VALUES (5761, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy, increasing their casting time by 30% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (5809, 'Creates a bowl of scrying.');
INSERT INTO `spelltext_en` VALUES (5917, 'Decreases target\'s chance to hit by 25% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (6084, 'Summons a Ghost Saber to fight for you for 10 min.');
INSERT INTO `spelltext_en` VALUES (6114, 'Increases your Intellect by 4 and decreases your Stamina by 5 for 5 min.');
INSERT INTO `spelltext_en` VALUES (6251, 'Summons a cannon that will fire at enemies in front of it that are attacking you.');
INSERT INTO `spelltext_en` VALUES (6262, 'Instantly restores 100 life.');
INSERT INTO `spelltext_en` VALUES (6263, 'Instantly restores 250 life.');
INSERT INTO `spelltext_en` VALUES (6296, 'Enchants a weapon to have a 15% chance to inflict 9 to 13 Fire damage to all enemies within 0 yards.');
INSERT INTO `spelltext_en` VALUES (6298, 'Transform into a Moonstalker and become invisible for 5 min.');
INSERT INTO `spelltext_en` VALUES (6405, 'Transforms you into a Furbolg for 3 min.');
INSERT INTO `spelltext_en` VALUES (6410, 'Heals 280 damage over 21 sec, assuming you don\'t bite down on a poison sac.');
INSERT INTO `spelltext_en` VALUES (6509, 'Target the dead Ravenous Jaws shark to collect its blood from the surrounding waters. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (6512, 'Grants detect lesser invisibility for 10 min.');
INSERT INTO `spelltext_en` VALUES (6527, 'Unlocks a worn chest.');
INSERT INTO `spelltext_en` VALUES (6609, 'Fill the Jade Phial at the Starbreeze moonwell.');
INSERT INTO `spelltext_en` VALUES (6610, 'Fill the Tourmaline Phial at the Pools of Arlithrien moonwell.');
INSERT INTO `spelltext_en` VALUES (6611, 'Fill the Amethyst Phial at the Oracle Glade moonwell.');
INSERT INTO `spelltext_en` VALUES (6612, 'Increases Rage by 20 to 40.');
INSERT INTO `spelltext_en` VALUES (6613, 'Increases Rage by 30 to 60.');
INSERT INTO `spelltext_en` VALUES (6614, 'You run in fear at a high speed from a nearby enemy in a random direction.  If there are no enemies nearby you stand frozen in fear.');
INSERT INTO `spelltext_en` VALUES (6615, 'Makes you immune to Stun and Movement Impairing effects for the next 30 sec.  Does not remove effects already on the imbiber.');
INSERT INTO `spelltext_en` VALUES (6620, 'Place near the Venture Co. Airport');
INSERT INTO `spelltext_en` VALUES (6626, 'Sets NG-5 Charge (Blue)');
INSERT INTO `spelltext_en` VALUES (6627, 'Detonates NG-5 Charge (Red) after it\'s been set.');
INSERT INTO `spelltext_en` VALUES (6630, 'Sets NG-5 Charge (Red)');
INSERT INTO `spelltext_en` VALUES (6648, 'Summons and dismisses a rideable Chestnut Mare.');
INSERT INTO `spelltext_en` VALUES (6653, 'Summons and dismisses a rideable Dire Wolf.');
INSERT INTO `spelltext_en` VALUES (6654, 'Summons and dismisses a rideable Brown Wolf.');
INSERT INTO `spelltext_en` VALUES (6656, 'Detonates NG-5 Charge (Blue) after it\'s been set.');
INSERT INTO `spelltext_en` VALUES (6668, 'Shoots a firework into the air that bursts into a thousand red stars.');
INSERT INTO `spelltext_en` VALUES (6717, 'Place upon the Flame of Uzel.');
INSERT INTO `spelltext_en` VALUES (6724, 'Grants immunity from all damage and spells for 10 sec.');
INSERT INTO `spelltext_en` VALUES (6727, 'Don\'t eat me.');
INSERT INTO `spelltext_en` VALUES (6758, 'The ultimate party favor!');
INSERT INTO `spelltext_en` VALUES (6777, 'Summons and dismisses a rideable Gray Ram.');
INSERT INTO `spelltext_en` VALUES (6803, 'Fill the Etched Phial at the Ashenvale moonwell.');
INSERT INTO `spelltext_en` VALUES (6896, 'Summons and dismisses a rideable Black Ram.');
INSERT INTO `spelltext_en` VALUES (6897, 'Summons and dismisses a rideable blue ram.');
INSERT INTO `spelltext_en` VALUES (6898, 'Summons and dismisses a rideable White Ram.');
INSERT INTO `spelltext_en` VALUES (6899, 'Summons and dismisses a rideable Brown Ram.');
INSERT INTO `spelltext_en` VALUES (6902, 'Makes you sneeze!');
INSERT INTO `spelltext_en` VALUES (6918, 'Use in Razorfen Kraul near buried tubers to summon a Snufflenose Gopher.');
INSERT INTO `spelltext_en` VALUES (7108, 'Removes 1 negative spell effect from user. Cleans with the power of lemon.');
INSERT INTO `spelltext_en` VALUES (7178, 'Allows the Imbiber to breathe water for 30 min.');
INSERT INTO `spelltext_en` VALUES (7211, 'Stabs a devilsaur, inflicting a large dose of poison.');
INSERT INTO `spelltext_en` VALUES (7216, 'Attaches an Iron Spike to your shield that deals damage every time you block with it.');
INSERT INTO `spelltext_en` VALUES (7218, 'Attaches a counterweight to a two-handed sword, mace, axe or polearm increasing the wielder\'s haste rating by 20.');
INSERT INTO `spelltext_en` VALUES (7220, 'Attaches a chain to your weapon, reducing the duration of Disarm effects by 50%. Does not stack with other similar effects.');
INSERT INTO `spelltext_en` VALUES (7233, 'Absorbs 975 to 1625 fire damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (7239, 'Absorbs 1350 to 2250 Frost damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (7242, 'Absorbs 675 to 1125 shadow damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (7245, 'Absorbs 300 to 500 holy damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (7254, 'Absorbs 1350 to 2250 nature damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (7285, 'Place in the Maraudine War Horn, and blow.');
INSERT INTO `spelltext_en` VALUES (7363, 'Increase the Spirit of nearby party members by 4.');
INSERT INTO `spelltext_en` VALUES (7396, 'Increases your melee haste rating by 100 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (7418, 'Permanently enchant bracers to increase the health of the wearer by 5.');
INSERT INTO `spelltext_en` VALUES (7420, 'Permanently enchant a piece of chest armor so that it increases the health of the wearer by 5.');
INSERT INTO `spelltext_en` VALUES (7426, 'Enchant a piece of chest armor so it has a 2% chance per hit of giving you 10 points of damage absorption.');
INSERT INTO `spelltext_en` VALUES (7428, 'Permanently enchant bracers to increase defense rating by 2.');
INSERT INTO `spelltext_en` VALUES (7434, 'Heal 2% of your total health any time that you deal a critical hit with a melee or ranged weapon. May only be used within Icecrown.');
INSERT INTO `spelltext_en` VALUES (7443, 'Permanently enchant chest armor to increase mana by 5.');
INSERT INTO `spelltext_en` VALUES (7454, 'Permanently enchant a cloak so that it increases the resistance to all schools of magic by 1.');
INSERT INTO `spelltext_en` VALUES (7457, 'Permanently enchant bracers so they increase the wearer\'s Stamina by 1.');
INSERT INTO `spelltext_en` VALUES (7515, 'Increases defense rating by 4.');
INSERT INTO `spelltext_en` VALUES (7516, 'Increases defense rating by 5.');
INSERT INTO `spelltext_en` VALUES (7517, 'Increases defense rating by 6.');
INSERT INTO `spelltext_en` VALUES (7518, 'Increases defense rating by 7.');
INSERT INTO `spelltext_en` VALUES (7597, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (7598, 'Increases your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (7617, 'When struck in combat has a % chance of inflicting 75 to 125 Shadow damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (7619, 'When struck in combat has a % chance of inflicting 105 to 175 Shadow damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (7669, 'Removes the Hex of Ravenclaw.');
INSERT INTO `spelltext_en` VALUES (7678, 'Increases spell power by 5.');
INSERT INTO `spelltext_en` VALUES (7679, 'Increases spell power by 6.');
INSERT INTO `spelltext_en` VALUES (7680, 'Increases spell power by 7.');
INSERT INTO `spelltext_en` VALUES (7681, 'Increases spell power by 8.');
INSERT INTO `spelltext_en` VALUES (7707, 'Increases shadow spell power by 6.');
INSERT INTO `spelltext_en` VALUES (7711, 'Adds 2 fire damage to your melee attacks.');
INSERT INTO `spelltext_en` VALUES (7721, 'Adds 4 fire damage to your weapon attack.');
INSERT INTO `spelltext_en` VALUES (7728, 'Call forth a voidwalker using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (7737, 'Restores 30 health over 15 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (7745, 'Permanently enchant a two-handed melee weapon to do 2 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (7748, 'Permanently enchant a piece of chest armor so that it increases the health of the wearer by 15.');
INSERT INTO `spelltext_en` VALUES (7766, 'Permanently enchant bracers to increase Spirit by 1.');
INSERT INTO `spelltext_en` VALUES (7771, 'Enchant a cloak to provide 10 additional points of armor.');
INSERT INTO `spelltext_en` VALUES (7776, 'Permanently enchant chest armor to increase mana by 20.');
INSERT INTO `spelltext_en` VALUES (7779, 'Permanently enchant bracers so they increase the wearer\'s Agility by 1.');
INSERT INTO `spelltext_en` VALUES (7782, 'Permanently enchant bracers to increase Strength by 1.');
INSERT INTO `spelltext_en` VALUES (7786, 'Permanently enchant a Melee Weapon to do 2 additional points of damage to beasts.');
INSERT INTO `spelltext_en` VALUES (7788, 'Permanently enchant a melee weapon to do 1 additional point of damage.');
INSERT INTO `spelltext_en` VALUES (7793, 'Permanently enchant a two-handed melee weapon to increase Intellect by 3.');
INSERT INTO `spelltext_en` VALUES (7823, 'Fishing skill increased by 5.');
INSERT INTO `spelltext_en` VALUES (7825, 'Fishing skill increased by 15.');
INSERT INTO `spelltext_en` VALUES (7826, 'Fishing skill increased by 20.');
INSERT INTO `spelltext_en` VALUES (7840, 'Increases swim speed by 100% for 20 sec.');
INSERT INTO `spelltext_en` VALUES (7844, 'Increases Fire spell power by 10 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (7857, 'Permanently enchant a piece of chest armor to increase the health of the wearer by 25.');
INSERT INTO `spelltext_en` VALUES (7859, 'Permanently enchant bracers to increase Spirit by 3.');
INSERT INTO `spelltext_en` VALUES (7861, 'Permanently enchant a cloak so that it increases resistance to fire by 5.');
INSERT INTO `spelltext_en` VALUES (7863, 'Permanently enchant boots to increase Stamina by 1.');
INSERT INTO `spelltext_en` VALUES (7865, 'Decreases all damage taken by 5%. May only be used within Icecrown.');
INSERT INTO `spelltext_en` VALUES (7867, 'Permanently enchant boots to increase Agility by 1.');
INSERT INTO `spelltext_en` VALUES (7914, 'Captures the spirit of the nearest Burning Blade member. If target dies while being drained, the caster gains 1 Infused Burning Gem.');
INSERT INTO `spelltext_en` VALUES (7926, 'Heals 400 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (7927, 'Heals 640 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (7932, 'Target is cured of poisons up to level 25.');
INSERT INTO `spelltext_en` VALUES (7933, 'Target is cured of poisons up to level 35.');
INSERT INTO `spelltext_en` VALUES (7935, 'Creates 3 Vials of Strong Anti-Venom.');
INSERT INTO `spelltext_en` VALUES (8063, 'Eat me.');
INSERT INTO `spelltext_en` VALUES (8070, 'Heals the target for 180 damage over 12 sec.');
INSERT INTO `spelltext_en` VALUES (8082, 'Fishing skill increased by 25.');
INSERT INTO `spelltext_en` VALUES (8087, 'When applied to your fishing pole, increases Fishing by 25 for 10 min.');
INSERT INTO `spelltext_en` VALUES (8088, 'When applied to your fishing pole, increases Fishing by 50 for 10 min.');
INSERT INTO `spelltext_en` VALUES (8089, 'When applied to your fishing pole, increases Fishing by 100 for 10 minutes.');
INSERT INTO `spelltext_en` VALUES (8090, 'When applied to your fishing pole, increases Fishing by 75 for 10 minutes.');
INSERT INTO `spelltext_en` VALUES (8091, 'Increases the target\'s Armor by 65 for 30 min. Only one scroll effect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (8094, 'Increases the target\'s Armor by 105 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8095, 'Increases the target\'s Armor by 150 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8096, 'Increases the target\'s Intellect by 3 for 30 min. Only one scroll effect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (8097, 'Increases the target\'s Intellect by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8098, 'Increases the target\'s Intellect by 12 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8099, 'Increases the target\'s Stamina by 3 for 30 min. Only one scroll effect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (8100, 'Increases the target\'s Stamina by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8101, 'Increases the target\'s Stamina by 16 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8112, 'Increases the target\'s Spirit by 3 for 30 min. Only one scroll effect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (8113, 'Increases the target\'s Spirit by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8114, 'Increases the target\'s Spirit by 13 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8115, 'Increases the target\'s Agility by 3 for 30 min. Only one scroll effect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (8116, 'Increases the target\'s Agility by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8117, 'Increases the target\'s Agility by 8 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8118, 'Increases the target\'s Strength by 3 for 30 min. Only one scroll effect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (8119, 'Increases the target\'s Strength by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8120, 'Increases the target\'s Strength by 8 for 30 min.');
INSERT INTO `spelltext_en` VALUES (8121, 'Teaches Defensive Stance, Sunder Armor (Rank 1), and Taunt (Rank 1).');
INSERT INTO `spelltext_en` VALUES (8148, 'Causes 20 Nature damage to any creature that strikes a nearby party member. Players may only have one aura on them per paladin at any one time. The aura lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (8176, 'Summons a guardian felhunter that will protect you for 1 hour.');
INSERT INTO `spelltext_en` VALUES (8191, 'A burst of energy fills the caster, increasing <his/her> damage by 10 and armor by 150 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (8202, 'Allows the shaman to see elemental spirits.');
INSERT INTO `spelltext_en` VALUES (8212, 'Your size is increased and your Strength goes up by 8 to match your new size. Lasts 20 min. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (8213, 'Eat me.');
INSERT INTO `spelltext_en` VALUES (8277, 'Physical damage caused by the target is reduced by 5 for 2 min.');
INSERT INTO `spelltext_en` VALUES (8283, 'For use on a Snufflenose Gopher.');
INSERT INTO `spelltext_en` VALUES (8312, 'Renders a target unable to move for 10 sec.');
INSERT INTO `spelltext_en` VALUES (8313, 'Poisons target for 4 Nature damage every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (8331, 'The dynamite for Non-Engineers that nearly always gets to the target! Inflicts 51 to 69 Fire damage in a 5 yard radius.');
INSERT INTO `spelltext_en` VALUES (8342, 'Jumper Cables will sometimes be able to shock a dead player back to life. Cannot be used when in combat.');
INSERT INTO `spelltext_en` VALUES (8344, 'Allows control of a mechanical target for a short time. It may not always work and may just root the machine or make it very very angry. Gnomish engineering at its finest.');
INSERT INTO `spelltext_en` VALUES (8348, 'Heals wielder of 78 damage over 12 sec.');
INSERT INTO `spelltext_en` VALUES (8394, 'Summons and dismisses a rideable Striped Frostsaber.');
INSERT INTO `spelltext_en` VALUES (8395, 'Summons and dismisses a rideable Emerald Raptor.');
INSERT INTO `spelltext_en` VALUES (8397, 'Has a 2% chance when struck in combat of protecting you with a holy shield.');
INSERT INTO `spelltext_en` VALUES (8517, 'Opens Dead-tooth\'s Strongbox.');
INSERT INTO `spelltext_en` VALUES (8532, 'When applied to your fishing pole, increases Fishing by 50 for 10 minutes.');
INSERT INTO `spelltext_en` VALUES (8552, 'Damage caused by the target is reduced by 5 for 2 min.');
INSERT INTO `spelltext_en` VALUES (8593, 'The Symbol of Life will bring the person attuned to it back to life.');
INSERT INTO `spelltext_en` VALUES (8674, 'Call forth a succubus using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (8679, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [13+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (8686, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [21+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (8688, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [30+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (8690, 'Returns you to <Home>. Speak to an Innkeeper in a different place to change your home location.');
INSERT INTO `spelltext_en` VALUES (8712, 'Call forth a felhunter using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (8736, 'Conjures food to eat.');
INSERT INTO `spelltext_en` VALUES (8747, 'Increases swim speed by 15%.');
INSERT INTO `spelltext_en` VALUES (8856, 'Right click to test its sturdiness.');
INSERT INTO `spelltext_en` VALUES (8892, 'These dangerous looking boots significantly increase your run speed for 20 sec. They are prone to explode however, so use with caution.');
INSERT INTO `spelltext_en` VALUES (8898, 'Allows the shaman to see elemental spirits.');
INSERT INTO `spelltext_en` VALUES (8899, 'Allows the shaman to see elemental spirits.');
INSERT INTO `spelltext_en` VALUES (8913, 'Removes the protective enchantments around Morbent Fel.');
INSERT INTO `spelltext_en` VALUES (8917, 'Used to open Tazan\'s satchel.');
INSERT INTO `spelltext_en` VALUES (8919, 'Use at the base of the Mirror Lake waterfall.');
INSERT INTO `spelltext_en` VALUES (8980, 'Summons and dismisses a rideable skeletal horse.');
INSERT INTO `spelltext_en` VALUES (9052, 'Use at the base of the Xavian waterfall.');
INSERT INTO `spelltext_en` VALUES (9055, 'Gather 10 totem sticks, and use them at the Stone of Outer Binding.');
INSERT INTO `spelltext_en` VALUES (9082, 'Create a containment coffer on a stunned Rift Spawn');
INSERT INTO `spelltext_en` VALUES (9092, 'When applied to your fishing pole, increases Fishing by 75 for 10 minutes.');
INSERT INTO `spelltext_en` VALUES (9133, 'Increases your lockpicking skill slightly.');
INSERT INTO `spelltext_en` VALUES (9134, 'Herbalism +5.');
INSERT INTO `spelltext_en` VALUES (9136, 'Increases attack power by 2.');
INSERT INTO `spelltext_en` VALUES (9137, 'Increases attack power by 4.');
INSERT INTO `spelltext_en` VALUES (9138, 'Increases attack power by 6.');
INSERT INTO `spelltext_en` VALUES (9139, 'Increases attack power by 8.');
INSERT INTO `spelltext_en` VALUES (9140, 'Increases attack power by 10.');
INSERT INTO `spelltext_en` VALUES (9141, 'Increases attack power by 12.');
INSERT INTO `spelltext_en` VALUES (9142, 'Increases attack power by 14.');
INSERT INTO `spelltext_en` VALUES (9160, 'When struck by a melee attacker, that attacker has a 5% chance of being put to sleep for 10 sec. Only affects enemies level 50 and below.');
INSERT INTO `spelltext_en` VALUES (9163, 'Heal yourself for 450 to 550.');
INSERT INTO `spelltext_en` VALUES (9174, 'Restores 30 Rage and Energy.');
INSERT INTO `spelltext_en` VALUES (9175, 'Increases run speed by 40% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (9221, 'Call forth a voidwalker using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (9222, 'Call forth a voidwalker using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (9223, 'Call forth a succubus using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (9224, 'Call forth a succubus using the summoning circle.');
INSERT INTO `spelltext_en` VALUES (9233, '5% chance of dealing 15 to 25 Fire damage on a successful melee attack.');
INSERT INTO `spelltext_en` VALUES (9252, 'Restores 140 to 180 mana.');
INSERT INTO `spelltext_en` VALUES (9253, 'Restores 400 to 1200 mana.');
INSERT INTO `spelltext_en` VALUES (9314, 'Increases spell power by 13.');
INSERT INTO `spelltext_en` VALUES (9315, 'Increases spell power by 14.');
INSERT INTO `spelltext_en` VALUES (9316, 'Increases spell power by 15.');
INSERT INTO `spelltext_en` VALUES (9317, 'Increases spell power by 16.');
INSERT INTO `spelltext_en` VALUES (9318, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (9329, 'Increases attack power by 16.');
INSERT INTO `spelltext_en` VALUES (9330, 'Increases attack power by 18.');
INSERT INTO `spelltext_en` VALUES (9331, 'Increases attack power by 20.');
INSERT INTO `spelltext_en` VALUES (9332, 'Increases attack power by 22.');
INSERT INTO `spelltext_en` VALUES (9333, 'Increases attack power by 48.');
INSERT INTO `spelltext_en` VALUES (9334, 'Increases attack power by 26.');
INSERT INTO `spelltext_en` VALUES (9335, 'Increases attack power by 28.');
INSERT INTO `spelltext_en` VALUES (9336, 'Increases attack power by 30.');
INSERT INTO `spelltext_en` VALUES (9342, 'Increases spell power by 13.');
INSERT INTO `spelltext_en` VALUES (9343, 'Increases spell power by 14.');
INSERT INTO `spelltext_en` VALUES (9344, 'Increases spell power by 15.');
INSERT INTO `spelltext_en` VALUES (9345, 'Increases spell power by 16.');
INSERT INTO `spelltext_en` VALUES (9346, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (9361, 'Increases nature spell power by 21.');
INSERT INTO `spelltext_en` VALUES (9392, 'Increases spell power by 1.');
INSERT INTO `spelltext_en` VALUES (9393, 'Increases spell power by 2.');
INSERT INTO `spelltext_en` VALUES (9394, 'Increases spell power by 4.');
INSERT INTO `spelltext_en` VALUES (9395, 'Increases spell power by 5.');
INSERT INTO `spelltext_en` VALUES (9396, 'Increases spell power by 6.');
INSERT INTO `spelltext_en` VALUES (9397, 'Increases spell power by 7.');
INSERT INTO `spelltext_en` VALUES (9398, 'Increases spell power by 8.');
INSERT INTO `spelltext_en` VALUES (9406, 'Increases spell power by 9.');
INSERT INTO `spelltext_en` VALUES (9407, 'Increases spell power by 11.');
INSERT INTO `spelltext_en` VALUES (9408, 'Increases spell power by 12.');
INSERT INTO `spelltext_en` VALUES (9415, 'Increases spell power by 9.');
INSERT INTO `spelltext_en` VALUES (9416, 'Increases spell power by 11.');
INSERT INTO `spelltext_en` VALUES (9417, 'Increases spell power by 12.');
INSERT INTO `spelltext_en` VALUES (9437, 'Used to capture a rabid thistle bear.');
INSERT INTO `spelltext_en` VALUES (9489, 'Creates a bowl of scrying that will contact Talvash.');
INSERT INTO `spelltext_en` VALUES (9512, 'Instantly restores [100-2*max(0, PL-40)] energy.');
INSERT INTO `spelltext_en` VALUES (9515, 'Summons a tracking hound that will protect you for 10 min.');
INSERT INTO `spelltext_en` VALUES (9577, 'Place in the Uldaman map room.');
INSERT INTO `spelltext_en` VALUES (9583, 'This container needs to be filled with water from the well in Tarren Mill.');
INSERT INTO `spelltext_en` VALUES (9584, 'This container should be filled with water from the Ruins of Stardust well.');
INSERT INTO `spelltext_en` VALUES (9586, 'This container needs to be filled with water from the watering hole near Brine\'s hut in the Barrens.');
INSERT INTO `spelltext_en` VALUES (9594, 'Attach to the Shaft of Tsol.');
INSERT INTO `spelltext_en` VALUES (9595, 'Attach to the Gni\'kiv Medallion.');
INSERT INTO `spelltext_en` VALUES (9632, 'You attack all nearby enemies for 9 sec causing weapon damage plus an additional 5 every 3 sec.');
INSERT INTO `spelltext_en` VALUES (9712, 'Fills the empty thaumaturgy vessel when used on Scorched Guardians.');
INSERT INTO `spelltext_en` VALUES (9774, 'Removes existing Immobilizing effects and makes you immune to Immobilizing effects for 5 sec.');
INSERT INTO `spelltext_en` VALUES (9778, 'When struck in combat has a 3% chance to heal you for 60 to 100.');
INSERT INTO `spelltext_en` VALUES (9781, 'Attaches a Mithril Spike to your shield that deals damage every time you block with it.');
INSERT INTO `spelltext_en` VALUES (9783, 'Attaches spurs to your boots that increase your mounted movement speed by 4%. Must be level 70 or lower to gain this benefit.');
INSERT INTO `spelltext_en` VALUES (9796, 'Diseases a target for 50 Nature damage and an additional 50 damage over 10 sec.');
INSERT INTO `spelltext_en` VALUES (9800, 'Protects the caster with a holy shield.');
INSERT INTO `spelltext_en` VALUES (9806, 'Decrease the armor of the target by 100 for 20 sec. While affected, the target cannot stealth or turn invisible.');
INSERT INTO `spelltext_en` VALUES (9900, 'Increase sharp weapon damage by 6 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (9903, 'Increase the damage of a blunt weapon by 6 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (9976, 'Parrots love crackers!');
INSERT INTO `spelltext_en` VALUES (10052, 'Restores 585 to 615 mana.');
INSERT INTO `spelltext_en` VALUES (10057, 'Restores 829 to 871 mana.');
INSERT INTO `spelltext_en` VALUES (10058, 'Restores 1073 to 1127 mana.');
INSERT INTO `spelltext_en` VALUES (10113, 'Shoots a flare into the air.');
INSERT INTO `spelltext_en` VALUES (10137, 'Blow on the whistle to let Fizzule know you\'re an ally.');
INSERT INTO `spelltext_en` VALUES (10256, 'Restores 1392 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 12 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (10257, 'Restores 2148 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 14 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (10344, 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 32. Only usable on item_display level 25 and above.');
INSERT INTO `spelltext_en` VALUES (10351, 'Increases defense rating by 50 for 5 sec.');
INSERT INTO `spelltext_en` VALUES (10373, 'Delivers a fatal wound for 250 to 350 damage.');
INSERT INTO `spelltext_en` VALUES (10459, 'Offer at the Temple of the Moon fountain.');
INSERT INTO `spelltext_en` VALUES (10577, 'Heal friendly target for 300 to 500.');
INSERT INTO `spelltext_en` VALUES (10578, 'Hurls a fiery ball that causes 441 to 559 Fire damage and an additional 40 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (10617, 'Use on the fallen body of Rageclaw.');
INSERT INTO `spelltext_en` VALUES (10618, 'Absorbs 600 magical damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (10667, 'Increases Strength by 25 when consumed. Effect lasts for 60 minutes. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (10668, 'Increases Stamina by 25 when consumed. Effect lasts for 60 minutes. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (10669, 'Increases Agility by 25 when consumed. Effect lasts for 60 minutes. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (10673, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10674, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10675, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10676, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10677, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10678, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10679, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (10680, 'Right Click to summon and dismiss your bird.');
INSERT INTO `spelltext_en` VALUES (10682, 'Right Click to summon and dismiss your bird.');
INSERT INTO `spelltext_en` VALUES (10683, 'Right Click to summon and dismiss your bird.');
INSERT INTO `spelltext_en` VALUES (10684, 'Right Click to summon and dismiss your bird.');
INSERT INTO `spelltext_en` VALUES (10685, 'Right Click to summon and dismiss your chicken.');
INSERT INTO `spelltext_en` VALUES (10688, 'Right Click to summon and dismiss your cockroach.');
INSERT INTO `spelltext_en` VALUES (10692, 'Increases Intellect by 25 when consumed. Effect lasts for 60 minutes. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (10693, 'Increases Spirit by 25 when consumed. Effect lasts for 60 minutes. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (10695, 'Right Click to summon and dismiss your whelpling.');
INSERT INTO `spelltext_en` VALUES (10696, 'Right Click to summon and dismiss your whelpling.');
INSERT INTO `spelltext_en` VALUES (10697, 'Right Click to summon and dismiss your whelpling.');
INSERT INTO `spelltext_en` VALUES (10698, 'Right Click to summon and dismiss your whelpling.');
INSERT INTO `spelltext_en` VALUES (10703, 'Right Click to summon and dismiss your frog.');
INSERT INTO `spelltext_en` VALUES (10704, 'Right Click to summon and dismiss your frog.');
INSERT INTO `spelltext_en` VALUES (10706, 'Right Click to summon and dismiss your owl.');
INSERT INTO `spelltext_en` VALUES (10707, 'Right Click to summon and dismiss your owl.');
INSERT INTO `spelltext_en` VALUES (10709, 'Right Click to summon and dismiss your prairie dog.');
INSERT INTO `spelltext_en` VALUES (10711, 'Right Click to summon and dismiss your rabbit.');
INSERT INTO `spelltext_en` VALUES (10713, 'Right Click to summon and dismiss your snake.');
INSERT INTO `spelltext_en` VALUES (10714, 'Right Click to summon and dismiss your snake.');
INSERT INTO `spelltext_en` VALUES (10716, 'Right Click to summon and dismiss your snake.');
INSERT INTO `spelltext_en` VALUES (10717, 'Right Click to summon and dismiss your snake.');
INSERT INTO `spelltext_en` VALUES (10723, 'Cure for the Touch of Zanzil.');
INSERT INTO `spelltext_en` VALUES (10787, 'Summons and dismisses a rideable Black Nightsaber.');
INSERT INTO `spelltext_en` VALUES (10788, 'Summons and dismisses a rideable Sabre Cat.');
INSERT INTO `spelltext_en` VALUES (10789, 'Summons and dismisses a rideable Spotted Frostsaber');
INSERT INTO `spelltext_en` VALUES (10790, 'Summons and dismisses a rideable Bengal Tiger.');
INSERT INTO `spelltext_en` VALUES (10792, 'Summons and dismisses a rideable Sabre Cat.');
INSERT INTO `spelltext_en` VALUES (10793, 'Summons and dismisses a rideable Striped Nightsaber.');
INSERT INTO `spelltext_en` VALUES (10795, 'Summons and dismisses a rideable Ivory Raptor.');
INSERT INTO `spelltext_en` VALUES (10796, 'Summons and dismisses a rideable Turquoise Raptor.');
INSERT INTO `spelltext_en` VALUES (10798, 'Summons and dismisses a rideable raptor.');
INSERT INTO `spelltext_en` VALUES (10799, 'Summons and dismisses a rideable Violet Raptor.');
INSERT INTO `spelltext_en` VALUES (10838, 'Heals 800 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (10839, 'Heals 1104 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (10846, 'Allows a physician to make and use bandages up to a potential skill of 300.  The cloth used to make those bandages are found on humanoids in the world.');
INSERT INTO `spelltext_en` VALUES (10850, 'Brings a dead player back to life with 15% of their health and mana. Cannot be used when in combat.');
INSERT INTO `spelltext_en` VALUES (10873, 'Summons and dismisses a rideable Red Mechanostrider.');
INSERT INTO `spelltext_en` VALUES (10969, 'Summons and dismisses a rideable Blue Mechanostrider.');
INSERT INTO `spelltext_en` VALUES (11007, 'A fairly weak alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (11008, 'A typical alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (11009, 'A strong alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (11209, 'Summons a Hammer of Expertise.');
INSERT INTO `spelltext_en` VALUES (11319, 'Allows you to walk across water for 10 min. Any damage will cancel the effect. Guardian elixir.');
INSERT INTO `spelltext_en` VALUES (11328, 'Increases Agility by 15 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (11334, 'Increases Agility by 25 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (11338, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [45+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (11339, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [62+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (11340, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [76+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (11348, 'Increases armor by 450 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (11349, 'Increases armor by 250 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (11350, 'Does 50 fire damage to any enemies within a 0 yard radius around the caster every 3 seconds for 15 sec.');
INSERT INTO `spelltext_en` VALUES (11355, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [14*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (11356, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [19*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (11359, 'Removes 1 magic, curse, poison or disease effect on you every 5 seconds for 30 seconds.');
INSERT INTO `spelltext_en` VALUES (11364, 'Increases your resistance to all schools of magic by 50 for 3 min.');
INSERT INTO `spelltext_en` VALUES (11371, 'Increases resistance to Shadow by 10. If an enemy strikes the imbiber, the attacker has a 30% chance of being inflicted with a curse that increases their damage taken by 8 for 3 min. Lasts for 30 min. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (11387, 'Restores 1 to 1500 health and 1 to 1500 mana.');
INSERT INTO `spelltext_en` VALUES (11389, 'Shows the location of all nearby undead on the minimap for 1 hour.');
INSERT INTO `spelltext_en` VALUES (11390, 'Increases spell power by 20 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (11392, 'Gives the imbiber invisibility for 18 sec.');
INSERT INTO `spelltext_en` VALUES (11396, 'Increases Intellect by 25 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (11402, 'Ring to call Shay back to you.');
INSERT INTO `spelltext_en` VALUES (11403, 'Gives you a dream vision that lets you explore areas that are too dangerous to explore in person.');
INSERT INTO `spelltext_en` VALUES (11405, 'Increases your Strength by 25 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (11406, 'Increases attack power by 105 against demons. Lasts 1 hour.  Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (11407, 'Shows the location of all nearby demons on the minimap for 1 hour.');
INSERT INTO `spelltext_en` VALUES (11435, 'Use at the Jintha\'Alor Altar to create the Mallet of Zul\'Farrak.');
INSERT INTO `spelltext_en` VALUES (11438, 'Join together the Lower, Middle and Upper Map Fragments.');
INSERT INTO `spelltext_en` VALUES (11474, 'Increases shadow spell power by 40 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (11479, 'Turns a bar of Iron into a bar of Gold.');
INSERT INTO `spelltext_en` VALUES (11480, 'Turns a bar of Mithril into a bar of Truesilver.');
INSERT INTO `spelltext_en` VALUES (11513, 'Captures radioactive fallout.');
INSERT INTO `spelltext_en` VALUES (11537, 'Energize at the Equinex Monolith.');
INSERT INTO `spelltext_en` VALUES (11540, 'Shoots a firework into the air that bursts into a thousand blue stars.');
INSERT INTO `spelltext_en` VALUES (11541, 'Shoots a firework into the air that bursts into a thousand green stars.');
INSERT INTO `spelltext_en` VALUES (11542, 'Shoots a firework into the air that bursts into red streaks.');
INSERT INTO `spelltext_en` VALUES (11543, 'Shoots a firework into the air that bursts into red, white and blue stars.');
INSERT INTO `spelltext_en` VALUES (11544, 'Shoots a firework into the air that bursts in a yellow pattern.');
INSERT INTO `spelltext_en` VALUES (11547, 'Place at a Witherbark village.');
INSERT INTO `spelltext_en` VALUES (11548, 'Use at the Shadra\'Alor Altar to summon the spider god.');
INSERT INTO `spelltext_en` VALUES (11610, 'Target and click to take a snapshot.');
INSERT INTO `spelltext_en` VALUES (11629, 'An extremely potent alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (11654, 'Combines Jang\'thraze and Sang\'thraze to form the mighty sword, Sul\'thraze.');
INSERT INTO `spelltext_en` VALUES (11657, 'Shields the wielder from physical damage, absorbing 55 to 85 damage. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (11658, 'Strikes an enemy with the rage of Sul\'thraze. Lowers target\'s strength by 15 and deals 90 to 210 Shadow damage with an additional 125 damage over 15 sec.');
INSERT INTO `spelltext_en` VALUES (11732, 'Instantly restores 1200 life.');
INSERT INTO `spelltext_en` VALUES (11757, 'Right-click to dig for Gordunni Cobalt.');
INSERT INTO `spelltext_en` VALUES (11758, 'Fill the Untapped Dowsing Widget at the Sandsorrow Watch water hole.');
INSERT INTO `spelltext_en` VALUES (11789, 'Allows underwater breathing.');
INSERT INTO `spelltext_en` VALUES (11790, 'Deals 5 Nature damage every 5 sec to any enemy in an 0 yard radius around the caster for 15 sec.');
INSERT INTO `spelltext_en` VALUES (11791, 'Punctures target\'s armor lowering it by 100.');
INSERT INTO `spelltext_en` VALUES (11826, 'Channels a bolt of lightning and hurls it towards all enemies in front of the caster causing 147 to 167 Nature damage. The caster is then surrounded by a barrier of electricity for 10 min.');
INSERT INTO `spelltext_en` VALUES (11840, 'Summons Edana Hatetalon.');
INSERT INTO `spelltext_en` VALUES (11879, 'Disarm target\'s weapon for 5 sec.');
INSERT INTO `spelltext_en` VALUES (11885, 'Shrink and Capture a Fallen Treant.');
INSERT INTO `spelltext_en` VALUES (11886, 'Shrink and Capture a Fallen Beast.');
INSERT INTO `spelltext_en` VALUES (11887, 'Shrink and Capture a Fallen Hippogryph.');
INSERT INTO `spelltext_en` VALUES (11888, 'Shrink and Capture a Fallen Faerie Dragon.');
INSERT INTO `spelltext_en` VALUES (11889, 'Shrink and Capture a Fallen Mountain Giant.');
INSERT INTO `spelltext_en` VALUES (11903, 'Restores 700 to 900 mana.');
INSERT INTO `spelltext_en` VALUES (11923, 'The sword must be reforged before it can be used. Reforging the sword requires 4 Steel Bars, 4 Strong Flux , 2 Elemental Fire and 2 Heavy Grinding Stones.');
INSERT INTO `spelltext_en` VALUES (11992, 'Nearby Gahz\'ridian appears on the minimap.');
INSERT INTO `spelltext_en` VALUES (12022, 'Increases Stamina by 10 for party members within 0 yards.');
INSERT INTO `spelltext_en` VALUES (12174, 'Increases the target\'s Agility by 10 for 30 min.');
INSERT INTO `spelltext_en` VALUES (12175, 'Increases the target\'s Armor by 195 for 30 min.');
INSERT INTO `spelltext_en` VALUES (12176, 'Increases the target\'s Intellect by 17 for 30 min.');
INSERT INTO `spelltext_en` VALUES (12177, 'Increases the target\'s Spirit by 18 for 30 min.');
INSERT INTO `spelltext_en` VALUES (12178, 'Increases the target\'s Stamina by 25 for 30 min.');
INSERT INTO `spelltext_en` VALUES (12179, 'Increases the target\'s Strength by 10 for 30 min.');
INSERT INTO `spelltext_en` VALUES (12189, 'Blow near Echeyakee\'s Lair.');
INSERT INTO `spelltext_en` VALUES (12199, 'Place near the Dead Tree northwest of Ratchet, to lure Ishamuhale.');
INSERT INTO `spelltext_en` VALUES (12243, 'Right Click to summon and dismiss your chicken.');
INSERT INTO `spelltext_en` VALUES (12253, 'Use on an Eternal Flame.');
INSERT INTO `spelltext_en` VALUES (12257, 'Deals 50 Fire damage every 1 sec for 5 sec to all enemies in front of you. Gets you quite drunk too!');
INSERT INTO `spelltext_en` VALUES (12283, 'To be used at the makeshift helipad in Azshara. It will summon Pilot Xiggs Fuselighter to pick up the tablet rubbings.');
INSERT INTO `spelltext_en` VALUES (12304, 'Used to create rubbings of the runes in the Ruins of Eldarath.');
INSERT INTO `spelltext_en` VALUES (12346, 'Use within the Sanctum of the Fallen God.');
INSERT INTO `spelltext_en` VALUES (12347, 'Right click on the Staff of Command when you are near Shadowsilk Poachers to make Raze attack.');
INSERT INTO `spelltext_en` VALUES (12418, 'Moderately increases your stealth detection.');
INSERT INTO `spelltext_en` VALUES (12419, 'Inflicts 213 to 287 Fire damage in a 5 yard radius.');
INSERT INTO `spelltext_en` VALUES (12421, 'Inflicts 149 to 201 Fire damage and incapacitates targets in a 8 yard radius for 2 sec. Any damage will break the effect. Unreliable against targets higher than level 60.');
INSERT INTO `spelltext_en` VALUES (12438, 'Reduces your fall speed for 10 sec.');
INSERT INTO `spelltext_en` VALUES (12459, 'Attaches a permanent scope to a bow or gun that increases its damage by 5.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (12460, 'Attaches a permanent scope to a bow or gun that increases its damage by 7.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (12534, 'Use on a Sentry Brazier.');
INSERT INTO `spelltext_en` VALUES (12543, 'Inflicts 255 to 345 Fire damage and incapacitates targets in a 3 yard radius for 3 sec. Any damage will break the effect.');
INSERT INTO `spelltext_en` VALUES (12560, 'Mining +5.');
INSERT INTO `spelltext_en` VALUES (12561, 'Absorbs 300 to 500 Fire damage. Lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (12562, 'Inflicts 340 to 460 Fire damage and incapacitates targets for 5 sec in a 10 yard radius. Any damage will break the effect. Unreliable against targets higher than level 60.');
INSERT INTO `spelltext_en` VALUES (12608, 'Slightly increases your stealth detection for 10 min.');
INSERT INTO `spelltext_en` VALUES (12684, 'Place in the Talon Den.');
INSERT INTO `spelltext_en` VALUES (12685, 'Reduces threat level on all enemies by a small amount for 10 sec.');
INSERT INTO `spelltext_en` VALUES (12686, 'Increases damage done by 20 and haste rating by 50 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (12699, 'Summon a screecher spirit from the corpse of a vale screecher.');
INSERT INTO `spelltext_en` VALUES (12709, 'Captures radioactive fallout.');
INSERT INTO `spelltext_en` VALUES (12731, 'Increases damage by 10 for 8 sec.');
INSERT INTO `spelltext_en` VALUES (12733, 'Increases armor by 50, all resistances by 10 and grants immunity to Fear for 30 sec. This device has a chance to be resisted when used by players over level 60.');
INSERT INTO `spelltext_en` VALUES (12735, 'Use to fill the Egg of Hakkar.');
INSERT INTO `spelltext_en` VALUES (12749, 'Activates your Mithril Mechanical Dragonling to fight for you for 1 min.');
INSERT INTO `spelltext_en` VALUES (12766, 'Poisons all enemies in an 0 yard radius around the caster. Victims of the poison suffer 50 Nature damage every 5 sec for 45 sec.');
INSERT INTO `spelltext_en` VALUES (12802, 'This container should be filled with water from the first tide pool in Azshara.');
INSERT INTO `spelltext_en` VALUES (12805, 'This container should be filled with water from the second tide pool in Azshara.');
INSERT INTO `spelltext_en` VALUES (12806, 'This container should be filled with water from the third tide pool in Azshara.');
INSERT INTO `spelltext_en` VALUES (12808, 'This container should be filled with water from the fourth tide pool in Azshara.');
INSERT INTO `spelltext_en` VALUES (12851, 'Summons a Felhound Tracker. Read the manual!');
INSERT INTO `spelltext_en` VALUES (12883, 'Allows you to look far into the distance.');
INSERT INTO `spelltext_en` VALUES (12938, 'Weakens the servants of Razelikh the Defiler. Must be within close proximity of the target to activate.');
INSERT INTO `spelltext_en` VALUES (13006, 'Shrinks the target reducing their attack power by 250. That\'s what it usually does anyway.....');
INSERT INTO `spelltext_en` VALUES (13049, 'Calls forth an Emerald Dragon Whelp to protect you in battle for a short period of time.');
INSERT INTO `spelltext_en` VALUES (13120, 'Captures the target in a net for 20 sec. The net has a lot of hooks however and sometimes gets caught in the user\'s clothing when fired......');
INSERT INTO `spelltext_en` VALUES (13141, 'These boots significantly increase your run speed for 20 sec. WARNING: Their power supply and gyros do not always function as intended.');
INSERT INTO `spelltext_en` VALUES (13143, 'Use at the Altar of the Defiler to summon Razelikh the Defiler.');
INSERT INTO `spelltext_en` VALUES (13180, 'Engage in mental combat with a humanoid target to try and control their mind. If all works well, you will control the mind of the target for 30 sec..... Increased chance of failure when used against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (13183, 'Deals 61 to 69 fire damage for 10 sec to all targets in a cone in front of the engineer using the weapon.  That is unless it explodes.....');
INSERT INTO `spelltext_en` VALUES (13219, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [17+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (13225, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [25+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (13226, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [38+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (13227, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [53+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (13234, 'A shield of force protects you from the next 500 damage done over the next 10 min. WARNING: Force Field may overload when struck temporarily removing the wearer from this dimension.');
INSERT INTO `spelltext_en` VALUES (13237, 'Inflicts 383 to 517 Fire damage and stuns the targets in a 0 yard radius for 3 sec.');
INSERT INTO `spelltext_en` VALUES (13241, 'Explodes when triggered dealing 450 to 750 Fire damage to all enemies nearby and 375 to 625 damage to you.');
INSERT INTO `spelltext_en` VALUES (13278, 'The device charges over time using your life force and then directs a burst of energy at your opponent.');
INSERT INTO `spelltext_en` VALUES (13318, 'Wounds the target causing them to bleed for 100 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (13361, 'Turn three lesser magic essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (13362, 'Turn a greater magic essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (13378, 'Permanently enchant a shield so that it increases the Stamina of the bearer by 1.');
INSERT INTO `spelltext_en` VALUES (13380, 'Permanently enchant a two-handed melee weapon to increase Spirit by 3.');
INSERT INTO `spelltext_en` VALUES (13383, 'Increases defense rating by 8.');
INSERT INTO `spelltext_en` VALUES (13384, 'Increases defense rating by 9.');
INSERT INTO `spelltext_en` VALUES (13385, 'Increases defense rating by 10.');
INSERT INTO `spelltext_en` VALUES (13386, 'Increases defense rating by 11.');
INSERT INTO `spelltext_en` VALUES (13387, 'Increases defense rating by 12.');
INSERT INTO `spelltext_en` VALUES (13388, 'Increases defense rating by 13.');
INSERT INTO `spelltext_en` VALUES (13389, 'Increases defense rating by 25.');
INSERT INTO `spelltext_en` VALUES (13390, 'Increases defense rating by 15.');
INSERT INTO `spelltext_en` VALUES (13399, 'Consume two Un\'Goro Soil samples and a Packet of Tharlendris seeds to make an Evergreen Herb Casing.');
INSERT INTO `spelltext_en` VALUES (13419, 'Permanently enchant a cloak to increase Agility by 1.');
INSERT INTO `spelltext_en` VALUES (13421, 'Permanently enchant a cloak to increase armor by 20.');
INSERT INTO `spelltext_en` VALUES (13424, 'Decrease the armor of the target by 50 for 30 sec. While affected, the target cannot stealth or turn invisible.');
INSERT INTO `spelltext_en` VALUES (13438, 'Hurls a fiery ball that causes 40 Fire damage and an additional 9 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (13439, 'Launches a bolt of frost at the enemy causing 20 to 30 Frost damage and slowing movement speed by 50% for 5 sec.');
INSERT INTO `spelltext_en` VALUES (13440, 'Sends a shadowy bolt at the enemy causing 30 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (13442, 'Blasts a target for 35 Fire damage.');
INSERT INTO `spelltext_en` VALUES (13464, 'Permanently enchant a shield to increase armor by 30.');
INSERT INTO `spelltext_en` VALUES (13478, 'Opens a Black Vault Relic Coffer Door.');
INSERT INTO `spelltext_en` VALUES (13480, 'Sends a shadowy bolt at the enemy causing 60 to 90 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (13482, 'Blasts a target for 10 to 20 Nature damage.');
INSERT INTO `spelltext_en` VALUES (13484, 'Place on a SOFT DIRT MOUND.');
INSERT INTO `spelltext_en` VALUES (13485, 'Permanently enchant a shield to give 3 spirit.');
INSERT INTO `spelltext_en` VALUES (13486, 'Wounds the target for 60 to 70 damage.');
INSERT INTO `spelltext_en` VALUES (13490, 'Reduces target\'s attack power by 30 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (13491, 'Pummel the target for 4 damage and interrupt the spell being cast for 5 sec.');
INSERT INTO `spelltext_en` VALUES (13494, 'Increases your haste rating by 500 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (13496, 'Slows the target\'s movement by 50% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (13497, 'Turn three lesser astral essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (13498, 'Turn a greater astral essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (13501, 'Permanently enchant a bracer so it increases the wearer\'s Stamina by 3.');
INSERT INTO `spelltext_en` VALUES (13503, 'Permanently enchant a melee weapon to do 2 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (13518, 'Poisons target for 5 Nature damage every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (13519, 'Smites an enemy for 30 Holy damage.');
INSERT INTO `spelltext_en` VALUES (13522, 'Permanently enchant a cloak to increase shadow resistance by 10.');
INSERT INTO `spelltext_en` VALUES (13524, 'Lowers all attributes of target by 2 for 1 min.');
INSERT INTO `spelltext_en` VALUES (13526, 'Corrosive acid that deals 7 Nature damage every 3 sec and lowers target\'s armor by -50 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (13527, 'Blasts a target for 80 to 100 Nature damage.');
INSERT INTO `spelltext_en` VALUES (13528, 'Reduces target\'s Strength by 10 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (13529, 'Permanently enchant a two-handed melee weapon to do 3 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (13530, 'Corrupts the target, causing 45 damage over 3 sec.');
INSERT INTO `spelltext_en` VALUES (13532, 'Blasts nearby enemies with thunder increasing the time between their attacks by 11% for 10 sec and doing 7 Nature damage to them. Will affect up to targets.');
INSERT INTO `spelltext_en` VALUES (13533, 'Increases your haste rating by 300 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (13534, 'Disarm target\'s weapon for 10 sec.');
INSERT INTO `spelltext_en` VALUES (13536, 'Permanently enchant bracers to increase Strength by 3.');
INSERT INTO `spelltext_en` VALUES (13538, 'Enchant a piece of chest armor so it has a 5% chance per hit of giving you 25 points of damage absorption.');
INSERT INTO `spelltext_en` VALUES (13548, 'Right Click to summon and dismiss your chicken.');
INSERT INTO `spelltext_en` VALUES (13564, 'Use on the Dark Coffer in the Black Vault.');
INSERT INTO `spelltext_en` VALUES (13607, 'Permanently enchant a piece of chest armor to increase the mana of the wearer by 30.');
INSERT INTO `spelltext_en` VALUES (13612, 'Permanently enchant gloves to increase mining skill by 2.');
INSERT INTO `spelltext_en` VALUES (13617, 'Permanently enchant gloves to increase herbalism skill by 2.');
INSERT INTO `spelltext_en` VALUES (13620, 'Permanently enchant gloves to increase fishing skill by 2.');
INSERT INTO `spelltext_en` VALUES (13622, 'Permanently enchant a bracer so it increases the wearer\'s Intellect by 3.');
INSERT INTO `spelltext_en` VALUES (13626, 'Permanently enchant a piece of chest armor to grant +1 to all stats.');
INSERT INTO `spelltext_en` VALUES (13630, 'Scrape a sample of the hive wall from an area near a Gorishi hatchery.');
INSERT INTO `spelltext_en` VALUES (13631, 'Permanently enchant a shield to give 3 Stamina.');
INSERT INTO `spelltext_en` VALUES (13632, 'Turn three lesser mystic essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (13633, 'Turn a greater mystic essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (13635, 'Permanently enchant a cloak to give 30 additional armor.');
INSERT INTO `spelltext_en` VALUES (13637, 'Permanently enchant boots to give +3 Agility.');
INSERT INTO `spelltext_en` VALUES (13640, 'Permanently enchant a piece of chest armor to give +35 health.');
INSERT INTO `spelltext_en` VALUES (13642, 'Permanently enchants bracers to give +5 Spirit.');
INSERT INTO `spelltext_en` VALUES (13644, 'Permanently enchant boots to give +3 Stamina.');
INSERT INTO `spelltext_en` VALUES (13646, 'Permanently enchant bracers to increase defense rating by 3.');
INSERT INTO `spelltext_en` VALUES (13648, 'Permanently enchants bracers to give +5 Stamina.');
INSERT INTO `spelltext_en` VALUES (13653, 'Permanently enchant a melee weapon to increase its damage to beasts by 6.');
INSERT INTO `spelltext_en` VALUES (13655, 'Permanently enchant a melee weapon to increase its damage to elementals by 6.');
INSERT INTO `spelltext_en` VALUES (13657, 'Permanently enchant a cloak to give 7 Fire Resistance.');
INSERT INTO `spelltext_en` VALUES (13659, 'Permanently enchant a shield to give 5 Spirit.');
INSERT INTO `spelltext_en` VALUES (13661, 'Permanently enchants bracers to give +5 Strength.');
INSERT INTO `spelltext_en` VALUES (13663, 'Permanently enchant a piece of chest armor to give +50 mana.');
INSERT INTO `spelltext_en` VALUES (13665, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (13667, 'Increases your parry rating by 40.');
INSERT INTO `spelltext_en` VALUES (13669, 'Increases your dodge rating by 12.');
INSERT INTO `spelltext_en` VALUES (13670, 'Increases your dodge rating by 24.');
INSERT INTO `spelltext_en` VALUES (13674, 'Increases your block rating by 5.');
INSERT INTO `spelltext_en` VALUES (13675, 'Increases your block rating by 10.');
INSERT INTO `spelltext_en` VALUES (13676, 'Increases your block rating by 15.');
INSERT INTO `spelltext_en` VALUES (13687, 'Permanently enchant boots to increase Spirit by 3.');
INSERT INTO `spelltext_en` VALUES (13689, 'Permanently enchant a shield to increase block rating by 10.');
INSERT INTO `spelltext_en` VALUES (13693, 'Permanently enchant a melee weapon to do 3 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (13695, 'Permanently enchant a two-handed melee weapon to do 5 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (13698, 'Permanently enchant gloves to increase skinning skill by 5.');
INSERT INTO `spelltext_en` VALUES (13700, 'Permanently enchant a piece of chest armor to grant +2 to all stats.');
INSERT INTO `spelltext_en` VALUES (13714, 'Join the cover and 5 pages to create the Samophlange Manual.');
INSERT INTO `spelltext_en` VALUES (13739, 'Turn three lesser nether essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (13740, 'Turn a greater nether essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (13744, 'Increases Fire resistance by 50 and reduces all Fire damage taken by up to 25 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (13746, 'Permanently enchant a cloak to give 50 additional armor.');
INSERT INTO `spelltext_en` VALUES (13752, 'Decrease the armor of the target by 100 for 30 sec. While affected, the target cannot stealth or turn invisible.');
INSERT INTO `spelltext_en` VALUES (13794, 'Permanently enchant a cloak to give 3 to all resistances.');
INSERT INTO `spelltext_en` VALUES (13808, 'Inflicts 149 to 201 Fire damage and incapacitates targets in a 10 yard radius for 3 sec. Any damage will break the effect.');
INSERT INTO `spelltext_en` VALUES (13815, 'Permanently enchant gloves to grant +5 Agility.');
INSERT INTO `spelltext_en` VALUES (13817, 'Permanently enchant a shield to increase Stamina by 5.');
INSERT INTO `spelltext_en` VALUES (13822, 'Permanently enchants bracers to give +5 Intellect.');
INSERT INTO `spelltext_en` VALUES (13836, 'Permanently enchant boots to give +5 Stamina.');
INSERT INTO `spelltext_en` VALUES (13841, 'Permanently enchant gloves to increase mining skill by 5.');
INSERT INTO `spelltext_en` VALUES (13846, 'Permanently enchant bracers to increase Spirit by 7.');
INSERT INTO `spelltext_en` VALUES (13858, 'Permanently enchant a piece of chest armor to grant +50 health.');
INSERT INTO `spelltext_en` VALUES (13868, 'Permanently enchant gloves to increase herbalism skill by 5.');
INSERT INTO `spelltext_en` VALUES (13881, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (13882, 'Permanently enchant a cloak to increase Agility by 3.');
INSERT INTO `spelltext_en` VALUES (13887, 'Permanently enchant gloves to grant +5 Strength.');
INSERT INTO `spelltext_en` VALUES (13890, 'Permanently enchant boots to give a slight movement speed increase.');
INSERT INTO `spelltext_en` VALUES (13898, 'Permanently enchant a melee weapon to often strike for 40 additional fire damage.');
INSERT INTO `spelltext_en` VALUES (13905, 'Permanently enchant a shield to give +7 Spirit.');
INSERT INTO `spelltext_en` VALUES (13915, 'Permanently enchant a melee weapon to have a chance of stunning and doing additional damage against demons.');
INSERT INTO `spelltext_en` VALUES (13917, 'Permanently enchant a piece of chest armor to give +65 mana.');
INSERT INTO `spelltext_en` VALUES (13931, 'Permanently enchant bracers to increase defense rating by 5.');
INSERT INTO `spelltext_en` VALUES (13933, 'Permanently enchant a shield to increase Frost resistance by 8.');
INSERT INTO `spelltext_en` VALUES (13935, 'Permanently enchant boots to give +5 Agility.');
INSERT INTO `spelltext_en` VALUES (13937, 'Permanently enchant a two-handed melee weapon to do 7 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (13939, 'Permanently enchants bracers to give +7 Strength.');
INSERT INTO `spelltext_en` VALUES (13941, 'Permanently enchant a piece of chest armor to grant +3 to all stats.');
INSERT INTO `spelltext_en` VALUES (13943, 'Permanently enchant a melee weapon to do 4 additional points of damage.');
INSERT INTO `spelltext_en` VALUES (13945, 'Permanently enchant bracers to increase Stamina by 7.');
INSERT INTO `spelltext_en` VALUES (13947, 'Permanently enchant gloves to increase mount speed by 2%. Must be level 70 or lower to gain this benefit.');
INSERT INTO `spelltext_en` VALUES (13948, 'Permanently enchant gloves to increase haste rating by 10.');
INSERT INTO `spelltext_en` VALUES (13959, 'When struck in combat has a % chance of inflicting 35 to 65 Nature damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (13978, 'Summons Aquementas.');
INSERT INTO `spelltext_en` VALUES (13982, 'Use on the remains of Bael\'Gar to capture his fiery essence.');
INSERT INTO `spelltext_en` VALUES (14008, 'Place near Miblon Snarltooth.');
INSERT INTO `spelltext_en` VALUES (14027, 'Increases attack power by 24.');
INSERT INTO `spelltext_en` VALUES (14047, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (14049, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (14050, 'Drink in the Tanaris Graveyard.');
INSERT INTO `spelltext_en` VALUES (14052, 'Increases attack power by 60.');
INSERT INTO `spelltext_en` VALUES (14053, 'Heal your target for 135 to 165.');
INSERT INTO `spelltext_en` VALUES (14054, 'Increases spell power by 27.');
INSERT INTO `spelltext_en` VALUES (14055, 'Increases spell power by 35.');
INSERT INTO `spelltext_en` VALUES (14056, 'Increases attack power by 50.');
INSERT INTO `spelltext_en` VALUES (14089, 'Increases attack power by 36.');
INSERT INTO `spelltext_en` VALUES (14097, 'Increases attack power by 45 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (14098, 'Increases attack power by 117 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (14106, 'Sends a shadowy bolt at the enemy causing 35 to 45 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (14118, 'Wounds the target causing them to bleed for 150 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (14119, 'Blasts a target for 35 Nature damage.');
INSERT INTO `spelltext_en` VALUES (14126, 'Wounds the target for 130 damage.');
INSERT INTO `spelltext_en` VALUES (14127, 'Increases spell power by 28.');
INSERT INTO `spelltext_en` VALUES (14134, 'Purifies the friendly target, removing 1 disease effect and 1 poison effect.');
INSERT INTO `spelltext_en` VALUES (14199, 'Join the cover and 5 pages to create the Samophlange Manual.');
INSERT INTO `spelltext_en` VALUES (14209, 'Sign the pledge, swearing to Nixx Sprocketspring that you will keep the knowledge of Goblin Engineering in eternal secrecy.');
INSERT INTO `spelltext_en` VALUES (14210, 'Sign the pledge, swearing to Oglethorpe Obnoticus that you will keep the knowledge of Gnome Engineering in eternal secrecy.');
INSERT INTO `spelltext_en` VALUES (14227, 'Sign the pledge, swearing to Tinkmaster Overspark that you will keep the knowledge of Gnome Engineering in eternal secrecy.');
INSERT INTO `spelltext_en` VALUES (14247, 'Dispels Blazerunner\'s Aura.');
INSERT INTO `spelltext_en` VALUES (14248, 'Increases spell power by 21.');
INSERT INTO `spelltext_en` VALUES (14249, 'Increases defense rating by 20.');
INSERT INTO `spelltext_en` VALUES (14250, 'Use on Grark when the time is right!');
INSERT INTO `spelltext_en` VALUES (14253, 'Attempts to cure 1 poison effect on the target, and 1 more poison effect every 2 seconds for 8 sec.');
INSERT INTO `spelltext_en` VALUES (14254, 'Increases spell power by 19.');
INSERT INTO `spelltext_en` VALUES (14530, 'Increases run speed by 40% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (14537, 'Blasts enemies in front of you with the power of wind, fire, all that kind of thing!');
INSERT INTO `spelltext_en` VALUES (14565, 'Increases attack power by 30 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (14716, '+14 Arcane Resistance.');
INSERT INTO `spelltext_en` VALUES (14798, 'Increases spell power by 30.');
INSERT INTO `spelltext_en` VALUES (14799, 'Increases spell power by 20.');
INSERT INTO `spelltext_en` VALUES (14803, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (14806, 'Zaps pests dead.');
INSERT INTO `spelltext_en` VALUES (14814, 'Throw near a patron of the Grim Guzzler.');
INSERT INTO `spelltext_en` VALUES (14929, 'Fill at the Golakka crater in Un\'Goro.');
INSERT INTO `spelltext_en` VALUES (15033, 'Summons ancient spirits in the Irontree Woods.');
INSERT INTO `spelltext_en` VALUES (15048, 'Right Click to summon and dismiss your bomb.');
INSERT INTO `spelltext_en` VALUES (15049, 'Right Click to summon and dismiss your robot.');
INSERT INTO `spelltext_en` VALUES (15057, 'Restores 700 health to a friendly mechanical target.');
INSERT INTO `spelltext_en` VALUES (15067, 'Right Click to summon and dismiss your sprite darter hatchling.');
INSERT INTO `spelltext_en` VALUES (15118, 'Place upon the Flat Un\'Goro Rock.');
INSERT INTO `spelltext_en` VALUES (15119, 'Apply to the Preserved Threshadon Carcass.');
INSERT INTO `spelltext_en` VALUES (15229, 'Heals the target of 670 damage over 15 sec.');
INSERT INTO `spelltext_en` VALUES (15231, 'Increases your Spirit by 30 for 30 min. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (15233, 'Increases your Armor by 200 for 30 min. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (15235, 'Decreases an enemy target\'s Armor by 200 for 2 min.');
INSERT INTO `spelltext_en` VALUES (15239, 'Inflicts 383 to 517 fire damage to targets in a 3 yard radius.');
INSERT INTO `spelltext_en` VALUES (15276, 'Open locked bar door.');
INSERT INTO `spelltext_en` VALUES (15279, 'A crystal shield surrounds the friendly target, doing 12 damage to anyone who hits <him/her>. Lasts 10 min.');
INSERT INTO `spelltext_en` VALUES (15280, 'Reduces targets armor by 300 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (15283, 'Stuns target for 8 sec.');
INSERT INTO `spelltext_en` VALUES (15340, 'Permanently adds 150 mana to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15389, 'Permanently adds 100 health to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15391, 'Permanently adds 125 armor to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15394, 'Permanently adds 20 Fire resistance to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15397, 'Permanently adds 8 Strength to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15400, 'Permanently adds 8 Stamina to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15402, 'Permanently adds 8 Agility to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15404, 'Permanently adds 8 Intellect to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15406, 'Permanently adds 8 Spirit to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (15438, 'When struck in combat inflicts 3 Arcane damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (15464, 'Increases your hit rating by 10.');
INSERT INTO `spelltext_en` VALUES (15465, 'Increases your hit rating by 20.');
INSERT INTO `spelltext_en` VALUES (15491, 'Fill in the Temple of the Moon.');
INSERT INTO `spelltext_en` VALUES (15494, 'Grants 2 extra attacks on your next swing.');
INSERT INTO `spelltext_en` VALUES (15591, 'Revive Ringo with water.');
INSERT INTO `spelltext_en` VALUES (15594, 'When struck in combat has a 1% chance of reducing all melee damage taken by 25 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (15600, 'Chance on melee hit to gain 1 extra attack.');
INSERT INTO `spelltext_en` VALUES (15602, 'Increases attack power by 50 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (15603, 'When struck in combat has a 2% chance of gaining 260 mana.');
INSERT INTO `spelltext_en` VALUES (15604, 'Restores 30 mana every 1 sec for 10 sec.');
INSERT INTO `spelltext_en` VALUES (15627, 'Lures out the queen of the Gorishi hive when used on a Gorishi Silithid Crystal.');
INSERT INTO `spelltext_en` VALUES (15646, 'Reduces mana cost of all spells by 100 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (15647, 'Release the kitten near the Jadefire Satyrs\' corrupted moonwell.');
INSERT INTO `spelltext_en` VALUES (15649, 'Fill at the Jadefire Satyrs\' corrupted moonwell.');
INSERT INTO `spelltext_en` VALUES (15662, 'Hurls a fiery ball that causes 135 Fire damage and an additional 15 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (15693, '+150 Armor.');
INSERT INTO `spelltext_en` VALUES (15696, 'Increases spell power by 28.');
INSERT INTO `spelltext_en` VALUES (15698, 'Fills an Empty Cursed Ooze Jar with a sample of Cursed Ooze. WARNING! Will likely destroy the creature\'s body.');
INSERT INTO `spelltext_en` VALUES (15699, 'Fills an Empty Tainted Ooze Jar with a sample of Tainted Ooze. WARNING! Will likely destroy the creature\'s body.');
INSERT INTO `spelltext_en` VALUES (15700, 'Restores 700 to 900 health.');
INSERT INTO `spelltext_en` VALUES (15701, 'Restores 394 to 456 mana and 394 to 456 health.');
INSERT INTO `spelltext_en` VALUES (15702, 'Fills an Empty Pure Sample Jar with a sample of pure ooze. WARNING! Will likely destroy the creature\'s body.');
INSERT INTO `spelltext_en` VALUES (15712, 'Flings a magical boomerang towards target enemy dealing 113 to 187 damage and has a chance to stun or disarm them.');
INSERT INTO `spelltext_en` VALUES (15714, 'Increases spell power by 22.');
INSERT INTO `spelltext_en` VALUES (15715, 'Increases spell power by 25.');
INSERT INTO `spelltext_en` VALUES (15748, 'Freeze a nearby Rookery Egg.');
INSERT INTO `spelltext_en` VALUES (15779, 'Summons and dismisses a rideable White Mechanostrider Mod B.  This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (15806, 'Increases attack power by 34.');
INSERT INTO `spelltext_en` VALUES (15807, 'Increases attack power by 32.');
INSERT INTO `spelltext_en` VALUES (15808, 'Increases attack power by 38.');
INSERT INTO `spelltext_en` VALUES (15809, 'Increases attack power by 42.');
INSERT INTO `spelltext_en` VALUES (15810, 'Increases attack power by 44.');
INSERT INTO `spelltext_en` VALUES (15811, 'Increases attack power by 46.');
INSERT INTO `spelltext_en` VALUES (15812, 'Increases attack power by 52.');
INSERT INTO `spelltext_en` VALUES (15813, 'Increases attack power by 54.');
INSERT INTO `spelltext_en` VALUES (15814, 'Increases attack power by 56.');
INSERT INTO `spelltext_en` VALUES (15815, 'Increases attack power by 58.');
INSERT INTO `spelltext_en` VALUES (15816, 'Increases attack power by 62.');
INSERT INTO `spelltext_en` VALUES (15817, 'Increases attack power by 64.');
INSERT INTO `spelltext_en` VALUES (15818, 'Increases attack power by 66.');
INSERT INTO `spelltext_en` VALUES (15819, 'Increases attack power by 68.');
INSERT INTO `spelltext_en` VALUES (15820, 'Increases attack power by 70.');
INSERT INTO `spelltext_en` VALUES (15821, 'Increases attack power by 72.');
INSERT INTO `spelltext_en` VALUES (15822, 'Puts the imbiber in a dreamless sleep for 12 sec. During that time the imbiber heals 1200 health and 1200 mana.');
INSERT INTO `spelltext_en` VALUES (15823, 'Increases attack power by 74.');
INSERT INTO `spelltext_en` VALUES (15824, 'Increases attack power by 76.');
INSERT INTO `spelltext_en` VALUES (15825, 'Increases attack power by 78.');
INSERT INTO `spelltext_en` VALUES (15826, 'Increases attack power by 80.');
INSERT INTO `spelltext_en` VALUES (15827, 'Increases attack power by 82.');
INSERT INTO `spelltext_en` VALUES (15828, 'Increases attack power by 84.');
INSERT INTO `spelltext_en` VALUES (15829, 'Increases attack power by 86.');
INSERT INTO `spelltext_en` VALUES (15830, 'Increases attack power by 88.');
INSERT INTO `spelltext_en` VALUES (15831, 'Increases attack power by 90.');
INSERT INTO `spelltext_en` VALUES (15832, 'Increases attack power by 92.');
INSERT INTO `spelltext_en` VALUES (15852, 'Occasionally belch flame at enemies struck in melee for the next 10 min.');
INSERT INTO `spelltext_en` VALUES (15956, 'Fishing skill increased by 3.');
INSERT INTO `spelltext_en` VALUES (15958, 'Collect a nearby dragon egg.');
INSERT INTO `spelltext_en` VALUES (15998, 'Use when near a Bloodaxe Worg Pup. Don\'t worry, it is G.E.T.A. approved.');
INSERT INTO `spelltext_en` VALUES (15999, 'Right Click to summon and dismiss your worg pup.');
INSERT INTO `spelltext_en` VALUES (16007, 'Fire at a dragonkin Broodling in the Burning Steppes.');
INSERT INTO `spelltext_en` VALUES (16028, 'Use on a Rookery Egg, then return to Tinkee.');
INSERT INTO `spelltext_en` VALUES (16031, 'Releases a captured Felwood ooze so it can interact with a primal ooze in Un\'Goro Crater.');
INSERT INTO `spelltext_en` VALUES (16053, 'Controls Emberstrife\'s mind when his will falters.');
INSERT INTO `spelltext_en` VALUES (16055, 'Summons and dismisses a rideable Black Nightsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16056, 'Summons and dismisses a rideable Ancient Frostsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16057, 'Places the Unforged Seal of Ascension. Use in front of Emberstrife.');
INSERT INTO `spelltext_en` VALUES (16072, 'Creates a bowl of purified food that the furbolg are sure to enjoy. It requires fruit, grain, and nuts from the Blackwood camp.');
INSERT INTO `spelltext_en` VALUES (16073, 'Fill with moonwell water to prepare the bowl to cleanse food placed in it.');
INSERT INTO `spelltext_en` VALUES (16077, 'Takes a sampling from the Cliffspring River.');
INSERT INTO `spelltext_en` VALUES (16080, 'Summons and dismisses a rideable Red Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16081, 'Summons and dismisses a rideable Winter Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16082, 'Summons and dismisses a rideable Palomino. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16083, 'Summons and dismisses a White Stallion. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16084, 'Summons and dismisses a rideable Mottled Red Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (16138, 'Increase sharp weapon damage by 8 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (16197, 'Empty to create a Charm Pouch.');
INSERT INTO `spelltext_en` VALUES (16321, 'Increases your dodge rating by 60 for 10 sec. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (16322, 'Increases your spell, ranged, and melee haste rating by 30 for 20 sec. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (16323, 'Increases your Strength by 30 for 30 min. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (16325, 'Increases your Frost resistance by 15 for 10 min. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (16326, 'Increases your Fire resistance by 15 for 10 min. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (16327, 'Increases your Intellect by 30 for 30 min. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (16329, 'Increases your attack power by 40 for 10 min. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (16349, 'Summons Vaelastrasz to assist the caster.');
INSERT INTO `spelltext_en` VALUES (16375, 'Steals 75 to 125 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (16378, 'Take a reading of the temperature at a hot spot.');
INSERT INTO `spelltext_en` VALUES (16400, 'Poisons target for 6 Nature damage every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (16401, 'Poisons target for 30 Nature damage every 6 sec for 30 sec.');
INSERT INTO `spelltext_en` VALUES (16403, 'Wounds the target causing them to bleed for 45 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (16405, 'Wounds the target for 75 damage.');
INSERT INTO `spelltext_en` VALUES (16406, 'Wounds the target causing them to bleed for 80 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (16407, 'Blasts a target for 30 Frost damage.');
INSERT INTO `spelltext_en` VALUES (16408, 'Sends a shadowy bolt at the enemy causing 25 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (16409, 'Sends a shadowy bolt at the enemy causing 35 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (16411, 'Delivers a fatal wound for 160 damage.');
INSERT INTO `spelltext_en` VALUES (16413, 'Hurls a fiery ball that causes 70 Fire damage and an additional 9 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (16414, 'Steals 45 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (16415, 'Hurls a fiery ball that causes 180 to 220 Fire damage and an additional 36 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (16433, 'Wounds the target for 20 damage.');
INSERT INTO `spelltext_en` VALUES (16447, 'At Urok\'s Tribute Pile, combine Omokk\'s Head with the Roughshod Pike.');
INSERT INTO `spelltext_en` VALUES (16450, 'Right Click to summon and dismiss your Smolderweb Hatchling.');
INSERT INTO `spelltext_en` VALUES (16454, 'Blasts a target for 60 Fire damage and increases damage done to target by Fire spells by up to 10 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (16470, 'Increases armor by 1000 for 10 sec but cannot cast spells or attack for the duration of the spell.');
INSERT INTO `spelltext_en` VALUES (16528, 'Inflicts numbing pain that deals 10 Nature damage every 2 sec and increases time between target\'s attacks by 10% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (16537, 'Cures 1 poison effect.');
INSERT INTO `spelltext_en` VALUES (16549, 'Wounds the target for 324 to 540 damage.');
INSERT INTO `spelltext_en` VALUES (16550, 'Deals 60 to 90 damage when you are the victim of a critical melee strike.');
INSERT INTO `spelltext_en` VALUES (16551, 'All attacks are guaranteed to land and will be critical strikes for the next 3 sec.');
INSERT INTO `spelltext_en` VALUES (16559, 'Envelops the caster with a Fire shield for 15 sec and shoots a ring of fire dealing 130 to 170 damage to all nearby enemies.');
INSERT INTO `spelltext_en` VALUES (16589, 'Drink Me.');
INSERT INTO `spelltext_en` VALUES (16602, 'Summons the infernal spirit of Shahram.');
INSERT INTO `spelltext_en` VALUES (16603, 'Transfers 10 health every 5 seconds from the target to the caster for 25 sec.');
INSERT INTO `spelltext_en` VALUES (16611, 'When struck has a 3% chance of stealing 120 life from the attacker over 4 sec.');
INSERT INTO `spelltext_en` VALUES (16613, 'Reveal temporal parasites near grain silos in Andorhal.');
INSERT INTO `spelltext_en` VALUES (16615, 'Adds 3 Lightning damage to your melee attacks.');
INSERT INTO `spelltext_en` VALUES (16620, 'When struck in combat has a 5% chance to make you invulnerable to melee damage for 3 sec. This effect can only occur once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (16622, 'Increase the damage of a blunt weapon by 8 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (16623, 'Attaches a Thorium Spike to your shield that deals damage every time you block with it.');
INSERT INTO `spelltext_en` VALUES (16627, 'Captures the spirit of a Felhound to be used in the creation of a warlockian orb.');
INSERT INTO `spelltext_en` VALUES (16628, 'Captures the spirit of an Infernal to be used in the creation of a warlockian orb.');
INSERT INTO `spelltext_en` VALUES (16629, 'Inflict 1400 to 1800 arcane damage on the attuned target, and lower the damage it deals by 25%.');
INSERT INTO `spelltext_en` VALUES (16666, 'Restores 900 to 1500 mana at the cost of 600 to 1000 life.');
INSERT INTO `spelltext_en` VALUES (16718, 'Skinning +10.');
INSERT INTO `spelltext_en` VALUES (16739, 'Transforms caster to look like a member of the opposing faction.');
INSERT INTO `spelltext_en` VALUES (16781, 'Combine the Good Luck Half-Charm with the Good Luck Other-Half-Charm.');
INSERT INTO `spelltext_en` VALUES (16796, 'Place at the Stone of Shy-Rotam.');
INSERT INTO `spelltext_en` VALUES (16871, 'Enemy is inflicted with the Bleakwood Curse that reduces their magic resistances by 25. Can be applied up to 3 times.');
INSERT INTO `spelltext_en` VALUES (16898, 'Burns the enemy for 100 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (16908, 'Dispels a magic effect on the current foe.');
INSERT INTO `spelltext_en` VALUES (16916, 'Heal self for 270 to 450 and increases Strength by 120 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (16921, 'Blasts up to 3 targets for 105 to 145 Nature damage.');
INSERT INTO `spelltext_en` VALUES (16927, 'Target\'s movement slowed by 30% and increasing the time between attacks by 25% for 5 sec.');
INSERT INTO `spelltext_en` VALUES (16928, 'Reduces an enemy\'s armor by 200. Stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (16939, 'Party members have a chance to increase their critical strike rating by 56. Lasts for 20 sec.');
INSERT INTO `spelltext_en` VALUES (16989, 'Plant the Scourge banner at the Scarlet Crusade\'s forward base camp in the Western Plaguelands.');
INSERT INTO `spelltext_en` VALUES (16996, 'Toss the Incendia Powder into the sacred fire of life.');
INSERT INTO `spelltext_en` VALUES (17016, 'Place in the doorway at one of Andorhal\'s ruined towers as a magical marker for future troop movement.');
INSERT INTO `spelltext_en` VALUES (17038, 'Increases your attack power by 35 and size for 20 min. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (17045, 'Place within the Viewing Room of the Scholomance.');
INSERT INTO `spelltext_en` VALUES (17047, 'Increase your reputation permanently with the Argent Dawn.');
INSERT INTO `spelltext_en` VALUES (17048, 'Claim the promised soul.');
INSERT INTO `spelltext_en` VALUES (17133, 'Attach the pieces into a whole.');
INSERT INTO `spelltext_en` VALUES (17148, 'Wounds the target for 200 to 300 damage and lowers Intellect of target by 25 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (17152, 'Increases Strength by 200 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (17153, 'Wounds the target causing them to bleed for 560 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (17155, 'Douses the flames off the braziers found within Jaedenar and dispels their protective magic.');
INSERT INTO `spelltext_en` VALUES (17161, 'This container should be filled with water from the corrupt moon well in Jaedenar.');
INSERT INTO `spelltext_en` VALUES (17166, 'Select Umi\'s friend and click to release the Mechanical Yeti.');
INSERT INTO `spelltext_en` VALUES (17176, 'Opens Panther Cage');
INSERT INTO `spelltext_en` VALUES (17178, 'Defense +1000. Consider yourself born again hardcore!');
INSERT INTO `spelltext_en` VALUES (17179, 'Use on Ras Frostwhisper, the lich, to make him mortal.');
INSERT INTO `spelltext_en` VALUES (17187, 'Turns a bar of Thorium and an Arcane Crystal into Arcanite.');
INSERT INTO `spelltext_en` VALUES (17196, 'Lowers all stats by 20 and deals 20 Nature damage every 3 sec to all enemies within an 0 yard radius of the caster for 30 sec.');
INSERT INTO `spelltext_en` VALUES (17229, 'Summons and dismisses a rideable Winterspring Frostsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17252, 'A protective mana shield surrounds the caster absorbing 500 damage. While the shield holds, increases mana regeneration by 22 every 5 sec for 30 min.');
INSERT INTO `spelltext_en` VALUES (17271, 'Wave over a Fetid skull to test its resonance.');
INSERT INTO `spelltext_en` VALUES (17275, 'Increases Fire Resistance by 20 and deals 20 Fire damage to anyone who strikes you with a melee attack for 5 min.');
INSERT INTO `spelltext_en` VALUES (17280, 'Increases spell power by 43.');
INSERT INTO `spelltext_en` VALUES (17283, 'Deals 125 Fire damage to all targets in a cone in front of the caster.');
INSERT INTO `spelltext_en` VALUES (17291, 'Inflicts between 438 and 562 damage to Undead in a 10 yard radius.');
INSERT INTO `spelltext_en` VALUES (17308, 'Knocks target silly for 2 sec.');
INSERT INTO `spelltext_en` VALUES (17315, 'Punctures target\'s armor lowering it by 200. Can be applied up to 3 times.');
INSERT INTO `spelltext_en` VALUES (17319, 'Increases attack power by 81 when fighting Undead.');
INSERT INTO `spelltext_en` VALUES (17320, 'Increases spell power by 44.');
INSERT INTO `spelltext_en` VALUES (17330, 'Poisons target for 20 Nature damage every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (17331, 'Slows target enemy\'s casting speed and increases the time between melee and ranged attacks by 10% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (17332, 'Chance on Hit: Immobilizes the target and lowers their armor by 100 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (17350, 'Has a 1% chance when struck in combat of increasing block rating by 250 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (17352, 'Increases attack power against Undead by 200 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (17367, 'Increases spell power by 32.');
INSERT INTO `spelltext_en` VALUES (17368, 'Use to free Spectral and Ghostly Citizens.');
INSERT INTO `spelltext_en` VALUES (17371, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (17407, 'Wounds the target for 50 to 150 damage and deals an additional 6 damage every 1 sec for 25 sec.');
INSERT INTO `spelltext_en` VALUES (17432, 'Opens a Stratholme postbox.');
INSERT INTO `spelltext_en` VALUES (17447, 'Channels 75 health into mana every 1 sec for 10 sec.');
INSERT INTO `spelltext_en` VALUES (17448, 'Restores 500 health. Can only be used at 10% health.');
INSERT INTO `spelltext_en` VALUES (17450, 'Summons and dismisses a rideable Ivory Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17453, 'Summons and dismisses a rideable Green Mechanostrider.');
INSERT INTO `spelltext_en` VALUES (17454, 'Summons and dismisses a rideable Unpainted Mechanostrider.');
INSERT INTO `spelltext_en` VALUES (17458, 'Summons and dismisses a rideable Fluorescent Green Mechanostrider.');
INSERT INTO `spelltext_en` VALUES (17459, 'Summons and dismisses a rideable Icy Blue Mechanostrider Mod A.  This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17460, 'Summons and dismisses a rideable Frost Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17461, 'Summons and dismisses a rideable Black Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17462, 'Summons and dismisses a rideable Red Skeletal Horse.');
INSERT INTO `spelltext_en` VALUES (17463, 'Summons and dismisses a rideable Blue Skeletal Horse.');
INSERT INTO `spelltext_en` VALUES (17464, 'Summons and dismisses a rideable Brown Skeletal Horse.');
INSERT INTO `spelltext_en` VALUES (17465, 'Summons and dismisses a rideable Green Skeletal Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17474, 'Recover Highborne Relic Fragments.');
INSERT INTO `spelltext_en` VALUES (17481, 'Summons and dismisses Baron Rivendare\'s Deathcharger. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (17482, 'Increases attack power by 48 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (17483, 'Sends a shadowy bolt at the enemy causing 150 Shadow damage and dealing 40 damage every 2 sec for 6 sec.');
INSERT INTO `spelltext_en` VALUES (17484, 'Drains target for 2 Shadow damage every 1 sec and transfers it to the caster. Lasts for 30 sec.');
INSERT INTO `spelltext_en` VALUES (17490, 'Summons a Skeleton that will protect you for 1 min.');
INSERT INTO `spelltext_en` VALUES (17493, 'Increases spell power by 44.');
INSERT INTO `spelltext_en` VALUES (17495, 'Deals 5 to 35 damage every time you block.');
INSERT INTO `spelltext_en` VALUES (17498, 'Increases run speed by 5%.');
INSERT INTO `spelltext_en` VALUES (17500, 'Knocks target silly for 2 sec and increases Strength by 50 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (17504, 'Wounds the target causing them to bleed for 120 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (17505, 'Lowers all attributes of target by 15 for 1 min.');
INSERT INTO `spelltext_en` VALUES (17506, 'Target enemy loses 12 health and mana every 3 sec for 30 sec.');
INSERT INTO `spelltext_en` VALUES (17510, 'Corrupts the target, causing 30 damage over 3 sec.');
INSERT INTO `spelltext_en` VALUES (17511, 'Poisons target for 8 Nature damage every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (17528, 'Increases Rage by 45 and increases Strength by 60 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (17530, 'Restores 900 to 1500 mana.');
INSERT INTO `spelltext_en` VALUES (17531, 'Restores 1350 to 2250 mana.');
INSERT INTO `spelltext_en` VALUES (17534, 'Restores 1050 to 1750 health.');
INSERT INTO `spelltext_en` VALUES (17535, 'Increases Intellect and Spirit by 18 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (17536, 'Awaken the sleeping druid.');
INSERT INTO `spelltext_en` VALUES (17537, 'Increases Strength and Stamina by 18 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (17538, 'Increases Agility by 25 and critical strike rating by 10 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (17539, 'Increases spell power by 35 and critical strike rating by 10 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (17540, 'Increases armor by 2000 for 2 min.');
INSERT INTO `spelltext_en` VALUES (17543, 'Absorbs 1950 to 3250 fire damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (17544, 'Absorbs 1950 to 3250 Frost damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (17545, 'Absorbs 1950 to 3250 holy damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (17546, 'Absorbs 1950 to 3250 nature damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (17548, 'Absorbs 1950 to 3250 shadow damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (17549, 'Absorbs 1950 to 3250 arcane damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (17550, 'Attempts to remove one Curse, one Disease and one Poison from the Imbiber.');
INSERT INTO `spelltext_en` VALUES (17559, 'Transmutes Air into Fire.');
INSERT INTO `spelltext_en` VALUES (17560, 'Transmutes Fire into Earth.');
INSERT INTO `spelltext_en` VALUES (17561, 'Transmutes Earth into Water.');
INSERT INTO `spelltext_en` VALUES (17562, 'Transmutes Water into Air.');
INSERT INTO `spelltext_en` VALUES (17563, 'Purifies Essence of Undeath turning it into Water.');
INSERT INTO `spelltext_en` VALUES (17564, 'Taints Essence of Water turning it into Undeath.');
INSERT INTO `spelltext_en` VALUES (17565, 'Transmutes Living Essence into Earth.');
INSERT INTO `spelltext_en` VALUES (17566, 'Transmutes Earth to Living Essence.');
INSERT INTO `spelltext_en` VALUES (17567, 'Right Click to summon a Blood Parrot to accompany you. The parrot will remain until sent away or you remove the hat.');
INSERT INTO `spelltext_en` VALUES (17619, 'Increases the effect that healing and mana potions have on the wearer by 40%. This effect does not stack.');
INSERT INTO `spelltext_en` VALUES (17624, 'You turn to stone, absorbing up to 6000 total damage, but you are unable to move, attack, or cast spells. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (17625, 'Increases movement speed and life regeneration rate.');
INSERT INTO `spelltext_en` VALUES (17626, 'Increases the player\'s maximum health by 400 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (17627, 'Increases Intellect by 65 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (17628, 'Increases spell power by 70 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (17629, 'Increases resistance to all schools of magic by 25 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (17639, 'Reduces an enemy\'s chance to hit by 10% for 12 sec. Chance to fizzle against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (17668, 'Harness the power of lightning to strike down all enemies around you for 200 Nature damage.');
INSERT INTO `spelltext_en` VALUES (17707, 'Right Click to summon and dismiss your panda cub.');
INSERT INTO `spelltext_en` VALUES (17708, 'Right Click to summon and dismiss Mini Diablo.');
INSERT INTO `spelltext_en` VALUES (17709, 'Right Click to summon and dismiss your zergling.');
INSERT INTO `spelltext_en` VALUES (17712, 'Restores 300 to 700 health.');
INSERT INTO `spelltext_en` VALUES (17746, 'Increases your effective stealth level by 1.');
INSERT INTO `spelltext_en` VALUES (17768, 'When shapeshifting into Cat form the Druid gains 20 energy, when shapeshifting into Bear form the Druid gains 5 rage.');
INSERT INTO `spelltext_en` VALUES (17816, 'Impress others with your fashion sense.');
INSERT INTO `spelltext_en` VALUES (18029, 'Increases spell power by 19.');
INSERT INTO `spelltext_en` VALUES (18030, 'Increases spell power by 20.');
INSERT INTO `spelltext_en` VALUES (18031, 'Increases spell power by 21.');
INSERT INTO `spelltext_en` VALUES (18032, 'Increases spell power by 22.');
INSERT INTO `spelltext_en` VALUES (18033, 'Increases spell power by 25.');
INSERT INTO `spelltext_en` VALUES (18034, 'Increases spell power by 26.');
INSERT INTO `spelltext_en` VALUES (18035, 'Increases spell power by 27.');
INSERT INTO `spelltext_en` VALUES (18036, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (18037, 'Increases spell power by 30.');
INSERT INTO `spelltext_en` VALUES (18038, 'Increases spell power by 32.');
INSERT INTO `spelltext_en` VALUES (18039, 'Increases spell power by 33.');
INSERT INTO `spelltext_en` VALUES (18040, 'Increases spell power by 34.');
INSERT INTO `spelltext_en` VALUES (18041, 'Increases spell power by 35.');
INSERT INTO `spelltext_en` VALUES (18042, 'Increases spell power by 36.');
INSERT INTO `spelltext_en` VALUES (18043, 'Increases spell power by 37.');
INSERT INTO `spelltext_en` VALUES (18044, 'Increases spell power by 39.');
INSERT INTO `spelltext_en` VALUES (18045, 'Increases spell power by 40.');
INSERT INTO `spelltext_en` VALUES (18046, 'Increases spell power by 41.');
INSERT INTO `spelltext_en` VALUES (18047, 'Increases spell power by 42.');
INSERT INTO `spelltext_en` VALUES (18048, 'Increases spell power by 43.');
INSERT INTO `spelltext_en` VALUES (18049, 'Increases spell power by 26.');
INSERT INTO `spelltext_en` VALUES (18050, 'Increases spell power by 33.');
INSERT INTO `spelltext_en` VALUES (18052, 'Increases spell power by 34.');
INSERT INTO `spelltext_en` VALUES (18053, 'Increases spell power by 36.');
INSERT INTO `spelltext_en` VALUES (18054, 'Increases spell power by 37.');
INSERT INTO `spelltext_en` VALUES (18055, 'Increases spell power by 39.');
INSERT INTO `spelltext_en` VALUES (18056, 'Increases spell power by 40.');
INSERT INTO `spelltext_en` VALUES (18057, 'Increases spell power by 41.');
INSERT INTO `spelltext_en` VALUES (18058, 'Increases spell power by 42.');
INSERT INTO `spelltext_en` VALUES (18060, 'Increases attack power by 200.');
INSERT INTO `spelltext_en` VALUES (18067, 'Increases attack power by 45 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (18071, 'Restores 2148 health and 4410 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (18074, 'Increases attack power by 30 when fighting Undead.');
INSERT INTO `spelltext_en` VALUES (18075, 'Wounds the target causing them to bleed for 75 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (18076, 'Increases attack power by 72 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (18077, 'Poisons target for 3 Nature damage every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (18078, 'Wounds the target causing them to bleed for 30 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (18079, 'Increases attack power by 33 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (18081, 'Blasts a target for 91 to 125 Nature damage.');
INSERT INTO `spelltext_en` VALUES (18082, 'Hurls a fiery ball that causes 100 to 128 Fire damage and an additional 18 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (18083, 'Blasts a target for 80 to 112 Fire damage.');
INSERT INTO `spelltext_en` VALUES (18084, 'Steals 30 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (18086, 'Blasts a target for 150 Fire damage.');
INSERT INTO `spelltext_en` VALUES (18087, 'Increases attack power by 78 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (18088, 'Corrupts the target, causing 90 Shadow damage over 3 sec.');
INSERT INTO `spelltext_en` VALUES (18089, 'Blasts a target for 45 to 75 Nature damage.');
INSERT INTO `spelltext_en` VALUES (18090, 'Wounds the target for 90 to 114 damage.');
INSERT INTO `spelltext_en` VALUES (18091, 'Blasts a target for 85 Arcane damage.');
INSERT INTO `spelltext_en` VALUES (18092, 'Blasts a target for 35 Frost damage.');
INSERT INTO `spelltext_en` VALUES (18097, 'When struck in combat has a 1% chance of raising a thorny shield that inflicts 3 Nature damage to attackers when hit and increases Nature resistance by 50 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (18098, 'Increases attack power by 45 when fighting Undead.');
INSERT INTO `spelltext_en` VALUES (18104, 'Blasts a target for 90 to 126 Nature damage.');
INSERT INTO `spelltext_en` VALUES (18107, 'Wounds the target for 95 to 121 damage.');
INSERT INTO `spelltext_en` VALUES (18112, 'Blasts a target for 700 Fire damage.');
INSERT INTO `spelltext_en` VALUES (18124, 'Restores 1790 health over 27 sec. Must remain seated while eating. Also increases your Strength by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (18138, 'Sends a shadowy bolt at the enemy causing 110 to 140 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (18140, 'Restores 4410 mana over 30 sec. Must remain seated while drinking. Also increases your Spirit by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (18153, 'Kodo Kombobulator on any Ancient, Aged, or Dying Kodo to lure the Kodo to follow (one at a time).');
INSERT INTO `spelltext_en` VALUES (18185, 'Increases defense rating by 16.');
INSERT INTO `spelltext_en` VALUES (18190, '+140 Armor.');
INSERT INTO `spelltext_en` VALUES (18196, 'Increases defense rating by 22.');
INSERT INTO `spelltext_en` VALUES (18197, 'Poisons target for 7 Nature damage every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (18198, 'Increases attack power by 66 when fighting Undead.');
INSERT INTO `spelltext_en` VALUES (18199, 'Hurls a fiery ball that causes 86 to 110 Fire damage and an additional 18 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (18200, 'Wounds the target causing them to bleed for 130 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (18201, 'Increases attack power by 24 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (18202, 'Wounds the target causing them to bleed for 110 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (18203, 'Poisons target for 7 Nature damage every 2 sec for 30 sec.');
INSERT INTO `spelltext_en` VALUES (18204, 'Blasts a target for 110 to 120 Frost damage.');
INSERT INTO `spelltext_en` VALUES (18205, 'Sends a shadowy bolt at the enemy causing 55 to 85 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (18206, 'Delivers a fatal wound for 160 to 180 damage.');
INSERT INTO `spelltext_en` VALUES (18207, 'Increases attack power by 60 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (18208, 'Poisons target for 13 Nature damage every 5 sec for 25 sec.');
INSERT INTO `spelltext_en` VALUES (18211, 'Sends a shadowy bolt at the enemy causing 125 to 275 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (18212, 'Increases attack power by 99 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (18214, 'Sends a shadowy bolt at the enemy causing 150 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (18217, 'Sends a shadowy bolt at the enemy causing 60 to 100 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (18229, 'Restores 810 health over 27 sec.  Must remain seated while eating.  Also increases your Stamina by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (18230, 'Restores 810 health over 27 sec.  Must remain seated while eating.  If you eat for 10 seconds will also increase your Agility by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (18231, 'Restores 810 health over 27 sec.  Must remain seated while eating.  Also increases your Spirit by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (18232, 'Restores 810 health over 27 sec.  Must remain seated while eating.  Also restores 6 health every 5 seconds for 10 min.');
INSERT INTO `spelltext_en` VALUES (18233, 'Restores 810 health over 27 sec.  Must remain seated while eating.  Also restores 10 Mana every 5 seconds for 10 min.');
INSERT INTO `spelltext_en` VALUES (18234, 'Restores 4320 health over 30 sec.  Must remain seated while eating.  Also increases your Stamina by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (18264, 'Gives 20 additional intellect to party members within 0 yards.');
INSERT INTO `spelltext_en` VALUES (18276, 'Blasts a target for 90 Frost damage.');
INSERT INTO `spelltext_en` VALUES (18277, 'Calls a Bone Gryphon to serve as your flying mount. May only be summoned and ridden within Onslaught Harbor.');
INSERT INTO `spelltext_en` VALUES (18278, 'Silences an enemy preventing it from casting spells for 6 sec.');
INSERT INTO `spelltext_en` VALUES (18289, 'Diseases target enemy for 55 Nature damage every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (18307, 'Calls forth 3 servants of the House Barov that will fight, cook, and clean for you.');
INSERT INTO `spelltext_en` VALUES (18308, 'Calls forth 3 servants of the House Barov that will fight, cook, and clean for you.');
INSERT INTO `spelltext_en` VALUES (18363, 'Summons and dismisses a rideable kodo.');
INSERT INTO `spelltext_en` VALUES (18364, 'Deals 25 Fire damage every 5 sec to all nearby enemies for 15 sec.');
INSERT INTO `spelltext_en` VALUES (18369, 'Increases defense rating by 14.');
INSERT INTO `spelltext_en` VALUES (18378, 'Restores 10 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (18379, 'Restores 8 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (18381, 'Reduces target enemy\'s attack power by 25 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (18382, 'Increases your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (18384, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (18385, 'Restores 375 to 625 mana.');
INSERT INTO `spelltext_en` VALUES (18386, 'Heal your pet for 450 to 750.');
INSERT INTO `spelltext_en` VALUES (18388, 'Reduces the cooldown of your Fade ability by 2 sec.');
INSERT INTO `spelltext_en` VALUES (18397, 'Fill with water from the Auberdine moonwell.');
INSERT INTO `spelltext_en` VALUES (18398, 'Blasts a target for 45 Frost damage.');
INSERT INTO `spelltext_en` VALUES (18400, 'Causes nearby players to dance.');
INSERT INTO `spelltext_en` VALUES (18540, 'Begins a ritual that sacrifices a random participant\'s health to summon a doomguard. Requires the caster and 4 additional party members to complete the ritual. In order to participate, all players must right-click the portal and not move until the ritual is complete.');
INSERT INTO `spelltext_en` VALUES (18559, 'Demon Pick to Destroy Demon Crystal.');
INSERT INTO `spelltext_en` VALUES (18560, 'The purification of tainted Felcloth into Mooncloth can only be done at a moonwell, and only ocassionally will the waters permit themselves to be used in such a way.');
INSERT INTO `spelltext_en` VALUES (18608, 'Heals 1360 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (18610, 'Heals 2000 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (18633, 'Deals 8 Shadow damage every 2 sec for 30 sec and lowers their Strength for the duration of the disease.');
INSERT INTO `spelltext_en` VALUES (18652, 'Deals 30 Shadow damage every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (18656, 'Corrupts the target, causing 210 damage over 3 sec.');
INSERT INTO `spelltext_en` VALUES (18676, '+5 All Resistances.');
INSERT INTO `spelltext_en` VALUES (18679, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (18711, 'Fill with lava from the top of Fire Plume RIdge in Un\'Goro and two Thorium Bars to create an Unfinished Skeleton Key.');
INSERT INTO `spelltext_en` VALUES (18762, 'Close Demon Portals.');
INSERT INTO `spelltext_en` VALUES (18787, 'Increases attack power by 100 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (18796, 'Hurls a fiery ball that causes 155 to 197 Fire damage and an additional 24 damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (18797, 'Grants 1 extra attack on your next swing.');
INSERT INTO `spelltext_en` VALUES (18799, 'When struck in combat has a 1% chance of inflicting 50 Frost damage to the attacker and freezing them for 5 sec.');
INSERT INTO `spelltext_en` VALUES (18803, 'Increases Haste Rating by 320.');
INSERT INTO `spelltext_en` VALUES (18805, 'Restores 150 to 250 health and mana to a friendly target and attempts to dispel any polymorph effects from them. Reduced effectiveness against polymorph effects from casters of level 31 and higher.');
INSERT INTO `spelltext_en` VALUES (18815, 'When struck in combat has a 3% chance of stealing 35 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (18816, 'When struck in combat has a 1% chance of dealing 75 to 125 Fire damage to all targets around you.');
INSERT INTO `spelltext_en` VALUES (18820, 'Reduces the cost of your next spell cast within 10 sec by up to 500 mana.');
INSERT INTO `spelltext_en` VALUES (18826, 'Increases armor by 300 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (18831, 'Conjures a Lily Root that restores health and mana when eaten.');
INSERT INTO `spelltext_en` VALUES (18832, 'Restores 525 to 675 mana and health.');
INSERT INTO `spelltext_en` VALUES (18833, 'Blasts a target for 75 to 105 Fire damage.');
INSERT INTO `spelltext_en` VALUES (18887, 'Attach 20 Witherbark Skulls to create Nimboya\'s Laden Pike.');
INSERT INTO `spelltext_en` VALUES (18956, 'Restores 25 health every 3 sec for 30 sec.');
INSERT INTO `spelltext_en` VALUES (18957, 'Restores 40 health every 3 sec for 30 sec.');
INSERT INTO `spelltext_en` VALUES (18974, 'Apply near a Moonkin Stone to bring forth the stone\'s defender, Lunaclaw.');
INSERT INTO `spelltext_en` VALUES (18979, '5% chance of dealing 15 to 25 Nature damage on a successful melee attack.');
INSERT INTO `spelltext_en` VALUES (18987, 'Place in the Darrowshire Town Square.');
INSERT INTO `spelltext_en` VALUES (18989, 'Summons and dismisses a rideable Gray Kodo.');
INSERT INTO `spelltext_en` VALUES (18990, 'Summons and dismisses a rideable Brown Kodo.');
INSERT INTO `spelltext_en` VALUES (18991, 'Summons and dismisses a rideable Green Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (18992, 'Summons and dismisses a rideable Teal Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (19029, 'Combine 7 pieces of Living Rot inside the mortar and grind away with the pestle. Leave standing to allow coagulation.');
INSERT INTO `spelltext_en` VALUES (19057, 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 40. Only usable on item_display level 35 and above.');
INSERT INTO `spelltext_en` VALUES (19138, 'Apply near a Moonkin Stone to bring forth the stone\'s defender, Lunaclaw.');
INSERT INTO `spelltext_en` VALUES (19199, 'Restores 1050 to 1750 health and mana.');
INSERT INTO `spelltext_en` VALUES (19250, 'Plants Smokey\'s Special Compound at a Mark of Detonation. KABOOM!');
INSERT INTO `spelltext_en` VALUES (19260, 'Blasts a target for 160 to 250 Frost damage.');
INSERT INTO `spelltext_en` VALUES (19363, 'Summons a mechanical yeti that will protect you for 10 min.');
INSERT INTO `spelltext_en` VALUES (19380, 'Increases attack power by 33 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (19409, 'When struck in combat has a 3% chance to encase the caster in bone, increasing armor by 150 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (19470, 'Places gem in Naga statue.');
INSERT INTO `spelltext_en` VALUES (19512, 'Cure a sickly animal afflicted by the taint of poisoning.');
INSERT INTO `spelltext_en` VALUES (19548, 'Begins taming an Ice Claw Bear to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19564, 'Draw a sample of water from the waterfall at the mouth of the Cliffspring Falls cave.');
INSERT INTO `spelltext_en` VALUES (19565, 'Draw a sample of water from the pool of water at the top of Dreadmist Peak.');
INSERT INTO `spelltext_en` VALUES (19566, 'Sifts and crushes Deeprock Salt until it becomes Refined Deeprock Salt.');
INSERT INTO `spelltext_en` VALUES (19588, 'Place between the Dead Goliaths in the Valley of Bones.');
INSERT INTO `spelltext_en` VALUES (19634, 'Restores 50 mana every 3 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (19638, 'Increases all resistances by 20 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (19646, 'Allows opening of locks that require up to 25 lockpicking skill. The skeleton key is consumed in the process.');
INSERT INTO `spelltext_en` VALUES (19649, 'Allows opening of locks that require up to 125 lockpicking skill. The skeleton key is consumed in the process.');
INSERT INTO `spelltext_en` VALUES (19651, 'Allows opening of locks that require up to 200 lockpicking skill. The skeleton key is consumed in the process.');
INSERT INTO `spelltext_en` VALUES (19674, 'Begins taming a Large Crag Boar to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19687, 'Begins taming a Snow Leopard to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19688, 'Begins taming an Adult Plainstrider to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19689, 'Begins taming a Prairie Stalker to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19690, 'Use to disguise yourself as a member of the Scarlet Crusade.');
INSERT INTO `spelltext_en` VALUES (19691, 'Increases attack power by 18 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (19692, 'Begins taming a Swoop to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19693, 'Begins taming a Webwood Lurker to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19694, 'Begins taming a Dire Mottled Boar to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19696, 'Begins taming a Surf Crawler to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19697, 'Begins taming an Armored Scorpid to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19699, 'Begins taming a Nightsaber Stalker to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19700, 'Begins taming a Strigid Screecher to be your companion for 15 minutes. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (19719, 'Complete the aquatic time trial at the Shrine of Remulos.');
INSERT INTO `spelltext_en` VALUES (19720, 'Combine with the Half Pendant of Aquatic Endurance to form the Pendant of the Sea Lion.');
INSERT INTO `spelltext_en` VALUES (19755, 'Lowers all attributes of target by 10 for 1 min.');
INSERT INTO `spelltext_en` VALUES (19769, 'Inflicts 300 to 500 Fire damage and incapacitates targets for 3 sec in a 3 yard radius. Any damage will break the effect. Unreliable against targets higher than level 67.');
INSERT INTO `spelltext_en` VALUES (19772, 'Right Click to summon and dismiss your lifelike mechanical toad.');
INSERT INTO `spelltext_en` VALUES (19784, 'Inflicts 225 to 675 Fire damage and incapacitates targets in a 0 yard radius for 4 sec. Any damage will break the effect. Unreliable against targets higher than level 73.');
INSERT INTO `spelltext_en` VALUES (19801, 'Attempts to remove 1 Enrage and 1 Magic effect from an enemy target.');
INSERT INTO `spelltext_en` VALUES (19804, 'Activates your Arcanite Dragonling to fight for you for 1 min.');
INSERT INTO `spelltext_en` VALUES (19805, 'Drops a target dummy on the ground that attracts nearby monsters to attack it. Lasts for 15 seconds or until killed.');
INSERT INTO `spelltext_en` VALUES (19821, 'Drains 675 to 1125 mana from those in the blast radius and does 50% of the mana drained in damage to the target. Also Silences targets in the blast for 5 sec.');
INSERT INTO `spelltext_en` VALUES (19874, 'Blasts a target for 180 to 250 Nature damage.');
INSERT INTO `spelltext_en` VALUES (19886, 'Teaches you how to be an Expert Cook, allowing a maximum of 225 cooking skill.');
INSERT INTO `spelltext_en` VALUES (19889, 'Teaches you how to be an Expert Fisherman, allowing a maximum of 225 fishing skill.');
INSERT INTO `spelltext_en` VALUES (19903, 'Teaches you how to be an expert in first aid, allowing a maximum of 225 first aid skill.');
INSERT INTO `spelltext_en` VALUES (19937, 'Use to disguise yourself as a member of the Black Dragonflight.');
INSERT INTO `spelltext_en` VALUES (19938, 'Wakes up a targeted sleeping peon.');
INSERT INTO `spelltext_en` VALUES (20008, 'Permanently enchant bracers to increase Intellect by 7.');
INSERT INTO `spelltext_en` VALUES (20009, 'Permanently enchant bracers to increase Spirit by 9.');
INSERT INTO `spelltext_en` VALUES (20010, 'Permanently enchant bracers to increase Strength by 9.');
INSERT INTO `spelltext_en` VALUES (20011, 'Permanently enchant bracers to increase Stamina by 9.');
INSERT INTO `spelltext_en` VALUES (20012, 'Permanently enchant gloves to increase Agility by 7.');
INSERT INTO `spelltext_en` VALUES (20013, 'Permanently enchant gloves to increase Strength by 7.');
INSERT INTO `spelltext_en` VALUES (20014, 'Permanently enchant a cloak to increase all resistances by 5.');
INSERT INTO `spelltext_en` VALUES (20015, 'Permanently enchant a cloak to increase armor by 70.');
INSERT INTO `spelltext_en` VALUES (20016, 'Permanently enchant a shield to regenerate 4 mana and health every 5 sec.');
INSERT INTO `spelltext_en` VALUES (20017, 'Permanently enchant a shield to increase Stamina by 7.');
INSERT INTO `spelltext_en` VALUES (20020, 'Permanently enchant boots to increase Stamina by 7.');
INSERT INTO `spelltext_en` VALUES (20023, 'Permanently enchant boots to increase Agility by 7.');
INSERT INTO `spelltext_en` VALUES (20024, 'Permanently enchant boots to increase Spirit by 5.');
INSERT INTO `spelltext_en` VALUES (20025, 'Permanently enchant chest armor to increase all stats by 4.');
INSERT INTO `spelltext_en` VALUES (20026, 'Permanently enchant chest armor to increase health by 100.');
INSERT INTO `spelltext_en` VALUES (20028, 'Permanently enchant chest armor to increase mana by 100.');
INSERT INTO `spelltext_en` VALUES (20029, 'Permanently enchant a melee weapon to often chill the target, reducing their movement and attack speed. Has a reduced effect for players above level 60.');
INSERT INTO `spelltext_en` VALUES (20030, 'Permanently enchant a two-handed melee weapon to increase its damage by 9.');
INSERT INTO `spelltext_en` VALUES (20031, 'Permanently enchant a melee weapon to increase its damage by 5.');
INSERT INTO `spelltext_en` VALUES (20032, 'Permanently enchant a melee weapon to often steal life from the enemy and give it to the wielder. Has a reduced effect for players above level 60.');
INSERT INTO `spelltext_en` VALUES (20033, 'Permanently enchant a melee weapon to often inflict a curse on the target, inflicting Shadow damage and reducing their melee damage.');
INSERT INTO `spelltext_en` VALUES (20034, 'Permanently enchant a melee weapon to often heal for 75 to 125 and increase Strength by 100 for 15 sec. when attacking in melee. Has a reduced effect for players above level 60.');
INSERT INTO `spelltext_en` VALUES (20035, 'Permanently enchant a two-handed melee weapon to increase Spirit by 9.');
INSERT INTO `spelltext_en` VALUES (20036, 'Permanently enchant a two-handed melee weapon to increase Intellect by 9.');
INSERT INTO `spelltext_en` VALUES (20039, 'Turn three lesser eternal essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (20040, 'Turn a greater eternal essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (20211, 'Channel at Grand Admiral Westwind once he\'s invoked his Protection Sphere to bring it down. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (20269, 'Place the Gaea seed into the Gaea dirt mound.');
INSERT INTO `spelltext_en` VALUES (20270, 'Teaches Imp Firebolt (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20274, 'Helps gather termites from a termite mound in Eastern Plaguelands.');
INSERT INTO `spelltext_en` VALUES (20312, 'Teaches Imp Firebolt (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20313, 'Teaches Imp Firebolt (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20314, 'Teaches Imp Firebolt (Rank 5).');
INSERT INTO `spelltext_en` VALUES (20315, 'Teaches Imp Firebolt (Rank 6).');
INSERT INTO `spelltext_en` VALUES (20316, 'Teaches Imp Firebolt (Rank 7).');
INSERT INTO `spelltext_en` VALUES (20317, 'Teaches Voidwalker Torment (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20322, 'Teaches Imp Fire Shield (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20323, 'Teaches Imp Fire Shield (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20324, 'Teaches Imp Fire Shield (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20326, 'Teaches Imp Fire Shield (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20327, 'Teaches Imp Fire Shield (Rank 5).');
INSERT INTO `spelltext_en` VALUES (20329, 'Teaches Imp Phase Shift.');
INSERT INTO `spelltext_en` VALUES (20364, 'Bury at Marla\'s Grave.');
INSERT INTO `spelltext_en` VALUES (20377, 'Teaches Voidwalker Torment (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20378, 'Teaches Voidwalker Torment (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20379, 'Teaches Voidwalker Torment (Rank 5).');
INSERT INTO `spelltext_en` VALUES (20380, 'Teaches Voidwalker Torment (Rank 6).');
INSERT INTO `spelltext_en` VALUES (20381, 'Teaches Voidwalker Sacrifice (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20382, 'Teaches Voidwalker Sacrifice (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20383, 'Teaches Voidwalker Sacrifice (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20384, 'Teaches Voidwalker Sacrifice (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20385, 'Teaches Voidwalker Sacrifice (Rank 5).');
INSERT INTO `spelltext_en` VALUES (20386, 'Teaches Voidwalker Sacrifice (Rank 6).');
INSERT INTO `spelltext_en` VALUES (20387, 'Teaches Voidwalker Consume Shadows (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20388, 'Teaches Voidwalker Consume Shadows (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20389, 'Teaches Voidwalker Consume Shadows (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20390, 'Teaches Voidwalker Consume Shadows (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20391, 'Teaches Voidwalker Consume Shadows (Rank 5).');
INSERT INTO `spelltext_en` VALUES (20392, 'Teaches Voidwalker Consume Shadows (Rank 6).');
INSERT INTO `spelltext_en` VALUES (20393, 'Teaches Voidwalker Suffering (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20394, 'Teaches Voidwalker Suffering (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20395, 'Teaches Voidwalker Suffering (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20396, 'Teaches Voidwalker Suffering (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20398, 'Teaches Succubus Lash of Pain (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20399, 'Teaches Succubus Lash of Pain (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20400, 'Teaches Succubus Lash of Pain (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20401, 'Teaches Succubus Lash of Pain (Rank 5).');
INSERT INTO `spelltext_en` VALUES (20402, 'Teaches Succubus Lash of Pain (Rank 6).');
INSERT INTO `spelltext_en` VALUES (20403, 'Teaches Succubus Soothing Kiss (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20404, 'Teaches Succubus Soothing Kiss (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20405, 'Teaches Succubus Soothing Kiss (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20406, 'Teaches Succubus Soothing Kiss (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20407, 'Teaches Succubus Seduction.');
INSERT INTO `spelltext_en` VALUES (20408, 'Teaches Succubus Lesser Invisibility.');
INSERT INTO `spelltext_en` VALUES (20426, 'Teaches Felhunter Devour Magic (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20427, 'Teaches Felhunter Devour Magic (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20428, 'Teaches Felhunter Devour Magic (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20429, 'Teaches Felhunter Tainted Blood (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20430, 'Teaches Felhunter Tainted Blood (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20431, 'Teaches Felhunter Tainted Blood (Rank 3).');
INSERT INTO `spelltext_en` VALUES (20432, 'Teaches Felhunter Tainted Blood (Rank 4).');
INSERT INTO `spelltext_en` VALUES (20433, 'Teaches Felhunter Spell Lock (Rank 1).');
INSERT INTO `spelltext_en` VALUES (20434, 'Teaches Felhunter Spell Lock (Rank 2).');
INSERT INTO `spelltext_en` VALUES (20435, 'Teaches Felhunter Paranoia.');
INSERT INTO `spelltext_en` VALUES (20513, 'Smash enchanted Resonite Crystal into Resonite Cask.');
INSERT INTO `spelltext_en` VALUES (20529, 'Bind pages 1-4 into Chapter 1 of the Shredder Operating Manual.');
INSERT INTO `spelltext_en` VALUES (20530, 'Bind pages 5-8 into Chapter 2 of the Shredder Operating Manual.');
INSERT INTO `spelltext_en` VALUES (20531, 'Bind pages 9-12 into Chapter 3 of the Shredder Operating Manual.');
INSERT INTO `spelltext_en` VALUES (20586, 'Inflicts Nature damage every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (20587, 'Increases Stamina by 10 and reduces physical damage taken by 5 for 10 min. However, lowers Strength and Agility by 5 and increases magical damage taken by up to 20.');
INSERT INTO `spelltext_en` VALUES (20631, 'Restores 100 health every 1 sec for 10 sec.');
INSERT INTO `spelltext_en` VALUES (20707, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 400 health and 700 mana.');
INSERT INTO `spelltext_en` VALUES (20709, 'Allows opening of locks that require up to 300 lockpicking skill. The skeleton key is consumed in the process.');
INSERT INTO `spelltext_en` VALUES (20732, 'Increases attack power by 15.');
INSERT INTO `spelltext_en` VALUES (20737, 'Place at the Foulweald Totem Mound.');
INSERT INTO `spelltext_en` VALUES (20762, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 750 health and 1200 mana.');
INSERT INTO `spelltext_en` VALUES (20763, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 1100 health and 1700 mana.');
INSERT INTO `spelltext_en` VALUES (20764, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 1600 health and 2200 mana.');
INSERT INTO `spelltext_en` VALUES (20765, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 2200 health and 2800 mana.');
INSERT INTO `spelltext_en` VALUES (20804, 'Use on Injured, Badly Injured, and Critically Injured Soldiers.');
INSERT INTO `spelltext_en` VALUES (20814, 'Fill at the Dire Pool.');
INSERT INTO `spelltext_en` VALUES (20847, 'When struck in combat has a 1% chance of increasing all party member\'s armor by 250 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (20869, 'Blasts a target for 75 Frost damage.');
INSERT INTO `spelltext_en` VALUES (20875, 'Increases Stamina by 10 for 15 min and gets you drunk to boot!');
INSERT INTO `spelltext_en` VALUES (20883, 'Blasts a target for 70 Arcane damage.');
INSERT INTO `spelltext_en` VALUES (20885, 'Restores 8 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (20886, 'When struck in combat inflicts 3 Arcane damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (20888, 'When struck in combat inflicts 1 Arcane damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (20959, 'Restores 13 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (20969, 'Restores 5 health every 5 sec.');
INSERT INTO `spelltext_en` VALUES (21014, 'Throw Anuniaq\'s Net at the nearest School of Tasty Reef Fish within 0 yards.');
INSERT INTO `spelltext_en` VALUES (21050, 'Use to lull the vermin infesting the Deeprun Tram into a state of raptured bliss.');
INSERT INTO `spelltext_en` VALUES (21092, 'Improves your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (21140, 'Delivers a fatal wound for 240 damage.');
INSERT INTO `spelltext_en` VALUES (21142, 'Deals 5 Fire damage to anyone who strikes you with a melee attack.');
INSERT INTO `spelltext_en` VALUES (21149, 'Restores 51 health over 18 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min. Also packs quite a kick...');
INSERT INTO `spelltext_en` VALUES (21151, 'Sends a shadowy bolt at the enemy causing 75 Shadow damage and lowering all stats by 25 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (21152, 'Knocks down all nearby enemies for 3 sec.');
INSERT INTO `spelltext_en` VALUES (21153, 'You gain 100 armor penetration rating for 10 sec. This effect stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (21159, 'Hurls a fiery ball that causes 83 to 101 Fire damage and an additional 16 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (21160, 'The Eye of Sulfuras can be combined with the Sulfuron Hammer to create Sulfuras, legendary hammer of Ragnaros.');
INSERT INTO `spelltext_en` VALUES (21162, 'Hurls a fiery ball that causes 273 to 333 Fire damage and an additional 75 damage over 10 sec.');
INSERT INTO `spelltext_en` VALUES (21165, 'Increases your haste rating by 212 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (21170, 'Steals 100 to 180 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (21171, 'Allows user to view the Alliance stronghold through Ryson\'s Eye in the Sky when used in conjunction with a Globe of Scrying.');
INSERT INTO `spelltext_en` VALUES (21179, 'Blasts up to 3 targets for 150 to 250 Nature damage. Each target after the first takes less damage.');
INSERT INTO `spelltext_en` VALUES (21180, 'Transforms Shadowstrike into Thunderstrike.');
INSERT INTO `spelltext_en` VALUES (21181, 'Transforms Thunderstrike into Shadowstrike.');
INSERT INTO `spelltext_en` VALUES (21185, 'Restores 150 mana or 20 rage when you kill a target that gives experience; this effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (21332, 'Used on plagued water elementals in Eastern Plaguelands.');
INSERT INTO `spelltext_en` VALUES (21343, 'Throw me!');
INSERT INTO `spelltext_en` VALUES (21346, 'Restores 2 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21347, 'Restores 4 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21348, 'Restores 6 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21355, 'Plants the beacon in the Eastern Crater. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21358, 'Douses a rune of the Firelords.');
INSERT INTO `spelltext_en` VALUES (21360, 'Restores 3 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21361, 'Restores 4 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21362, 'Restores 5 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21363, 'Restores 6 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21364, 'Restores 9 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21365, 'Restores 11 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21366, 'Restores 14 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21370, 'Plants the beacon in the Western Crater. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21371, 'Plants the beacon at the Snowfall Graveyard. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21393, 'Restores 980 to 1260 health. This item may only be used in PvP Battlegrounds.');
INSERT INTO `spelltext_en` VALUES (21394, 'Restores 560 to 720 health. This item may only be used in PvP Battlegrounds.');
INSERT INTO `spelltext_en` VALUES (21395, 'Restores 980 to 1260 mana. This item may only be used in PvP Battlegrounds.');
INSERT INTO `spelltext_en` VALUES (21396, 'Restores 560 to 720 mana. This item may only be used in PvP Battlegrounds.');
INSERT INTO `spelltext_en` VALUES (21407, 'Increases defense rating by 17.');
INSERT INTO `spelltext_en` VALUES (21409, 'Increases defense rating by 19.');
INSERT INTO `spelltext_en` VALUES (21410, 'Increases defense rating by 21.');
INSERT INTO `spelltext_en` VALUES (21425, 'Allows user to view the Horde stronghold through Ryson\'s Eye in the Sky when used in conjunction with a Globe of Scrying.');
INSERT INTO `spelltext_en` VALUES (21429, 'Increases ranged attack power by 10.');
INSERT INTO `spelltext_en` VALUES (21431, 'Increases ranged attack power by 14.');
INSERT INTO `spelltext_en` VALUES (21432, 'Increases ranged attack power by 17.');
INSERT INTO `spelltext_en` VALUES (21433, 'Increases ranged attack power by 19.');
INSERT INTO `spelltext_en` VALUES (21434, 'Increases ranged attack power by 22.');
INSERT INTO `spelltext_en` VALUES (21436, 'Increases ranged attack power by 26.');
INSERT INTO `spelltext_en` VALUES (21438, 'Increases ranged attack power by 31.');
INSERT INTO `spelltext_en` VALUES (21439, 'Increases ranged attack power by 34.');
INSERT INTO `spelltext_en` VALUES (21440, 'Increases ranged attack power by 36.');
INSERT INTO `spelltext_en` VALUES (21441, 'Increases ranged attack power by 38.');
INSERT INTO `spelltext_en` VALUES (21442, 'Increases ranged attack power by 41.');
INSERT INTO `spelltext_en` VALUES (21445, 'Increases ranged attack power by 48.');
INSERT INTO `spelltext_en` VALUES (21453, 'Increases ranged attack power by 70.');
INSERT INTO `spelltext_en` VALUES (21473, 'Increases your block rating by 9.');
INSERT INTO `spelltext_en` VALUES (21475, 'Increases your block rating by 12.');
INSERT INTO `spelltext_en` VALUES (21476, 'Increases your block rating by 13.');
INSERT INTO `spelltext_en` VALUES (21477, 'Increases your block rating by 14.');
INSERT INTO `spelltext_en` VALUES (21485, 'Increases your block rating by 24.');
INSERT INTO `spelltext_en` VALUES (21537, 'Plants the beacon in the Dun Baldar Courtyard. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21538, 'Plants the beacon in the Frostwolf Keep Courtyard. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21544, 'Creates a Shredder Unit that you control!');
INSERT INTO `spelltext_en` VALUES (21562, 'Power infuses all party and raid members, increasing their Stamina by 43 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (21564, 'Power infuses all party and raid members, increasing their Stamina by 54 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (21565, 'Creates a Shredder Unit that you control!');
INSERT INTO `spelltext_en` VALUES (21593, 'Restores 3 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21595, 'Restores 4 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21596, 'Restores 5 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21598, 'Restores 6 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21599, 'Restores 6 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21600, 'Restores 7 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21601, 'Restores 7 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21618, 'Restores 5 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21619, 'Restores 5 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21620, 'Restores 6 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21623, 'Restores 3 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21624, 'Restores 3 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21625, 'Restores 4 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21626, 'Restores 8 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21627, 'Restores 8 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21628, 'Restores 9 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21629, 'Restores 10 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21630, 'Restores 10 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21631, 'Restores 11 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21632, 'Restores 13 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21633, 'Restores 13 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21634, 'Restores 14 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21635, 'Restores 15 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21636, 'Restores 15 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21637, 'Restores 15 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21638, 'Restores 16 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21639, 'Restores 16 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21640, 'Restores 18 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21641, 'Restores 18 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21642, 'Restores 18 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21643, 'Restores 19 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21644, 'Restores 19 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21728, 'Plants the beacon at the Snowfall Graveyard. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21729, 'Plants the beacon in the Eastern Crater. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21730, 'Plants the beacon in the Western Crater. Protect it from harm!');
INSERT INTO `spelltext_en` VALUES (21741, 'Your pet gains 15 stamina and 100 spell resistance against all schools of magic.');
INSERT INTO `spelltext_en` VALUES (21747, 'Gives the Paladin a chance on every melee hit to heal your party for 189 to 211.');
INSERT INTO `spelltext_en` VALUES (21794, 'Use to muzzle a Frostwolf. Return the muzzled animal to the Frostwolf Stable Master.');
INSERT INTO `spelltext_en` VALUES (21838, 'Gives you a % chance to generate an additional Rage point whenever damage is dealt to you.');
INSERT INTO `spelltext_en` VALUES (21848, 'Change yourself into something more befitting the wintry season. Requires a Snowball to use.');
INSERT INTO `spelltext_en` VALUES (21849, 'Gives the Gift of the Wild to all party and raid members, increasing armor by 240, all attributes by 10 and all resistances by 15 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (21850, 'Gives the Gift of the Wild to all party and raid members, increasing armor by 285, all attributes by 12 and all resistances by 20 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (21853, 'When struck in melee there is a % chance you will Fade for 4 sec.');
INSERT INTO `spelltext_en` VALUES (21855, 'Throw at a Mjordin Combatant within 0 yards. Can only be used on the Savage Ledge.');
INSERT INTO `spelltext_en` VALUES (21866, 'Use to train an Alterac Ram. Return the tamed animal to the Stormpike Stable Master.');
INSERT INTO `spelltext_en` VALUES (21871, 'Increases the duration of your Rejuvenation spell by 3 sec.');
INSERT INTO `spelltext_en` VALUES (21872, 'Reduces the casting time of your Regrowth spell by 0.2 sec.');
INSERT INTO `spelltext_en` VALUES (21874, 'Reduces the cooldown of your Vanish ability by 30 sec.');
INSERT INTO `spelltext_en` VALUES (21879, 'Reduces the threat generated by your Scorch, Arcane Missiles, Fireball, and Frostbolt spells.');
INSERT INTO `spelltext_en` VALUES (21881, 'Increases the chance to apply poisons to your target by 5%.');
INSERT INTO `spelltext_en` VALUES (21884, 'Fill at the orange crystal pool in Maraudon.');
INSERT INTO `spelltext_en` VALUES (21885, 'Pour on Vylestem Vines to purge them of corruption.');
INSERT INTO `spelltext_en` VALUES (21890, '% chance after using an offensive ability requiring rage that your next offensive ability requires 5 less rage to use.');
INSERT INTO `spelltext_en` VALUES (21894, 'Restores 25 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (21895, 'The radius of your totems that affect friendly targets is increased to 30 yd.');
INSERT INTO `spelltext_en` VALUES (21899, 'Increases the amount healed by Chain Heal to targets beyond the first by 5%.');
INSERT INTO `spelltext_en` VALUES (21919, 'Grants an extra attack on your next swing.');
INSERT INTO `spelltext_en` VALUES (21920, 'Increases Frost spell power by 15 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (21922, 'Your pet gains 20 stamina and 130 spell resistance against all schools of magic.');
INSERT INTO `spelltext_en` VALUES (21926, 'Increases your pet\'s stamina by 30 and all spell resistances by 40.');
INSERT INTO `spelltext_en` VALUES (21928, 'Increases your pet\'s stamina by 40 and all spell resistances by 60.');
INSERT INTO `spelltext_en` VALUES (21931, 'Permanently enchant a melee weapon to increase Frost spell power by 7.');
INSERT INTO `spelltext_en` VALUES (21935, 'Allows an experienced engineer to turn water into a snowball. The Snowmaster requires a day to build up enough chill to freeze another snowball.');
INSERT INTO `spelltext_en` VALUES (21949, 'Wounds the target causing them to bleed for 230 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (21951, 'Restores 50 mana.');
INSERT INTO `spelltext_en` VALUES (21952, 'Poisons target for 9 Nature damage every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (21954, 'Removes 1 poison effect.');
INSERT INTO `spelltext_en` VALUES (21955, 'Restores 600 health and mana over 10 sec.');
INSERT INTO `spelltext_en` VALUES (21956, 'Absorbs 500 physical damage. Lasts 15 sec.');
INSERT INTO `spelltext_en` VALUES (21957, 'Places all five of the Khans\' gems in the Amulet of Spirits.');
INSERT INTO `spelltext_en` VALUES (21960, 'Forces the spirits of the first centaur Kahns to manifest in the physical world.');
INSERT INTO `spelltext_en` VALUES (21961, 'Wounds the target for 160 damage and lowers their armor by 100.');
INSERT INTO `spelltext_en` VALUES (21969, 'Has a 2% chance when struck in combat of increasing all stats by 25 for 1 min.');
INSERT INTO `spelltext_en` VALUES (21973, '-0.1 sec to the casting time of your Flash Heal spell.');
INSERT INTO `spelltext_en` VALUES (21975, 'Increases your maximum Energy by 10.');
INSERT INTO `spelltext_en` VALUES (21978, 'Chance on landing a direct damage spell to deal 100 Shadow damage and restore 100 mana to you.');
INSERT INTO `spelltext_en` VALUES (21991, 'When struck in combat inflicts 4 Nature damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (21992, 'Blasts your enemy with lightning, dealing 300 Nature damage and then jumping to additional nearby enemies. Each jump reduces that victim\'s Nature resistance by 25. Affects 5 targets. Your primary target is also consumed by a cyclone, slowing its attack speed by 20% for 12 sec.');
INSERT INTO `spelltext_en` VALUES (22007, '10% chance after casting Arcane Missiles, Fireball, or Frostbolt that your next spell with a casting time under 10 seconds cast instantly.');
INSERT INTO `spelltext_en` VALUES (22010, 'Your Greater Heals now have a heal over time component equivalent to a rank 5 Renew.');
INSERT INTO `spelltext_en` VALUES (22562, 'Fill the Amethyst Phial at the Oracle Glade moonwell.');
INSERT INTO `spelltext_en` VALUES (22563, 'Returns you to the sanctuary of Frostwolf Keep.');
INSERT INTO `spelltext_en` VALUES (22564, 'Returns you to the sanctuary of Dun Baldar.');
INSERT INTO `spelltext_en` VALUES (22593, 'Permanently adds 5 Fire resistance to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22594, 'Permanently adds 5 Frost resistance to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22596, 'Permanently adds 5 Shadow resistance to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22597, 'Permanently adds 5 Nature resistance to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22598, 'Permanently adds 5 Arcane resistance to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22599, 'Permanently adds 5 resistance to all magic schools to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22618, 'When the shield blocks it releases an electrical charge that damages all nearby enemies.  This also has a chance of damaging the shield.');
INSERT INTO `spelltext_en` VALUES (22639, 'Slows enemy\'s movement by 60% and causes them to bleed for 150 damage over 30 sec.');
INSERT INTO `spelltext_en` VALUES (22640, 'Increases your haste rating by 300 for 5 sec.');
INSERT INTO `spelltext_en` VALUES (22641, 'Charge an enemy, knocking it silly for 30 seconds. Also knocks you down, stunning you for a short period of time. Any damage caused will revive the target. Chance to fizzle when used against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (22648, '1% chance on a melee critical hit to call forth the spirit of Eskhandar to protect you in battle for 2 min.');
INSERT INTO `spelltext_en` VALUES (22683, 'Protects the wearer from being fully engulfed by Shadow Flame.');
INSERT INTO `spelltext_en` VALUES (22700, 'Unfolds into a Field Repair Bot that can repair damaged item_display and purchase unwanted goods. After 10 minutes its internal motor fails.');
INSERT INTO `spelltext_en` VALUES (22717, 'Summons and dismisses a rideable Black War Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22718, 'Summons and dismisses a rideable Black War Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22719, 'Summons and dismisses a rideable Black Battlestrider.  This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22720, 'Summons and dismisses a rideable Black War Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22721, 'Summons and dismisses a rideable Black War Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22722, 'Summons and dismisses a rideable Red Skeletal Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22723, 'Summons and dismisses a rideable Black War Tiger. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22724, 'Summons and dismisses a rideable Black War Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (22725, 'Permanently adds 5 defense rating to an item worn on the chest, legs, hands or feet.\r\n\r\nAttaching the armor kit to the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22729, 'Restores 1440 to 1760 mana and health.');
INSERT INTO `spelltext_en` VALUES (22731, 'Restores 1790 health over 27 sec.  Must remain seated while eating.  Also increases your Intellect by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (22734, 'Restores 4200 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (22736, 'Disguise yourself as one of the Gordok ogres, and maybe even fool a particular captain in the process! The suit will only hold together for 10 min.');
INSERT INTO `spelltext_en` VALUES (22738, 'Reduces the cooldown of your Intercept ability by 5 sec.');
INSERT INTO `spelltext_en` VALUES (22748, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (22749, 'Permanently enchant a melee weapon to increase spell power by 30.');
INSERT INTO `spelltext_en` VALUES (22750, 'Permanently enchant a melee weapon to increase spell power by 29.');
INSERT INTO `spelltext_en` VALUES (22756, 'Increase the critical strike rating on a melee weapon by 28 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (22778, 'Reduces the rage cost of your Hamstring ability by 3.');
INSERT INTO `spelltext_en` VALUES (22779, 'Attaches a permanent scope to a bow or gun that increases its ranged hit rating by 30.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22789, 'Increases Stamina by 10 for 15 min and gets you drunk to boot. Green means it\'s good!');
INSERT INTO `spelltext_en` VALUES (22790, 'Increases Spirit by 25, but decreases Intellect by 5 for 15 min. Smoooooth.');
INSERT INTO `spelltext_en` VALUES (22792, 'Plants a Thornling which attracts nearby enemies.');
INSERT INTO `spelltext_en` VALUES (22801, 'Increases the speed of your Ghost Wolf ability by 15%. Does not function for players higher than level 60.');
INSERT INTO `spelltext_en` VALUES (22804, 'Improves your chance to get a critical strike with all Shock spells by 2%.');
INSERT INTO `spelltext_en` VALUES (22807, 'Allows the Imbiber to breathe water for 1 hour.');
INSERT INTO `spelltext_en` VALUES (22836, 'Increases attack power by 36 when fighting Elementals.');
INSERT INTO `spelltext_en` VALUES (22840, 'Permanently adds 10 haste rating to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22844, 'Permanently adds 8 spell power to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22846, 'Permanently adds 12 dodge rating to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (22849, 'Increases spell power against Undead by 35.');
INSERT INTO `spelltext_en` VALUES (22850, 'Grants the wielder 20 defense rating and 300 armor for 10 sec.');
INSERT INTO `spelltext_en` VALUES (22852, 'Increases the block value of your shield by 45.');
INSERT INTO `spelltext_en` VALUES (22855, 'Increases the damage of your Imp\'s Firebolt spell by 8.');
INSERT INTO `spelltext_en` VALUES (22863, 'Increases run speed by 30% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (22906, 'Drive into the heart of the brood mother to temper the heated blade.');
INSERT INTO `spelltext_en` VALUES (22912, 'Increases the block value of your shield by 36.');
INSERT INTO `spelltext_en` VALUES (22949, 'Seal a Felvine Shard inside the Reliquary of Purity.');
INSERT INTO `spelltext_en` VALUES (22988, 'Consumed by the fury of Illidan: 1400 attack power bonus versus Demons. 20% bonus chance to hit. 30% melee haste.');
INSERT INTO `spelltext_en` VALUES (22989, 'Detaches the twin blades, forming two separate warglaives.');
INSERT INTO `spelltext_en` VALUES (22990, 'Connects the twin warglaives of Azzinoth, forming the Twin Blades of Azzinoth.');
INSERT INTO `spelltext_en` VALUES (22999, 'Jumper Cables will sometimes be able to shock a dead player back to life. Cannot be used when in combat.');
INSERT INTO `spelltext_en` VALUES (23000, 'Inflicts 213 to 287 Fire damage in a 5 yard radius (Assuming that it gets to the target, some restrictions may apply.)');
INSERT INTO `spelltext_en` VALUES (23004, 'Summons a Gnomish Alarm-o-Bot to scan the area for stealthed enemies. The Alarm-o-Bot may occasionally give false signals. Lasts up to 2 min.');
INSERT INTO `spelltext_en` VALUES (23008, 'Blasts open strong locked doors or chests.');
INSERT INTO `spelltext_en` VALUES (23012, 'Right Click to summon and dismiss the orphan you\'ve agreed to look after for Children\'s Week.');
INSERT INTO `spelltext_en` VALUES (23013, 'Right Click to summon and dismiss the orphan you\'ve agreed to look after for Children\'s Week.');
INSERT INTO `spelltext_en` VALUES (23015, 'Imprisons a Doomguard Commander.');
INSERT INTO `spelltext_en` VALUES (23025, 'Reduces the cooldown of your Blink spell by 2 sec.');
INSERT INTO `spelltext_en` VALUES (23028, 'Infuses all party and raid members with brilliance, increasing their Intellect by 31 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (23034, 'Place a Battle Standard with 1500 health that increases the maximum health of all party members that stay within 0 yards of the Battle Standard by 15%. Lasts 2 min. The Battle Standard may only be used in PvP Battlegrounds.');
INSERT INTO `spelltext_en` VALUES (23035, 'Place a Battle Standard with 1500 health that increases the maximum health of all party members that stay within 0 yards of the Battle Standard by 15%. Lasts 2 min. The Battle Standard may only be used in PvP Battlegrounds.');
INSERT INTO `spelltext_en` VALUES (23037, 'Increases the damage absorbed by your Mana Shield by 285.');
INSERT INTO `spelltext_en` VALUES (23041, 'Calls forth Anathema.');
INSERT INTO `spelltext_en` VALUES (23042, 'Calls forth Benediction.');
INSERT INTO `spelltext_en` VALUES (23043, 'Gives you a 50% chance to avoid interruption caused by damage while casting Mind Blast.');
INSERT INTO `spelltext_en` VALUES (23044, 'Increases the duration of your Psychic Scream spell by 1 sec.');
INSERT INTO `spelltext_en` VALUES (23046, 'Gives you a 50% chance to avoid interruption caused by damage while casting Searing Pain.');
INSERT INTO `spelltext_en` VALUES (23047, 'Reduces the casting time of your Fear spell by 0.2 sec.');
INSERT INTO `spelltext_en` VALUES (23048, 'Reduces the cooldown of your Gouge ability by 1 sec.');
INSERT INTO `spelltext_en` VALUES (23049, 'Increases the duration of your Sprint ability by 3 sec.');
INSERT INTO `spelltext_en` VALUES (23054, 'Ignites Kroshius, reanimating the fallen infernal.');
INSERT INTO `spelltext_en` VALUES (23061, 'Restart a failing power node during the Ritual of Greater Summoning. Requires 1 Soul Shard.');
INSERT INTO `spelltext_en` VALUES (23063, 'Inflicts 340 to 460 Fire damage in a 5 yard radius.');
INSERT INTO `spelltext_en` VALUES (23064, 'Restores 375 to 625 health and mana to a friendly target and attempts to dispel any polymorph effects from them. Reduced effectiveness against polymorph effects from casters of level 61 and higher.');
INSERT INTO `spelltext_en` VALUES (23065, 'Throw rock to a friendly player.  If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (23097, 'Reflects Fire spells back at their caster for 5 sec. Chance to be resisted when used by players over level 60.');
INSERT INTO `spelltext_en` VALUES (23126, 'Enlarges the entire world for 5 min or until you attack.');
INSERT INTO `spelltext_en` VALUES (23131, 'Reflects Frost spells back at their caster for 5 sec. Chance to be resisted when used by players over level 60.');
INSERT INTO `spelltext_en` VALUES (23132, 'Reflects Shadow spells back at their caster for 5 sec. Chance to be resisted when used by players over level 60.');
INSERT INTO `spelltext_en` VALUES (23133, 'Creates a Battle Chicken that will fight for you for 1 min or until it is destroyed.');
INSERT INTO `spelltext_en` VALUES (23134, 'Creates a mobile bomb that charges the nearest enemy and explodes for 315 to 385 fire damage.');
INSERT INTO `spelltext_en` VALUES (23135, 'Throw the ball to a friendly player.  If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (23136, 'Release the imp J\'eevee in the center of the Pedestal of Immol\'thar in Dire Maul.');
INSERT INTO `spelltext_en` VALUES (23151, 'Forms Benediction when combined with the Eye of Shadow and the Eye of Divinity.');
INSERT INTO `spelltext_en` VALUES (23152, 'Summon a Xorothian Dreadsteed within an empowered Circle of Dark Summoning.');
INSERT INTO `spelltext_en` VALUES (23157, 'Reduces the mana cost of your Arcane Shot by 15.');
INSERT INTO `spelltext_en` VALUES (23158, 'Reduces the cooldown of your Concussive Shot by 1 sec.');
INSERT INTO `spelltext_en` VALUES (23172, 'Increases the block value of your shield by 20.');
INSERT INTO `spelltext_en` VALUES (23179, 'Infuses imbiber with a taint of shadow, making <him/her> friendly to the denizens of Jaedenar. Lasts 20 minutes.');
INSERT INTO `spelltext_en` VALUES (23180, 'Release the imp near the Scholomance\'s alchemy lab.');
INSERT INTO `spelltext_en` VALUES (23181, 'Increases the block value of your shield by 48.');
INSERT INTO `spelltext_en` VALUES (23192, 'Forms Rhok\'delar, Longbow of the Ancient Keepers, when combined with Enchanted Black Dragon Sinew.');
INSERT INTO `spelltext_en` VALUES (23203, 'Increases the block value of your shield by 30.');
INSERT INTO `spelltext_en` VALUES (23204, 'Plant the Divination Scryer in the heart of the Great Ossuary\'s basement.');
INSERT INTO `spelltext_en` VALUES (23208, 'Reveal the spirits that haunt the ruins of Terrordale.');
INSERT INTO `spelltext_en` VALUES (23210, 'Restores 16 health per 5 sec.');
INSERT INTO `spelltext_en` VALUES (23212, 'Restores 20 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (23213, 'Increases spell power by 57.');
INSERT INTO `spelltext_en` VALUES (23217, 'Slightly increases your stealth detection.');
INSERT INTO `spelltext_en` VALUES (23218, 'Increases your movement speed by 15% while in Bear Form, Cat Form, or Travel Form. Only active outdoors.');
INSERT INTO `spelltext_en` VALUES (23219, 'Summons and dismisses a rideable Swift Mistsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23221, 'Summons and dismisses a rideable Swift Frostsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23222, 'Summons and dismisses a Swift Yellow Mechanostrider.  This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23223, 'Summons and dismisses a Swift White Mechanostrider.  This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23225, 'Summons and dismisses a Swift Green Mechanostrider.  This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23227, 'Summons and dismisses a rideable Swift Palomino. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23228, 'Summons and dismisses a rideable Swift White Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23229, 'Summons and dismisses a rideable Swift Brown Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23231, 'Combines the Top and Bottom Half of Advanced Armorsmithing: Volume I.');
INSERT INTO `spelltext_en` VALUES (23232, 'Combines the Top and Bottom Half of Advanced Armorsmithing: Volume II.');
INSERT INTO `spelltext_en` VALUES (23233, 'Combines the Top and Bottom Half of Advanced Armorsmithing: Volume III.');
INSERT INTO `spelltext_en` VALUES (23238, 'Summons and dismisses a rideable Swift Brown Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23239, 'Summons and dismisses a rideable Swift Gray Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23240, 'Summons and dismisses a rideable Swift White Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23241, 'Summons and dismisses a rideable Swift Blue Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23242, 'Summons and dismisses a rideable Swift Olive Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23243, 'Summons and dismisses a rideable Swift Orange Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23246, 'Summons and dismisses a rideable Purple Skeletal Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23247, 'Summons and dismisses a rideable Great White Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23248, 'Summons and dismisses a rideable Great Gray Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23249, 'Summons and dismisses a rideable Great Brown Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23250, 'Summons and dismisses a rideable Swift Brown Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23251, 'Summons and dismisses a rideable Swift Timber Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23252, 'Summons and dismisses a rideable Swift Gray Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23254, 'Reclaim the lost soul of death knight\'s charger, judging it redeemed.');
INSERT INTO `spelltext_en` VALUES (23264, 'Increases spell power by 56.');
INSERT INTO `spelltext_en` VALUES (23266, 'When struck in combat inflicts 13 Fire damage to the attacker.');
INSERT INTO `spelltext_en` VALUES (23267, 'Blasts a target for 40 to 56 Fire damage.');
INSERT INTO `spelltext_en` VALUES (23271, 'Increases spell power by 175 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (23300, 'Increases the Holy damage of your Judgements by 20.');
INSERT INTO `spelltext_en` VALUES (23301, 'Target and impale the corpse of any of the vrykul in the greater Jotunheim region. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (23302, 'Reduces the cooldown of your Hammer of Justice by 10 sec.');
INSERT INTO `spelltext_en` VALUES (23338, 'Summons and dismisses a rideable Swift Stormsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23359, 'Zap a Feralas giant into a more manageable form.');
INSERT INTO `spelltext_en` VALUES (23429, 'Right Click to summon and dismiss your Snapjaw.');
INSERT INTO `spelltext_en` VALUES (23434, 'Improves your chance to get a critical strike with spells by 50%.');
INSERT INTO `spelltext_en` VALUES (23442, 'Rips the dimensional walls asunder and transports you to Everlook in Winterspring.  There are technical problems that sometimes occur, but that\'s what Goblin Engineering is all about!');
INSERT INTO `spelltext_en` VALUES (23453, 'Safely transport yourself to Gadgetzan in Tanaris!  Emphasis on Safe!  Yup, nothing bad could ever happen while using this device!');
INSERT INTO `spelltext_en` VALUES (23454, 'Stuns target for 1 sec.');
INSERT INTO `spelltext_en` VALUES (23468, 'Instantly restores 110 life.');
INSERT INTO `spelltext_en` VALUES (23469, 'Instantly restores 120 life.');
INSERT INTO `spelltext_en` VALUES (23470, 'Instantly restores 275 life.');
INSERT INTO `spelltext_en` VALUES (23471, 'Instantly restores 300 life.');
INSERT INTO `spelltext_en` VALUES (23472, 'Instantly restores 550 life.');
INSERT INTO `spelltext_en` VALUES (23473, 'Instantly restores 600 life.');
INSERT INTO `spelltext_en` VALUES (23474, 'Instantly restores 880 life.');
INSERT INTO `spelltext_en` VALUES (23475, 'Instantly restores 960 life.');
INSERT INTO `spelltext_en` VALUES (23476, 'Instantly restores 1320 life.');
INSERT INTO `spelltext_en` VALUES (23477, 'Instantly restores 1440 life.');
INSERT INTO `spelltext_en` VALUES (23506, 'Absorbs 750 to 1250 damage. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (23509, 'Summons and dismisses a rideable Frostwolf Howler. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23510, 'Summons and dismisses a rideable Stormpike Battle Charger. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (23514, 'Place near the well at the center of Aerie Peak. Show those filthy dwarven dogs your resolve! Then run away...');
INSERT INTO `spelltext_en` VALUES (23515, 'Increases the block value of your shield by 27.');
INSERT INTO `spelltext_en` VALUES (23516, 'Increases the block value of your shield by 54.');
INSERT INTO `spelltext_en` VALUES (23538, 'Place a Battle Standard with 1500 health that increases the maximum damage of all party members that stay within 0 yards of the Battle Standard by 10%. Lasts 2 min. May only be used in Alterac Valley.');
INSERT INTO `spelltext_en` VALUES (23539, 'Place a Battle Standard with 1500 health that increases the damage of all party members that stay within 0 yards of the Battle Standard by 10%. Lasts 2 min. May only be used in Alterac Valley.');
INSERT INTO `spelltext_en` VALUES (23540, 'Restores 2148 health and 4410 mana over 30 sec. Must remain seated while eating. Usable only inside Warsong Gulch.');
INSERT INTO `spelltext_en` VALUES (23541, 'Restores 1608 health and 3306 mana over 30 sec. Must remain seated while eating. Usable only inside Warsong Gulch.');
INSERT INTO `spelltext_en` VALUES (23542, 'Restores 1074 health and 2202 mana over 30 sec. Must remain seated while eating. Usable only inside Warsong Gulch.');
INSERT INTO `spelltext_en` VALUES (23545, 'Decreases the threat generated by your spells by 15%.');
INSERT INTO `spelltext_en` VALUES (23548, '% chance to parry the next attack after a block.');
INSERT INTO `spelltext_en` VALUES (23549, 'Increases the radius of Arcane Explosion, Flamestrike, and Blizzard by 25%.');
INSERT INTO `spelltext_en` VALUES (23550, 'Increases your chance of a critical hit with Prayer of Healing by 25%.');
INSERT INTO `spelltext_en` VALUES (23551, 'When you cast a Healing Wave or Lesser Healing Wave, there is a 25% chance the target also receives a free Lightning Shield that causes 50 Nature damage to attacker on hit.');
INSERT INTO `spelltext_en` VALUES (23553, 'Mana cost of Shadow spells reduced by 15%.');
INSERT INTO `spelltext_en` VALUES (23554, 'Health or Mana gained from Drain Life and Drain Mana increased by 15%.');
INSERT INTO `spelltext_en` VALUES (23555, 'Reduces the threat generated by your Destruction spells by 20%.');
INSERT INTO `spelltext_en` VALUES (23556, 'Reduces the cooldown of your Tranquility spell by 50% and increases the damage done by your Hurricane spell by 15%.');
INSERT INTO `spelltext_en` VALUES (23557, 'Damage dealt by Thorns increased by 4 and duration increased by 50%.');
INSERT INTO `spelltext_en` VALUES (23558, 'Improves the threat reduction of Feint by 25%.');
INSERT INTO `spelltext_en` VALUES (23559, 'Increases the ranged attack power bonus of your Aspect of the Hawk by 20%.');
INSERT INTO `spelltext_en` VALUES (23560, 'Increases the range of your Mend Pet spell by 50% and the effect by 10%. Also reduces the cost by 30%.');
INSERT INTO `spelltext_en` VALUES (23561, 'Increases the threat generated by Sunder Armor and Devastate by 15%.');
INSERT INTO `spelltext_en` VALUES (23562, 'Increases the block value of your shield by 60.');
INSERT INTO `spelltext_en` VALUES (23563, 'Increases the attack power granted by Battle Shout by 30.');
INSERT INTO `spelltext_en` VALUES (23564, 'Increases the chance of triggering a Judgement of Light heal by 10%.');
INSERT INTO `spelltext_en` VALUES (23565, 'Increases the radius of a Paladin\'s auras to 40 yd.');
INSERT INTO `spelltext_en` VALUES (23566, 'Increases the damage of Multi-shot and Volley by 15%.');
INSERT INTO `spelltext_en` VALUES (23567, 'Heals 2000 damage over 8 sec. Usable only inside Warsong Gulch.');
INSERT INTO `spelltext_en` VALUES (23568, 'Heals 1104 damage over 8 sec. Usable only inside Warsong Gulch.');
INSERT INTO `spelltext_en` VALUES (23569, 'Heals 640 damage over 8 sec. Usable only inside Warsong Gulch.');
INSERT INTO `spelltext_en` VALUES (23570, 'Increases your critical strike rating by 42.');
INSERT INTO `spelltext_en` VALUES (23572, 'After casting your Healing Wave or Lesser Healing Wave spell, gives you a 25% chance to gain Mana equal to 35% of the base cost of the spell.');
INSERT INTO `spelltext_en` VALUES (23573, 'Your Healing Wave will now jump to additional nearby targets. Each jump reduces the effectiveness of the heal by 80%, and the spell will jump to up to two additional targets.');
INSERT INTO `spelltext_en` VALUES (23578, 'You have a chance whenever you deal ranged damage to apply an Expose Weakness effect to the target. Expose Weakness increases the ranged attack power of all attackers against that target by 450 for 7 sec.');
INSERT INTO `spelltext_en` VALUES (23581, 'Gives the Rogue a chance to inflict 283 to 317 damage on the target and heal the Rogue for 50 health every 1 sec. for 6 sec. on a melee hit.');
INSERT INTO `spelltext_en` VALUES (23582, 'Heals the rogue for 500 when Vanish is performed.');
INSERT INTO `spelltext_en` VALUES (23591, 'Inflicts 60 to 66 additional Holy damage on the target of a Paladin\'s Judgement.');
INSERT INTO `spelltext_en` VALUES (23592, 'Blasts a target for 45 Nature damage.');
INSERT INTO `spelltext_en` VALUES (23593, 'Increases spell power by 49.');
INSERT INTO `spelltext_en` VALUES (23595, 'Removes one Bleed effect. Will not work on bleeds cast by enemies over level 60.');
INSERT INTO `spelltext_en` VALUES (23604, 'Reduce your threat to the current target making them less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (23605, 'Spell damage taken by target increased by 15% for 5 sec. Chance to fail for targets above level 60.');
INSERT INTO `spelltext_en` VALUES (23645, 'Cures the user of Brood Affliction: Bronze.');
INSERT INTO `spelltext_en` VALUES (23677, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (23678, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (23679, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (23680, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (23686, 'Chance to strike your melee target with lightning for 200 to 300 Nature damage.');
INSERT INTO `spelltext_en` VALUES (23688, '2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec.');
INSERT INTO `spelltext_en` VALUES (23689, 'Sometimes heals bearer of 120 to 180 damage when damaging an enemy in melee.');
INSERT INTO `spelltext_en` VALUES (23692, 'Restores 4410 health and 4410 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (23696, 'Heals 2000 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (23698, 'Restores 4410 mana over 30 sec. Must remain seated while drinking. Also increases your Spirit by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (23701, 'Gives the wearer a 10% chance of being able to resurrect with 20% health and mana.');
INSERT INTO `spelltext_en` VALUES (23719, 'Increases Strength by 300 for 8 sec.');
INSERT INTO `spelltext_en` VALUES (23720, 'Empowers your pet, increasing its spell power by 200, its attack power by 325, and its armor by 1600 for 30 sec. This spell will only affect an Imp, Succubus, Voidwalker, Felhunter, or Felguard.');
INSERT INTO `spelltext_en` VALUES (23721, 'Infuses you with Arcane energy, causing your next Arcane Shot fired within 10 sec to detonate at the target. The Arcane Detonation will deal 185 to 215 damage to enemies near the target.');
INSERT INTO `spelltext_en` VALUES (23723, 'Quickens the mind, increasing the Mage\'s haste rating by 330 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (23724, 'Decreases the mana cost of all Druid shapeshifting forms by 550 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (23725, 'Increases your maximum health by 1500 for 20 sec. After the effects wear off, you will lose the extra maximum health.');
INSERT INTO `spelltext_en` VALUES (23726, 'Increases the damage dealt by Instant Poison by 65 and the periodic damage dealt by Deadly Poison by 22 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (23727, 'Increases your hit rating by 8.');
INSERT INTO `spelltext_en` VALUES (23728, 'Increases spell power by 84.');
INSERT INTO `spelltext_en` VALUES (23729, 'Increases your hit rating by 16.');
INSERT INTO `spelltext_en` VALUES (23730, 'Increases spell power by 64.');
INSERT INTO `spelltext_en` VALUES (23731, 'Increases the block value of your shield by 39.');
INSERT INTO `spelltext_en` VALUES (23732, 'Increases spell power by 56.');
INSERT INTO `spelltext_en` VALUES (23733, 'Energizes a Paladin with light, increasing melee haste rating by 250 and spell haste rating by 330 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (23734, 'Increases spell power by 250, and increases mana cost of spells by 20% for 20 sec.');
INSERT INTO `spelltext_en` VALUES (23780, 'Increases armor by 500, and heals 35 damage every time you take ranged or melee damage for 20 sec.');
INSERT INTO `spelltext_en` VALUES (23786, 'Target is cured of poisons up to level 60.');
INSERT INTO `spelltext_en` VALUES (23787, 'Creates a Vial of Powerful Anti-Venom.');
INSERT INTO `spelltext_en` VALUES (23799, 'Permanently enchant a melee weapon to increase Strength by 15.');
INSERT INTO `spelltext_en` VALUES (23800, 'Permanently enchant a melee weapon to increase Agility by 15.');
INSERT INTO `spelltext_en` VALUES (23801, 'Permanently enchant bracers to restore 5 mana every 5 seconds.');
INSERT INTO `spelltext_en` VALUES (23802, 'Permanently enchant bracers to increase spell power by 15.');
INSERT INTO `spelltext_en` VALUES (23803, 'Permanently enchant a melee weapon to increase Spirit by 20.');
INSERT INTO `spelltext_en` VALUES (23804, 'Permanently enchant a melee weapon to increase Intellect by 22.');
INSERT INTO `spelltext_en` VALUES (23811, 'Right Click to summon and dismiss your Jubling.');
INSERT INTO `spelltext_en` VALUES (23851, 'Hatch a Jubling from the Egg.  It will take a while before the egg is ready to hatch.');
INSERT INTO `spelltext_en` VALUES (23863, '2% chance on melee attack of restoring 30 energy.');
INSERT INTO `spelltext_en` VALUES (23929, 'Increases spell power by 71.');
INSERT INTO `spelltext_en` VALUES (23930, 'Increases attack power by 81 when fighting Undead. It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.');
INSERT INTO `spelltext_en` VALUES (23990, 'Run speed increased slightly.');
INSERT INTO `spelltext_en` VALUES (23991, 'Absorbs 495 to 605 physical damage. Lasts 15 sec.');
INSERT INTO `spelltext_en` VALUES (24005, 'Restores 2% of your health per second for 25 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (24006, 'Conjures 4 food from the harvest.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (24090, 'Minor increase to running and swimming speed.');
INSERT INTO `spelltext_en` VALUES (24149, 'Permanently adds 10 Stamina, 10 defense rating, and 30 shield block value to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24160, 'Permanently adds 10 Stamina, 10 defense rating, and 12 spell power to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24161, 'Permanently adds 28 attack power and 12 dodge rating to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24162, 'Permanently adds 24 attack power, 10 Stamina, and 10 hit rating to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24163, 'Permanently adds 15 Intellect and 13 spell power to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24164, 'Permanently adds 18 spell power and 8 hit rating to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24165, 'Permanently adds 10 Stamina and 18 spell power to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24167, 'Permanently adds 10 Stamina, 13 spell power and 5 mana every 5 sec to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24168, 'Permanently adds 10 Stamina, 10 Intellect, and 12 spell power to a leg or head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (24188, 'Increases the duration of Hammer of Justice by 0.5 sec.');
INSERT INTO `spelltext_en` VALUES (24191, 'Increases the amount of damage absorbed by Power Word: Shield by 35.');
INSERT INTO `spelltext_en` VALUES (24194, 'Offer a tribute at Uther Lightbringer\'s tomb in Western Plaguelands.');
INSERT INTO `spelltext_en` VALUES (24195, 'Offer a tribute at Grom Hellscream\'s monument in Ashenvale.');
INSERT INTO `spelltext_en` VALUES (24196, 'Increases spell power by 47.');
INSERT INTO `spelltext_en` VALUES (24197, 'Increases spell power against Undead by 48.');
INSERT INTO `spelltext_en` VALUES (24198, 'Increases spell power against Undead by 48. It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.');
INSERT INTO `spelltext_en` VALUES (24226, 'Increase your reputation permanently with the Zandalar Tribe.');
INSERT INTO `spelltext_en` VALUES (24242, 'Summons and dismisses Bloodlord Mandokir\'s raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (24243, 'Increases spell power by 840.');
INSERT INTO `spelltext_en` VALUES (24245, 'Combine with 5 Channeler\'s Heads into a Gurubashi Head Collection.');
INSERT INTO `spelltext_en` VALUES (24251, 'Slices the enemy for 72 to 96 Nature damage.');
INSERT INTO `spelltext_en` VALUES (24252, 'Summons and dismisses High Priest Thekal\'s tiger. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (24254, 'Blasts the enemy with poison for 63 to 93 Nature damage.');
INSERT INTO `spelltext_en` VALUES (24256, 'Grants a small chance when ranged or melee damage is dealt to infuse the wielder with a blessing from the Primal Gods. Ranged and melee attack power increased by 300 for 12 seconds.');
INSERT INTO `spelltext_en` VALUES (24257, 'Wounds the target for 200 to 220 damage.');
INSERT INTO `spelltext_en` VALUES (24264, 'Extinguishes the Brazier of Madness.');
INSERT INTO `spelltext_en` VALUES (24268, 'Restores 60 mana every 5 sec for 30 sec.');
INSERT INTO `spelltext_en` VALUES (24279, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24280, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24281, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24282, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24284, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24285, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24288, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24289, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24290, 'Combines with Gri\'lek\'s Blood, Renataki\'s Tooth, Wushoolay\'s Mane, and Hazza\'rah\'s Dream Thread to form a powerful charm.');
INSERT INTO `spelltext_en` VALUES (24291, 'Increases attack power by 48 when fighting Dragonkin.');
INSERT INTO `spelltext_en` VALUES (24292, 'Increases attack power by 117 when fighting Dragonkin.');
INSERT INTO `spelltext_en` VALUES (24301, 'Fishing skill increased by 40.');
INSERT INTO `spelltext_en` VALUES (24302, 'Replaces the fishing line on your fishing pole with a high test eternium line, increasing Fishing skill by 5.');
INSERT INTO `spelltext_en` VALUES (24325, 'Load with 5 Zulian Mudskunks, and then cast from Pagle\'s Pointe in Zul\'Gurub.');
INSERT INTO `spelltext_en` VALUES (24346, 'Increases your Mojo.');
INSERT INTO `spelltext_en` VALUES (24347, 'Turns you into a fish, allowing you to breath underwater and increasing your swim speed.');
INSERT INTO `spelltext_en` VALUES (24352, 'Increases your attack power by 150 and your hit rating by 20. Effect lasts for 20 sec.');
INSERT INTO `spelltext_en` VALUES (24354, 'Increases spell power by 101 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (24355, 'Restores 2% of your mana per second for 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (24360, 'Puts the imbiber in a dreamless sleep for 12 sec. During that time the imbiber heals 2100 health and 2100 mana.');
INSERT INTO `spelltext_en` VALUES (24361, 'Regenerate 20 health every 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (24363, 'Regenerate 15 mana per 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (24364, 'Makes you immune to Stun and Movement Impairing effects for the next 5 sec. Also removes existing Stun and Movement Impairing effects.');
INSERT INTO `spelltext_en` VALUES (24377, 'Destroy at the Altar of Zanza to increase your reputation with the Zandalar Tribe.');
INSERT INTO `spelltext_en` VALUES (24382, 'Increases the player\'s Spirit by 25 and Stamina by 25 for 2 hrs. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (24383, 'Increases the player\'s run speed by 20% for 2 hrs. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (24384, 'Restores 4320 health and 4410 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (24388, 'Wounds the target for 200 to 300 damage and lowers Intellect of target by 25 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (24389, 'Restores 1 to 500 mana and increases the spell power of your next Fire spell by 100. Effect lasts for 1 min.');
INSERT INTO `spelltext_en` VALUES (24392, 'Your Frostbolt spells have a 6% chance to restore 50 mana when cast.');
INSERT INTO `spelltext_en` VALUES (24409, 'Restores 1074 health and 2202 mana over 30 sec. Must remain seated while eating. Usable only inside Arathi Basin.');
INSERT INTO `spelltext_en` VALUES (24410, 'Restores 1608 health and 3306 mana over 30 sec. Must remain seated while eating. Usable only inside Arathi Basin.');
INSERT INTO `spelltext_en` VALUES (24411, 'Restores 2148 health and 4410 mana over 30 sec. Must remain seated while eating. Usable only inside Arathi Basin.');
INSERT INTO `spelltext_en` VALUES (24412, 'Heals 640 damage over 8 sec. Usable only inside Arathi Basin.');
INSERT INTO `spelltext_en` VALUES (24413, 'Heals 1104 damage over 8 sec. Usable only inside Arathi Basin.');
INSERT INTO `spelltext_en` VALUES (24414, 'Heals 2000 damage over 8 sec. Usable only inside Arathi Basin.');
INSERT INTO `spelltext_en` VALUES (24417, 'Increases the chance that the player will reflect hostile spells cast on them by 3% for 2 hrs. Will automatically reflect the first offensive spell cast against the user. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (24420, 'Permanently adds to a shoulder slot item increased spell power by 18. Wearer must be level 55 or higher.');
INSERT INTO `spelltext_en` VALUES (24421, 'Permanently adds to a shoulder slot item increased spell power by 18. Wearer must be level 55 or higher.');
INSERT INTO `spelltext_en` VALUES (24422, 'Permanently adds 30 attack power to a shoulder slot item. Wearer must be level 55 or higher.');
INSERT INTO `spelltext_en` VALUES (24427, 'Restores 9 health every 5 sec and increases your Strength by 75. Lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (24428, 'Reduces the cost of your Hamstring ability by 2 rage points.');
INSERT INTO `spelltext_en` VALUES (24429, 'Reduces the cooldown of Counterspell by 2 sec.');
INSERT INTO `spelltext_en` VALUES (24430, 'Increases the radius of Rain of Fire and Hellfire by 1 yard.');
INSERT INTO `spelltext_en` VALUES (24431, 'Decrease the rage cost of Whirlwind by 3.');
INSERT INTO `spelltext_en` VALUES (24432, 'Decreases the cooldown of Feign Death by 2 sec.');
INSERT INTO `spelltext_en` VALUES (24433, 'Increases spell critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (24434, 'Decreases the cooldown of Kick by 0.5 sec.');
INSERT INTO `spelltext_en` VALUES (24436, 'Decreases the mana cost of your Healing Stream and Mana Spring totems by 20.');
INSERT INTO `spelltext_en` VALUES (24456, 'Decreases the cooldown of Intimidating Shout by 15 sec.');
INSERT INTO `spelltext_en` VALUES (24457, 'Reduces the casting time of your Holy Light spell by 0.1 sec.');
INSERT INTO `spelltext_en` VALUES (24460, 'Increases the duration of all Blessings by 10%.');
INSERT INTO `spelltext_en` VALUES (24461, 'Improves the duration of your Frost Shock spell by 1 sec.');
INSERT INTO `spelltext_en` VALUES (24462, 'Increase the range of your Lightning Bolt spell by 5 yds.');
INSERT INTO `spelltext_en` VALUES (24465, 'Decreases the cooldown of Concussive Shot by 1 sec.');
INSERT INTO `spelltext_en` VALUES (24467, 'Increases the duration of Serpent Sting by 3 sec.');
INSERT INTO `spelltext_en` VALUES (24469, 'Decreases the cooldown of Blind by 5 sec.');
INSERT INTO `spelltext_en` VALUES (24471, 'Decrease the energy cost of Eviscerate and Rupture by 5.');
INSERT INTO `spelltext_en` VALUES (24479, 'Increases the duration of Faerie Fire by 5 sec.');
INSERT INTO `spelltext_en` VALUES (24480, 'Increases the critical hit chance of your Starfire spell 3%.');
INSERT INTO `spelltext_en` VALUES (24482, 'Increase the range of your Smite and Holy Fire spells by 5 yds.');
INSERT INTO `spelltext_en` VALUES (24483, 'Reduces the casting time of your Mind Control spell by 0.5 sec.');
INSERT INTO `spelltext_en` VALUES (24486, 'Increases the damage of Corruption by 2%.');
INSERT INTO `spelltext_en` VALUES (24487, 'Decreases the cooldown of Death Coil by 15%.');
INSERT INTO `spelltext_en` VALUES (24489, 'Decreases the mana cost of Arcane Intellect and Arcane Brilliance by 5%.');
INSERT INTO `spelltext_en` VALUES (24491, 'Reduces the casting time of your Flamestrike spell by 0.5 sec.');
INSERT INTO `spelltext_en` VALUES (24498, 'Increases your spell critical strike rating by 140 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (24499, 'Increases the damage dealt by your Lightning Shield spell by 305 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (24531, 'Instantly clears the cooldowns of Aimed Shot, Multishot, and Volley.');
INSERT INTO `spelltext_en` VALUES (24532, 'Instantly increases your energy by [60-4*max(0, min(15, PL-60))].');
INSERT INTO `spelltext_en` VALUES (24542, 'Grants 70 haste rating, and reduces the mana cost of Rejuvenation, Healing Touch, Regrowth, and Tranquility by 5% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (24543, 'Increases your critical strike rating by 140 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (24544, 'Increases arcane spell power by 200 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (24546, 'Grants 70 haste rating and reduces the mana cost of your healing spells by 5% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (24571, 'Instantly increases your rage by [(300-10*max(0, PL-60))/10].');
INSERT INTO `spelltext_en` VALUES (24574, 'Increases your armor by 2000 and defense rating by 50 for 20 sec. Every time you take melee or ranged damage, this bonus is reduced by 200 armor and 5 defense rating.');
INSERT INTO `spelltext_en` VALUES (24585, 'Steals 48 to 54 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (24591, 'Skinning +10.');
INSERT INTO `spelltext_en` VALUES (24595, 'Increases spell power by 24.');
INSERT INTO `spelltext_en` VALUES (24610, 'Increases spell hit rating by 80 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (24658, 'Increases your spell power by 204 for 20 sec. Every time you cast a spell, the bonus is reduced by 17 spell power.');
INSERT INTO `spelltext_en` VALUES (24661, 'Increases your melee and ranged damage by 40 for 20 sec. Every time you hit a target, this bonus is reduced by 2.');
INSERT INTO `spelltext_en` VALUES (24696, 'Right Click to summon and dismiss Murky the baby murloc.');
INSERT INTO `spelltext_en` VALUES (24706, 'Toss a stink bomb on Southshore. P-U!');
INSERT INTO `spelltext_en` VALUES (24707, 'Restores 3% of your health and mana per second for 25 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (24717, 'Puts a pirate costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24718, 'Puts a ninja costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24719, 'Puts a leper gnome costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24720, 'Puts a random costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24724, 'Puts a Skeleton costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24726, 'Target a friendly player to deputize them as an Agent of Nozdormu. As an Agent of Nozdormu, only you and your deputies may take the Silithid Carapace Fragments from the corpses of the silithid. Keep your badge in your pack at all times.');
INSERT INTO `spelltext_en` VALUES (24733, 'Puts a Bat costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24737, 'Puts a ghost costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24741, 'Puts a Wisp costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (24746, 'Bestows the wearer with the evil aura of a Twilight\'s Hammer cultist.');
INSERT INTO `spelltext_en` VALUES (24748, 'When worn with the Twilight Trappings Set, allows access to a Wind Stone in Silithus.');
INSERT INTO `spelltext_en` VALUES (24782, 'When worn with the Twilight Trappings Set and the Medallion of Station, allows access to a Greater Wind Stone.');
INSERT INTO `spelltext_en` VALUES (24800, 'Restores 2148 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Strength for 15 min.');
INSERT INTO `spelltext_en` VALUES (24815, 'Required to draw ancient glyphs into the sand at the Bones of Grakkarond.');
INSERT INTO `spelltext_en` VALUES (24833, 'Shatters the Holy Mightstone, granting 300 attack power and increasing holy spell power by 400 when fighting undead. Lasts 10 min.');
INSERT INTO `spelltext_en` VALUES (24854, 'Summons a Mana Spring Totem with 5 health at the feet of the caster for 24 sec that restores 27 mana every 2 seconds to group members within 0 yards.');
INSERT INTO `spelltext_en` VALUES (24865, 'Increases your critical strike rating and spell critical strike rating by 42. Lasts 25 sec.');
INSERT INTO `spelltext_en` VALUES (24869, 'Restores 2% of your health per second for 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (24874, 'Combine with 1 Rugged Leather and 1 Firebloom to create a Crest of Beckoning: Fire.');
INSERT INTO `spelltext_en` VALUES (24885, 'Combine with 1 Rugged Leather and 1 Elemental Air to create a Crest of Beckoning: Thunder.');
INSERT INTO `spelltext_en` VALUES (24887, 'Combine with 1 Rugged Leather and 1 Dense Stone to create a Crest of Beckoning: Earth.');
INSERT INTO `spelltext_en` VALUES (24888, 'Combine with 1 Rugged Leather and 1 Enchanted Water to create a Crest of Beckoning: Water.');
INSERT INTO `spelltext_en` VALUES (24889, 'Combine with 1 Dark Rune and 5 Firebloom to create a Signet of Beckoning: Fire.');
INSERT INTO `spelltext_en` VALUES (24890, 'Combine with 1 Dark Rune and 5 Elemental Air to create a Signet of Beckoning: Thunder.');
INSERT INTO `spelltext_en` VALUES (24891, 'Combine with 1 Dark Rune and 5 Dense Stones to create a Signet of Beckoning: Stone.');
INSERT INTO `spelltext_en` VALUES (24892, 'Combine with 1 Dark Rune and 5 Enchanted Waters to create a Signet of Beckoning:Water.');
INSERT INTO `spelltext_en` VALUES (24895, 'Combine with 1 Truesilver Rod and 20 Firebloom to create a Scepter of Beckoning: Fire.');
INSERT INTO `spelltext_en` VALUES (24896, 'Combine with 1 Truesilver Rod and 20 Elemental Air to create a Scepter of Beckoning: Thunder.');
INSERT INTO `spelltext_en` VALUES (24897, 'Combine with 1 Truesilver Rod and 20 Dense Stones to create a Scepter of Beckoning: Stone.');
INSERT INTO `spelltext_en` VALUES (24898, 'Combine with 1 Truesilver Rod and 20 Enchanted Water to create a Scepter of Beckoning: Water.');
INSERT INTO `spelltext_en` VALUES (24930, 'Enjoy a tasty Hallow\'s End treat! Better eat it quick before they go bad...');
INSERT INTO `spelltext_en` VALUES (24973, 'Clean up a stink bomb found in Southshore.');
INSERT INTO `spelltext_en` VALUES (24988, 'Right Click to summon and dismiss Lurky the baby murloc.');
INSERT INTO `spelltext_en` VALUES (24993, 'Blasts the enemy with acid for 87 to 105 Nature damage.');
INSERT INTO `spelltext_en` VALUES (24998, 'Increases spell power by 186 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (25036, 'Increases the block value of your shield by 24.');
INSERT INTO `spelltext_en` VALUES (25037, 'Increases Stamina by 5 for 15 min and gets you drunk to boot!');
INSERT INTO `spelltext_en` VALUES (25072, 'Permanently enchant gloves to increase threat from all attacks and spells by 2%.');
INSERT INTO `spelltext_en` VALUES (25073, 'Permanently enchant gloves to increase shadow spell power by 20.');
INSERT INTO `spelltext_en` VALUES (25074, 'Permanently enchant gloves to increase Frost spell power by 20.');
INSERT INTO `spelltext_en` VALUES (25078, 'Permanently enchant gloves to increase fire spell power by 20.');
INSERT INTO `spelltext_en` VALUES (25079, 'Permanently enchant gloves to increase spell power by 16.');
INSERT INTO `spelltext_en` VALUES (25080, 'Permanently enchant gloves to increase Agility by 15.');
INSERT INTO `spelltext_en` VALUES (25081, 'Permanently enchant a cloak to increase fire resistance by 15.');
INSERT INTO `spelltext_en` VALUES (25082, 'Permanently enchant a cloak to increase nature resistance by 15.');
INSERT INTO `spelltext_en` VALUES (25083, 'Permanently enchant a cloak to increase stealth.');
INSERT INTO `spelltext_en` VALUES (25084, 'Permanently enchant a cloak to decrease threat from all attacks and spells by 2%.');
INSERT INTO `spelltext_en` VALUES (25086, 'Permanently enchant a cloak to increase dodge rating by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (25112, 'Casts your Summon Voidwalker spell with no mana requirement.');
INSERT INTO `spelltext_en` VALUES (25117, 'While applied to target weapon it increases spell power by 8. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25118, 'While applied to target weapon it restores 4 mana to the caster every 5 seconds. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25119, 'While applied to target weapon it increases spell power by 16. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25120, 'While applied to target weapon it restores 8 mana to the caster every 5 seconds. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25121, 'While applied to target weapon it increases spell power by 24. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25122, 'While applied to target weapon it increases spell power by 36 and increases critical strike rating by 14. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25123, 'While applied to target weapon it restores 12 mana to the caster every 5 seconds and increases spell power by 13. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (25124, 'Creates Minor Wizard Oil.');
INSERT INTO `spelltext_en` VALUES (25125, 'Creates Minor Mana Oil.');
INSERT INTO `spelltext_en` VALUES (25126, 'Creates Lesser Wizard Oil.');
INSERT INTO `spelltext_en` VALUES (25127, 'Creates Lesser Mana Oil.');
INSERT INTO `spelltext_en` VALUES (25128, 'Creates Wizard Oil.');
INSERT INTO `spelltext_en` VALUES (25129, 'Creates Brilliant Wizard Oil.');
INSERT INTO `spelltext_en` VALUES (25130, 'Creates Brilliant Mana Oil.');
INSERT INTO `spelltext_en` VALUES (25146, 'Transmutes a Heart of Fire into three Elemental Fires.');
INSERT INTO `spelltext_en` VALUES (25162, 'Right Click to summon and dismiss your disgusting oozeling. Your oozeling has a disgusting aura about him and will significantly reduce your defenses while he is around.');
INSERT INTO `spelltext_en` VALUES (25179, 'Increases spell power by 62.');
INSERT INTO `spelltext_en` VALUES (25207, 'Gives 10 additional spirit to nearby party members for 30 min.');
INSERT INTO `spelltext_en` VALUES (25211, 'Gives 10 additional strength to nearby party members for 30 min.');
INSERT INTO `spelltext_en` VALUES (25247, 'Allows you to look far into the distance.');
INSERT INTO `spelltext_en` VALUES (25286, 'A strong attack that increases melee damage by 201 and causes a high amount of threat.');
INSERT INTO `spelltext_en` VALUES (25288, 'Instantly counterattack an enemy for [723+AP*0.310] to [883+AP*0.310] damage.  Revenge is only usable after the warrior blocks, dodges or parries an attack.');
INSERT INTO `spelltext_en` VALUES (25289, 'The warrior shouts, increasing attack power of all raid and party members within 0 yards by 232. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (25290, 'Places a Blessing on the friendly target, restoring 33 mana every 5 seconds for 10 min. Players may only have one Blessing on them per Paladin at any one time.');
INSERT INTO `spelltext_en` VALUES (25291, 'Places a Blessing on the friendly target, increasing attack power by 232 for 10 min. Players may only have one Blessing on them per Paladin at any one time.');
INSERT INTO `spelltext_en` VALUES (25292, 'Heals a friendly target for 2034 to 2266.');
INSERT INTO `spelltext_en` VALUES (25294, 'Fires several missiles, hitting 3 targets for an additional 150 damage.');
INSERT INTO `spelltext_en` VALUES (25295, 'Stings the target, causing [RAP*0.2+111*15/3] Nature damage over 15 sec. Only one Sting per Hunter can be active on any one target.');
INSERT INTO `spelltext_en` VALUES (25296, 'The hunter takes on the aspects of a hawk, increasing ranged attack power by 120. Only one Aspect can be active at a time.');
INSERT INTO `spelltext_en` VALUES (25297, 'Heals a friendly target for 1944 to 2294.');
INSERT INTO `spelltext_en` VALUES (25298, 'Causes 693 to 817 Arcane damage to the target.');
INSERT INTO `spelltext_en` VALUES (25299, 'Heals the target for 1110 over 15 sec.');
INSERT INTO `spelltext_en` VALUES (25300, 'Backstab the target, causing 150% weapon damage plus 225 to the target. Must be behind the target. Requires a dagger in the main hand. Awards 1 combo point.');
INSERT INTO `spelltext_en` VALUES (25302, 'Performs a feint, causing no damage but lowering your threat by a large amount, making the enemy less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (25304, 'Launches a bolt of frost at the enemy, causing 515 to 555 Frost damage and slowing movement speed by 40% for 9 sec.');
INSERT INTO `spelltext_en` VALUES (25306, 'Hurls a fiery ball that causes 596 to 760 Fire damage and an additional 76 Fire damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (25307, 'Sends a shadowy bolt at the enemy, causing 482 to 538 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (25309, 'Burns the enemy for 279 Fire damage and then an additional 510 Fire damage over 15 sec.');
INSERT INTO `spelltext_en` VALUES (25311, 'Corrupts the target, causing 822 Shadow damage over 18 sec.');
INSERT INTO `spelltext_en` VALUES (25314, 'A slow casting spell that heals a single target for 1966 to 2194.');
INSERT INTO `spelltext_en` VALUES (25315, 'Heals the target for 970 over 15 sec.');
INSERT INTO `spelltext_en` VALUES (25316, 'A powerful prayer heals the friendly target\'s party members within 0 yards for 997 to 1053.');
INSERT INTO `spelltext_en` VALUES (25345, 'Launches Arcane Missiles at the enemy, causing 230 Arcane damage every 1 sec for 5 sec.');
INSERT INTO `spelltext_en` VALUES (25351, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [24*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (25357, 'Heals a friendly target for 1620 to 1850.');
INSERT INTO `spelltext_en` VALUES (25361, 'Summons a Strength of Earth Totem with 5 health at the feet of the caster. The totem increases the strength and agility of all party and raid members within 0 yards by 77. Lasts 5 min.');
INSERT INTO `spelltext_en` VALUES (25392, 'Power infuses all party and raid members, increasing their Stamina by 79 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (25606, 'Gives 10 additional stamina to nearby party members for 30 min.');
INSERT INTO `spelltext_en` VALUES (25607, 'Increases spell power of all nearby party members by 15 for 30 min.');
INSERT INTO `spelltext_en` VALUES (25608, 'Restores 3 health to all nearby party members every 5 seconds for 30 min.');
INSERT INTO `spelltext_en` VALUES (25660, 'Restores 4320 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 25 Stamina for 15 min.');
INSERT INTO `spelltext_en` VALUES (25669, 'Chance to decapitate the target on a melee swing, causing 452 to 676 damage.');
INSERT INTO `spelltext_en` VALUES (25675, 'Summons and dismisses a reindeer mount.');
INSERT INTO `spelltext_en` VALUES (25677, 'Throw me before I melt!');
INSERT INTO `spelltext_en` VALUES (25688, 'Transforms the appearance of the recipient to resemble Narain Soothfancy.');
INSERT INTO `spelltext_en` VALUES (25690, 'Restores 360 health and 540 mana over 21 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 4 Mana every 5 seconds for 15 min.');
INSERT INTO `spelltext_en` VALUES (25691, 'Restores 800 health and 1200 mana over 21 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 8 Mana every 5 seconds for 15 min.');
INSERT INTO `spelltext_en` VALUES (25692, 'Restores 148 health and 300 mana over 21 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (25693, 'Restores 540 health and 840 mana over 21 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (25719, 'Combine with Draconic For Dummies Chapters 1 - 8 to create Draconic for Dummies: Volume II.');
INSERT INTO `spelltext_en` VALUES (25720, 'Places the Bag of Gold at the designated Drop-Off Point.');
INSERT INTO `spelltext_en` VALUES (25722, 'Increases Stamina by 10 for 15 min and gets you drunk to boot!');
INSERT INTO `spelltext_en` VALUES (25746, 'Absorbs 392 to 478 physical damage. Lasts 15 sec.');
INSERT INTO `spelltext_en` VALUES (25747, 'Absorbs 310 to 378 physical damage. Lasts 15 sec.');
INSERT INTO `spelltext_en` VALUES (25750, 'Absorbs 0 to 302 physical damage. Lasts 15 sec.');
INSERT INTO `spelltext_en` VALUES (25767, 'Gives a chance when your harmful spells land to reduce the magical resistances of your spell targets by 50 for 8 sec.');
INSERT INTO `spelltext_en` VALUES (25783, 'Places Arcanite Buoy at the Swirling Maelstrom in the Bay of Storms. This should coax Maws out of his minnow disguise. Hopefully, you brought some friends!');
INSERT INTO `spelltext_en` VALUES (25793, 'Place the torch in the mouth of High Chief Winterfall\'s cave to summon the demon that is corrupting the Winterfall furbolgs. Bring some friends before planting it...');
INSERT INTO `spelltext_en` VALUES (25804, 'Increases Stamina by 15 for 15 min and gets you drunk to boot!');
INSERT INTO `spelltext_en` VALUES (25822, 'Throw on the ground!');
INSERT INTO `spelltext_en` VALUES (25823, 'Summon a ring of light on a specific location that lasts for 3 min.');
INSERT INTO `spelltext_en` VALUES (25849, 'Right Click to summon and dismiss your Baby Shark  He really requires water.');
INSERT INTO `spelltext_en` VALUES (25851, 'Drink me. I\'m delicious!');
INSERT INTO `spelltext_en` VALUES (25855, 'Fill me at a Festive Keg.');
INSERT INTO `spelltext_en` VALUES (25860, 'Transforms your mount into something more festive.');
INSERT INTO `spelltext_en` VALUES (25891, 'Increases your melee and ranged attack power by 280. Effect lasts for 20 sec.');
INSERT INTO `spelltext_en` VALUES (25892, 'Reduces your threat to enemy targets within 0 yards, making them less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (25901, '+4 Weapon Damage.');
INSERT INTO `spelltext_en` VALUES (25906, 'Gives a chance when your harmful spells land to increase the damage of your spells and effects by 132 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (25953, 'Emits a high frequency sound, forcing a silithid tank to burrow out from its home beneath the Temple of Ahn\'Qiraj. The silithid is obedient to the summoner and can be used as a mount within the Temple of Ahn\'Qiraj. Any hostile action towards the rider forces the tank underground.');
INSERT INTO `spelltext_en` VALUES (25975, 'Increases your spell penetration by 10.');
INSERT INTO `spelltext_en` VALUES (25990, 'Restores 5% of your health and mana per second for 20 sec. Must remain seated while eating. You should also probably like the taste of fruitcake.');
INSERT INTO `spelltext_en` VALUES (26004, 'Wish a friend some Season\'s Greetings!');
INSERT INTO `spelltext_en` VALUES (26008, 'Raise a toast to your friend!');
INSERT INTO `spelltext_en` VALUES (26010, 'Right Click to summon and dismiss your Tranquil Mechanical Yeti.');
INSERT INTO `spelltext_en` VALUES (26030, 'Restores 1790 health over 27 sec.  Must remain seated while eating.  Also increases your Stamina by 10 for 10 min.');
INSERT INTO `spelltext_en` VALUES (26045, 'Right Click to summon and dismiss your Tiny Snowman. Requires a Snowball to summon.');
INSERT INTO `spelltext_en` VALUES (26054, 'Emits a high frequency sound, forcing a silithid tank to burrow out from its home beneath the Temple of Ahn\'Qiraj. The silithid is obedient to the summoner and can be used as a mount within the Temple of Ahn\'Qiraj. Any hostile action towards the rider forces the tank underground.');
INSERT INTO `spelltext_en` VALUES (26055, 'Emits a high frequency sound, forcing a silithid tank to burrow out from its home beneath the Temple of Ahn\'Qiraj. The silithid is obedient to the summoner and can be used as a mount within the Temple of Ahn\'Qiraj. Any hostile action towards the rider forces the tank underground.');
INSERT INTO `spelltext_en` VALUES (26056, 'Emits a high frequency sound, forcing a silithid tank to burrow out from its home beneath the Temple of Ahn\'Qiraj. The silithid is obedient to the summoner and can be used as a mount within the Temple of Ahn\'Qiraj. Any hostile action towards the rider forces the tank underground.');
INSERT INTO `spelltext_en` VALUES (26066, 'Calls forth a Timbermaw Ancestor to fight at your side and heal you.');
INSERT INTO `spelltext_en` VALUES (26067, 'Summons a mechanical Greench that will protect you for 10 min.');
INSERT INTO `spelltext_en` VALUES (26074, 'Fills targets with holiday cheer.');
INSERT INTO `spelltext_en` VALUES (26106, 'Reduces the cooldown of Rebirth by 5 minutes.');
INSERT INTO `spelltext_en` VALUES (26107, 'Your finishing moves now refund 30 energy on a Miss, Dodge, Block, or Parry.');
INSERT INTO `spelltext_en` VALUES (26108, 'Disorients the target, causing it to wander aimlessly for up to 3 sec.');
INSERT INTO `spelltext_en` VALUES (26109, 'Decreases the rage cost of all Warrior shouts by 35%.');
INSERT INTO `spelltext_en` VALUES (26110, 'Increase the Slow effect and damage of Thunder Clap by 50%.');
INSERT INTO `spelltext_en` VALUES (26111, '-2 rage cost to Intercept.');
INSERT INTO `spelltext_en` VALUES (26112, 'Reduces the cooldown of your Evasion ability by 1 min.');
INSERT INTO `spelltext_en` VALUES (26113, '15% increased damage to your Eviscerate ability.');
INSERT INTO `spelltext_en` VALUES (26114, '-10 energy cost for your Slice and Dice ability.');
INSERT INTO `spelltext_en` VALUES (26116, '5% increased damage on your Immolate spell.');
INSERT INTO `spelltext_en` VALUES (26117, 'Reduces the mana cost of Shadow Bolt by 15%.');
INSERT INTO `spelltext_en` VALUES (26118, '5% increased damage from your summoned pets\' melee attacks and damage spells.');
INSERT INTO `spelltext_en` VALUES (26119, 'Your Lightning Bolt, Chain Lightning, and Shock spells have a 20% chance to grant 50 nature spell power for 8 sec.');
INSERT INTO `spelltext_en` VALUES (26122, '-0.4 seconds on the casting time of your Chain Heal spell.');
INSERT INTO `spelltext_en` VALUES (26123, 'Increases the chain target damage multiplier of your Chain Lightning spell by 5%.');
INSERT INTO `spelltext_en` VALUES (26127, 'Your Blizzard spell has a 30% chance to be uninterruptible.');
INSERT INTO `spelltext_en` VALUES (26128, 'Grants +40% increased spell hit chance for 20 sec when one of your spells is resisted.');
INSERT INTO `spelltext_en` VALUES (26130, 'Increases the duration of your Judgements by 20%.');
INSERT INTO `spelltext_en` VALUES (26131, '15% increase to the total damage absorbed by Mana Shield.');
INSERT INTO `spelltext_en` VALUES (26135, '20% chance to regain 100 mana when you cast a Judgement.');
INSERT INTO `spelltext_en` VALUES (26142, 'Increases spell power by 53.');
INSERT INTO `spelltext_en` VALUES (26154, 'Increases spell power by 48.');
INSERT INTO `spelltext_en` VALUES (26155, 'Increases spell power by 59.');
INSERT INTO `spelltext_en` VALUES (26158, 'Increases spell power by 60.');
INSERT INTO `spelltext_en` VALUES (26166, 'Increases spell power by 50, and decreases the magical resistances of your spell targets by 100 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (26168, 'Spikes sprout from you causing 25 Nature damage to attackers when hit. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (26169, '20% chance that your heals on others will also heal you 10% of the amount healed.');
INSERT INTO `spelltext_en` VALUES (26171, 'Increases the duration of your Renew spell by 3 sec.');
INSERT INTO `spelltext_en` VALUES (26172, 'Increases the damage of your Shadow Word: Pain spell by 5%.');
INSERT INTO `spelltext_en` VALUES (26173, 'Reduces the cost of your Arcane Shots by 10%.');
INSERT INTO `spelltext_en` VALUES (26174, 'Reduces the cooldown of your Rapid Fire ability by 2 minutes.');
INSERT INTO `spelltext_en` VALUES (26176, 'Increases your pet\'s damage by 3%.');
INSERT INTO `spelltext_en` VALUES (26225, 'Increases spell power by 56.');
INSERT INTO `spelltext_en` VALUES (26227, 'Increases spell power by 68.');
INSERT INTO `spelltext_en` VALUES (26228, 'Increases spell power by 64.');
INSERT INTO `spelltext_en` VALUES (26263, 'Restores 4% of your health and 3% of your mana per second for 25 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (26265, 'Create an Elune Stone. Requires a Solid Stone.');
INSERT INTO `spelltext_en` VALUES (26276, 'Increases spell power by 40 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (26283, 'Increases your spell penetration by 20.');
INSERT INTO `spelltext_en` VALUES (26286, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26291, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26292, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26293, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26294, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26295, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26298, 'Place on the ground to launch firework rockets. Lasts 30 minutes.');
INSERT INTO `spelltext_en` VALUES (26299, 'Place on the ground to launch cluster rockets. Lasts 30 minutes.');
INSERT INTO `spelltext_en` VALUES (26304, 'Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26325, 'Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26327, 'Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26333, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26334, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26335, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26336, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26337, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26338, 'Throw into a firework launcher!');
INSERT INTO `spelltext_en` VALUES (26373, 'Teleports the caster from within Greater Moonlight.');
INSERT INTO `spelltext_en` VALUES (26374, 'Shoots a firework at target.');
INSERT INTO `spelltext_en` VALUES (26389, 'A strangely glowing alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (26391, 'Summons a Vanquished Tentacle to your aid for 30 sec.');
INSERT INTO `spelltext_en` VALUES (26395, 'Increases spell power by 72.');
INSERT INTO `spelltext_en` VALUES (26400, 'Reduces the threat you generate by [70-2*max(0, PL-60)]% for 20 sec.');
INSERT INTO `spelltext_en` VALUES (26415, 'Instantly lightning shocks the target for 239 to 277 Nature damage.');
INSERT INTO `spelltext_en` VALUES (26459, 'Increases spell power by 80.');
INSERT INTO `spelltext_en` VALUES (26460, 'Increases spell power by 76.');
INSERT INTO `spelltext_en` VALUES (26461, 'Increases spell power by 76.');
INSERT INTO `spelltext_en` VALUES (26463, 'Increases your spell resistances by 100 for 1 min. Every time a hostile spell lands on you, this bonus is reduced by 10 resistance.');
INSERT INTO `spelltext_en` VALUES (26467, 'Your magical heals provide the target with a shield that absorbs damage for up to 15% of the amount healed for 30 sec.');
INSERT INTO `spelltext_en` VALUES (26480, 'Gives a chance on melee or ranged attack to apply an armor penetration effect on you for 30 sec, increasing your armor penetration rating by 28. The armor penetration effect can be applied up to 6 times.');
INSERT INTO `spelltext_en` VALUES (26488, 'Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26490, 'Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26517, 'Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26521, 'You\'re in luck! Throw into a cluster launcher!');
INSERT INTO `spelltext_en` VALUES (26529, 'Right Click to summon and dismiss your Winter Reindeer. Requires a Snowball to summon.');
INSERT INTO `spelltext_en` VALUES (26533, 'Right Click to summon and dismiss your Father Winter\'s Helper. Requires a Snowball to summon.');
INSERT INTO `spelltext_en` VALUES (26541, 'Right Click to summon and dismiss your Winter\'s Little Helper. Requires a Snowball to summon.');
INSERT INTO `spelltext_en` VALUES (26551, 'Restores 30 mana every second for 12 sec.');
INSERT INTO `spelltext_en` VALUES (26560, 'Summons Arete\'s Gate. Must be used within 10 yards of Archbishop Landgren\'s corpse.');
INSERT INTO `spelltext_en` VALUES (26562, 'Gives 15 additional stamina to party members within 0 yards. Lasts 30 min.');
INSERT INTO `spelltext_en` VALUES (26571, 'Increased speed by 30% and prevents new snares from landing on the user for 6 sec.');
INSERT INTO `spelltext_en` VALUES (26576, 'Increases attack power by 90 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (26578, 'Increases your stealth slightly.');
INSERT INTO `spelltext_en` VALUES (26581, 'Reduces melee damage taken by 20 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (26587, 'Opens a Scarab Coffer.');
INSERT INTO `spelltext_en` VALUES (26588, 'Opens a Greater Scarab Coffer.');
INSERT INTO `spelltext_en` VALUES (26593, 'Summons the Truesilver Boar to fight for you for 30 seconds.');
INSERT INTO `spelltext_en` VALUES (26596, '+1 Weapon Damage.');
INSERT INTO `spelltext_en` VALUES (26598, '+3 Weapon Damage.');
INSERT INTO `spelltext_en` VALUES (26599, 'Increases spell power by 100 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (26600, 'Restores 60 mana every second for 12 sec.');
INSERT INTO `spelltext_en` VALUES (26605, 'Heals for 12 to 18 damage when you get a critical hit.');
INSERT INTO `spelltext_en` VALUES (26609, 'Reduces melee damage taken by 35 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (26614, 'Every swing poisons your foe for 15 damage every second for 10 sec.');
INSERT INTO `spelltext_en` VALUES (26656, 'Summons and dismisses a rideable Black Qiraji Battle Tank. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (26677, 'Imbiber is cured of up to four poisons up to level 60.');
INSERT INTO `spelltext_en` VALUES (26678, 'Pick a piece of candy from the bag.');
INSERT INTO `spelltext_en` VALUES (26681, 'Give yourself a pleasing scent.');
INSERT INTO `spelltext_en` VALUES (26682, 'Give yourself an alluring scent.');
INSERT INTO `spelltext_en` VALUES (26690, 'Increases spell power by 59.');
INSERT INTO `spelltext_en` VALUES (26693, 'Steals 141 to 163 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (26751, 'Conversion of these item_display into Primal Mooncloth can only be done at a moonwell.');
INSERT INTO `spelltext_en` VALUES (26785, 'Coats a weapon with poison that lasts for 1 hour. Each strike has a % chance of poisoning the enemy which instantly inflicts 134 to 172 Nature damage and dispels 1 Enrage effect, but causes no additional threat.');
INSERT INTO `spelltext_en` VALUES (26789, 'Calls down a meteor, burning all enemies within the area for 400 to 442 total Fire damage.');
INSERT INTO `spelltext_en` VALUES (26792, 'Permanently enchant a Melee Weapon to add 15 to Agility.');
INSERT INTO `spelltext_en` VALUES (26814, 'Increases spell power by 99.');
INSERT INTO `spelltext_en` VALUES (26891, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [161+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (26899, 'Give to a Heartbroken player to cheer them up.');
INSERT INTO `spelltext_en` VALUES (26967, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [40*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (26991, 'Gives the Gift of the Wild to all party and raid members, increasing armor by 340, all attributes by 14 and all resistances by 25 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (27029, 'Teaches you advanced first aid, allowing a maximum of 375 first aid skill.');
INSERT INTO `spelltext_en` VALUES (27030, 'Heals 2800 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (27031, 'Heals 3400 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (27037, 'Increases your effective stealth level.');
INSERT INTO `spelltext_en` VALUES (27038, 'Increases your pet\'s maximum health by 3%.');
INSERT INTO `spelltext_en` VALUES (27043, 'Increases your pet\'s critical strike chance by 2%.');
INSERT INTO `spelltext_en` VALUES (27089, 'Restores 7200 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (27090, 'Conjures 10 skin of glacier water, providing the mage and <his/her> allies with something to drink.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (27094, 'Restores 4320 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (27103, 'Restores 2340 to 2460 mana.');
INSERT INTO `spelltext_en` VALUES (27121, 'Permanently enchant a cloak to decrease threat caused by the wearer by 2%.');
INSERT INTO `spelltext_en` VALUES (27127, 'Infuses all party and raid members with brilliance, increasing their Intellect by 40 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (27146, 'Recombines the left, right and top pieces of Lord Valthalak\'s Amulet into one whole.');
INSERT INTO `spelltext_en` VALUES (27184, 'Summon the spirit of Mor Grayhoof.');
INSERT INTO `spelltext_en` VALUES (27186, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [51*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (27188, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [112+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (27190, 'Summon the spirit of Isalien.');
INSERT INTO `spelltext_en` VALUES (27191, 'Summon the remains of Jarien and Sothos.');
INSERT INTO `spelltext_en` VALUES (27201, 'Summon the spirit of Kormok.');
INSERT INTO `spelltext_en` VALUES (27202, 'Summon the spirit of Lord Valthalak.');
INSERT INTO `spelltext_en` VALUES (27203, 'Summon the spirits of the dead at haunted locations.');
INSERT INTO `spelltext_en` VALUES (27206, 'Increases damage dealt by your pet by 3%.');
INSERT INTO `spelltext_en` VALUES (27225, 'Increases your pet\'s armor by 10%.');
INSERT INTO `spelltext_en` VALUES (27235, 'Instantly restores 2080 life.');
INSERT INTO `spelltext_en` VALUES (27236, 'Instantly restores 2288 life.');
INSERT INTO `spelltext_en` VALUES (27237, 'Instantly restores 2496 life.');
INSERT INTO `spelltext_en` VALUES (27239, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 2900 health and 3300 mana.');
INSERT INTO `spelltext_en` VALUES (27241, 'Right Click to summon and dismiss Gurky the baby murloc.');
INSERT INTO `spelltext_en` VALUES (27360, 'Target Lord Valthalak\'s corpse to instill his spirit from the amulet.');
INSERT INTO `spelltext_en` VALUES (27419, 'Chance on melee attack to heal you for 88 to 132.');
INSERT INTO `spelltext_en` VALUES (27433, 'Places Ectoplasmic Distiller on the ground, allowing Ectoplasm to be gathered.  Requires Goblin Rocket Fuel.');
INSERT INTO `spelltext_en` VALUES (27487, 'Teaches Imp Firebolt (Rank 8).');
INSERT INTO `spelltext_en` VALUES (27489, 'Teaches Imp Fire Shield (Rank 6).');
INSERT INTO `spelltext_en` VALUES (27490, 'Teaches Voidwalker Torment (Rank 7).');
INSERT INTO `spelltext_en` VALUES (27491, 'Teaches Voidwalker Consume Shadows (Rank 7).');
INSERT INTO `spelltext_en` VALUES (27492, 'Teaches Voidwalker Sacrifice (Rank 7).');
INSERT INTO `spelltext_en` VALUES (27493, 'Teaches Succubus Lash of Pain (Rank 7).');
INSERT INTO `spelltext_en` VALUES (27494, 'Teaches Succubus Soothing Kiss (Rank 5).');
INSERT INTO `spelltext_en` VALUES (27495, 'Teaches Felhunter Devour Magic (Rank 5).');
INSERT INTO `spelltext_en` VALUES (27496, 'Teaches Felhunter Devour Magic (Rank 6).');
INSERT INTO `spelltext_en` VALUES (27497, 'Teaches Felhunter Tainted Blood (Rank 5).');
INSERT INTO `spelltext_en` VALUES (27498, 'Chance on melee attack to increase your spell power by 95 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (27500, 'Teaches Voidwalker Suffering (Rank 5).');
INSERT INTO `spelltext_en` VALUES (27517, 'Use this banner at the Arena in Blackrock Depths to challenge Theldren.');
INSERT INTO `spelltext_en` VALUES (27518, 'Spell Damage received is reduced by 10.');
INSERT INTO `spelltext_en` VALUES (27522, 'On successful melee or ranged attack gain 8 mana and if possible drain 8 mana from the target.');
INSERT INTO `spelltext_en` VALUES (27539, 'When struck by a non-periodic damage spell you have a % chance of getting a 6 sec spell shield that absorbs 300 to 500 of that school of damage.');
INSERT INTO `spelltext_en` VALUES (27561, 'When struck by a harmful spell, the caster of that spell has a % chance to be silenced for 3 sec.');
INSERT INTO `spelltext_en` VALUES (27570, 'Right Click to summon and dismiss Kwee Q. Peddlefeet.');
INSERT INTO `spelltext_en` VALUES (27571, 'Shower a nearby target with a cascade of rose petals!');
INSERT INTO `spelltext_en` VALUES (27616, 'Allows wielder to see ghosts of the recently deceased.');
INSERT INTO `spelltext_en` VALUES (27652, 'Increases all magical resistances by 15 for 30 min.');
INSERT INTO `spelltext_en` VALUES (27653, 'Increases dodge rating by 36.');
INSERT INTO `spelltext_en` VALUES (27656, 'Chance to bathe your melee target in flames for 120 to 180 Fire damage.');
INSERT INTO `spelltext_en` VALUES (27661, 'Drops a love dummy on the ground that drives nearby monsters into an envious rage! Lasts for 15 seconds.');
INSERT INTO `spelltext_en` VALUES (27662, 'Shoot a player, and Kwee Q. Peddlefeet will find them! (Only works on players with no current non-combat pets.)');
INSERT INTO `spelltext_en` VALUES (27664, 'Combines a Bundle of Cards, a Sack of Homemade Bread and a Stormwind Pledge Collection into a Stormwind Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27665, 'Combines a Case of Homebrew, an Ironforge Pledge Collection and a Parcel of Cards into an Ironforge Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27666, 'Combines a Box of Woodcrafts, a Darnassus Pledge Collection and a Stack of Cards into a Darnassus Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27667, 'Combines a Darnassus Gift Collection, Ironforge Gift Collection and Stormwind Gift Collection into an Alliance Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27668, 'Combines an Orgrimmar Gift Collection, Thunder Bluff Gift Collection and Undercity Gift Collection into a Horde Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27669, 'Combines a Box of Fresh Pies, an Orgrimmar Pledge Collection and a Package of Cards into an Orgrimmar Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27670, 'Combines a Basket of Flowers, a Satchel of Cards and a Thunder Bluff Pledge Collection into a Thunder Bluff Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27671, 'Combines a Book of Romantic Poetry, a Sheaf of Cards and an Undercity Pledge Collection into an Undercity Gift Collection.');
INSERT INTO `spelltext_en` VALUES (27675, 'Increases your spell power by 100 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (27683, 'Power infuses the target\'s party and raid members, increasing their Shadow resistance by 60 for 20 min.');
INSERT INTO `spelltext_en` VALUES (27700, 'Combines 5 loaves of Homemade Bread into a Sack of Homemade Bread.');
INSERT INTO `spelltext_en` VALUES (27701, 'Combines 5 Stormwind Guard\'s Cards into a Bundle of Cards.');
INSERT INTO `spelltext_en` VALUES (27702, 'Right Click to combine 5 Pledges of Loyalty: Stormwind into a Stormwind Pledge Collection.');
INSERT INTO `spelltext_en` VALUES (27703, 'Combines 5 Ironforge Guard\'s Cards into a Parcel of Cards.');
INSERT INTO `spelltext_en` VALUES (27704, 'Combines 5 Pledges of Loyalty: Ironforge into an Ironforge Pledge Collection.');
INSERT INTO `spelltext_en` VALUES (27706, 'Combines 5 Dwarven Homebrews into a Case of Homebrew.');
INSERT INTO `spelltext_en` VALUES (27708, 'Combines 5 Handmade Woodcrafts into a Box of Woodcrafts.');
INSERT INTO `spelltext_en` VALUES (27709, 'Combines 5 Sentinel\'s Cards into a Stack of Cards.');
INSERT INTO `spelltext_en` VALUES (27710, 'Combines 5 Pledges of Loyalty: Darnassus into a Darnassus Pledge Collection.');
INSERT INTO `spelltext_en` VALUES (27711, 'Combines 5 Grunt\'s Cards into a Package of Cards.');
INSERT INTO `spelltext_en` VALUES (27712, 'Combines 5 Freshly Baked Pies into a Box of Fresh Pies.');
INSERT INTO `spelltext_en` VALUES (27713, 'Combines 5 Pledges of Loyalty: Orgrimmar into an Orgrimmar Pledge Collection.');
INSERT INTO `spelltext_en` VALUES (27714, 'Combines 5 Freshly Picked Flowers into a Basket of Flowers.');
INSERT INTO `spelltext_en` VALUES (27715, 'Combines 5 Bluffwatcher\'s Cards into a Satchel of Cards.');
INSERT INTO `spelltext_en` VALUES (27716, 'Combines 5 Pledges of Loyalty: Thunder Bluff into an Thunder Bluff Pledge Collection.');
INSERT INTO `spelltext_en` VALUES (27717, 'Combines 5 Romantic Poems into a Book of Romantic Poetry.');
INSERT INTO `spelltext_en` VALUES (27718, 'Combines 5 Guardian\'s Moldy Cards into a Sheaf of Cards.');
INSERT INTO `spelltext_en` VALUES (27719, 'Combines 5 Pledges of Loyalty: Undercity into an Undercity Pledge Collection.');
INSERT INTO `spelltext_en` VALUES (27733, 'Increases your chance to resist Silence and Interrupt effects by 10%.');
INSERT INTO `spelltext_en` VALUES (27738, 'Recombines the left, right and top pieces of Lord Valthalak\'s Amulet into one whole.');
INSERT INTO `spelltext_en` VALUES (27739, 'Recombines the left, right and top pieces of Lord Valthalak\'s Amulet into one whole.');
INSERT INTO `spelltext_en` VALUES (27774, 'Chance on spell cast to increase your spell power by 95 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (27778, 'When struck in combat has a chance of shielding the wearer in a protective shield which will absorb 350 damage.');
INSERT INTO `spelltext_en` VALUES (27780, 'When struck in combat has a chance of causing the attacker to flee in terror for 2 seconds.');
INSERT INTO `spelltext_en` VALUES (27781, 'When struck in combat has a chance of returning 300 mana, 10 rage, or 40 energy to the wearer.');
INSERT INTO `spelltext_en` VALUES (27785, 'Your normal ranged attacks have a 4% chance of restoring 200 mana.');
INSERT INTO `spelltext_en` VALUES (27787, 'Chance on melee attack to restore 35 energy.');
INSERT INTO `spelltext_en` VALUES (27797, 'Reduces the cooldown of Reincarnation by 5 minutes.');
INSERT INTO `spelltext_en` VALUES (27837, 'Permanently enchant a two-handed melee weapon to increase Agility by 25.');
INSERT INTO `spelltext_en` VALUES (27846, 'Increases the amount healed by Healing Touch by 100.');
INSERT INTO `spelltext_en` VALUES (27847, 'Reduces the mana cost of your Cleanse spell by 25.');
INSERT INTO `spelltext_en` VALUES (27848, 'Reduces the base mana cost of your Seal spells by 20.');
INSERT INTO `spelltext_en` VALUES (27850, 'Increases the armor from your Devotion Aura by 110.');
INSERT INTO `spelltext_en` VALUES (27851, 'Increases the damage of your Claw and Rake abilites by 20.');
INSERT INTO `spelltext_en` VALUES (27853, 'Increases spell power of Rejuvenation by 50.');
INSERT INTO `spelltext_en` VALUES (27855, 'Increases spell power of Lesser Healing Wave by 80.');
INSERT INTO `spelltext_en` VALUES (27859, 'Increases spell power of Earth Shock, Flame Shock, and Frost Shock by 30.');
INSERT INTO `spelltext_en` VALUES (27867, 'When struck in combat has a chance of freezing the attacker in place for 3 sec.');
INSERT INTO `spelltext_en` VALUES (27869, 'Restores 900 to 1500 mana at the cost of 600 to 1000 life.');
INSERT INTO `spelltext_en` VALUES (27899, 'Permanently enchants bracers to increase Strength by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27905, 'Permanently enchants bracers to increase all Stats by 4. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27906, 'Permanently enchant bracers to increase defense rating by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27907, 'Punishes transgressing apprentices.');
INSERT INTO `spelltext_en` VALUES (27911, 'Permanently enchant bracers to increase spell power by 15. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27913, 'Permanently enchant bracers to restore 8 mana every 5 seconds. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27914, 'Permanently enchant bracers to increase Stamina by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27917, 'Permanently enchant bracers to increase spell power by 15. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27920, 'Permanently enchant a ring to increase physical damage by 2. Only the enchanter\'s rings can be enchanted and enchanting a ring will cause it to become soulbound. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27924, 'Permanently enchant a ring to increase spell power by 12. Only the enchanter\'s rings can be enchanted and enchanting a ring will cause it to become soulbound. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27926, 'Permanently enchant a ring to increase spell power by 12. Only the enchanter\'s rings can be enchanted and enchanting a ring will cause it to become soulbound. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27927, 'Permanently enchant a ring to increase all stats by 4. Only the enchanter\'s rings can be enchanted, and enchanting a ring will cause it to become soulbound. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27944, 'Permanently enchant a shield to give 36 additional block value. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27945, 'Permanently enchant a shield to increase Intellect by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27946, 'Permanently enchant a shield to increase block rating by 15. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27947, 'Permanently enchant a shield to increase all resistances by 5. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27948, 'Permanently enchant boots to restore 5 health and mana every 5 seconds. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27950, 'Permanently enchant boots to increase Stamina by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27951, 'Permanently enchant boots to increase Agility by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27954, 'Permanently enchant boots to increase critical strike and hit rating by 10. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27957, 'Permanently enchant a piece of chest armor to grant +150 health. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27958, 'Permanently enchant chest armor to increase mana by 250. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (27960, 'Permanently enchant chest armor to increase all stats by 6. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27961, 'Permanently enchant a cloak to give 120 additional armor. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27962, 'Permanently enchant a cloak to increase all resistances by 7. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27967, 'Permanently enchant a melee weapon to increase its damage by 7. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27968, 'Permanently enchant a melee weapon to increase Intellect by 30. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27971, 'Permanently enchant a two-handed melee weapon to increase attack power by 70. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27972, 'Permanently enchant a melee weapon to increase Strength by 20. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27975, 'Permanently enchant a melee weapon to increase spell power by 40. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27977, 'Permanently enchant a two-handed melee weapon to increase Agility by 35. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27981, 'Permanently enchant a melee weapon to increase fire and arcane spell power by 50. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27982, 'Permanently enchant a melee weapon to increase Frost and Shadow spell power by 54. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (27984, 'Permanently enchant a melee weapon to occasionally increase Agility by 120 and attack speed slightly. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (28003, 'Permanently enchant a melee weapon to make your spells sometimes restore 100 mana to nearby party members. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (28004, 'Permanently enchant a melee weapon to occasionally heal nearby party members for 180 to 300 when attacking in melee. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (28013, 'While applied to target weapon it restores 14 mana to the caster every 5 seconds. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (28016, 'Creates Superior Mana Oil.');
INSERT INTO `spelltext_en` VALUES (28017, 'While applied to target weapon it increases spell power by 42. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (28019, 'Creates Superior Wizard Oil.');
INSERT INTO `spelltext_en` VALUES (28022, 'Transforms three Small Prismatic Shard into a Large Prismatic Shard.');
INSERT INTO `spelltext_en` VALUES (28100, 'Turn ten Motes of Air into Primal Air.');
INSERT INTO `spelltext_en` VALUES (28101, 'Turn ten Motes of Earth into Primal Earth.');
INSERT INTO `spelltext_en` VALUES (28102, 'Turn ten Motes of Fire into Primal Fire.');
INSERT INTO `spelltext_en` VALUES (28103, 'Turn ten Motes of Water into Primal Water.');
INSERT INTO `spelltext_en` VALUES (28104, 'Turn ten Motes of Shadow into Primal Shadow.');
INSERT INTO `spelltext_en` VALUES (28105, 'Turn ten Motes of Mana into Primal Mana.');
INSERT INTO `spelltext_en` VALUES (28106, 'Turn ten Motes of Life into Primal Life.');
INSERT INTO `spelltext_en` VALUES (28112, 'Increases the block value of your shield by 42.');
INSERT INTO `spelltext_en` VALUES (28113, 'Increases the block value of your shield by 30.');
INSERT INTO `spelltext_en` VALUES (28141, 'Increases spell power by 150.');
INSERT INTO `spelltext_en` VALUES (28142, 'Increases the spell critical strike rating of all party members within 0 yards by 28.');
INSERT INTO `spelltext_en` VALUES (28143, 'Increases spell power of all party members within 0 yards by 33.');
INSERT INTO `spelltext_en` VALUES (28144, 'Increases spell power of all party members within 0 yards by 33.');
INSERT INTO `spelltext_en` VALUES (28145, 'Restores 14 mana per 5 seconds to all party members within 0 yards.');
INSERT INTO `spelltext_en` VALUES (28148, 'Creates a portal, teleporting group members that use it to Karazhan.');
INSERT INTO `spelltext_en` VALUES (28152, 'Increases spell power by 160.');
INSERT INTO `spelltext_en` VALUES (28155, 'Increases your spell power by 160.');
INSERT INTO `spelltext_en` VALUES (28161, 'Permanently adds 10 nature resistance to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.');
INSERT INTO `spelltext_en` VALUES (28163, 'Permanently adds 10 Frost resistance to a leg or head slot item.');
INSERT INTO `spelltext_en` VALUES (28165, 'Permanently adds 10 shadow resistance to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.');
INSERT INTO `spelltext_en` VALUES (28200, 'Your next 5 damage or healing spells cast within 20 seconds will grant a bonus of 40 spell power, stacking up to 5 times. Expires after 6 damage or healing spells or 20 seconds, whichever occurs first.');
INSERT INTO `spelltext_en` VALUES (28247, 'Place Infused Crystal on the floor releasing its energy into nearby Runestone.');
INSERT INTO `spelltext_en` VALUES (28264, 'Increases spell power by 46.');
INSERT INTO `spelltext_en` VALUES (28271, 'Transforms the enemy into a turtle, forcing it to wander around for up to 50 sec. While wandering, the turtle cannot attack or cast spells but will regenerate very quickly. Any damage will transform the target back into its normal form. Only one target can be polymorphed at a time. Only works on Beasts, Humanoids and Critters.');
INSERT INTO `spelltext_en` VALUES (28273, 'Increases spell power by a small amount for 10 minutes.');
INSERT INTO `spelltext_en` VALUES (28282, 'Inflicts the will of the Ashbringer upon the wielder.');
INSERT INTO `spelltext_en` VALUES (28324, 'Combines 40 Splinters of Atiesh to form the Frame of Atiesh.');
INSERT INTO `spelltext_en` VALUES (28325, 'Increases the block value of your shield by 63.');
INSERT INTO `spelltext_en` VALUES (28347, 'Increases melee and ranged attack power by 600.');
INSERT INTO `spelltext_en` VALUES (28354, 'Exorcises the taint of Sargeras from Atiesh. Only usable on consecrated earth.');
INSERT INTO `spelltext_en` VALUES (28360, 'Increases spell power by 49.');
INSERT INTO `spelltext_en` VALUES (28451, 'Burns mummified troll remains.');
INSERT INTO `spelltext_en` VALUES (28486, 'Increases attack power by 30 against undead. Lasts 30 min.');
INSERT INTO `spelltext_en` VALUES (28488, 'Increases spell power by 15 against undead. Lasts 30 min.');
INSERT INTO `spelltext_en` VALUES (28489, 'Imbiber cannot be tracked for 1 hour.');
INSERT INTO `spelltext_en` VALUES (28490, 'Increases your Strength by 35 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (28491, 'Increases spell power by 24 and Spirit by 24 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (28492, 'Increases Stealth a great deal for 1 min.');
INSERT INTO `spelltext_en` VALUES (28493, 'Increases Frost spell power by 55 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (28494, 'Increases your Strength by 120 and decreases your defense rating by 75 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (28495, 'Restores 1500 to 2500 health.');
INSERT INTO `spelltext_en` VALUES (28496, 'Increases your stealth detection for 10 min.');
INSERT INTO `spelltext_en` VALUES (28497, 'Increases your Agility by 45 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (28499, 'Restores 1800 to 3000 mana.');
INSERT INTO `spelltext_en` VALUES (28501, 'Increases fire spell power by 55 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (28502, 'Increases armor by 550 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (28503, 'Increases shadow spell power by 55 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (28504, 'Puts the imbiber in a dreamless sleep for 12 sec. During that time the imbiber heals 3600 health and 3600 mana.');
INSERT INTO `spelltext_en` VALUES (28506, 'Increases Strength by 70 and temporarily increases health by 700 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (28507, 'Increases haste rating by 400 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (28508, 'Increases spell critical chance by 2% and spell power by 120 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (28509, 'Regenerate 20 mana per 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (28511, 'Absorbs 2800 to 4000 fire damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (28512, 'Absorbs 2800 to 4000 Frost damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (28513, 'Absorbs 2800 to 4000 nature damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (28514, 'Decreases the magical resistances of your spell targets by 30 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (28515, 'Increases armor by 2500 for 2 min.');
INSERT INTO `spelltext_en` VALUES (28516, 'Use on Dar\'Khan Drathir to release the energy contained in this item causing 500 Arcane damage over 5 sec and silencing the target.');
INSERT INTO `spelltext_en` VALUES (28517, 'Restores 2100 to 2300 mana and health.');
INSERT INTO `spelltext_en` VALUES (28518, 'Increases maximum health by 500 and defense rating by 10 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (28519, 'Increases mana regeneration by 31 mana per 5 seconds for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (28520, 'Increases attack power by 120 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (28521, 'Increases arcane, holy, and nature spell power by 80 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (28527, 'Absorbs 750 to 1250 damage. Lasts 15 sec.');
INSERT INTO `spelltext_en` VALUES (28530, 'Increases spell power by 132.');
INSERT INTO `spelltext_en` VALUES (28536, 'Absorbs 2800 to 4000 arcane damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (28537, 'Absorbs 2800 to 4000 shadow damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (28538, 'Absorbs 2800 to 4000 holy damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (28539, 'Increases the damage done by your Multi-Shot by 5%.');
INSERT INTO `spelltext_en` VALUES (28540, 'Increases Shadow, Fire, and Frost spell power by 80 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (28548, 'Shrouds you from nearby enemies so you seem less threatening to them.');
INSERT INTO `spelltext_en` VALUES (28566, 'Transmutes Primal Air into Primal Fire.');
INSERT INTO `spelltext_en` VALUES (28567, 'Transmutes Primal Earth into Primal Water.');
INSERT INTO `spelltext_en` VALUES (28568, 'Transmutes Primal Fire into Primal Earth.');
INSERT INTO `spelltext_en` VALUES (28569, 'Transmutes Primal Water into Primal Air.');
INSERT INTO `spelltext_en` VALUES (28609, 'Absorbs 875 Frost damage. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (28610, 'Absorbs 875 shadow damage. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (28612, 'Conjures 10 cinnamon rolls, providing the mage and <his/her> allies with something to eat.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (28624, 'Heals the targeted Draenei Survivor.');
INSERT INTO `spelltext_en` VALUES (28686, 'Increases spell power by 85.');
INSERT INTO `spelltext_en` VALUES (28687, 'Increases spell power by 85.');
INSERT INTO `spelltext_en` VALUES (28693, 'Increases spell power by 95.');
INSERT INTO `spelltext_en` VALUES (28700, 'Disperse the Neutralizing Agent at the Irradiated Power Crystal in Silverline Lake.');
INSERT INTO `spelltext_en` VALUES (28714, 'Chance to strike a ranged or melee target for 40 fire damage.  Also increases fire spell power by 80. Lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (28716, 'Your Rejuvenation ticks have a chance to restore 60 mana, 8 energy, or 2 rage to your target.');
INSERT INTO `spelltext_en` VALUES (28719, 'On Healing Touch critical hits, you regain 30% of the mana cost of the spell.');
INSERT INTO `spelltext_en` VALUES (28726, 'Increases your health by 2000 for 20 sec. When the effect ends the extra health will be lost.');
INSERT INTO `spelltext_en` VALUES (28735, 'Increases attack power by 100.');
INSERT INTO `spelltext_en` VALUES (28736, 'Increases spell power by 95.');
INSERT INTO `spelltext_en` VALUES (28738, 'Right Click to summon and dismiss Speedy the turtle.');
INSERT INTO `spelltext_en` VALUES (28739, 'Right Click to summon and dismiss Mr. Wiggles the pig.');
INSERT INTO `spelltext_en` VALUES (28740, 'Right Click to summon and dismiss Whiskers the Rat.');
INSERT INTO `spelltext_en` VALUES (28743, 'Reduces the mana cost of your Healing Touch, Regrowth, Rejuvenation, and Tranquility spells by 3%.');
INSERT INTO `spelltext_en` VALUES (28744, 'Your initial cast and Regrowth ticks will increase the maximum health of your target by up to 50, stacking up to 7 times.');
INSERT INTO `spelltext_en` VALUES (28745, 'Fills out the recruit\'s field duty information.');
INSERT INTO `spelltext_en` VALUES (28746, 'Your spell critical hits generate 25% less threat. In addition, Corruption, Immolate, Curse of Agony, and Siphon Life generate 25% less threat.');
INSERT INTO `spelltext_en` VALUES (28751, 'Reduces the mana cost of your Multi-Shot and Aimed Shot by 20.');
INSERT INTO `spelltext_en` VALUES (28752, 'Your ranged critical hits cause an Adrenaline Rush, granting you 50 mana.');
INSERT INTO `spelltext_en` VALUES (28755, 'Increases the duration of your Rapid Fire by 4 sec.');
INSERT INTO `spelltext_en` VALUES (28756, 'While your pet is active, increases attack power by 50 for both you and your pet.');
INSERT INTO `spelltext_en` VALUES (28760, 'Restores 500 mana.');
INSERT INTO `spelltext_en` VALUES (28761, 'Your damage spells have a chance to displace you, causing the next spell cast to generate no threat.');
INSERT INTO `spelltext_en` VALUES (28763, 'Reduces cooldown on your Evocation by 1 minute.');
INSERT INTO `spelltext_en` VALUES (28764, 'Gives your Mage Armor a chance when struck by a harmful spell to increase resistance against that school of magic by 35 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (28767, 'Increases spell power by 51.');
INSERT INTO `spelltext_en` VALUES (28771, 'Your damage spells have a chance to cause your target to take up to 200 increased damage from subsequent spells.');
INSERT INTO `spelltext_en` VALUES (28773, 'Increases the block value of your shield by 235 for 40 sec.');
INSERT INTO `spelltext_en` VALUES (28774, 'Reduces cooldown on your Lay on Hands by 4 min.');
INSERT INTO `spelltext_en` VALUES (28775, 'Increases the amount healed by your Judgement of Light by 20.');
INSERT INTO `spelltext_en` VALUES (28777, 'Increases attack power by 260 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (28778, 'Increases resistances to all schools of magic by 40 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (28779, 'Increases spell power by 130 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (28780, 'Increases spell power of the next 5 spells by 240 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (28787, 'Your Cleanse spell also heals the target for 200.');
INSERT INTO `spelltext_en` VALUES (28789, 'Your Flash of Light and Holy Light spells have a chance to imbue your target with Holy Power.');
INSERT INTO `spelltext_en` VALUES (28792, 'Increases spell power by 126.');
INSERT INTO `spelltext_en` VALUES (28799, 'Increases your spell penetration by 25.');
INSERT INTO `spelltext_en` VALUES (28800, 'Use on a Frozen Rune to melt it free.');
INSERT INTO `spelltext_en` VALUES (28802, 'Each spell you cast can trigger an Epiphany, increasing your mana regeneration by 30 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (28805, 'Increases spell power by 126.');
INSERT INTO `spelltext_en` VALUES (28806, 'Right Click near a Fire Festival Bonfire to receive the Fire Festival Fury buff, or to reignite an extinguished bonfire. These are also used as currency at Midsummer Suppliers and Merchants.');
INSERT INTO `spelltext_en` VALUES (28807, 'Reduces the mana cost of your Renew spell by 12%.');
INSERT INTO `spelltext_en` VALUES (28808, 'Reduces the threat from your healing spells.');
INSERT INTO `spelltext_en` VALUES (28809, 'On Greater Heal critical hits, your target will gain Armor of Faith, absorbing up to 500 damage.');
INSERT INTO `spelltext_en` VALUES (28811, 'Reduces the threat from your Backstab, Sinister Strike, Hemorrhage, and Eviscerate abilities.');
INSERT INTO `spelltext_en` VALUES (28812, 'Your Backstab, Sinister Strike, and Hemorrhage critical hits cause you to regain 5 energy.');
INSERT INTO `spelltext_en` VALUES (28814, 'Your Eviscerate has a chance per combo point to reveal a flaw in your opponent\'s armor, granting a 100% critical hit chance for your next Backstab, Sinister Strike, or Hemorrhage.');
INSERT INTO `spelltext_en` VALUES (28816, 'Your normal melee swings have a chance to Invigorate you, healing you for 90 to 110.');
INSERT INTO `spelltext_en` VALUES (28818, 'Reduces the mana cost of your totem spells by 12%.');
INSERT INTO `spelltext_en` VALUES (28821, 'Your Lightning Shield spell also grants you 19 mana per 5 sec. while active.');
INSERT INTO `spelltext_en` VALUES (28823, 'Your Healing Wave and Lesser Healing Wave spells have a chance to imbue your target with Totemic Power.');
INSERT INTO `spelltext_en` VALUES (28829, 'Increases damage caused by your Corruption by 12%.');
INSERT INTO `spelltext_en` VALUES (28830, 'Reduces health cost of your Life Tap by 12%.');
INSERT INTO `spelltext_en` VALUES (28831, 'Your Shadow Bolts now have a chance to heal you for 270 to 330.');
INSERT INTO `spelltext_en` VALUES (28840, 'Increases attack power by 98.');
INSERT INTO `spelltext_en` VALUES (28841, 'Increases spell power by 113.');
INSERT INTO `spelltext_en` VALUES (28842, 'Improves your chance to hit with Sunder Armor, Devastate, Heroic Strike, Revenge, and Shield Slam by 5%.');
INSERT INTO `spelltext_en` VALUES (28843, 'Improves your chance to hit with Taunt and Challenging Shout by 5%.');
INSERT INTO `spelltext_en` VALUES (28844, 'Increases the damage done by your Revenge ability by 75.');
INSERT INTO `spelltext_en` VALUES (28845, 'When your health drops below 20%, for the next 5 seconds healing spells cast on you help you to Cheat Death, increasing healing done to you by up to 160.');
INSERT INTO `spelltext_en` VALUES (28847, 'Gain up to 25 mana each time you cast Healing Touch.');
INSERT INTO `spelltext_en` VALUES (28849, 'Regain up to 10 mana each time you cast Lesser Healing Wave.');
INSERT INTO `spelltext_en` VALUES (28851, 'Increases spell power of Flash of Light by 43.');
INSERT INTO `spelltext_en` VALUES (28853, 'Increases spell power of Flash of Light by 28.');
INSERT INTO `spelltext_en` VALUES (28854, 'Increases the spell power your Moonfire spell by 33.');
INSERT INTO `spelltext_en` VALUES (28855, 'Increases the damage dealt by your Maul ability by 50 and Swipe ability by 10.');
INSERT INTO `spelltext_en` VALUES (28856, 'Increases spell power of Lesser Healing Wave by 53.');
INSERT INTO `spelltext_en` VALUES (28857, 'Increases spell power of Chain Lightning and Lightning Bolt by 33.');
INSERT INTO `spelltext_en` VALUES (28862, 'Reduces the threat you generate by [35-max(0, PL-60)]% for 20 sec.');
INSERT INTO `spelltext_en` VALUES (28866, 'Increases your haste rating by 200 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (28869, 'Increases your spell penetration by 15.');
INSERT INTO `spelltext_en` VALUES (28870, 'Increases attack power by 60 when fighting Undead.');
INSERT INTO `spelltext_en` VALUES (28871, 'Summons or dismisses a Spirit of Summer.');
INSERT INTO `spelltext_en` VALUES (28876, 'Increases spell power against Undead by 26.');
INSERT INTO `spelltext_en` VALUES (28891, 'While applied to target weapon it increases attack power against undead by 170. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (28898, 'While applied to target weapon it increases spell damage against undead by up to 100. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (29007, 'Restores 2934 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (29008, 'Restores 2148 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (29049, 'Deactivates the night elf moon crystal at An\'owyn.');
INSERT INTO `spelltext_en` VALUES (29068, 'Increases your damage against undead by 2%.');
INSERT INTO `spelltext_en` VALUES (29070, 'Fire at the corpses of Vile, Lady Nightswood, or The Leaper to break them from the Lich King\'s will. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (29073, 'Restores 4320 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (29091, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29092, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29093, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29094, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29095, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29096, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29097, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (29112, 'Increases attack power by 150 when fighting Undead and Demons. It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.');
INSERT INTO `spelltext_en` VALUES (29113, 'Increases spell power against Undead and Demons by 85. It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.');
INSERT INTO `spelltext_en` VALUES (29116, 'Creates 5 Toasted Smorcs when used at a cooking fire.');
INSERT INTO `spelltext_en` VALUES (29150, 'Chance to discharge electricity causing 100 to 150 Nature damage to your target.');
INSERT INTO `spelltext_en` VALUES (29155, 'Steals 185 to 215 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (29162, 'When struck has a 15% chance of reducing the attacker\'s movement speed by 50% for 5 secs. Chance to fizzle against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (29171, 'Increases the mana gained from your Mana Spring totems by 25%.');
INSERT INTO `spelltext_en` VALUES (29200, 'Sprinkle over Tainted Helboar Meat to attempt to purify it.');
INSERT INTO `spelltext_en` VALUES (29228, 'Instantly sears the target with fire, causing 309 Fire damage immediately and 516 Fire damage over 18 sec. This periodic damage may critically strike and will occur more rapidly based on the caster\'s spell haste.');
INSERT INTO `spelltext_en` VALUES (29236, 'Restores 140 to 180 mana.');
INSERT INTO `spelltext_en` VALUES (29251, 'Restores 18 to 30 health.');
INSERT INTO `spelltext_en` VALUES (29271, 'Releases the energy stored within the Power Core, increasing spell power by 15 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (29276, 'Restores 60 mana.');
INSERT INTO `spelltext_en` VALUES (29279, 'Place Signaling Gem near the Altar of Aggonar to lure the draenei party to you.');
INSERT INTO `spelltext_en` VALUES (29297, 'Empty the vial near the Bones of Aggonar to cleanse the waters of their demonic taint.');
INSERT INTO `spelltext_en` VALUES (29305, 'Summons a Cinder Elemental that will protect you for 10 min.');
INSERT INTO `spelltext_en` VALUES (29308, 'Releases the energy stored within the Power Core, increasing spell power by 25 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (29312, 'Restores 100 mana.');
INSERT INTO `spelltext_en` VALUES (29314, 'Heals Debilitated Grunts, turning them into healthy Clan Grunts. Target must not be in combat.');
INSERT INTO `spelltext_en` VALUES (29332, 'Increases hit rating by 20 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (29333, 'Increases haste rating by 30 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (29334, 'Increases spell power by 44 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (29335, 'Increases defense rating by 20 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (29348, 'Increases the player\'s maximum health by 70 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (29364, 'Unleash the crystal\'s magic to encapsulate the essence of an Uncontrolled Voidwalker near death.');
INSERT INTO `spelltext_en` VALUES (29369, 'Increases spell power by 71.');
INSERT INTO `spelltext_en` VALUES (29384, 'Sets light to the beacons in the Great Fissure.');
INSERT INTO `spelltext_en` VALUES (29432, 'Absorbs 1500 to 2500 fire damage. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (29435, 'Use when near a Female Kaliri Hatchling to capture her.');
INSERT INTO `spelltext_en` VALUES (29443, 'Counters the enemy\'s spellcast, preventing any spell from that school of magic from being cast for 10 sec. Generates a high amount of threat. Chance of failure when used against targets over level 60.');
INSERT INTO `spelltext_en` VALUES (29451, 'Allows the bearer full access to everything that the party at Saltheril\'s Haven has to offer.');
INSERT INTO `spelltext_en` VALUES (29452, 'Increase sharp weapon damage by 12 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (29453, 'Increase sharp weapon damage by 12 and add 14 melee critical strike rating for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (29454, 'Attaches a Felsteel Spike to your shield that deals 26-38 damage every time you block with it.');
INSERT INTO `spelltext_en` VALUES (29467, 'Permanently adds 15 spell power and 14 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (29475, 'Permanently enchants a shoulder slot item to increase spell power by 16 and restore 6 mana every 5 sec.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (29480, 'Permanently enchants a shoulder slot item to increase Stamina by 16 and armor by 100.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (29483, 'Permanently enchants a shoulder slot item to increase attacker power by 26 and critical strike rating by 14.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (29501, 'Chance to strike your target with a Frost Arrow for 31 to 45 Frost damage.');
INSERT INTO `spelltext_en` VALUES (29506, 'Absorbs 900 damage. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (29507, 'Applies the Lesser Ward of Shielding to your shield. This ward absorbs up to 1000 points of damage before it fails.');
INSERT INTO `spelltext_en` VALUES (29517, 'Poison the troll foodstuff in Zeb\'Nowa.');
INSERT INTO `spelltext_en` VALUES (29524, 'Increases attack power by 94.');
INSERT INTO `spelltext_en` VALUES (29528, 'Inoculates the targeted Nestlewood Owlkin.');
INSERT INTO `spelltext_en` VALUES (29542, 'Fill the Azure Phial at Elrendar Falls.');
INSERT INTO `spelltext_en` VALUES (29601, 'Each spell cast within 20 seconds will grant a stacking bonus of 21 mana regen per 5 sec. Expires after 20 seconds. Abilities with no mana cost will not trigger this trinket.');
INSERT INTO `spelltext_en` VALUES (29602, 'Increases attack power by 65 and an additional 65 every 2 sec. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (29624, 'Chance to strike your ranged target with a Searing Arrow for 18 to 26 Fire damage.');
INSERT INTO `spelltext_en` VALUES (29625, 'Chance to strike your ranged target with a Flaming Cannonball for 33 to 49 Fire damage.');
INSERT INTO `spelltext_en` VALUES (29626, 'Chance to strike your ranged target with a Shadow Bolt for 13 to 19 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (29632, 'Chance to strike your ranged target with Shadow Shot for 18 to 26 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (29633, 'Chance to strike your ranged target with a Fire Blast for 12 to 18 Fire damage.');
INSERT INTO `spelltext_en` VALUES (29634, 'Chance to strike your ranged target with a Quill Shot for 66 to 98 Nature damage.');
INSERT INTO `spelltext_en` VALUES (29635, 'Chance to strike your ranged target with a Flaming Shell for 18 to 26 Fire damage.');
INSERT INTO `spelltext_en` VALUES (29636, 'Chance to strike your ranged target with a Venom Shot for 31 to 45 Nature damage.');
INSERT INTO `spelltext_en` VALUES (29637, 'Chance to strike your ranged target with Keeper\'s Sting for 15 to 21 Nature damage.');
INSERT INTO `spelltext_en` VALUES (29688, 'Transmutes Primal Earth, Water, Air, Fire and Mana into Primal Might.');
INSERT INTO `spelltext_en` VALUES (29720, 'Applies the Greater Ward of Shielding to your shield. This ward absorbs up to 4000 points of damage before it fails.');
INSERT INTO `spelltext_en` VALUES (29731, 'Calls forth an ancestral spirit wolf to track the individual you seek.');
INSERT INTO `spelltext_en` VALUES (29773, 'Plant the tree seedling in the fertile dirt mound.');
INSERT INTO `spelltext_en` VALUES (29820, 'DEBUG\r\nAssist a raid when it wipes. For use on Test Realms only.');
INSERT INTO `spelltext_en` VALUES (29830, 'Reach into the hat for a drink.');
INSERT INTO `spelltext_en` VALUES (29866, 'Casts your draenei fishing net into a school of red snapper.');
INSERT INTO `spelltext_en` VALUES (29917, 'Feeds the captured animal.');
INSERT INTO `spelltext_en` VALUES (30009, 'Take control of a Robotron 3000 while standing near the Robotron Command Console.');
INSERT INTO `spelltext_en` VALUES (30015, 'Summon the water elemental Naias.');
INSERT INTO `spelltext_en` VALUES (30077, 'Unleashes spell prepared by Magistrix Carinda for Viera Sunwhisper. Cannot possibly be pretty.');
INSERT INTO `spelltext_en` VALUES (30088, 'Increases Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (30089, 'Increases Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (30090, 'Increases Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (30098, 'Defiles Uther\'s Tomb.');
INSERT INTO `spelltext_en` VALUES (30099, 'Begins taming a Crazed Dragonhawk to be your companion for 15 min. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (30102, 'Begins taming an Elder Springpaw to be your companion for 15 min. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (30105, 'Begins taming a Mistbat to be your companion for 15 min. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (30154, 'Teaches Felguard Intercept (Rank 1).');
INSERT INTO `spelltext_en` VALUES (30156, 'Right Click to summon and dismiss your hippogryph hatchling.');
INSERT INTO `spelltext_en` VALUES (30161, 'Shoots a firework into the air that bursts into a thousand purple stars.');
INSERT INTO `spelltext_en` VALUES (30167, 'Become a hulking red ogre for 10 min!');
INSERT INTO `spelltext_en` VALUES (30174, 'Summons and dismisses a rideable turtle. It may be slow, but it gets you off your feet!');
INSERT INTO `spelltext_en` VALUES (30199, 'Teaches Felguard Intercept (Rank 2).');
INSERT INTO `spelltext_en` VALUES (30200, 'Teaches Felguard Intercept (Rank 3).');
INSERT INTO `spelltext_en` VALUES (30208, 'Call forth a voidwalker at the rune of summoning.');
INSERT INTO `spelltext_en` VALUES (30212, 'Burns the wickerman effigy to summon Hauteur.');
INSERT INTO `spelltext_en` VALUES (30214, 'Teaches Felguard Cleave (Rank 1).');
INSERT INTO `spelltext_en` VALUES (30216, 'Inflicts 330 to 770 Fire damage and incapacitates targets in a 0 yard radius for 3 sec. Any damage will break the effect. Unreliable against targets higher than level 76.');
INSERT INTO `spelltext_en` VALUES (30217, 'Inflicts 450 to 750 Fire damage and incapacitates targets for 3 sec in a 3 yard radius. Any damage will break the effect. Unreliable against targets higher than level 80.');
INSERT INTO `spelltext_en` VALUES (30222, 'Teaches Felguard Cleave (Rank 2).');
INSERT INTO `spelltext_en` VALUES (30224, 'Teaches Felguard Cleave (Rank 3).');
INSERT INTO `spelltext_en` VALUES (30226, 'Fill with pure water from the fountain at the Wrathscale Lair.');
INSERT INTO `spelltext_en` VALUES (30230, 'To gather a Fel Ember from the strange braziers near Grand Warlock Nethekurse\'s throne.');
INSERT INTO `spelltext_en` VALUES (30249, 'Increases your stealth detection for 15 sec.');
INSERT INTO `spelltext_en` VALUES (30250, 'Attaches a permanent scope to a bow or gun that increases its damage by 10.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (30252, 'Attaches a permanent scope to a bow or gun that increases its damage by 12.');
INSERT INTO `spelltext_en` VALUES (30260, 'Attaches a permanent scope to a bow or gun that increases its critical strike rating by 28.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (30261, 'Right Click to summon a robot pet that will fight other fighting robots.');
INSERT INTO `spelltext_en` VALUES (30262, 'Throw a white smoke flare at a specific location that lasts for 5 min.');
INSERT INTO `spelltext_en` VALUES (30263, 'Throw a red smoke flare at a specific location that lasts for 5 min.');
INSERT INTO `spelltext_en` VALUES (30264, 'Throw a green smoke flare at a specific location that lasts for 5 min.');
INSERT INTO `spelltext_en` VALUES (30265, 'Throw a blue smoke flare at a specific location that lasts for 5 min.');
INSERT INTO `spelltext_en` VALUES (30298, 'Transforms the user into a tree. Also roots the user in place.');
INSERT INTO `spelltext_en` VALUES (30406, 'Unlocks Bristlelimb cages.');
INSERT INTO `spelltext_en` VALUES (30408, 'Pour the purest water into the barrel of filth.');
INSERT INTO `spelltext_en` VALUES (30419, 'Teaches the user to better understand Stillpine furbolg symbols.');
INSERT INTO `spelltext_en` VALUES (30427, 'Extracts gas from a nearby gas cloud.');
INSERT INTO `spelltext_en` VALUES (30434, 'Blasts open all but the mightiest of locked doors and chests.');
INSERT INTO `spelltext_en` VALUES (30435, 'Enlarges a critter to twice its normal size.');
INSERT INTO `spelltext_en` VALUES (30458, 'Protects you with a shield of force that stops 4000 damage for 8 sec.');
INSERT INTO `spelltext_en` VALUES (30461, 'Inflicts 600 to 1000 Fire damage and incapacitates targets for 5 sec in a 10 yard radius. Any damage will break the effect. Unreliable against targets higher than level 80.');
INSERT INTO `spelltext_en` VALUES (30486, 'Explodes when triggered, dealing 900 to 1500 Fire damage to all enemies nearby and 675 to 1125 damage to you.');
INSERT INTO `spelltext_en` VALUES (30489, 'Bestows seer\'s vision upon the wielder.');
INSERT INTO `spelltext_en` VALUES (30507, 'Turns the target into a chicken for 15 sec.  Well, that is assuming the transmogrification polarity has not been reversed...');
INSERT INTO `spelltext_en` VALUES (30519, 'Increases your chance to resist Stun and Disorient effects by 10%.');
INSERT INTO `spelltext_en` VALUES (30524, 'Unfold the Remote Mail Terminal so that it can receive and send mail.  It only has enough power to last for 5 min.');
INSERT INTO `spelltext_en` VALUES (30526, 'Quickly constructs a gnomish flame turret at your feet that will nearly always attack nearby enemies. The turret falls apart after 45 sec.');
INSERT INTO `spelltext_en` VALUES (30550, 'Break the seal on the book, granting your healing spells the chance to summon a ghostly ally.');
INSERT INTO `spelltext_en` VALUES (30557, 'Break the seal of the book, granting your harmful spells a chance to deal additional damage.');
INSERT INTO `spelltext_en` VALUES (30562, 'Break the seal of the book, granting you a chance to increase your armor and resistance to magic when struck in combat.');
INSERT INTO `spelltext_en` VALUES (30567, 'Break the seal on the book, granting you a chance to deal additional shadow damage on ranged or melee attacks.');
INSERT INTO `spelltext_en` VALUES (30611, 'Mine a sample of the crystal from among the crash debris.');
INSERT INTO `spelltext_en` VALUES (30612, 'Mine a sample shard from a crystal used by the blood elves.');
INSERT INTO `spelltext_en` VALUES (30617, 'Mine a sample shard from a crystal in the Nazzivus settlement of Axxarien.');
INSERT INTO `spelltext_en` VALUES (30645, 'Shows the location of nearby gas clouds on the minimap while the mote extractor remains in your inventory.');
INSERT INTO `spelltext_en` VALUES (30646, 'Begins taming a Barbed Crawler to be your companion for 15 min. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (30653, 'Begins taming a Greater Timberstrider to be your companion for 15 min. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (30654, 'Begins taming a Nightstalker to be your companion for 15 min. If you lose the beast\'s attention for any reason, the taming process will fail.');
INSERT INTO `spelltext_en` VALUES (30740, 'Target and fire at The Ocular. Can be used while mounted. Range is 95 yards.');
INSERT INTO `spelltext_en` VALUES (30767, 'Opens Ravager Cage');
INSERT INTO `spelltext_en` VALUES (30770, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (30772, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (30777, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (30778, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (30845, 'Increases Stamina by 5. Lasts 30 mins.');
INSERT INTO `spelltext_en` VALUES (30847, 'Increases Intellect by 5. Lasts 30 mins.');
INSERT INTO `spelltext_en` VALUES (30848, 'Increases attack power by 10. Lasts 30 mins.');
INSERT INTO `spelltext_en` VALUES (30877, 'Tag a Blacksilt Scout.');
INSERT INTO `spelltext_en` VALUES (30988, 'Places banner on corpse of Lord Xiz.');
INSERT INTO `spelltext_en` VALUES (30994, 'Absorbs 900 to 2700 Frost damage on all nearby party members. Lasts 5 min.');
INSERT INTO `spelltext_en` VALUES (30997, 'Absorbs 900 to 2700 fire damage on all nearby party members. Lasts 5 min.');
INSERT INTO `spelltext_en` VALUES (30999, 'Absorbs 900 to 2700 nature damage on all nearby party members. Lasts 5 min.');
INSERT INTO `spelltext_en` VALUES (31000, 'Absorbs 900 to 2700 shadow damage on all nearby party members. Lasts 5 min.');
INSERT INTO `spelltext_en` VALUES (31002, 'Absorbs 900 to 2700 arcane damage on all nearby party members. Lasts 5 min.');
INSERT INTO `spelltext_en` VALUES (31003, 'Unlocks Princess Stillpine\'s cage.');
INSERT INTO `spelltext_en` VALUES (31016, 'Finishing move that causes damage per combo point:\r\n  1 point : [54+((170*1)+AP*0.03)*1]-[162+((170*1)+AP*0.07)*1] damage\r\n  2 points: [54+((170*2)+AP*0.06)*1]-[162+((170*2)+AP*0.14)*1] damage\r\n  3 points: [54+((170*3)+AP*0.09)*1]-[162+((170*3)+AP*0.21)*1] damage\r\n  4 points: [54+((170*4)+AP*0.12)*1]-[162+((170*4)+AP*0.28)*1] damage\r\n  5 points: [54+((170*5)+AP*0.15)*1]-[162+((170*5)+AP*0.35)*1] damage');
INSERT INTO `spelltext_en` VALUES (31018, 'Finishing move that causes damage per combo point and converts each extra point of energy (up to a maximum of 30 extra energy) into [2.09999990463+AP/410] additional damage. Damage is increased by your attack power.\r\n  1 point : [52+147*1+0.07*AP]-[112+147*1+0.07*AP] damage\r\n  2 points: [52+147*2+0.14*AP]-[112+147*2+0.14*AP] damage\r\n  3 points: [52+147*3+0.21*AP]-[112+147*3+0.21*AP] damage\r\n  4 points: [52+147*4+0.28*AP]-[112+147*4+0.28*AP] damage\r\n  5 points: [52+147*5+0.35*AP]-[112+147*5+0.35*AP] damage');
INSERT INTO `spelltext_en` VALUES (31023, 'Increases Stamina of nearby party members by 20 for 30 min.');
INSERT INTO `spelltext_en` VALUES (31024, 'Restores 6 health per second to nearby party members for 30 min.');
INSERT INTO `spelltext_en` VALUES (31025, 'Increases the critical strike rating of nearby party members by 28 for 30 min.');
INSERT INTO `spelltext_en` VALUES (31026, 'All stats of nearby party members increased by 10 for 30 min.');
INSERT INTO `spelltext_en` VALUES (31033, 'Increases spell power by 34 for all nearby party members. Lasts 30 min.');
INSERT INTO `spelltext_en` VALUES (31035, 'Increases the critical strike rating of nearby party members by 45 for 30 min.');
INSERT INTO `spelltext_en` VALUES (31038, 'Summons the Felsteel Boar to fight for you for 30 seconds.');
INSERT INTO `spelltext_en` VALUES (31039, 'Increases dodge rating by 125 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (31040, 'Increases spell power by 150 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (31045, 'Restores 900 mana over 12 sec.');
INSERT INTO `spelltext_en` VALUES (31047, 'Increases attack power by 320 for 12 sec.');
INSERT INTO `spelltext_en` VALUES (31114, 'Read the marked page at the southern end of the Master\'s Terrace.');
INSERT INTO `spelltext_en` VALUES (31225, 'Release the magic stored in the vessel to restore Sangrias Stillblade to life.');
INSERT INTO `spelltext_en` VALUES (31268, 'Places the bones at the Ever-burning pyre.');
INSERT INTO `spelltext_en` VALUES (31333, 'Signals Trackers of the Hand to come to your aid.');
INSERT INTO `spelltext_en` VALUES (31367, 'Captures a target up to 25 yards away in a net for 3 sec. Unreliable against targets higher than level 72.');
INSERT INTO `spelltext_en` VALUES (31368, 'Captures a target up to 0 yards away in a net for 3 sec. Unreliable against targets higher than level 80.');
INSERT INTO `spelltext_en` VALUES (31369, 'Permanently embroiders spellthread into pants, increasing spell power by 25 and Stamina by 15.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (31370, 'Permanently embroiders spellthread into pants, increasing spell power by 35 and Stamina by 20.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (31371, 'Permanently embroiders spellthread into pants, increasing spell power by 25 and Stamina by 15.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (31372, 'Permanently embroiders spellthread into pants, increasing spell power by 35 and Stamina by 20.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (31373, 'Conversion of these item_display into spellcloth can only be done inside of Netherstorm and only once in a while can the energies of netherstorm be used in this way.  Draining power to create the spellcloth will bring the wrath of netherstorm on you.');
INSERT INTO `spelltext_en` VALUES (31479, 'Calls forth a guardian of time to assist you inside the Black Morass.');
INSERT INTO `spelltext_en` VALUES (31497, 'Empty the vial\'s contents onto the eternal flame in the Alonsus Chapel.');
INSERT INTO `spelltext_en` VALUES (31549, 'Fills the flask with a sample of Bloodmyst water.');
INSERT INTO `spelltext_en` VALUES (31606, 'Allows Ysiel to transform you into a Stormcrow controlled by her.');
INSERT INTO `spelltext_en` VALUES (31613, 'Teleports the user to Temper in Emberglade on Azuremyst Isle. Only works on Azuremyst Isle.');
INSERT INTO `spelltext_en` VALUES (31614, 'Deactivates a Duskwither Spire power source.');
INSERT INTO `spelltext_en` VALUES (31696, 'Stand right before Thane Ufrang the Mighty and read the Shadow Vault Decree. May not be used while in combat, or while Thane Ufrang the Mighty is in combat or not present.');
INSERT INTO `spelltext_en` VALUES (31709, 'Cower, causing no damage but lowering your threat a large amount, making the enemy less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (31736, 'Entangles nearby Steam Pump Controls in a thick layer of Ironvine.');
INSERT INTO `spelltext_en` VALUES (31771, 'Absorbs 440 damage. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (31794, 'Reduces the cost of your next spell cast within 10 sec by up to 215 mana.');
INSERT INTO `spelltext_en` VALUES (31920, 'Allows the Imbiber to breathe water for 5 min.');
INSERT INTO `spelltext_en` VALUES (31927, 'Unleashes the essence of fire.');
INSERT INTO `spelltext_en` VALUES (31941, 'Increases spell power by 54.');
INSERT INTO `spelltext_en` VALUES (31949, 'Place the murloc cage on the flat rock near the northeastern cluster of tents in Daggerfen Village.');
INSERT INTO `spelltext_en` VALUES (31958, 'Throw down onto your enemies from above!\r\nDeals 900 to 1100 fire damage and deals damage equal to 1% of the target\'s total health every second.');
INSERT INTO `spelltext_en` VALUES (32001, 'Hurls Gordawg\'s boulder at Shattered Rumblers, breaking their outer shell to reveal the true identity of the Usurper.');
INSERT INTO `spelltext_en` VALUES (32027, 'Send a distress flare into the sky, calling for a Cenarion Expedition unit to come to your aid. Can only be used in Zangarmarsh while outdoors.');
INSERT INTO `spelltext_en` VALUES (32028, 'Briefly slows falling speed.');
INSERT INTO `spelltext_en` VALUES (32036, 'Places 7 Warmaul Skulls at the Earthen Brand to summon forth Gurok the Usurper.');
INSERT INTO `spelltext_en` VALUES (32037, 'Place the totem in the ground near the bottom of the staircase leading to the Boha\'mu ruins.');
INSERT INTO `spelltext_en` VALUES (32038, 'Transform into the form of a bird spirit. Must be used at the Boha\'mu Ruins.');
INSERT INTO `spelltext_en` VALUES (32042, 'Records an imprint of the arcane emanations surrounding an area. Works best near underground water sources.');
INSERT INTO `spelltext_en` VALUES (32096, 'In Hellfire Peninsula and Hellfire Citadel, increases Thrallmar reputation gained from killing monsters by 25% and experience gained by 5%. 30 minute duration.');
INSERT INTO `spelltext_en` VALUES (32098, 'In Hellfire Peninsula and Hellfire Citadel, increases Honor Hold reputation gained from killing monsters by 25% and experience gained by 5%. 30 minute duration.');
INSERT INTO `spelltext_en` VALUES (32102, 'Allow 5% of your Mana regeneration to continue while casting.');
INSERT INTO `spelltext_en` VALUES (32106, 'Gives a chance when your harmful spells land to increase the damage of your spells and effects by 92 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (32112, 'Restores 4320 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 10 Spirit for 10 min.');
INSERT INTO `spelltext_en` VALUES (32140, 'Heal self for 877 to 969 damage.');
INSERT INTO `spelltext_en` VALUES (32145, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (32146, 'Sets fire to anything in any environment.');
INSERT INTO `spelltext_en` VALUES (32196, 'Increases spell power by 7% of your total Intellect.');
INSERT INTO `spelltext_en` VALUES (32200, 'Increases spell power by 10% of your total Intellect.');
INSERT INTO `spelltext_en` VALUES (32205, 'Places the Mag\'har Battle Standard at select locations.');
INSERT INTO `spelltext_en` VALUES (32234, 'Teaches Felguard Avoidance.');
INSERT INTO `spelltext_en` VALUES (32235, 'Summons and dismisses a rideable Golden Gryphon mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32239, 'Summons and dismisses a rideable Ebon Gryphon. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32240, 'Summons and dismisses a rideable Snowy Gryphon. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32242, 'Summons and dismisses a rideable Swift Blue Gryphon mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32243, 'Summons and dismisses a rideable Tawny Wind Rider mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32244, 'Summons and dismisses a rideable Blue Wind Rider mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32245, 'Summons and dismisses a rideable Green Wind Rider mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32246, 'Summons and dismisses a rideable Swift Red Wind Rider mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32249, 'Unlocks Corki\'s Prison.');
INSERT INTO `spelltext_en` VALUES (32254, 'Place a rough stone statue on the ground where it will heal you for a short time before its power fades.');
INSERT INTO `spelltext_en` VALUES (32255, 'Unlocks Corki\'s Prison.');
INSERT INTO `spelltext_en` VALUES (32274, 'Enchant a piece of chest armor so it has a 25% chance per hit of giving you 200 points of physical damage absorption. 90 sec. cooldown. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (32282, 'Enchant a piece of chest armor so it has a 25% chance per hit of giving you 400 points of physical damage absorption. 90 sec. cooldown. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (32289, 'Summons and dismisses a rideable Swift Red Gryphon mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32290, 'Summons and dismisses a rideable Swift Green Gryphon mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32292, 'Summons and dismisses a rideable Swift Purple Gryphon mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32295, 'Summons and dismisses a rideable Swift Green Wind Rider mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32296, 'Summons and dismisses a rideable Swift Yellow Wind Rider mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32297, 'Summons and dismisses a rideable Swift Purple Wind Rider mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32298, 'Right Click to summon and dismiss your Netherwhelp.');
INSERT INTO `spelltext_en` VALUES (32304, 'Shows the location of all nearby giants on the minimap for 1 hour.');
INSERT INTO `spelltext_en` VALUES (32305, 'Removes 1 poison effect. Lowers Nature Resistance by -50 for 1 min.');
INSERT INTO `spelltext_en` VALUES (32307, 'Places Warmaul Ogre Banner on top of a fallen Kil\'sorrow agent.');
INSERT INTO `spelltext_en` VALUES (32314, 'Places Kil\'sorrow Banner on top of a fallen Warmaul ogre.');
INSERT INTO `spelltext_en` VALUES (32345, 'Summons and dismisses a rideable phoenix. This is a very fast mount. Can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (32347, 'Unlocks Warmaul Ogre Prisons.');
INSERT INTO `spelltext_en` VALUES (32355, 'Increases spell power by 104 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (32362, 'Increases attack power by 185 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (32367, 'Increases spell power by 113 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (32384, 'Unlocks Corki\'s Prison.');
INSERT INTO `spelltext_en` VALUES (32397, 'Permanently increase the stamina of an item worn on the chest, legs, hands or feet by 8. Only usable on item_display level 55 and above.');
INSERT INTO `spelltext_en` VALUES (32398, 'Permanently increase the defense rating of an item worn on the chest, legs, hands or feet by 8.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (32399, 'Permanently increase the mana regeneration of an item worn on the chest, legs, hands or feet by 4 mana every 5 seconds.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (32401, 'Increases spell power of Lesser Healing Wave by 79.');
INSERT INTO `spelltext_en` VALUES (32402, 'Increases spell power of Rejuvenation by 86.');
INSERT INTO `spelltext_en` VALUES (32403, 'Increases spell power of Flash of Light by 79.');
INSERT INTO `spelltext_en` VALUES (32408, 'Makes smoke signals when used at the blazing Warmaul pyre at the Laughing Skull courtyard.');
INSERT INTO `spelltext_en` VALUES (32426, 'Place in a shoe or boot to make it much more comfortable on your feet.');
INSERT INTO `spelltext_en` VALUES (32446, 'Use near the large scarecrow totems outside Veil Shalas to neutralize the town\'s defensive wards.');
INSERT INTO `spelltext_en` VALUES (32449, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (32451, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (32574, 'Combines with Pages 2, 3 & 4.');
INSERT INTO `spelltext_en` VALUES (32575, 'Combines with Pages 1, 3 & 4.');
INSERT INTO `spelltext_en` VALUES (32576, 'Combines with Pages 1, 2 & 4.');
INSERT INTO `spelltext_en` VALUES (32577, 'Combines with Pages 1, 2 & 3.');
INSERT INTO `spelltext_en` VALUES (32578, 'Bolsters the Thunderlord dire wolf\'s size and damage done for 1 min. However, it might also anger the wolf and turn it against you. Multiples of this spell may not be applied to the same wolf at the same time.');
INSERT INTO `spelltext_en` VALUES (32580, 'Summons forth an evil spirit, which, when slain, will curse an ogre building in either Bladespire Hold or Bloodmaul Outpost.');
INSERT INTO `spelltext_en` VALUES (32584, 'Increases spell power by 50.');
INSERT INTO `spelltext_en` VALUES (32599, 'Reduces your threat to enemy targets within 0 yards, making them less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (32600, 'Increases dodge rating by 192 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (32641, 'Reduces your threat to enemy targets within 0 yards, making them less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (32642, 'Afflicts your attacker with deadly poison spores each time you block.');
INSERT INTO `spelltext_en` VALUES (32646, 'Drink in the Bone Wastes of Terokkar Forest.');
INSERT INTO `spelltext_en` VALUES (32744, 'Plants incendiary bomb.');
INSERT INTO `spelltext_en` VALUES (32765, 'Transmutes gems and elemental forces into an Earthstorm Diamond.');
INSERT INTO `spelltext_en` VALUES (32766, 'Transmutes gems and elemental forces into a Skyfire Diamond.');
INSERT INTO `spelltext_en` VALUES (32789, 'Increases your spell critical strike rating by 20.');
INSERT INTO `spelltext_en` VALUES (32793, 'Increases your spell critical strike rating by 8.');
INSERT INTO `spelltext_en` VALUES (32794, 'Increases your spell critical strike rating by 11.');
INSERT INTO `spelltext_en` VALUES (32795, 'Increases your spell critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (32802, 'Place a coarse stone statue on the ground where it will heal you for a short time before its power fades.');
INSERT INTO `spelltext_en` VALUES (32803, 'Place a heavy stone statue on the ground where it will heal you for a short time before its power fades.');
INSERT INTO `spelltext_en` VALUES (32804, 'Place a solid stone statue on the ground where it will heal you for a short time before its power fades.');
INSERT INTO `spelltext_en` VALUES (32805, 'Place a dense stone statue on the ground where it will heal you for a short time before its power fades.');
INSERT INTO `spelltext_en` VALUES (32806, 'Place a primal stone statue on the ground where it will heal you for a short time before its power fades.');
INSERT INTO `spelltext_en` VALUES (32812, 'Throw a purple smoke flare at a specific location that lasts for 5 min.');
INSERT INTO `spelltext_en` VALUES (32834, 'Sprinkle around a Trampled Skeleton on the Path of Glory.');
INSERT INTO `spelltext_en` VALUES (32852, 'Teaches Felguard Demonic Frenzy.');
INSERT INTO `spelltext_en` VALUES (32955, 'Increases attack power by 120 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (32956, 'Increases spell power by 70 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (32957, 'Increases defense rating by 80 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (32973, 'Improves the range of your Shock and Wind Shear spells by 5 yards.');
INSERT INTO `spelltext_en` VALUES (32977, 'Turn three lesser planar essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (32978, 'Turn a greater planar essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (32979, 'Burns a Horde blade thrower overlooking the Path of Glory.');
INSERT INTO `spelltext_en` VALUES (32980, '2% chance on successful spellcast to increase your spell power by 120 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (32981, 'Chance on successful spellcast to restore 90 Mana over 10 sec.');
INSERT INTO `spelltext_en` VALUES (33012, 'The next opponent you kill within 10 sec that yields experience or honor will restore 900 mana.');
INSERT INTO `spelltext_en` VALUES (33014, 'The next opponent killed within 15 sec that yields experience or honor will restore 900 health.');
INSERT INTO `spelltext_en` VALUES (33018, 'Reduces the cooldown of your Stormstrike ability by 2 sec.');
INSERT INTO `spelltext_en` VALUES (33019, 'Allows the imbiber to see elemental spirits.');
INSERT INTO `spelltext_en` VALUES (33020, 'Increases the damage done by your Lightning Shield by 8%.');
INSERT INTO `spelltext_en` VALUES (33022, 'Increases spell power by 58.');
INSERT INTO `spelltext_en` VALUES (33027, 'Increases spell power by 16.');
INSERT INTO `spelltext_en` VALUES (33028, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (33029, 'Increases spell power by 44.');
INSERT INTO `spelltext_en` VALUES (33030, 'Increases spell power by 59.');
INSERT INTO `spelltext_en` VALUES (33050, 'Right Click to summon and dismiss a Magical Crawdad.');
INSERT INTO `spelltext_en` VALUES (33060, 'Speak with Mr. Pinchy and be granted a Wish!  Maybe something good...maybe something bad....Mr. Pinchy does not know!');
INSERT INTO `spelltext_en` VALUES (33063, 'Reduces the pushback suffered from damaging attacks while casting Fear by 50%.');
INSERT INTO `spelltext_en` VALUES (33066, 'Improves the range of your Fire Blast spell by 5 yards.');
INSERT INTO `spelltext_en` VALUES (33067, 'Burns an Alliance cannon overlooking the Path of Glory.');
INSERT INTO `spelltext_en` VALUES (33077, 'Increases the target\'s Agility by 15 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33078, 'Increases the target\'s Intellect by 21 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33079, 'Increases the target\'s Armor by 240 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33080, 'Increases the target\'s Spirit by 26 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33081, 'Increases the target\'s Stamina by 34 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33082, 'Increases the target\'s Strength by 15 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33089, 'Each successful block heals you for 120. Effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (33094, 'Increases spell power by 17.');
INSERT INTO `spelltext_en` VALUES (33097, 'Increases spell power by 31.');
INSERT INTO `spelltext_en` VALUES (33100, 'Teaches you how to be a Master Fisherman, allowing a maximum of 375 fishing skill.');
INSERT INTO `spelltext_en` VALUES (33103, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (33105, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (33106, 'Increases spell power by 30.');
INSERT INTO `spelltext_en` VALUES (33118, 'Increases spell power by 91.');
INSERT INTO `spelltext_en` VALUES (33124, 'Increases spell power by 33.');
INSERT INTO `spelltext_en` VALUES (33136, 'Increases spell power by 50.');
INSERT INTO `spelltext_en` VALUES (33138, 'Increases spell power by 88.');
INSERT INTO `spelltext_en` VALUES (33139, 'Increases spell power by 65.');
INSERT INTO `spelltext_en` VALUES (33140, 'Increases spell power by 73.');
INSERT INTO `spelltext_en` VALUES (33141, 'Increases spell power by 81.');
INSERT INTO `spelltext_en` VALUES (33148, 'Increases spell power by 21.');
INSERT INTO `spelltext_en` VALUES (33149, 'Increases spell power by 26.');
INSERT INTO `spelltext_en` VALUES (33163, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (33164, 'Increases spell power by 50.');
INSERT INTO `spelltext_en` VALUES (33165, 'Increases spell power by 64.');
INSERT INTO `spelltext_en` VALUES (33166, 'Increases spell power by 73.');
INSERT INTO `spelltext_en` VALUES (33168, 'Increases spell power by 81.');
INSERT INTO `spelltext_en` VALUES (33169, 'Increases spell power by 88.');
INSERT INTO `spelltext_en` VALUES (33170, 'Increases spell power by 95.');
INSERT INTO `spelltext_en` VALUES (33233, 'Increases spell power by 61.');
INSERT INTO `spelltext_en` VALUES (33236, 'Increases spell power by 67.');
INSERT INTO `spelltext_en` VALUES (33250, 'Increases spell power by 121.');
INSERT INTO `spelltext_en` VALUES (33253, 'Restores 4320 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Stamina and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (33255, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Strength and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (33258, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 30 Stamina and 20 Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (33260, 'Restores 4320 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 40 attack power and 20 Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (33262, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Agility and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (33264, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 23 Spell Power and 20 Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (33266, 'Restores 4320 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Stamina and 10 Mana every 5 seconds for 30 min.');
INSERT INTO `spelltext_en` VALUES (33269, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and increase Spell Power by 23 and Spirit by 20 for 30 min.');
INSERT INTO `spelltext_en` VALUES (33272, 'Increases the Stamina and Spirit of your pet by 20. Lasts 30 min.');
INSERT INTO `spelltext_en` VALUES (33273, 'Increases spell power by 121.');
INSERT INTO `spelltext_en` VALUES (33274, 'Increases the block value of your shield by 29.');
INSERT INTO `spelltext_en` VALUES (33275, 'Increases spell power by 61.');
INSERT INTO `spelltext_en` VALUES (33297, 'Your harmful spells have a chance to increase your spell haste rating by 320 for 6 secs.');
INSERT INTO `spelltext_en` VALUES (33328, 'Increases spell power by 85.');
INSERT INTO `spelltext_en` VALUES (33333, 'Reduces the duration of the Weakened Soul effect caused by your Power Word: Shield by 2 sec.');
INSERT INTO `spelltext_en` VALUES (33361, 'Teaches you how to be a Master Cook, allowing a maximum of 375 cooking skill.');
INSERT INTO `spelltext_en` VALUES (33381, 'Turns on the Jump-a-tron 4000.');
INSERT INTO `spelltext_en` VALUES (33400, 'Increases spell power by up 150 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (33479, 'Increases armor by 1280 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (33484, 'Increases spell power by 50.');
INSERT INTO `spelltext_en` VALUES (33485, 'Increases attack power by 96.');
INSERT INTO `spelltext_en` VALUES (33486, 'Reduces your threat to enemy targets within 0 yards, making them less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (33488, '+5 Weapon Damage.');
INSERT INTO `spelltext_en` VALUES (33489, 'Increases your haste rating by 132 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (33490, 'Increases spell power by 130.');
INSERT INTO `spelltext_en` VALUES (33491, 'Increases your spell penetration by 18.');
INSERT INTO `spelltext_en` VALUES (33510, 'Sometimes heals bearer of 90 to 120 damage when damaging an enemy in melee and chance on ranged hit to restore 128 to 172 mana to the bearer.');
INSERT INTO `spelltext_en` VALUES (33511, 'Chance on spell hit to restore 128 to 172 mana to the bearer.');
INSERT INTO `spelltext_en` VALUES (33522, 'Chance on spell hit to restore 128 to 172 mana to the bearer.');
INSERT INTO `spelltext_en` VALUES (33531, 'Unlocks the fel cannon at Forge Camp: Hate.');
INSERT INTO `spelltext_en` VALUES (33532, 'Unlocks the fel cannon at Forge Camp: Fear.');
INSERT INTO `spelltext_en` VALUES (33556, 'Increases spell power of Earth Shock, Flame Shock, and Frost Shock by 46.');
INSERT INTO `spelltext_en` VALUES (33565, 'Increases the damage of your Claw and Rake abilites by 30.');
INSERT INTO `spelltext_en` VALUES (33648, 'Chance on melee and ranged critical strike to increase your attack power by 1000 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (33655, 'Drops a super-powered bomb on top of Burning Legion transporters.');
INSERT INTO `spelltext_en` VALUES (33660, 'Summons and dismisses a rideable Swift Pink Hawkstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (33662, 'Increases spell power by 120 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (33667, 'Increases attack power by 200 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (33668, 'Increases maximum health by 900 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (33670, 'Throw the explosives at the fel orc banner at the Gor\'gaz Outpost.');
INSERT INTO `spelltext_en` VALUES (33693, 'Increases the damage dealt by Shred by 88.');
INSERT INTO `spelltext_en` VALUES (33695, 'Increases the spell power of your Exorcism and Holy Wrath spells by 120.');
INSERT INTO `spelltext_en` VALUES (33696, 'Reduces the mana cost of your Lightning Bolt spells by 15.');
INSERT INTO `spelltext_en` VALUES (33703, 'Teaches Voidwalker Suffering (Rank 6).');
INSERT INTO `spelltext_en` VALUES (33704, 'Teaches Felguard Anguish (Rank 1).');
INSERT INTO `spelltext_en` VALUES (33705, 'Teaches Felguard Anguish (Rank 2).');
INSERT INTO `spelltext_en` VALUES (33706, 'Teaches Felguard Anguish (Rank 3).');
INSERT INTO `spelltext_en` VALUES (33715, 'Opens a Fel Orc Cage.');
INSERT INTO `spelltext_en` VALUES (33717, 'Conjures 10 croissants, providing the mage and <his/her> allies with something to eat.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (33720, 'Increases attack power by 60 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (33721, 'Increases spell power by 58 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (33725, 'Restores 7500 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (33726, 'Increases all Stats by 15 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (33744, 'Drops a super-powered bomb on top of Burning Legion transporters.');
INSERT INTO `spelltext_en` VALUES (33746, 'Restores 200 health when you kill a target that gives experience or honor. This effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (33759, 'Restores 200 mana when you kill a target that gives experience or honor. This effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (33770, 'Creates 10 edible Underspore Pods.');
INSERT INTO `spelltext_en` VALUES (33772, 'Restores 4410 health and 4410 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (33780, 'Restores 20 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (33782, 'Increases attack power by 108.');
INSERT INTO `spelltext_en` VALUES (33807, 'Increases haste rating by 260 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (33820, 'Increases spell power by 47.');
INSERT INTO `spelltext_en` VALUES (33821, 'Increases spell power by 70.');
INSERT INTO `spelltext_en` VALUES (33824, 'Launches a missile at a large, heated target.');
INSERT INTO `spelltext_en` VALUES (33828, 'Heal self for 877 to 969 damage.');
INSERT INTO `spelltext_en` VALUES (33830, 'Reduces the cast time of your Cyclone spell by 0.1 sec.');
INSERT INTO `spelltext_en` VALUES (33836, 'Drops a heavy bomb.');
INSERT INTO `spelltext_en` VALUES (33877, 'Reduces the mana cost of your Moonfire spell by 10% of its base cost.');
INSERT INTO `spelltext_en` VALUES (33953, 'Your direct healing and heal over time spells have a chance to increase your haste rating by 505 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (33980, 'Bury Old Whitebark\'s Pendant near the runestone at the Scorched Grove to lay his memory to rest.');
INSERT INTO `spelltext_en` VALUES (33990, 'Permanently enchant a piece of chest armor to grant +15 Spirit. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33991, 'Permanently enchant a piece of chest armor to grant 7 Mana every 5 seconds. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33992, 'Permanently enchant chest armor to increase resilience rating by 15. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33993, 'Permanently enchant gloves to grant 10 critical strike rating. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33994, 'Permanently enchant gloves to increase hit rating by 15.  Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33995, 'Permanently enchant gloves to grant +15 Strength. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33996, 'Permanently enchant gloves to grant 26 attack power. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33997, 'Permanently enchant gloves to increase spell power by 20. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (33999, 'Permanently enchant gloves to increase spell power by 19. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34000, 'Increases spell power by 167 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (34001, 'Permanently enchants bracers to increase Intellect by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34002, 'Permanently enchants bracers to increase attack power by 24. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34003, 'Permanently enchant a cloak to increase spell penetration by 20. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34004, 'Permanently enchant a cloak to increase Agility by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34005, 'Permanently enchant a cloak to increase arcane resistance by 15. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34006, 'Permanently enchant a cloak to increase shadow resistance by 15. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34007, 'Permanently enchant boots to give a minor movement speed increase and increase Agility by 6. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34008, 'Permanently enchant boots to give a minor movement speed increase and increase Stamina by 9. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34009, 'Permanently enchant a shield to increase Stamina by 18. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34010, 'Permanently enchant a melee weapon to increase spell power by 40. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (34040, 'Increases spell power by 54.');
INSERT INTO `spelltext_en` VALUES (34061, 'Increases the block value of your shield by 78.');
INSERT INTO `spelltext_en` VALUES (34063, 'Exposes the reflection of an ancient orc ancestor, causing a soul split. Beware the darkened spirit...');
INSERT INTO `spelltext_en` VALUES (34106, 'You gain an additional 85 Armor Penetration Rating.');
INSERT INTO `spelltext_en` VALUES (34107, 'Steals 105 to 125 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (34128, 'Increases the spell power of the final healing value of your Lifebloom by 105.');
INSERT INTO `spelltext_en` VALUES (34138, 'Causes your Lesser Healing Wave to increase the target\'s Resilience rating by 26 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (34139, 'Causes your Flash of Light to increase the target\'s Resilience rating by 26 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (34140, 'Place Belmara\'s Tome on the Bookshelf in her house.');
INSERT INTO `spelltext_en` VALUES (34141, 'Place Dathric\'s Blade on the Weapon Rack in his house.');
INSERT INTO `spelltext_en` VALUES (34142, 'Place Luminrath\'s Mantle inside the Dresser inside his house.');
INSERT INTO `spelltext_en` VALUES (34144, 'Place Cohlien\'s Hat inside the Footlocker in his house.');
INSERT INTO `spelltext_en` VALUES (34199, 'Protects the bearer against physical attacks, increasing Armor by +2750 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (34210, 'Increases your Spirit by 130 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (34219, 'Drains the targeted Phase Hunter of its energy.');
INSERT INTO `spelltext_en` VALUES (34230, 'Increases spell power of Chain Lightning and Lightning Bolt by 55.');
INSERT INTO `spelltext_en` VALUES (34231, 'Increases spell power of Holy Light by 47.');
INSERT INTO `spelltext_en` VALUES (34241, 'Increases periodic damage done by Rip by 7 per combo point.');
INSERT INTO `spelltext_en` VALUES (34244, 'Increases the attack power bonus on Windfury Weapon attacks by 80.');
INSERT INTO `spelltext_en` VALUES (34246, 'Increases the spell power on the periodic portion of your Lifebloom by 47.');
INSERT INTO `spelltext_en` VALUES (34252, 'Increases the spell power of your Consecration spell by 47.');
INSERT INTO `spelltext_en` VALUES (34253, 'Increases initial and per application periodic damage done by Lacerate by 8.');
INSERT INTO `spelltext_en` VALUES (34258, 'Causes your Judgements to increase your Critical Strike rating by 53 for 5 sec.');
INSERT INTO `spelltext_en` VALUES (34262, 'Causes your Judgements to heal you for 41 to 49.');
INSERT INTO `spelltext_en` VALUES (34291, 'Restores 5100 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (34292, 'Increases the spell power of your Starfire spell by 55.');
INSERT INTO `spelltext_en` VALUES (34294, 'Increases spell power of Healing Wave by 88.');
INSERT INTO `spelltext_en` VALUES (34318, 'Your Water Shield ability grants an additional 27 mana each time it triggers and an additional 2 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (34320, 'Chance on spell critical hit to increase your spell power by 225 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (34323, '20% chance per combo point to heal yourself for 90 to 110 each time you land a finishing move.');
INSERT INTO `spelltext_en` VALUES (34339, 'Increase blunt weapon damage by 12 for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (34340, 'Increase blunt weapon damage by 12 and add 14 critical hit rating for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (34367, 'Siphon a nearby Bloodgem crystal\'s energy.');
INSERT INTO `spelltext_en` VALUES (34372, 'Attempt to contact Archmage Vargoth.');
INSERT INTO `spelltext_en` VALUES (34387, 'Disables a Legion Transporter. Requires 4 Demonic Rune Stones.');
INSERT INTO `spelltext_en` VALUES (34406, 'Summons and dismisses a rideable Brown Elekk.');
INSERT INTO `spelltext_en` VALUES (34495, 'Increases spell power by 159.');
INSERT INTO `spelltext_en` VALUES (34509, 'Increases attack power by 106.');
INSERT INTO `spelltext_en` VALUES (34510, 'Stuns target for 4 sec.');
INSERT INTO `spelltext_en` VALUES (34511, 'Temporarily Increases Health by 1500 and Strength by 150 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (34513, 'Increases Strength by 100 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (34514, 'Increases your chance to resist Fear effects by 5%.');
INSERT INTO `spelltext_en` VALUES (34515, 'Increases your chance to resist Fear effects by 8%.');
INSERT INTO `spelltext_en` VALUES (34518, 'You are protected from all physical attacks for 6 sec, but cannot attack or use physical abilities.');
INSERT INTO `spelltext_en` VALUES (34519, 'Increases dodge rating by 300 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (34520, 'Use on a living Sundered Rumbler or Warp Aberration to extract its power. Warning: may enhance the elemental\'s will to survive.');
INSERT INTO `spelltext_en` VALUES (34526, 'Burns a Blood Elf Tent or Ballista at Sunfury Hold.');
INSERT INTO `spelltext_en` VALUES (34580, 'Attempts to impale the target, causing 600 damage.');
INSERT INTO `spelltext_en` VALUES (34584, 'Chance on spell cast to increase your Spirit by 145 for 15 secs.');
INSERT INTO `spelltext_en` VALUES (34586, 'Your melee and ranged attacks have a chance to inject poison into your target dealing 222 to 332 Nature damage.');
INSERT INTO `spelltext_en` VALUES (34592, 'Increases the block value of your shield by 90.');
INSERT INTO `spelltext_en` VALUES (34593, 'Increases the block value of your shield by 66.');
INSERT INTO `spelltext_en` VALUES (34598, 'Gives a chance when your harmful spells land to increase spell power by 130 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (34603, 'Magically disguises wearer as a member of the Sunfury army.');
INSERT INTO `spelltext_en` VALUES (34611, 'Increases spell power by 159.');
INSERT INTO `spelltext_en` VALUES (34622, 'Blow near the alliance siege tower outside Zeth\'Gor.');
INSERT INTO `spelltext_en` VALUES (34630, 'Take control of the Scrap Reaver X6000. You must stay within the Proving Grounds, or you will lose control of the robot.');
INSERT INTO `spelltext_en` VALUES (34646, 'Activate a Kirin\'Var Rune while standing on it.');
INSERT INTO `spelltext_en` VALUES (34665, 'Administer the antidote to a Hulking Helboar.');
INSERT INTO `spelltext_en` VALUES (34696, 'Steals 285 to 315 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (34717, 'Scry for the identity of the blood elf maintaining the Curse of the Violet Tower. Must be used near Archmage Vargoth\'s Orb.');
INSERT INTO `spelltext_en` VALUES (34749, 'Grants 170 increased spell power for 10 sec when one of your spells is resisted.');
INSERT INTO `spelltext_en` VALUES (34750, 'Show how heroic you are!');
INSERT INTO `spelltext_en` VALUES (34760, 'Increases spell power by 62.');
INSERT INTO `spelltext_en` VALUES (34774, 'Your melee and ranged attacks have a chance to increase your haste rating by 325 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (34790, 'Summons and dismisses a rideable Dark War Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (34795, 'Summons and dismisses a rideable Red Hawkstrider.');
INSERT INTO `spelltext_en` VALUES (34796, 'Increases spell power by 121.');
INSERT INTO `spelltext_en` VALUES (34830, 'Face the direction of the first triangulation point. When nearby, the device will pinpoint the location with a holographic indicator.');
INSERT INTO `spelltext_en` VALUES (34857, 'Face the direction of the second triangulation point. When nearby, the device will pinpoint the location with a holographic indicator.');
INSERT INTO `spelltext_en` VALUES (34888, 'Activate in the Warp Fields to generate an unstable warp rift.');
INSERT INTO `spelltext_en` VALUES (34895, 'Challenge the nether dragon Veraku. The challenge must be issued while standing near the Dragon Skeleton on the southern part of the Celestial Ridge.');
INSERT INTO `spelltext_en` VALUES (34896, 'Summons and dismisses a rideable Cobalt War Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (34897, 'Summons and dismisses a rideable White War Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (34898, 'Summons and dismisses a rideable Silver War Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (34899, 'Summons and dismisses a rideable Tan War Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (34990, 'Combine the two halves of Ekkorash the Inquisitor\'s crest into the completed crest.');
INSERT INTO `spelltext_en` VALUES (34992, 'Summon Ekkorash the Inquisitor while standing near the glowing brazier at the center of the Arklon Ruins.');
INSERT INTO `spelltext_en` VALUES (35018, 'Summons and dismisses a rideable Purple Hawkstrider.');
INSERT INTO `spelltext_en` VALUES (35020, 'Summons and dismisses a rideable Blue Hawkstrider.');
INSERT INTO `spelltext_en` VALUES (35022, 'Summons and dismisses a rideable Black Hawkstrider.');
INSERT INTO `spelltext_en` VALUES (35025, 'Summons and dismisses a rideable Swift Green Hawkstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (35027, 'Summons and dismisses a rideable Swift Purple Hawkstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (35028, 'Summons and dismisses a rideable Swift Warstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (35036, 'Activate near the Void Stones in Void Ridge.');
INSERT INTO `spelltext_en` VALUES (35074, 'Increases the block value of your shield by 69.');
INSERT INTO `spelltext_en` VALUES (35075, 'Increases the block value of your shield by 75.');
INSERT INTO `spelltext_en` VALUES (35077, 'When struck in combat has a chance of increasing your armor by 800 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (35080, 'Chance on hit to increase your attack power by 160 for 10 seconds.');
INSERT INTO `spelltext_en` VALUES (35083, 'Your offensive spells have a chance on hit to increase your spell power by 95 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (35086, 'Your healing and damage spells have a chance to increase your spell power by 93 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (35113, 'Measures errant energy levels near large mana currents.');
INSERT INTO `spelltext_en` VALUES (35126, 'Reduces the duration of any Silence or Interrupt effects used against the wearer by 20%. This effect does not stack with other similar effects.');
INSERT INTO `spelltext_en` VALUES (35129, 'Places a mug on the ground which attracts a nearby Bladespire ogre.');
INSERT INTO `spelltext_en` VALUES (35131, 'Increases your haste rating by 180 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (35139, 'Throw a Boom\'s Doom bomb at the Camp of Boom.');
INSERT INTO `spelltext_en` VALUES (35156, 'Right Click to summon and dismiss your mana wyrmling.');
INSERT INTO `spelltext_en` VALUES (35163, 'Increases spell power by 158 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (35165, 'Increases spell power by 158 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (35166, 'Increases attack power by 278 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (35168, 'Increases the block value of your shield by 102.');
INSERT INTO `spelltext_en` VALUES (35169, 'Increases the block value of your shield by 200 for 40 sec.');
INSERT INTO `spelltext_en` VALUES (35175, 'Increases attack power by 39 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (35239, 'Right Click to summon and dismiss your rabbit.');
INSERT INTO `spelltext_en` VALUES (35246, 'Place near a draenei banner in the Ruins of Farahlon.');
INSERT INTO `spelltext_en` VALUES (35270, 'Restores 7500 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (35271, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Stamina and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (35282, 'Shocks the Scrapped Fel Reaver\'s heart into a state that it can be salvaged.');
INSERT INTO `spelltext_en` VALUES (35337, 'Increases spell power by 150 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (35338, 'Increases spell power by 122.');
INSERT INTO `spelltext_en` VALUES (35349, 'Unlocks Ethereum prisons.');
INSERT INTO `spelltext_en` VALUES (35352, 'Reduces your threat to enemy targets within 0 yards, making them less likely to attack you.');
INSERT INTO `spelltext_en` VALUES (35353, 'Encloses enemy in a temporal rift, increasing the time between their attacks by 10% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (35355, 'Permanently adds 13 dodge rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35372, 'Incinerates withered corpses around and inside Access Shaft Zeon.');
INSERT INTO `spelltext_en` VALUES (35402, 'Permanently adds 15 dodge rating and 10 defense rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35403, 'Permanently adds 15 spell power to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35404, 'Permanently adds 18 spell power and 5 mana per 5 sec. to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35405, 'Permanently adds 15 spell power to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35406, 'Permanently adds 18 spell power and 10 critical strike rating to a shoulder slot item\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35407, 'Permanently adds 26 attack power to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35409, 'It might open your mind and allow you to see things as the ethereals do. It may also give you irreversible brain damage.');
INSERT INTO `spelltext_en` VALUES (35413, 'Cast within the Earthbinder\'s Circle to heal the land at Fallen Sky Ridge.');
INSERT INTO `spelltext_en` VALUES (35415, 'Permanently increase the shadow resistance of an item worn on the chest, legs, hands or feet by 8.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35416, 'Permanently increase the fire resistance of an item worn on the chest, legs, hands or feet by 8.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35417, 'Permanently adds 30 attack power and 10 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35418, 'Permanently increase the frost resistance of an item worn on the chest, legs, hands or feet by 8.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35419, 'Permanently increase the nature resistance of an item worn on the chest, legs, hands or feet by 8.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35420, 'Permanently increase the arcane resistance of an item worn on the chest, legs, hands or feet by 8.\r\n\r\nAttaching the armor kit causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35432, 'Permanently adds 13 defense rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35433, 'Permanently adds 15 defense rating and 10 dodge rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35434, 'Permanently adds 6 mana per 5 sec to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35435, 'Permanently adds 8 mana per 5 sec and 12 spell power to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35436, 'Permanently adds 13 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35437, 'Permanently adds 15 critical strike rating and 12 spell power to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35438, 'Permanently adds 13 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35439, 'Permanently adds 15 critical strike rating and 20 attack power to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35441, 'Permanently adds 7 resistance to all magic schools to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35443, 'Permanently adds 16 defense rating and 17 dodge rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35445, 'Permanently adds 19 spell power and 9 mana per 5 sec. to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35447, 'Permanently adds 22 spell power and 14 hit rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35452, 'Permanently adds 34 attack power and 16 hit rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35453, 'Permanently adds 18 Stamina and 20 resilience rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35454, 'Permanently adds 20 Nature resistance to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35455, 'Permanently adds 20 Arcane resistance to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35456, 'Permanently adds 20 Fire resistance to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35457, 'Permanently adds 20 Frost resistance to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35458, 'Permanently adds 20 Shadow resistance to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35460, 'Use on Arzeth the Merciless to temporarily remove his powers.');
INSERT INTO `spelltext_en` VALUES (35474, 'Unearthly rhythms cause enemies within 0 yds to flee in terror for 2 sec.');
INSERT INTO `spelltext_en` VALUES (35475, 'Increases attack power by 60 and spell power by 30 on nearby party members. Lasts 30 sec. Cannot affect targets level 80 or higher.');
INSERT INTO `spelltext_en` VALUES (35476, 'Increases haste rating on nearby party members by up to 80. Lasts 30 sec. Cannot affect targets level 80 or higher.');
INSERT INTO `spelltext_en` VALUES (35477, 'Increases movement speed of nearby party members by 15%. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (35478, 'Restores 600 health and mana to nearby party members over 15 sec. Cannot affect targets level 80 or higher.');
INSERT INTO `spelltext_en` VALUES (35488, 'Permanently attach cobrahide armor onto pants to increase attack power by 40 and critical strike rating by 10.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35489, 'Permanently attach clefthide armor onto pants to increase Stamina by 30 and Agility by 10.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35490, 'Permanently attach nethercobra armor onto pants to increase attack power by 50 and critical strike rating by 12.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35494, 'Increases attack power by 45.');
INSERT INTO `spelltext_en` VALUES (35495, 'Permanently attach nethercleft leg armor onto pants to increase Stamina by 40 and Agility by 12.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (35683, 'Places a Protectorate disruptor at one of Salhadaar\'s power conduits.');
INSERT INTO `spelltext_en` VALUES (35685, 'Imbues the recipient with electrically charged attacks that break down seeping sludge and void waste.');
INSERT INTO `spelltext_en` VALUES (35707, 'Unlocks Captain Tyralius\'s Prison');
INSERT INTO `spelltext_en` VALUES (35710, 'Summons and dismisses a rideable Gray Elekk.');
INSERT INTO `spelltext_en` VALUES (35711, 'Summons and dismisses a rideable Purple Elekk.');
INSERT INTO `spelltext_en` VALUES (35712, 'Summons and dismisses a rideable Great Green Elekk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (35713, 'Summons and dismisses a rideable Great Blue Elekk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (35714, 'Summons and dismisses a rideable Great Purple Elekk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (35725, 'Unlocks Ethereum stasis chambers.');
INSERT INTO `spelltext_en` VALUES (35733, 'Increases your melee and ranged attack power by 200. Effect lasts for 20 sec.');
INSERT INTO `spelltext_en` VALUES (35734, 'Drops a phase disruptor that homes in on the void conduit atop Manaforge Ultris.');
INSERT INTO `spelltext_en` VALUES (35739, 'Extinguish the Rune of Spite to close the Legion gateway.');
INSERT INTO `spelltext_en` VALUES (35745, 'Creates a portal, teleporting group members that use it to Socrethar\'s Seat and back.');
INSERT INTO `spelltext_en` VALUES (35755, 'Run a diagnostic on eco-dome generators. Must be used near the generator in the eastern section of Eco-Dome Sutheron.');
INSERT INTO `spelltext_en` VALUES (35771, 'Attempt to tag a Talbuk Doe or Talbuk Sire below 20% health.');
INSERT INTO `spelltext_en` VALUES (35772, 'Change the frequency of the dome\'s energy in the vicinity of a Farahlon Lasher.');
INSERT INTO `spelltext_en` VALUES (35793, 'Permanently enchant a Melee Weapon to occasionally increase Agility by 120 and attack speed slightly. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35794, 'Permanently enchant a Melee Weapon to add up to 54 damage to Frost and Shadow spells. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35796, 'Permanently enchant a Melee Weapon to add up to 40 damage to all spells. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35806, 'Permanently enchant boots to give a minor movement speed increase and 9 Stamina. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35809, 'Permanently enchant boots to increase Agility by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35810, 'Permanently enchant boots to increase Stamina by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35813, 'Permanently enchant a cloak to increase Agility by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35814, 'Permanently enchant a cloak to increase Spell Penetration by 20. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35816, 'Permanently enchant gloves to grant +20 Spell Damage. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35820, 'Permanently enchant gloves to grant 30 attack power. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35824, 'Permanently enchant a piece of chest armor to add 6 to all stats. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35826, 'Permanently enchant a piece of chest armor to grant +150 health. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (35828, 'Restores 26 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (35833, 'Restores 15 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (35836, 'Restores 20 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (35893, 'Increases spell power by 254.');
INSERT INTO `spelltext_en` VALUES (35907, 'Right Click to summon and dismiss your moth.');
INSERT INTO `spelltext_en` VALUES (35909, 'Right Click to summon and dismiss your moth.');
INSERT INTO `spelltext_en` VALUES (35910, 'Right Click to summon and dismiss your moth.');
INSERT INTO `spelltext_en` VALUES (35911, 'Right Click to summon and dismiss your moth.');
INSERT INTO `spelltext_en` VALUES (35936, 'Activates the Mana Bomb.');
INSERT INTO `spelltext_en` VALUES (36027, 'Right Click to summon and dismiss your dragonhawk hatchling.');
INSERT INTO `spelltext_en` VALUES (36028, 'Right Click to summon and dismiss your dragonhawk hatchling.');
INSERT INTO `spelltext_en` VALUES (36029, 'Right Click to summon and dismiss your dragonhawk hatchling.');
INSERT INTO `spelltext_en` VALUES (36030, 'Summons the forces of nature upon a Living Grove seedling in order to accelerate the growth of a new defender.');
INSERT INTO `spelltext_en` VALUES (36031, 'Right Click to summon and dismiss your dragonhawk hatchling.');
INSERT INTO `spelltext_en` VALUES (36034, 'Right Click to summon and dismiss your firefly.');
INSERT INTO `spelltext_en` VALUES (36041, 'Increases attack power by 270 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (36062, 'Increases spell power by 46.');
INSERT INTO `spelltext_en` VALUES (36065, 'Increases spell power by 187.');
INSERT INTO `spelltext_en` VALUES (36068, 'Increases attack power by 104.');
INSERT INTO `spelltext_en` VALUES (36069, 'Increases attack power by 112.');
INSERT INTO `spelltext_en` VALUES (36070, 'Chance on melee attack to gain 10 Energy or 5 Rage.');
INSERT INTO `spelltext_en` VALUES (36071, 'Increases feral combat skill rating by 17.');
INSERT INTO `spelltext_en` VALUES (36098, 'Increases spell power by 53.');
INSERT INTO `spelltext_en` VALUES (36107, 'Places a totem of spirits on the ground that is used to collect elemental souls from enraged elemental spirits.');
INSERT INTO `spelltext_en` VALUES (36111, 'Increases the critical strike rating of your next attack made within 4 seconds by 900.');
INSERT INTO `spelltext_en` VALUES (36282, 'Permanently enchant a ring to increase spell power by 12. Only the enchanter\'s rings can be enchanted, and enchanting a ring will cause it to become soulbound. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (36310, 'Reduces the Bloodmaul dire wolf\'s size and aggression. Multiples of this spell may not be applied to the same wolf at the same time. Cannot be used upon a hibernating wolf.');
INSERT INTO `spelltext_en` VALUES (36314, 'Use on Socrethar to release the energy contained in this item, weakening him and making him vulnerable to your attacks.');
INSERT INTO `spelltext_en` VALUES (36331, 'Increases the block value of your shield by 51.');
INSERT INTO `spelltext_en` VALUES (36347, 'Increases spell power by 127 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (36372, 'Increases block rating by 125 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (36374, 'Place underneath a Zeth\'Gor tower.');
INSERT INTO `spelltext_en` VALUES (36385, 'Increases spell power by 325.');
INSERT INTO `spelltext_en` VALUES (36387, 'Increases spell power by 318.');
INSERT INTO `spelltext_en` VALUES (36409, 'Increases attack power by 150.');
INSERT INTO `spelltext_en` VALUES (36411, 'Restores 38 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (36412, 'Summons a bundle of Nether Spikes for use as ammo.');
INSERT INTO `spelltext_en` VALUES (36413, 'Increases your ranged weapon critical strike damage bonus by 50%.');
INSERT INTO `spelltext_en` VALUES (36422, 'Increases spell power by 118.');
INSERT INTO `spelltext_en` VALUES (36425, 'Increases spell power by 118.');
INSERT INTO `spelltext_en` VALUES (36428, 'Increases spell power by 103.');
INSERT INTO `spelltext_en` VALUES (36429, 'Increases attack power by 361 in Cat, Bear, Dire Bear, and Moonkin forms only.');
INSERT INTO `spelltext_en` VALUES (36430, 'Increases spell power by 103.');
INSERT INTO `spelltext_en` VALUES (36432, 'Increases spell power by 125 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (36460, 'Deconsolodates and transports the targeted sapping equipment back to the nether trench at Area 52.');
INSERT INTO `spelltext_en` VALUES (36478, 'Increases magical damage taken by the target by 5%, and dispels Prince Kael\'thas\' Mind Control when a melee ability lands. Can be applied up to 5 times. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (36479, 'Increases your movement speed by 50%, and your melee attack speed by 20% for 30 sec.');
INSERT INTO `spelltext_en` VALUES (36480, 'Places a mental protection field on friendly targets within 0 yards, granting immunity to Stun, Silence, and Disorient effects.');
INSERT INTO `spelltext_en` VALUES (36481, 'Shields the caster, absorbing 100000 damage and making the caster immune to Fear and Snare effects for 4 sec.');
INSERT INTO `spelltext_en` VALUES (36482, 'Increases Physical damage taken by the target by 5%. Can be applied up to 5 times. Lasts 30 sec.');
INSERT INTO `spelltext_en` VALUES (36488, 'Friendly targets of the caster\'s heals gain an effect that reduces the damage taken by Fire and Shadow spells by 50% for 30 sec.');
INSERT INTO `spelltext_en` VALUES (36532, 'Plants the Bladespire clan banner atop Northmaul Tower inside Bloodmaul Hold.');
INSERT INTO `spelltext_en` VALUES (36546, 'Place within the Cursed Cauldron...');
INSERT INTO `spelltext_en` VALUES (36548, 'Unlocks a Coilskar chest.');
INSERT INTO `spelltext_en` VALUES (36565, 'Create a Cache of the Legion Key by combining a Jagged Blue Crystal and Jagged Red Crystal.');
INSERT INTO `spelltext_en` VALUES (36587, 'Allows the user to see through the eyes of a fiery vision guide, which will lead them to the final Thunderlord relic.');
INSERT INTO `spelltext_en` VALUES (36652, 'Blow this whistle when you are on top of a tuber mound and if a domesticated felboar is near, they will come and dig up a tuber. Better protect those felboars!');
INSERT INTO `spelltext_en` VALUES (36686, 'Conversion of these item_display into Shadowcloth can only be done at the Altar of Shadows in Shadowmoon, and only ocassionally can it\'s power be used in such a way.');
INSERT INTO `spelltext_en` VALUES (36702, 'Summons and dismisses Attumen the Huntsman\'s steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (36851, 'Throw into the ground in front of Thane Illskar near the center of the battle ring in The Underhalls.');
INSERT INTO `spelltext_en` VALUES (36867, 'Summons a Draenei Tomb Guardian in the depths of the Tomb of Lights.');
INSERT INTO `spelltext_en` VALUES (36890, 'Rips the dimensional walls asunder and transports you to Area 52 in Netherstorm.  There are technical problems that sometimes occur, but that\'s what Goblin Engineering is all about!');
INSERT INTO `spelltext_en` VALUES (36904, 'Use at one of the circles of power in Lashh\'an.');
INSERT INTO `spelltext_en` VALUES (36923, 'Click to waive Tally Zapnabber\'s liability.');
INSERT INTO `spelltext_en` VALUES (36941, 'Safely transport yourself to Toshley\'s Station in Blade\'s Edge!  Nothing to worry about while using this baby!  Gnomish know-how will get you there in a safe and timely fashion!');
INSERT INTO `spelltext_en` VALUES (37015, 'Summons and dismisses a rideable Swift Nether Drake mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (37055, 'Trigger while standing on the glyph at the center of Legion Hold to unleash a wave of magic and disable the stockpiled infernals.');
INSERT INTO `spelltext_en` VALUES (37058, 'Increases Stamina by 20 for 15 min and increases the drinker\'s desire to converse.');
INSERT INTO `spelltext_en` VALUES (37062, 'Places a bundle of bloodthistle at the end of the bridge.');
INSERT INTO `spelltext_en` VALUES (37065, 'Place the carcass at the base of the arakkoan scarecrow known as Torgos\'s Bane.');
INSERT INTO `spelltext_en` VALUES (37083, 'Increases spell power by 56.');
INSERT INTO `spelltext_en` VALUES (37096, 'Disguises the user as a blood elf servant of Illidan.');
INSERT INTO `spelltext_en` VALUES (37097, 'Disguise yourself as an innocuous object in order to infiltrate Legion Hold. While hunkered underneath the box, you will not be able to move. May only be used while standing near the Legion Communication Device at Legion Hold.');
INSERT INTO `spelltext_en` VALUES (37136, 'Encases an electromental within a magneto sphere. Careful, the encased electromental will become more powerful!');
INSERT INTO `spelltext_en` VALUES (37165, 'Your Cheap Shot and Kidney Shot attacks grant you 160 haste rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (37166, 'Your Eviscerate and Envenom abilities cost 10 less energy.');
INSERT INTO `spelltext_en` VALUES (37167, 'Increases the duration of your Slice and Dice ability by 3 sec.');
INSERT INTO `spelltext_en` VALUES (37168, 'Your finishing moves have a % chance to grant you a combo point.');
INSERT INTO `spelltext_en` VALUES (37169, 'Your Eviscerate and Envenom abilities cause 40 extra damage per combo point.');
INSERT INTO `spelltext_en` VALUES (37170, 'Your attacks have a chance to make your next finishing move cost no energy.');
INSERT INTO `spelltext_en` VALUES (37172, 'Charge the Vekh\'nir crystal.');
INSERT INTO `spelltext_en` VALUES (37173, 'Your special attacks have a chance to give you 142 armor penetration rating for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37180, 'Your Consecration ability costs 15% less mana.');
INSERT INTO `spelltext_en` VALUES (37181, 'Reduces the cooldown on your Righteous Defense ability by 2 sec.');
INSERT INTO `spelltext_en` VALUES (37182, 'Increases the amount healed by your Judgement of Light by 20.');
INSERT INTO `spelltext_en` VALUES (37183, 'Reduces the cooldown on your Divine Favor ability by 15 sec.');
INSERT INTO `spelltext_en` VALUES (37184, 'Increases the damage dealt by your Seal of Righteousness, Seal of Vengeance, or Seal of Corruption by 10%.');
INSERT INTO `spelltext_en` VALUES (37185, 'Increases the damage dealt by your Holy Shield by 15%.');
INSERT INTO `spelltext_en` VALUES (37186, 'Increases the damage of your Judgements by 33.');
INSERT INTO `spelltext_en` VALUES (37187, 'Increases the damage dealt by your Judgements by 10%.');
INSERT INTO `spelltext_en` VALUES (37188, 'Each time you cast a Judgement, your party members gain 50 mana.');
INSERT INTO `spelltext_en` VALUES (37189, 'Your critical heals from Flash of Light and Holy Light reduce the cast time of your next Holy Light spell by 0.5 sec for 10 sec. This effect cannot occur more than once per minute.');
INSERT INTO `spelltext_en` VALUES (37190, 'Increases the damage from your Retribution Aura by 15.');
INSERT INTO `spelltext_en` VALUES (37191, 'Each time you use your Holy Shield ability, you gain 100 block value against a single attack in the next 12 sec.');
INSERT INTO `spelltext_en` VALUES (37194, 'Reduces the cost of your Judgements by 35.');
INSERT INTO `spelltext_en` VALUES (37195, 'Each time you cast a Judgement, there is a chance it will heal all nearby party members for 244 to 256.');
INSERT INTO `spelltext_en` VALUES (37197, 'Each time you cast a spell, there is chance you will gain 290 spell power.');
INSERT INTO `spelltext_en` VALUES (37207, 'Your Chain Lightning Spell now only loses 17% of its damage per jump.');
INSERT INTO `spelltext_en` VALUES (37208, 'Hurls your axe in an attempt to decapitate your target causing 513 to 567 damage.');
INSERT INTO `spelltext_en` VALUES (37209, 'Your Water Shield ability grants an additional 56 mana each time it triggers and an additional 3 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (37210, 'Your Mana Spring Totem ability grants an additional 3 mana every 2 sec.');
INSERT INTO `spelltext_en` VALUES (37211, 'Reduces the cooldown on your Nature\'s Swiftness ability by 24 sec.');
INSERT INTO `spelltext_en` VALUES (37212, 'Your Flametongue Weapon ability grants an additional 20 spell power.');
INSERT INTO `spelltext_en` VALUES (37213, 'Your offensive spell critical strikes have a chance to reduce the base mana cost of your next spell by 270.');
INSERT INTO `spelltext_en` VALUES (37221, 'Consumes an Infused Vekh\'nir Crystal to test Dertrok\'s experimental wand.');
INSERT INTO `spelltext_en` VALUES (37223, 'Your Strength of Earth Totem ability grants an additional 12 strength.');
INSERT INTO `spelltext_en` VALUES (37224, 'Your Stormstrike ability does an additional 30 damage per weapon.');
INSERT INTO `spelltext_en` VALUES (37225, 'Reduces the cost of your Lesser Healing Wave spell by 5%.');
INSERT INTO `spelltext_en` VALUES (37227, 'Your critical heals from Healing Wave, Lesser Healing Wave, and Chain Heal reduce the cast time of your next Healing Wave spell by 0.5 sec for 10 sec. This effect cannot occur more than once per minute.');
INSERT INTO `spelltext_en` VALUES (37228, 'Each time you cast an offensive spell, there is a chance your next Lesser Healing Wave will cost 380 less mana.');
INSERT INTO `spelltext_en` VALUES (37236, 'Unleashes the ancient words at the Altar of Damnation in Shadowmoon Valley.');
INSERT INTO `spelltext_en` VALUES (37237, 'Your Lightning Bolt critical strikes have a chance to grant you 120 mana.');
INSERT INTO `spelltext_en` VALUES (37239, 'Your melee attacks have a chance to reduce the cast time of your next Lesser Healing Wave by 1.5 sec.');
INSERT INTO `spelltext_en` VALUES (37241, 'You gain 5% additional haste from your Flurry ability.');
INSERT INTO `spelltext_en` VALUES (37247, 'Your Nature spells have a chance to restore 335 mana.');
INSERT INTO `spelltext_en` VALUES (37285, 'Disrupt the summoning of infernal souls within the summoning chamber of the Deathforge.');
INSERT INTO `spelltext_en` VALUES (37286, 'Your Rejuvenation spell now also grants 35 dodge rating.');
INSERT INTO `spelltext_en` VALUES (37287, 'Reduces the mana cost of all shapeshifting by 25%.');
INSERT INTO `spelltext_en` VALUES (37288, 'Your helpful spells have a chance to restore up to 120 mana.');
INSERT INTO `spelltext_en` VALUES (37292, 'Reduces the cooldown on your Nature\'s Swiftness ability by 24 sec.');
INSERT INTO `spelltext_en` VALUES (37295, 'Your harmful spells have a chance to restore up to 120 mana.');
INSERT INTO `spelltext_en` VALUES (37297, 'Reduces the cooldown on your Innervate ability by 48 sec.');
INSERT INTO `spelltext_en` VALUES (37298, 'Increases your armor by 1400 in Bear Form and Dire Bear Form.');
INSERT INTO `spelltext_en` VALUES (37299, 'Increases your strength by 30 in Cat Form.');
INSERT INTO `spelltext_en` VALUES (37306, 'Your melee attacks in Bear Form and Dire Bear Form have a chance to generate 10 additional rage.');
INSERT INTO `spelltext_en` VALUES (37311, 'Your melee attacks in Cat Form have a chance to generate 20 additional energy.');
INSERT INTO `spelltext_en` VALUES (37313, 'Increases the duration of your Regrowth spell by 6 sec.');
INSERT INTO `spelltext_en` VALUES (37314, 'Increases the final amount healed by your Lifebloom spell by 150.');
INSERT INTO `spelltext_en` VALUES (37315, 'When you shift out of Bear Form, Dire Bear Form, or Cat Form, your next Regrowth spell takes 2 fewer sec. to cast.');
INSERT INTO `spelltext_en` VALUES (37320, 'Consumes an Infused Vekh\'nir Crystal to test Dertrok\'s experimental wand.');
INSERT INTO `spelltext_en` VALUES (37322, 'Consumes an Infused Vekh\'nir Crystal to test Dertrok\'s experimental wand.');
INSERT INTO `spelltext_en` VALUES (37323, 'Consumes an Infused Vekh\'nir Crystal to test Dertrok\'s experimental wand.');
INSERT INTO `spelltext_en` VALUES (37324, 'When you shift out of Moonkin Form, your next Regrowth spell costs 450 less mana.');
INSERT INTO `spelltext_en` VALUES (37327, 'Increases your Starfire damage against targets afflicted with Moonfire or Insect Swarm by 10%.');
INSERT INTO `spelltext_en` VALUES (37333, 'Your Shred ability deals an additional 75 damage, and your Lacerate ability does an additional 15 per application.');
INSERT INTO `spelltext_en` VALUES (37336, 'Your spells and attacks in each form have a chance to grant you a blessing for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37346, 'Destroys technological terror constructs.');
INSERT INTO `spelltext_en` VALUES (37360, 'Imbue your weapon with power, increasing attack power against undead and demons by 150. Lasts 5 min. Cannot be used on item_display level 138 and higher.');
INSERT INTO `spelltext_en` VALUES (37375, 'Grants your pet 45 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (37376, 'Your Seed of Corruption deals 180 additional damage when it detonates.');
INSERT INTO `spelltext_en` VALUES (37377, 'Your shadow damage spells have a chance to grant you 135 bonus shadow damage for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37380, 'Increases the duration of your Corruption and Immolate abilities by 3 sec.');
INSERT INTO `spelltext_en` VALUES (37381, 'Causes your pet to be healed for 15% of the damage you deal.');
INSERT INTO `spelltext_en` VALUES (37386, 'Increases your pet\'s resistances by 130 and increases your spell power by 48.');
INSERT INTO `spelltext_en` VALUES (37390, 'Places an oscillating frequency scanner on the ground, which lasts for 3 min. It cannot be placed within 25 yards of another scanner. The oscillation field from each scanner extends out in a 40 yard radius.');
INSERT INTO `spelltext_en` VALUES (37423, 'Reduces cast time on your Flamestrike ability by 0.25 sec.');
INSERT INTO `spelltext_en` VALUES (37424, 'When you are hit while Mana Shield is active, you have a chance to gain 100 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37426, 'Use 6 Ruuan\'ok Claws to summon a Harbinger of the Raven at the Ruuan\'ok Oracle Circle.');
INSERT INTO `spelltext_en` VALUES (37438, 'Gives you a 100% chance to avoid interruption caused by damage while casting Fireball or Frostbolt.');
INSERT INTO `spelltext_en` VALUES (37439, 'Reduces the cooldown on Presence of Mind by 24 sec, on Blast Wave by 4 sec, and on Ice Block by 40 sec.');
INSERT INTO `spelltext_en` VALUES (37441, 'Increases the damage and mana cost of Arcane Blast by 5%.');
INSERT INTO `spelltext_en` VALUES (37443, 'Your spell critical strikes grant you 70 spell power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (37447, 'You gain 25% more mana when you use a mana gem. In addition, using a mana gem grants you 225 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37452, 'Opens the Doctor\'s Strongbox.');
INSERT INTO `spelltext_en` VALUES (37468, 'Allows the bearer to see into the ghost world of Shadowmoon Valley. Only effective in Shadowmoon Valley.');
INSERT INTO `spelltext_en` VALUES (37475, 'Activate the pendant\'s ability to steal the souls of fallen arakkoa.');
INSERT INTO `spelltext_en` VALUES (37481, 'Reduces the cooldown on your traps by 4 sec.');
INSERT INTO `spelltext_en` VALUES (37483, 'Each time you use your Kill Command ability, you gain an additional 85 armor penetration rating for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37484, 'Reduces the chance your Feign Death ability will be resisted by 5%.');
INSERT INTO `spelltext_en` VALUES (37485, 'Reduces the mana cost of your Multi-Shot ability by 10%.');
INSERT INTO `spelltext_en` VALUES (37495, 'Allows the bearer to see into the ghost world of Shadowmoon Valley. Only effective in Shadowmoon Valley.');
INSERT INTO `spelltext_en` VALUES (37505, 'Your Steady Shot ability has 5% increased critical strike chance.');
INSERT INTO `spelltext_en` VALUES (37507, 'Your Arcane Shot ability increases the damage dealt by all other damaging shots by 40 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (37512, 'All of your shout abilities cost 2 less rage.');
INSERT INTO `spelltext_en` VALUES (37513, 'Your Charge ability generates an additional 5 rage.');
INSERT INTO `spelltext_en` VALUES (37514, 'You have a chance each time you parry to gain Blade Turning, absorbing 200 damage for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37516, 'Your Revenge ability causes your next damaging ability to do 10% more damage.');
INSERT INTO `spelltext_en` VALUES (37518, 'Your Whirlwind ability costs 5 less rage.');
INSERT INTO `spelltext_en` VALUES (37519, 'You gain an additional 2 rage each time one of your attacks is parried or dodged.');
INSERT INTO `spelltext_en` VALUES (37522, 'Each time you use your Shield Block ability, you gain 100 block value against a single attack in the next 12 sec.');
INSERT INTO `spelltext_en` VALUES (37525, 'You have a chance each time you are hit to gain 200 haste rating for 10 sec.');
INSERT INTO `spelltext_en` VALUES (37528, 'Your Overpower ability now grants you 100 attack power for 5 sec.');
INSERT INTO `spelltext_en` VALUES (37535, 'Your Bloodthirst and Mortal Strike abilities cost 5 less rage.');
INSERT INTO `spelltext_en` VALUES (37536, 'Battle Shout grants you up to 110 additional attack power.');
INSERT INTO `spelltext_en` VALUES (37542, 'Increases spell power by 168.');
INSERT INTO `spelltext_en` VALUES (37556, 'Gives you a 30% chance to avoid interruption caused by damage while casting Binding Heal.');
INSERT INTO `spelltext_en` VALUES (37558, 'Your Prayer of Mending heals an additional 100 health.');
INSERT INTO `spelltext_en` VALUES (37564, 'Your Prayer of Healing spell now also causes an additional 150 healing over 9 sec.');
INSERT INTO `spelltext_en` VALUES (37568, 'Each time you cast Flash Heal, your next Greater Heal cast within 15 sec has its casting time reduced by 0.1, stacking up to 5 times.');
INSERT INTO `spelltext_en` VALUES (37570, 'Your Shadowfiend now has 75 more stamina and lasts 3 sec. longer.');
INSERT INTO `spelltext_en` VALUES (37571, 'Your Mind Flay and Smite spells deal 5% more damage.');
INSERT INTO `spelltext_en` VALUES (37573, 'Targets whatever hatched out of the nether drake egg in order to temporally change it. Can be used to change the target repeatedly.');
INSERT INTO `spelltext_en` VALUES (37594, 'If your Greater Heal brings the target to full health, you gain 100 mana.');
INSERT INTO `spelltext_en` VALUES (37600, 'Each time you cast an offensive spell, there is a chance your next spell will cost 150 less mana.');
INSERT INTO `spelltext_en` VALUES (37603, 'Each time your Shadow Word: Pain deals damage, it has a chance to grant your next spell cast within 15 sec 100 spell power.');
INSERT INTO `spelltext_en` VALUES (37607, 'Increases your hit rating by 35.');
INSERT INTO `spelltext_en` VALUES (37608, 'Increases your hit rating by 35.');
INSERT INTO `spelltext_en` VALUES (37609, 'Increases your hit rating by 35.');
INSERT INTO `spelltext_en` VALUES (37610, 'Increases your hit rating by 35.');
INSERT INTO `spelltext_en` VALUES (37611, 'Your attacks have a chance to grant you 160 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37617, 'Your attacks have a chance to grant you 160 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37618, 'Your attacks have a chance to grant you 160 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37619, 'Your harmful spells have a chance to grant you 110 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37649, 'Increases spell power against Demons by 185.');
INSERT INTO `spelltext_en` VALUES (37651, 'Increases attack power by 93 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (37652, 'Increases attack power by 150 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (37655, 'Each time you cast a spell, there is chance you will gain up to 95 mana per 5 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (37657, 'You gain an Electrical Charge each time you cause a damaging spell critical strike. When you reach 3 Electrical Charges, they will release, firing a Lightning Bolt for 694 to 806 damage. Electrical Charge cannot be gained more often than once every 2.5 sec.');
INSERT INTO `spelltext_en` VALUES (37678, 'Allows the imbiber to see the shadowy spirits of Skettis.');
INSERT INTO `spelltext_en` VALUES (37690, 'Summons a Fel Guard Hound to follow you around.');
INSERT INTO `spelltext_en` VALUES (37705, 'Each healing spell you cast has a % chance to make your next heal cast within 15 sec cost 450 less mana.');
INSERT INTO `spelltext_en` VALUES (37736, 'Increases the damage dealt by Mangle (Cat) by 30 and the damage dealt by Mangle (Bear) by 51.75.');
INSERT INTO `spelltext_en` VALUES (37737, 'Reduces the mana cost of Regrowth by 65.');
INSERT INTO `spelltext_en` VALUES (37738, 'Reduces the mana cost of Healing Wave by 24.');
INSERT INTO `spelltext_en` VALUES (37739, 'Reduces the mana cost of Holy Light by 34.');
INSERT INTO `spelltext_en` VALUES (37740, 'Reduces the mana cost of Lightning Bolt by 27.');
INSERT INTO `spelltext_en` VALUES (37742, 'Increases your block rating by 42 while Holy Shield is active.');
INSERT INTO `spelltext_en` VALUES (37760, 'Increases the damage dealt by Wrath by 25.');
INSERT INTO `spelltext_en` VALUES (37762, 'Reduces the mana cost of Stormstrike by 22.');
INSERT INTO `spelltext_en` VALUES (37763, 'Increases the damage dealt by Crusader Strike by 24.75.');
INSERT INTO `spelltext_en` VALUES (37817, 'Increases spell power slightly.');
INSERT INTO `spelltext_en` VALUES (37830, 'Activate the repolarized magneto sphere around yourself to absorb scalewing serpent lightning strikes. However, while the sphere is up, you will take more damage from the lightning and move more slowly. The shield can be turned off at any time.');
INSERT INTO `spelltext_en` VALUES (37834, 'Dispels the magical wards that keep Azaloth banished.');
INSERT INTO `spelltext_en` VALUES (37877, 'Your heals each cost 22 less mana for the next 15 sec.');
INSERT INTO `spelltext_en` VALUES (37889, 'Permanently adds 8 resistance to all 5 schools of magic to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (37891, 'Permanently adds 17 Strength and 16 Intellect to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (37896, 'Launch yourself from Outland to the stars. For the safety of others, please clear the launching platform before use.');
INSERT INTO `spelltext_en` VALUES (37898, 'Spill blood drawn from a Wrath Priestess to provoke Sathal\'s wrath.');
INSERT INTO `spelltext_en` VALUES (37899, 'Places a Multi-Spectrum Light Trap on the ground in Razaan\'s Landing for 30 sec. Ideally the trap will attract a nearby Razaani light ball.');
INSERT INTO `spelltext_en` VALUES (37904, 'Plant into the ground at Portal Clearing near Marshlight Lake to awake the demon who sleeps by the sunken portal.');
INSERT INTO `spelltext_en` VALUES (37906, 'Rip the pages from this book when Varedis uses Metamorphosis to deprive him of his power.');
INSERT INTO `spelltext_en` VALUES (37952, 'Increases spell power by 62.');
INSERT INTO `spelltext_en` VALUES (37976, 'Increases attack power by 134.');
INSERT INTO `spelltext_en` VALUES (37984, 'Quench the Forged Illidari-Bane Blade in the lava pools near the top of the Hand of Gul\'dan.');
INSERT INTO `spelltext_en` VALUES (38119, 'Signals a Kor\'kron Wind Rider to fly to your location.');
INSERT INTO `spelltext_en` VALUES (38134, 'Throws the Tainted Core to a friendly target.');
INSERT INTO `spelltext_en` VALUES (38156, 'Combine 5 Costume Scraps into an Overseer Disguise.');
INSERT INTO `spelltext_en` VALUES (38157, 'Transforms you into the likeness of Overseer Nuaar for 3 min. It can only be used within the Blackwing Coven area of the Blade\'s Edge Mountains. Maxnar the Ashmaw, and his Wyrmcult Blessed, can see through the disguise. Looting, taking a hostile action, or casting beneficial spells will drop the disguise.');
INSERT INTO `spelltext_en` VALUES (38170, 'Spin while flying to Ruuan Weald...');
INSERT INTO `spelltext_en` VALUES (38173, 'Summons Spirit to spy on Bloodmaul ogres in conversation.');
INSERT INTO `spelltext_en` VALUES (38174, 'Reduces melee damage taken by 2.');
INSERT INTO `spelltext_en` VALUES (38177, 'Throw a net at the targeted wyrmcult blackwhelp, which will immobilize it and put it into your pack.');
INSERT INTO `spelltext_en` VALUES (38202, 'Plunge into the flames of a fallen Fel Reaver to heat the materials encased in the mold.');
INSERT INTO `spelltext_en` VALUES (38214, 'Opens the Heavy Iron Portcullis in the Deathforge.');
INSERT INTO `spelltext_en` VALUES (38224, 'Disguises the user as a blood elf servant of Illidan.');
INSERT INTO `spelltext_en` VALUES (38226, 'Inflicts weapon damage plus 300 to an enemy and its nearest allies, affecting up to 3 targets. Enemies hit by this ability also suffer periodic Shadow damage every 3 sec. for 12 sec.');
INSERT INTO `spelltext_en` VALUES (38249, 'Signals a Wildhammer Gryphon Rider to fly to your location.');
INSERT INTO `spelltext_en` VALUES (38273, 'Opens the Eclipsion Chest at Eclipse Point.');
INSERT INTO `spelltext_en` VALUES (38282, 'Increases your haste rating by 400 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (38284, 'Restores 170 to 230 mana.');
INSERT INTO `spelltext_en` VALUES (38290, 'Your ranged attacks have a chance to increase your attack power by 250 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (38297, 'Increases your pet\'s attack power by 70, armor by 490 and Stamina by 52.');
INSERT INTO `spelltext_en` VALUES (38299, 'Your direct healing spells have a chance to place a heal over time on your target, healing 500 over 12 sec.');
INSERT INTO `spelltext_en` VALUES (38307, 'Your attacks have a chance to allow you to gain 62 armor penetration rating for 10 sec. This effect stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (38308, 'Grants an extra attack on your next swing.');
INSERT INTO `spelltext_en` VALUES (38314, 'Reduces the base Mana cost of your shapeshifting spells by 200.');
INSERT INTO `spelltext_en` VALUES (38318, 'Transforms you into a helpless Blackwhelp for 15 min.  You cannot attack or cast spells while transformed.');
INSERT INTO `spelltext_en` VALUES (38319, 'Your harmful spells have a chance to increase your haste rating by 280 for 6 secs.');
INSERT INTO `spelltext_en` VALUES (38321, 'Increases the amount healed by Healing Touch by 136.');
INSERT INTO `spelltext_en` VALUES (38322, 'Increases the base amount healed by Chain Heal by 87.');
INSERT INTO `spelltext_en` VALUES (38325, 'Heals 1300 damage over 12 sec.');
INSERT INTO `spelltext_en` VALUES (38326, 'Reduces the threat from your harmful critical strikes.');
INSERT INTO `spelltext_en` VALUES (38332, 'For the next 20 sec, your direct heals grant Fecundity to your target, increasing the healing received by the target by up to 30. Fecundity lasts 10 sec and stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (38334, 'Your spell casts have a chance to allow [15-max(PL-70, 0)/2]% of your mana regeneration to continue while casting for 15 sec.');
INSERT INTO `spelltext_en` VALUES (38336, 'Place the incense near the candles in Malukaz\'s hut to begin the spirit summoning ceremony.');
INSERT INTO `spelltext_en` VALUES (38345, 'Light at the Bleeding Hollow Forge.');
INSERT INTO `spelltext_en` VALUES (38347, 'Your spell critical strikes have a chance to increase your spell power by 190 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (38351, 'Increases your defense rating by 165, but decreases your melee and ranged attack power by 330. Effect lasts for 15 sec.');
INSERT INTO `spelltext_en` VALUES (38362, 'Calls forth Rexxar\'s friend, Huffer. He will lead Grulloc on a merry chase while you loot Grulloc\'s Sack.');
INSERT INTO `spelltext_en` VALUES (38388, 'Increases the haste from your Slice and Dice ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38389, 'Increases the damage dealt by your Backstab, Sinister Strike, Mutilate, and Hemorrhage abilities by 6%.');
INSERT INTO `spelltext_en` VALUES (38390, 'Increases the mana you gain from your Aspect of the Viper by 25%.');
INSERT INTO `spelltext_en` VALUES (38392, 'Increases the damage dealt by your Steady Shot ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38393, 'Increases the damage dealt by your Shadow Bolt and Incinerate abilities by 6%.');
INSERT INTO `spelltext_en` VALUES (38394, 'Each time one of your Corruption or Immolate spells deals periodic damage, you heal 70 health.');
INSERT INTO `spelltext_en` VALUES (38396, 'Increases the duration of your Evocation ability by 2 sec.');
INSERT INTO `spelltext_en` VALUES (38397, 'Increases the damage of your Fireball, Frostbolt, and Arcane Missiles abilities by 5%.');
INSERT INTO `spelltext_en` VALUES (38398, 'Reduces the rage cost of your Execute ability by 3.');
INSERT INTO `spelltext_en` VALUES (38399, 'Increases the damage of your Mortal Strike and Bloodthirst abilities by 5%.');
INSERT INTO `spelltext_en` VALUES (38407, 'Increases the damage of your Shield Slam ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38408, 'Increases the health bonus from your Commanding Shout ability by 170.');
INSERT INTO `spelltext_en` VALUES (38410, 'Reduces the mana cost of your Prayer of Healing ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38411, 'Increases the healing from your Greater Heal ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38412, 'Increases the damage from your Mind Blast ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38413, 'Increases the duration of your Shadow Word: Pain ability by 3 sec.');
INSERT INTO `spelltext_en` VALUES (38414, 'Increases the duration of your Moonfire ability by 3 sec.');
INSERT INTO `spelltext_en` VALUES (38415, 'Increases the critical strike chance of your Starfire ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38416, 'Increases the damage dealt by your Rip, Swipe, and Ferocious Bite abilities by 15%.');
INSERT INTO `spelltext_en` VALUES (38417, 'Reduces the cooldown of your Swiftmend ability by 2 sec.');
INSERT INTO `spelltext_en` VALUES (38420, 'Increases the healing from your Healing Touch ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38421, 'Increases the mana gained from your Spiritual Attunement ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38422, 'Increases the damage dealt by your Consecration ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38424, 'Increases the damage dealt by your Hammer of Wrath ability by 10%.');
INSERT INTO `spelltext_en` VALUES (38425, 'Increases the spell power of your Flash of Light ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38426, 'Increases the critical strike chance of your Holy Light ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38427, 'Your melee attacks have a chance to grant you 50 mana.');
INSERT INTO `spelltext_en` VALUES (38429, 'Your Earth Shock, Flame Shock, and Frost Shock abilities cost 10% less mana.');
INSERT INTO `spelltext_en` VALUES (38432, 'Whenever you use Stormstrike, you gain 70 attack power for 12 sec.');
INSERT INTO `spelltext_en` VALUES (38434, 'Your Chain Heal ability costs 10% less mana.');
INSERT INTO `spelltext_en` VALUES (38435, 'Increases the amount healed by your Chain Heal ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38436, 'Increases the damage dealt by your Lightning Bolt ability by 5%.');
INSERT INTO `spelltext_en` VALUES (38438, 'Allows the wearer to see echoes of the past.');
INSERT INTO `spelltext_en` VALUES (38439, 'Places a Rocknail flayer carcass on the ground in Netherwing Fields.');
INSERT INTO `spelltext_en` VALUES (38443, 'Whenever you have an air totem, an earth totem, a fire totem, and a water totem active at the same time, you gain 19 mana per 5 sec, 35 spell critical strike rating, and 45 spell power.');
INSERT INTO `spelltext_en` VALUES (38444, 'Imbue the unfinished headpiece with the essence of Gul\'dan.');
INSERT INTO `spelltext_en` VALUES (38447, 'Reduces the energy cost of your Mangle ability in Cat Form by 5 and increases the threat generated by your Mangle ability in Bear Form by 15%.');
INSERT INTO `spelltext_en` VALUES (38453, 'Combine 5 Rocknail flayer giblets to form a Rocknail flayer carcass.');
INSERT INTO `spelltext_en` VALUES (38482, 'Disrupt the summoning ritual of the Dark Conclave Ritualists. Must be used while standing near the ritual site.');
INSERT INTO `spelltext_en` VALUES (38499, 'Reduces the cooldown on your Nature\'s Swiftness ability by 24 sec.');
INSERT INTO `spelltext_en` VALUES (38501, 'Increases the critical effect chance of your Lesser Healing Wave by 2%.');
INSERT INTO `spelltext_en` VALUES (38510, 'Target Grulloc and use the powder to put him to sleep for up to 30 sec. Any damage caused will awaken him.');
INSERT INTO `spelltext_en` VALUES (38522, 'Increases the critical effect chance of your Flash of Light by 2%.');
INSERT INTO `spelltext_en` VALUES (38543, 'Target is cured of disease.');
INSERT INTO `spelltext_en` VALUES (38544, 'Coax a Marmot to aid you.');
INSERT INTO `spelltext_en` VALUES (38551, 'Slightly increases your stealth detection for 10 min.');
INSERT INTO `spelltext_en` VALUES (38552, 'Increases your effective stealth level for 5 min.');
INSERT INTO `spelltext_en` VALUES (38553, 'Restores 300 mana, 10 rage, or 20 energy.');
INSERT INTO `spelltext_en` VALUES (38554, 'Absorb an Eye of Grillok into yourself.');
INSERT INTO `spelltext_en` VALUES (38606, 'Exorcises a Koi-Koi spirit from the targeted Raven\'s Wood Leafbeard. Slay the spirit as quickly as possible, for when you do, you will free the leafbeard and it will no longer be aggressive.');
INSERT INTO `spelltext_en` VALUES (38612, 'Combine with a Grishnath Orb to create an Exorcism Feather.');
INSERT INTO `spelltext_en` VALUES (38613, 'Combine with a Dire Pinfeather to create an Exorcism Feather.');
INSERT INTO `spelltext_en` VALUES (38614, 'Convert this cloth sample and the Vial of Primal Reagents into a Sample of Primal Mooncloth. Can only be attempted at the Cenarion Refuge Moonwell.');
INSERT INTO `spelltext_en` VALUES (38615, 'Coats a weapon with poison that lasts for 30 minutes.\r\nEach strike has a % chance of poisoning the enemy which instantly inflicts 44 to 56 Nature damage.');
INSERT INTO `spelltext_en` VALUES (38707, 'Place within Hellfire Basin.');
INSERT INTO `spelltext_en` VALUES (38736, 'Channels the Light into the Darkstone of Terokk.');
INSERT INTO `spelltext_en` VALUES (38762, 'Releases the force of Neltharaku upon an enslaved netherwing drake.');
INSERT INTO `spelltext_en` VALUES (38779, 'Unlocks Veil Skith Cages.');
INSERT INTO `spelltext_en` VALUES (38780, 'Summons a Spirit Calling Totem nearby, which lasts for 2 min. The totem will free the spirit of a lesser nether drake if it dies within 0 yards of the totem.');
INSERT INTO `spelltext_en` VALUES (38782, 'Fires a signal flare to call down an Evergrove Druid who is circling above Death\'s Door in the Blade\'s Edge Mountains.');
INSERT INTO `spelltext_en` VALUES (38790, 'Unlocks Zuluhed\'s chains.');
INSERT INTO `spelltext_en` VALUES (38842, 'Right Click to summon and dismiss your Toy RC Mortar Tank.');
INSERT INTO `spelltext_en` VALUES (38862, 'Places an Orb Collecting Totem on the ground in Razaan\'s Landing for 30 sec. Ideally the totem will attract a nearby Razaani light ball.');
INSERT INTO `spelltext_en` VALUES (38908, 'Restores 3200 health over 24 sec, but at a cost.  All stats are reduced by 15 for 15 min.');
INSERT INTO `spelltext_en` VALUES (38915, 'Controls a Mo\'arg at Forge Base: Gehenna.');
INSERT INTO `spelltext_en` VALUES (38929, 'Restores 3200 mana over 24 sec, but at a cost.  Also reduces Spell Power by 25 for 15 min.');
INSERT INTO `spelltext_en` VALUES (38954, 'Increases attack power by 90 and decreases stamina by 10 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (39010, 'Place upon the corpse of Force Commander Gorax!');
INSERT INTO `spelltext_en` VALUES (39094, 'Form a superior attunement to the Altar of Shadows. Can only be used while standing near the Altar of Shadows.');
INSERT INTO `spelltext_en` VALUES (39100, 'Increases the block value of your shield by 108.');
INSERT INTO `spelltext_en` VALUES (39105, 'Set off the beacon anywhere in Netherstorm to attract the attention of a Nether-wraith.');
INSERT INTO `spelltext_en` VALUES (39161, 'Places a Grisly Totem on the ground. Must be used at Gorgrom\'s Corpse.');
INSERT INTO `spelltext_en` VALUES (39163, 'Summons Spirit to take the key and free Leokk.');
INSERT INTO `spelltext_en` VALUES (39181, 'Right Click to summon and dismiss Miniwing.');
INSERT INTO `spelltext_en` VALUES (39183, 'Place the Anchorite Relic at Gor\'gaz Outpost.');
INSERT INTO `spelltext_en` VALUES (39189, 'Sets fire to anything in any environment.');
INSERT INTO `spelltext_en` VALUES (39200, 'Increases attack power by 140 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (39201, 'Increases spell power by 84 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (39219, 'Take control of the Death\'s Door Fel Cannon. The control will last for up to 3 min. Use the artillery to attack the warp-gate. Use the flame thrower to attack unstable fel-imps and void hounds.');
INSERT INTO `spelltext_en` VALUES (39220, 'Summon Gorgrom the Dragon-Eater.');
INSERT INTO `spelltext_en` VALUES (39223, 'Calls Rexxar to come to your aid against Goc.');
INSERT INTO `spelltext_en` VALUES (39224, 'Calls Sablemane to help you fight Goc.');
INSERT INTO `spelltext_en` VALUES (39226, 'With Baelmon the Hound-Master targeted and within 0 yards, summons a couple of Evergrove Ancients for 2 min to aid you in your battle against the eredar.');
INSERT INTO `spelltext_en` VALUES (39228, 'Reduces damage from each attack by 68, up to a total of 1150 damage absorbed. Lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (39238, 'May cause bone sifters to surface.');
INSERT INTO `spelltext_en` VALUES (39239, 'Use with 20 Doom Skulls near the Writhing Mound Summoning Circle to call Teribus the Cursed.');
INSERT INTO `spelltext_en` VALUES (39242, 'Summons the imp, Zeppit, to help you collect Warp Chaser Blood. Zeppit can only be summoned in Netherstorm.');
INSERT INTO `spelltext_en` VALUES (39246, 'May bring up a gigantic bone worm. It may also bring up other unpleasant creatures.');
INSERT INTO `spelltext_en` VALUES (39264, 'Summon Gorgrom the Dragon-Eater.');
INSERT INTO `spelltext_en` VALUES (39315, 'Summons and dismisses a rideable Cobalt Riding Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (39316, 'Summons and dismisses a rideable Dark Riding Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (39317, 'Summons and dismisses a rideable Silver Riding Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (39318, 'Summons and dismisses a rideable Tan Riding Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (39319, 'Summons and dismisses a rideable White Riding Talbuk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (39371, 'Target either Anchorite Barada or the fiends released during the exorcism.');
INSERT INTO `spelltext_en` VALUES (39372, 'Your Frost and Shadow damage spells heal you for 2% of the damage they deal.');
INSERT INTO `spelltext_en` VALUES (39374, 'Power infuses the target\'s party and raid members, increasing their Shadow resistance by 70 for 20 min.');
INSERT INTO `spelltext_en` VALUES (39404, 'Permanently enchants bracers to increase attack power by 24.');
INSERT INTO `spelltext_en` VALUES (39406, 'Permanently enchant bracers to increase spell power by 15.');
INSERT INTO `spelltext_en` VALUES (39411, 'Permanently enchants bracers to increase Strength by 12.');
INSERT INTO `spelltext_en` VALUES (39418, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39420, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39422, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39433, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39437, 'Your fire damage spells have a chance to grant you 135 bonus fire damage for 15 sec.');
INSERT INTO `spelltext_en` VALUES (39438, 'Each time you deal melee or ranged damage to an opponent, you gain 6 attack power for the next 10 sec., stacking up to 20 times. Each time you land a harmful spell on an opponent, you gain 8 spell power for the next 10 sec., stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (39442, 'Each time one of your direct damage attacks does not critically strike, you gain 17 critical strike rating and 17 spell critical strike rating for the next 10 sec. This effect is consumed when you deal a critical strike.');
INSERT INTO `spelltext_en` VALUES (39444, 'You have a % chance when hit by an attack or harmful spell to deal 95 to 115 holy damage to your attacker.');
INSERT INTO `spelltext_en` VALUES (39446, 'Each time you land a killing blow on an enemy that yields experience or honor, you gain the Power of Madness.');
INSERT INTO `spelltext_en` VALUES (39447, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39478, 'Right Click to summon and dismiss the orphan you\'ve agreed to look after for Children\'s Week.');
INSERT INTO `spelltext_en` VALUES (39479, 'Right Click to summon and dismiss the orphan you\'ve agreed to look after for Children\'s Week.');
INSERT INTO `spelltext_en` VALUES (39480, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (39481, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (39483, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (39484, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (39486, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39507, 'Increases your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (39509, 'Increases your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (39510, 'Increases your hit rating by 10.');
INSERT INTO `spelltext_en` VALUES (39516, 'Increases your hit rating by 20.');
INSERT INTO `spelltext_en` VALUES (39527, 'Grants you the appearance of one of Akama\'s Ashtongue.');
INSERT INTO `spelltext_en` VALUES (39543, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (39545, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39546, 'Restores 8 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (39547, 'Restores 8 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (39548, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39569, 'Increases spell power by 55.');
INSERT INTO `spelltext_en` VALUES (39585, 'Increases spell power by 168.');
INSERT INTO `spelltext_en` VALUES (39602, 'Increases spell power by 168.');
INSERT INTO `spelltext_en` VALUES (39625, 'Increases maximum health by 250 and restores 10 health every 5 seconds for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (39626, 'Prevents up to 20 damage done by a physical or magical attack for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (39627, 'Increases Intellect and Spirit by 30 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (39628, 'Increases Resilience Rating by 30 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (39629, 'Unlocks Ethereum Stasis Chamber Alpha.');
INSERT INTO `spelltext_en` VALUES (39640, 'Unlocks the Mana-Tombs Stasis Chamber.');
INSERT INTO `spelltext_en` VALUES (39677, 'Unlocks Nexus-Prince Shaffar\'s Stasis Chamber.');
INSERT INTO `spelltext_en` VALUES (39681, 'Take control of a Steam Tonk.');
INSERT INTO `spelltext_en` VALUES (39684, 'Take control of a Steam Tonk.');
INSERT INTO `spelltext_en` VALUES (39702, 'Increases your hit rating by 8.');
INSERT INTO `spelltext_en` VALUES (39708, 'Increases attack power by 116.');
INSERT INTO `spelltext_en` VALUES (39709, 'Right Click to summon and dismiss your invisible wolpertinger from or to the one-liter ale tankard it lives in.');
INSERT INTO `spelltext_en` VALUES (39750, 'Consume an Aether Ray Eye to augment your sight.');
INSERT INTO `spelltext_en` VALUES (39793, 'Call a Cenarion Sparrowhawk to help uncover buried Raven Stones in the area around Skettis in the Skethyl Mountains of Terokkar Forest.');
INSERT INTO `spelltext_en` VALUES (39798, 'Summons and dismisses a rideable Green Riding Nether Ray. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (39800, 'Summons and dismisses a rideable Red Riding Nether Ray. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (39801, 'Summons and dismisses a rideable Purple Riding Nether Ray. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (39802, 'Summons and dismisses a rideable Silver Riding Nether Ray. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (39803, 'Summons and dismisses a rideable Blue Riding Nether Ray. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (39806, 'Increases spell power by 61.');
INSERT INTO `spelltext_en` VALUES (39807, 'Increases attack power by 118.');
INSERT INTO `spelltext_en` VALUES (39810, 'Throw a net at the targeted wild sparrowhawk, which will immobilize it and put it into your pack.');
INSERT INTO `spelltext_en` VALUES (39841, 'Allows the bearer to see into the ghost world while in Shadowmoon Valley.');
INSERT INTO `spelltext_en` VALUES (39844, 'Launch a blasting charge from your flying mount at monstrous kaliri eggs.');
INSERT INTO `spelltext_en` VALUES (39875, 'Increases your spell penetration by 30.');
INSERT INTO `spelltext_en` VALUES (39880, 'Increases your dodge rating by 12.');
INSERT INTO `spelltext_en` VALUES (39881, 'Increases your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (39884, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (39885, 'Increases attack power by 126.');
INSERT INTO `spelltext_en` VALUES (39903, 'Increases spell power by 51.');
INSERT INTO `spelltext_en` VALUES (39922, 'Increases armor penetration rating by 10.');
INSERT INTO `spelltext_en` VALUES (39925, 'Increases armor penetration rating by 15.');
INSERT INTO `spelltext_en` VALUES (39927, 'Increases armor penetration rating by 12.');
INSERT INTO `spelltext_en` VALUES (39937, 'Returns you to <Home>. Speak to an Innkeeper in a different place to change your home location.');
INSERT INTO `spelltext_en` VALUES (39948, 'Hurls the Impaling Spine back at Naj\'entus, dealing damage. Pierces Tidal Shield.');
INSERT INTO `spelltext_en` VALUES (39965, 'Blasts enemies for 75 to 125 Frost damage and freezes them in place for up to 5 sec. Damage caused may interrupt the effect.');
INSERT INTO `spelltext_en` VALUES (39981, 'Increases armor penetration rating by 11.');
INSERT INTO `spelltext_en` VALUES (39982, 'Increases your hit rating by 20.');
INSERT INTO `spelltext_en` VALUES (39987, 'Increases the block value of your shield by 84.');
INSERT INTO `spelltext_en` VALUES (39988, 'Increases spell power by 57.');
INSERT INTO `spelltext_en` VALUES (40042, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40043, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40044, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40045, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40046, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40047, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40048, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40049, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40050, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40051, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40052, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40053, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (40098, 'Set in the Raven\'s Claw in Sethekk Halls to unleash the essences of the hawk, eagle, and falcon and challenge the raven god.');
INSERT INTO `spelltext_en` VALUES (40107, 'Increases spell power by 185.');
INSERT INTO `spelltext_en` VALUES (40150, 'Increases spell power by 187.');
INSERT INTO `spelltext_en` VALUES (40151, 'Increases spell power by 204.');
INSERT INTO `spelltext_en` VALUES (40160, 'Target the bomb to strike stacks of fel cannonballs. It can only be thrown while on a flying mount, or in flight form, in Forge Camp: Wrath or Forge Camp: Terror.');
INSERT INTO `spelltext_en` VALUES (40192, 'Summons and dismisses a rideable phoenix. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (40226, 'Increases armor penetration rating by 28.');
INSERT INTO `spelltext_en` VALUES (40231, 'Restores 23 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (40258, 'Increases armor penetration rating by 22.');
INSERT INTO `spelltext_en` VALUES (40260, 'Increases spell power by 233.');
INSERT INTO `spelltext_en` VALUES (40291, 'Fills you with fel energy allowing all melee attacks to drain life from opponents.');
INSERT INTO `spelltext_en` VALUES (40309, 'Activate near a forge camp warp-gate to possess the nearby felguard degrader.');
INSERT INTO `spelltext_en` VALUES (40328, 'Turn away Sundered Spirits.');
INSERT INTO `spelltext_en` VALUES (40342, 'Increases spell power by 68.');
INSERT INTO `spelltext_en` VALUES (40343, 'Restores 23 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (40386, '+10% Stun Resistance.');
INSERT INTO `spelltext_en` VALUES (40389, 'Reduces the base mana cost of Flight Form and Swift Flight Form by 115.');
INSERT INTO `spelltext_en` VALUES (40393, 'Calls forth an Ember of Azzinoth to protect you in battle for a short period of time.');
INSERT INTO `spelltext_en` VALUES (40396, 'Tap into the power of the skull, increasing haste rating by 175 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (40402, 'Increases your Spirit by +300 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (40405, 'Right Click to summon and dismiss Lucky the Golden Pig. Oink-oink! May fortune smile upon you this year!');
INSERT INTO `spelltext_en` VALUES (40407, 'When struck in combat has a 2% chance of increasing your Armor by 2000 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (40438, 'Each time your Shadow Word: Pain deals damage, it has a % chance to grant you 220 spell power for 10 sec and each time your Renew heals, it has a % chance to grant you 117 spell power for 5 sec.');
INSERT INTO `spelltext_en` VALUES (40442, 'Mangle has a 40% chance to grant 140 Strength for 8 sec, Starfire has a 25% chance to grant 150 spell power for 8 sec, and Rejuvenation has a 25% chance to grant 112 spell power for 8 sec.');
INSERT INTO `spelltext_en` VALUES (40443, 'Increases the block value of your shield by 87.');
INSERT INTO `spelltext_en` VALUES (40458, 'Your Mortal Strike, Bloodthirst, and Shield Slam attacks have a % chance to heal you for 330 and grant 55 Strength for 12 sec.');
INSERT INTO `spelltext_en` VALUES (40460, '20% chance per combo point for your finishing moves to grant 145 critical strike rating for 10 sec.');
INSERT INTO `spelltext_en` VALUES (40463, 'Lesser Healing Wave has a 10% chance to grant 170 mana, Lightning Bolt has a 15% chance to grant up to 170 mana, and Stormstrike has a 50% chance to grant up to 275 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (40464, 'Increases your maximum health by 1750 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (40468, 'Combine with Fel Glands and serve to Dragonmaw Peons on Netherwing Ledge. Must be near Dragonmaw Peons.');
INSERT INTO `spelltext_en` VALUES (40470, 'Flash of Light and Holy Light have a 15% chance to grant your target 760 healing over 12 sec, and your Judgements have a 50% chance to inflict 480 damage on their target over 8 sec.');
INSERT INTO `spelltext_en` VALUES (40475, 'Your melee and ranged attacks have a chance to increase your armor penetration rating by 42 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (40478, 'Each time your Corruption deals damage, it has a % chance to grant you 220 spell power for 5 sec.');
INSERT INTO `spelltext_en` VALUES (40482, 'Your spell critical strikes have a 50% chance to grant you 145 spell haste rating for 5 sec.');
INSERT INTO `spelltext_en` VALUES (40485, 'Your Steady Shot has a % chance to grant you 275 attack power for 8 sec.');
INSERT INTO `spelltext_en` VALUES (40527, 'Ask a question, then right click to receive your answer!');
INSERT INTO `spelltext_en` VALUES (40530, 'Right Click to set up a relaxing little picnic.');
INSERT INTO `spelltext_en` VALUES (40538, 'Increases maximum health by 1250 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (40543, 'A delicious grilled treat of questionable nutritional value. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (40548, 'Combine with 10 Apexis Shards to create a Charged Crystal Focus. The charged crystal can be used for instant healing and is rumored to have other uses. Kronk in Ogri\'la can likely tell you about this.');
INSERT INTO `spelltext_en` VALUES (40549, 'Right Click to summon and dismiss Bananas. Ook-ook!');
INSERT INTO `spelltext_en` VALUES (40555, 'Increases armor penetration rating by 22.');
INSERT INTO `spelltext_en` VALUES (40567, 'Increases Agility by 20, attack power by 40, and Stamina by 30 for 1 hour. Counts as both a Battle and Guardian elixir. You can only have the effect of one flask at a time. This effect persists through death, but only works in the Blade\'s Edge Mountains Plateaus and Gruul\'s Lair.');
INSERT INTO `spelltext_en` VALUES (40568, 'Increases Intellect by 25, Stamina by 30, and grants 12 mana per 5 sec. for 1 hour. Counts as both a Battle and Guardian elixir. You can only have the effect of one flask at a time. This effect persists through death, but only works in the Blade\'s Edge Mountains Plateaus and Gruul\'s Lair.');
INSERT INTO `spelltext_en` VALUES (40572, 'Increases Agility by 20, Strength by 20, and Stamina by 30 for 1 hour. Counts as both a Battle and Guardian elixir. You can only have the effect of one flask at a time. This effect persists through death, but only works in the Blade\'s Edge Mountains Plateaus and Gruul\'s Lair.');
INSERT INTO `spelltext_en` VALUES (40573, 'Increases Intellect by 20, Stamina by 30, and spell power by 23 for 1 hour. Counts as both a Battle and Guardian elixir. You can only have the effect of one flask at a time. This effect persists through death, but only works in the Blade\'s Edge Mountains Plateaus and Gruul\'s Lair.');
INSERT INTO `spelltext_en` VALUES (40575, 'Increases critical strike rating by 20, Strength by 20, and Stamina by 30 for 1 hour. Counts as both a Battle and Guardian elixir. You can only have the effect of one flask at a time. This effect persists through death, but only works in the Blade\'s Edge Mountains Plateaus and Gruul\'s Lair.');
INSERT INTO `spelltext_en` VALUES (40576, 'Increases Intellect by 20, Stamina by 30, and spell power by 23 for 1 hour. Counts as both a Battle and Guardian elixir. You can only have the effect of one flask at a time. This effect persists through death, but only works in the Blade\'s Edge Mountains Plateaus and Gruul\'s Lair.');
INSERT INTO `spelltext_en` VALUES (40613, 'Right Click to summon and dismiss Willy. Wake up, little guy!');
INSERT INTO `spelltext_en` VALUES (40614, 'Right Click to summon and dismiss Egbert the hawkstrider hatchling.');
INSERT INTO `spelltext_en` VALUES (40634, 'Right Click to summon and dismiss Peanut the baby elekk.');
INSERT INTO `spelltext_en` VALUES (40679, 'Increases armor penetration rating by 23.');
INSERT INTO `spelltext_en` VALUES (40680, 'Increases armor penetration rating by 18.');
INSERT INTO `spelltext_en` VALUES (40723, '+7 Weapon Damage.');
INSERT INTO `spelltext_en` VALUES (40724, 'Increases attack power by 216 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (40729, 'Increases agility by 150 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (40742, 'Knocks sense into worthless, lazy peons.');
INSERT INTO `spelltext_en` VALUES (40744, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40747, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40748, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40749, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40752, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40753, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40754, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40755, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40756, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40757, 'Infuse this item with the power of 50 Apexis Shards to activate its true power.');
INSERT INTO `spelltext_en` VALUES (40764, 'Stitch together scales from Insidion, Obsidia, Rivendark, and Furywing to create a dragonscale cloak.');
INSERT INTO `spelltext_en` VALUES (40765, 'Stitch together scales from Insidion, Obsidia, Rivendark, and Furywing to create a dragonscale cloak.');
INSERT INTO `spelltext_en` VALUES (40766, 'Stitch together scales from Insidion, Obsidia, Rivendark, and Furywing to create a dragonscale cloak.');
INSERT INTO `spelltext_en` VALUES (40767, 'Stitch together scales from Insidion, Obsidia, Rivendark, and Furywing to create a dragonscale cloak.');
INSERT INTO `spelltext_en` VALUES (40768, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 25 seconds eating, you\'ll discover the fortune hidden in your meal!');
INSERT INTO `spelltext_en` VALUES (40811, 'Calls forth a Netherwing Ally to fight at your side in Shadowmoon Valley.');
INSERT INTO `spelltext_en` VALUES (40815, 'Calls forth a Netherwing Ally to fight at your side.');
INSERT INTO `spelltext_en` VALUES (40817, 'Summons a banishing portal, which costs an apexis shard to power. Can only be used at Forge Camp: Wrath and Forge Camp: Terror and only works on the demons therein. The portal lasts 3 min and has an effective range of 0 yards.');
INSERT INTO `spelltext_en` VALUES (40856, 'Capture an aether ray once it is ready to be wrangled.');
INSERT INTO `spelltext_en` VALUES (40889, 'Call a sparrowhawk that can be used to relay your words to Arthorn Windsong. Can only be used in Terokkar Forest.');
INSERT INTO `spelltext_en` VALUES (40933, 'Increases attack power by 120.');
INSERT INTO `spelltext_en` VALUES (40934, 'Increases armor penetration rating by 40.');
INSERT INTO `spelltext_en` VALUES (40969, 'Fires a weak but long range frosty bolt at a targeted proto-drake within None yards.');
INSERT INTO `spelltext_en` VALUES (40971, 'If your target is below 50% health, your direct healing spells will cause your target to be healed for an additional 180 to 220 health.');
INSERT INTO `spelltext_en` VALUES (40978, 'Throw the firecrackers up to 0 yards away underneath a darkclaw bat to scare it.');
INSERT INTO `spelltext_en` VALUES (40990, 'Right Click to summon and dismiss your pet skunk, Stinker.');
INSERT INTO `spelltext_en` VALUES (41030, 'Restores 6000 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 15 Stamina and 15 Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (41031, 'Restores 4320 health and 5100 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (41037, 'Your Mangle ability also increases your attack power by 94 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (41040, 'Increases spell power of Chain Lightning and Lightning Bolt by 85.');
INSERT INTO `spelltext_en` VALUES (41041, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41042, 'Your Judgement ability also increases your shield block value by 186 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (41181, 'Attempt to disguise yourself as an arakkoa.');
INSERT INTO `spelltext_en` VALUES (41233, 'Splash it all over to unleash the sophisticated ogre inside. Creatures of all kinds will be certain to notice you from afar.\r\n\r\nOnly works in Blade\'s Edge Mountains.');
INSERT INTO `spelltext_en` VALUES (41234, 'Teleports the bearer to the footsteps of Illidan\'s fortress.');
INSERT INTO `spelltext_en` VALUES (41237, 'Instantly restores 2000 life. The focus is also rumored to unlock special powers within possessed demons. Kronk in Ogri\'la can likely tell you about this.');
INSERT INTO `spelltext_en` VALUES (41252, 'Summons and dismisses a giant raven steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (41260, '% chance to increase your attack power by 140 for 30 sec when you kill a target that gives experience or honor. This effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (41262, '% chance to increase your spell power by 80 for 30 sec when you kill a target that gives experience or honor. This effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (41267, 'Unlocks Ethereum stasis chambers.');
INSERT INTO `spelltext_en` VALUES (41291, 'Siphons the life of Reth\'hedron the Subduer.');
INSERT INTO `spelltext_en` VALUES (41301, 'Transforms caster to have the appearance of a Skettis arakkoa.');
INSERT INTO `spelltext_en` VALUES (41304, 'Restores 1800 to 3000 mana. Only works in the Blade\'s Edge Plateaus.');
INSERT INTO `spelltext_en` VALUES (41306, 'Restores 1050 to 1750 health. Only works in the Blade\'s Edge Plateaus.');
INSERT INTO `spelltext_en` VALUES (41423, 'Releases a hungry nether ray from the cage.');
INSERT INTO `spelltext_en` VALUES (41433, 'Increases attack power by 200 when fighting Demons.');
INSERT INTO `spelltext_en` VALUES (41434, 'Your melee attacks have a chance to increase your haste rating by 450 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (41443, 'Creates a cauldron that raid members can use to conjure a Major Arcane Protection Potion. Cauldron has 25 uses and lasts for 5 min.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (41462, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (41463, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (41464, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (41474, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (41494, 'Creates a cauldron that raid members can use to conjure a Major Fire Protection Potion. Cauldron has 25 uses and lasts for 5 min.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (41495, 'Creates a cauldron that raid members can use to conjure a Major Frost Protection Potion. Cauldron has 25 uses and lasts for 5 min.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (41497, 'Creates a cauldron that raid members can use to conjure a Major Nature Protection Potion. Cauldron has 25 uses and lasts for 5 min.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (41498, 'Creates a cauldron that raid members can use to conjure a Major Shadow Protection Potion. Cauldron has 25 uses and lasts for 5 min.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (41513, 'Summons and dismisses a rideable Onyx Netherwing Drake mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (41514, 'Summons and dismisses a rideable Azure Netherwing Drake mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (41515, 'Summons and dismisses a rideable Cobalt Netherwing Drake mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (41516, 'Summons and dismisses a rideable Purple Netherwing Drake mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (41517, 'Summons and dismisses a rideable Veridian Netherwing Drake mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (41518, 'Summons and dismisses a rideable Violet Netherwing Drake mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (41561, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41562, 'Restores 10 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41591, 'Restores 10 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41608, 'Increases attack power by 120 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.\r\n\r\nOnly active in Tempest Keep, Serpentshrine Cavern, Caverns of Time: Mount Hyjal, Black Temple and the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (41609, 'Increases maximum health by 500 and defense rating by 10 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.\r\n\r\nOnly active in Tempest Keep, Serpentshrine Cavern, Caverns of Time: Mount Hyjal, Black Temple and the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (41610, 'Increases mana regeneration by 31 mana per 5 seconds for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.\r\n\r\nOnly active in Tempest Keep, Serpentshrine Cavern, Caverns of Time: Mount Hyjal, Black Temple and the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (41611, 'Increases damage done by magical spells and effects by up to 70 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.\r\n\r\nOnly active in Tempest Keep, Serpentshrine Cavern, Caverns of Time: Mount Hyjal, Black Temple and the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (41617, 'Restores 1800 to 3000 mana.\r\n\r\nOnly works inside Coilfang: The Serpentshrine, The Underbog, The Steamvaults, The Slave Pens.');
INSERT INTO `spelltext_en` VALUES (41618, 'Restores 1800 to 3000 mana.\r\n\r\nOnly works inside Tempest Keep: The Eye, The Arcatraz, The Botanica, The Mechanar.');
INSERT INTO `spelltext_en` VALUES (41619, 'Restores 1500 to 2500 health.\r\n\r\nOnly works inside Coilfang: The Serpentshrine, The Underbog, The Steamvaults, The Slave Pens.');
INSERT INTO `spelltext_en` VALUES (41620, 'Restores 1500 to 2500 health.\r\n\r\nOnly works inside Tempest Keep: The Eye, The Arcatraz, The Botanica, The Mechanar.');
INSERT INTO `spelltext_en` VALUES (41621, 'Throw a net at a wild wolpertinger, which will allow you to capture it and place it in your pack.');
INSERT INTO `spelltext_en` VALUES (41636, '+6 Intellect.');
INSERT INTO `spelltext_en` VALUES (41638, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41639, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41640, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41641, 'Increases defense rating by 2.');
INSERT INTO `spelltext_en` VALUES (41642, 'Increases defense rating by 5.');
INSERT INTO `spelltext_en` VALUES (41643, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41644, 'Increases spell power by 6.');
INSERT INTO `spelltext_en` VALUES (41645, 'Increases attack power by 10.');
INSERT INTO `spelltext_en` VALUES (41646, 'Increases attack power by 26.');
INSERT INTO `spelltext_en` VALUES (41647, 'Increases attack power by 28.');
INSERT INTO `spelltext_en` VALUES (41648, 'Increases spell power by 71.');
INSERT INTO `spelltext_en` VALUES (41649, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41650, 'Increases your hit rating by 14.');
INSERT INTO `spelltext_en` VALUES (41651, 'Increases spell power by 28.');
INSERT INTO `spelltext_en` VALUES (41652, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41653, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41654, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41655, '+4 Weapon Damage.');
INSERT INTO `spelltext_en` VALUES (41656, 'Increases your spell penetration by 38.');
INSERT INTO `spelltext_en` VALUES (41657, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (41658, 'Increases your hit rating by 16.');
INSERT INTO `spelltext_en` VALUES (41659, 'Restores 5 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41660, 'Reduces casting or channeling time lost when damaged by 5%.');
INSERT INTO `spelltext_en` VALUES (41661, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41662, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41665, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41666, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41667, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41668, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41669, '+10 Fire Resistance.');
INSERT INTO `spelltext_en` VALUES (41670, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41671, 'Increases defense rating by 5.');
INSERT INTO `spelltext_en` VALUES (41672, 'Increases attack power by 10.');
INSERT INTO `spelltext_en` VALUES (41673, '+15 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41674, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41675, 'Restores 15 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41676, 'Increases your critical strike rating by 28.');
INSERT INTO `spelltext_en` VALUES (41677, '+20 Arcane resistance.');
INSERT INTO `spelltext_en` VALUES (41678, 'Increases your hit rating by 20.');
INSERT INTO `spelltext_en` VALUES (41679, 'Increases your hit rating by 20.');
INSERT INTO `spelltext_en` VALUES (41680, '+15 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41681, 'Increases defense rating by 5.');
INSERT INTO `spelltext_en` VALUES (41683, 'Increases your hit rating by 10.');
INSERT INTO `spelltext_en` VALUES (41684, 'Increases attack power by 15 when fighting Undead.');
INSERT INTO `spelltext_en` VALUES (41685, '+5 Shadow Resistance.');
INSERT INTO `spelltext_en` VALUES (41686, '+10 Armor.');
INSERT INTO `spelltext_en` VALUES (41687, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41688, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41689, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41690, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41691, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41692, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41693, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41694, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41695, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41696, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41697, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41698, '+20 Agility.');
INSERT INTO `spelltext_en` VALUES (41699, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41700, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41701, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41702, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41703, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41704, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41705, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41706, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41707, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41708, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41709, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41710, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41711, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41712, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41713, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41714, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41715, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41716, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41717, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41718, 'Increases spell power by 12.');
INSERT INTO `spelltext_en` VALUES (41719, 'Increases attack power by 50.');
INSERT INTO `spelltext_en` VALUES (41720, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41721, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41722, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41723, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41724, '+15 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41725, '+50 Armor.');
INSERT INTO `spelltext_en` VALUES (41726, 'Increases defense rating by 5.');
INSERT INTO `spelltext_en` VALUES (41727, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41728, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41729, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41730, 'Increases expertise rating by 2.');
INSERT INTO `spelltext_en` VALUES (41731, '+10 Armor.');
INSERT INTO `spelltext_en` VALUES (41732, '+5 Arcane Resistance.');
INSERT INTO `spelltext_en` VALUES (41733, 'Increases attack power by 10.');
INSERT INTO `spelltext_en` VALUES (41734, 'Increases spell power by 12.');
INSERT INTO `spelltext_en` VALUES (41736, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41737, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41738, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41739, 'Increases expertise rating by 4.');
INSERT INTO `spelltext_en` VALUES (41740, 'Increases nature spell power by 7.');
INSERT INTO `spelltext_en` VALUES (41741, '+10 Intellect.');
INSERT INTO `spelltext_en` VALUES (41742, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41743, '+25 Strength.');
INSERT INTO `spelltext_en` VALUES (41744, '+20 Strength.');
INSERT INTO `spelltext_en` VALUES (41746, 'Increases your dodge rating by 20.');
INSERT INTO `spelltext_en` VALUES (41747, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41748, 'Increases your critical strike rating by 15.');
INSERT INTO `spelltext_en` VALUES (41749, 'Increases your hit rating by 20.');
INSERT INTO `spelltext_en` VALUES (41750, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41751, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41752, 'Increases spell power by 15.');
INSERT INTO `spelltext_en` VALUES (41753, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41754, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41755, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41756, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41757, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41758, '+20 Agility.');
INSERT INTO `spelltext_en` VALUES (41759, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41760, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41761, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41762, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41763, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41764, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41765, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41766, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41767, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41768, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41769, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41770, 'Restores 5 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41771, '+20 Intellect.');
INSERT INTO `spelltext_en` VALUES (41772, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41773, '+150 Armor.');
INSERT INTO `spelltext_en` VALUES (41774, 'Increases defense rating by 22.');
INSERT INTO `spelltext_en` VALUES (41775, 'Restores 4 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41776, 'Restores 5 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (41777, 'Increases spell power by 12.');
INSERT INTO `spelltext_en` VALUES (41778, '+18 Stamina.');
INSERT INTO `spelltext_en` VALUES (41779, '+100 Armor.');
INSERT INTO `spelltext_en` VALUES (41780, 'Increases spell power by 20.');
INSERT INTO `spelltext_en` VALUES (41781, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41782, 'Increases spell power by 47.');
INSERT INTO `spelltext_en` VALUES (41783, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (41784, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41786, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41787, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41788, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41789, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41790, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41791, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41792, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41793, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41794, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41795, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41796, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41797, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41798, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41799, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41800, '+20 Agility.');
INSERT INTO `spelltext_en` VALUES (41801, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41802, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41803, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41804, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41805, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41806, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41807, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41808, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41809, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41810, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41811, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41812, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41813, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41814, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41815, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41816, '+15 Stamina.');
INSERT INTO `spelltext_en` VALUES (41817, 'Increases your parry rating by 20.');
INSERT INTO `spelltext_en` VALUES (41818, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41819, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41821, 'Increases attack power by 20.');
INSERT INTO `spelltext_en` VALUES (41822, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41823, 'Increases attack power by 30.');
INSERT INTO `spelltext_en` VALUES (41825, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41826, '+15 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41827, '+5 Intellect.');
INSERT INTO `spelltext_en` VALUES (41828, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41829, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41830, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (41831, 'Increases attack power by 20.');
INSERT INTO `spelltext_en` VALUES (41832, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41833, 'Increases your critical strike rating by 15.');
INSERT INTO `spelltext_en` VALUES (41834, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (41835, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41836, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41838, '+10 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41839, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41840, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41841, 'Increases your hit rating by 16.');
INSERT INTO `spelltext_en` VALUES (41842, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41843, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41844, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41845, 'Increases attack power by 14.');
INSERT INTO `spelltext_en` VALUES (41846, '+20 Strength.');
INSERT INTO `spelltext_en` VALUES (41847, 'Increases defense rating by 30.');
INSERT INTO `spelltext_en` VALUES (41848, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41849, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41850, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41851, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41852, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41853, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41854, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41855, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41856, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41857, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41858, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41859, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41860, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41861, 'Increases attack power by 10.');
INSERT INTO `spelltext_en` VALUES (41862, 'Increases your critical strike rating by 14.');
INSERT INTO `spelltext_en` VALUES (41863, '+20 Armor.');
INSERT INTO `spelltext_en` VALUES (41864, 'Increases defense rating by 3.');
INSERT INTO `spelltext_en` VALUES (41865, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41866, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41867, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41868, '+5 Stamina.');
INSERT INTO `spelltext_en` VALUES (41869, '+10 Intellect.');
INSERT INTO `spelltext_en` VALUES (41870, '+10 Arcane Resistance.');
INSERT INTO `spelltext_en` VALUES (41871, '+10 Fire Resistance.');
INSERT INTO `spelltext_en` VALUES (41872, 'Increases spell power by 12.');
INSERT INTO `spelltext_en` VALUES (41873, '+50 Armor.');
INSERT INTO `spelltext_en` VALUES (41874, 'Increases expertise rating by 14.');
INSERT INTO `spelltext_en` VALUES (41875, 'Increases spell power by 15.');
INSERT INTO `spelltext_en` VALUES (41876, 'Increases resilience by 20.');
INSERT INTO `spelltext_en` VALUES (41877, 'Increases your critical strike rating by 15.');
INSERT INTO `spelltext_en` VALUES (41878, 'Increases your hit rating by 15.');
INSERT INTO `spelltext_en` VALUES (41879, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41880, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41881, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41882, '+200 Armor.');
INSERT INTO `spelltext_en` VALUES (41883, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41884, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41885, 'Increases your block rating by 10.');
INSERT INTO `spelltext_en` VALUES (41886, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41887, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41888, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41889, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41890, 'Increases spell power by 18.');
INSERT INTO `spelltext_en` VALUES (41891, 'Increases spell power by 15.');
INSERT INTO `spelltext_en` VALUES (41892, 'Increases attack power by 26.');
INSERT INTO `spelltext_en` VALUES (41893, '+8 All Resistances.');
INSERT INTO `spelltext_en` VALUES (41894, 'Increases spell power by 6.');
INSERT INTO `spelltext_en` VALUES (41895, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41896, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41897, '+20 Agility.');
INSERT INTO `spelltext_en` VALUES (41898, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41899, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41900, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41901, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41902, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41903, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41904, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41905, 'Increases spell power by 23.');
INSERT INTO `spelltext_en` VALUES (41906, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41907, 'Increases attack power by 40.');
INSERT INTO `spelltext_en` VALUES (41908, '+20 Stamina.');
INSERT INTO `spelltext_en` VALUES (41920, 'Fills your Brewfest Stein at a Brewfest Festive Keg.');
INSERT INTO `spelltext_en` VALUES (41921, 'A sample of Barleybrew Clear.');
INSERT INTO `spelltext_en` VALUES (41943, 'A sample of Thunder 45.');
INSERT INTO `spelltext_en` VALUES (41944, 'A sample of Gordok Grog.');
INSERT INTO `spelltext_en` VALUES (41945, 'A sample of Small Step Brew.');
INSERT INTO `spelltext_en` VALUES (41946, 'A sample of Jungle River Water.');
INSERT INTO `spelltext_en` VALUES (41973, 'Increases spell power by 199.');
INSERT INTO `spelltext_en` VALUES (41985, 'Focuses a concentrated beam on a pesky pink elekk, causing its form to dissipate.');
INSERT INTO `spelltext_en` VALUES (41989, 'Chance to bathe your enemy in flame causing 100 to 150 Fire damage to your target.');
INSERT INTO `spelltext_en` VALUES (42034, 'Increases the block value of your shield by 81.');
INSERT INTO `spelltext_en` VALUES (42038, 'Increases the block value of your shield by 117.');
INSERT INTO `spelltext_en` VALUES (42039, 'Increases attack power by 124.');
INSERT INTO `spelltext_en` VALUES (42040, 'Increases spell power by 203.');
INSERT INTO `spelltext_en` VALUES (42056, 'Increases your spell penetration by 23.');
INSERT INTO `spelltext_en` VALUES (42057, 'Increases spell power by 185.');
INSERT INTO `spelltext_en` VALUES (42059, 'Increases spell power by 259.');
INSERT INTO `spelltext_en` VALUES (42060, 'Restores 29 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (42061, 'Increases armor penetration rating by 48.');
INSERT INTO `spelltext_en` VALUES (42062, 'Increases spell power by 259.');
INSERT INTO `spelltext_en` VALUES (42063, 'Increases spell power by 81.');
INSERT INTO `spelltext_en` VALUES (42070, 'Increases spell power by 230.');
INSERT INTO `spelltext_en` VALUES (42071, 'Increases spell power by 209.');
INSERT INTO `spelltext_en` VALUES (42076, 'Increases spell power by 63.');
INSERT INTO `spelltext_en` VALUES (42077, 'Increases spell power by 63.');
INSERT INTO `spelltext_en` VALUES (42078, 'Increases the block value of your shield by 93.');
INSERT INTO `spelltext_en` VALUES (42082, 'Restores 20 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (42083, 'Chance on critical hit to increase your attack power by 340 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (42089, 'Increases spell power by 55.');
INSERT INTO `spelltext_en` VALUES (42093, 'Increases spell power by 61.');
INSERT INTO `spelltext_en` VALUES (42094, 'Increases armor penetration rating by 13.');
INSERT INTO `spelltext_en` VALUES (42095, 'Increases armor penetration rating by 25.');
INSERT INTO `spelltext_en` VALUES (42098, 'Increases armor penetration rating by 20.');
INSERT INTO `spelltext_en` VALUES (42099, 'Increases spell power by 74.');
INSERT INTO `spelltext_en` VALUES (42100, 'Restores 25 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (42104, 'Increases the block value of your shield by 72.');
INSERT INTO `spelltext_en` VALUES (42106, 'Increases the block value of your shield by 112.');
INSERT INTO `spelltext_en` VALUES (42107, 'Increases attack power by 102.');
INSERT INTO `spelltext_en` VALUES (42108, 'Increases spell power by 73.');
INSERT INTO `spelltext_en` VALUES (42109, 'Increases armor penetration rating by 45.');
INSERT INTO `spelltext_en` VALUES (42110, 'Increases spell power by 236.');
INSERT INTO `spelltext_en` VALUES (42111, 'Increases spell power by 236.');
INSERT INTO `spelltext_en` VALUES (42113, 'Increases armor penetration rating by 30.');
INSERT INTO `spelltext_en` VALUES (42115, 'Restores 24 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (42120, 'Increases spell power by 199.');
INSERT INTO `spelltext_en` VALUES (42122, 'Increases spell power by 225.');
INSERT INTO `spelltext_en` VALUES (42124, 'Increases spell power by 194.');
INSERT INTO `spelltext_en` VALUES (42125, 'Increases spell power by 194.');
INSERT INTO `spelltext_en` VALUES (42127, 'Increases spell power by 225.');
INSERT INTO `spelltext_en` VALUES (42155, 'Increases your hit rating by 15.');
INSERT INTO `spelltext_en` VALUES (42156, 'Guaranteed by Belbi Quikswitch to make EVERYONE look attractive!');
INSERT INTO `spelltext_en` VALUES (42157, 'Increases armor penetration rating by 50.');
INSERT INTO `spelltext_en` VALUES (42184, 'Reduces the duration of any Silence or Interrupt effects used against the wearer by 10%. This effect does not stack with other similar effects.');
INSERT INTO `spelltext_en` VALUES (42222, 'Serves Kyle his lunch!');
INSERT INTO `spelltext_en` VALUES (42254, 'Weak alcohol with some big taste!');
INSERT INTO `spelltext_en` VALUES (42255, 'A weak alcohol that has a lot of head.');
INSERT INTO `spelltext_en` VALUES (42256, 'A weak alcohol that may bring out the beast in you.');
INSERT INTO `spelltext_en` VALUES (42257, 'This brew is hot!');
INSERT INTO `spelltext_en` VALUES (42258, 'Full body goodness!');
INSERT INTO `spelltext_en` VALUES (42259, 'A weak alcohol, but a technological triumph in brewing technology.');
INSERT INTO `spelltext_en` VALUES (42260, 'A weak alcohol that\'s good for you and good for nature.');
INSERT INTO `spelltext_en` VALUES (42261, 'The coolest drink around.');
INSERT INTO `spelltext_en` VALUES (42263, 'A weak alcohol that will put some Spring in your step.');
INSERT INTO `spelltext_en` VALUES (42264, 'Weak, but smooth, alcohol.');
INSERT INTO `spelltext_en` VALUES (42275, 'Allows the wearer to breathe underwater when worn.');
INSERT INTO `spelltext_en` VALUES (42287, 'Attempt to salvage cargo from nearby shipwreck debris.');
INSERT INTO `spelltext_en` VALUES (42292, 'Removes all movement impairing effects and all effects which cause loss of control of your character.');
INSERT INTO `spelltext_en` VALUES (42301, 'Combine 4 Grimtotem Notes into the Grimtotem Battle Plan.');
INSERT INTO `spelltext_en` VALUES (42309, 'Restores 7500 health and 7200 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (42323, 'Opens a Blackhoof Cage.');
INSERT INTO `spelltext_en` VALUES (42325, 'Attempt to capture a weakened Bloodfen Raptor or Bloodfen Screecher.');
INSERT INTO `spelltext_en` VALUES (42338, 'Place the bait on the ground near the Blackhoof Village Windmill.');
INSERT INTO `spelltext_en` VALUES (42340, 'Toss to a friend, or onto a burning building.');
INSERT INTO `spelltext_en` VALUES (42356, 'Set fire to one of the structures in Direhorn Post.');
INSERT INTO `spelltext_en` VALUES (42365, 'It\'s a murloc costume.');
INSERT INTO `spelltext_en` VALUES (42367, 'Increases the spell power of the final healing value of your Lifebloom by 87.');
INSERT INTO `spelltext_en` VALUES (42368, 'Causes your Flash of Light to increase the target\'s Resilience rating by 31 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (42370, 'Causes your Lesser Healing Wave to increase the target\'s Resilience rating by 31 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (42383, 'Throw the skull to a friendly player. If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (42390, 'Lay the wreath at the Hyal Family Monument.');
INSERT INTO `spelltext_en` VALUES (42391, 'Throws booze, starting a fire');
INSERT INTO `spelltext_en` VALUES (42406, 'Drop on the blockading pirates to kill them. Can only be thrown while you\'re onboard the zeppelin.');
INSERT INTO `spelltext_en` VALUES (42411, 'Unleash the magic of Brogg\'s Totem on the corpse of a Firemane Ash Tail, Firemane Scout, or Firemane Scalebane.');
INSERT INTO `spelltext_en` VALUES (42418, 'Lay a set of Ogre Remains to rest in the Stonemaul Ruins.');
INSERT INTO `spelltext_en` VALUES (42425, 'Plant the banner near the entrance to Onyxia\'s Lair.');
INSERT INTO `spelltext_en` VALUES (42436, 'Down the brew and toss the mug!');
INSERT INTO `spelltext_en` VALUES (42452, 'Plant the Captured Totem in the ground. Can only be used in the Quagmire.');
INSERT INTO `spelltext_en` VALUES (42489, 'Attempt to zap a Bubbling Swamp Ooze or Acidic Swamp Ooze if you are energized.');
INSERT INTO `spelltext_en` VALUES (42521, 'Place the torch on the end of the dock at Swamplight Manor.');
INSERT INTO `spelltext_en` VALUES (42564, 'Fling an Ever-burning Torch up to 0 yards at a plague vat setting it ablaze. Can only be used in Halgrind.');
INSERT INTO `spelltext_en` VALUES (42609, 'Right Click to summon and dismiss your sinister squashling.');
INSERT INTO `spelltext_en` VALUES (42620, 'Permanently enchant a melee weapon to increase Agility by 20. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (42644, 'Slather the paste all over yourself and prepare to meet some sea creatures.');
INSERT INTO `spelltext_en` VALUES (42667, 'A Flying Broom! This can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (42668, 'A Swift Flying Broom! This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (42680, 'A magic broom!');
INSERT INTO `spelltext_en` VALUES (42687, 'Attaches a chain to your weapon, reducing the duration of Disarm effects by 50% and increasing your Parry rating by 15. Does not stack with other similar effects.\r\n\r\nAttaching an adamantite weapon chain causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (42692, 'A rickety magic broom! It barely works.');
INSERT INTO `spelltext_en` VALUES (42703, 'Throw the dynamite up to 0 yards to blow up a Whisper Gulch Ore.');
INSERT INTO `spelltext_en` VALUES (42735, 'Increases resistance to all schools of magic by 35 and all stats by 18 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (42753, 'Right Click to create a kettle of spicy Goblin Gumbo.\r\n\r\nGoblin Gumbo disappears if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (42760, 'Absurdly spicy goblin stew of no nutritional value. Occasionally belch rank goblin breath for the next 5 min.');
INSERT INTO `spelltext_en` VALUES (42766, 'Right Click to set up a comfy fishing chair.');
INSERT INTO `spelltext_en` VALUES (42769, 'Releases a hungry plaguehound from the cage.');
INSERT INTO `spelltext_en` VALUES (42776, 'Summons and dismisses a rideable Spectral Tiger.');
INSERT INTO `spelltext_en` VALUES (42777, 'Summons and dismisses a rideable Swift Spectral Tiger. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (42786, 'Transports you to the spirit world. May only be used in Wyrmskull Village.');
INSERT INTO `spelltext_en` VALUES (42788, 'Feed the Crow Meat to a nearby hungry plaguehound.');
INSERT INTO `spelltext_en` VALUES (42793, 'Use on an Alliance Corpse or Forsaken Corpse near Vengeance Landing to set them on fire.');
INSERT INTO `spelltext_en` VALUES (42801, 'Creates 5 Marks of the Illidari.');
INSERT INTO `spelltext_en` VALUES (42812, 'Increases spell power by 209.');
INSERT INTO `spelltext_en` VALUES (42814, 'Increases spell power by 229.');
INSERT INTO `spelltext_en` VALUES (42817, 'Blow on the wyrmcaller\'s platform to call down Glacion.');
INSERT INTO `spelltext_en` VALUES (42822, 'Unlocks Gjalerbron Cages.');
INSERT INTO `spelltext_en` VALUES (42836, 'Unlock the large cage in the middle of Gjalerbron.');
INSERT INTO `spelltext_en` VALUES (42924, 'Loosen the reins and get ready for some speed!');
INSERT INTO `spelltext_en` VALUES (42974, 'Permanently enchant a melee weapon to occasionally grant you 120 armor penetration rating. Only one instance of this effect can be active at a time. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (42981, 'Unlocks Dragonflayer cages at Wyrmskull Village.');
INSERT INTO `spelltext_en` VALUES (42987, 'Restores 3330 to 3500 mana.');
INSERT INTO `spelltext_en` VALUES (43005, 'Permanently enchant a Melee Weapon to occasionally ignore 120 of your enemy\'s armor. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (43036, 'Dismember a Winterskorn vrykul corpse.');
INSERT INTO `spelltext_en` VALUES (43042, 'Calls forth the Westguard Sergeant. Can only be used in Skorn and cannot be used in combat. Right-click the insignia again to dismiss the sergeant.');
INSERT INTO `spelltext_en` VALUES (43051, 'Observe far-off things from a distance.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (43057, 'Set the longhouses and barracks ablaze from within.');
INSERT INTO `spelltext_en` VALUES (43076, 'Mark an Alliance cannon mounted on the makeshift wall at the Derelict Strand with a smoke flare.');
INSERT INTO `spelltext_en` VALUES (43089, 'Display at the Thane\'s Pyre in Skorn to challenge Halfdan the Ice-Hearted.');
INSERT INTO `spelltext_en` VALUES (43102, 'Calls forth the Winterhoof Brave. Can only be used in Skorn and cannot be used in combat. Right-click the emblem again to dismiss the brave.');
INSERT INTO `spelltext_en` VALUES (43115, 'Drops a heavy bomb.');
INSERT INTO `spelltext_en` VALUES (43154, 'Restores 2934 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (43157, 'Spray the selected proto-drake egg at the Ember Clutch. Oh what fun!');
INSERT INTO `spelltext_en` VALUES (43172, 'Places Tillinghast\'s Plagued Meat on the ground to attract a proto-drake in the Ember Clutch.');
INSERT INTO `spelltext_en` VALUES (43178, 'Places Forsaken Banner on top of a fallen Winterskorn hero.');
INSERT INTO `spelltext_en` VALUES (43180, 'Restores 18480 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (43182, 'Restores 12840 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (43183, 'Restores 19200 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (43185, 'Restores 2700 to 4500 health.');
INSERT INTO `spelltext_en` VALUES (43186, 'Restores 4200 to 4400 mana.');
INSERT INTO `spelltext_en` VALUES (43189, 'Sound the horn near the Frozen Waterfall to mimic the sound of a female yeti.');
INSERT INTO `spelltext_en` VALUES (43194, 'Increases the target\'s Agility by 20 for 30 min.');
INSERT INTO `spelltext_en` VALUES (43195, 'Increases the target\'s Intellect by 24 for 30 min.');
INSERT INTO `spelltext_en` VALUES (43196, 'Increases the target\'s Armor by 285 for 30 min.');
INSERT INTO `spelltext_en` VALUES (43197, 'Increases the target\'s Spirit by 32 for 30 min.');
INSERT INTO `spelltext_en` VALUES (43198, 'Increases the target\'s Stamina by 43 for 30 min.');
INSERT INTO `spelltext_en` VALUES (43199, 'Increases the target\'s Strength by 20 for 30 min.');
INSERT INTO `spelltext_en` VALUES (43209, 'Place the ram meat on the ground near the sleeping Shatterhorn.');
INSERT INTO `spelltext_en` VALUES (43214, 'Combine 4 pieces of Tough Ram Meat into a Giant Yeti Meal.');
INSERT INTO `spelltext_en` VALUES (43219, 'Increases armor penetration rating by 17.');
INSERT INTO `spelltext_en` VALUES (43232, 'Allows you to take control of a plaguehound tracker.');
INSERT INTO `spelltext_en` VALUES (43233, 'Use in Baleheim near various wooden structures to set them on fire.');
INSERT INTO `spelltext_en` VALUES (43286, 'Attempt to remove the brain from the corpse of a Deranged Explorer.');
INSERT INTO `spelltext_en` VALUES (43308, 'Nearby fishing nodes appear on the minimap. Only one form of tracking can be active at a time.');
INSERT INTO `spelltext_en` VALUES (43315, 'Attempt to read an unintelligible insult, presumably directed at Baleheim\'s chieftain.');
INSERT INTO `spelltext_en` VALUES (43354, 'Freeze a Spore in the Twisted Glade.');
INSERT INTO `spelltext_en` VALUES (43369, 'Transforms you into the likeness of a worg. Creatures other than the Fanggore worg pack can see through the disguise. Many actions, including combat and casting beneficial spells, will drop the disguise.');
INSERT INTO `spelltext_en` VALUES (43373, 'Fill this at the Cauldron of Vrykul Blood.');
INSERT INTO `spelltext_en` VALUES (43375, 'Mix this with Harris\'s Plague Samples.');
INSERT INTO `spelltext_en` VALUES (43381, 'Apply the new plague to the Vrykul in Halgrind.');
INSERT INTO `spelltext_en` VALUES (43386, 'Make the Dragonflayer Vrykul Prisoner drink this.');
INSERT INTO `spelltext_en` VALUES (43392, 'Assembles a mindless abomination at Halgrind.');
INSERT INTO `spelltext_en` VALUES (43403, 'Drop on the plague tanks at New Agamand.');
INSERT INTO `spelltext_en` VALUES (43455, 'Increases spell power by 247.');
INSERT INTO `spelltext_en` VALUES (43460, 'Increases spell power by 247.');
INSERT INTO `spelltext_en` VALUES (43466, 'Transports you to the spirit world. May only be used in Nifflevar.');
INSERT INTO `spelltext_en` VALUES (43478, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (43479, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (43480, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (43481, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (43490, 'Combine Book of Runes - Chapter 1, Book of Runes - Chapter 2, and Book of Runes - Chapter 3 to create the Book of Runes.');
INSERT INTO `spelltext_en` VALUES (43521, 'Combine five Darkrune Fragments to create a Darkrune.');
INSERT INTO `spelltext_en` VALUES (43588, 'Disarm duration reduced by 50%.');
INSERT INTO `spelltext_en` VALUES (43666, 'Investigate the runes on the corpse of a Runed Stone Giant.');
INSERT INTO `spelltext_en` VALUES (43674, 'Creates 200 Adamantite Stingers.');
INSERT INTO `spelltext_en` VALUES (43688, 'Summons and dismisses a rideable Amani War Bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (43692, 'Compare the runes on the sample with those on the Broken Tablet.');
INSERT INTO `spelltext_en` VALUES (43697, 'Right Click to summon and dismiss Toothy the baby crocolisk.');
INSERT INTO `spelltext_en` VALUES (43698, 'Right Click to summon and dismiss Muckbreath the baby crocolisk.');
INSERT INTO `spelltext_en` VALUES (43699, 'Attach a lure to your equipped fishing pole, increasing Fishing by 75 for 10 min.');
INSERT INTO `spelltext_en` VALUES (43706, 'Restores 7200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become enlightened and gain 20 critical strike rating and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (43710, 'Increases spell power by 211 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (43712, 'Increases spell power by 211 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (43713, 'Increases armor by 2500 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (43716, 'Increases attack power by 360 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (43718, 'Cook up some Kaliri Stew using 3 Warp Burgers and 1 Giant Kaliri Wing.');
INSERT INTO `spelltext_en` VALUES (43723, 'Cook up some Demon Broiled Surprise using 2 Mok\'Nathal Shortribs and 1 Crunchy Serpent.');
INSERT INTO `spelltext_en` VALUES (43724, 'Cook up some Spiritual Soup using 4 Roasted Clefthoof.');
INSERT INTO `spelltext_en` VALUES (43725, 'Increases the spell power of the final healing value of your Lifebloom by 116.');
INSERT INTO `spelltext_en` VALUES (43726, 'Causes your Flash of Light to increase the target\'s Resilience rating by 34 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43728, 'Causes your Lesser Healing Wave to increase the target\'s Resilience rating by 34 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43730, 'Charges you with energy, causing lightning to occasionally zap nearby enemies for the next 30 min.');
INSERT INTO `spelltext_en` VALUES (43732, 'Removes the Amani hex from a forest frog in Zul\'Aman.');
INSERT INTO `spelltext_en` VALUES (43736, 'Reduces the mana cost of Rejuvenation by 36.');
INSERT INTO `spelltext_en` VALUES (43737, 'Your Mangle ability has a chance to grant 65 agility for 10 sec.');
INSERT INTO `spelltext_en` VALUES (43739, 'Your Moonfire ability has a chance to grant 140 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (43741, 'Your Holy Light spell grants 28 mana per 5 sec. for 30 sec.');
INSERT INTO `spelltext_en` VALUES (43743, 'Increases the spell power of your Seal of Righteousness and Judgement of Righteousness abilities by 94.');
INSERT INTO `spelltext_en` VALUES (43745, 'Your Judgement of Command has a chance to grant 200 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (43748, 'Your Shock spells have a chance to grant 110 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (43750, 'Your Lightning Bolt spell has a chance to grant 100 haste rating for 10 sec.');
INSERT INTO `spelltext_en` VALUES (43752, 'Reduces the base mana cost of Chain Heal by 20.');
INSERT INTO `spelltext_en` VALUES (43763, 'Restores 7500 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 20 Hit Rating and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (43771, 'Increases the Strength and Stamina of your pet by 30. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (43777, 'If you spend at least 5 seconds eating you will become Very Happy for 1 hour.');
INSERT INTO `spelltext_en` VALUES (43782, 'Increases your spell penetration by 14.');
INSERT INTO `spelltext_en` VALUES (43808, 'Right Click to tap a pony keg of delicious Brewfest Brew.\r\n\r\nBrewfest Brew disappears if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (43816, 'Your melee attacks have a % chance to grant you 142 armor penetration rating for your next attack and to reduce your threat against your current target.');
INSERT INTO `spelltext_en` VALUES (43818, 'Your spell attacks have a % chance to make your next spell free and to reduce your threat against your current target.');
INSERT INTO `spelltext_en` VALUES (43820, 'Your healing spells have a % chance to place a healing effect on your target, healing 10% of the target\'s base health every 3 sec. for 9 sec.');
INSERT INTO `spelltext_en` VALUES (43822, 'Melee attacks against you have a % chance to grant you 25% damage reduction against the next melee attack that hits you.');
INSERT INTO `spelltext_en` VALUES (43827, 'The wielder of Frostmourne will become the new Lich King.');
INSERT INTO `spelltext_en` VALUES (43840, 'Your Mangle ability also grants you 26 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43841, 'Your Moonfire ability also grants you 26 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43842, 'Your Mangle ability also grants you 31 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43843, 'Your Mangle ability also grants you 34 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43844, 'Your Moonfire ability also grants you 31 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43845, 'Your Moonfire ability also grants you 34 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43850, 'Your Judgement ability also grants you 26 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43851, 'Your Judgement ability also grants you 31 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43852, 'Your Judgement ability also grants you 34 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43854, 'Your Holy Shield ability also grants you 26 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43855, 'Your Holy Shield ability also grants you 31 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43856, 'Your Holy Shield ability also grants you 34 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43857, 'Your Stormstrike ability also grants you 26 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43858, 'Your Stormstrike ability also grants you 31 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43859, 'Your Stormstrike ability also grants you 34 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43860, 'Your Earth Shock, Flame Shock, and Frost Shock abilities also grant you 26 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43861, 'Your Earth Shock, Flame Shock, and Frost Shock abilities also grant you 31 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43862, 'Your Earth Shock, Flame Shock, and Frost Shock abilities also grant you 34 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (43873, 'Let the Horseman laugh through you.');
INSERT INTO `spelltext_en` VALUES (43899, 'Summons and dismisses a rideable Brewfest Ram.');
INSERT INTO `spelltext_en` VALUES (43900, 'Summons and dismisses a rideable Swift Brewfest Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (43901, 'Increases armor penetration rating by 7.');
INSERT INTO `spelltext_en` VALUES (43902, 'Increases armor penetration rating by 14.');
INSERT INTO `spelltext_en` VALUES (43918, 'Right Click to summon and dismiss Mojo!');
INSERT INTO `spelltext_en` VALUES (43927, 'Summons and dismisses a rideable Cenarion War Hippogryph mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (43944, 'Guaranteed by Blix Fixwidget to make EVERYONE look attractive!');
INSERT INTO `spelltext_en` VALUES (43955, 'Attempt to lure Frostfin from his home in the Sunken Boat in Caldemere Lake.');
INSERT INTO `spelltext_en` VALUES (43959, 'A weak alcohol from the deepest reaches of the jungle.');
INSERT INTO `spelltext_en` VALUES (43961, 'Weak alcohol with a light and refreshing taste.');
INSERT INTO `spelltext_en` VALUES (43969, 'View the world through the eyes of the hippogryph Steelfeather.');
INSERT INTO `spelltext_en` VALUES (43972, 'Mix this with Harris\'s Plague Samples.');
INSERT INTO `spelltext_en` VALUES (43973, 'Fill this at the Cauldron of Vrykul Blood.');
INSERT INTO `spelltext_en` VALUES (43995, 'Calls forth 3 Voodoo Gnomes to destroy your enemies.');
INSERT INTO `spelltext_en` VALUES (44001, 'Increases your spell penetration by 35.');
INSERT INTO `spelltext_en` VALUES (44055, 'Increases maximum health by 1750 for 15 sec. Shares cooldown with other Battlemaster\'s trinkets.');
INSERT INTO `spelltext_en` VALUES (44071, 'Increases spell power by 221.');
INSERT INTO `spelltext_en` VALUES (44072, 'Increases spell power by 236.');
INSERT INTO `spelltext_en` VALUES (44073, 'Increases spell power by 221.');
INSERT INTO `spelltext_en` VALUES (44075, 'Increases spell power by 217.');
INSERT INTO `spelltext_en` VALUES (44077, 'Increases spell power by 216.');
INSERT INTO `spelltext_en` VALUES (44107, 'Restores 151.2 mana over 18 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 2 Stamina and Spirit for 15 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44109, 'Restores 436.8 mana over 21 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 4 Stamina and Spirit for 15 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44110, 'Restores 835.2 mana over 24 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 6 Stamina and Spirit for 15 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44111, 'Restores 1344.6 mana over 27 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 8 Stamina and Spirit for 15 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44112, 'Restores 1992 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 12 Stamina and Spirit for 15 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44113, 'Restores 2934 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 14 Stamina and Spirit for 15 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44114, 'Restores 4200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 20 Stamina and Spirit for 30 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44115, 'Restores 7200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 20 Stamina and Spirit for 30 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (44116, 'Restores 7200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 20 Strength and Spirit for 30 min. Strong alcohol.');
INSERT INTO `spelltext_en` VALUES (44117, 'Places the Alliance banner at the center of Baleheim.');
INSERT INTO `spelltext_en` VALUES (44122, 'Turn a greater cosmic essence into three lesser ones.');
INSERT INTO `spelltext_en` VALUES (44123, 'Turn three lesser cosmic essences into a greater one.');
INSERT INTO `spelltext_en` VALUES (44151, 'Summons and dismisses a Turbo-Charged Flying Machine. This is a very fast ride. This vehicle can only be used in Outland or Northrend. Requires 375 engineering skill to ride.');
INSERT INTO `spelltext_en` VALUES (44153, 'Summons and dismisses a Flying Machine. This vehicle can only be used in Outland or Northrend. Requires 300 engineering skill to ride.');
INSERT INTO `spelltext_en` VALUES (44166, 'Restores 7500 health and 7200 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (44212, 'Jam onto your head, or throw at someone!');
INSERT INTO `spelltext_en` VALUES (44235, 'Allows the Imbiber to breathe water for 3 min.');
INSERT INTO `spelltext_en` VALUES (44292, 'Reduces the cooldown of your Multi-Shot ability by 1 sec.');
INSERT INTO `spelltext_en` VALUES (44293, 'Reduces the casting time of your Entangling Roots ability by 0.15 sec.');
INSERT INTO `spelltext_en` VALUES (44297, 'Reduces the cooldown of your Psychic Scream ability by 3 sec.');
INSERT INTO `spelltext_en` VALUES (44299, 'Reduces the cooldown of your Grounding Totem ability by 1.5 sec.');
INSERT INTO `spelltext_en` VALUES (44300, 'Increases the damage dealt by your Crusader Strike ability by 5%.');
INSERT INTO `spelltext_en` VALUES (44301, 'Reduces the pushback suffered from damaging attacks while casting Polymorph by 50%.');
INSERT INTO `spelltext_en` VALUES (44302, 'Reduces the casting time of your Polymorph spell by 0.15 sec.');
INSERT INTO `spelltext_en` VALUES (44323, 'Sends your rock falcon after your selected target. Must feed rock falcon one Fjord Grub before you are able to send it after a target.');
INSERT INTO `spelltext_en` VALUES (44336, 'Increases attack power by 200.');
INSERT INTO `spelltext_en` VALUES (44369, 'Right Click to summon and dismiss a pint-sized pink pachyderm.');
INSERT INTO `spelltext_en` VALUES (44383, 'Permanently enchant a shield to increase Resilience by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (44389, 'Unfolds into a Field Repair Bot that sells reagents and can repair damaged item_display. After 10 minutes its internal motor fails.');
INSERT INTO `spelltext_en` VALUES (44407, 'Sends your rock falcon after your selected target. Must feed rock falcon one Fjord Grub before you are able to send it after a target.');
INSERT INTO `spelltext_en` VALUES (44436, 'Dangerously sweet sugar-frosted taffy with a rich syrup center. Goes bad in only a day.');
INSERT INTO `spelltext_en` VALUES (44454, 'Throw at a Reef Bull or Attracted Reef Bull to get it to follow you for a short time. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (44467, 'Allows the Imbiber to breathe water for 30 min.');
INSERT INTO `spelltext_en` VALUES (44474, 'Increases armor penetration rating by 8.');
INSERT INTO `spelltext_en` VALUES (44483, 'Permanently enchant a cloak to increase Frost resistance by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44484, 'Permanently enchant gloves to increase expertise rating by 15. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44488, 'Permanently enchant gloves to increase hit rating by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44489, 'Permanently enchant a shield to increase defense rating by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44492, 'Permanently enchant chest armor to increase health by 200. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44494, 'Permanently enchant a cloak to increase nature resistance by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44500, 'Permanently enchant a cloak to increase Agility by 16. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44506, 'Permanently enchant gloves to increase Herbalism, Mining, and Skinning by 5. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44508, 'Permanently enchant boots to increase Spirit by 18. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44509, 'Permanently enchant chest armor to restore 10 mana every 5 seconds. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44510, 'Permanently enchant a melee weapon to increase Spirit by 45. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44513, 'Permanently enchant gloves to increase attack power by 35. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44524, 'Permanently enchant a melee weapon to sometimes inflict fire damage. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44528, 'Permanently enchant boots to increase Stamina by 22. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44529, 'Permanently enchant gloves to increase your Agility by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44540, 'An extremely potent alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (44555, 'Permanently enchant bracers to add +16 intellect. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44556, 'Permanently enchant a cloak to increase fire resistance by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44575, 'Permanently enchant bracers to increase attack power by 50. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44576, 'Permanently enchant a melee weapon to sometimes heal the wielder when striking in melee. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44582, 'Permanently enchant a cloak to increase spell penetration by 35. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44584, 'Permanently enchant boots to restore 7 mana and health every 5 seconds. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44588, 'Permanently enchant chest armor to increase resilience rating by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44589, 'Permanently enchant boots to increase Agility by 16. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44590, 'Permanently enchant a cloak to increase shadow resistance by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44591, 'Permanently enchant a cloak to increase defense rating by 16. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44592, 'Permanently enchant gloves to increase your spell power by 28. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44593, 'Permanently enchant bracers to increase Spirit by 18. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44595, 'Permanently enchant a two-handed melee weapon to increase attack power against Undead by 140. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44596, 'Permanently enchant a cloak to increase arcane resistance by 20. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44598, 'Permanently enchant bracers to increase expertise rating by 15. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44612, 'Permanently enchant gloves to increase critical strike rating by 16. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44616, 'Permanently enchant bracers to increase all stats by 6. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44621, 'Permanently enchant a melee weapon to have a chance of reducing movement speed and doing additional damage against giants. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44623, 'Permanently enchant chest armor to increase all stats by 8. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44625, 'Permanently enchant gloves to increase threat caused by 2% and increase parry rating by 10. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44629, 'Permanently enchant a melee weapon to increase spell power by 50. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44630, 'Permanently enchant a two-handed weapon to increase attack power by 85. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44631, 'Permanently enchant a cloak to increase stealth slightly and Agility by 10. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44633, 'Permanently enchant a melee weapon to increase Agility by 26. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44635, 'Permanently enchant bracers to increase spell power by 23. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (44744, 'Summons and dismisses a rideable Merciless Nether Drake mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (44751, 'Increases spell power by 266.');
INSERT INTO `spelltext_en` VALUES (44755, 'Shower a nearby target with a cascade of snowflakes!');
INSERT INTO `spelltext_en` VALUES (44756, 'Increases armor penetration rating by 32.');
INSERT INTO `spelltext_en` VALUES (44757, 'Increases the block value of your shield by 135.');
INSERT INTO `spelltext_en` VALUES (44759, 'Increases spell power by 266.');
INSERT INTO `spelltext_en` VALUES (44769, 'Permanently increase the armor on a pair of gloves by 240. Only useable on item_display level 60 and above.');
INSERT INTO `spelltext_en` VALUES (44810, 'Increases armor penetration rating by 26.');
INSERT INTO `spelltext_en` VALUES (44847, 'Increases spell power by 74.');
INSERT INTO `spelltext_en` VALUES (44853, 'Increases spell power by 75.');
INSERT INTO `spelltext_en` VALUES (44856, 'Places the character, their group, and any pets, into a phased state where they will be invisible to unphased creatures and able to see the smuggled mana cells at Bash\'ir Landing. All group members and pets stay within 100 yards of the caster to maintain the phased state. The phasing only works within Bash\'ir Landing.');
INSERT INTO `spelltext_en` VALUES (44879, 'Releases a Living Flare from the Sizzling Embers.');
INSERT INTO `spelltext_en` VALUES (44881, 'Hurls the gland at a nearby Razorthorn Ravager.');
INSERT INTO `spelltext_en` VALUES (44937, 'Weakens a Felblood Initiate by draining all their fel energy.');
INSERT INTO `spelltext_en` VALUES (44968, 'Permanently increase the Stamina of an item worn on the head, chest, shoulders, legs, hands or feet by 10. Only usable on item_display level 60 and above.');
INSERT INTO `spelltext_en` VALUES (44969, 'Channel the power of 4 Mana Remnants into a nearby Crystal Ward.');
INSERT INTO `spelltext_en` VALUES (44973, 'Increases spell power by 293.');
INSERT INTO `spelltext_en` VALUES (44974, 'Increases spell power by 292.');
INSERT INTO `spelltext_en` VALUES (44979, 'Increases spell power by 75.');
INSERT INTO `spelltext_en` VALUES (44980, 'Increases armor penetration rating by 24.');
INSERT INTO `spelltext_en` VALUES (44983, 'Increases armor penetration rating by 33.');
INSERT INTO `spelltext_en` VALUES (44997, 'Use on the remains of a defeated Erratic Sentry to perform a behavior conversion.');
INSERT INTO `spelltext_en` VALUES (45003, 'Increases armor penetration rating by 27.');
INSERT INTO `spelltext_en` VALUES (45011, 'Increases spell power by 50.');
INSERT INTO `spelltext_en` VALUES (45019, 'Restores 1992 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become well fed and gain 12 Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (45020, 'Restores 7200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become well fed and gain 20 Stamina and Spirit for 30 min. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (45030, 'Impale the corpse of an Emissary of Hate with the banner of the Shattered Sun Offensive.');
INSERT INTO `spelltext_en` VALUES (45038, 'Use this near the demonic portal at Dawning Square to teleport to the Throne of Kil\'jaeden.');
INSERT INTO `spelltext_en` VALUES (45042, 'Conjures a Power Circle lasting for 15 sec. While standing in this circle, the caster gains 320 spell power.');
INSERT INTO `spelltext_en` VALUES (45049, 'Increases maximum health by 2000 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (45051, 'Restores 1650 to 2750 mana and health. Sometimes has side effects.');
INSERT INTO `spelltext_en` VALUES (45052, 'Gain 250 mana each sec. for 8 sec. Channeled.');
INSERT INTO `spelltext_en` VALUES (45054, 'Each time one of your spells deals periodic damage, there is a chance 285 to 475 additional damage will be dealt.');
INSERT INTO `spelltext_en` VALUES (45057, 'Melee attacks which reduce you below 35% health cause you to gain 152 dodge rating for 10 sec. Cannot occur more than once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (45059, 'Collects 100 Holy Energy from healing spells you cast. Cannot collect more than 2000 Holy Energy.');
INSERT INTO `spelltext_en` VALUES (45064, 'Release all accumulated Holy Energy to instantly heal current friendly target by the amount of Holy Energy accumulated.');
INSERT INTO `spelltext_en` VALUES (45072, 'Drops arcane charges over a demon in the Dead Scar.');
INSERT INTO `spelltext_en` VALUES (45082, 'Right Click to summon and dismiss your tiny sporebat.');
INSERT INTO `spelltext_en` VALUES (45094, 'Right Click to set up a romantic picnic.');
INSERT INTO `spelltext_en` VALUES (45109, 'Throw and break near Greengill slaves in order to free them from their mind control. Affected murlocs will turn on their former masters.');
INSERT INTO `spelltext_en` VALUES (45115, 'Drops a heavy bomb.');
INSERT INTO `spelltext_en` VALUES (45125, 'Right Click to summon and dismiss your chicken.');
INSERT INTO `spelltext_en` VALUES (45127, 'Right Click to summon and dismiss your kite.');
INSERT INTO `spelltext_en` VALUES (45129, 'Throw the zeppelin to a friendly player.  If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (45131, 'Right Click to build a paper zeppelin.');
INSERT INTO `spelltext_en` VALUES (45133, 'Throw the Flying Machine to a friendly player.  If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (45135, 'Right Click to build a paper gyrocopter.');
INSERT INTO `spelltext_en` VALUES (45137, 'Unlocks Darkspine Ore Chest.');
INSERT INTO `spelltext_en` VALUES (45149, 'Bring to Hauthaa\'s anvil and break the armament down into its constituent metal pieces, cleansing it of its fel corruption in the process.');
INSERT INTO `spelltext_en` VALUES (45153, 'Shoots a lovely firework into the air.');
INSERT INTO `spelltext_en` VALUES (45171, 'Creates 200 Adamantite Shells.');
INSERT INTO `spelltext_en` VALUES (45191, 'Samples the density of the nearest ley line field.');
INSERT INTO `spelltext_en` VALUES (45257, 'Summon and control your steam tonk.');
INSERT INTO `spelltext_en` VALUES (45274, 'Target Scalder\'s corpse and use the conch. It will trap her magical steam and fill the king\'s conch.');
INSERT INTO `spelltext_en` VALUES (45278, 'Wear King Mrgl-Mrgl\'s spare murloc suit. It can only be used at Winterfin Village and within the Winterfin Caverns. Will only fool the aggressive Winterfin murlocs. Many actions, including combat and casting beneficial spells, will drop the disguise.');
INSERT INTO `spelltext_en` VALUES (45309, 'Increases spell power by 185.');
INSERT INTO `spelltext_en` VALUES (45323, 'Places Vrykul artifact at designated burial mound.');
INSERT INTO `spelltext_en` VALUES (45351, 'Drain residual Light energy from the ailing Blood Elf Magisters beneath the Blood Knight sanctum.');
INSERT INTO `spelltext_en` VALUES (45354, 'Chance on hit to increase your attack power by 230 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (45355, 'Chance on melee or ranged hit to enter a Battle Trance, during which your melee or ranged attacks will each grant 44 attack power, stacking up to 10 times. Expires after 20 sec.');
INSERT INTO `spelltext_en` VALUES (45373, 'Increases all Stats by 15 for 2 hrs. Battle Elixir. This effect only works on the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (45395, 'While applied to target weapon, wielder has a chance to regain 165 mana on each spell cast. Only functions on the Isle of Quel\'Danas, on the Magisters\' Terrace, and on the Sunwell Plateau. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (45397, 'While applied to target weapon, wielder has a chance to gain 300 attack power on every melee or ranged attack for 10 sec. Only functions on the Isle of Quel\'Danas, on the Magisters\' Terrace, and on the Sunwell Plateau. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (45414, 'Records the readings of seismic hotspots in Borean Tundra.');
INSERT INTO `spelltext_en` VALUES (45416, 'Hot feet!');
INSERT INTO `spelltext_en` VALUES (45417, 'Shower a nearby target with a cascade of summer flowers!');
INSERT INTO `spelltext_en` VALUES (45418, 'Add some spark to your dance moves!');
INSERT INTO `spelltext_en` VALUES (45426, 'Right Click to place your Brazier of Dancing Flames.');
INSERT INTO `spelltext_en` VALUES (45440, 'Summon and control your steam tonk.');
INSERT INTO `spelltext_en` VALUES (45441, 'Unlocks an Arcane Prison.');
INSERT INTO `spelltext_en` VALUES (45474, 'Burn the corpse of a dead caravan guard or worker.');
INSERT INTO `spelltext_en` VALUES (45481, 'Your spells have a chance to call on the power of the Arcane if you\'re exalted with the Scryers, or the Light if you\'re exalted with the Aldor.');
INSERT INTO `spelltext_en` VALUES (45482, 'Your melee and ranged attacks have a chance to call on the power of the Arcane if you\'re exalted with the Scryers, or the Light if you\'re exalted with the Aldor.');
INSERT INTO `spelltext_en` VALUES (45483, 'Your melee and ranged attacks have a chance to call on the power of the Arcane if you\'re exalted with the Scryers, or the Light if you\'re exalted with the Aldor.');
INSERT INTO `spelltext_en` VALUES (45484, 'Your heals have a chance to call on the power of the Arcane if you\'re exalted with the Scryers, or the Light if you\'re exalted with the Aldor.');
INSERT INTO `spelltext_en` VALUES (45503, 'Plants one Seaforium Depth Charge at a Nerub\'ar sinkhole.');
INSERT INTO `spelltext_en` VALUES (45504, 'Free the enthralled spirit of a Kaskala Shaman or Kaskala Craftsman.');
INSERT INTO `spelltext_en` VALUES (45536, 'Attempt to complete a Tuskarr ancestor\'s ceremony while standing near his statue.');
INSERT INTO `spelltext_en` VALUES (45543, 'Heals 4800 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (45544, 'Heals 5800 damage over 8 sec.');
INSERT INTO `spelltext_en` VALUES (45548, 'Restores 22500 health over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (45583, 'Throw at a nearby floating platform.');
INSERT INTO `spelltext_en` VALUES (45594, 'Stand near Snarlfang\'s totem and activate the power within the primal to gain a vision of what happened to Farseer Grimwalker.');
INSERT INTO `spelltext_en` VALUES (45606, 'Target Farseer Grimwalker\'s Spirit with the power of the fetish to reverse its effects and free him.');
INSERT INTO `spelltext_en` VALUES (45611, 'Envelops a wounded Beryl Sorcerer in magical chains.');
INSERT INTO `spelltext_en` VALUES (45614, 'Shield yourself from the eyes of most rank-and-file Scourge at the Temple City of En\'kilah. Only effective in the Temple City of En\'kilah.');
INSERT INTO `spelltext_en` VALUES (45618, 'Restores 4320 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 8 resistance to all schools of magic for 30 min.');
INSERT INTO `spelltext_en` VALUES (45634, 'Inflicts incredible pain to target, but does no permanent damage.');
INSERT INTO `spelltext_en` VALUES (45653, 'Place Sage Aeire\'s Totem near one of the Scourge cauldrons in the Temple City of En\'kilah. The totem will attempt to neutralize the contents of the cauldron.');
INSERT INTO `spelltext_en` VALUES (45692, 'Invokes the spirit of tuskarr fire. Must be standing near a Kvaldir ship to use.');
INSERT INTO `spelltext_en` VALUES (45694, 'Makes you slightly tipsy and increases your skill in fishing by 10 for 3 min.');
INSERT INTO `spelltext_en` VALUES (45697, 'Replaces the fishing line on your fishing pole with a delicately spun truesilver line, increasing Fishing skill by 3.');
INSERT INTO `spelltext_en` VALUES (45703, 'Blow at the far end of Warsong Jetty to call forth Orabus the Helmsman.');
INSERT INTO `spelltext_en` VALUES (45729, 'Light and throw, and watch the fireworks!');
INSERT INTO `spelltext_en` VALUES (45731, 'When applied to your fishing pole, increases Fishing by 100 for 10 minutes.');
INSERT INTO `spelltext_en` VALUES (45732, 'Tosses a practice torch at the target area.');
INSERT INTO `spelltext_en` VALUES (45742, 'Places the Warsong Banner on top of the corpse of Magmothregar. Requires that you be wearing the Warsong orc disguise.');
INSERT INTO `spelltext_en` VALUES (45759, 'Transforms you into the likeness of a Warsong Orc. It can only be used within Magmoth in the Borean Tundra.');
INSERT INTO `spelltext_en` VALUES (45765, 'Shatters a Void Crystal into two Large Prismatic Shards.');
INSERT INTO `spelltext_en` VALUES (45780, 'Detonates an antimagic charge at the Beryl force shield.');
INSERT INTO `spelltext_en` VALUES (45807, 'Unlocks Scourge cage.');
INSERT INTO `spelltext_en` VALUES (45819, 'Right Click to throw a Juggling Torch at the targeted area. Anyone who knows how to juggle torches can catch it where it lands.');
INSERT INTO `spelltext_en` VALUES (45834, 'Toss into a Den of Dying Plague Cauldron to neutralize the plague. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (45835, 'Toss into a Den of the Dying Plague Cauldron to neutralize the plague. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (45853, 'Survey one of the Nerubian sinkholes in the Geyser Fields.');
INSERT INTO `spelltext_en` VALUES (45858, 'Increases the block value of your shield by 153.');
INSERT INTO `spelltext_en` VALUES (45875, 'Places a riding snaffle in the kodo\'s mouth. It\'s a cure and a riding device!');
INSERT INTO `spelltext_en` VALUES (45890, 'Right Click to summon and dismiss your Scorchling.');
INSERT INTO `spelltext_en` VALUES (45932, 'Unlocks Gurgleboggle\'s Bauble');
INSERT INTO `spelltext_en` VALUES (45933, 'Unlocks Burblegobble\'s Bauble');
INSERT INTO `spelltext_en` VALUES (45942, 'Sound the horn near the southernmost sinkhole in the Geyser Fields.');
INSERT INTO `spelltext_en` VALUES (45958, 'Signals Alliance soldiers from Valiance Keep.');
INSERT INTO `spelltext_en` VALUES (45980, 'Target and inject a dead Fizzcrank Mechagnome so that they will be re-cursed with the Curse of the Flesh, and can then be teleported back to the airstrip via the transmatter device.');
INSERT INTO `spelltext_en` VALUES (45990, 'Collect oil from a nearby oil slick.');
INSERT INTO `spelltext_en` VALUES (45995, 'Rub this all over your face while standing near Bloodmage Laurith at the Bloodspore Plains.');
INSERT INTO `spelltext_en` VALUES (46010, 'Weakens a targeted magnataur or Gammothra.');
INSERT INTO `spelltext_en` VALUES (46017, 'Deploy the Shake-n-Quake 5000 near the southernmost sinkhole in the Geyser Fields.');
INSERT INTO `spelltext_en` VALUES (46023, 'Target a \'dead\' robotic unit in the greater pools region of the Borean Tundra in order to reprogram it.');
INSERT INTO `spelltext_en` VALUES (46051, 'Increases spell power by 66.');
INSERT INTO `spelltext_en` VALUES (46055, 'Increases your spell penetration by 43.');
INSERT INTO `spelltext_en` VALUES (46060, 'Increases your spell penetration by 40.');
INSERT INTO `spelltext_en` VALUES (46078, 'Allows you to detect recent users of Cult of the Damned necromancy.');
INSERT INTO `spelltext_en` VALUES (46085, 'Places a fake fur near a caribou trap.');
INSERT INTO `spelltext_en` VALUES (46088, 'Your Mangle ability also grants you 39 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46090, 'Your Moonfire ability also grants you 39 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46091, 'Your Judgement ability also grants you 39 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46092, 'Causes your Flash of Light to increase the target\'s Resilience rating by 39 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46095, 'Your Holy Shield ability also grants you 39 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46096, 'Your Stormstrike ability also grants you 39 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46097, 'Your Earth Shock, Flame Shock, and Frost Shock abilities also grant you 39 resilience rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46098, 'Causes your Lesser Healing Wave to increase the target\'s Resilience rating by 39 for 6 sec.');
INSERT INTO `spelltext_en` VALUES (46100, 'Increases the spell power of the final healing value of your Lifebloom by 131.');
INSERT INTO `spelltext_en` VALUES (46149, 'Teleports the caster from the Isle of Quel\'Danas to Shattrath.');
INSERT INTO `spelltext_en` VALUES (46168, 'Doubles a targeted Non-Combat Pet\'s size for as long as it remains at its master\'s side.');
INSERT INTO `spelltext_en` VALUES (46171, 'Attempt to scuttle the wreckage of a crashed Flying Machine in the Scalding Pools.');
INSERT INTO `spelltext_en` VALUES (46197, 'A riding rocket! This can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (46199, 'An X-TREME riding rocket! This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (46201, 'Smashes mammoth traps.');
INSERT INTO `spelltext_en` VALUES (46203, 'Right Click to activate your Personal Weather Maker.');
INSERT INTO `spelltext_en` VALUES (46273, 'Allows the wearer to detect Multiphase Disturbances while wearing the goggles in the Spirit Fields of Nagrand.');
INSERT INTO `spelltext_en` VALUES (46281, 'Take a multiphase reading from a dark Multiphase Disturbance within 20 yards.');
INSERT INTO `spelltext_en` VALUES (46337, 'Transforms you into an innocent crab for 3 min. It can only be used upon the Zoram Strand of Ashenvale. Only the new Twlight Cultists and their allies will be fooled. Looting, taking a hostile action, or casting beneficial spells will drop the disguise.');
INSERT INTO `spelltext_en` VALUES (46338, 'Call Fezzix Geartwists\'s faithful mule, Jenny. Can only be used while standing near a crashed flying machine in the Scalding Pools.');
INSERT INTO `spelltext_en` VALUES (46353, 'Allows the miner to smelt khorium and hardened adamantite bars into a hardened khorium bar. Smelting hard khorium requires a forge.');
INSERT INTO `spelltext_en` VALUES (46354, 'Disguises the user as a blood elf.');
INSERT INTO `spelltext_en` VALUES (46361, 'Throw a net at a Scourged Flamespitter.');
INSERT INTO `spelltext_en` VALUES (46368, 'Blow on this horn while battling Harold Lane.');
INSERT INTO `spelltext_en` VALUES (46379, 'Plant the windsoul totem in the ground.');
INSERT INTO `spelltext_en` VALUES (46387, 'Turn an Uncured Caribou Hide into a Steam Cured Hide. Must be standing near a steam vent in the Geyser Fields or the surrounding areas.');
INSERT INTO `spelltext_en` VALUES (46412, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46413, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46414, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46415, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46425, 'Right Click to summon and dismiss Snarly the baby crocolisk.');
INSERT INTO `spelltext_en` VALUES (46426, 'Right Click to summon and dismiss Chuck the baby crocolisk.');
INSERT INTO `spelltext_en` VALUES (46432, 'Unleashes the power of the storm from within you, focusing its energies upon the targeted robot and stunning it for a short time. The maximum range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (46435, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46436, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46437, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46438, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46454, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46455, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46456, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46485, 'Target a dead Fizzcrank Mechagnome so that their soul will be freed.');
INSERT INTO `spelltext_en` VALUES (46528, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46530, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46534, '+35 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (46547, 'Activates the Interdimensional Refabricator at the nexus dimensional rift.');
INSERT INTO `spelltext_en` VALUES (46567, 'Fire a powerful rocket at the enemy that does 960 to 1440 damage and stuns them for 3 sec.  This thing has quite a kick though...');
INSERT INTO `spelltext_en` VALUES (46574, 'Set a sack of Farshire Grain on fire.');
INSERT INTO `spelltext_en` VALUES (46578, 'Permanently enchant a melee weapon to cause your damaging spells and melee weapon hits to occasionally inflict additional Frost damage and slow the target. Requires a level 60 or higher item.\r\n\r\nSlow effect does not work on targets 73 or higher.');
INSERT INTO `spelltext_en` VALUES (46594, 'Permanently enchant chest armor to increase defense rating by 16. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (46599, 'Right Click to summon and dismiss your baby phoenix.');
INSERT INTO `spelltext_en` VALUES (46607, 'Harpoons a Nexus Drake Hatchling, injecting it with red dragon blood which will cause the hatchling to become docile after 25 seconds.');
INSERT INTO `spelltext_en` VALUES (46628, 'Summons and dismisses the Hawkstrider of Kael\'thas Sunstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (46632, 'Increases spell power by 176.');
INSERT INTO `spelltext_en` VALUES (46643, 'Let the Frostscythe\'s chill flow through you.');
INSERT INTO `spelltext_en` VALUES (46661, 'Throw me!');
INSERT INTO `spelltext_en` VALUES (46683, 'Restores 1790 health over 27 sec.  Must remain seated while eating.  If you eat for 10 seconds will also increase your spell power by 14 for 15 min.');
INSERT INTO `spelltext_en` VALUES (46699, 'Thori\'dal generates magical arrows when the bow string is drawn. Does not use ammo.');
INSERT INTO `spelltext_en` VALUES (46700, 'Breaks a Blue Dragon Egg in Coldarra.');
INSERT INTO `spelltext_en` VALUES (46712, 'Increases armor penetration rating by 63.');
INSERT INTO `spelltext_en` VALUES (46742, 'Increases spell power by 271.');
INSERT INTO `spelltext_en` VALUES (46743, 'Increases armor penetration rating by 35.');
INSERT INTO `spelltext_en` VALUES (46747, 'Light near a capital bonfire and fling the torch!');
INSERT INTO `spelltext_en` VALUES (46748, 'Increases armor penetration rating by 19.');
INSERT INTO `spelltext_en` VALUES (46749, 'Increases spell power by 292.');
INSERT INTO `spelltext_en` VALUES (46760, 'Releases anyone bound within the prison\'s confines.');
INSERT INTO `spelltext_en` VALUES (46770, 'Pour upon the targeted corpse of a blighted elk or rabid grizzly to cleanse it of the Scourge\'s taint.');
INSERT INTO `spelltext_en` VALUES (46780, 'Increases dodge rating by 165 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (46782, 'Summons the Khorium Boar to fight for you for 30 sec.');
INSERT INTO `spelltext_en` VALUES (46783, 'Increases spell power by 150 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (46784, 'Increases attack power by 320 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (46785, 'Restores 900 mana over 12 sec.');
INSERT INTO `spelltext_en` VALUES (46793, 'Creates an Arcane Power Focus that Saragosa will be unable to resist.');
INSERT INTO `spelltext_en` VALUES (46797, 'Place explosives on top of a Scourge sinkhole.');
INSERT INTO `spelltext_en` VALUES (46832, 'Your Wrath casts have a chance to reduce the cast time on your next Starfire by 1.5 sec.');
INSERT INTO `spelltext_en` VALUES (46834, 'The casting time on your Regrowth spell is reduced by 0.2 sec.');
INSERT INTO `spelltext_en` VALUES (46837, 'Increases spell damage caused by Shadow, Fire and Frost spells by up to 80 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.\r\n\r\nOnly active in Tempest Keep, Serpentshrine Cavern, Caverns of Time: Mount Hyjal, Black Temple and the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (46839, 'Increases spell damage caused by Arcane, Holy and Nature spells by up to 80 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.\r\n\r\nOnly active in Tempest Keep, Serpentshrine Cavern, Caverns of Time: Mount Hyjal, Black Temple and the Sunwell Plateau.');
INSERT INTO `spelltext_en` VALUES (46849, 'Fires a flare that will summon Keristrasza to your location.');
INSERT INTO `spelltext_en` VALUES (46851, 'Increases the effective spell power of your Holy Shock when used as a healing spell by 10%.');
INSERT INTO `spelltext_en` VALUES (46898, 'Restores 1790 health over 27 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 24 attack power for 15 min.');
INSERT INTO `spelltext_en` VALUES (46927, 'The coolest drink around.');
INSERT INTO `spelltext_en` VALUES (46939, 'On successful ranged attack gain 8 mana and if possible drain 8 mana from the target.');
INSERT INTO `spelltext_en` VALUES (47004, 'Hurls an exploding rocket.');
INSERT INTO `spelltext_en` VALUES (47005, 'Hurl a boulder at the iron dwarves inside the exposed area of Thor Modan.');
INSERT INTO `spelltext_en` VALUES (47039, 'Combine 8 Missing Journal Pages with an Incomplete Journal to recreate Brann Bronzebeard\'s Journal.');
INSERT INTO `spelltext_en` VALUES (47041, 'Increases armor penetration rating by 6.');
INSERT INTO `spelltext_en` VALUES (47042, 'Assembles Bounty Hunter\'s Cage around a stunned ice troll.');
INSERT INTO `spelltext_en` VALUES (47051, 'Permanently enchant a cloak to increase defense rating by 12. Requires a level 35 or higher item.');
INSERT INTO `spelltext_en` VALUES (47058, 'Decipher a Rune Plate inside Thor Modan.');
INSERT INTO `spelltext_en` VALUES (47061, 'Increases armor penetration rating by 31.');
INSERT INTO `spelltext_en` VALUES (47097, 'Activate anywhere within the Moonrest Gardens to teleport to the Surge Needle. If you are already atop the Surge Needle, use to teleport back down.');
INSERT INTO `spelltext_en` VALUES (47103, 'Permanently enchant a mount to increase its mounted speed by 10%. You may only enchant mounts in your own inventory, and enchanting your mount will cause it to become soulbound. Single use.');
INSERT INTO `spelltext_en` VALUES (47110, 'Summons Drakuru\'s spirit to one of Drakuru\'s Braziers in Grizzly Hills.');
INSERT INTO `spelltext_en` VALUES (47125, 'Increases spell power by 168.');
INSERT INTO `spelltext_en` VALUES (47126, 'Increases spell power by 173.');
INSERT INTO `spelltext_en` VALUES (47129, 'Plants a totem that summons an Earthen Ring Guide. Only usable in The Zoram Strand.');
INSERT INTO `spelltext_en` VALUES (47130, 'Deploy the portable seismograph at the eastern end of the exposed Thor Modan tunnel.');
INSERT INTO `spelltext_en` VALUES (47138, 'Increases armor penetration rating by 53.');
INSERT INTO `spelltext_en` VALUES (47159, 'Bait Tua\'kea\'s Fishing Hook under the water in Moa\'ki Harbor. Tu\'u\'gwar, \"He Who Plays With His Food\" is sure to come.');
INSERT INTO `spelltext_en` VALUES (47166, 'Use on the remains of a defeated Harvest Collector to perform a behavior conversion.');
INSERT INTO `spelltext_en` VALUES (47170, 'Impale Leviroth while he slumbers in the waters below Riplash.');
INSERT INTO `spelltext_en` VALUES (47175, 'This strong, spicy alcoholic beverage will set your breath on fire.');
INSERT INTO `spelltext_en` VALUES (47177, 'Increases armor penetration rating by 21.');
INSERT INTO `spelltext_en` VALUES (47188, 'Increases armor penetration rating by 39.');
INSERT INTO `spelltext_en` VALUES (47190, 'Sprinkle the incense upon Toalu\'u\'s Brazier to loose your spirit.');
INSERT INTO `spelltext_en` VALUES (47207, 'Hurls Mack\'s Dark Grog.');
INSERT INTO `spelltext_en` VALUES (47215, 'Increases spell power by 178 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (47217, 'Increases attack power by 328 for 20 sec. You feel drunk!');
INSERT INTO `spelltext_en` VALUES (47228, 'Protects the caster from falling damage for 2 sec.');
INSERT INTO `spelltext_en` VALUES (47256, 'Place in burning brazier after reading.');
INSERT INTO `spelltext_en` VALUES (47276, 'Summon Lurid, Thassarian\'s companion, inside the Temple City of En\'kilah. He will fight by your side for 1 minute.');
INSERT INTO `spelltext_en` VALUES (47291, 'Mines Black Blood of Yogg-Saron from special mineral nodes inside the Pit of Narjun.');
INSERT INTO `spelltext_en` VALUES (47304, 'Places a Warsong Battle Standard inside Icemist Village.');
INSERT INTO `spelltext_en` VALUES (47305, 'Throw into the mouth of a weakened Hulking Jormungar.');
INSERT INTO `spelltext_en` VALUES (47371, 'Drink this before the Brewmaiden throws you another.');
INSERT INTO `spelltext_en` VALUES (47374, 'Controls and reads information from a Ley Line Focus.');
INSERT INTO `spelltext_en` VALUES (47394, 'Grants a Grizzly Hills Giant the Blessing of Kurun.');
INSERT INTO `spelltext_en` VALUES (47412, 'Unlocks Anub\'ar Prison.');
INSERT INTO `spelltext_en` VALUES (47423, 'Calls down a Kor\'kron War Rider that you can mount and ride into battle.');
INSERT INTO `spelltext_en` VALUES (47430, 'Protects from the digestive fluids of Jormungar in the Crystal Vice.');
INSERT INTO `spelltext_en` VALUES (47431, 'Capture a Jormungar Spawn from Ice Heart Cavern.');
INSERT INTO `spelltext_en` VALUES (47435, 'Collect Corrosive Spit that has been applied by an Ice Heart Jormungar.');
INSERT INTO `spelltext_en` VALUES (47455, 'Call forth a Tuskarr combatant while in Iskaal.');
INSERT INTO `spelltext_en` VALUES (47469, 'Controls and reads information from a Ley Line Focus.');
INSERT INTO `spelltext_en` VALUES (47524, 'Shows the location of all nearby demons on the minimap until cancelled. Only one form of tracking can be active at a time.');
INSERT INTO `spelltext_en` VALUES (47530, 'Give to the Lothalor Ancients to strengthen them against the corrupting influence of the arcane wyrms and the magic permeating the woodlands.');
INSERT INTO `spelltext_en` VALUES (47542, 'Draw power from one of the Ancient Stones along the Shattered Strand.');
INSERT INTO `spelltext_en` VALUES (47604, 'Attempt to free a Runed Giant from the spells binding it.');
INSERT INTO `spelltext_en` VALUES (47627, 'Hurls a vial of Sintar\'s vaccine in front of the caster.');
INSERT INTO `spelltext_en` VALUES (47634, 'Controls and reads information from a Ley Line Focus.');
INSERT INTO `spelltext_en` VALUES (47672, 'Permanently enchant a cloak to give 225 additional armor. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (47701, 'Rings the gongs outside Drakil\'jin Ruins.');
INSERT INTO `spelltext_en` VALUES (47702, 'Draws the power of the unholy into the unholy gem. May only be used on Duke Vallenhal when his health is below 35%.');
INSERT INTO `spelltext_en` VALUES (47722, 'Draws frost into the frost gem. May only be used on an Ice Revenant when its health is below 35%.');
INSERT INTO `spelltext_en` VALUES (47766, 'Permanently enchant chest armor to increase defense rating by 22.  Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (47770, 'Rolls a pair of dice.');
INSERT INTO `spelltext_en` VALUES (47776, 'Rolls a pair of dice. Hope you get lucky!');
INSERT INTO `spelltext_en` VALUES (47778, 'Cleanses ancient Drakkari of their angst, allowing them to enter eternal slumber.');
INSERT INTO `spelltext_en` VALUES (47794, 'Activate your Depleted War Golem.');
INSERT INTO `spelltext_en` VALUES (47806, 'Increases attack power by 280 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (47807, 'Increases spell power by 173 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (47816, 'Increases spell power by 183 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (47821, 'Restores 21 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (47872, 'Instantly restores 4200 life.');
INSERT INTO `spelltext_en` VALUES (47873, 'Instantly restores 3850 life.');
INSERT INTO `spelltext_en` VALUES (47874, 'Instantly restores 3500 life.');
INSERT INTO `spelltext_en` VALUES (47875, 'Instantly restores 4280 life.');
INSERT INTO `spelltext_en` VALUES (47876, 'Instantly restores 4708 life.');
INSERT INTO `spelltext_en` VALUES (47877, 'Instantly restores 5136 life.');
INSERT INTO `spelltext_en` VALUES (47883, 'Stores the friendly target\'s soul. If the target dies while his soul is stored, he will be able to resurrect with 5300 health and 4300 mana.');
INSERT INTO `spelltext_en` VALUES (47898, 'Permanently enchant a cloak to increase haste rating by 23. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (47899, 'Permanently enchant a cloak to reduce threat slightly and increase Spirit by 10. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (47900, 'Permanently enchant chest armor to increase health by 275. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (47901, 'Permanently enchant boots to give a minor movement speed increase and 15 Stamina. Requires a level 60 or higher level item.');
INSERT INTO `spelltext_en` VALUES (47904, 'While applied to target weapon it restores 19 mana to the caster every 5 seconds. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (47906, 'While applied to target weapon it increases spell power by 56. Lasts for 1 hour. Cannot be applied to item_display higher than level 165.');
INSERT INTO `spelltext_en` VALUES (47910, 'Activate your Charged War Golem. Can only be activated in Dun Argol.');
INSERT INTO `spelltext_en` VALUES (47919, 'Calls Xink\'s Shredder for lumber gathering and general butt kickery.');
INSERT INTO `spelltext_en` VALUES (47935, 'Throw explosives to destroy the Dun Argol Power Core.');
INSERT INTO `spelltext_en` VALUES (47952, 'Increases spell power by 69.');
INSERT INTO `spelltext_en` VALUES (47965, 'Teaches Imp Firebolt (Rank 9).');
INSERT INTO `spelltext_en` VALUES (47970, 'Smear Loguhn\'s blood over yourself to show respect and dominance.');
INSERT INTO `spelltext_en` VALUES (47977, 'Summons and dismisses a rideable magical broom! This mount changes depending on your Riding skill and location.');
INSERT INTO `spelltext_en` VALUES (47978, 'Unlocks a Dun Argol Cage.');
INSERT INTO `spelltext_en` VALUES (47979, 'Increases spell power by 78.');
INSERT INTO `spelltext_en` VALUES (47998, 'Teaches Imp Fire Shield (Rank 7).');
INSERT INTO `spelltext_en` VALUES (47999, 'Increases attack power by 138.');
INSERT INTO `spelltext_en` VALUES (48001, 'Teaches Voidwalker Sacrifice (Rank 8).');
INSERT INTO `spelltext_en` VALUES (48002, 'Teaches Voidwalker Sacrifice (Rank 9).');
INSERT INTO `spelltext_en` VALUES (48003, 'Teaches Voidwalker Consume Shadows (Rank 8).');
INSERT INTO `spelltext_en` VALUES (48004, 'Teaches Voidwalker Consume Shadows (Rank 9).');
INSERT INTO `spelltext_en` VALUES (48005, 'Teaches Voidwalker Suffering (Rank 7).');
INSERT INTO `spelltext_en` VALUES (48006, 'Teaches Voidwalker Suffering (Rank 8).');
INSERT INTO `spelltext_en` VALUES (48007, 'Increases attack power by 122.');
INSERT INTO `spelltext_en` VALUES (48008, 'Increases spell power by 314.');
INSERT INTO `spelltext_en` VALUES (48015, 'Increases attack power by 122.');
INSERT INTO `spelltext_en` VALUES (48021, 'Attune in the pit below the surge needle at Moonrest Gardens in the Dragonblight.');
INSERT INTO `spelltext_en` VALUES (48025, 'Summons and dismisses the Headless Horseman\'s steed. This mount changes depending on your Riding skill and location.');
INSERT INTO `spelltext_en` VALUES (48027, 'Summons and dismisses a rideable Black War Elekk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (48041, 'Right Click to summon the Brewmaiden, whose very presence bolsters a party\'s vigor. Wave at her for Brewfest Brew!');
INSERT INTO `spelltext_en` VALUES (48042, 'Right Click to summon the Black Brewmaiden, who will smite your foes with your empty tankards. Wave at her for Brewfest Brew!');
INSERT INTO `spelltext_en` VALUES (48046, 'Attempt to capture the image of a dead iron dwarf at Dun Argol.');
INSERT INTO `spelltext_en` VALUES (48049, 'Increases spell power by 60.');
INSERT INTO `spelltext_en` VALUES (48051, 'Increases spell power by 314.');
INSERT INTO `spelltext_en` VALUES (48052, 'Imbues the Sacred Drakkari Offering with the vengeful spirits of the ancient Drakkari.');
INSERT INTO `spelltext_en` VALUES (48061, 'Place the Infused Offering at the gongs outside Drakil\'jin Ruins.');
INSERT INTO `spelltext_en` VALUES (48064, 'Disguise yourself as an Iron Rune Overseer. Can only be used in Dun Argol.');
INSERT INTO `spelltext_en` VALUES (48099, 'Increases the target\'s Intellect by 32 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48100, 'Increases the target\'s Intellect by 48 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48101, 'Increases the target\'s Stamina by 63 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48102, 'Increases the target\'s Stamina by 132 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48103, 'Increases the target\'s Spirit by 40 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48104, 'Increases the target\'s Spirit by 64 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48109, 'Reduces the cooldown of your Nature\'s Swiftness ability by 24 sec.');
INSERT INTO `spelltext_en` VALUES (48129, 'Returns you to <Home>. Results are unpredictable beyond level 40.');
INSERT INTO `spelltext_en` VALUES (48188, 'Throw at the Scarlet Onslaught Prisoner in Venomspite to dissolve him into goo.');
INSERT INTO `spelltext_en` VALUES (48216, 'Increases attack power by 154.');
INSERT INTO `spelltext_en` VALUES (48218, 'Sample the energy below Vordrassil\'s remains to discover any possible impurities.');
INSERT INTO `spelltext_en` VALUES (48221, 'Combine the Ace, Two, and Three of Rogues to complete the set.');
INSERT INTO `spelltext_en` VALUES (48228, 'Restores 31 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (48234, 'Combine the Ace, Two, and Three of Rogues to complete the set.');
INSERT INTO `spelltext_en` VALUES (48235, 'Combine the Ace, Two, and Three of Rogues to complete the set.');
INSERT INTO `spelltext_en` VALUES (48236, 'Combine the Ace through Five of Rogues to complete the set.');
INSERT INTO `spelltext_en` VALUES (48238, 'Combine the Ace through Five of Rogues to complete the set.');
INSERT INTO `spelltext_en` VALUES (48239, 'Combine the Ace through Four of Swords to complete the set.');
INSERT INTO `spelltext_en` VALUES (48240, 'Combine the Ace through Four of Swords to complete the set.');
INSERT INTO `spelltext_en` VALUES (48242, 'Combine the Ace through Four of Swords to complete the set.');
INSERT INTO `spelltext_en` VALUES (48244, 'Combine the Ace through Four of Swords to complete the set.');
INSERT INTO `spelltext_en` VALUES (48251, 'Increases spell power by 408.');
INSERT INTO `spelltext_en` VALUES (48252, 'Inflicts incredible pain to target, but does no permanent damage.');
INSERT INTO `spelltext_en` VALUES (48253, 'Increases spell power by 77.');
INSERT INTO `spelltext_en` VALUES (48259, 'Increases the block value of your shield by 129.');
INSERT INTO `spelltext_en` VALUES (48268, 'Unleash voracious rats upon the targeted Scarlet Onslaught corpse.');
INSERT INTO `spelltext_en` VALUES (48269, 'Increases spell power by 91.');
INSERT INTO `spelltext_en` VALUES (48273, 'Increases attack power by 132.');
INSERT INTO `spelltext_en` VALUES (48290, 'Mount the Onslaught Warhorse once its knight is dead.');
INSERT INTO `spelltext_en` VALUES (48328, 'Calls for Grom\'thar the Thunderbringer at the ring of torches south of the Azure Dragonshrine.');
INSERT INTO `spelltext_en` VALUES (48332, 'Go wild in a bubble for 5 min.');
INSERT INTO `spelltext_en` VALUES (48337, 'Increases spell power by 82.');
INSERT INTO `spelltext_en` VALUES (48345, 'Throw at New Hearthglen ballistae.');
INSERT INTO `spelltext_en` VALUES (48359, 'Inhale from the bladder to breathe underwater for 10 min.');
INSERT INTO `spelltext_en` VALUES (48388, 'Calls down a Wintergarde Gryphon that you can mount and use to save Helpless Wintergarde Villagers.');
INSERT INTO `spelltext_en` VALUES (48390, 'Increases attack power by 140.');
INSERT INTO `spelltext_en` VALUES (48401, 'Permanently enchant a mount to increase its mounted speed by 3%. You may only enchant mounts in your own inventory, and enchanting your mount will cause it to become soulbound. Single use.');
INSERT INTO `spelltext_en` VALUES (48406, 'Summons or dismisses a Spirit of Competition.');
INSERT INTO `spelltext_en` VALUES (48427, 'Open within the center of the lumbermill at New Hearthglen to unleash the termites and draw out Foreman Kaleiki.');
INSERT INTO `spelltext_en` VALUES (48455, 'Throw at the sails of the Sinner\'s Folly to set them ablaze. This will distract the deckhands for 2 minutes to allow you to slip belowdecks to deal with the captain.');
INSERT INTO `spelltext_en` VALUES (48481, 'Burn Vordrassil\'s corrupt sapling and obtain its ashes.');
INSERT INTO `spelltext_en` VALUES (48549, 'Use on Ursoc\'s corpse to put his spirit to rest.');
INSERT INTO `spelltext_en` VALUES (48603, 'Brand Torturer LeCraft at least 5 times to extract all of the information from him.');
INSERT INTO `spelltext_en` VALUES (48625, 'Mines strange ore from special mineral nodes inside Wintergarde Mine.');
INSERT INTO `spelltext_en` VALUES (48626, 'Increases spell power by 408.');
INSERT INTO `spelltext_en` VALUES (48643, 'Increases attack power by 156.');
INSERT INTO `spelltext_en` VALUES (48644, 'Increases spell power by 355.');
INSERT INTO `spelltext_en` VALUES (48645, 'Increases the block value of your shield by 147.');
INSERT INTO `spelltext_en` VALUES (48647, 'Increases spell power by 355.');
INSERT INTO `spelltext_en` VALUES (48650, 'Right click to play fetch with most non-combat pets.');
INSERT INTO `spelltext_en` VALUES (48679, 'Target an Onslaught raven priest and flash the mirror before them to steal their image.');
INSERT INTO `spelltext_en` VALUES (48711, 'Places a Destructive Ward at the end of the path leading out of the Obsidian Dragonshrine.');
INSERT INTO `spelltext_en` VALUES (48712, 'Focus your will upon the target in order to get them to denounce their affiliation with the Scarlet Onslaught before they die.');
INSERT INTO `spelltext_en` VALUES (48719, 'Allows the Imbiber to breathe water for 10 min.');
INSERT INTO `spelltext_en` VALUES (48720, 'Restores 18477 health over 30 sec. Can only be consumed underwater. Must remain motionless while eating.');
INSERT INTO `spelltext_en` VALUES (48722, 'A rope leash.');
INSERT INTO `spelltext_en` VALUES (48731, 'Place on the ground near Siege Engineer Quarterflash to activate.');
INSERT INTO `spelltext_en` VALUES (48739, 'Calls forth a Winterfin First Responder to fight at your side. Using the horn will consume it.');
INSERT INTO `spelltext_en` VALUES (48741, 'Places a Wintergarde Mine bomb at the entrance to Wintergarde Mine.');
INSERT INTO `spelltext_en` VALUES (48776, 'Increases mount speed by 10%. Does not work for players above level 70.');
INSERT INTO `spelltext_en` VALUES (48777, 'Increases mount speed by 3%. Does not work for players above level 70.');
INSERT INTO `spelltext_en` VALUES (48790, 'Throw into the magmawyrm resurrection chamber to cleanse the remaining black dragon bones.');
INSERT INTO `spelltext_en` VALUES (48794, 'Attempt to catch a Northern Salmon. Can only be used while close to a School of Northen Salmon.');
INSERT INTO `spelltext_en` VALUES (48807, 'Converts 20 Runic Healing Potions into compact injectors.');
INSERT INTO `spelltext_en` VALUES (48810, 'Separates the soul from the body for a short time. Only usable at the Forgotten Shore.');
INSERT INTO `spelltext_en` VALUES (48812, 'Heals a wounded skirmisher at Blue Sky Logging Ground.');
INSERT INTO `spelltext_en` VALUES (48833, 'Your Mangle ability has a chance to grant 55 agility for 10 sec.');
INSERT INTO `spelltext_en` VALUES (48835, 'Causes your Judgements to increase your Critical Strike Rating by 61 for 5 sec.');
INSERT INTO `spelltext_en` VALUES (48837, 'Your Shock spells have a chance to grant you 94 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (48845, 'Heals a wounded infantry unit at Blue Sky Logging Grounds.');
INSERT INTO `spelltext_en` VALUES (48846, 'Increases spell power by 149 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48847, 'Increases attack power by 248 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48848, 'Increases attack power by 304 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48855, 'Increases spell power by 122 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48864, 'Friend to the ghosts of the Forgotten Shore.');
INSERT INTO `spelltext_en` VALUES (48865, 'Increases your haste rating by 124 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48866, 'Places Orik\'s orb at the center of the ruins found at the Forgotten Shore.');
INSERT INTO `spelltext_en` VALUES (48868, 'Increases your haste rating by 140 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48875, 'Increases spell power by 145 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (48889, 'Increases spell power by 6 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48890, 'Increases defense rating by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48891, 'Increases hit rating by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48892, 'Increases hit rating by 5 for 30 min.');
INSERT INTO `spelltext_en` VALUES (48966, 'Marked for death.');
INSERT INTO `spelltext_en` VALUES (48974, 'Use on the corpse of an Undead Miner in Hollowstone Mine to set them on fire.');
INSERT INTO `spelltext_en` VALUES (49007, 'Right click to clean your teeth with the Tooth Pick, giving yourself a Sparkling Smile.');
INSERT INTO `spelltext_en` VALUES (49075, 'Toss a smoke bomb near Venture Company Stragglers to \"encourage\" them to leave the bunkhouse, sawmill, or stables in Venture Bay.');
INSERT INTO `spelltext_en` VALUES (49097, 'Drink near Ruuna\'s Crystal Ball to undergo an out-of-body experience.');
INSERT INTO `spelltext_en` VALUES (49101, 'Increases spell power by 104.');
INSERT INTO `spelltext_en` VALUES (49102, 'Increases spell power by 77.');
INSERT INTO `spelltext_en` VALUES (49116, 'Increases attack power by 180.');
INSERT INTO `spelltext_en` VALUES (49134, 'Use this to knock Tatjana out and bring her horse to Sasha.');
INSERT INTO `spelltext_en` VALUES (49163, 'Base movement speed cannot be increased. Damage done to you is increased by 35%. Prevents stealth and invisibility.');
INSERT INTO `spelltext_en` VALUES (49176, 'Restores 33 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (49193, 'Summons and dismisses a rideable Vengeful Nether Drake mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (49234, 'Turn 10 crystallized air into an eternal air.');
INSERT INTO `spelltext_en` VALUES (49244, 'Turn 10 crystallized fire into an eternal fire.');
INSERT INTO `spelltext_en` VALUES (49245, 'Turn 10 crystallized water into an eternal water.');
INSERT INTO `spelltext_en` VALUES (49246, 'Turn 10 crystallized shadow into an eternal shadow.');
INSERT INTO `spelltext_en` VALUES (49247, 'Turn 10 crystallized life into an eternal life.');
INSERT INTO `spelltext_en` VALUES (49248, 'Turn 10 crystallized earth into an eternal earth.');
INSERT INTO `spelltext_en` VALUES (49266, 'Attach a Wild Carrot to your stick and use it to lure a Highland Mustang.');
INSERT INTO `spelltext_en` VALUES (49319, 'Throw at Highland Mustangs to frighten them.');
INSERT INTO `spelltext_en` VALUES (49322, 'Summons and dismisses a rideable Swift Zhevra. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (49345, 'Calls down an Emerald Drake that you can mount and ride into battle.');
INSERT INTO `spelltext_en` VALUES (49349, 'Use on the corpse of a fallen Ruby Keeper to return the dragon to the earth.');
INSERT INTO `spelltext_en` VALUES (49352, 'Summon and control your Crashin\' Thrashin\' Racer.');
INSERT INTO `spelltext_en` VALUES (49379, 'Summons and dismisses a rideable Great Brewfest Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (49431, 'Increases spell power by 232.');
INSERT INTO `spelltext_en` VALUES (49441, 'Increases spell power by 105.');
INSERT INTO `spelltext_en` VALUES (49442, 'Restores 39 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (49461, 'Calls down an Amber Drake that you can mount and ride into battle.');
INSERT INTO `spelltext_en` VALUES (49462, 'Calls down an Ruby Drake that you can mount and ride into battle.');
INSERT INTO `spelltext_en` VALUES (49512, 'Hurls a fiery ball that causes 14 to 22 Fire damage and an additional 2 Fire damage over 4 sec.');
INSERT INTO `spelltext_en` VALUES (49546, 'Use on Imperial Eagles in Grizzly Hills to bind their sight to that of Windseer Grayhorn.');
INSERT INTO `spelltext_en` VALUES (49558, 'Increases spell power by 249.');
INSERT INTO `spelltext_en` VALUES (49566, 'Throw the molts into the air close to Alystros the Verdant Keeper to gain his ire and taunt him down from his perch.');
INSERT INTO `spelltext_en` VALUES (49587, 'Throw at a Reanimated Frost Wyrm, Turgid the Vile, and Overseer Deathgaze so that they will be greatly weakened before you destroy them!');
INSERT INTO `spelltext_en` VALUES (49590, 'Dispels the illusion concealing a nearby plagued grain shipment.');
INSERT INTO `spelltext_en` VALUES (49621, 'Increases spell power by 106.');
INSERT INTO `spelltext_en` VALUES (49622, 'Each time you cast a spell, there is a chance you will gain up to 125 mana per 5 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (49624, 'Attempt to bring a Chill Nymph back to her senses.');
INSERT INTO `spelltext_en` VALUES (49625, 'You\'re handed a smoke flare to target the top of a tower at Skorn, up to a distance of 0 yards away. This will call in an airstrike upon that tower and its casters.');
INSERT INTO `spelltext_en` VALUES (49634, 'You\'re handed a smoke flare to target the top of a tower at Skorn, up to a distance of 0 yards away. This will call in an airstrike upon that tower and its casters.');
INSERT INTO `spelltext_en` VALUES (49642, 'Call forth an Onslaught Gryphon.');
INSERT INTO `spelltext_en` VALUES (49736, 'Feed to your non-combat pet, if you dare.');
INSERT INTO `spelltext_en` VALUES (49761, 'Fires a heat seeking missile that attempts to track enemy tanks.');
INSERT INTO `spelltext_en` VALUES (49817, 'Activates Zelig\'s Scrying Orb at the bottom of Frostmourne Cavern.');
INSERT INTO `spelltext_en` VALUES (49844, 'Give your party a ride to the Grim Guzzler.');
INSERT INTO `spelltext_en` VALUES (49854, 'Increases spell power by 252.');
INSERT INTO `spelltext_en` VALUES (49859, 'Imprint the rune on a Stone Giant in Giants\' Run to gain control of it.');
INSERT INTO `spelltext_en` VALUES (49890, 'Places the Hourglass of Eternity on the ground at the Bronze Dragonshrine. Cannot be placed within 40 yards of another hourglass.');
INSERT INTO `spelltext_en` VALUES (49955, 'Increases spell power by 66.');
INSERT INTO `spelltext_en` VALUES (49964, 'Right Click to summon and dismiss an Ethereal Soul-Trader.');
INSERT INTO `spelltext_en` VALUES (50002, 'Allows the wearer to breathe under water. Must be within vision range of the buoy floating in Daggercap Bay.');
INSERT INTO `spelltext_en` VALUES (50009, 'Increases your chance to be the center of attention.');
INSERT INTO `spelltext_en` VALUES (50019, 'Releases your trained rock falcon! May only be used at the Vrykul Hawk Roost.');
INSERT INTO `spelltext_en` VALUES (50032, 'Places the Scourged Troll Mummy on Mack\'s fire in Granite Springs.');
INSERT INTO `spelltext_en` VALUES (50070, 'Summon Pumpkin Soldiers to burn your foes.');
INSERT INTO `spelltext_en` VALUES (50133, 'Deactivates the shield protecting a scourging crystal. You must target and get within 0 yards of the crystal to use the controller.');
INSERT INTO `spelltext_en` VALUES (50141, 'Cuts the palm of your hand, enabling you to make a pact with Drakuru.');
INSERT INTO `spelltext_en` VALUES (50165, 'Allows the user to preemptively disrupt the awakening ritual, killing the closest dormant Vrykul. The range of the rod is 0 yards.');
INSERT INTO `spelltext_en` VALUES (50166, 'Increases all Stats by 15 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (50247, 'Leaves flickering fel fire in your wake for 5 min.');
INSERT INTO `spelltext_en` VALUES (50251, 'Draws blood into the blood gem. May only be used on a Deranged Indu\'le Villager when its health is below 35%.');
INSERT INTO `spelltext_en` VALUES (50261, 'Increases your haste rating by 140 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (50263, 'Increases your haste rating by 140 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (50282, 'Throw relic to a friendly player.  If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (50317, 'Right Click to start the dance party.');
INSERT INTO `spelltext_en` VALUES (50331, 'Allows control of a Vrykul Harpoon Gun at Nifflevar.');
INSERT INTO `spelltext_en` VALUES (50342, 'Combine the Golem Blueprint Sections 1, 2, and 3 into the War Golem Blueprint.');
INSERT INTO `spelltext_en` VALUES (50369, 'A sweet alcoholic concoction that may have odd effects on fleshy imbibers.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (50425, 'Allows you to detect lesser invisibility for 30 sec without causing brain damage... probably.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (50426, 'Calls down a Wyrmrest Vanquisher that you can mount and ride into battle. Only usable in Wyrmrest Temple, The Dragon Wastes, Galakrond\'s Rest or the Wicked Coil.');
INSERT INTO `spelltext_en` VALUES (50427, 'Combine 3 links to create a Tether to the Plane of Water.');
INSERT INTO `spelltext_en` VALUES (50477, 'Toss the sphere to a friendly player. If they have free room in their pack they will catch it.\r\n\r\nConjured item_display disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (50632, 'Summons a Watery Lord.');
INSERT INTO `spelltext_en` VALUES (50662, 'Heals a wounded Crusader in Drak\'Sotra.');
INSERT INTO `spelltext_en` VALUES (50706, 'Throw at the Prophet of Sseratus so that he will be weakened. Then slay him!');
INSERT INTO `spelltext_en` VALUES (50708, 'Increases your pet\'s attack power by 200 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (50749, 'Crush the apple!');
INSERT INTO `spelltext_en` VALUES (50781, 'Regain 1% of your total mana any time that you deal a critical with a spell. Cannot fire more than once every 6 seconds. May only be used within Icecrown.');
INSERT INTO `spelltext_en` VALUES (50809, 'Increases swim speed by 60% for 30 sec.');
INSERT INTO `spelltext_en` VALUES (50894, 'Throw a Zul\'Drak Rat at the targeted Lurking Basilisk. Stacks up to 5 times. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (50901, 'Permanently attach jormungar armor onto pants to increase Stamina by 45 and Agility by 15.\r\n\r\nCan only be attached to leg armor in your inventory. Wearer must be level 70 or higher.');
INSERT INTO `spelltext_en` VALUES (50902, 'Permanently attach nerubian armor onto pants to increase attack power by 55 and critical strike rating by 15.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (50906, 'Permanently increase the Stamina of an item worn on the head, chest, shoulders, legs, hands or feet by 12.\r\n\r\nCan only be attached to armor in your inventory. Wearer must be level 70 or higher.');
INSERT INTO `spelltext_en` VALUES (50909, 'Permanently increase the Stamina of an item worn on the head, chest, shoulders, legs, hands or feet by 18.\r\n\r\nCan only be attached to armor in your inventory. Wearer must be level 70 or higher.');
INSERT INTO `spelltext_en` VALUES (50929, 'Reduces attack power by 40 when fighting Beasts.');
INSERT INTO `spelltext_en` VALUES (50979, 'Torments a softknuckle.');
INSERT INTO `spelltext_en` VALUES (50986, 'An extremely potent flaming alcoholic beverage.');
INSERT INTO `spelltext_en` VALUES (51010, 'An enchanted alcoholic beverage that may have an effect on your appearance...');
INSERT INTO `spelltext_en` VALUES (51149, 'Right Click to summon an incorporeal coyote spirit to accompany you. The spirit will remain until sent away or you remove the hat.');
INSERT INTO `spelltext_en` VALUES (51151, 'Place at the base of the Mistwhisper weather shrine.');
INSERT INTO `spelltext_en` VALUES (51165, 'Shoot a web at the targeted Plague Sprayer in order to bring it down. Has a range of 0 yards.');
INSERT INTO `spelltext_en` VALUES (51186, 'Calls or dismisses Goregek.');
INSERT INTO `spelltext_en` VALUES (51188, 'Calls or dismisses Dajik.');
INSERT INTO `spelltext_en` VALUES (51189, 'Calls or dismisses Zepik.');
INSERT INTO `spelltext_en` VALUES (51190, 'Calls or dismisses Lafoo.');
INSERT INTO `spelltext_en` VALUES (51191, 'Calls or dismisses Jaloot should he be managing to pay attention at the time.');
INSERT INTO `spelltext_en` VALUES (51192, 'Calls or dismisses Moodle.');
INSERT INTO `spelltext_en` VALUES (51210, 'Burn Soo-rahm\'s Incense at the offering bowl in front of the Bones of Nozronn.');
INSERT INTO `spelltext_en` VALUES (51223, 'Increases your hit rating by 15.');
INSERT INTO `spelltext_en` VALUES (51225, 'Increases your attack power by 30.');
INSERT INTO `spelltext_en` VALUES (51247, 'Places an Argent Crusade Banner at a Drakkari Pedestal in Drak\'Sotra.');
INSERT INTO `spelltext_en` VALUES (51262, 'Increases your hit rating by 15.');
INSERT INTO `spelltext_en` VALUES (51263, 'Increases your Stamina by 25.');
INSERT INTO `spelltext_en` VALUES (51273, 'Increases your crit rating by 15.');
INSERT INTO `spelltext_en` VALUES (51274, 'Increases your attack power by 30.');
INSERT INTO `spelltext_en` VALUES (51276, 'Incinerates the corpse of a Defeated Argent Footman.');
INSERT INTO `spelltext_en` VALUES (51319, 'Disguise yourself as a sandfern in preparation for ambushing Bushwhacker.');
INSERT INTO `spelltext_en` VALUES (51330, 'Shoot the RJR Rifle at the apple balanced on Lucky Wilhelm\'s head.');
INSERT INTO `spelltext_en` VALUES (51333, 'Digs for treasure at an ancient dirt mound in Zul\'Drak.');
INSERT INTO `spelltext_en` VALUES (51346, 'Restores 200 health when you kill a target that gives experience or honor. This effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (51352, 'Restores 200 mana when you kill a target that gives experience or honor. This effect cannot occur more than once every 10 seconds.');
INSERT INTO `spelltext_en` VALUES (51355, 'Can be launched using a Harpoon Launcher.');
INSERT INTO `spelltext_en` VALUES (51381, 'Throws a grenade down a nearby Nerubian Crater.');
INSERT INTO `spelltext_en` VALUES (51404, 'Used to deactivate Ritual Crystals.');
INSERT INTO `spelltext_en` VALUES (51412, 'Summons and dismisses a rideable Big Battle Bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (51414, 'When struck in melee you have a chance of exhaling poison, inflicting 93 to 107 Nature damage on a nearby enemy.');
INSERT INTO `spelltext_en` VALUES (51510, 'Starts a dance party.');
INSERT INTO `spelltext_en` VALUES (51582, 'Engage the rocket boots to greatly increase your speed.');
INSERT INTO `spelltext_en` VALUES (51640, 'Place a flag on an enemy player\'s corpse in front of you.');
INSERT INTO `spelltext_en` VALUES (51659, 'Attempt to apply the harness to a Shattertusk Mammoth');
INSERT INTO `spelltext_en` VALUES (51661, 'Throw me!');
INSERT INTO `spelltext_en` VALUES (51716, 'Right Click to summon and dismiss your nether ray fry.');
INSERT INTO `spelltext_en` VALUES (51769, 'Forges the battle-worn sword into a runebladed sword. Must be used near a runeforge.');
INSERT INTO `spelltext_en` VALUES (51803, 'Heals 4100 damage over 4 sec.');
INSERT INTO `spelltext_en` VALUES (51827, 'Heals 3400 damage over 4 sec.');
INSERT INTO `spelltext_en` VALUES (51845, 'Reflect Thalgran Blightbringer\'s Deathbolts with Freya\'s protective ward.');
INSERT INTO `spelltext_en` VALUES (51851, 'Right Click to summon and dismiss your vampiric batling.');
INSERT INTO `spelltext_en` VALUES (51866, 'Gives Nass a swift kick.');
INSERT INTO `spelltext_en` VALUES (51895, 'Allows the user to resurrect the targeted Offspring of Har\'koa corpse, freeing it from its monstrous transformation.');
INSERT INTO `spelltext_en` VALUES (51912, 'Target a Magmoth Crusher or Mate of Magmothregar and fire away! Your results may vary. Patent pending.');
INSERT INTO `spelltext_en` VALUES (51952, 'Increases the block value of your shield by 200 for 40 sec.');
INSERT INTO `spelltext_en` VALUES (51953, 'Increases Spell Power by up to 155 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (51954, 'Increases your spell power by 153 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (51955, 'Increases attack power by 278 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (51957, 'Invoke the power of Freya atop the Glimmering Pillar.');
INSERT INTO `spelltext_en` VALUES (51959, 'Throw a flimsy net to capture uncooperative chicken escapees up to 20 yards away.');
INSERT INTO `spelltext_en` VALUES (51962, 'Offer a sample of Thunderbrew\'s Jungle Punch to an eligible taste tester.');
INSERT INTO `spelltext_en` VALUES (51964, 'Allows the user to awaken Rhunok from his stupor.');
INSERT INTO `spelltext_en` VALUES (51966, 'Enshrouds you in a temporary Scourge disguise.');
INSERT INTO `spelltext_en` VALUES (51978, 'Increases attack power by 264 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (51985, 'Increases your haste rating by 148 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (51987, 'Increases attack power by 280 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (52009, 'Mutates a targeted Non-Combat Pet\'s physical form for as long as it remains at its master\'s side.');
INSERT INTO `spelltext_en` VALUES (52020, 'Your Shred and Swipe abilities have a chance to grant 61 strength for 10 sec.');
INSERT INTO `spelltext_en` VALUES (52023, 'Places a Bowels and Brains Bowl at your feet. Will attract the closest Decaying Ghoul to feed.');
INSERT INTO `spelltext_en` VALUES (52066, 'Call forth the Etymidian at the Avalanche in Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (52090, 'Scalp a troll from Heb\'Drakkar. You should first loot the corpse as it will despawn after being scalped.');
INSERT INTO `spelltext_en` VALUES (52151, 'Throw the net at Heb\'Jin\'s Bat to immobilize it. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (52184, 'Increases spell power by 201.');
INSERT INTO `spelltext_en` VALUES (52227, 'Throws Diluting Additive into a blight cauldron in the Reliquary of Pain.');
INSERT INTO `spelltext_en` VALUES (52251, 'Channels the hexxing hatred of Quetz\'lun\'s Spirit at High Priest Mu\'funu, High Priestess Tua-Tua, or High Priest Hawinni.');
INSERT INTO `spelltext_en` VALUES (52252, 'Places a Blight Geist under your control for 1 minute.');
INSERT INTO `spelltext_en` VALUES (52276, 'Place the blood at the Shrine of Kartak to call Kartak to feast on the nearby Oracles.');
INSERT INTO `spelltext_en` VALUES (52308, 'Attempt to take a sample of Bittertide Hydra Sputum if you are afflicted with it.');
INSERT INTO `spelltext_en` VALUES (52314, 'Increases the damage dealt by your Maul ability by 120 and Swipe ability by 24.');
INSERT INTO `spelltext_en` VALUES (52315, 'Places Explosive Charges at the base of a Scourgewagon at the Reliquary of Pain.');
INSERT INTO `spelltext_en` VALUES (52333, 'Place the Tained Crystal at the Great Lightning Stone to call Soo-holu to its protection.');
INSERT INTO `spelltext_en` VALUES (52366, 'Perform Quetz\'lun\'s Ritual to summon the Spirit of Quetz\'lun into the material world. The spirit will assist you by reclaiming her power from the Prophet of Quetz\'lun, leaving him drained.');
INSERT INTO `spelltext_en` VALUES (52389, 'Places a Servant of Drakuru under your control for 3 minutes.');
INSERT INTO `spelltext_en` VALUES (52394, 'Increases the damage dealt by your Blood Strike and Heart Strike by 90.');
INSERT INTO `spelltext_en` VALUES (52410, 'Places a massive seaforium charge which will detonate after 10 seconds.');
INSERT INTO `spelltext_en` VALUES (52418, 'Seaforium charges will be dropped on death.');
INSERT INTO `spelltext_en` VALUES (52420, 'Melee attacks which reduce you below 35% health cause you to gain 90 parry rating for 10 sec. Cannot occur more than once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (52423, 'Chance on parrying an attack to gain 120 Strength for 10 sec.');
INSERT INTO `spelltext_en` VALUES (52481, 'Bestows the Gift of the Harvester upon Scarlet Miners.');
INSERT INTO `spelltext_en` VALUES (52487, 'Places a Bloated Abomination under your control for 3 minutes.');
INSERT INTO `spelltext_en` VALUES (52596, 'Present to the targeted Enraged Mammoth to calm it. The mammoth will only remain calm for up to 15 seconds.');
INSERT INTO `spelltext_en` VALUES (52615, 'Right Click to summon and dismiss Frosty the frost wyrm whelp.');
INSERT INTO `spelltext_en` VALUES (52647, 'Hexes the target with agony, causing 6000 Shadow damage over 24 sec. This damage is dealt slowly at first, and builds up as the Hex reaches its full duration.');
INSERT INTO `spelltext_en` VALUES (52655, 'Removes all Zol\'Maz Stronghold Cache hexes from the friendly target. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (52668, 'Combine with Drek\'Maz\'s Tiki and Tiri\'s Magical Incantation to create a Tiki Dervish Ceremony.');
INSERT INTO `spelltext_en` VALUES (52669, 'Summons an Enchanted Tiki Dervish to assist you in your challenge against Warlord Zol\'Maz. Can only be used in front of the Zol\'Maz Gate when Warlord Zol\'Maz is present and unengaged in combat. The Enchanted Tiki Dervish will last for up to 2 min.');
INSERT INTO `spelltext_en` VALUES (52673, 'Combine with Yara\'s Sword and Tiri\'s Magical Incantation to create a Tiki Dervish Ceremony.');
INSERT INTO `spelltext_en` VALUES (52674, 'Combine with Drek\'Maz\'s Tiki and Yara\'s Sword to create a Tiki Dervish Ceremony.');
INSERT INTO `spelltext_en` VALUES (52697, 'Restores 1500 to 2500 health and 50 runic power.');
INSERT INTO `spelltext_en` VALUES (52741, 'Apply the tincture to the corpse of one of the Scarlet Onslaught members at Onslaught Harbor. Range is 0 yards. Cannot be used on the corpses of the Scarlet Onslaught within the cathedral or The Hidden Hollow.');
INSERT INTO `spelltext_en` VALUES (52781, 'Attempts to persuade the recipient of the strike to talk. Highly effective.');
INSERT INTO `spelltext_en` VALUES (52804, 'Restores 45 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (52809, 'Increases spell power by 461.');
INSERT INTO `spelltext_en` VALUES (52810, 'Increases spell power by 461.');
INSERT INTO `spelltext_en` VALUES (52815, 'Unlocks the anchors chaining Akali. You must unlock each of the anchors separately.');
INSERT INTO `spelltext_en` VALUES (52849, 'Increases spell power by 87.');
INSERT INTO `spelltext_en` VALUES (52892, 'Call forth Haiphoon at the Stormwright\'s Shelf.');
INSERT INTO `spelltext_en` VALUES (52911, 'Gets you tipsy and restores 19200 mana over 30 sec. Must remain seated while drinking.');
INSERT INTO `spelltext_en` VALUES (52941, 'Call forth bad water spirits at impure water sources in Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (52945, 'Increases attack power by 146.');
INSERT INTO `spelltext_en` VALUES (52946, 'Increases attack power by 132.');
INSERT INTO `spelltext_en` VALUES (52956, 'Compels the Prophet of Akali to appear within the Convocation Summoning Circle at Zol\'Heb. Good luck!');
INSERT INTO `spelltext_en` VALUES (52963, 'Fill the vial with Suntouched Water at the top of the Suntouched Pillar.');
INSERT INTO `spelltext_en` VALUES (52967, 'Combine with Matriarch\'s Heartblood to create Suntouched Heartblood.');
INSERT INTO `spelltext_en` VALUES (52992, 'Blood Rejek\'s sword in the corpse of a Hardknuckle Charger, Sapphire Hive Wasp, or member of the Mistwhisper tribe.');
INSERT INTO `spelltext_en` VALUES (52995, 'Increases attack power by 148.');
INSERT INTO `spelltext_en` VALUES (53020, 'Grants magical growth to a fertile dirt mound in the Stormwright\'s Shelf.');
INSERT INTO `spelltext_en` VALUES (53025, 'Increases attack power by 146.');
INSERT INTO `spelltext_en` VALUES (53026, 'Increases armor penetration rating by 29.');
INSERT INTO `spelltext_en` VALUES (53031, 'Throw to an Argent Crusader or Shieldman in the courtyard who isn\'t already wearing a parachute. Range is 0 yards.');
INSERT INTO `spelltext_en` VALUES (53038, 'Reflect upon oneself at any of the intact pillars in Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (53061, 'Plants a makeshift cover for you to hide behind. Only usable at the Scarlet Overlook.');
INSERT INTO `spelltext_en` VALUES (53075, 'Place a spike bomb that explodes on a very short fuse, causing significant damage to all nearby enemies.');
INSERT INTO `spelltext_en` VALUES (53078, 'Place an ensaring trap that triggers when approached, entangling all nearby enemies.');
INSERT INTO `spelltext_en` VALUES (53079, 'Place a volatile trap that explodes when approached, causing significant damage and knocking back all nearby enemies.');
INSERT INTO `spelltext_en` VALUES (53082, 'Right-click to summon and dismiss Mini Tyrael.');
INSERT INTO `spelltext_en` VALUES (53102, 'Places a Blightblood Troll under your control.');
INSERT INTO `spelltext_en` VALUES (53145, 'Throw the dynamite at the corpse of a Stormwatcher. (20 yard range.)');
INSERT INTO `spelltext_en` VALUES (53173, 'Calls forth a Frostbrood Vanquisher.');
INSERT INTO `spelltext_en` VALUES (53279, 'Place the Crystal of the Frozen Grip, severely hindering the movement of all nearby wolvar.');
INSERT INTO `spelltext_en` VALUES (53283, 'Restores 18480 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 25 Stamina and Spirit for 30 min.');
INSERT INTO `spelltext_en` VALUES (53286, 'Place the Crystal of the Violent Storm, summoning a storm to damage all nearby wolvar.');
INSERT INTO `spelltext_en` VALUES (53287, 'Place the Crystal of Unstable Energy, firing frequent bolts of energy at nearby wolvar.');
INSERT INTO `spelltext_en` VALUES (53316, 'Right Click to summon and dismiss your ghostly skull.');
INSERT INTO `spelltext_en` VALUES (53326, 'Throw the drugged bait to an Oil-stained Wolf. Then, sit back and enjoy the results.');
INSERT INTO `spelltext_en` VALUES (53354, 'Restores 28 mana per 5 sec.');
INSERT INTO `spelltext_en` VALUES (53355, 'Unleashes the secret strength of the Frenzyheart, heavily intoxicating the imbiber, increasing resistance to pain dramatically, and dealing powerful blows on top of normal damage.');
INSERT INTO `spelltext_en` VALUES (53356, 'Increases attack power by 200.');
INSERT INTO `spelltext_en` VALUES (53371, 'Unleashes the power of the Great Ones, increasing resistance to damage and siphoning energy with all damage dealt.');
INSERT INTO `spelltext_en` VALUES (53373, 'Restores 7200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you are likely to grow in size.');
INSERT INTO `spelltext_en` VALUES (53392, 'Mix the Wolvar Berries with Thunderbrew\'s Hard Ale to make the Frenzyheart\'s secret drink.');
INSERT INTO `spelltext_en` VALUES (53416, 'Energize at the exposed Lifeblood Crystal.');
INSERT INTO `spelltext_en` VALUES (53440, 'Bust out a face melter.');
INSERT INTO `spelltext_en` VALUES (53746, 'Increases attack power by 90 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (53747, 'Increases Spirit by 50 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (53748, 'Increases your Strength by 50 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (53749, 'Increases all Stats by 20 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (53750, 'Restores 3100 to 3500 health and 4200 to 4400 mana. Sometimes has the effect of an additional random potion.');
INSERT INTO `spelltext_en` VALUES (53751, 'Increases maximum health by 350 and restores 20 health every 5 seconds for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (53752, 'Increases resilience rating by 50 for 1 hour.  Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (53753, 'Puts the imbiber in a slumber where they face and defeat their darkest fears. During that time the imbiber restores 5400 health and mana, but they are defenseless.');
INSERT INTO `spelltext_en` VALUES (53755, 'Increases spell power by 125 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (53758, 'Increases maximum health by 1300 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (53760, 'Increases attack power by 180 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (53761, 'Restores 2475 to 4125 mana and health.');
INSERT INTO `spelltext_en` VALUES (53762, 'Increases armor by 3500 for 2 min.');
INSERT INTO `spelltext_en` VALUES (53763, 'Increases armor by 800 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (53764, 'Regenerate 30 mana per 5 sec for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (53793, 'Increases armor penetration rating by 43.');
INSERT INTO `spelltext_en` VALUES (53808, 'Drink it.');
INSERT INTO `spelltext_en` VALUES (53820, 'Increases armor penetration rating by 37.');
INSERT INTO `spelltext_en` VALUES (53908, 'Increases haste rating by 500 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (53909, 'Increases critical rating by 200 and spell power by 200 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (53910, 'Absorbs 4200 to 6000 arcane damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (53911, 'Absorbs 4200 to 6000 fire damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (53913, 'Absorbs 4200 to 6000 Frost damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (53914, 'Absorbs 4200 to 6000 nature damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (53915, 'Absorbs 4200 to 6000 shadow damage. Lasts 2 min.');
INSERT INTO `spelltext_en` VALUES (54039, 'Throw the memento to a friendly player.  If they have free room in their pack they will catch it!');
INSERT INTO `spelltext_en` VALUES (54048, 'Increases armor penetration rating by 78.');
INSERT INTO `spelltext_en` VALUES (54092, 'Throw one of the many weapons in the Monster Slayer\'s Kit at the target.');
INSERT INTO `spelltext_en` VALUES (54161, 'Increases attack power by 226.');
INSERT INTO `spelltext_en` VALUES (54184, 'Increases spell power by 520.');
INSERT INTO `spelltext_en` VALUES (54187, 'Right Click to summon and dismiss your wind-up Clockwork Rocket Bot.');
INSERT INTO `spelltext_en` VALUES (54191, 'Recover the life force energy from a defeated Lifeblood Elemental.');
INSERT INTO `spelltext_en` VALUES (54192, 'Increases spell power by 520.');
INSERT INTO `spelltext_en` VALUES (54197, 'Allows the player to ride flying mounts in Northrend.');
INSERT INTO `spelltext_en` VALUES (54212, 'Increases mana regeneration by 45 mana per 5 seconds for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (54214, 'Increases spell power by 74.');
INSERT INTO `spelltext_en` VALUES (54229, 'Increases spell power by 98.');
INSERT INTO `spelltext_en` VALUES (54230, 'Increases spell power by 99.');
INSERT INTO `spelltext_en` VALUES (54232, 'Increases spell power by 78.');
INSERT INTO `spelltext_en` VALUES (54279, 'Increases attack power by 114.');
INSERT INTO `spelltext_en` VALUES (54280, 'Increases attack power by 170.');
INSERT INTO `spelltext_en` VALUES (54301, 'Summons a Warbear Matriarch inside the Pit of the Fang.');
INSERT INTO `spelltext_en` VALUES (54307, 'Summons an Argent Knight to your side.');
INSERT INTO `spelltext_en` VALUES (54329, 'Plant a blessed banner of the Argent Dawn, consecrating the ground beneath it.');
INSERT INTO `spelltext_en` VALUES (54359, 'Summons a decoy that explodes when attacked, shredding enemies for 1440 to 2160 Physical damage. Lasts for 3 min or until it explodes.');
INSERT INTO `spelltext_en` VALUES (54403, 'Returns you to <Home>. May only be used while a servant of the Lich King.');
INSERT INTO `spelltext_en` VALUES (54406, 'Teleports the caster to Dalaran.');
INSERT INTO `spelltext_en` VALUES (54418, 'Bring forth your Argent Tome and smite your foes with its sacred wisdom.');
INSERT INTO `spelltext_en` VALUES (54452, 'Increases spell power by 24 and critical strike rating by 24 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (54494, 'Increases your Agility by 30 and your critical strike rating by 12 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (54497, 'Increases armor by 50 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (54536, 'Place an Improved Land Mine at Garm\'s Bane. The unstable nature of these mines gives them an active life of 5 min.');
INSERT INTO `spelltext_en` VALUES (54544, 'Unlocks Scarlet Onslaught Trunks.');
INSERT INTO `spelltext_en` VALUES (54577, 'Throw the Explosive Device at an Ironwool Mammoth before it explodes.');
INSERT INTO `spelltext_en` VALUES (54669, 'Unlocks an Acherus Soul Prison.');
INSERT INTO `spelltext_en` VALUES (54695, 'Chance on melee or ranged attack to enter Wracking Pains, during which your attacks will each grant 15 crit rating, stacking up to 10 times. Expires after 20 sec.');
INSERT INTO `spelltext_en` VALUES (54707, 'The noise made from melee combat sometimes causes Sonic Awareness, increasing your attack power by 430 for 10 sec. This effect can only occur once every minute.');
INSERT INTO `spelltext_en` VALUES (54710, 'Creates a portable mailbox for 10 min. MOLL-E is not destroyed after use.');
INSERT INTO `spelltext_en` VALUES (54711, 'Creates a mechanical Scrapbot that repairs equipment and buys nearly anything. The scrapbot leaves after 5 min.');
INSERT INTO `spelltext_en` VALUES (54721, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 35. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (54729, 'Summons and dismisses your Winged Steed of the Ebon Blade. This mount can only be summoned in Outland and Northrend. This mount changes speed depending on your Riding skill.');
INSERT INTO `spelltext_en` VALUES (54732, 'A grand master engineer can overload the knife\'s battery to attempt to shock a dead player back to life. Cannot be used in combat.');
INSERT INTO `spelltext_en` VALUES (54738, 'Chance on spell critical hit to increase your critical strike rating by 167 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (54753, 'Summons and dismisses a rideable White Polar Bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (54800, 'Increases the damage dealt by your Icy Touch ability by 111.');
INSERT INTO `spelltext_en` VALUES (54807, 'Increases the damage dealt by your Death Coil ability by 80.');
INSERT INTO `spelltext_en` VALUES (54808, 'Melee attacks against you have a chance to invoke a Sonic Shield, absorbing 1100 damage. This effect can only occur once a minute.');
INSERT INTO `spelltext_en` VALUES (54809, 'Increases the base damage dealt by your Scourge Strike ability by 91.35.');
INSERT INTO `spelltext_en` VALUES (54838, 'Chance on spell hit to increase your spirit by 222 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (54841, 'You gain a Thunder Charge each time you cause a damaging spell critical strike. When you reach 4 Thunder Charges, they will release, firing a Lightning Bolt for 1181 to 1371 damage. Thunder Charge cannot be gained more often than once every 2.5 sec.');
INSERT INTO `spelltext_en` VALUES (54844, 'Allows you to see players without clothing and armor.');
INSERT INTO `spelltext_en` VALUES (54848, 'Increases armor penetration rating by 84.');
INSERT INTO `spelltext_en` VALUES (54854, 'While Frenzied Regeneration is active, healing effects on you are 20% more powerful.');
INSERT INTO `spelltext_en` VALUES (54856, 'Increases the chance for your Growl ability to work successfully by 8%.');
INSERT INTO `spelltext_en` VALUES (54857, 'Increases the damage done by Mangle by 10%.');
INSERT INTO `spelltext_en` VALUES (54858, 'Your Maul ability now hits 1 additional target.');
INSERT INTO `spelltext_en` VALUES (54859, 'Each time you Shred, the duration of your Rip on the target is extended 2 sec, up to a maximum of 6 sec.');
INSERT INTO `spelltext_en` VALUES (54860, 'Increases the duration of your Rip ability by 4 sec.');
INSERT INTO `spelltext_en` VALUES (54863, 'Your Rake ability prevents targets from fleeing.');
INSERT INTO `spelltext_en` VALUES (54864, 'Your Swiftmend ability no longer consumes a Rejuvenation or Regrowth effect from the target.');
INSERT INTO `spelltext_en` VALUES (54865, 'Innervate now grants the caster 45% of <his/her> base mana pool over 10 sec in addition to the normal effects of Innervate.');
INSERT INTO `spelltext_en` VALUES (54866, 'Players resurrected by Rebirth are returned to life with 100% health.');
INSERT INTO `spelltext_en` VALUES (54867, 'Increases the healing of your Regrowth spell by 20% if your Regrowth effect is still active on the target.');
INSERT INTO `spelltext_en` VALUES (54868, 'While your Rejuvenation targets are below 50% health, you will heal them for an additional 50% health.');
INSERT INTO `spelltext_en` VALUES (54869, 'Decreases the cast time of Healing Touch by 1.5 sec, the mana cost by 25%, and the amount healed by 50%.');
INSERT INTO `spelltext_en` VALUES (54870, 'Increases the duration of Lifebloom by 1 sec.');
INSERT INTO `spelltext_en` VALUES (54871, 'Your Starfire ability increases the duration of your Moonfire effect on the target by 3 sec, up to a maximum of 9 additional seconds.');
INSERT INTO `spelltext_en` VALUES (54872, 'Increases the damage of your Insect Swarm ability by 30%, but it no longer affects your victim\'s chance to hit.');
INSERT INTO `spelltext_en` VALUES (54873, 'Your Hurricane ability now also slows the movement speed of its victims by 20%.');
INSERT INTO `spelltext_en` VALUES (54874, 'Reduces the cooldown of Starfall by 30 sec.');
INSERT INTO `spelltext_en` VALUES (54875, 'Reduces the pushback suffered from damaging attacks while casting your Wrath spell by 50%.');
INSERT INTO `spelltext_en` VALUES (54876, 'Increases the periodic damage of your Moonfire ability by 75%, but initial damage is decreased by 90%.');
INSERT INTO `spelltext_en` VALUES (54877, 'Increases the damage your Entangling Roots victims can take before the Entangling Roots automatically breaks by 20%.');
INSERT INTO `spelltext_en` VALUES (54933, 'Use your harpoon to land on nearby Proto-Drakes. Can also be used on Column Ornaments to exit the Drakkensryd.');
INSERT INTO `spelltext_en` VALUES (54963, 'Charge the teleportation pad on Garm\'s Rise for mass transport.');
INSERT INTO `spelltext_en` VALUES (54964, 'Release your Frosthound at the Abandoned Camp to track Brann\'s scent.');
INSERT INTO `spelltext_en` VALUES (55000, 'Full Winter Garb');
INSERT INTO `spelltext_en` VALUES (55003, 'Your Judgements deal 10% more damage.');
INSERT INTO `spelltext_en` VALUES (55005, 'Full Brewfest Garb');
INSERT INTO `spelltext_en` VALUES (55037, 'Use near burning Rageclaw wolvar huts to extinguish the fires!');
INSERT INTO `spelltext_en` VALUES (55039, 'Generates a bolt of lightning to strike an enemy for 1530 to 1870 Nature damage. This entire device is made of metal....');
INSERT INTO `spelltext_en` VALUES (55068, 'Right Click to summon and dismiss Mr. Chilly.');
INSERT INTO `spelltext_en` VALUES (55076, 'Attaches a permanent scope to a bow or gun that increases your ranged haste rating by 40.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55083, '\"Unlocks\" a Drakuru shackle.');
INSERT INTO `spelltext_en` VALUES (55109, 'You gain 8% of your base mana each time you use a Judgement with Seal of Command active.');
INSERT INTO `spelltext_en` VALUES (55110, 'Increases your Hammer of Justice range by 5 yards.');
INSERT INTO `spelltext_en` VALUES (55111, 'Increases the amount of mana gained from your Spiritual Attunement spell by an additional 2%.');
INSERT INTO `spelltext_en` VALUES (55112, 'Reduces the mana cost of Hammer of Wrath by 100%.');
INSERT INTO `spelltext_en` VALUES (55113, 'Reduces the mana cost of your Crusader Strike ability by 20%.');
INSERT INTO `spelltext_en` VALUES (55114, 'Increases the duration and cooldown of Consecration by 2 sec.');
INSERT INTO `spelltext_en` VALUES (55115, 'Increases the chance for your Righteous Defense and Hand of Reckoning abilities to work successfully by 8% on each target.');
INSERT INTO `spelltext_en` VALUES (55116, 'Your Avenger\'s Shield hits 2 fewer targets, but for 100% more damage.');
INSERT INTO `spelltext_en` VALUES (55117, 'Reduces the casting time of your Turn Evil spell by 100%, but increases the cooldown by 8 sec.');
INSERT INTO `spelltext_en` VALUES (55118, 'Increases damage done by Exorcism by 20%.');
INSERT INTO `spelltext_en` VALUES (55119, 'Reduces the mana cost of your Cleanse and Purify spells by 20%.');
INSERT INTO `spelltext_en` VALUES (55120, 'Your Flash of Light has an additional 5% critical strike chance.');
INSERT INTO `spelltext_en` VALUES (55121, 'Your Holy Light grants 10% of its heal amount to up to 5 friendly targets within 0 yards of the initial target.');
INSERT INTO `spelltext_en` VALUES (55122, 'Reduces the cooldown of your Hammer of Wrath spell by 50% while Avenging Wrath is active.');
INSERT INTO `spelltext_en` VALUES (55123, 'Your Lay on Hands grants twice as much mana as normal and also grants you as much mana as it grants your target.');
INSERT INTO `spelltext_en` VALUES (55124, 'While Seal of Wisdom is active, the cost of your healing spells is reduced by 5%.');
INSERT INTO `spelltext_en` VALUES (55125, 'While Seal of Light is active, the effect of your healing spells is increased by 5%.');
INSERT INTO `spelltext_en` VALUES (55135, 'Attaches a permanent scope to a bow or gun that increases its ranged critical strike rating by 40.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55152, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 7. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55153, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 14. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55154, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 21. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55155, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 28. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55156, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 42. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55158, 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by 49. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55161, 'Downloads Mimir\'s Hidden Data from a nearby Databank in the Inventor\'s Library.');
INSERT INTO `spelltext_en` VALUES (55165, 'Combine 6 Inventor\'s Disk Fragments into the Inventor\'s Disk.');
INSERT INTO `spelltext_en` VALUES (55171, 'While applied to target weapon it increases damage dealt by periodic spells by 1% and spell haste rating by 10. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55175, 'While applied to target weapon it increases damage dealt by periodic spells by 1% and spell haste rating by 20. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55178, 'While applied to target weapon it increases damage dealt by periodic spells by 1% and spell haste rating by 30. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55188, 'While applied to target weapon it increases damage dealt by periodic spells by 1% and spell haste rating by 40. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55190, 'While applied to target weapon it increases damage dealt by periodic spells by 1% and spell haste rating by 50. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55194, 'While applied to target weapon it increases damage dealt by periodic spells by 1% and spell haste rating by 60. Lasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (55197, 'Issues a summons to Archivist Mechaton, the guardian of Norgannon\'s Shell.');
INSERT INTO `spelltext_en` VALUES (55346, 'Projects a dark green targeting beam onto your current target.');
INSERT INTO `spelltext_en` VALUES (55368, 'Summons Stefan Vadu to the Reliquary of Pain in Zul\'Drak.');
INSERT INTO `spelltext_en` VALUES (55420, 'Shoots a firework into the air that bursts into a thousand purple stars.');
INSERT INTO `spelltext_en` VALUES (55522, 'Place the hardpacked explosive bundle near Frostgut\'s Altar in the back of Garm.');
INSERT INTO `spelltext_en` VALUES (55525, 'Blows up Gymer\'s cage lock.');
INSERT INTO `spelltext_en` VALUES (55531, 'Rides and parks a badass Mechano-hog. This is a very fast set of wheels.');
INSERT INTO `spelltext_en` VALUES (55535, 'Increases the passive mana regeneration of your Water Shield spell by 30%.');
INSERT INTO `spelltext_en` VALUES (55536, 'Captures a target up to 0 yards away in a net for 3 sec. Unreliable against targets higher than level 83.');
INSERT INTO `spelltext_en` VALUES (55537, 'Your Chain Heal heals 1 additional target.');
INSERT INTO `spelltext_en` VALUES (55538, 'Your Chain Lightning strikes 1 additional target.');
INSERT INTO `spelltext_en` VALUES (55539, 'Your Lava Burst spell gains an additional 10% of your spellpower.');
INSERT INTO `spelltext_en` VALUES (55540, 'Reduces the global cooldown triggered by your shock spells to 1 sec.');
INSERT INTO `spelltext_en` VALUES (55541, 'Increases the chance for your Earthliving weapon to trigger by 5%.');
INSERT INTO `spelltext_en` VALUES (55542, 'Reduces the cooldown of your Fire Elemental Totem by 5 min.');
INSERT INTO `spelltext_en` VALUES (55544, 'Reduces the cooldown of your Fire Nova spell by 3 seconds.');
INSERT INTO `spelltext_en` VALUES (55545, 'Increases the critical strike damage bonus of your Flame Shock damage by 60%.');
INSERT INTO `spelltext_en` VALUES (55546, 'Increases spell critical strike chance by 2% while Flametongue Weapon is active.');
INSERT INTO `spelltext_en` VALUES (55547, 'Increases the duration of your Frost Shock by 2 sec.');
INSERT INTO `spelltext_en` VALUES (55548, 'Your Healing Stream Totem heals for an additional 20%.');
INSERT INTO `spelltext_en` VALUES (55551, 'Your Healing Wave also heals you for 20% of the healing effect when you heal someone else.');
INSERT INTO `spelltext_en` VALUES (55552, 'Your Lesser Healing Wave heals for 20% more if the target is also affected by Earth Shield.');
INSERT INTO `spelltext_en` VALUES (55553, 'Increases the damage from Lightning Shield by 20%.');
INSERT INTO `spelltext_en` VALUES (55554, 'Increases the damage dealt by Lightning Bolt by 4%.');
INSERT INTO `spelltext_en` VALUES (55558, 'Your Mana Tide Totem grants an additional 1% of each target\'s maximum mana each time it pulses.');
INSERT INTO `spelltext_en` VALUES (55559, 'Increases the Nature damage bonus from your Stormstrike ability by an additional 8%.');
INSERT INTO `spelltext_en` VALUES (55560, 'Damage on your Lava Lash is increased by an additional 10% if your weapon is enchanted with Flametongue.');
INSERT INTO `spelltext_en` VALUES (55561, 'Reduces the cooldown of your Elemental Mastery ability by 30 sec.');
INSERT INTO `spelltext_en` VALUES (55562, 'Increases the chance per swing for Windfury Weapon to trigger by 2%.');
INSERT INTO `spelltext_en` VALUES (55564, 'Increases your Spirit by 15.');
INSERT INTO `spelltext_en` VALUES (55565, 'Increases your spell power by 18.');
INSERT INTO `spelltext_en` VALUES (55592, 'Groom your Non-Combat Pet to a glossy shine.');
INSERT INTO `spelltext_en` VALUES (55595, 'Increases your spell power by 18.');
INSERT INTO `spelltext_en` VALUES (55596, 'Increases your Stamina by 25.');
INSERT INTO `spelltext_en` VALUES (55630, 'Permanently embroiders spellthread into pants, increasing spell power by 35 and Spirit by 12.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55631, 'Permanently embroiders spellthread into pants, increasing spell power by 50 and Spirit by 20.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55632, 'Permanently embroiders spellthread into pants, increasing spell power by 35 and Stamina by 20.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55634, 'Permanently embroiders spellthread into pants, increasing spell power by 50 and Stamina by 30.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55647, 'Throw freezing oil at Plagued Proto-Drake eggs to destroy them.');
INSERT INTO `spelltext_en` VALUES (55655, 'Permanently attach an eternal belt buckle onto a belt, adding a socket to the belt.\r\n\r\nAttaching the belt buckle causes the item to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55705, 'Mine Enchanted Earth.');
INSERT INTO `spelltext_en` VALUES (55735, 'Inflicts 4 to 6 additional Frost damage per shot.');
INSERT INTO `spelltext_en` VALUES (55747, 'Your melee and ranged attacks have a chance to chastise your enemy, dealing 1024 to 1536 Holy damage.');
INSERT INTO `spelltext_en` VALUES (55755, 'Inflicts 4 to 6 additional Frost damage per swing.');
INSERT INTO `spelltext_en` VALUES (55797, 'Heal the wounds of a Fallen Earthen Defender in the Snowdrift Plains. (10 sec. cooldown)');
INSERT INTO `spelltext_en` VALUES (55818, 'Hurls a Granite Boulder at a targeted Stormforged Iron Giant, summoning a group of Earthen Ironbane dwarves to assist you in combat.');
INSERT INTO `spelltext_en` VALUES (55836, 'Attaches a chain to your weapon, reducing the duration of Disarm effects by 50% and increasing your hit rating by 28. Does not stack with other similar effects.\r\n\r\nAttaching the weapon chain causes the weapon to become soulbound.');
INSERT INTO `spelltext_en` VALUES (55915, 'Increases maximum health by 3385 for 15 sec. Shares cooldown with other Battlemaster\'s trinkets.');
INSERT INTO `spelltext_en` VALUES (55953, 'Makes you Friendly with the Frost Giants');
INSERT INTO `spelltext_en` VALUES (55983, 'Blows Hodir\'s Horn at the corpse of a Niffelem Forefather or Restless Frostborn.');
INSERT INTO `spelltext_en` VALUES (56005, 'The difficult task of assembling a glacial bag can only be done every 7 days.');
INSERT INTO `spelltext_en` VALUES (56033, 'Hit an Exhausted Vrykul to make him return to work (or attack you, depending on your luck).');
INSERT INTO `spelltext_en` VALUES (56040, 'Turn an eternal water into 10 crystallized water.');
INSERT INTO `spelltext_en` VALUES (56041, 'Turn an eternal earth into 10 crystallized earth.');
INSERT INTO `spelltext_en` VALUES (56042, 'Turn an eternal fire into 10 crystallized fire.');
INSERT INTO `spelltext_en` VALUES (56043, 'Turn an eternal life into 10 crystallized life.');
INSERT INTO `spelltext_en` VALUES (56044, 'Turn an eternal shadow into 10 crystallized shadow.');
INSERT INTO `spelltext_en` VALUES (56045, 'Turn an eternal air into 10 crystallized air.');
INSERT INTO `spelltext_en` VALUES (56099, 'Throws the Essence of Ice at a nearby piece of smoldering scrap.');
INSERT INTO `spelltext_en` VALUES (56121, 'Increases speed by 30% for 6 sec.');
INSERT INTO `spelltext_en` VALUES (56162, 'Your Circle of Healing spell heals 1 additional target.');
INSERT INTO `spelltext_en` VALUES (56163, 'Your Dispel Magic spell also heals your target for 3% of maximum health.');
INSERT INTO `spelltext_en` VALUES (56164, 'Reduces the cooldown of your Fade spell by 9 sec.');
INSERT INTO `spelltext_en` VALUES (56165, 'Reduces cooldown and duration of Fear Ward by 60 sec.');
INSERT INTO `spelltext_en` VALUES (56166, 'Reduces the mana cost of your Flash Heal by 10%.');
INSERT INTO `spelltext_en` VALUES (56167, 'Increases the damage and healing of your Holy Nova spell by an additional 20%.');
INSERT INTO `spelltext_en` VALUES (56168, 'Increases the armor from your Inner Fire spell by 50%.');
INSERT INTO `spelltext_en` VALUES (56169, 'Increases the amount healed by your Lightwell by 20%');
INSERT INTO `spelltext_en` VALUES (56170, 'Reduces the mana cost of Mass Dispel by 35%.');
INSERT INTO `spelltext_en` VALUES (56171, 'Reduces the chance targets will resist or break your Mind Control spell by an additional 17%.');
INSERT INTO `spelltext_en` VALUES (56172, 'The periodic damage ticks of your Shadow Word: Pain spell restore 1% of your base mana.');
INSERT INTO `spelltext_en` VALUES (56174, 'While in Shadowform, your non-periodic spell critical strikes increase your spell power by 30% of your Spirit for 10 sec.');
INSERT INTO `spelltext_en` VALUES (56175, 'Your Power Word: Shield also heals the target for 20% of the absorption amount.');
INSERT INTO `spelltext_en` VALUES (56176, 'Your Prayer of Healing spell also heals an additional 20% of its initial heal over 6 sec.');
INSERT INTO `spelltext_en` VALUES (56177, 'Increases the duration of your Psychic Scream by 2 sec. and increases its cooldown by 8 sec.');
INSERT INTO `spelltext_en` VALUES (56178, 'Reduces the duration of your Renew by 3 sec. but increases the amount healed each tick by 25%.');
INSERT INTO `spelltext_en` VALUES (56179, 'Reduces the cast time of your Shackle Undead by 1 sec.');
INSERT INTO `spelltext_en` VALUES (56180, 'Targets below 35% health take an additional 10% damage from your Shadow Word: Death spell.');
INSERT INTO `spelltext_en` VALUES (56181, 'Increases the damage done by your Mind Flay spell by 10% when your target is afflicted with Shadow Word: Pain.');
INSERT INTO `spelltext_en` VALUES (56182, 'Your Smite spell inflicts an additional 20% damage against targets afflicted by Holy Fire.');
INSERT INTO `spelltext_en` VALUES (56183, 'Increases the duration of Spirit of Redemption by 6 sec.');
INSERT INTO `spelltext_en` VALUES (56184, 'Increases spell power by 292 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (56186, 'Restores 2340 mana over 12 sec.');
INSERT INTO `spelltext_en` VALUES (56188, 'Summons a Phantom Boar to fight for you for 30 seconds.');
INSERT INTO `spelltext_en` VALUES (56189, 'Sound the horn to signal Bruor Ironbane and Bouldercrag the Rockshaper to attack.');
INSERT INTO `spelltext_en` VALUES (56190, 'Projects a purple targeting beam onto your current target.');
INSERT INTO `spelltext_en` VALUES (56191, 'Projects a purple and green targeting beam onto your current target.');
INSERT INTO `spelltext_en` VALUES (56192, 'Unlocks a Jotunheim Cage.');
INSERT INTO `spelltext_en` VALUES (56227, 'Attempts to salvage Stormforged Eyes from an Iron Giant\'s corpse.');
INSERT INTO `spelltext_en` VALUES (56245, 'Right Click to set out a candle-laden chocolate cake that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (56255, 'Right Click to set out a lovely cake that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (56261, 'Right Click to set out a big berry pie that serves up to ten party members.');
INSERT INTO `spelltext_en` VALUES (56268, 'Increases the damage done by Incinerate by 5%.');
INSERT INTO `spelltext_en` VALUES (56270, 'Your Conflagrate spell no longer consumes your Immolate or Shadowflame spell from the target.');
INSERT INTO `spelltext_en` VALUES (56271, 'Your Corruption spell has a 4% chance to cause you to enter a Shadow Trance state after damaging the opponent. The Shadow Trance state reduces the casting time of your next Shadow Bolt spell by 100%.');
INSERT INTO `spelltext_en` VALUES (56275, 'Throw at a lightning forge in Narvir\'s Cradle to disable it. (10 yard range.)');
INSERT INTO `spelltext_en` VALUES (56278, 'Reads the proclamation to the sons of Hodir.');
INSERT INTO `spelltext_en` VALUES (56282, 'Increases the duration of your Curse of Agony by 4 sec.');
INSERT INTO `spelltext_en` VALUES (56283, 'Increases the duration of your Death Coil by 0.5 sec.');
INSERT INTO `spelltext_en` VALUES (56284, 'Increases the damage your Fear target can take before the Fear effect is removed by 20%.');
INSERT INTO `spelltext_en` VALUES (56285, 'Increases the Felguard\'s total attack power by 20%.');
INSERT INTO `spelltext_en` VALUES (56286, 'When your Felhunter uses Devour Magic, you will also be healed for that amount.');
INSERT INTO `spelltext_en` VALUES (56288, 'Reduces the pushback suffered from damaging attacks while channeling your Health Funnel spell by 100%.');
INSERT INTO `spelltext_en` VALUES (56289, 'You receive 30% more healing from using a healthstone.');
INSERT INTO `spelltext_en` VALUES (56290, 'Reduces the cooldown on your Howl of Terror spell by 8 sec.');
INSERT INTO `spelltext_en` VALUES (56291, 'Increases the periodic damage of your Immolate by 10%.');
INSERT INTO `spelltext_en` VALUES (56292, 'Increases the damage done by your Imp\'s Firebolt spell by 20%.');
INSERT INTO `spelltext_en` VALUES (56293, 'Increases the critical strike bonus of your Searing Pain by 20%.');
INSERT INTO `spelltext_en` VALUES (56294, 'Reduces the mana cost of your Shadow Bolt by 10%.');
INSERT INTO `spelltext_en` VALUES (56295, 'Increases the critical strike chance of Shadowburn by 20% when the target is below 35% health.');
INSERT INTO `spelltext_en` VALUES (56296, 'Increases the healing you receive from your Siphon Life talent by 25%.');
INSERT INTO `spelltext_en` VALUES (56297, 'Increases the amount of health you gain from resurrecting via a Soulstone by 300%.');
INSERT INTO `spelltext_en` VALUES (56299, 'Your Succubus\'s Seduction ability also removes all damage over time effects from the target.');
INSERT INTO `spelltext_en` VALUES (56301, 'Decreases the casting time of your Unstable Affliction by 0.2 sec.');
INSERT INTO `spelltext_en` VALUES (56302, 'Increases your Voidwalker\'s total Stamina by 20%.');
INSERT INTO `spelltext_en` VALUES (56313, 'When within 15 yards of the Corpse of the Fallen Worg, the fang summons an Ethereal Worg. Follow the worg and keep it safe while it tracks the scent of the Stormforged Infiltrator.');
INSERT INTO `spelltext_en` VALUES (56345, 'Summons a Warbear Matriarch inside Brunnhildar Village.');
INSERT INTO `spelltext_en` VALUES (56350, 'Inflicts 1150 to 1500 Fire damage to targets in a 10 yard radius. This explosive is powerful enough to cause moderate siege damage.');
INSERT INTO `spelltext_en` VALUES (56353, 'Attaches a Titanium Spike to your shield that deals 45 to 67 damage every time you block with it.\r\n\r\nAttaching a Titanium Shield Spike to your shield causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (56390, 'Increases your spell penetration by 24.');
INSERT INTO `spelltext_en` VALUES (56391, 'Increases your spell penetration by 26.');
INSERT INTO `spelltext_en` VALUES (56393, 'Throw the meat to a Stormcrest Eagle in Stormcrest. You can perform this action while mounted.');
INSERT INTO `spelltext_en` VALUES (56394, 'Increases your spell penetration by 36.');
INSERT INTO `spelltext_en` VALUES (56395, 'Increases your spell penetration by 48.');
INSERT INTO `spelltext_en` VALUES (56403, 'Converts 20 Runic Mana Potions into compact injectors.');
INSERT INTO `spelltext_en` VALUES (56409, 'Summon a small army of earthen that will obey your orders in the Terrace of the Makers.');
INSERT INTO `spelltext_en` VALUES (56448, 'Throw the Storm Hammer to deal massive damage and stun the target for 4 sec. The Storm Hammer will return to the wielders hand after it strikes.');
INSERT INTO `spelltext_en` VALUES (56449, '+100 resilience rating.');
INSERT INTO `spelltext_en` VALUES (56450, '+100 resilience rating.');
INSERT INTO `spelltext_en` VALUES (56488, 'Explodes when triggered, dealing 2188 to 2812 Fire damage to all enemies nearby and 2188 to 2812 damage to you. Also causes major siege damage.');
INSERT INTO `spelltext_en` VALUES (56509, '+100 resilience rating.');
INSERT INTO `spelltext_en` VALUES (56510, 'Calls or dismisses Creteus\'s Mobile Databank.');
INSERT INTO `spelltext_en` VALUES (56540, 'Reduces mana cost of Arcane Explosion by 10%.');
INSERT INTO `spelltext_en` VALUES (56542, 'Increases the critical strike damage bonus of Arcane Missiles by 25%.');
INSERT INTO `spelltext_en` VALUES (56544, 'Increases the duration of Arcane Power by 3 sec.');
INSERT INTO `spelltext_en` VALUES (56546, 'Increases the distance you travel with the Blink spell by 5 yards.');
INSERT INTO `spelltext_en` VALUES (56547, 'Your Evocation ability also causes you to regain 60% of your health over its duration.');
INSERT INTO `spelltext_en` VALUES (56562, 'Attempts to carve an Icemaw Bear Flank from a Dead Icemaw Bear in Hibernal Cavern.');
INSERT INTO `spelltext_en` VALUES (56573, 'Places the Icemaw Bear Flank at Jormuttar\'s crater in the rear of Hibernal Cavern.');
INSERT INTO `spelltext_en` VALUES (56587, 'Reduces the casting time of your Fireball spell by 0.15 sec, but removes the damage over time effect.');
INSERT INTO `spelltext_en` VALUES (56588, 'Increases the critical strike chance of Fire Blast by 50% when the target is stunned or incapacitated.');
INSERT INTO `spelltext_en` VALUES (56589, 'Your Frost Nova targets can take an additional 20% damage before the Frost Nova effect automatically breaks.');
INSERT INTO `spelltext_en` VALUES (56590, 'Increases the damage dealt by Frostbolt by 5%, but removes the slowing effect.');
INSERT INTO `spelltext_en` VALUES (56591, 'Your Ice Armor and Frost Armor spells grant an additional 50% armor and resistance.');
INSERT INTO `spelltext_en` VALUES (56592, 'Your Frost Nova cooldown is now reset every time you use Ice Block.');
INSERT INTO `spelltext_en` VALUES (56593, 'Your Ice Lance now causes 4 times damage against frozen targets higher level than you instead of triple damage.');
INSERT INTO `spelltext_en` VALUES (56594, 'Your Icy Veins ability also removes all movement slowing and cast time slowing effects.');
INSERT INTO `spelltext_en` VALUES (56595, 'Increases the damage of your Scorch spell by 20%.');
INSERT INTO `spelltext_en` VALUES (56596, 'Increases the duration of the Invisibility effect by 10 sec.');
INSERT INTO `spelltext_en` VALUES (56597, 'Your Mage Armor spell grants an additional 20% mana regeneration while casting.');
INSERT INTO `spelltext_en` VALUES (56598, 'Increases the mana received from using a mana gem by 40%.');
INSERT INTO `spelltext_en` VALUES (56599, 'Your Molten Armor grants an additional 20% of your spirit as critical strike rating.');
INSERT INTO `spelltext_en` VALUES (56600, 'Your Polymorph spell also removes all damage over time effects from the target.');
INSERT INTO `spelltext_en` VALUES (56601, 'Your Remove Curse spell also makes the target immune to all curses for 4 sec.');
INSERT INTO `spelltext_en` VALUES (56602, 'Reduces the cooldown of your Summon Water Elemental spell by 30 sec.');
INSERT INTO `spelltext_en` VALUES (56671, 'Hurls the Spear of Hodir at a Wild Wyrm in the Valley of Ancient Winters.');
INSERT INTO `spelltext_en` VALUES (56727, 'Places a Roaming Jormungar into a disembodied state, fit for Arngrim\'s consumption.');
INSERT INTO `spelltext_en` VALUES (56765, 'Place the Chieftain\'s Totem near a rift in Frostfloe Deep. The totem will attempt to close it.');
INSERT INTO `spelltext_en` VALUES (56788, 'Place the eggs on the Broodmother\'s Nest to lure Veranus to it.');
INSERT INTO `spelltext_en` VALUES (56863, 'Travel back in time to Stormhoof\'s battle with the North Wind. You must be in the Plain of Echoes or the Temple of Life to use this power.');
INSERT INTO `spelltext_en` VALUES (56869, 'Reduces the cooldown of your Aimed Shot ability by 2 sec.');
INSERT INTO `spelltext_en` VALUES (56870, 'Your Arcane Shot refunds 20% of its mana cost if the target has one of your Stings active on it.');
INSERT INTO `spelltext_en` VALUES (56871, 'Increases the attack power bonus of Aspect of the Beast for you and your pet by an additional 2%.');
INSERT INTO `spelltext_en` VALUES (56872, 'Increases the healing done by your Mend Pet ability by 40%.');
INSERT INTO `spelltext_en` VALUES (56873, 'Increases the amount of mana gained from attacks while Aspect of the Viper is active by 10%.');
INSERT INTO `spelltext_en` VALUES (56874, 'Decreases the cooldown of Bestial Wrath by 20 sec.');
INSERT INTO `spelltext_en` VALUES (56875, 'Decreases the cooldown of Deterrence by 10 sec.');
INSERT INTO `spelltext_en` VALUES (56876, 'Decreases the cooldown of Disengage by 5 sec.');
INSERT INTO `spelltext_en` VALUES (56877, 'When your Freezing Trap breaks, the victim\'s movement speed is reduced by 30% for 4 sec.');
INSERT INTO `spelltext_en` VALUES (56878, 'Increases the radius of the effect from your Frost Trap by 2 yards.');
INSERT INTO `spelltext_en` VALUES (56879, 'Increases the attack power bonus of your Hunter\'s Mark by 20%.');
INSERT INTO `spelltext_en` VALUES (56880, 'Decreases the duration of the effect from your Immolation Trap by 6 sec., but damage while active is increased by 100%.');
INSERT INTO `spelltext_en` VALUES (56881, 'Increases the haste bonus of the Improved Aspect of the Hawk effect by an additional 6%.');
INSERT INTO `spelltext_en` VALUES (56882, 'Decreases the cooldown of Multi-Shot by 1 sec.');
INSERT INTO `spelltext_en` VALUES (56883, 'Increases the haste from Rapid Fire by an additional 8%.');
INSERT INTO `spelltext_en` VALUES (56884, 'Increases the duration of your Serpent Sting by 6 sec.');
INSERT INTO `spelltext_en` VALUES (56885, 'Snakes from your Snake Trap take 90% reduced damage from area of effect spells.');
INSERT INTO `spelltext_en` VALUES (56886, 'Increases the damage dealt by Steady Shot by 10% when your target is afflicted with Serpent Sting.');
INSERT INTO `spelltext_en` VALUES (56887, 'While your Trueshot Aura is active, you have 10% increased critical strike chance on your Aimed Shot.');
INSERT INTO `spelltext_en` VALUES (56888, 'Decreases the mana cost of Volley by 20%.');
INSERT INTO `spelltext_en` VALUES (56889, 'Decreases the cooldown of your Wyvern Sting by 6 sec.');
INSERT INTO `spelltext_en` VALUES (56893, 'Blow the horn when the North Wind is weakened.');
INSERT INTO `spelltext_en` VALUES (56894, 'Communicate through the spirit world to request an audience with a Darkmoon Fortune Teller.');
INSERT INTO `spelltext_en` VALUES (57070, 'Restores 22500 health and 19200 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (57085, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 60 Attack Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57096, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 35 Spell Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57098, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 30 Critical Strike Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57101, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 30 Haste Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57106, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 15 Mana per 5 seconds and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57109, 'Increases the duration of Adrenaline Rush by 5 sec.');
INSERT INTO `spelltext_en` VALUES (57110, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 60 Attack Power and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57138, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 35 Spell Power and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57140, 'Increases the range on Ambush by 5 yards.');
INSERT INTO `spelltext_en` VALUES (57141, 'Your Backstab increases the duration of your Rupture effect on the target by 2 sec, up to a maximum of 6 additional sec.');
INSERT INTO `spelltext_en` VALUES (57142, 'Reduces the energy cost of Blade Flurry by 100%.');
INSERT INTO `spelltext_en` VALUES (57144, 'Increases the chance to inflict your target with Crippling Poison by an additional 20%.');
INSERT INTO `spelltext_en` VALUES (57145, 'Increases the slowing effect on Deadly Throw by 20%.');
INSERT INTO `spelltext_en` VALUES (57146, 'Increases the duration of Evasion by 5 sec.');
INSERT INTO `spelltext_en` VALUES (57147, 'Increases the critical strike chance of Eviscerate by 10%.');
INSERT INTO `spelltext_en` VALUES (57148, 'Increases the duration of Expose Armor by 12 sec.');
INSERT INTO `spelltext_en` VALUES (57149, 'Reduces the energy cost of Feint by 20.');
INSERT INTO `spelltext_en` VALUES (57150, 'Reduces the duration of your Garrote ability by 3 sec and increases the total damage it deals by 20%.');
INSERT INTO `spelltext_en` VALUES (57285, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 30 Critical Strike Rating and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57287, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 30 Haste Rating and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57289, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 15 Mana per 5 seconds and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57293, 'Increases the damage dealt by Ghostly Strike by 40% and the duration of its effect by 4 sec., but increases its cooldown by 10 sec.');
INSERT INTO `spelltext_en` VALUES (57295, 'Reduces the energy cost of Gouge by 15.');
INSERT INTO `spelltext_en` VALUES (57296, 'Increases the damage bonus against targets afflicted by Hemorrhage by 40%.');
INSERT INTO `spelltext_en` VALUES (57297, 'Your Preparation ability also instantly resets the cooldown of Blade Flurry, Dismantle, and Kick.');
INSERT INTO `spelltext_en` VALUES (57298, 'Increases the duration of Rupture by 4 sec.');
INSERT INTO `spelltext_en` VALUES (57299, 'Increases the duration of Sap by 20 sec.');
INSERT INTO `spelltext_en` VALUES (57300, 'Vigor grants an additional 10 maximum energy.');
INSERT INTO `spelltext_en` VALUES (57301, 'Set out a great feast that will feed your party!  Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 60 Attack Power, 35 Spell Power and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57302, 'Your Sinister Strike critical strikes have a % chance to add an additional combo point.');
INSERT INTO `spelltext_en` VALUES (57303, 'Increases the duration of Slice and Dice by 3 sec.');
INSERT INTO `spelltext_en` VALUES (57304, 'Increases the movement speed of your Sprint ability by an additional 30%.');
INSERT INTO `spelltext_en` VALUES (57324, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 80 Attack Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57326, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 46 Spell Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57328, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Critical Strike Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57331, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Haste Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57333, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 20 Mana per 5 seconds and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57335, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 80 Attack Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57341, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 46 Spell Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57343, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Critical Strike Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57344, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Haste Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57345, 'When you heal or deal damage you have a chance to gain Greatness, increasing your Strength, Agility, Intellect, or Spirit by 300 for 15 sec. Your highest stat is always chosen.');
INSERT INTO `spelltext_en` VALUES (57348, 'Rocket-Propelled Goblin Grenade launchers will be dropped on death.');
INSERT INTO `spelltext_en` VALUES (57350, 'Absorbs 1500 damage for 6 sec. When the shield is removed by any means, you regain 1500 mana.');
INSERT INTO `spelltext_en` VALUES (57351, 'You have a chance to gain Berserker when you deal or take damage in combat, increasing your critical strike rating by 35 for 12 sec. Effect stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (57352, 'Each time you deal damage, you have a chance to do an additional 1750 to 2250 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (57353, 'Experience gained from killing monsters and completing quests increased by 10%.');
INSERT INTO `spelltext_en` VALUES (57354, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 20 Mana per 5 seconds and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57355, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Expertise Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57357, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 armor penetration rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57359, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Hit Rating and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57362, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and can track humanoids for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57364, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Spirit and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57366, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Agility and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57370, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 Strength and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57372, 'Restores 22500 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and can track beasts for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57388, 'Throw a critter bite at a critter to control it.  Critters are small ambient creatures like rats and turkeys.');
INSERT INTO `spelltext_en` VALUES (57426, 'Set out a great feast that will feed your party!  Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 80 Attack Power, 46 Spell Power and 40 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (57553, 'Transports wielder a safe distance from Voltarus.');
INSERT INTO `spelltext_en` VALUES (57653, 'Right Click to set out a bowl of ten crisp Dalaran apples.');
INSERT INTO `spelltext_en` VALUES (57672, 'Increases all damage dealt by 5%. May only be used within Icecrown.');
INSERT INTO `spelltext_en` VALUES (57686, 'Combine 4 Infused Mushrooms, 2 Chilled Meats and cook over a fire for 2 seconds.  Presto!');
INSERT INTO `spelltext_en` VALUES (57692, 'Permanently enchant bracers to increase your Fire resistance by 70.\r\n\r\nCan only be used on the leatherworker\'s bracers, and doing so will cause them to become soulbound. Fur Lining requires at least 400 skill in Leatherworking to remain active.');
INSERT INTO `spelltext_en` VALUES (57694, 'Permanently enchant bracers to increase your Frost resistance by 70.\r\n\r\nCan only be used on the leatherworker\'s bracers, and doing so will cause them to become soulbound. Fur Lining requires at least 400 skill in Leatherworking to remain active.');
INSERT INTO `spelltext_en` VALUES (57696, 'Permanently enchant bracers to increase your Shadow resistance by 70.\r\n\r\nCan only be used on the leatherworker\'s bracers, and doing so will cause them to become soulbound. Fur Lining requires at least 400 skill in Leatherworking to remain active.');
INSERT INTO `spelltext_en` VALUES (57699, 'Permanently enchant bracers to increase your Nature resistance by 70.\r\n\r\nCan only be used on the leatherworker\'s bracers, and doing so will cause them to become soulbound. Fur Lining requires at least 400 skill in Leatherworking to remain active.');
INSERT INTO `spelltext_en` VALUES (57701, 'Permanently enchant bracers to increase your Arcane resistance by 70.\r\n\r\nCan only be used on the leatherworker\'s bracers, and doing so will cause them to become soulbound. Fur Lining requires at least 400 skill in Leatherworking to remain active.');
INSERT INTO `spelltext_en` VALUES (57727, 'Movement speed increased by 15%. May only be used within Icecrown.');
INSERT INTO `spelltext_en` VALUES (57729, 'Combine an Aged Dalaran Limburger and 6 Half Full Dalaran Wine Glasses to create a Wine and Cheese Platter.');
INSERT INTO `spelltext_en` VALUES (57760, 'Put 4 Rhino Dogs and 4 Wild Mustard in the basket to create a Mustard Dog Picnic Basket.');
INSERT INTO `spelltext_en` VALUES (57768, 'Cook 4 Chilled Meat and 4 Crystalsong Carrots over a fire to make Vegetable Stew.');
INSERT INTO `spelltext_en` VALUES (57804, 'Activate the Violet Hold\'s defenses.');
INSERT INTO `spelltext_en` VALUES (57806, 'Sanctifies the bones of the fallen, allowing their spirits to ascend.');
INSERT INTO `spelltext_en` VALUES (57819, 'You champion the cause of the Argent Crusade. All reputation gains while in level 80 dungeons will be applied to your standing with them.');
INSERT INTO `spelltext_en` VALUES (57820, 'You champion the cause of the Knights of the Ebon Blade. All reputation gains while in level 80 dungeons will be applied to your standing with them.');
INSERT INTO `spelltext_en` VALUES (57821, 'You champion the cause of the Kirin Tor. All reputation gains while in level 80 dungeons will be applied to your standing with them.');
INSERT INTO `spelltext_en` VALUES (57822, 'You champion the cause of the Wyrmrest Accord. All reputation gains while in level 80 dungeons will be applied to your standing with them.');
INSERT INTO `spelltext_en` VALUES (57829, 'Increases spell power by 115.');
INSERT INTO `spelltext_en` VALUES (57844, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (57853, 'Destroy a nearby summoning altar. (15 yard range.)');
INSERT INTO `spelltext_en` VALUES (57906, 'Calls forth a knight of the Ebon Blade.');
INSERT INTO `spelltext_en` VALUES (57907, 'Chance on Moonfire to increase your Spirit by 131.');
INSERT INTO `spelltext_en` VALUES (57908, 'Dips Kurzel\'s Blouse Scrap in the remains of Novos the Summoner.');
INSERT INTO `spelltext_en` VALUES (57918, 'Increases the periodic healing of Rejuvenation by 33.');
INSERT INTO `spelltext_en` VALUES (57939, 'Attempt to attune the Lorehammer to the time of a Taunka Artifact in Howling Hollow.');
INSERT INTO `spelltext_en` VALUES (57943, 'Increases your damage against undead by 1%.');
INSERT INTO `spelltext_en` VALUES (57944, 'Increases your damage against undead by 3%.');
INSERT INTO `spelltext_en` VALUES (57957, 'Place a Death\'s Gaze Orb on the Abomination Lab Orb Stand, the Flesh Giant Lab Orb Stand, or the Cauldron Area Orb Stand.');
INSERT INTO `spelltext_en` VALUES (57967, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [245+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (57968, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy which instantly inflicts [300+0.10*AP] Nature damage.');
INSERT INTO `spelltext_en` VALUES (57972, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [61*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (57973, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a % chance of poisoning the enemy for [74*4+0.12*AP] Nature damage over 12 sec. Stacks up to 5 times on a single target.  Once stacked to 5 times, each application of Deadly Poison also causes the poison on the Rogue\'s other weapon to apply.');
INSERT INTO `spelltext_en` VALUES (57977, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [188+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (57978, 'Coats a weapon with poison that lasts for 1 hour.\r\nEach strike has a chance of poisoning the enemy, causing [231+0.04*AP] Nature damage and reducing all healing effects used on them by 50% for 15 sec.');
INSERT INTO `spelltext_en` VALUES (57982, 'Coats a weapon with poison that lasts for 1 hour. Each strike has a % chance of poisoning the enemy which instantly inflicts 218 to 280 Nature damage and dispels 1 Enrage effect, but causes no additional threat.');
INSERT INTO `spelltext_en` VALUES (58000, 'Increases the healing of your Holy Shock spell by 10%.');
INSERT INTO `spelltext_en` VALUES (58013, 'Plants Blessed Banner of the Crusade at the pile of crusader skulls located atop Crusader\'s Spire.');
INSERT INTO `spelltext_en` VALUES (58067, 'Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 60 Attack Power, 35 Spell Power and 30 Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (58069, 'Craft a Blood Jade Amulet by combining the Vrykul Amulet with a Dark Jade and a Bloodstone.');
INSERT INTO `spelltext_en` VALUES (58073, 'Craft a Glowing Ivory Figurine by combining Northern Ivory with Chalcedony and a Shadow Crystal.');
INSERT INTO `spelltext_en` VALUES (58074, 'Craft a Wicked Sun Brooch by combining the Iron Dwarf Brooch with a Huge Citrine and a Sun Crystal.');
INSERT INTO `spelltext_en` VALUES (58075, 'Craft an Intricate Bone Figurine by combining the Proto Dragon Bone with a Sun Crystal and a Dark Jade.');
INSERT INTO `spelltext_en` VALUES (58076, 'Craft a Bright Armor Relic by combining the Elemental Armor Scrap with a Bloodstone and a Huge Citrine.');
INSERT INTO `spelltext_en` VALUES (58077, 'Craft a Shifting Sun Curio by combining the Scourge Curio with a Sun Crystal and a Shadow Crystal.');
INSERT INTO `spelltext_en` VALUES (58085, 'Smelt your jagged shards at a Malykriss Furnace on the bottom level of Malykriss.');
INSERT INTO `spelltext_en` VALUES (58115, 'Repair this necklace by replacing the missing Chalcedony.');
INSERT INTO `spelltext_en` VALUES (58140, 'Increases your swim speed by 50% while in Aquatic Form.');
INSERT INTO `spelltext_en` VALUES (58151, 'Display to a weakened Lithe Stalker to demand its obedience.');
INSERT INTO `spelltext_en` VALUES (58158, 'Reduces the cooldown of your Challenging Roar ability by 30 sec.');
INSERT INTO `spelltext_en` VALUES (58159, 'Mana cost of your Mark of the Wild and Gift of the Wild spells reduced by 50%.');
INSERT INTO `spelltext_en` VALUES (58160, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (58161, 'Your Rebirth spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (58163, 'Increases the duration of your Thorns ability by 50 min when cast on yourself.');
INSERT INTO `spelltext_en` VALUES (58165, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (58168, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (58172, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (58186, 'Reduces the pushback suffered from damaging attacks while casting Revive Pet by 100%.');
INSERT INTO `spelltext_en` VALUES (58188, 'Your Mend Pet spell increases your pet\'s happiness slightly.');
INSERT INTO `spelltext_en` VALUES (58229, 'Reduces the cooldown of your Feign Death spell by 5 sec.');
INSERT INTO `spelltext_en` VALUES (58232, 'Increases the range of your Aspect of the Pack ability by 15 yards.');
INSERT INTO `spelltext_en` VALUES (58233, 'Increases the damage your pet inflicts while using Eyes of the Beast by 50%.');
INSERT INTO `spelltext_en` VALUES (58234, 'Reduces the pushback suffered from damaging attacks while casting Scare Beast by 75%.');
INSERT INTO `spelltext_en` VALUES (58235, 'Reduces the mana cost of your Arcane Intellect and Arcane Brilliance spells by 50%.');
INSERT INTO `spelltext_en` VALUES (58236, 'You have an additional 5% chance to reflect Fire spells while your Fire Ward is active.');
INSERT INTO `spelltext_en` VALUES (58237, 'You have an additional 5% chance to reflect Frost spells while your Frost Ward is active.');
INSERT INTO `spelltext_en` VALUES (58238, 'Increases the duration of your Frost Armor and Ice Armor spells by 30 min.');
INSERT INTO `spelltext_en` VALUES (58239, 'Your Polymorph: Sheep spell polymorphs the target into a penguin instead.');
INSERT INTO `spelltext_en` VALUES (58240, 'Your Polymorph: Sheep spell polymorphs the target into a polar bear cub instead.');
INSERT INTO `spelltext_en` VALUES (58241, 'Your Slow Fall spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (58242, 'Reduces the mana cost of your Blessing of Kings and Greater Blessing of Kings spells by 50%.');
INSERT INTO `spelltext_en` VALUES (58243, 'Increases the duration of your Blessing of Might spell by 20 min when cast on yourself.');
INSERT INTO `spelltext_en` VALUES (58244, 'Increases the duration of your Blessing of Wisdom spell by 20 min when cast on yourself.');
INSERT INTO `spelltext_en` VALUES (58245, 'Reduces the cooldown of your Lay on Hands spell by 5 min.');
INSERT INTO `spelltext_en` VALUES (58246, 'Damage against Undead increased by 1% while your Sense Undead ability is active.');
INSERT INTO `spelltext_en` VALUES (58247, 'Reduces the mana cost of your Seal of Wisdom spell by 50%.');
INSERT INTO `spelltext_en` VALUES (58248, 'Reduces the mana cost of your Fade spell by 30%.');
INSERT INTO `spelltext_en` VALUES (58249, 'Your Levitate spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (58250, 'Reduces the mana cost of your Power Word: Fortitude and Prayer of Fortitude spells by 50%.');
INSERT INTO `spelltext_en` VALUES (58251, 'Increases the range of your Shackle Undead spell by 5 yards.');
INSERT INTO `spelltext_en` VALUES (58252, 'Increases the duration of your Shadow Protection and Prayer of Shadow Protection spells by 10 min.');
INSERT INTO `spelltext_en` VALUES (58253, 'Receive 5% of your maximum mana if your Shadowfiend dies from damage.');
INSERT INTO `spelltext_en` VALUES (58254, 'Increases the range of your Distract ability by 5 yards.');
INSERT INTO `spelltext_en` VALUES (58255, 'Reduces the cast time of your Pick Lock ability by 100%.');
INSERT INTO `spelltext_en` VALUES (58256, 'Increases the range of your Pick Pocket ability by 5 yards.');
INSERT INTO `spelltext_en` VALUES (58257, 'Increases the distance your Safe Fall ability allows you to fall without taking damage.');
INSERT INTO `spelltext_en` VALUES (58258, 'Enables you to walk on water while your Sprint ability is active.');
INSERT INTO `spelltext_en` VALUES (58259, 'Increases your movement speed by 30% while the Vanish effect is active.');
INSERT INTO `spelltext_en` VALUES (58260, 'Cooldown of your Astral Recall spell reduced by 7.5 min.');
INSERT INTO `spelltext_en` VALUES (58263, 'Your Reincarnation spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (58264, 'Your Water Breathing spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (58265, 'Your Water Walking spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (58266, 'Increases the number of charges on your Water Shield spell by 1.');
INSERT INTO `spelltext_en` VALUES (58267, 'Increases the swim speed of targets affected by your Unending Breath spell by 20%.');
INSERT INTO `spelltext_en` VALUES (58271, 'Your Drain Soul ability occasionally creates an additional soul shard.');
INSERT INTO `spelltext_en` VALUES (58272, 'Increases the movement speed of your Eye of Kilrogg by 50% and allows it to fly in areas where flying mounts are enabled.');
INSERT INTO `spelltext_en` VALUES (58273, 'Increases the range of your Curse of Exhaustion spell by 5 yards.');
INSERT INTO `spelltext_en` VALUES (58274, 'Reduces the cast time of your Enslave Demon spell by 50%.');
INSERT INTO `spelltext_en` VALUES (58275, 'Reduces the mana cost of your Ritual of Souls spell by 70%.');
INSERT INTO `spelltext_en` VALUES (58276, 'Increases the duration of your Battle Shout ability by 2 min.');
INSERT INTO `spelltext_en` VALUES (58277, 'Reduces the health cost of your Bloodrage ability by 100%.');
INSERT INTO `spelltext_en` VALUES (58278, 'Increases the range of your Charge ability by 5 yards.');
INSERT INTO `spelltext_en` VALUES (58279, 'Increases the damage of your Mocking Blow ability by 25%.');
INSERT INTO `spelltext_en` VALUES (58280, 'Increases the radius of your Thunder Clap ability by 2 yards.');
INSERT INTO `spelltext_en` VALUES (58281, 'Increases the window of opportunity in which you can use Victory Rush by 5 sec.');
INSERT INTO `spelltext_en` VALUES (58389, 'Increases the damage of your Mortal Strike ability by 10%.');
INSERT INTO `spelltext_en` VALUES (58390, 'Reduces the cooldown of your Whirlwind by 2 sec.');
INSERT INTO `spelltext_en` VALUES (58391, 'Your Victory Rush ability has a 30% increased critical strike chance.');
INSERT INTO `spelltext_en` VALUES (58392, 'Reduces the rage cost of your Thunder Clap ability by 5.');
INSERT INTO `spelltext_en` VALUES (58393, 'Increases the chance for your Taunt ability to succeed by 8%.');
INSERT INTO `spelltext_en` VALUES (58394, 'Reduces the rage cost of your Sweeping Strikes ability by 100%.');
INSERT INTO `spelltext_en` VALUES (58395, 'Your Sunder Armor ability affects a second nearby target.');
INSERT INTO `spelltext_en` VALUES (58396, 'Reduces the cooldown of your Last Stand ability by 1 min.');
INSERT INTO `spelltext_en` VALUES (58397, 'Increases your block value by 10% for 10 sec after using your Shield Slam ability.');
INSERT INTO `spelltext_en` VALUES (58398, 'After using Revenge, your next Heroic Strike costs no rage.');
INSERT INTO `spelltext_en` VALUES (58399, 'Increases the duration of your Rend ability by 6 sec.');
INSERT INTO `spelltext_en` VALUES (58400, 'Adds a 100% chance to enable your Overpower when your attacks are parried.');
INSERT INTO `spelltext_en` VALUES (58401, 'Your Mocking Blow ability generates 100% additional threat.');
INSERT INTO `spelltext_en` VALUES (58402, 'Increases the number attacks you intercept for your Intervene target by 1.');
INSERT INTO `spelltext_en` VALUES (58403, 'You gain 10 rage when you critically strike with your Heroic Strike ability.');
INSERT INTO `spelltext_en` VALUES (58404, 'Gives your Hamstring ability a % chance to immobilize the target for 5 sec.');
INSERT INTO `spelltext_en` VALUES (58405, 'Your Execute ability deals damage as if you had 10 additional rage.');
INSERT INTO `spelltext_en` VALUES (58406, 'Your Devastate ability now applies two stacks of Sunder Armor.');
INSERT INTO `spelltext_en` VALUES (58407, 'Increases the number of targets your Cleave hits by 1.');
INSERT INTO `spelltext_en` VALUES (58408, 'Increases the healing you receive from your Bloodthirst ability by 100%.');
INSERT INTO `spelltext_en` VALUES (58409, 'Reduces the cooldown of your Charge ability by 7%.');
INSERT INTO `spelltext_en` VALUES (58440, 'Increases experience earned and reputation gained by 0%. Lasts 1 hour. This effect will only work within Storm Peaks.');
INSERT INTO `spelltext_en` VALUES (58441, 'Slows falling speed significantly for 30 sec. This effect will only work within Storm Peaks.');
INSERT INTO `spelltext_en` VALUES (58442, 'Chance on successful spellcast to restore 600 mana. Lasts for 1 hour. This effect will only work within Storm Peaks.');
INSERT INTO `spelltext_en` VALUES (58444, 'Chance on melee swing to restore 135 to 165 health. Lasts for 1 hour. This effect will only work within Storm Peaks.');
INSERT INTO `spelltext_en` VALUES (58448, 'Increases the target\'s Strength by 25 for 30 min.');
INSERT INTO `spelltext_en` VALUES (58449, 'Increases the target\'s Strength by 30 for 30 min.');
INSERT INTO `spelltext_en` VALUES (58450, 'Increases the target\'s Agility by 25 for 30 min.');
INSERT INTO `spelltext_en` VALUES (58451, 'Increases the target\'s Agility by 30 for 30 min.');
INSERT INTO `spelltext_en` VALUES (58452, 'Increases the target\'s Armor by 340 for 30 min.');
INSERT INTO `spelltext_en` VALUES (58454, 'Causes the imbiber to belch fire, dealing 417 to 483 damage per sec for 8 sec. This effect will only work within Storm Peaks.');
INSERT INTO `spelltext_en` VALUES (58465, 'Set out a great feast that will feed your party! Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become larger!');
INSERT INTO `spelltext_en` VALUES (58474, 'Set out a great feast that will feed your party!  Restores 22500 health and 19200 mana over 30 sec. If you spend at least 10 seconds eating you will become smaller.');
INSERT INTO `spelltext_en` VALUES (58493, 'Right Click to throw and pity some fools!');
INSERT INTO `spelltext_en` VALUES (58496, 'Eating Old Mammoth makes you sad.');
INSERT INTO `spelltext_en` VALUES (58499, 'Cupcakes make you happy.');
INSERT INTO `spelltext_en` VALUES (58500, 'Bad Clams make you angry.');
INSERT INTO `spelltext_en` VALUES (58501, 'Assume the form of an Iron Dwarf for 10 min.');
INSERT INTO `spelltext_en` VALUES (58502, 'Haunted Herring makes you scared.');
INSERT INTO `spelltext_en` VALUES (58515, 'Lays a Watcher\'s Corpse on the Ahn\'kahet Brazier.');
INSERT INTO `spelltext_en` VALUES (58614, 'Increases the chance for your Dark Command ability to work successfully by 8%.');
INSERT INTO `spelltext_en` VALUES (58615, 'Summons and dismisses a rideable Brutal Nether Drake mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (58641, 'Burn a Festering Corpse at the Fleshwerks.');
INSERT INTO `spelltext_en` VALUES (58648, 'Restores 22500 health and 19200 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (58705, 'Increases the duration of your Anti-Magic Shell by 2 sec.');
INSERT INTO `spelltext_en` VALUES (58706, 'Your Heart Strike also reduces the movement speed of your target by 50% for 10 sec.');
INSERT INTO `spelltext_en` VALUES (58707, 'Your Blood Tap no longer causes damage to you.');
INSERT INTO `spelltext_en` VALUES (58708, 'Adds 1 additional 0.0:charges; to your Bone Shield.');
INSERT INTO `spelltext_en` VALUES (58709, 'Your Chains of Ice also causes 144 to 156 Frost damage, increased by your attack power.');
INSERT INTO `spelltext_en` VALUES (58710, 'Damage of your Death and Decay spell increased by 20%.');
INSERT INTO `spelltext_en` VALUES (58711, 'Your Death Coil refunds 20 runic power when used to heal.');
INSERT INTO `spelltext_en` VALUES (58713, 'When you deal a killing blow that grants honor or experience, the cooldown of your Death Grip is refreshed.');
INSERT INTO `spelltext_en` VALUES (58715, 'Reduces the cost of your Frost Strike by 8 Runic Power.');
INSERT INTO `spelltext_en` VALUES (58716, 'Increases the duration of your Horn of Winter ability by 1 min.');
INSERT INTO `spelltext_en` VALUES (58717, 'Your Icebound Fortitude now always grants at least 40% damage reduction, regardless of your defense skill.');
INSERT INTO `spelltext_en` VALUES (58718, 'Your Frost Fever disease deals 20% additional damage.');
INSERT INTO `spelltext_en` VALUES (58719, 'Increases the damage of your Obliterate ability by 25%.');
INSERT INTO `spelltext_en` VALUES (58720, 'Your Plague Strike does 20% additional damage.');
INSERT INTO `spelltext_en` VALUES (58721, 'Your Ghoul receives an additional 40% of your Strength and 40% of your Stamina.');
INSERT INTO `spelltext_en` VALUES (58722, 'Increases the critical strike chance of your Rune Strike by 10%.');
INSERT INTO `spelltext_en` VALUES (58723, 'Your Scourge Strike increases the duration of your diseases on the target by 3 sec, up to a maximum of 9 additional seconds.');
INSERT INTO `spelltext_en` VALUES (58724, 'Reduces the cooldown of your Strangulate by 20 sec.');
INSERT INTO `spelltext_en` VALUES (58725, 'Increases the total armor granted by Unbreakable Armor to 30%.');
INSERT INTO `spelltext_en` VALUES (58726, 'Increases the duration of your Vampiric Blood by 5 sec.');
INSERT INTO `spelltext_en` VALUES (58783, 'Everyone sees just how awesome you are.');
INSERT INTO `spelltext_en` VALUES (58856, 'Attempt to reanimate Crusader Olakin Sainrith. Requires you to be standing near the Sanctum of Reanimation Slab, and have a Spool of Thread and the Doctor\'s Cleaver. (10 sec. cooldown)');
INSERT INTO `spelltext_en` VALUES (58886, 'Restores 18480 health over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you aren\'t real sure what will happen.');
INSERT INTO `spelltext_en` VALUES (58901, 'Chance on melee and ranged critical strike to increase your haste rating by 410 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (58933, 'Infused with the spirit of Midsummer.');
INSERT INTO `spelltext_en` VALUES (58983, 'Summons and dismisses your Big Blizzard Bear. This mount changes depending on your Riding skill.');
INSERT INTO `spelltext_en` VALUES (59036, 'Assembles Armored Soldier Dummy in the Broken Front.');
INSERT INTO `spelltext_en` VALUES (59043, 'You gain an additional 155 armor penetration rating for 10 sec. This effect stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (59070, 'Combine 5 Broken Noggenfogger Elixir into a Noggenfogger Elixir.');
INSERT INTO `spelltext_en` VALUES (59090, 'Feed your Non-Combat Pet a snack.');
INSERT INTO `spelltext_en` VALUES (59125, 'Throw this coin back into the Dalaran fountain.');
INSERT INTO `spelltext_en` VALUES (59191, 'Increases your stats by 10 for 1 min.');
INSERT INTO `spelltext_en` VALUES (59195, 'Heal you for 270 to 330.');
INSERT INTO `spelltext_en` VALUES (59197, 'Breathe fire on enemies in front of you, dealing 278 to 322 Fire damage.');
INSERT INTO `spelltext_en` VALUES (59198, 'Restores 315 to 385 mana.');
INSERT INTO `spelltext_en` VALUES (59199, 'Shocks an enemy for 12 to 800 Nature damage.');
INSERT INTO `spelltext_en` VALUES (59202, 'Increases your dodge rating by 200 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (59218, 'Reduces the cooldown of your Dash ability by 20%.');
INSERT INTO `spelltext_en` VALUES (59227, 'Restores 18480 health over 30 sec. If you spend at least 10 seconds eating you will become well fed and gain 40 dodge rating for 1 hour.');
INSERT INTO `spelltext_en` VALUES (59250, 'Right Click to summon and dismiss a Giant Sewer Rat');
INSERT INTO `spelltext_en` VALUES (59287, 'Your Ghost Wolf form regenerates an additional 1% of your maximum health every 5 sec.');
INSERT INTO `spelltext_en` VALUES (59311, 'Increases the radius of your Pestilence effect by 5 yards.');
INSERT INTO `spelltext_en` VALUES (59312, 'Increases the radius of effect on Corpse Explosion by 5 yards.');
INSERT INTO `spelltext_en` VALUES (59313, 'Your Raise Dead spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (59317, 'Teleports the caster to and from the spires atop the Violet Citadel. This spell only works in the City of Dalaran.');
INSERT INTO `spelltext_en` VALUES (59328, 'Your Rune Tap heals yourself for an additional 10% of the effect, and also heals your party for 10% of their maximum health.');
INSERT INTO `spelltext_en` VALUES (59333, 'Your Blood Strike causes an additional 20% damage to snared targets.');
INSERT INTO `spelltext_en` VALUES (59337, 'Increases your Death Strike\'s damage by 1% for every 1 runic power you currently have (up to a maximum of 25%). The runic power is not consumed by this effect.');
INSERT INTO `spelltext_en` VALUES (59345, 'Your melee and ranged strikes have a chance to increase your expertise rating by 258 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (59385, 'Allows you to rename your pet.');
INSERT INTO `spelltext_en` VALUES (59390, 'You sometimes find additional cloth from Northrend humanoids.');
INSERT INTO `spelltext_en` VALUES (59403, 'Allows opening of locks that require up to 400 lockpicking skill. The skeleton key is consumed in the process.');
INSERT INTO `spelltext_en` VALUES (59404, 'Allows opening of locks that require up to 375 lockpicking skill. The skeleton key is consumed in the process.');
INSERT INTO `spelltext_en` VALUES (59427, 'Reduces the cooldown of your Holy Wrath spell by 15 sec.');
INSERT INTO `spelltext_en` VALUES (59428, 'Increases the damage done by Seal of Righteousness by 10%.');
INSERT INTO `spelltext_en` VALUES (59429, 'Your Seal of Vengeance or Seal of Corruption also grants 10 expertise while active.');
INSERT INTO `spelltext_en` VALUES (59565, 'Uses Chilled Abomination Guts to create a Reanimated Abomination that will obey your command for a short time.');
INSERT INTO `spelltext_en` VALUES (59567, 'Summons and dismisses a rideable Azure Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59568, 'Summons and dismisses a rideable Blue Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59569, 'Summons and dismisses a rideable Bronze Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59570, 'Summons and dismisses a rideable Red Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59571, 'Summons and dismisses a rideable Twilight Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59619, 'Permanently enchant a melee weapon to increase critical strike and hit rating by 25. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (59621, 'Permanently enchant a melee weapon to sometimes increase your attack power by 400, but at the cost of reduced armor. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (59625, 'Permanently enchant a melee weapon to cause your harmful spells to sometimes increase haste rating by 250. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (59640, 'You sure about this? This elixir only works in the City of Dalaran.');
INSERT INTO `spelltext_en` VALUES (59648, 'Squeezes the spinal fluid from a Pustulant Horror\'s spine.');
INSERT INTO `spelltext_en` VALUES (59650, 'Summons and dismisses a rideable Black Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59655, 'Pours Pustulant Spinal Fluid into a batch of Plague.');
INSERT INTO `spelltext_en` VALUES (59657, 'Increases spell power by 281 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (59658, 'Increases attack power by 432 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (59731, 'Fishing skill increased by 30.');
INSERT INTO `spelltext_en` VALUES (59755, 'Increases damage by 5% and movement speed by 5%. Lasts 30 mins. Can only be used in Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (59757, 'Increases dodge rating by 300 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (59771, 'Permanently adds 40 attack power and 15 resilience rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59773, 'Permanently adds 23 spell power and 15 resilience rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59776, 'Grants a chance to deal poison damage and increases movement speed by 5%. Lasts 30 mins. Can only be used in Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (59777, 'Permanently adds 50 attack power and 20 resilience rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59784, 'Permanently adds 29 spell power and 20 resilience rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59785, 'Summons and dismisses a rideable Black War Mammoth. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (59787, 'Restores Mana, Rage, Energy, or Runic Power when you kill a target that grants honor or experience.');
INSERT INTO `spelltext_en` VALUES (59788, 'Summons and dismisses a rideable Black War Mammoth. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (59791, 'Summons and dismisses a rideable Wooly Mammoth. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (59793, 'Summons and dismisses a rideable Wooly Mammoth. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (59797, 'Summons and dismisses a rideable Ice Mammoth. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (59799, 'Summons and dismisses a rideable Ice Mammoth. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (59818, 'Upon killing a creature that grants you experience, you grow furious, increasing your chance to critically strike for the next 10 seconds.');
INSERT INTO `spelltext_en` VALUES (59830, 'Grants an extra attack on your next swing.');
INSERT INTO `spelltext_en` VALUES (59906, 'Heals you for 2% of your maximum health whenever you kill a target that yields experience or honor.');
INSERT INTO `spelltext_en` VALUES (59915, 'Restores 2% of your maximum mana whenever you kill a target that yields experience or honor.');
INSERT INTO `spelltext_en` VALUES (59925, 'Construct a barricade near an Ebon Blade Marker in the Valley of the Fallen Heroes (10 sec. cooldown)');
INSERT INTO `spelltext_en` VALUES (59926, 'Combine 5 borean leather scraps to create a piece of borean leather.');
INSERT INTO `spelltext_en` VALUES (59927, 'Permanently adds 18 spell power and 10 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59928, 'Permanently adds 18 spell power and 5 mana per 5 seconds to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59929, 'Permanently adds 30 attack power and 10 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59932, 'Permanently adds 15 dodge rating and 10 defense rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59934, 'Permanently adds 40 attack power and 15 critical strike rating to shoulder armor.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59936, 'Permanently adds 24 spell power and 8 mana per 5 seconds to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59937, 'Permanently adds 24 spell power and 15 critical strike rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59941, 'Permanently adds 20 dodge rating and 15 defense rating to shoulder armor.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59944, 'Permanently adds 25 Frost resist and 30 Stamina to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59945, 'Permanently adds 25 Nature resist and 30 Stamina to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59946, 'Permanently adds 25 Shadow resist and 30 Stamina to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59947, 'Permanently adds 25 Arcane resist and 30 Stamina to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59948, 'Permanently adds 25 Fire resist and 30 Stamina to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59953, 'Combine the Ace through Five of Mages to complete the set.');
INSERT INTO `spelltext_en` VALUES (59954, 'Permanently adds 50 attack power and 20 critical strike rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59955, 'Permanently adds 37 Stamina and 20 defense rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59956, 'Combine the Ace through Five of Mages to complete the set.');
INSERT INTO `spelltext_en` VALUES (59957, 'Combine the Ace through Five of Mages to complete the set.');
INSERT INTO `spelltext_en` VALUES (59958, 'Combine the Ace through Five of Mages to complete the set.');
INSERT INTO `spelltext_en` VALUES (59959, 'Combine the Ace through Five of Mages to complete the set.');
INSERT INTO `spelltext_en` VALUES (59960, 'Permanently adds 30 spell power and 10 mana per 5 seconds to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59961, 'Summons and dismisses a rideable Red Proto-Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59962, 'Combine the Ace through Five of Demons to complete the set.');
INSERT INTO `spelltext_en` VALUES (59964, 'Combine the Ace through Five of Demons to complete the set.');
INSERT INTO `spelltext_en` VALUES (59966, 'Combine the Ace through Five of Demons to complete the set.');
INSERT INTO `spelltext_en` VALUES (59967, 'Combine the Ace through Five of Demons to complete the set.');
INSERT INTO `spelltext_en` VALUES (59968, 'Combine the Ace through Five of Demons to complete the set.');
INSERT INTO `spelltext_en` VALUES (59970, 'Permanently adds 30 spell power and 20 critical strike rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (59976, 'Summons and dismisses a rideable Black Proto-Drake. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (59996, 'Summons and dismisses a rideable Blue Proto-Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (60002, 'Summons and dismisses a rideable Time-Lost Proto-Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (60021, 'Summons and dismisses a rideable Plagued Proto-Drake. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (60024, 'Summons and dismisses a rideable Violet Proto-Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (60025, 'Summons and dismisses a rideable Albino Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (60036, 'Set off the rune near Grimkor\'s Orb to get the attention of Grimkor the Wicked.');
INSERT INTO `spelltext_en` VALUES (60054, 'Increases dodge rating by 335 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60060, 'Increases your Spirit by 50 for 1 min.');
INSERT INTO `spelltext_en` VALUES (60061, 'Your direct healing and heal over time spells have a chance to increase your spell haste rating by 320 for 6 secs.');
INSERT INTO `spelltext_en` VALUES (60063, 'Your harmful spells have a chance to increase your spell power by 590 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60066, 'Chance on critical hit to increase your attack power by 300 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (60079, 'Fires a heat seeking missile at a targeted Skybreaker Recon Fighter. (5 sec. cooldown, 100 yard range)');
INSERT INTO `spelltext_en` VALUES (60100, 'Fire a poisoned dart at an Orgrim\'s Hammer Scout. (5 sec. cooldown, 40 yard range)');
INSERT INTO `spelltext_en` VALUES (60106, 'The aged spices make the target smell great.');
INSERT INTO `spelltext_en` VALUES (60114, 'Summons and dismisses a rideable armored brown bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (60116, 'Summons and dismisses a rideable armored brown bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (60118, 'Summons and dismisses a rideable black war bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (60119, 'Summons and dismisses a rideable black war bear. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (60122, 'Reduces the target\'s size by 50% turning them into a baby.');
INSERT INTO `spelltext_en` VALUES (60130, 'Increases the critical strike chance of your Plague Strike by 10%.');
INSERT INTO `spelltext_en` VALUES (60132, 'Your Obliterate, Scourge Strike, and Death Strike generate an additional 5 Runic Power when used.');
INSERT INTO `spelltext_en` VALUES (60133, 'Increases the duration of your Icebound Fortitude by 3 seconds.');
INSERT INTO `spelltext_en` VALUES (60134, 'Increases the critical strike chance of your Obliterate, Scourge Strike, and Death Strike abilities by 5%.');
INSERT INTO `spelltext_en` VALUES (60135, 'The cost of your Lifebloom is reduced by 5%.');
INSERT INTO `spelltext_en` VALUES (60137, 'Your Nourish heals an additional 5% for each of your heal over time effects present on the target.');
INSERT INTO `spelltext_en` VALUES (60138, 'Your Insect Swarm deals an additional 10% damage.');
INSERT INTO `spelltext_en` VALUES (60139, 'Your Wrath and Starfire spells gain an additional 5% critical strike chance.');
INSERT INTO `spelltext_en` VALUES (60141, 'Your Rip lasts for an additional 4 seconds, and your Lacerate deals an additional 5% damage.');
INSERT INTO `spelltext_en` VALUES (60142, 'Increases the duration of Barkskin by 3 seconds and decreases the cooldown of Tiger\'s Fury by 3 seconds.');
INSERT INTO `spelltext_en` VALUES (60143, 'Your pet deals an additional 5% damage.');
INSERT INTO `spelltext_en` VALUES (60144, 'Your ranged attack speed is increased by 20% while Aspect of the Viper is active.');
INSERT INTO `spelltext_en` VALUES (60146, 'Your offensive spells gain an additional 5% increased critical strike bonus damage.');
INSERT INTO `spelltext_en` VALUES (60147, 'Your Holy Shock gains an additional 10% chance to critically strike.');
INSERT INTO `spelltext_en` VALUES (60148, 'The cost of your Holy Light is reduced by 5%.');
INSERT INTO `spelltext_en` VALUES (60149, 'Increases the damage dealt by your Hammer of the Righteous by 10%.');
INSERT INTO `spelltext_en` VALUES (60150, 'Increases the duration of your Divine Shield and Divine Protection by 3 seconds.');
INSERT INTO `spelltext_en` VALUES (60152, 'Increases the damage dealt by your Divine Storm by 10%.');
INSERT INTO `spelltext_en` VALUES (60153, 'Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.');
INSERT INTO `spelltext_en` VALUES (60154, 'Your Prayer of Mending will jump an additional time.');
INSERT INTO `spelltext_en` VALUES (60155, 'The cost of your Greater Heal is reduced by 5%.');
INSERT INTO `spelltext_en` VALUES (60156, 'The mana cost of your Mind Blast is reduced by 10%.');
INSERT INTO `spelltext_en` VALUES (60157, 'Your Shadow Word: Death has an additional 10% chance to critically strike.');
INSERT INTO `spelltext_en` VALUES (60162, 'Increases the damage dealt by your Rupture by 10%.');
INSERT INTO `spelltext_en` VALUES (60163, 'Reduces the Energy cost of your Combo Moves by 5%.');
INSERT INTO `spelltext_en` VALUES (60164, 'Your Lightning Bolt costs 5% less mana.');
INSERT INTO `spelltext_en` VALUES (60165, 'The bonus critical strike damage of your Lava Burst is increased by 10%.');
INSERT INTO `spelltext_en` VALUES (60166, 'Your Water Shield is 10% stronger.');
INSERT INTO `spelltext_en` VALUES (60167, 'Increases the healing done by your Chain Heal and Healing Wave by 5%.');
INSERT INTO `spelltext_en` VALUES (60168, 'Your Lightning Shield damage is increased by 10%.');
INSERT INTO `spelltext_en` VALUES (60169, 'Your Flurry effect provides an additional 5% melee haste.');
INSERT INTO `spelltext_en` VALUES (60170, 'Your Corruption and Immolate periodic effects have a chance to increase the critical strike chance of your next Shadow Bolt or Incinerate by 10% for the next 10 sec.');
INSERT INTO `spelltext_en` VALUES (60172, 'Casting Life Tap grants you an additional 300 spirit for 10 seconds.');
INSERT INTO `spelltext_en` VALUES (60173, 'Increases the damage of your Shield Slam by 10%.');
INSERT INTO `spelltext_en` VALUES (60174, 'Increases the damage of your Slam by 10%.');
INSERT INTO `spelltext_en` VALUES (60175, 'Increases the duration of your Shield Wall by 3 seconds.');
INSERT INTO `spelltext_en` VALUES (60176, 'Your Bleed periodic effects have a chance to make your next ability cost 5 less rage.');
INSERT INTO `spelltext_en` VALUES (60180, 'Increases maximum health by 3025 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (60214, 'Increases armor by 3570 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60215, 'Increases the block value of your shield by 440 for 40 sec.');
INSERT INTO `spelltext_en` VALUES (60221, 'When struck in combat has a chance of shielding you in a protective barrier which will reduce damage from each attack by 140. Lasts 10 secs.');
INSERT INTO `spelltext_en` VALUES (60245, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60246, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60247, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60248, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60249, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60250, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60251, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60252, 'Combine the Ace through Eight of Prisms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60255, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60256, 'Collects a sample from the cultists\' cauldrons on Aldur\'thar.');
INSERT INTO `spelltext_en` VALUES (60257, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60258, 'Increases parry rating by 375 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60259, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60260, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60261, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60262, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60263, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60264, 'Combine the Ace through Eight of Nobles to complete the set.');
INSERT INTO `spelltext_en` VALUES (60265, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60268, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60269, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60270, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60271, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60272, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60273, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60274, 'Combine the Ace through Eight of Chaos to complete the set.');
INSERT INTO `spelltext_en` VALUES (60276, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60277, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60278, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60279, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60280, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60281, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60282, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60283, 'Combine the Ace through Eight of Undeath to complete the set.');
INSERT INTO `spelltext_en` VALUES (60286, 'Increases dodge by 455 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60299, 'Increases your armor penetration rating by 291 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60301, 'Your melee and ranged attacks have a chance to increase your haste rating by 444 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60304, 'Combines 10 Tainted Essences to create a Writhing Mass.');
INSERT INTO `spelltext_en` VALUES (60305, 'Increases attack power by 670 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60306, 'Your melee and ranged attacks have a chance to burn your enemy, dealing 1024 to 1536 fire damage.');
INSERT INTO `spelltext_en` VALUES (60310, 'Throws a Writhing Mass into a cultist\'s cauldron in Aldur\'thar.');
INSERT INTO `spelltext_en` VALUES (60311, 'Allows the gathering of Tainted Essence from dead cultists in Aldur\'thar.');
INSERT INTO `spelltext_en` VALUES (60313, 'Each time you deal melee or ranged damage to an opponent, you gain 16 attack power for the next 10 sec, stacking up to 20 times.');
INSERT INTO `spelltext_en` VALUES (60317, 'Your melee and ranged attacks have a chance to increase your haste rating by 125 for 13 sec.');
INSERT INTO `spelltext_en` VALUES (60319, 'Increases your haste rating by 491 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60320, 'Returns you to <Home>. Results are unpredictable beyond level 70.');
INSERT INTO `spelltext_en` VALUES (60321, 'Returns you to <Home>. Results are unpredictable beyond level 80.');
INSERT INTO `spelltext_en` VALUES (60340, 'Increases your Hit Rating by 45 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (60341, 'Increases your Critical Rating by 45 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (60343, 'Increases your Defense Rating by 45 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (60344, 'Increases your expertise rating by 45 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (60345, 'Increases your Armor Penetration Rating by 45 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (60346, 'Increases your Haste Rating by 45 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (60347, 'Increases your Intellect by 45 for 1 hour. Guardian Elixir.');
INSERT INTO `spelltext_en` VALUES (60358, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60359, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60360, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60361, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60362, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60363, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60364, 'Combine the Ace through Eight of Beasts to complete the set.');
INSERT INTO `spelltext_en` VALUES (60368, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60369, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60370, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60371, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60372, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60373, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60374, 'Combine the Ace through Eight of Elementals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60375, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60376, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60377, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60378, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60379, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60380, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60381, 'Combine the Ace through Eight of Portals to complete the set.');
INSERT INTO `spelltext_en` VALUES (60382, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60383, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60384, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60385, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60386, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60387, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60388, 'Combine the Ace through Eight of Warlords to complete the set.');
INSERT INTO `spelltext_en` VALUES (60389, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60390, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60391, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60392, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60393, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60394, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60395, 'Combine the Ace through Eight of Blessings to complete the set.');
INSERT INTO `spelltext_en` VALUES (60397, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60398, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60399, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60400, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60401, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60402, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60404, 'Combine the Ace through Eight of Furies to complete the set.');
INSERT INTO `spelltext_en` VALUES (60408, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60409, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60410, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60411, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60412, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60413, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60414, 'Combine the Ace through Eight of Lunacy to complete the set.');
INSERT INTO `spelltext_en` VALUES (60415, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60416, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60417, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60418, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60419, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60420, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60421, 'Combine the Ace through Eight of Storms to complete the set.');
INSERT INTO `spelltext_en` VALUES (60424, 'Rides and parks a rockin\' Mekgineer\'s Chopper. This is a very fast set of wheels.');
INSERT INTO `spelltext_en` VALUES (60428, 'Dissolve the remains of a Skeletal Reaver. (30 yard range)');
INSERT INTO `spelltext_en` VALUES (60436, 'Your melee and ranged attacks have a chance to increase your armor penetration rating by 612 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60439, 'Increases attack power by 670 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60442, 'Your melee and ranged attacks have a chance to strike your enemy, dealing 1504 to 2256 arcane damage.');
INSERT INTO `spelltext_en` VALUES (60458, 'Toss your luck!');
INSERT INTO `spelltext_en` VALUES (60460, 'Your Raise Dead spell no longer requires a reagent.');
INSERT INTO `spelltext_en` VALUES (60471, 'Increases your haste rating by 256 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60473, 'Your damaging and healing spells have a chance to increase your spell power by 512 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60480, 'Increases spell power by 346 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60482, 'Your harmful spells have a chance to strike your enemy, dealing 1168 to 1752 shadow damage.');
INSERT INTO `spelltext_en` VALUES (60485, 'Each time you cast a damaging or healing spell you gain 20 spell power for the next 10 sec, stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (60487, 'Each time one of your spells deals periodic damage, there is a chance 788 to 1312 additional damage will be dealt.');
INSERT INTO `spelltext_en` VALUES (60490, 'Your spells have a chance to increase your haste rating by 505 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (60493, 'Your spells have a chance to increase your spell power by 765 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60510, 'Your healing spells have a chance to make your next heal cast within 15 sec cost 800 less mana.');
INSERT INTO `spelltext_en` VALUES (60517, 'For the next 20 sec, your direct heals increase healing received by their target by up to 58. This effect lasts 10 sec and stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (60519, 'Each time you cast a damaging or healing spell, there is chance you will gain up to 220 mana per 5 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (60521, 'Increases spell power by 346 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60524, 'Each time you cast a spell you gain 18 Spirit for the next 10 sec, stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (60526, 'Instantly heal your current friendly target for 2710.');
INSERT INTO `spelltext_en` VALUES (60527, 'Increases your Spirit by 336 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (60528, 'Siphons Dark Matter from the corpse of an Enslaved Minion in Aldur\'thar.');
INSERT INTO `spelltext_en` VALUES (60529, 'Your direct healing spells have a chance to place a heal over time on your target, healing 3572 over 12 sec.');
INSERT INTO `spelltext_en` VALUES (60535, 'Turn on the lights of Dalaran.');
INSERT INTO `spelltext_en` VALUES (60537, 'Your spell critical strikes have a chance to restore 900 mana.');
INSERT INTO `spelltext_en` VALUES (60543, 'Your Lava Lash ability also grants you 94 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60546, 'Your Lava Lash ability also grants you 106 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60548, 'Your Lava Lash ability also grants you 120 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60550, 'Your Lava Lash ability also grants you 144 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60552, 'Your Lava Lash ability also grants you 172 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60554, 'Your Lava Lash ability also grants you 204 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60556, 'Increases spell power of Lesser Healing Wave by 204.');
INSERT INTO `spelltext_en` VALUES (60557, 'Increases spell power of Lesser Healing Wave by 236.');
INSERT INTO `spelltext_en` VALUES (60558, 'Increases spell power of Lesser Healing Wave by 267.');
INSERT INTO `spelltext_en` VALUES (60559, 'Increases spell power of Lesser Healing Wave by 320.');
INSERT INTO `spelltext_en` VALUES (60560, 'Increases spell power of Lesser Healing Wave by 404.');
INSERT INTO `spelltext_en` VALUES (60562, 'Increases spell power of Lesser Healing Wave by 459.');
INSERT INTO `spelltext_en` VALUES (60564, 'Your Shock spells grant 52 spell power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60571, 'Your Shock spells grant 62 spell power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60572, 'Your Shock spells grant 70 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60573, 'Your Shock spells grant 84 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60574, 'Your Shock spells grant 101 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60575, 'Your Shock spells grant 119 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60577, 'Your Crusader Strike ability also grants you 94 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60581, 'Permanently attach frosthide armor onto pants to increase Stamina by 55 and Agility by 22.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (60582, 'Permanently attach icescale armor onto pants to increase attack power by 75 and critical strike rating by 22.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (60606, 'Permanently enchant boots to increase attack power by 24. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60609, 'Permanently enchant a cloak to increase haste rating by 15. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60616, 'Permanently enchant bracers to increase attack power by 38. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60621, 'Permanently enchant a melee weapon to increase attack power by 50. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60623, 'Permanently enchant boots to increase critical strike and hit rating by 12. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60632, 'Your Crusader Strike ability also grants you 106 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60633, 'Your Crusader Strike ability also grants you 120 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60634, 'Your Crusader Strike ability also grants you 144 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60635, 'Your Crusader Strike ability also grants you 172 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60636, 'Your Crusader Strike ability also grants you 204 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60653, 'Permanently enchant a shield to increase Intellect by 25. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60656, 'Increases spell power of Flash of Light by 293.');
INSERT INTO `spelltext_en` VALUES (60659, 'Increases spell power of Flash of Light by 331.');
INSERT INTO `spelltext_en` VALUES (60661, 'Increases spell power of Flash of Light by 375.');
INSERT INTO `spelltext_en` VALUES (60662, 'Increases spell power of Flash of Light by 436.');
INSERT INTO `spelltext_en` VALUES (60663, 'Permanently enchant a cloak to increase Agility by 22. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60664, 'Increases spell power of Flash of Light by 510.');
INSERT INTO `spelltext_en` VALUES (60668, 'Permanently enchant gloves to increase attack power by 44. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60679, 'Combines the three pages of the cultists\' research to create the Cult of the Damned Thesis.');
INSERT INTO `spelltext_en` VALUES (60680, 'Combines the three pages of the cultists\' research to create the Cult of the Damned Thesis.');
INSERT INTO `spelltext_en` VALUES (60681, 'Combines the three pages of the cultists\' research to create the Cult of the Damned Thesis.');
INSERT INTO `spelltext_en` VALUES (60685, 'Your Plague Strike ability also grants you 106 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60686, 'Your Plague Strike ability also grants you 120 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60687, 'Your Plague Strike ability also grants you 144 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60688, 'Your Plague Strike ability also grants you 172 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60690, 'Your Plague Strike ability also grants you 204 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60691, 'Permanently enchant a two-handed weapon to increase attack power by 110. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60692, 'Permanently enchant chest armor to increase all stats by 10. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60693, 'Your Mangle ability also grants you 94 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60695, 'Your Mangle ability also grants you 106 attack power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60696, 'Your Mangle ability also grants you 120 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60698, 'Your Mangle ability also grants you 144 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60700, 'Your Mangle ability also grants you 172 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60701, 'Your Mangle ability also grants you 204 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60707, 'Permanently enchant a melee weapon to increase attack power by 65. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60710, 'Your Moonfire spell grants 52 spell power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60714, 'Permanently enchant a melee weapon to increase spell power by 63. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60717, 'Your Moonfire spell grants 62 spell power for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60719, 'Your Moonfire spell grants 70 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60722, 'Your Moonfire spell grants 84 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60724, 'Your Moonfire spell grants 101 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60726, 'Your Moonfire spell grants 119 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60733, 'Increases the spell power of the final healing value of your Lifebloom by 188.');
INSERT INTO `spelltext_en` VALUES (60736, 'Increases the spell power of the final healing value of your Lifebloom by 217.');
INSERT INTO `spelltext_en` VALUES (60738, 'Increases the spell power of the final healing value of your Lifebloom by 246.');
INSERT INTO `spelltext_en` VALUES (60739, 'Increases the spell power of the final healing value of your Lifebloom by 294.');
INSERT INTO `spelltext_en` VALUES (60740, 'Increases the spell power of the final healing value of your Lifebloom by 376.');
INSERT INTO `spelltext_en` VALUES (60741, 'Increases the spell power of the final healing value of your Lifebloom by 448.');
INSERT INTO `spelltext_en` VALUES (60763, 'Permanently enchant boots to increase attack power by 32. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60764, 'Increases the attack power bonus on Windfury Weapon attacks by 212.');
INSERT INTO `spelltext_en` VALUES (60765, 'Your Storm Strike ability also grants you 60 haste rating for 6 sec.');
INSERT INTO `spelltext_en` VALUES (60767, 'Permanently enchant bracers to increase spell power by 30. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (60768, 'Reduces the base mana cost of Chain Heal by 78.');
INSERT INTO `spelltext_en` VALUES (60769, 'Reduces the mana cost of Healing Wave by 79.');
INSERT INTO `spelltext_en` VALUES (60770, 'Your Lightning Bolt spell has a chance to grant 196 haste rating for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60772, 'Increases spell power of Chain Lightning and Lightning Bolt by 165.');
INSERT INTO `spelltext_en` VALUES (60773, 'Increases the damage dealt by Shred by 203.');
INSERT INTO `spelltext_en` VALUES (60774, 'Increases periodic damage done by Rip by 21 per combo point.');
INSERT INTO `spelltext_en` VALUES (60775, 'Increases the spell power of your Starfire spell by 165.');
INSERT INTO `spelltext_en` VALUES (60777, 'Increases the damage dealt by Wrath by 70.');
INSERT INTO `spelltext_en` VALUES (60779, 'Increases the spell power on the periodic portion of your Lifebloom by 125.');
INSERT INTO `spelltext_en` VALUES (60780, 'Reduces the mana cost of Rejuvenation by 106.');
INSERT INTO `spelltext_en` VALUES (60787, 'Reduces the mana cost of Holy Light by 113.');
INSERT INTO `spelltext_en` VALUES (60792, 'Increases spell power of Holy Light by 141.');
INSERT INTO `spelltext_en` VALUES (60794, 'Your Judgement ability also increases your shield block value by 352 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60797, 'Increases the spell power of your Consecration spell by 141.');
INSERT INTO `spelltext_en` VALUES (60800, 'Increases spell power of Flash of Light by 89.');
INSERT INTO `spelltext_en` VALUES (60804, 'Reduces the base mana cost of your Seal spells by 22.');
INSERT INTO `spelltext_en` VALUES (60808, 'Places the Hourglass of Eternity on the ground at the Bronze Dragonshrine. Cannot be placed within 40 yards of another hourglass.');
INSERT INTO `spelltext_en` VALUES (60818, 'Unleashing your Seal of Command using a Judgement spell has a chance to grant 173 critical strike rating for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60820, 'Combines Alumeth\'s Heart, Skull, Scepter and Robes to create Alumeth\'s Remains.');
INSERT INTO `spelltext_en` VALUES (60821, 'Increases the damage dealt by Crusader Strike by 78.75.');
INSERT INTO `spelltext_en` VALUES (60822, 'Combines Alumeth\'s Heart, Skull, Scepter and Robes to create Alumeth\'s Remains.');
INSERT INTO `spelltext_en` VALUES (60823, 'Combines Alumeth\'s Heart, Skull, Scepter and Robes to create Alumeth\'s Remains.');
INSERT INTO `spelltext_en` VALUES (60824, 'Combines Alumeth\'s Heart, Skull, Scepter and Robes to create Alumeth\'s Remains.');
INSERT INTO `spelltext_en` VALUES (60826, 'Your Blood Strike and Heart Strikes have a chance to grant 173 critical strike rating for 10 sec.');
INSERT INTO `spelltext_en` VALUES (60831, 'Awakens Alumeth the Ascended.');
INSERT INTO `spelltext_en` VALUES (60832, 'Unleash your inner ape!');
INSERT INTO `spelltext_en` VALUES (60837, 'Increases the base damage dealt by your Scourge Strike by 189, your Obliterate by 336, and your Death Strike by 315.');
INSERT INTO `spelltext_en` VALUES (60838, 'Make sure you have 20 yards of smooth racing space!');
INSERT INTO `spelltext_en` VALUES (60871, 'Blasts the enemy for 70 Fire damage.');
INSERT INTO `spelltext_en` VALUES (60875, 'Creates 200 Saronite Razorheads.');
INSERT INTO `spelltext_en` VALUES (60879, 'Creates 200 Mammoth Cutters.');
INSERT INTO `spelltext_en` VALUES (60983, 'Scares a Cavedweller Worg for 10 seconds.');
INSERT INTO `spelltext_en` VALUES (60986, 'Heal self for 1425 to 1575 damage.');
INSERT INTO `spelltext_en` VALUES (61003, 'Opens the Normal difficulty version of The Focusing Iris within The Eye of Eternity.');
INSERT INTO `spelltext_en` VALUES (61004, 'Opens the Normal and Heroic difficulty versions of The Focusing Iris within The Eye of Eternity.');
INSERT INTO `spelltext_en` VALUES (61021, 'Make sure you have 20 yards of smooth racing space!');
INSERT INTO `spelltext_en` VALUES (61022, 'Make sure you have 20 yards of smooth racing space!');
INSERT INTO `spelltext_en` VALUES (61024, 'Increases the target\'s Intellect by 60 for 30 min.');
INSERT INTO `spelltext_en` VALUES (61031, 'Right Click to set down your Toy Train Set.');
INSERT INTO `spelltext_en` VALUES (61033, 'Right Click to set out a wheel of Aged Dalaran Sharp that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61035, 'Right Click to set out a wheel of Dalaran Swiss that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61038, 'Right Click to set out a loaf of Fresh Dalaran Bread that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61045, 'Right Click to set out a bottle of Dalaran Red that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61047, 'Right Click to set out a bottle of Dalaran White that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61050, 'Right Click to set out a bottle of Aged Dalaran Red that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61052, 'Right Click to set out a cask of Dalaran White that serves up to twenty-five party members.');
INSERT INTO `spelltext_en` VALUES (61053, 'Right Click to set out a cask of Dalaran Red that serves up to twenty-five party members.');
INSERT INTO `spelltext_en` VALUES (61057, 'Right Click to set out a cask of Aged Dalaran Red that serves up to twenty-five party members.');
INSERT INTO `spelltext_en` VALUES (61062, 'You gain 25% more mana when you use a mana gem. In addition, using a mana gem grants you 225 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (61063, 'Right Click to set out a bottle of Peaked Dalaran Red that serves up to five party members.');
INSERT INTO `spelltext_en` VALUES (61067, 'Right Click to set out a cask of Peaked Dalaran Red that serves up to twenty-five party members.');
INSERT INTO `spelltext_en` VALUES (61122, 'Attempt to contact Brann Bronzebeard.');
INSERT INTO `spelltext_en` VALUES (61131, 'Pass yourself as a member of the Cult of the Damned. Looks out of place outside the Cathedral of Darkness.');
INSERT INTO `spelltext_en` VALUES (61206, 'Increases the initial damage dealt by Frostfire Bolt by 2% and its critical strike chance by 2%.');
INSERT INTO `spelltext_en` VALUES (61229, 'Summons and dismisses a rideable Armored Snowy Gryphon mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (61230, 'Summons and dismisses a rideable Armored Blue Wind Rider mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (61247, 'Set up an Intravenous Healing Potion for your party. Restores 15000 health and 12960 mana over 30 sec. Cannot be used in combat.');
INSERT INTO `spelltext_en` VALUES (61249, 'Reduces the Energy cost of your Kick by 10.');
INSERT INTO `spelltext_en` VALUES (61252, 'Reduces the energy cost of your Maim by 15.');
INSERT INTO `spelltext_en` VALUES (61255, 'Reduces the cooldown of your Tranquilizing Shot by 2 seconds.');
INSERT INTO `spelltext_en` VALUES (61256, 'Reduces the cooldown of your Traps by 2 seconds.');
INSERT INTO `spelltext_en` VALUES (61257, 'Whenever you are struck by a movement-impairing effect you will generate 15 runic power over 5 sec.');
INSERT INTO `spelltext_en` VALUES (61271, 'Permanently adds 30 Stamina and 25 resilience rating to a head slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (61294, 'Summons and dismisses a rideable Green Proto-Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (61305, 'Transforms the enemy into a harmless black cat, forcing it to pussyfoot around for up to 50 sec. While wandering, the cat cannot attack or cast spells but will regenerate very quickly. Any damage will transform the target back into its normal form. Only one target can be polymorphed at a time. Only works on Beasts, Humanoids and Critters.');
INSERT INTO `spelltext_en` VALUES (61306, 'Increases your Kirin Tor reputation by 520.');
INSERT INTO `spelltext_en` VALUES (61308, 'Increases your Wyrmrest Accord reputation by 520.');
INSERT INTO `spelltext_en` VALUES (61309, 'Summons and dismisses a Magnificent Flying Carpet. This is a very fast rug. Can only be used in Outland and Northrend. Requires 425 skill in tailoring to ride.');
INSERT INTO `spelltext_en` VALUES (61311, 'Increases your Argent Crusade reputation by 520.');
INSERT INTO `spelltext_en` VALUES (61312, 'Increases your Knights of the Ebon Blade reputation by 520.');
INSERT INTO `spelltext_en` VALUES (61316, 'Infuses all party and raid members with brilliance, increasing their Intellect by 60 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (61318, 'Increases the damage your Lava Lash deals by 25.');
INSERT INTO `spelltext_en` VALUES (61321, 'Increases the base amount healed by your chain heal by 102.');
INSERT INTO `spelltext_en` VALUES (61322, 'Your Holy Shock heals for an additional 69.');
INSERT INTO `spelltext_en` VALUES (61323, 'Your Shield of Righteousness deals an additional 96 damage.');
INSERT INTO `spelltext_en` VALUES (61325, 'Increases the damage dealt by your Lava Burst by 121.');
INSERT INTO `spelltext_en` VALUES (61340, 'Brings out the Wolvar in you!');
INSERT INTO `spelltext_en` VALUES (61348, 'Right Click to summon and dismiss a Tame Tickbird.');
INSERT INTO `spelltext_en` VALUES (61349, 'Right Click to summon and dismiss a Tame White Tickbird.');
INSERT INTO `spelltext_en` VALUES (61350, 'Right Click to summon and dismiss a Proto-Drake Whelp.');
INSERT INTO `spelltext_en` VALUES (61351, 'Right Click to summon and dismiss a Cobra Hatchling.');
INSERT INTO `spelltext_en` VALUES (61357, 'Right Click to summon and dismiss Pengu.');
INSERT INTO `spelltext_en` VALUES (61371, 'Restores 1680 to 2160 health and 400 to 600 mana.');
INSERT INTO `spelltext_en` VALUES (61415, 'Shower a nearby target with a cascade of black petals!');
INSERT INTO `spelltext_en` VALUES (61425, 'Calls forth the Traveler\'s Tundra Mammoth, complete with two buddies! This is a very fast mammoth!');
INSERT INTO `spelltext_en` VALUES (61426, 'Increases Spirit by 184 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (61427, 'Increases haste rating by 208 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (61428, 'Increases spell power by 202 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (61442, 'Summons and dismisses a Swift Mooncloth Carpet. This is a very fast rug. Can only be used in Outland and Northrend. Requires 450 skill in tailoring to ride.');
INSERT INTO `spelltext_en` VALUES (61446, 'Summons and dismisses a Swift Spellfire Carpet. This is a very fast rug. Can only be used in Outland and Northrend. Requires 450 skill in tailoring to ride.');
INSERT INTO `spelltext_en` VALUES (61447, 'Calls forth the Traveler\'s Tundra Mammoth, complete with two buddies! This is a very fast mammoth!');
INSERT INTO `spelltext_en` VALUES (61451, 'Summons and dismisses a Flying Carpet. Can only be used in Outland and Northrend. Requires 300 skill in tailoring to ride.');
INSERT INTO `spelltext_en` VALUES (61465, 'Calls forth the Grand Black War Mammoth! This is a very fast mammoth! Allows two passengers to board that are in the same group as the driver.');
INSERT INTO `spelltext_en` VALUES (61467, 'Calls forth the Grand Black War Mammoth! This is a very fast mammoth! Allows two passengers to board that are in the same group as the driver.');
INSERT INTO `spelltext_en` VALUES (61468, 'Attaches a permanent scope to a bow or gun that increases its damage by 15.\r\n\r\nAttaching this scope to a ranged weapon causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (61469, 'Calls forth the Grand Ice Mammoth! This is a very fast mammoth! Allows two passengers to board that are in the same group as the driver.');
INSERT INTO `spelltext_en` VALUES (61470, 'Calls forth the Grand Ice Mammoth! This is a very fast mammoth! Allows two passengers to board that are in the same group as the driver.');
INSERT INTO `spelltext_en` VALUES (61472, 'Right Click to summon and dismiss your Kirin Tor Familiar');
INSERT INTO `spelltext_en` VALUES (61477, 'Protected from the cold. Your Frost resistance is increased by 20.');
INSERT INTO `spelltext_en` VALUES (61617, 'Increases spell power by 281 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (61618, 'Your melee and ranged strikes have a chance to increase your critical strike rating by 258 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (61620, 'Increases your haste rating by 212 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (61633, 'Increases your spell power by 26.');
INSERT INTO `spelltext_en` VALUES (61700, 'Grants you 2000 honor.');
INSERT INTO `spelltext_en` VALUES (61717, 'Puts a Rabbit costume on targeted party member.');
INSERT INTO `spelltext_en` VALUES (61721, 'Transforms the enemy into a harmless rabbit, forcing it to scamper around for up to 50 sec. While wandering, the rabbit cannot attack or cast spells but will regenerate very quickly. Any damage will transform the target back into its normal form. Only one target can be polymorphed at a time. Only works on Beasts, Humanoids and Critters.');
INSERT INTO `spelltext_en` VALUES (61725, 'Right Click to summon and dismiss your Spring Rabbit.');
INSERT INTO `spelltext_en` VALUES (61755, 'Combine 3 small dream shards into one dream shard.');
INSERT INTO `spelltext_en` VALUES (61773, 'Right Click to summon and dismiss your Plump Turkey.');
INSERT INTO `spelltext_en` VALUES (61776, 'Reduces the cooldown of your Judgements by 1 sec.');
INSERT INTO `spelltext_en` VALUES (61778, 'Increases attack power by 248 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (61781, 'Covers target with turkey feathers.');
INSERT INTO `spelltext_en` VALUES (61810, 'Increases speed by 60% for 10 sec. Only functions during Noblegarden where Brightly Colored Eggs are hidden.');
INSERT INTO `spelltext_en` VALUES (61815, 'Shake your Spring Flowers to place rabbit ears on yourself or someone else.');
INSERT INTO `spelltext_en` VALUES (61818, 'Plant a flower.');
INSERT INTO `spelltext_en` VALUES (61819, 'Transforms a friendly target into a sheep, forcing it to wander around for up to 15 sec. While wandering, the sheep cannot attack or cast spells but will regenerate very quickly. Any damage will transform the target back into its normal form. Only one target can be polymorphed at a time. Only works on Beasts, Humanoids and Critters, and only in Dalaran.');
INSERT INTO `spelltext_en` VALUES (61820, 'Place a Brightly Colored Egg.');
INSERT INTO `spelltext_en` VALUES (61828, 'Restores 18480 health and 12840 mana over 30 sec. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (61855, 'Right Click to summon and dismiss your Baby Blizzard Bear.');
INSERT INTO `spelltext_en` VALUES (61856, 'A red ribbon pet leash.');
INSERT INTO `spelltext_en` VALUES (61874, 'Restores 2% of your health per second for 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (61898, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (61991, 'Right Click to summon and dismiss your little pet fawn.');
INSERT INTO `spelltext_en` VALUES (61992, 'The damage of your Corruption and Immolate spells are increased by 5%.');
INSERT INTO `spelltext_en` VALUES (61996, 'Summons and dismisses a rideable Blue Dragonhawk. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (61997, 'Summons and dismisses a rideable Red Dragonhawk. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (62012, 'Mimics a turkey mating call.');
INSERT INTO `spelltext_en` VALUES (62040, 'Right Click to place a Tiny Green Ragdoll.');
INSERT INTO `spelltext_en` VALUES (62061, 'Your mount will be more festive.');
INSERT INTO `spelltext_en` VALUES (62062, 'Your mount will be more festive.');
INSERT INTO `spelltext_en` VALUES (62088, 'Increases spell power by 183 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (62105, 'Shoot the targeted Frost Leopard or Icepaw Bear to tranquilize them into a light sleep. Cannot be used while in combat or on frost leopards or icepaw bears that are in combat.');
INSERT INTO `spelltext_en` VALUES (62106, 'Increases your melee critical strike rating by 40 while in Cat, Bear, or Dire Bear Form.');
INSERT INTO `spelltext_en` VALUES (62107, 'Increases your spell critical strike rating by 40 while in Moonkin form.');
INSERT INTO `spelltext_en` VALUES (62111, 'Increases your healing done while in Tree of Life Form by 44.');
INSERT INTO `spelltext_en` VALUES (62114, 'Your spell casts have a chance to increase your spell power by 590 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (62115, 'Chance on melee or ranged hit to increase your attack power by 1000 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (62127, 'The mana cost of your Blast Wave spell is reduced by 15%, but it no longer knocks enemies back.');
INSERT INTO `spelltext_en` VALUES (62133, 'Increases the mana you receive from your Thunderstorm spell by 2%, but it no longer knocks enemies back.');
INSERT INTO `spelltext_en` VALUES (62134, 'Reduces the cost of your Typhoon spell by 8% and increases its radius by 10 yards, but it no longer knocks enemies back.');
INSERT INTO `spelltext_en` VALUES (62147, 'Your Icy Touch will also increase your defense rating by 53.');
INSERT INTO `spelltext_en` VALUES (62161, 'Increases the damage done by Starfall by 10%, but decreases its radius by 50%.');
INSERT INTO `spelltext_en` VALUES (62181, 'Spring Tuxedo');
INSERT INTO `spelltext_en` VALUES (62201, 'Permanently attach lightweight titanium plating to a shield, increasing block value by 81 and reducing the duration of Disarm effects by 50%. Does not stack with other similar effects.\r\n\r\nAttaching Titanium Plating to your shield causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (62256, 'Permanently enchant bracers to increase Stamina by 40. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (62257, 'Permanently enchant a melee weapon to increase Stamina by 50. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (62272, 'Lights a signal fire that will summon Keristrasza to your location.');
INSERT INTO `spelltext_en` VALUES (62350, 'This delicacy is best served raw and thus requires no cooking fire.');
INSERT INTO `spelltext_en` VALUES (62352, 'Restores 280 to 360 health.');
INSERT INTO `spelltext_en` VALUES (62353, 'Increases the damage from your Arcane Blast buff by 3%.');
INSERT INTO `spelltext_en` VALUES (62380, 'Increases your resistance to all schools of magic by 50 for 1 hour. Counts as both a Battle and Guardian elixir. This effect persists through death.');
INSERT INTO `spelltext_en` VALUES (62384, 'Permanently adds 30 Stamina and 15 resilience rating to a shoulder slot item.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (62408, 'Make yourself translucent for 5 min.');
INSERT INTO `spelltext_en` VALUES (62447, 'Permanently attach earthen armor onto pants to increase resilience rating by 40 and Stamina by 28.\r\n\r\nEnchanting the item causes it to become soulbound.');
INSERT INTO `spelltext_en` VALUES (62459, 'Your Chains of Ice ability now generates an additional 5 runic power.');
INSERT INTO `spelltext_en` VALUES (62491, 'Right Click to summon and dismiss your Teldrassil Sproutling.');
INSERT INTO `spelltext_en` VALUES (62508, 'Right Click to summon and dismiss your Dun Morogh Cub.');
INSERT INTO `spelltext_en` VALUES (62510, 'Right Click to summon and dismiss your Tirisfal batling.');
INSERT INTO `spelltext_en` VALUES (62513, 'Right Click to summon and dismiss your Durotar scorpion.');
INSERT INTO `spelltext_en` VALUES (62516, 'Right Click to summon and dismiss your Elwynn lamb.');
INSERT INTO `spelltext_en` VALUES (62542, 'Right Click to summon and dismiss your Mulgore hatchling.');
INSERT INTO `spelltext_en` VALUES (62561, 'Right Click to summon and dismiss your strand crawler.');
INSERT INTO `spelltext_en` VALUES (62562, 'Right Click to summon and dismiss your Ammen Vale lashling.');
INSERT INTO `spelltext_en` VALUES (62564, 'Right Click to summon and dismiss your enchanted broom.');
INSERT INTO `spelltext_en` VALUES (62574, 'Apply before kissing Lake Frogs to avoid getting warts.');
INSERT INTO `spelltext_en` VALUES (62609, 'Right Click to summon and dismiss your Argent Crusade squire.');
INSERT INTO `spelltext_en` VALUES (62629, 'Offer 4 Winter Hyacinths as a gift to the Maiden of Drak\'Mar lake. Can only be offered within the Drak\'Mar Offering Circle.');
INSERT INTO `spelltext_en` VALUES (62674, 'Right Click to summon and dismiss your Mechanopeep.');
INSERT INTO `spelltext_en` VALUES (62736, 'Right Click to plant your Stormwind banner.');
INSERT INTO `spelltext_en` VALUES (62737, 'Right Click to plant your Ironforge banner.');
INSERT INTO `spelltext_en` VALUES (62738, 'Right Click to plant your Sen\'jin banner.');
INSERT INTO `spelltext_en` VALUES (62739, 'Right Click to plant your Darnassus banner.');
INSERT INTO `spelltext_en` VALUES (62740, 'Right Click to plant your Exodar banner.');
INSERT INTO `spelltext_en` VALUES (62741, 'Right Click to plant your Gnomeregan banner.');
INSERT INTO `spelltext_en` VALUES (62742, 'Right Click to plant your Orgrimmar banner.');
INSERT INTO `spelltext_en` VALUES (62743, 'Right Click to plant your Undercity banner.');
INSERT INTO `spelltext_en` VALUES (62744, 'Right Click to plant your Silvermoon City banner.');
INSERT INTO `spelltext_en` VALUES (62745, 'Right Click to plant your Thunder Bluff banner.');
INSERT INTO `spelltext_en` VALUES (62746, 'Right Click to summon and dismiss your Argent Crusade gruntling.');
INSERT INTO `spelltext_en` VALUES (62767, 'Use the power of the Everburning Ember to free the Maiden of Winter\'s Breath Lake from the Curse of Ice.');
INSERT INTO `spelltext_en` VALUES (62785, 'Use near the tournament stables to summon your mount.');
INSERT INTO `spelltext_en` VALUES (62786, 'Use near the tournament stables to summon your mount.');
INSERT INTO `spelltext_en` VALUES (62812, 'Combines 30 Fragments of Val\'anyr to form the Shattered Fragments of Val\'anyr.');
INSERT INTO `spelltext_en` VALUES (62857, 'Summons a stationary Sandbox Tiger ride for 3 min.');
INSERT INTO `spelltext_en` VALUES (62948, 'Permanently enchant a staff to increase spell power by 81. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (62949, 'Right Click to set down a wind-up train wrecker.');
INSERT INTO `spelltext_en` VALUES (62959, 'Permanently enchant a staff to increase spell power by 69. Requires a level 60 or higher item.');
INSERT INTO `spelltext_en` VALUES (62973, 'Bonk another sword-holder with your Foam Sword.');
INSERT INTO `spelltext_en` VALUES (62985, 'Right Click to place a Foam Sword Rack.\r\n\r\nFoam Swords disappear if logged out for more than 15 minutes.');
INSERT INTO `spelltext_en` VALUES (62990, 'Chop a standing Crystalsong Oak into Rough Hewn Planks.');
INSERT INTO `spelltext_en` VALUES (63070, 'Reveal the truth about the corpse buried in a nearby grave. The Seer\'s Crystal can only be used near Sir Wendell\'s Grave, Lorien\'s Grave, and Conall\'s Grave.');
INSERT INTO `spelltext_en` VALUES (63124, 'Crack Maloric over the head to incapacitate him while you search him for evidence. Can only be used while standing behind Maloric.');
INSERT INTO `spelltext_en` VALUES (63163, 'Take control of the Black Knight\'s Gryphon, forcing it to show you where the knight trained and prepared for the tournament.');
INSERT INTO `spelltext_en` VALUES (63232, 'Summons and dismisses a rideable Stormwind Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63251, 'Chance on hit to increase your critical strike rating by 328 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (63318, 'Right Click to summon and dismiss Murkimus the Gladiator.');
INSERT INTO `spelltext_en` VALUES (63353, 'Causes your Divine Storm to deal an additional 81 damage.');
INSERT INTO `spelltext_en` VALUES (63381, 'Deploy the goblin chisel next to a Stone Block. Must be within 5 yards of a Stone Block to use. After setting the bomb, get away before it explodes!');
INSERT INTO `spelltext_en` VALUES (63388, 'Increases all statistics by 8% and all ratings by 130.');
INSERT INTO `spelltext_en` VALUES (63604, 'Be the center of attention.');
INSERT INTO `spelltext_en` VALUES (63635, 'Summons and dismisses a rideable Darkspear Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63636, 'Summons and dismisses a rideable Ironforge Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63637, 'Summons and dismisses a rideable Darnassian Nightsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63638, 'Summons and dismisses a rideable Gnomeregan Mechanostrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63639, 'Summons and dismisses a rideable Exodar Elekk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63640, 'Summons and dismisses a rideable Orgrimmar Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63641, 'Summons and dismisses a rideable Thunder Bluff Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63642, 'Summons and dismisses a rideable Silvermoon Hawkstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63643, 'Summons and dismisses a rideable Forsaken Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (63663, 'Use near the tournament stables to summon your mount.');
INSERT INTO `spelltext_en` VALUES (63712, 'Right Click to summon and dismiss your Sen\'jin fetish.');
INSERT INTO `spelltext_en` VALUES (63714, 'Increases the duration of Berserk by 5 sec.');
INSERT INTO `spelltext_en` VALUES (63715, 'Wild Growth can affect 1 additional target.');
INSERT INTO `spelltext_en` VALUES (63717, 'Your Nourish heals an additional 6% for each of your heal over time effects present on the target.');
INSERT INTO `spelltext_en` VALUES (63718, 'Your Savage Roar ability grants an additional 3% bonus damage done.');
INSERT INTO `spelltext_en` VALUES (63729, 'Increases your hit rating by 10 for 1 hour. Battle Elixir.');
INSERT INTO `spelltext_en` VALUES (63739, 'Reduces the cooldown of your Typhoon spell by 3 sec.');
INSERT INTO `spelltext_en` VALUES (63740, 'Reduces the chance you\'ll be critically hit by melee attacks by 25% while Barkskin is active.');
INSERT INTO `spelltext_en` VALUES (63741, 'Reduces the cooldown of Chimera Shot by 1 sec.');
INSERT INTO `spelltext_en` VALUES (63746, 'Permanently enchant boots to increase your hit rating by 5.');
INSERT INTO `spelltext_en` VALUES (63751, 'You feel pretty.');
INSERT INTO `spelltext_en` VALUES (63796, 'Summons and dismisses a rideable mechanical gnome head. This is a very fast construction. This construction can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (63832, 'Increases your Darnassus reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63833, 'Increases your Exodar reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63834, 'Increases your Gnomeregan Exiles reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63835, 'Increases your Ironforge reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63836, 'Increases your Stormwind reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63837, 'Increases your Orgrimmar reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63838, 'Increases your Darkspear Trolls reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63839, 'Increases your Silvermoon City reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63840, 'Increases your Thunder Bluff reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63841, 'Increases your Undercity reputation by 250.');
INSERT INTO `spelltext_en` VALUES (63844, 'Summons and dismisses a rideable Argent Hippogryph mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (63854, 'Increases the critical strike chance of Explosive Shot by 4%.');
INSERT INTO `spelltext_en` VALUES (63855, 'Reduces the cooldown of Kill Shot by 6 sec.');
INSERT INTO `spelltext_en` VALUES (63856, 'The periodic damage from your Explosive Trap can now be critical strikes.');
INSERT INTO `spelltext_en` VALUES (63857, 'Increases the range of Scatter Shot by 3 yards.');
INSERT INTO `spelltext_en` VALUES (63858, 'Reduces damage taken by 20% for 3 sec after using Raptor Strike.');
INSERT INTO `spelltext_en` VALUES (63859, 'Increases the range of Deep Freeze by 10 yards.');
INSERT INTO `spelltext_en` VALUES (63860, 'The periodic damage from your Living Bomb can now be critical strikes.');
INSERT INTO `spelltext_en` VALUES (63862, 'Reduces the mana cost of Arcane Barrage by 20%.');
INSERT INTO `spelltext_en` VALUES (63863, 'Your Mirror Image spell now creates a 4th copy.');
INSERT INTO `spelltext_en` VALUES (63864, 'Increases the amount of damage absorbed by your Ice Barrier by 30%.');
INSERT INTO `spelltext_en` VALUES (63865, 'Increases the duration of Beacon of Light by 30 sec.');
INSERT INTO `spelltext_en` VALUES (63866, 'Your Hammer of the Righteous hits 1 additional target.');
INSERT INTO `spelltext_en` VALUES (63867, 'Your Divine Storm now heals for an additional 15% of the damage it causes.');
INSERT INTO `spelltext_en` VALUES (63868, 'Reduces the mana cost of Shield of Righteousness by 80%.');
INSERT INTO `spelltext_en` VALUES (63869, 'While Divine Plea is active, you take 3% reduced damage from all sources.');
INSERT INTO `spelltext_en` VALUES (63870, 'Reduces the cooldown of Holy Shock by 1 sec.');
INSERT INTO `spelltext_en` VALUES (63871, 'When you cast Hand of Salvation on yourself, it also reduces damage taken by 20%.');
INSERT INTO `spelltext_en` VALUES (63872, 'Reduces the cooldown on Dispersion by 45 sec.');
INSERT INTO `spelltext_en` VALUES (63873, 'If your Guardian Spirit lasts its entire duration without being triggered, the cooldown is reset to 1 min.');
INSERT INTO `spelltext_en` VALUES (63874, 'Reduces the cooldown of Penance by 2 sec.');
INSERT INTO `spelltext_en` VALUES (63875, 'Increases the radius of effect on Mind Sear by 5 yards.');
INSERT INTO `spelltext_en` VALUES (63876, 'Your Hymn of Hope lasts an additional 2 sec.');
INSERT INTO `spelltext_en` VALUES (63877, 'Allows Pain Suppression to be cast while stunned.');
INSERT INTO `spelltext_en` VALUES (63878, 'Increases the bonus damage from Hunger For Blood by 3%.');
INSERT INTO `spelltext_en` VALUES (63879, 'Reduces the cooldown on Killing Spree by 45 sec.');
INSERT INTO `spelltext_en` VALUES (63880, 'Increases the duration of Shadow Dance by 2 sec.');
INSERT INTO `spelltext_en` VALUES (63897, 'Increases the damage done by Fan of Knives by 20%.');
INSERT INTO `spelltext_en` VALUES (63898, 'The bonus damage and threat redirection granted by your Tricks of the Trade ability lasts an additional 4 sec.');
INSERT INTO `spelltext_en` VALUES (63899, 'Reduces the cost of Mutilate by 5 energy.');
INSERT INTO `spelltext_en` VALUES (63901, 'While Cloak of Shadows is active, you take 40% less physical damage.');
INSERT INTO `spelltext_en` VALUES (63902, 'Reduces the cooldown on Thunderstorm by 10 sec.');
INSERT INTO `spelltext_en` VALUES (63903, 'Your spirit wolves gain an additional 30% of your attack power.');
INSERT INTO `spelltext_en` VALUES (63904, 'Increases the duration of Riptide by 6 sec.');
INSERT INTO `spelltext_en` VALUES (63925, 'Increases the amount healed by your Earth Shield by 20%.');
INSERT INTO `spelltext_en` VALUES (63926, 'When you cast Totem of Wrath, you gain 30% of the totem\'s bonus spell power for 5 min.');
INSERT INTO `spelltext_en` VALUES (63927, 'Increases the damage your Hex target can take before the Hex effect is removed by 20%.');
INSERT INTO `spelltext_en` VALUES (63929, 'Your Stoneclaw Totem also places a damage absorb shield on you, equal to 4 times the strength of the shield it places on your totems.');
INSERT INTO `spelltext_en` VALUES (63930, 'The bonus damage granted by your Haunt spell is increased by an additional 3%.');
INSERT INTO `spelltext_en` VALUES (63932, 'Increases the duration of your Metamorphosis by 6 sec.');
INSERT INTO `spelltext_en` VALUES (63933, 'Reduces the cooldown on Chaos Bolt by 2 sec.');
INSERT INTO `spelltext_en` VALUES (63937, 'Reduces the cooldown on Demonic Circle by 4 sec.');
INSERT INTO `spelltext_en` VALUES (63938, 'Your Shadowflame also applies a 70% movement speed slow on its victims.');
INSERT INTO `spelltext_en` VALUES (63941, 'When you use Life Tap or Dark Pact, you gain 20% of your Spirit as spell power for 40 sec.');
INSERT INTO `spelltext_en` VALUES (63943, 'Increases the percentage of damage shared via your Soul Link by an additional 5%.');
INSERT INTO `spelltext_en` VALUES (63945, 'Reduces the cooldown on Bladestorm by 15 sec.');
INSERT INTO `spelltext_en` VALUES (63948, 'Reduces the cooldown on Shockwave by 3 sec.');
INSERT INTO `spelltext_en` VALUES (63949, 'Your Vigilance ability transfers an additional 5% of your target\'s threat to you.');
INSERT INTO `spelltext_en` VALUES (63950, 'Your Enraged Regeneration ability heals for an additional 10% of your health over its duration.');
INSERT INTO `spelltext_en` VALUES (63951, 'Reduces the cooldown on Spell Reflection by 1 sec.');
INSERT INTO `spelltext_en` VALUES (63952, 'Reduces the cooldown on Shield Wall by 2 min, but Shield Wall now only reduces damage taken by 40%.');
INSERT INTO `spelltext_en` VALUES (63953, 'Increases the duration of Dancing Rune Weapon by 5 sec.');
INSERT INTO `spelltext_en` VALUES (63954, 'Reduces the cost of Hungering Cold by 40 runic power.');
INSERT INTO `spelltext_en` VALUES (63955, 'Increases the damage done by Unholy Blight by 40%.');
INSERT INTO `spelltext_en` VALUES (63956, 'Summons and dismisses a rideable Ironbound Proto-Drake. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (63958, 'Increases the damage or healing done by Death Coil by 15%.');
INSERT INTO `spelltext_en` VALUES (63959, 'Your Pestilence ability now refreshes disease durations and secondary effects of diseases on your primary target back to their maximum duration.');
INSERT INTO `spelltext_en` VALUES (63961, 'Your Howling Blast ability now infects your targets with Frost Fever.');
INSERT INTO `spelltext_en` VALUES (63963, 'Summons and dismisses a rideable Rusted Proto-Drake. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (63972, '+50 Resilience Rating.');
INSERT INTO `spelltext_en` VALUES (63973, '+75 Stamina.');
INSERT INTO `spelltext_en` VALUES (64046, 'Transform into a giant black wolf.');
INSERT INTO `spelltext_en` VALUES (64047, 'Transform into a giant white wolf.');
INSERT INTO `spelltext_en` VALUES (64048, 'Transform into a giant red wolf.');
INSERT INTO `spelltext_en` VALUES (64049, 'Transform into a giant grey wolf.');
INSERT INTO `spelltext_en` VALUES (64052, 'Transform into a giant wolf.');
INSERT INTO `spelltext_en` VALUES (64056, 'Restores 2148 health and 2934 mana over 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain 24 attack power and 14 spell power for 1 hour.');
INSERT INTO `spelltext_en` VALUES (64121, 'Increases your spell penetration by 55.');
INSERT INTO `spelltext_en` VALUES (64130, 'Increases your spell penetration by 31.');
INSERT INTO `spelltext_en` VALUES (64184, 'Throw the fragments of Val\'anyr into Yogg-Saron\'s maw while he\'s performing Deafening Roar.');
INSERT INTO `spelltext_en` VALUES (64200, 'Your Envenom ability no longer consumes Deadly Poison from your target.');
INSERT INTO `spelltext_en` VALUES (64202, 'Open the clam!');
INSERT INTO `spelltext_en` VALUES (64323, 'Discovers a glyph recipe unique to this book.');
INSERT INTO `spelltext_en` VALUES (64347, 'Combine 40 Certificates of Appreciation to create a special Limited Edition thank you gift. (PTR Only)');
INSERT INTO `spelltext_en` VALUES (64354, 'Restores 45000 health and 38400 mana over 1 min. Must remain seated while eating.');
INSERT INTO `spelltext_en` VALUES (64366, 'Eat it.');
INSERT INTO `spelltext_en` VALUES (64385, 'Point the compass!');
INSERT INTO `spelltext_en` VALUES (64401, 'When applied to your fishing pole, increases Fishing by 100 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (64415, 'Your healing spells have a chance to cause Blessing of Ancient Kings for 15 sec allowing your heals to shield the target absorbing damage equal to 15% of the amount healed.');
INSERT INTO `spelltext_en` VALUES (64441, 'Permanently enchants a weapon to sometimes grant Blade Warding when striking an enemy. Blade Warding increases your parry rating by 200 and inflicts 600 to 800 damage on your next parry. Lasts 10 sec.\r\n\r\nThis enchantment requires the wielder is at least level 75.');
INSERT INTO `spelltext_en` VALUES (64444, 'Deploying this magnet under the Aerial Command Unit will temporarily bring it to the ground and disable it. While it remains disabled, it will take an additional 50% damage from all sources.');
INSERT INTO `spelltext_en` VALUES (64524, 'Increases attack power by 752 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64525, 'Increases spell power by up to 440 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64527, 'Increases your haste rating by 375 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64579, 'Permanently enchants your weapon to sometimes grant Blood Reserve when striking an enemy or inflicting damage with bleed attacks. When you fall below 35% health, Blood Reserve restores 360 to 440 health. Lasts 20 sec and stacks up to 5 times.\r\n\r\nThis enchantment requires the wielder is at least level 75.');
INSERT INTO `spelltext_en` VALUES (64657, 'Summons and dismisses a rideable White Kodo.');
INSERT INTO `spelltext_en` VALUES (64658, 'Summons and dismisses a rideable Black Wolf.');
INSERT INTO `spelltext_en` VALUES (64659, 'Summons and dismisses a rideable Venomhide Ravasaur. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (64707, 'Increases your haste rating by 432 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64712, 'Increases spell power by 505 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64714, 'Your harmful spells have a chance to increase your spell power by 850 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (64731, 'Summons and dismisses a rideable Sea Turtle. This mount can\'t move very quickly on land, but she\'s a great swimmer.\r\n\r\nDue to her calm and steady nature, swim speed is not affected by effects that increase or decrease mount speed.');
INSERT INTO `spelltext_en` VALUES (64735, 'Increases the critical strike chance of Death Coil and Frost Strike by 8%.');
INSERT INTO `spelltext_en` VALUES (64736, 'Increases the bonus damage done per disease by 20% on Blood Strike, Heart Strike, Obliterate, and Scourge Strike.');
INSERT INTO `spelltext_en` VALUES (64738, 'Each time you cast a spell, there is a chance you will gain up to 241 mana per 5 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (64742, 'Your spells have a chance to increase your spell power by 751 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (64744, 'Increases the damage done by Rune Strike by 10%.');
INSERT INTO `spelltext_en` VALUES (64745, 'Anti-magic shell also grants you $s1% reduction to physical damage taken.');
INSERT INTO `spelltext_en` VALUES (64749, 'Summons and dismisses a rideable Loaned Gryphon mount. This mount can only be summoned in the Storm Peaks, Icecrown and Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (64752, 'The periodic damage dealt by your Rake, Rip, and Lacerate abilities has a chance to cause you to enter a Clearcasting state.');
INSERT INTO `spelltext_en` VALUES (64754, 'Increases the duration of Savage Roar and Survival Instinct by 8 sec.');
INSERT INTO `spelltext_en` VALUES (64756, 'Increases the healing done by your Swiftmend spell by 10%.');
INSERT INTO `spelltext_en` VALUES (64760, 'Your Rejuvenation spell also provides an instant heal for your target.');
INSERT INTO `spelltext_en` VALUES (64762, 'Summons and dismisses a rideable Loaned Wind Rider mount. This mount can only be summoned in the Storm Peaks, Icecrown and Sholazar Basin.');
INSERT INTO `spelltext_en` VALUES (64763, 'Increases dodge rating by 432 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64764, 'When struck in combat has a chance of shielding you in a protective barrier which will reduce damage from each attack by 205. Lasts 10 secs.');
INSERT INTO `spelltext_en` VALUES (64786, 'Your melee and ranged attacks have a chance to increase your haste rating by 726 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (64792, 'Chance on melee and ranged critical strike to increase your attack power by 1284 for 10 secs.');
INSERT INTO `spelltext_en` VALUES (64800, 'Increases attack power by 856 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (64818, 'Increases the bonus granted by Eclipse for Starfire and Wrath by 7%.');
INSERT INTO `spelltext_en` VALUES (64824, 'Each time your Insect Swarm deals damage, it has a chance to make your next Starfire cast within 10 sec instant.');
INSERT INTO `spelltext_en` VALUES (64854, 'Increases the damage done by your Serpent Sting by 10%.');
INSERT INTO `spelltext_en` VALUES (64860, 'Your Steady Shot has a chance to grant you 600 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (64867, 'Your Arcane Blast, Frostbolt, Frostfire Bolt, and Fireball spells have a chance to grant you 350 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (64869, 'You have a chance for the effect of your Missile Barrage, Hot Streak, or Brain Freeze talent not to be consumed when you cast the spells which benefit.');
INSERT INTO `spelltext_en` VALUES (64878, 'Increases the damage done by your Exorcism and Hammer of Wrath abilities by 10%.');
INSERT INTO `spelltext_en` VALUES (64879, 'Increases the critical strike chance of your Divine Storm and Crusader Strike abilities by 10%.');
INSERT INTO `spelltext_en` VALUES (64881, 'Increases the damage done by your Seals of Vengeance, Corruption, and Righteousness by 10%.');
INSERT INTO `spelltext_en` VALUES (64882, 'Shield of Righteousness now increases your shield block value by 225 for that attack and for 6 sec afterward.');
INSERT INTO `spelltext_en` VALUES (64890, 'Your Holy Shock critical heals now also place a periodic healing effect on the target, healing for 15% of the Holy Shock\'s heal amount over 9 sec.');
INSERT INTO `spelltext_en` VALUES (64895, 'Your Sacred Shield can now trigger its effect every 4 sec instead of every 6.');
INSERT INTO `spelltext_en` VALUES (64906, 'Increases the damage done by your Devouring Plague by 15%.');
INSERT INTO `spelltext_en` VALUES (64908, 'Your Mind Blast also grants you 240 haste rating for 4 sec.');
INSERT INTO `spelltext_en` VALUES (64910, 'Increases the critical heal chance of your Prayer of Healing by 10%.');
INSERT INTO `spelltext_en` VALUES (64912, 'Casting Power Word: Shield also grants you 250 spell power for 5 sec.');
INSERT INTO `spelltext_en` VALUES (64914, 'Your Deadly Poison causes you to gain 1 energy each time it deals damage.');
INSERT INTO `spelltext_en` VALUES (64915, 'Increases the damage done by your Rupture by 20%.');
INSERT INTO `spelltext_en` VALUES (64916, 'Increases the damage done by Lava Lash and Stormstrike by 20%.');
INSERT INTO `spelltext_en` VALUES (64917, 'Increases the frequency of Maelstrom Weapon being triggered by your melee weapon attacks by 20%.');
INSERT INTO `spelltext_en` VALUES (64921, 'Reduces the cooldown on Riptide by 1 sec.');
INSERT INTO `spelltext_en` VALUES (64922, 'Reduces the cast time of Chain Heal by 0.2 sec.');
INSERT INTO `spelltext_en` VALUES (64925, 'Increases periodic damage done by your Flame Shock ability by 20%.');
INSERT INTO `spelltext_en` VALUES (64926, 'Increases the block value of your shield by 168.');
INSERT INTO `spelltext_en` VALUES (64927, 'Summons and dismisses a rideable Deadly Gladiator\'s Frost Wyrm mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (64928, 'Your critical strikes from Lightning Bolt cause the target to take nature damage equal to 8% of the Lightning Bolt\'s damage over 4 sec.');
INSERT INTO `spelltext_en` VALUES (64929, 'Increases the block value of your shield by 177.');
INSERT INTO `spelltext_en` VALUES (64931, 'Increases the damage done by your Unstable Affliction by 20% and your Immolate by 10%.');
INSERT INTO `spelltext_en` VALUES (64932, 'Increases the critical strike chance of your Shadow Bolt and Incinerate spells by 5%.');
INSERT INTO `spelltext_en` VALUES (64933, 'Increases the critical strike chance of your Devastate ability by 10%.');
INSERT INTO `spelltext_en` VALUES (64936, 'Shield Block also grants you $s1% reduction to magical damage taken.');
INSERT INTO `spelltext_en` VALUES (64938, 'Heroic Strike and Slam critical strikes have a chance to grant you 150 haste rating for 5 sec.');
INSERT INTO `spelltext_en` VALUES (64939, 'Increases the critical strike chance of Mortal Strike and Bloodthirst by 10%.');
INSERT INTO `spelltext_en` VALUES (64948, 'Increases the block value of your shield by 126.');
INSERT INTO `spelltext_en` VALUES (64949, 'Increases the spell power of your Nourish by 187.');
INSERT INTO `spelltext_en` VALUES (64950, 'Increases the spell power of your Insect Swarm by 374.');
INSERT INTO `spelltext_en` VALUES (64952, 'Your Mangle ability has a chance to grant 153 agility for 12 sec.');
INSERT INTO `spelltext_en` VALUES (64955, 'Increases your block value by 450 for 20 sec each time you use Holy Shield.');
INSERT INTO `spelltext_en` VALUES (64956, 'Increases spell power of Holy Light by 160.');
INSERT INTO `spelltext_en` VALUES (64957, 'Increases the damage done by Divine Storm by 235.');
INSERT INTO `spelltext_en` VALUES (64959, 'Increases weapon damage when you use Stormstrike by 155.');
INSERT INTO `spelltext_en` VALUES (64960, 'Increases the base amount healed by your chain heal by 243.');
INSERT INTO `spelltext_en` VALUES (64961, 'Increases the base damage of your Lava Burst by 215.');
INSERT INTO `spelltext_en` VALUES (64962, 'Increases the damage done by your Death Coil ability by 380 and by your Frost Strike ability by 113.');
INSERT INTO `spelltext_en` VALUES (64964, 'Your Rune Strike ability grants 136 dodge rating for 5 sec.');
INSERT INTO `spelltext_en` VALUES (64977, 'Summons and dismisses a rideable Black Skeletal Horse.');
INSERT INTO `spelltext_en` VALUES (64981, 'Calls forth a Vanquished Tentacle of Yogg-Saron to serve you.');
INSERT INTO `spelltext_en` VALUES (64999, 'Each spell cast within 20 seconds will grant a stacking bonus of 60 mana regen per 5 sec. Expires after 20 seconds. Abilities with no mana cost will not trigger this trinket.');
INSERT INTO `spelltext_en` VALUES (65002, 'Each time you cast a spell, there is a chance you will gain up to 195 mana per 5 for 15 sec.');
INSERT INTO `spelltext_en` VALUES (65005, 'Your harmful spells have a chance to increase your haste rating by 522 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (65007, 'Each time you cast a damaging or healing spell you gain 25 spell power for the next 10 sec, stacking up to 5 times.');
INSERT INTO `spelltext_en` VALUES (65008, 'Increases spell power by 408 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (65010, 'Reduces the base mana cost of your spells by 42.');
INSERT INTO `spelltext_en` VALUES (65011, 'Increases armor by 5152 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (65012, 'Increases parry rating by 380 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (65013, 'Chance on melee and ranged critical strike to increase your attack power by 1234 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (65020, 'Your melee and ranged attacks have a chance to increase your armor penetration rating by 665 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (65025, 'Your melee and ranged attacks have a chance to increase your critical strike rating by 612 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (65183, 'Summons your Venomhide Hatchling. May only be used in Un\'Goro Crater, Tanaris, or Silithus.');
INSERT INTO `spelltext_en` VALUES (65200, 'Feed the Fresh Dinosaur Meat to your Venomhide Hatchling.');
INSERT INTO `spelltext_en` VALUES (65244, 'Your Survival Instincts ability grants an additional 15% of your maximum health.');
INSERT INTO `spelltext_en` VALUES (65247, 'Increases the Strength and Stamina of your pet by 20. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (65252, 'Creates two Flasks of Endless Rage.');
INSERT INTO `spelltext_en` VALUES (65253, 'Creates two Flasks of the Frost Wyrm.');
INSERT INTO `spelltext_en` VALUES (65254, 'Creates two Flasks of Pure Mojo.');
INSERT INTO `spelltext_en` VALUES (65255, 'Creates two Flasks of Stoneblood.');
INSERT INTO `spelltext_en` VALUES (65258, 'Feed the Silithid Meat to your Venomhide Hatchling.');
INSERT INTO `spelltext_en` VALUES (65265, 'Feed a Silithid Egg to your Venomhide Hatchling.');
INSERT INTO `spelltext_en` VALUES (65352, 'Right Click to summon and dismiss the orphan you\'ve agreed to look after for Children\'s Week.');
INSERT INTO `spelltext_en` VALUES (65353, 'Right Click to summon and dismiss the orphan you\'ve agreed to look after for Children\'s Week.');
INSERT INTO `spelltext_en` VALUES (65357, 'Throw the zeppelin to your Northrend orphan.');
INSERT INTO `spelltext_en` VALUES (65358, 'Right Click to summon and dismiss your cat.');
INSERT INTO `spelltext_en` VALUES (65363, 'Restores 19200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 40 critical strike rating for 1 hour. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (65381, 'Right Click to summon and dismiss a Curious Oracle Hatchling.');
INSERT INTO `spelltext_en` VALUES (65382, 'Right Click to summon and dismiss a Curious Wolvar Pup.');
INSERT INTO `spelltext_en` VALUES (65393, 'Detect lesser invisibility for 30 sec. Only works during the Day of the Dead.');
INSERT INTO `spelltext_en` VALUES (65418, 'Restores 4% of your health and mana every sec for 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain [floor(if (pl>15) then pl-15 else 0*0.554)+4] haste rating and Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (65419, 'Restores 4% of your health and mana every sec for 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain [floor(if (pl>15) then pl-15 else 0*0.554)+4] hit rating and Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (65420, 'Restores 4% of your health and mana every sec for 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain [floor(if (pl>15) then pl-15 else 0*0.6616)+4] spell power and [floor(if (pl>15) then pl-15 else 0*0.554)+4] Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (65421, 'Restores 4% of your health and mana every sec for 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain [floor(if (pl>15) then pl-15 else 0*0.554)+4] Spirit and Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (65422, 'Restores 4% of your health and mana every sec for 30 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain [floor(if (pl>15) then pl-15 else 0*1.108)+8] attack power and [floor(if (pl>15) then pl-15 else 0*0.554)+4] Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (65439, 'Summons and dismisses a rideable Furious Gladiator\'s Frost Wyrm mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (65460, 'Places a spirit candle that increases the spirits of those nearby by 4.');
INSERT INTO `spelltext_en` VALUES (65607, 'The goggles simulate the effects of alcohol. The effects can easily be dismissed by removing the goggles.');
INSERT INTO `spelltext_en` VALUES (65637, 'Summons and dismisses a rideable Great Red Elekk. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65638, 'Summons and dismisses a rideable Swift Moonsaber. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65639, 'Summons and dismisses a rideable Swift red Hawkstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65640, 'Summons and dismisses a rideable Swift Gray Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65641, 'Summons and dismisses a rideable Great Golden Kodo. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65642, 'Summons and dismisses a rideable Turbostrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65643, 'Summons and dismisses a rideable Swift Violet Ram. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65644, 'Summons and dismisses a rideable Swift Purple Raptor. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65645, 'Summons and dismisses a rideable White Skeletal Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65646, 'Summons and dismisses a rideable Swift Burgundy Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (65673, 'Fill up your Warbot with blue fuel.');
INSERT INTO `spelltext_en` VALUES (65682, 'Right Click to summon and dismiss your Warbot.');
INSERT INTO `spelltext_en` VALUES (65683, 'Fill up your Warbot with red fuel.');
INSERT INTO `spelltext_en` VALUES (65745, 'Leaves flowers in your wake for 5 min.');
INSERT INTO `spelltext_en` VALUES (65780, 'Chew the gumball and occasionally blow bubbles.');
INSERT INTO `spelltext_en` VALUES (65783, 'Places a candy-filled Ogre Pinata.');
INSERT INTO `spelltext_en` VALUES (65917, 'Summons and dismisses a rideable Magic Rooster. No, seriously. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (66030, 'Right Click to summon and dismiss Grunty the Murloc Marine.');
INSERT INTO `spelltext_en` VALUES (66050, 'Your mount will be more festive.');
INSERT INTO `spelltext_en` VALUES (66051, 'Your mount will be more festive.');
INSERT INTO `spelltext_en` VALUES (66052, 'Your mount will be more festive.');
INSERT INTO `spelltext_en` VALUES (66087, 'Summons and dismisses a rideable Silver Covenant Hippogryph mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (66088, 'Summons and dismisses a rideable Sunreaver Dragonhawk mount. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (66090, 'Summons and dismisses a rideable Quel\'dorei Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (66091, 'Summons and dismisses a rideable Sunreaver Hawkstrider. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (66096, 'Right Click to summon and dismiss your Shimmering Wyrmling.');
INSERT INTO `spelltext_en` VALUES (66175, 'Right Click to summon and dismiss your Macabre Marionette.');
INSERT INTO `spelltext_en` VALUES (66238, 'Teleports the caster to the Argent Tournament Grounds.');
INSERT INTO `spelltext_en` VALUES (66241, 'Right Click to plant your Argent Crusader\'s Banner.');
INSERT INTO `spelltext_en` VALUES (66268, 'Places a seaforium bomb which will detonate after 10 seconds.');
INSERT INTO `spelltext_en` VALUES (66271, 'Seaforium bombs will be removed on death.');
INSERT INTO `spelltext_en` VALUES (66390, 'Administer last rites to a Slain Tualiq Villager (10 yard range).');
INSERT INTO `spelltext_en` VALUES (66474, 'Throw your net at a Snowblind Follower.');
INSERT INTO `spelltext_en` VALUES (66476, 'Set out a bountiful feast to feed a very hungry party. Restores 4% health and mana every sec for 30 sec. If you spend at least 10 sec eating you will become well fed and gain [floor(if (pl>15) then pl-15 else 0*1.108)+8] attack power, [floor(if (pl>15) then pl-15 else 0*0.6616)+4] spell power, and [floor(if (pl>15) then pl-15 else 0*0.554)+4] Stamina for 1 hour.');
INSERT INTO `spelltext_en` VALUES (66486, 'Combine Spice Bread Stuffing, Candied Sweet Potato, Cranberry Chutney, Pumpkin Pie and a Slow-Roasted Turkey to create a Bountiful Feast. Delicious!');
INSERT INTO `spelltext_en` VALUES (66512, 'Pound your drum near a Mysterious Snow Mound in the Foot Steppes.');
INSERT INTO `spelltext_en` VALUES (66531, 'Opens a Cage at Deathspeaker\'s Watch.');
INSERT INTO `spelltext_en` VALUES (66588, 'Throw a flaming spear at the North Sea Kraken to drive it away!');
INSERT INTO `spelltext_en` VALUES (66621, 'Attempt to summon Mistcaller Yngvar. Requires the Mistcaller\'s Cave on the western side of Hrothgar\'s Landing.');
INSERT INTO `spelltext_en` VALUES (66642, 'Blow the Kvaldir Warhorn to summon Drottinn Hrothgar. Can only be used near the Tualiq Monuments on Hrothgar\'s Landing.');
INSERT INTO `spelltext_en` VALUES (66661, 'Display your Captured Vrykul Banner to provoke Ornolf the Scarred into attacking. Can only be used on the deck of Bor\'s Fury.');
INSERT INTO `spelltext_en` VALUES (66674, 'Places a huge seaforium bomb which will detonate after 10 seconds.');
INSERT INTO `spelltext_en` VALUES (66719, 'Consume a Discarded Soul Crystal to release a Fallen Hero\'s Spirit from its captivity in the physical world. Cannot be used on Fallen Hero\'s Spirits under the Grip of the Scourge. (10 yard range)');
INSERT INTO `spelltext_en` VALUES (66741, 'Spread chum in the waters of the Sea Reaver\'s Run to attract a North Sea shark.');
INSERT INTO `spelltext_en` VALUES (66846, 'Summons and dismisses a rideable Ochre Skeletal Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (66847, 'Summons and dismisses a rideable Striped Dawnsaber.');
INSERT INTO `spelltext_en` VALUES (66906, 'Summons an Argent Charger, which serves as a mount. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (67019, 'Increases your spell power by 47, attack power by 80, or Strength by 40 for 1 hour. Counts as both a Battle and Guardian elixir. Effect persists through death.');
INSERT INTO `spelltext_en` VALUES (67056, 'Applies a mount to your Argent Squire.');
INSERT INTO `spelltext_en` VALUES (67115, 'Your Blood Strike and Heart Strike abilities have a chance to grant you 180 additional strength for 15 sec.');
INSERT INTO `spelltext_en` VALUES (67118, 'Your Blood Plague ability now has a chance for its damage to be critical strikes.');
INSERT INTO `spelltext_en` VALUES (67119, 'Decreases the cooldown on your Dark Command ability by 2 sec and increases the damage done by your Blood Strike and Heart Strike abilities by 5%.');
INSERT INTO `spelltext_en` VALUES (67120, 'Decreases the cooldown on your Unbreakable Armor, Vampiric Blood, and Bone Shield abilities by 10 sec.');
INSERT INTO `spelltext_en` VALUES (67121, 'Decreases the cooldown on your Growl ability by 2 sec, increases the periodic damage done by your Lacerate ability by 5%, and increases the duration of your Rake ability by 3 sec.');
INSERT INTO `spelltext_en` VALUES (67123, 'Reduces the cooldown on Barkskin by 12 sec and increases the critical strike chance of Rip and Ferocious Bite by 5%.');
INSERT INTO `spelltext_en` VALUES (67125, 'Your Moonfire ability now has a chance for its periodic damage to be critical strikes.');
INSERT INTO `spelltext_en` VALUES (67126, 'Increases the damage done by your Starfire and Wrath spells by 4%.');
INSERT INTO `spelltext_en` VALUES (67127, 'Increases the critical strike chance of your Nourish spell by 5%.');
INSERT INTO `spelltext_en` VALUES (67128, 'Your Rejuvenation ability now has a chance for its healing to be critical strikes.');
INSERT INTO `spelltext_en` VALUES (67150, 'The damage done by your Serpent Sting ability can now be critical strikes.');
INSERT INTO `spelltext_en` VALUES (67151, 'Each time you hit with a ranged attack, you have a chance to grant your pet 600 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (67164, 'Increases the armor you gain from Ice Armor by 20%, the mana regeneration you gain from Mage Armor by 10%, and adds an additional 15% of your Spirit in critical strike rating when Molten Armor is active.');
INSERT INTO `spelltext_en` VALUES (67185, 'Increases the critical strike chance of your Fireball, Frostbolt, Frostfire Bolt, Arcane Missiles, and Arcane Blast spells by 5%.');
INSERT INTO `spelltext_en` VALUES (67186, 'Decreases the cooldown on your Hand of Reckoning ability by 2 sec and increases the damage done by your Hammer of the Righteous ability by 5%.');
INSERT INTO `spelltext_en` VALUES (67187, 'Decreases the cooldown on your Divine Protection ability and reduces the duration of Forbearance by 30 sec.');
INSERT INTO `spelltext_en` VALUES (67188, 'Your Righteous Vengeance talent now has a chance for its damage to be critical strikes.');
INSERT INTO `spelltext_en` VALUES (67189, 'Increases the critical strike chance of your Judgements by 5%.');
INSERT INTO `spelltext_en` VALUES (67190, 'Increases the duration of your Judgements by 10 sec.');
INSERT INTO `spelltext_en` VALUES (67191, 'Increases the heal over time effect from Flash of Light in conjunction with Sacred Shield by 100%.');
INSERT INTO `spelltext_en` VALUES (67193, 'Increases the duration of your Vampiric Touch spell by 6 sec.');
INSERT INTO `spelltext_en` VALUES (67198, 'Increases the critical strike chance of your Mind Flay spell by 5%.');
INSERT INTO `spelltext_en` VALUES (67201, 'Increases the healing done by your Prayer of Mending spell by 20%.');
INSERT INTO `spelltext_en` VALUES (67202, 'Increases the shield from your Divine Aegis and the instant healing from your Empowered Renew by 10%.');
INSERT INTO `spelltext_en` VALUES (67209, 'Your Rupture ability has a chance each time it deals damage to reduce the cost of your next ability by 40 energy.');
INSERT INTO `spelltext_en` VALUES (67211, 'Increases the critical strike chance of your Hemorrhage, Sinister Strike, Backstab, and Mutilate abilities by 5%.');
INSERT INTO `spelltext_en` VALUES (67220, 'Adds an additional 3% chance to trigger your Static Shock talent.');
INSERT INTO `spelltext_en` VALUES (67221, 'Increases the damage done by your Earth Shock, Flame Shock, and Frost Shock spells by 25%.');
INSERT INTO `spelltext_en` VALUES (67225, 'Increases the healing done by your Riptide spell by 20%.');
INSERT INTO `spelltext_en` VALUES (67226, 'Increases the critical strike chance of your Chain Heal spell by 5%.');
INSERT INTO `spelltext_en` VALUES (67227, 'Increases the duration of your Flame Shock spell by 9 sec.');
INSERT INTO `spelltext_en` VALUES (67228, 'Your Lava Burst spell causes your target to burn for an additonal 10% of your spell\'s damage over 6 sec.');
INSERT INTO `spelltext_en` VALUES (67230, 'Increases your pet\'s critical strike chance with all its attacks by 10%.');
INSERT INTO `spelltext_en` VALUES (67231, 'Increases the damage done by your Immolate, Corruption, and Unstable Affliction spells by 10%.');
INSERT INTO `spelltext_en` VALUES (67234, 'Berserker Stance grants an additional 2% critical strike chance, and Battle Stance grants an additional 6% armor penetration.');
INSERT INTO `spelltext_en` VALUES (67268, 'Increases the critical strike chance of your Slam and Heroic Strike abilities by 5%.');
INSERT INTO `spelltext_en` VALUES (67269, 'Decreases the cooldown on your Taunt ability by 2 sec and increases the damage done by your Devastate ability by 5%.');
INSERT INTO `spelltext_en` VALUES (67273, 'Decreases the cooldown on your Shield Block ability by 10 sec.');
INSERT INTO `spelltext_en` VALUES (67324, 'Restores 7200 health over 6 sec to a friendly siege vehicle or mechanical unit.');
INSERT INTO `spelltext_en` VALUES (67336, 'Summons and dismisses a rideable Relentless Gladiator\'s Frost Wyrm mount. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (67353, 'While in Bear Form, your Lacerate and Swipe abilities have a chance to grant 200 dodge rating for 9 sec, and your Cat Form\'s Mangle and Shred abilities have a chance to grant 200 Agility for 16 sec.');
INSERT INTO `spelltext_en` VALUES (67356, 'Each time your Rejuvenation spell deals periodic healing, you have a chance to gain 234 spell power for 9 sec.');
INSERT INTO `spelltext_en` VALUES (67361, 'Each time your Moonfire spell deals periodic damage, you have a chance to gain 200 critical strike rating for 12 sec.');
INSERT INTO `spelltext_en` VALUES (67363, 'Each time you cast Holy Light, you have a chance to gain 234 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (67365, 'Each time your Seal of Vengeance or Seal of Corruption ability deals periodic damage, you have a chance to gain 200 Strength for 16 sec.');
INSERT INTO `spelltext_en` VALUES (67379, 'Each time you use your Hammer of The Righteous ability, you have a chance to gain 200 dodge rating for 18 sec.');
INSERT INTO `spelltext_en` VALUES (67381, 'Each time you use your Rune Strike ability, you have a chance to gain 200 dodge rating for 20 sec.');
INSERT INTO `spelltext_en` VALUES (67384, 'Each time you use your Death Strike, Obliterate, or Scourge Strike ability, you have a chance to gain 200 Strength for 20 sec.');
INSERT INTO `spelltext_en` VALUES (67386, 'Each time you cast Lightning Bolt, you have a chance to gain 200 haste rating for 12 sec.');
INSERT INTO `spelltext_en` VALUES (67389, 'Each time you cast Chain Heal, you have a chance to gain 234 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (67392, 'Each time you use your Lava Lash ability, you have a chance to gain 400 attack power for 18 sec.');
INSERT INTO `spelltext_en` VALUES (67413, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67414, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67415, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67416, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67417, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67418, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67419, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67420, 'Right Click to summon and dismiss your hatchling.');
INSERT INTO `spelltext_en` VALUES (67466, 'Summons and dismisses a rideable Argent Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (67486, 'Restores 1500 to 2500 health. Increased effect for engineers!');
INSERT INTO `spelltext_en` VALUES (67487, 'Restores 1800 to 3000 mana. Increased effect for engineers!');
INSERT INTO `spelltext_en` VALUES (67489, 'Restores 2700 to 4500 health. Increased effect for engineers!');
INSERT INTO `spelltext_en` VALUES (67490, 'Restores 4200 to 4400 mana. Increased effect for engineers!');
INSERT INTO `spelltext_en` VALUES (67515, 'Increases the block value of your shield by 189.');
INSERT INTO `spelltext_en` VALUES (67516, 'Increases the block value of your shield by 210.');
INSERT INTO `spelltext_en` VALUES (67517, 'Increases the block value of your shield by 240.');
INSERT INTO `spelltext_en` VALUES (67520, 'Increases the block value of your shield by 270.');
INSERT INTO `spelltext_en` VALUES (67521, 'Increases the block value of your shield by 306.');
INSERT INTO `spelltext_en` VALUES (67533, 'Fire a (mostly) harmless pellet.');
INSERT INTO `spelltext_en` VALUES (67556, 'Allows you to cook faster.');
INSERT INTO `spelltext_en` VALUES (67596, 'Increases maximum health by 4608 for 15 sec. Shares cooldown with other Battlemaster\'s trinkets.');
INSERT INTO `spelltext_en` VALUES (67599, 'Reduces the energy cost of your Claw ability by 5.');
INSERT INTO `spelltext_en` VALUES (67653, 'Each time a melee attack strikes you, you have a chance to gain 7056 armor for 10 sec.');
INSERT INTO `spelltext_en` VALUES (67667, 'Each time you cast a helpful spell, you have a chance to gain 500 mana.');
INSERT INTO `spelltext_en` VALUES (67670, 'Each time you cast a harmful spell, you have a chance to gain 590 spell power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (67672, 'Each time you hit with a melee or ranged attack, you have a chance to gain 1008 attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (67683, 'Increases haste rating by 512 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (67684, 'Increases spell power by 599 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (67694, 'Increases dodge rating by 512 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (67695, 'Increases attack power by 1024 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (67698, 'Each time you cast a spell, you gain 16 mana per 5 sec. for 10 sec. Stacks up to 8 times.');
INSERT INTO `spelltext_en` VALUES (67699, 'Increases maximum health by 4610 for 15 sec. Shares cooldown with Battlemaster\'s trinkets.');
INSERT INTO `spelltext_en` VALUES (67702, 'When you deal damage you have a chance to gain Paragon, increasing your Strength or Agility by 450 for 15 sec. Your highest stat is always chosen.');
INSERT INTO `spelltext_en` VALUES (67712, 'You gain a Mote of Flame each time you cause a non-periodic spell critical strike. When you reach 3 Motes, they will release, firing a Pillar of Flame for 1741 to 2023 damage. Mote of Flame cannot be gained more often than once every 2 sec.');
INSERT INTO `spelltext_en` VALUES (67726, 'Each time you cast a helpful spell, you gain 66 spell power. Stacks up to 8 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67728, 'Each time you are struck by an attack, you gain 1265 armor. Stacks up to 5 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67736, 'Each time you cast a harmful spell, you gain 57 haste rating. Stacks up to 8 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67738, 'Each time you strike an enemy with a melee attack, you gain 215 attack power. Stacks up to 5 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67740, 'Each time you cast a helpful spell, you gain 74 spell power. Stacks up to 8 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67742, 'Each time you are struck by an attack, you gain 1422 armor. Stacks up to 5 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67744, 'Each time you cast a harmful spell, you gain 64 haste rating. Stacks up to 8 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67747, 'Each time you strike an enemy with a melee attack, you gain 250 attack power. Stacks up to 5 times. Entire effect lasts 20 sec.');
INSERT INTO `spelltext_en` VALUES (67752, 'Each time you cast a spell, you gain 18 mana per 5 sec. for 10 sec. Stacks up to 8 times.');
INSERT INTO `spelltext_en` VALUES (67753, 'Increases maximum health by 5186 for 15 sec. Shares cooldown with Battlemaster\'s trinkets.');
INSERT INTO `spelltext_en` VALUES (67758, 'You gain a Shard of Flame each time you cause a non-periodic spell critical strike. When you reach 3 Shards, they will release, firing a Pillar of Flame for 1959 to 2275 damage. Shard of Flame cannot be gained more often than once every 2 sec.');
INSERT INTO `spelltext_en` VALUES (67769, 'Inflicts 750 to 1000 Fire damage and incapacitates targets for 3 sec in a 3 yard radius. Any damage will break the effect.');
INSERT INTO `spelltext_en` VALUES (67771, 'When you deal damage you have a chance to gain Paragon, increasing your Strength or Agility by 510 for 15 sec. Your highest stat is always chosen.');
INSERT INTO `spelltext_en` VALUES (67826, 'Requests the presence of Jeeves, the perfect gentleman robot butler, who will attend to your needs for 10 min.\r\n\r\nJeeves can grant bank access to very skilled engineers and perform mundane tasks such as buying, selling, and repairing for anyone.');
INSERT INTO `spelltext_en` VALUES (67833, 'Creates an unstable wormhole the Engineer can use to travel around Northrend. Lasts 1 min.');
INSERT INTO `spelltext_en` VALUES (68056, 'Summons and dismisses a rideable Swift Horde Wolf. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (68057, 'Summons and dismisses a rideable Swift Alliance Steed. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (68163, 'Increases the duration of your Commanding Shout ability by 2 min.');
INSERT INTO `spelltext_en` VALUES (68187, 'Summons and dismisses a rideable Crusader\'s White Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (68188, 'Summons and dismisses a rideable Crusader\'s Black Warhorse. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (68270, 'Right Click to summon the Brewmaiden, whose very presence bolsters a party\'s vigor. Wave at her for Brewfest Brew!');
INSERT INTO `spelltext_en` VALUES (68271, 'Right Click to summon the Black Brewmaiden, who will smite your foes with your empty tankards. Wave at her for Brewfest Brew!');
INSERT INTO `spelltext_en` VALUES (68377, 'Huge seaforium bombs will be removed on death.');
INSERT INTO `spelltext_en` VALUES (68417, 'Wraps an object in festive paper.');
INSERT INTO `spelltext_en` VALUES (68418, 'Wraps an object in a festive candy wrapper.');
INSERT INTO `spelltext_en` VALUES (68443, 'Increases dodge rating by 335 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (68529, 'Negates the harmful effects of Alluring Perfume. The caster can only be immune to one \"scent\" at a time.');
INSERT INTO `spelltext_en` VALUES (68530, 'Negates the harmful effects of Irresistible Cologne. The caster can only be immune to one \"scent\" at a time.');
INSERT INTO `spelltext_en` VALUES (68645, 'Propel yourself through the air toward a target destination.');
INSERT INTO `spelltext_en` VALUES (68767, 'Right Click to summon and dismiss your kite.');
INSERT INTO `spelltext_en` VALUES (68768, 'Summons and dismisses a rideable Little White Stallion. This mount\'s speed changes depending on your Riding skill.');
INSERT INTO `spelltext_en` VALUES (68769, 'Summons and dismisses a rideable Little Ivory Raptor. This mount\'s speed changes depending on your Riding skill.');
INSERT INTO `spelltext_en` VALUES (68787, 'Summons a new Reclaimed Thunderstrike.');
INSERT INTO `spelltext_en` VALUES (68810, 'Right Click to summon and dismiss your spectral tiger cub.');
INSERT INTO `spelltext_en` VALUES (69002, 'Right Click to summon and dismiss your whelpling.');
INSERT INTO `spelltext_en` VALUES (69180, 'Sends a shadowy bolt at the enemy causing 360 Shadow damage and lowering all stats by 120 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (69181, 'Sends a shadowy bolt at the enemy causing 390 Shadow damage and lowering all stats by 130 for 30 sec.');
INSERT INTO `spelltext_en` VALUES (69206, 'Summons a Skeleton that will protect you for 1 min.');
INSERT INTO `spelltext_en` VALUES (69207, 'Grants the wielder 100 defense rating and 1400 armor for 10 sec.');
INSERT INTO `spelltext_en` VALUES (69208, 'Grants the wielder 110 defense rating and 1550 armor for 10 sec.');
INSERT INTO `spelltext_en` VALUES (69209, 'Delivers a fatal wound for 2000 damage.');
INSERT INTO `spelltext_en` VALUES (69210, 'Delivers a fatal wound for 2222 damage.');
INSERT INTO `spelltext_en` VALUES (69211, 'Sends a shadowy bolt at the enemy causing 1313 to 1687 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (69212, 'Sends a shadowy bolt at the enemy causing 1458 to 1874 Shadow damage.');
INSERT INTO `spelltext_en` VALUES (69377, 'Increases Stamina by 165 for all party and raid members for 1 hour.');
INSERT INTO `spelltext_en` VALUES (69378, 'Gives all members of the raid or group the Blessing of Forgotten Kings, increasing total stats by 8% for 30 min.');
INSERT INTO `spelltext_en` VALUES (69381, 'Gives the Gift of the Wild to all party and raid members, increasing armor by 750, all attributes by 37 and all resistances by 54 for 1 hour.');
INSERT INTO `spelltext_en` VALUES (69395, 'Summons and dismisses a rideable Onyxian Drake. This is a very fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (69419, 'Summons a new Reinforced Thunderstrike.');
INSERT INTO `spelltext_en` VALUES (69445, 'Spritzes the target with a puff of Crown perfume.');
INSERT INTO `spelltext_en` VALUES (69452, 'Right Click to summon and dismiss your core hound pup.');
INSERT INTO `spelltext_en` VALUES (69489, 'Offers a Crown chocolate sample to the target.');
INSERT INTO `spelltext_en` VALUES (69531, 'Turn 10 charms into a Lovely Charm Bracelet.');
INSERT INTO `spelltext_en` VALUES (69535, 'Right Click to summon and dismiss your gryphon hatchling.');
INSERT INTO `spelltext_en` VALUES (69536, 'Right Click to summon and dismiss your wind rider cub.');
INSERT INTO `spelltext_en` VALUES (69541, 'Right Click to call or say goodbye to your pandaren monk friend.');
INSERT INTO `spelltext_en` VALUES (69560, 'Restores 19200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 40 Stamina and resilience rating for 1 hour. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (69561, 'Restores 19200 mana over 30 sec. Must remain seated while drinking. If you spend at least 10 seconds drinking you will become \"well fed\" and gain 40 critical strike rating for 1 hour. Standard alcohol.');
INSERT INTO `spelltext_en` VALUES (69563, 'Spritzes the target with a puff of Crown cologne.');
INSERT INTO `spelltext_en` VALUES (69599, 'Increases spell power by 222.');
INSERT INTO `spelltext_en` VALUES (69677, 'Right Click to summon or dismiss Lil\' K.T.');
INSERT INTO `spelltext_en` VALUES (69709, 'Increases spell power by 250.');
INSERT INTO `spelltext_en` VALUES (69739, 'Your direct heals have a chance to cause Cauterizing Heal. Your direct damage spells have a chance to cause Searing Flame.');
INSERT INTO `spelltext_en` VALUES (69755, 'Your direct heals have a chance to cause Cauterizing Heal. Your direct damage spells have a chance to cause Searing Flame.');
INSERT INTO `spelltext_en` VALUES (69757, 'Increases your Sons of Hodir reputation by 520.');
INSERT INTO `spelltext_en` VALUES (69773, 'Creates a new, permanent Perpetual Purple Firework item in your inventory while consuming this trinket.');
INSERT INTO `spelltext_en` VALUES (69777, 'Creates a new, permanent Carved Ogre Idol item in your inventory while consuming this trinket.');
INSERT INTO `spelltext_en` VALUES (69838, 'Combine 5 Infused Saronite Bars with the Remnants of Quel\'Delar to re-forge Quel\'Delar. You must be standing at one of the Forgemaster\'s Anvils.');
INSERT INTO `spelltext_en` VALUES (69922, 'Temper Quel\'Delar in the Crucible of Souls. Only works inside the Forge of Souls.');
INSERT INTO `spelltext_en` VALUES (70013, 'Quel\'Delar pulses with darkness and seems to be pulling you toward the Halls of Reflection in Icecrown Citadel.');
INSERT INTO `spelltext_en` VALUES (70192, 'Analyze the air around a heavily perfumed guard.');
INSERT INTO `spelltext_en` VALUES (70233, 'Increases Attack Power by 75 and attracts those wearing cologne. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (70234, 'Increases Spell Power by 45 and attracts those wearing cologne. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (70235, 'Increases Defense Rating by 20 and attracts those wearing cologne. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (70242, 'Increases Attack Power by 75 and attracts those wearing perfume. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (70243, 'Increases Defense Rating by 20 and attracts those wearing perfume. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (70244, 'Increases Spell Power by 45 and attracts those wearing perfume. Lasts 1 hour.');
INSERT INTO `spelltext_en` VALUES (70477, 'Immerse Quel\'Delar in the Sunwell.');
INSERT INTO `spelltext_en` VALUES (70537, 'Restores 30 Rage.');
INSERT INTO `spelltext_en` VALUES (70548, 'Immerse Quel\'Delar in the Sunwell.');
INSERT INTO `spelltext_en` VALUES (70574, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70575, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70576, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70577, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70578, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70579, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70580, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70581, 'A sweet (and chalky) treat.');
INSERT INTO `spelltext_en` VALUES (70613, 'Right Click to summon and dismiss your pug.');
INSERT INTO `spelltext_en` VALUES (70650, 'Increases the damage done by your Death and Decay ability by 20%.');
INSERT INTO `spelltext_en` VALUES (70652, 'When you activate Blood Tap, you gain 12% damage reduction from all attacks for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70655, 'Your Obliterate and Scourge Strike abilities deal 10% increased damage, and your Heart Strike ability deals 7% increased damage.');
INSERT INTO `spelltext_en` VALUES (70656, 'Whenever all your runes are on cooldown, you gain 3% increased damage done with weapons, spells, and abilities for the next 15 sec.');
INSERT INTO `spelltext_en` VALUES (70658, 'The healing granted by your Wild Growth spell reduces 30% less over time.');
INSERT INTO `spelltext_en` VALUES (70664, 'Each time your Rejuvenation spell heals a target, it has a % chance to jump to a new target at full duration.');
INSERT INTO `spelltext_en` VALUES (70718, 'When you gain Clearcasting from your Omen of Clarity talent, you deal 15% additional Nature and Arcane damage for 6 sec.');
INSERT INTO `spelltext_en` VALUES (70723, 'Your critical strikes from Starfire and Wrath cause the target to languish for an additional 7% of your spell\'s damage over 4 sec.');
INSERT INTO `spelltext_en` VALUES (70724, 'Your Swipe (Bear) and Lacerate abilities deal 20% additional damage and the cost of your Rip ability is reduced by 10 energy.');
INSERT INTO `spelltext_en` VALUES (70726, 'Your Enrage ability no longer decreases your armor and instead decreases all damage taken by 12%, and the periodic damage done by your Rake ability can now be a critical strike.');
INSERT INTO `spelltext_en` VALUES (70727, 'Your Auto Shots have a % chance to cause you and your pet to deal 15% additional damage for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70730, 'When your Serpent Sting and Wyvern Sting abilities deal damage, you have a % chance to gain 20% attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70748, 'Your Mirror Image ability also causes you to deal 18% additional damage for 30 sec.');
INSERT INTO `spelltext_en` VALUES (70752, 'Your Hot Streak, Missile Barrage, and Brain Freeze talents also grant you 12% haste for 5 sec when the effect of the talent is consumed.');
INSERT INTO `spelltext_en` VALUES (70755, 'While your Divine Illumination talent is active, your healing spells are 35% stronger.');
INSERT INTO `spelltext_en` VALUES (70756, 'Your Holy Shock spell causes the next Holy Light you cast within 10 sec to have 0.3 sec reduced cast time.');
INSERT INTO `spelltext_en` VALUES (70758, 'Your Hammer of the Righteous ability deals 20% increased damage.');
INSERT INTO `spelltext_en` VALUES (70761, 'When you activate Divine Plea, you gain 12% dodge for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70762, 'Your Seals and Judgements deal 10% additional damage.');
INSERT INTO `spelltext_en` VALUES (70765, 'Your melee attacks have a % chance to reset the cooldown on your Divine Storm ability.');
INSERT INTO `spelltext_en` VALUES (70770, 'Your Flash Heal has a % chance to cause the target to heal for 33% of the healed amount over 9 sec.');
INSERT INTO `spelltext_en` VALUES (70771, 'Increases Intellect by [floor(if (pl>15) then pl-15 else 0*0.4155)+3] for 1 hour.');
INSERT INTO `spelltext_en` VALUES (70774, 'Increases Agility by [floor(if (pl>15) then pl-15 else 0*0.4155)+3] for 1 hour.');
INSERT INTO `spelltext_en` VALUES (70777, 'Increases Stamina by [floor(if (pl>15) then pl-15 else 0*0.4155)+3] for 1 hour.');
INSERT INTO `spelltext_en` VALUES (70779, 'Increases Spirit by [floor(if (pl>15) then pl-15 else 0*0.4155)+3] for 1 hour.');
INSERT INTO `spelltext_en` VALUES (70798, 'Increases the effect of Power Word: Shield by 5% and Circle of Healing by 10%.');
INSERT INTO `spelltext_en` VALUES (70800, 'The critical strike chance of your Shadow Word: Pain, Devouring Plague, and Vampiric Touch spells is increased by 5%.');
INSERT INTO `spelltext_en` VALUES (70801, 'Reduces the channel duration by 0.5 sec and period by 0.17 sec on your Mind Flay spell.');
INSERT INTO `spelltext_en` VALUES (70803, 'Gives your melee finishing moves a % chance to add 3 combo points to your target.');
INSERT INTO `spelltext_en` VALUES (70805, 'Your Tricks of the Trade ability now grants you 15 energy instead of costing energy.');
INSERT INTO `spelltext_en` VALUES (70807, 'Your Riptide spell grants 20% spell haste for your next spellcast within 10 sec.');
INSERT INTO `spelltext_en` VALUES (70808, 'Your Chain Heal critical strikes cause the target to heal for 25% of the healed amount over 9 sec.');
INSERT INTO `spelltext_en` VALUES (70811, 'Your Lightning Bolt and Chain Lightning spells reduce the remaining cooldown on your Elemental Mastery talent by 2 sec.');
INSERT INTO `spelltext_en` VALUES (70817, 'Your Lava Burst spell causes your Flame Shock effect on the target to deal at least two additional periodic damage ticks before expiring.');
INSERT INTO `spelltext_en` VALUES (70830, 'When you activate your Shamanistic Rage ability you also deal 12% additional damage for 15 sec.');
INSERT INTO `spelltext_en` VALUES (70832, 'Each time the beneficial effect of your Maelstrom Weapon talent reaches 5 charges, you have a 15% chance to gain 20% attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70839, 'The critical strike chance of your Shadowbolt, Incinerate, Soulfire, and Corruption spells is increased by 5%.');
INSERT INTO `spelltext_en` VALUES (70841, 'Each time your Immolate and Unstable Affliction spells deal periodic damage, you have a % chance to gain 10% damage done by you and your pet for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70843, 'Your Shield Slam and Shockwave abilities deal 20% increased damage.');
INSERT INTO `spelltext_en` VALUES (70844, 'Your Bloodrage ability no longer costs health to use, and now causes you to absorb damage equal to 20% of your maximum health. Lasts until cancelled.');
INSERT INTO `spelltext_en` VALUES (70847, 'You have a 20% chance for your Bloodsurge and Sudden Death talents to grant 2 charges of their effect instead of 1, reduce the global cooldown on Execute or Slam by 0.5 sec, and for the duration of the effect to be increased by 100%.');
INSERT INTO `spelltext_en` VALUES (70854, 'When your Deep Wounds ability deals damage you have a % chance to gain 16% attack power for 10 sec.');
INSERT INTO `spelltext_en` VALUES (70938, 'Your Summon Water Elemental now lasts indefinitely, but your Water Elemental can no longer cast Freeze.');
INSERT INTO `spelltext_en` VALUES (70948, 'Your haste now reduces the time between periodic damage ticks of your Corruption spell.');
INSERT INTO `spelltext_en` VALUES (71014, 'Your haste now reduces the time between the periodic healing ticks of your Rejuvenation spell.');
INSERT INTO `spelltext_en` VALUES (71024, 'Throw at one of the Crown Chemical Co.\'s chemical wagons.');
INSERT INTO `spelltext_en` VALUES (71068, 'Restores 4% of your health per second for 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (71071, 'Restores 4% of your health per second for 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (71073, 'Restores 4% of your health per second for 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (71074, 'Restores 4% of your health per second for 24 sec. Must remain seated while eating. If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min.');
INSERT INTO `spelltext_en` VALUES (71087, 'Toss a Lovely Rose at someone to wear.');
INSERT INTO `spelltext_en` VALUES (71174, 'The periodic damage from your Lacerate and Rake abilities grants 44 Agility for 15 sec. Stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (71176, 'The periodic damage from your Insect Swarm and Moonfire spells grants 44 critical strike rating for 15 sec. Stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (71178, 'The periodic healing from your Rejuvenation spell grants 32 spell power for 15 sec. Stacks up to 8 times.');
INSERT INTO `spelltext_en` VALUES (71186, 'Your Crusader Strike ability grants 44 Strength for 15 sec. Stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (71191, 'Your Holy Shock heals grant 85 spell power for 15 sec. Stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (71194, 'Your Shield of Righteousness ability grants 73 dodge rating for 15 sec. Stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (71198, 'The periodic damage from your Flame Shock spell grants 44 haste rating for 30 sec. Stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (71214, 'Your Stormstrike ability grants 146 attack power for 15 sec. Stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (71217, 'Your Riptide spell grants 85 spell power for 15 sec. Stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (71226, 'Your Obliterate, Scourge Strike, and Death Strike abilities grants 73 Strength for 15 sec. Stacks up to 3 times.');
INSERT INTO `spelltext_en` VALUES (71228, 'Your Rune Strike ability grants 44 dodge rating for 15 sec. Stacks up to 5 times.');
INSERT INTO `spelltext_en` VALUES (71342, 'Summons and dismisses a rideable Big Love Rocket. This mount changes depending on your Riding skill and location.');
INSERT INTO `spelltext_en` VALUES (71354, 'Experience gained from killing monsters and completing quests increased by 5%.');
INSERT INTO `spelltext_en` VALUES (71397, 'Each time you deal melee or ranged damage to an opponent, you gain 17 attack power for the next 10 sec, stacking up to 20 times.');
INSERT INTO `spelltext_en` VALUES (71402, 'When you deal damage you have a chance to gain 1100 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (71404, 'Chance on melee or ranged critical strike to increase your armor penetration rating by 678 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71406, 'Your melee attacks have a chance to grant you a Mote of Anger. When you reach 8 Motes of Anger, they will release, causing you to instantly attack for 50% weapon damage with one of your melee weapons.');
INSERT INTO `spelltext_en` VALUES (71435, 'Fishing skill increased by 15.');
INSERT INTO `spelltext_en` VALUES (71436, 'Whisks you away to the finest drinking establishment in Booty Bay.');
INSERT INTO `spelltext_en` VALUES (71466, 'Hurls the Infernal Spear back at Sister Svalna, dealing damage. Pierces Aether Shield.');
INSERT INTO `spelltext_en` VALUES (71519, 'Your attacks have a chance to awaken the powers of the races of Northrend, temporarily transforming you and increasing your combat capabilities for 30 sec.');
INSERT INTO `spelltext_en` VALUES (71540, 'When you deal damage you have a chance to gain 1250 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (71545, 'Your melee attacks have a chance to grant you a Mote of Anger. When you reach 7 Motes of Anger, they will release, causing you to instantly attack for 50% weapon damage with one of your melee weapons.');
INSERT INTO `spelltext_en` VALUES (71562, 'Your attacks have a chance to awaken the powers of the races of Northrend, temporarily transforming you and increasing your combat capabilities for 30 sec.');
INSERT INTO `spelltext_en` VALUES (71563, 'Increases your critical strike rating by 920 for 20 sec. Every time one of your non-periodic spells deals a critical strike, the bonus is reduced by 184 critical strike rating.');
INSERT INTO `spelltext_en` VALUES (71565, 'Restores 1625 mana.');
INSERT INTO `spelltext_en` VALUES (71567, 'You gain 11 mana each time you heal a target with one of your spells.');
INSERT INTO `spelltext_en` VALUES (71568, 'Grants 464 haste rating for 20 sec.');
INSERT INTO `spelltext_en` VALUES (71569, 'Increases maximum health by 4104 for 15 sec. Shares cooldown with other Battlemaster\'s trinkets.');
INSERT INTO `spelltext_en` VALUES (71571, 'Each time you deal spell damage to an opponent, you gain 18 spell power for the next 10 sec, stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (71573, 'Each time you deal spell damage to an opponent, you gain 20 spell power for the next 10 sec, stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (71574, 'Restores 1830 mana.');
INSERT INTO `spelltext_en` VALUES (71576, 'Each time you are struck by a melee attack, you have a % chance to gain 24 stamina for the next 10 sec, stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (71578, 'Each time you are struck by a melee attack, you have a % chance to gain 27 stamina for the next 10 sec, stacking up to 10 times.');
INSERT INTO `spelltext_en` VALUES (71579, 'Increases spell power by 716 for 20 sec.');
INSERT INTO `spelltext_en` VALUES (71585, 'Your spell casts have a chance to grant 304 mana per 5 sec for 15 sec.');
INSERT INTO `spelltext_en` VALUES (71586, 'Absorbs 6400 damage. Lasts 10 sec.');
INSERT INTO `spelltext_en` VALUES (71602, 'Your harmful spells have a chance to increase your spell power by 105 and an additional 105 every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (71606, 'Each time one of your spells deals periodic damage, you have a chance to gain 1074 spell power for 20 sec.');
INSERT INTO `spelltext_en` VALUES (71607, 'Instantly heal a friendly target for 7400 to 8600.');
INSERT INTO `spelltext_en` VALUES (71611, 'Each time your spells heal a target you have a chance to cause another nearby friendly target to be instantly healed for 5550 to 6450.');
INSERT INTO `spelltext_en` VALUES (71634, 'Melee attacks which reduce you below 35% health cause you to gain 5712 armor for 10 sec. Cannot occur more than once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (71635, 'Increases resistance to Arcane, Fire, Frost, Nature, and Shadow spells by 239 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71637, 'Each time one of your spells deals periodic damage, you have a chance to gain 1207 spell power for 20 sec.');
INSERT INTO `spelltext_en` VALUES (71638, 'Increases resistance to Arcane, Fire, Frost, Nature, and Shadow spells by 268 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71640, 'Melee attacks which reduce you below 35% health cause you to gain 6426 armor for 10 sec. Cannot occur more than once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (71642, 'Each time your spells heal a target you have a chance to cause another nearby friendly target to be instantly healed for 6280 to 7298.');
INSERT INTO `spelltext_en` VALUES (71645, 'Your harmful spells have a chance to increase your spell power by 121 and an additional 121 every 2 sec for 20 sec.');
INSERT INTO `spelltext_en` VALUES (71692, 'Permanently enchant gloves to increase fishing skill by 5.');
INSERT INTO `spelltext_en` VALUES (71835, 'Your ranged attacks have a % chance to cause you to instantly attack with this weapon for 50% weapon damage.');
INSERT INTO `spelltext_en` VALUES (71836, 'Your ranged attacks have a % chance to cause you to instantly attack with this weapon for 50% weapon damage.');
INSERT INTO `spelltext_en` VALUES (71838, 'Steals 2138 to 2362 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (71839, 'Steals 2412 to 2664 life from target enemy.');
INSERT INTO `spelltext_en` VALUES (71840, 'Right Click to summon and dismiss your toxic wasteling. Do not feed toxic wasteling. Do not allow toxic wasteling to approach small animals. Do not touch, sniff, or even look at toxic wasteling for extended periods of time.');
INSERT INTO `spelltext_en` VALUES (71845, 'Your harmful spells have a chance to cause you to summon a Val\'kyr to fight by your side for 30 sec.');
INSERT INTO `spelltext_en` VALUES (71846, 'Your harmful spells have a chance to cause you to summon a Val\'kyr to fight by your side for 30 sec.');
INSERT INTO `spelltext_en` VALUES (71850, 'Increases attack power by 50.');
INSERT INTO `spelltext_en` VALUES (71851, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (71852, 'Increases spell power by 29.');
INSERT INTO `spelltext_en` VALUES (71853, 'Increases spell power by 88.');
INSERT INTO `spelltext_en` VALUES (71858, 'Increases attack power by 150.');
INSERT INTO `spelltext_en` VALUES (71860, 'Increases spell power by 88.');
INSERT INTO `spelltext_en` VALUES (71865, 'Each time your spells heal a target you have a chance to cause the target of your heal to heal themselves and friends within 0 yards for 217 each sec for 6 sec.');
INSERT INTO `spelltext_en` VALUES (71868, 'Each time your spells heal a target you have a chance to cause the target of your heal to heal themselves and friends within 0 yards for 245 each sec for 6 sec.');
INSERT INTO `spelltext_en` VALUES (71871, 'Your melee attacks have a chance to grant you Blessing of Light, increasing your strength by 100 and your healing received by up to 300 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71873, 'Your melee attacks have a chance to grant you Blessing of Light, increasing your strength by 115 and your healing received by up to 340 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71876, 'Your melee attacks have a chance to grant you Necrotic Touch for 10 sec, causing all your melee attacks to deal an additional 9% damage as shadow damage.');
INSERT INTO `spelltext_en` VALUES (71878, 'Your melee attacks have a chance to grant you Necrotic Touch for 10 sec, causing all your melee attacks to deal an additional 10% damage as shadow damage.');
INSERT INTO `spelltext_en` VALUES (71880, 'Your melee attacks have a chance to trigger Invigoration, granting you 4 energy, 2 rage, or 120 mana every 2 sec for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71892, 'Your melee attacks have a chance to trigger Invigoration, granting you 4 energy, 2 rage, or 120 mana every 2 sec for 12 sec.');
INSERT INTO `spelltext_en` VALUES (71903, 'Your melee attacks have a chance to drain a Soul Fragment granting you 30 Strength. When you have acquired 10 Soul Fragments you will unleash Chaos Bane, dealing 1900 to 2100 Shadow damage split between all enemies within 0 yards and granting you 270 Strength for 10 sec.');
INSERT INTO `spelltext_en` VALUES (71909, 'This strange experimental device was meant to burst the target\'s chest cavity in a spray of hot gore. Instead, it induces a brief but pitiful display of miserable, wracking sobs.');
INSERT INTO `spelltext_en` VALUES (71988, 'Sprays an enemy with vile fumes, incapacitating it for 30 sec. Any damage caused will revive the target.');
INSERT INTO `spelltext_en` VALUES (72286, 'Summons and dismisses the flying undead horse Invincible. This mount changes depending on your Riding skill and location.');
INSERT INTO `spelltext_en` VALUES (72413, 'Chance on hit to increase your attack power by 480 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (72415, 'When struck in combat has a chance of increasing your armor by 2400 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (72417, 'Your offensive spells have a chance on hit to increase your spell power by 285 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (72419, 'Your helpful spells have a chance to increase your spell power by 285 for 10 sec.');
INSERT INTO `spelltext_en` VALUES (72424, 'Awakens the spark of life inside the target.');
INSERT INTO `spelltext_en` VALUES (72770, 'Summons a Cadaver that will protect you for 1 min.');
INSERT INTO `spelltext_en` VALUES (72807, 'Summons and dismisses a rideable Icebound Frostbrood Vanquisher. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (72808, 'Summons and dismisses a rideable Bloodbathed Frostbrood Vanquisher. This is an extremely fast mount. This mount can only be summoned in Outland or Northrend.');
INSERT INTO `spelltext_en` VALUES (72968, 'A ribbon of affection.');
INSERT INTO `spelltext_en` VALUES (73313, 'Summons and dismisses your rideable Crimson Deathcharger. This is a very fast mount.');
INSERT INTO `spelltext_en` VALUES (73320, 'Assume the form of a Frost Dwarf for 10 min.');
INSERT INTO `spelltext_en` VALUES (73324, 'Creates a portal, teleporting group members that use it to Dalaran.');
INSERT INTO `spelltext_en` VALUES (73326, 'Suffuses the wearer with the Light.');
INSERT INTO `spelltext_en` VALUES (73331, 'Summons Sylvanas\' Lamenters.');
INSERT INTO `spelltext_en` VALUES (74856, 'Summons and dismisses a rideable Blazing Hippogryph. This mount changes depending on your Riding skill.');
INSERT INTO `spelltext_en` VALUES (74890, 'Right Click to become a heroic statue of yourself.');
INSERT INTO `spelltext_en` VALUES (74932, 'Right Click to summon and dismiss your Frigid Frostling.');
INSERT INTO `spelltext_en` VALUES (75111, 'Summon and control your Crashin\' Thrashin\' Racer.');
INSERT INTO `spelltext_en` VALUES (75134, 'Right Click to summon and dismiss your wind-up Clockwork Rocket Bot.');
INSERT INTO `spelltext_en` VALUES (75135, 'Right Click to place a Tiny Blue Ragdoll.');
INSERT INTO `spelltext_en` VALUES (75450, 'Grants you 185 honor.');
INSERT INTO `spelltext_en` VALUES (75455, 'When you deal damage you have a chance to gain 1304 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (75457, 'When you deal damage you have a chance to gain 1472 attack power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (75465, 'Your damaging spells have a chance to grant 763 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (75474, 'Your damaging spells have a chance to grant 861 spell power for 15 sec.');
INSERT INTO `spelltext_en` VALUES (75475, 'Melee attacks which reduce you below 35% health cause you to gain 4401 health for 10 sec. Cannot occur more than once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (75481, 'Melee attacks which reduce you below 35% health cause you to gain 4968 health for 10 sec. Cannot occur more than once every 30 sec.');
INSERT INTO `spelltext_en` VALUES (75490, 'Each time your direct healing spells heal a target you cause the target of your heal to heal themselves and friends within 0 yards for 356 each sec for 6 sec.');
INSERT INTO `spelltext_en` VALUES (75495, 'Each time your direct healing spells heal a target you cause the target of your heal to heal themselves and friends within 0 yards for 402 each sec for 6 sec.');
INSERT INTO `spelltext_en` VALUES (75531, 'Transform into Gnomeregan Infantry.');
INSERT INTO `spelltext_en` VALUES (75596, 'Summons and dismisses a Frosty Flying Carpet. This is a very fast rug. Can only be used in Outland and Northrend. Requires 425 skill in tailoring to ride.');
INSERT INTO `spelltext_en` VALUES (75614, 'Summons and dismisses a Celestial Steed. This mount changes depending on your Riding skill and location.');
INSERT INTO `spelltext_en` VALUES (75906, 'Right Click to set down or pick up your Lil\' XT action figure.');
INSERT INTO `spelltext_en` VALUES (75973, 'Summons an X-53 Touring Rocket. This two-passenger mount\'s speed depends upon your riding skill.');

-- ----------------------------
-- Table structure for sql_testupdater
-- ----------------------------
DROP TABLE IF EXISTS `sql_testupdater`;
CREATE TABLE `sql_testupdater`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sql_testupdater
-- ----------------------------
INSERT INTO `sql_testupdater` VALUES (1, 'test', 'true');
INSERT INTO `sql_testupdater` VALUES (2, 'lol', 'yes');
INSERT INTO `sql_testupdater` VALUES (3, 'fun', 'yay!');

-- ----------------------------
-- Table structure for store_groups
-- ----------------------------
DROP TABLE IF EXISTS `store_groups`;
CREATE TABLE `store_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderNumber` int(8) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of store_groups
-- ----------------------------
INSERT INTO `store_groups` (`id`, `title`, `orderNumber`) VALUES
(1, 'Test group', 1);

-- ----------------------------
-- Table structure for store_items
-- ----------------------------
DROP TABLE IF EXISTS `store_items`;
CREATE TABLE `store_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quality` int(2) NULL DEFAULT NULL,
  `vp_price` int(4) NULL DEFAULT NULL,
  `dp_price` int(4) NULL DEFAULT NULL,
  `realm` int(3) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'inv_misc_questionmark',
  `group` int(11) NULL DEFAULT NULL,
  `query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `query_database` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `query_need_character` int(1) NULL DEFAULT 0,
  `command` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `command_need_character` int(1) NULL DEFAULT NULL,
  `require_character_offline` int(1) NOT NULL DEFAULT 0,
  `tooltip` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_group`(`group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2277 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of store_items
-- ----------------------------

-- ----------------------------
-- Table structure for support_requests
-- ----------------------------
DROP TABLE IF EXISTS `support_requests`;
CREATE TABLE `support_requests`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of support_requests
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for teleport_locations
-- ----------------------------
DROP TABLE IF EXISTS `teleport_locations`;
CREATE TABLE `teleport_locations`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Unnamed',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `x` float NULL DEFAULT 0,
  `y` float NULL DEFAULT 0,
  `z` float NULL DEFAULT 0,
  `orientation` float NULL DEFAULT 0,
  `mapId` smallint(6) NULL DEFAULT 0,
  `vpCost` int(11) NULL DEFAULT 0,
  `dpCost` int(11) NULL DEFAULT 0,
  `goldCost` int(11) NULL DEFAULT 0,
  `realm` int(11) NULL DEFAULT 1,
  `required_faction` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `realm_fk`(`realm`) USING BTREE,
  CONSTRAINT `realm_fk` FOREIGN KEY (`realm`) REFERENCES `realms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teleport_locations
-- ----------------------------

-- ----------------------------
-- Table structure for visitor_log
-- ----------------------------
DROP TABLE IF EXISTS `visitor_log`;
CREATE TABLE `visitor_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142670 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visitor_log
-- ----------------------------

-- ----------------------------
-- Table structure for vote_log
-- ----------------------------
DROP TABLE IF EXISTS `vote_log`;
CREATE TABLE `vote_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vote_site_id` int(10) NOT NULL DEFAULT 0,
  `user_id` int(50) NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1',
  `time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_vote_log_vote_sites`(`vote_site_id`) USING BTREE,
  CONSTRAINT `FK_vote_log_vote_sites` FOREIGN KEY (`vote_site_id`) REFERENCES `vote_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vote_log
-- ----------------------------

-- ----------------------------
-- Table structure for vote_sites
-- ----------------------------
DROP TABLE IF EXISTS `vote_sites`;
CREATE TABLE `vote_sites`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vote_sitename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'FusionGen',
  `vote_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'http://',
  `vote_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hour_interval` int(10) NOT NULL DEFAULT 12,
  `points_per_vote` tinyint(4) NOT NULL DEFAULT 1,
  `callback_enabled` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vote_sites
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;