/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : fball_gamedb_1

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2014-12-19 16:01:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gameuser`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser`;
CREATE TABLE `gameuser` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `obj_id` bigint(20) unsigned NOT NULL,
  `sdk_id` int(8) DEFAULT '0',
  `obj_cdkey` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `obj_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obj_sex` int(4) NOT NULL DEFAULT '0',
  `obj_lv` int(8) NOT NULL DEFAULT '0',
  `obj_score` bigint(20) NOT NULL DEFAULT '0',
  `obj_headid` int(8) NOT NULL DEFAULT '0',
  `obj_diamond` bigint(16) NOT NULL DEFAULT '0',
  `obj_gold` bigint(20) NOT NULL DEFAULT '0',
  `obj_register_time` bigint(20) NOT NULL DEFAULT '0',
  `obj_last_login_time` bigint(20) NOT NULL DEFAULT '0',
  `obj_game_inns` int(16) NOT NULL DEFAULT '0',
  `obj_game_winns` int(16) NOT NULL DEFAULT '0',
  `obj_kill_hero_num` int(16) NOT NULL DEFAULT '0',
  `obj_ass_kill_num` int(16) NOT NULL DEFAULT '0',
  `obj_dest_building_num` int(16) NOT NULL DEFAULT '0',
  `obj_dead_num` int(16) NOT NULL DEFAULT '0',
  `obj_first_win_time` bigint(20) NOT NULL DEFAULT '0',
  `obj_cur_lv_exp` int(11) NOT NULL DEFAULT '0',
  `obj_cldays` int(8) NOT NULL DEFAULT '0',
  `obj_friends` text COLLATE utf8_unicode_ci,
  `obj_last_loginreward_time` int(16) unsigned zerofill DEFAULT NULL,
  `obj_vip_lv` int(8) NOT NULL DEFAULT '0',
  `obj_vip_score` int(16) NOT NULL DEFAULT '0',
  `obj_task_data` varchar(4096) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`obj_id`),
  KEY `eUserPlatform` (`sdk_id`),
  KEY `szUserName` (`obj_cdkey`),
  KEY `szNickName` (`obj_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1576 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of gameuser
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_guide`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_guide`;
CREATE TABLE `gameuser_guide` (
  `obj_id` bigint(20) NOT NULL,
  `obj_cs_guide_com_steps` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `obj_ss_battle_steps` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of gameuser_guide
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_hero`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_hero`;
CREATE TABLE `gameuser_hero` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `hero_id` int(12) NOT NULL,
  `hero_end_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '闂傚倸鍊搁崐鎼佸磹閹间�?纾归柟闂�?绾惧綊鏌熼梻�?缁炬儳缍婇弻锝�?箣閿濆憛鎾绘煕閵堝懎?�?濠电偛�?堕悧鐘茬�?婵犵數濮烽弫鍛婃叏閻戣�?鏋侀柟闂�?绾剧�?��涢幋娆忕仾闁�?鍊濋弻鏇熺�?瑜嶉�?�?��繝鍥??婵炶?绠撻�?��板�??閸戠�?���?鍐ㄥ?缂佺�?���?���?�?吋鍣ч梺璇�?��閺呯�??婚敐澶婄?閻庨潧鎽滈悿�?⒑閸濆�?鐒跨紒缁樼箓閻ｅ�??�?���?闂傚倸鍊烽懗??闂佽?瀛╅�?宕￠�?濠电姵纰嶉弲�?鐠虹尨鍔?�?�?�?缂傚倸鍊搁崐鎼佸磹閹间�?纾归柟闂�?绾剧�?�?鎹ｉ�?�?�??闂傚倷娴�?銊╂倿閿曞�?�??�??闂傚倸鍊搁崐鎼佸磹�?�???�?閻熸粌绻�?��鎴﹀?閵堝�?闂佸湱鍋�?�?閸�?鈷戞慨鐟版搐閻忊晠鏌熺拠褏绡??鏇熷姍濡?�?��夐幒鎾存澑闂備胶�?敋缁?闂傚倷鐒︽繛濠囧绩闁?秴鍨傞柛�?�?缂傚倸鍊搁崐鎼佸磹閹间�?纾归柣鎴ｅГ閸ゅ�?鏌涢幘鑼?�?�??闂傚倸鍊峰�?�?濠电姷鏁搁崑�?�?洘鍋�?���?��帠缁诲�?鏌涢幘鑼跺厡�?�?闂傚倷鑳??�?缁�?�?鐠囨祴妲堟慨?閸曞啴�?�?��濠冨瘷闁?�?酣�?',
  `hero_buy_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '闂傚倸鍊搁崐鎼佸磹閹间�?纾归柟闂�?绾惧綊鏌熼梻�?缁惧墽鎳?�?閹癸綁鏌?�??�?闂佽崵鍠愰悷杈╃不閹�?�?缂傚倷鑳堕崑鎾�?磿閸?闁跨喓濮�?��鐔兼煟閺冨�?�?��紒鐘冲哺�?闂傚倷鑳堕幊鎾�?触鐎?婵炲棙鎸婚弲?�??�?缂傚倸鍊搁崐鎼佸磹�?�?���?闂傚倷娴�?銊ッ?闂備椒绱?徊鍧�??�?绠栭柣锝�?���?瑩鎮归幁鎺戝?闁哄?�?��?缁樻媴閾忕懓�?闂備胶绮?闁哥喐鎸抽悰?缂傚倸鍊搁崐鎼佸磹閹间�?纾瑰?�?捣閻?闂傚倸鍊峰ù鍥?閵娾晜鍊块柨鏇炲?缁犳牠鏌涚仦�?殤闁哄棴绠撻弻锝�?婢с垻�?闁哄�?��?俊鐑藉�?濠靛洤鐝旂紓浣介哺閻�??缂佹ɑ�?��柧蹇曟嚀缁�?繝�??闂傚倸鍊风粈�?箟闄�?��?�?�?�?閻庣懓鎲＄换鍌炲煘閹达附鍋愰�??闂傚倸鍊搁崐椋庣矆娓?绠熼柨鐔哄Т閽�?��鏌曟繛鐐?珕闁?閺屻劌鈹戦崱�?��?闂佸�?���?���?�?闂備礁鎼?幊蹇涙偂閿熺姴钃熸繛鎴欏灩閻掓椽鏌涢幇銊︽珖?�',
  `del_state` bit(1) NOT NULL DEFAULT b'0' COMMENT '闂傚倸鍊搁崐鎼佸磹閹间�?纾归柟闂�?绾惧綊鏌熼梻�?缁炬儳缍婇弻锝�?箣閿濆憛鎾绘煕閵堝懎?�?濠电偛�?堕悧鐘茬�?婵犵數濮烽弫鍛婃叏閻戣�?鏋侀柟闂�?绾剧�?��涢幋娆忕仾闁�?鍊濋弻鏇熺�?瑜嶉�?�?��繝鍥??婵炶?绠撻�?��板�??閸戠�?���?鍐ㄥ?缂佺�?���?���?�?吋鍣ч梺璇�?��閺呯�??婚敐澶婄?閻庨潧鎽滈悿�?⒑閸濆�?鐒跨紒缁樼箓閻ｅ�??�?���?闂傚倸鍊烽懗??闂佽?瀛╅�?宕￠�?濠电姵纰嶉弲�?鐠虹尨鍔?�?�?�?闂傚倸鍊搁崐鎼佸磹閻戣姤鍤勯柛鎾�?�?�?�?濠电姷鏁告慨鐑藉极閸涘﹥鍙忛柣鎴�?閺�?線鏌涘☉姗堟敾闁告瑥绻橀弻锝�?閻樺啿鏆堥梺鎼炲?�?鐏冮梺鎸庣箓閹冲酣�?抽悙鐑�?厱濠电姴鍊�?Σ濠氭煃鐟欏�?鐏撮�?鏅犲畷锝嗗緞?闂傚倷鑳剁划?骞愰�?���?��闁圭増�?�?���?煙鏉堥箖�?柛�??姍閺??闂傚倸鍊�?鎺旀??缁辩偞鎷呴崷?�?濞叉牠鎷?�?1�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of gameuser_hero
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_item`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_item`;
CREATE TABLE `gameuser_item` (
  `user_id` int(12) NOT NULL,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `item_num` int(8) NOT NULL DEFAULT '0',
  `buy_time` int(12) NOT NULL,
  `end_time` int(12) NOT NULL,
  PRIMARY KEY (`user_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameuser_item
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_mail`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_mail`;
CREATE TABLE `gameuser_mail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `mail_id` int(20) NOT NULL COMMENT 'mailid',
  `user_id` int(20) NOT NULL,
  `mail_state` int(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameuser_mail
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_money`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_money`;
CREATE TABLE `gameuser_money` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obj_id` bigint(20) NOT NULL,
  `obj_diamond` int(12) NOT NULL DEFAULT '0',
  `obj_gold` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameuser_money
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_runne`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_runne`;
CREATE TABLE `gameuser_runne` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL,
  `runnebag_json` text,
  `runeslot_json` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameuser_runne
-- ----------------------------

-- ----------------------------
-- Table structure for `gameuser_sns`
-- ----------------------------
DROP TABLE IF EXISTS `gameuser_sns`;
CREATE TABLE `gameuser_sns` (
  `user_id` int(12) NOT NULL,
  `related_id` int(12) NOT NULL,
  `relation` int(8) NOT NULL,
  PRIMARY KEY (`user_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameuser_sns
-- ----------------------------

-- ----------------------------
-- Table structure for `game_mail`
-- ----------------------------
DROP TABLE IF EXISTS `game_mail`;
CREATE TABLE `game_mail` (
  `mail_id` int(20) NOT NULL,
  `mail_sdk` int(8) NOT NULL DEFAULT '0',
  `mail_type` int(12) NOT NULL DEFAULT '0' COMMENT '�?婵犵數濮烽弫鍛婃叏閻戣�?鏋侀柛娑橈攻閸欏繘鏌ｉ幋�?闁哄?绶氶弻鐔兼⒒�?缂佹儳澧界划?鎹㈠☉銏�??婵犵數鍋為崹�?��偡閿曞�?纾块柣鏂�?��閻撳繐鈹戦悙�?虎闁告梹�?���?缂備胶绮?换鍫ュ箖娴犲??婵炵??缁插潡鎯?�?墎鎹�?���?闁哄洨鍠庨悘�??闂備胶绮?幐璇裁洪悢鐓庤摕闁绘柨鍚�?��?�?�?闁�?繑�??�?�?�?�??',
  `mail_user_id` int(20) DEFAULT NULL COMMENT '�?婵犵數濮烽弫鍛婃叏閻戣�?鏋侀柛娑橈攻閸欏繘鏌ｉ幋�?闁哄?绶氶弻鐔兼⒒�?缂佹儳澧界划?鎹㈠☉銏�??婵犵數鍋為崹�?��偡閿曞�?纾块柣鏂�?��閻撳繐鈹戦悙�?虎闁告梹�?���?缂備胶绮?�?缂備�?�?�?�??闂傚倸鍊搁崐鎼佸磹閹间�?纾归柣鎴ｅГ閸ゅ�?�?濞叉牜绮婚悩缁�?�?�?濠电偛�?堕悧婊呭垝缂佹�?閻庢�?閸�?敻�?�?��濠冨�?��绘帪绠戦埢�?夊即?闂佽?宕�?亸娆戠玻閺冨牊鐓�??閺�?�?��?�?闂傚倸鍊搁崐鎼佸磹閹间�?纾归柟闂�?绾惧綊鏌熼梻�?缁炬儳缍婇弻锝�?箣閿濆憛鎾绘煕婵犲�?鍋ラ�?闂備浇宕甸崰�?垝�??宕查柟鐑?�?棝鏌熼悜�?��亶闁�?閰ｉ弻鐔煎箚瑜忛�?闂傚倸鍊烽悞�?瑜嶈灋濞达綀鍊藉☉銏�??�?鐗忛幉鎼佹偋�?繄鐟查梺鎶芥敱閸ㄥ湱妲愰�???�?濠㈢懓妫涘�?�?闁�?﹥鎮傞幃?闂傚倸鍊搁崐鎼佸磹閹间�?纾归柣鎴ｅГ閸ゅ�?�?濞叉牜绮婚悩缁�?厵闁?�?濠电姷鏁告慨鐑藉极閸涘﹥�??闂傚倸鍊烽懗鍓佸�?�??�?繂鍋嶉悷婊勬?�?闂傚倸鍊搁崐鎼佸磹閹间�?纾归柟闂�?绾惧綊鏌熼梻�?缁惧墽鎳?�?閹癸綁鏌?�??�?�?�?�',
  `mail_title` varchar(128) NOT NULL COMMENT 'mail title',
  `mail_content` text NOT NULL COMMENT 'content',
  `mail_gift` text COMMENT '�?�?�?闂傚倸鍊搁崐鎼佸磹閹间�?纾瑰?�?捣閻?棗銆?�?闂傚倸鍊搁崐鐑芥倿閿曞�?绠栭�?娲栫�??key:value)',
  `mail_send` varchar(64) DEFAULT NULL,
  `mail_create_time` varchar(32) NOT NULL COMMENT '�?婵犵數濮烽弫鍛婃叏閻戣�?鏋侀柛娑橈攻閸欏繘鏌ｉ幋�?闁哄?绶氶弻鐔兼⒒�?缂佹儳澧界划?鎹㈠☉銏�??婵犵數鍋為崹�?��偡閿曞�?纾块柣鏂�?��閻撳繐鈹戦悙�?虎闁告梹�?���?�?锕ュ?浠�?箠閻�?���?闂傚倸鍊风粈�?�?铻為�?閳锋棃鏌?�?濠电姷鏁告慨?闂佸憡鎸荤换鍡涘Φ閹版澘绀?闁�???閳�?垿鎮╅幓鎺撴?�?闂傚倸鍊搁崐鐑芥�??闂傚倷绀�?���?瑜版帗鍋?�?�?闂傚倸鍊烽悞锔界箾婵犲洤缁╅�?绉撮崹鍌炴煕�?闁藉啰鍠�?��娑㈠箣閻�?���???銊︾?�?�?闂傚倸鍊搁崐椋庣矆娓?�?閾荤偞绻涢崱�??鞍闁�?绻濋弻�?夊传�?娅ｉ梺钘夊暟閸犳牠�?婚妸銉㈡�?�?�?闂備胶绮?悧鏇㈠Χ閹间胶�',
  `mail_over_time` varchar(32) NOT NULL,
  `mail_del_state` int(8) NOT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mail
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `platform_id` int(12) NOT NULL,
  `title` varchar(20) NOT NULL,
  `eflag` int(8) NOT NULL DEFAULT '0',
  `estate` int(8) NOT NULL DEFAULT '0',
  `priority` int(8) NOT NULL DEFAULT '0',
  `notice` varchar(200) NOT NULL,
  `star_time` int(16) NOT NULL DEFAULT '0',
  `end_time` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
