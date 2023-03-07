/*
 Navicat Premium Data Transfer

 Source Server         : old_computer
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 192.168.31.206:3306
 Source Schema         : virus

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 07/03/2023 12:49:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for air
-- ----------------------------
DROP TABLE IF EXISTS `air`;
CREATE TABLE `air` (
  `air` varchar(255) DEFAULT NULL,
  `ability` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of air
-- ----------------------------
BEGIN;
INSERT INTO `air` (`air`, `ability`) VALUES ('天津', 4);
INSERT INTO `air` (`air`, `ability`) VALUES ('沈阳', 4);
INSERT INTO `air` (`air`, `ability`) VALUES ('石家庄', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('太原', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('呼和浩特', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('郑州', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('郑州', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('西安', 4);
INSERT INTO `air` (`air`, `ability`) VALUES ('青岛', 5);
INSERT INTO `air` (`air`, `ability`) VALUES ('上海', 22);
INSERT INTO `air` (`air`, `ability`) VALUES ('成都', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('南京', 1);
INSERT INTO `air` (`air`, `ability`) VALUES ('南京', 1);
INSERT INTO `air` (`air`, `ability`) VALUES ('昆明', 2);
INSERT INTO `air` (`air`, `ability`) VALUES ('广州', 16);
INSERT INTO `air` (`air`, `ability`) VALUES ('广州', 16);
INSERT INTO `air` (`air`, `ability`) VALUES ('乌鲁木齐', 1);
INSERT INTO `air` (`air`, `ability`) VALUES ('厦门', 7);
INSERT INTO `air` (`air`, `ability`) VALUES ('厦门', 7);
INSERT INTO `air` (`air`, `ability`) VALUES ('福州', 1);
COMMIT;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(11) DEFAULT NULL,
  `location` text,
  `Diagnosis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `death` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `cure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dom
-- ----------------------------
DROP TABLE IF EXISTS `dom`;
CREATE TABLE `dom` (
  `id` int(255) DEFAULT NULL,
  `dia` int(255) DEFAULT NULL,
  `sus` int(255) DEFAULT NULL,
  `res` int(255) DEFAULT NULL,
  `de` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dom
-- ----------------------------
BEGIN;
INSERT INTO `dom` (`id`, `dia`, `sus`, `res`, `de`) VALUES (1, 1323, 458, 4795, 97306);
COMMIT;

-- ----------------------------
-- Table structure for global
-- ----------------------------
DROP TABLE IF EXISTS `global`;
CREATE TABLE `global` (
  `id` text,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `dia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of global
-- ----------------------------
BEGIN;
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('1', '美国', '22132045', '13143317', '374124');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('2', '印度', '10395278', '10016859', '150336');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('3', '巴西', '7961673', '7075664', '200498');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('4', '俄罗斯', '3297833', '2681373', '59628');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('5', '英国', '2898037', '6520', '78632');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('6', '法国', '2763370', '204680', '66700');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('7', '土耳其', '2296102', '2172251', '22264');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('8', '意大利', '2220361', '1572015', '77291');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('9', '西班牙', '2024904', '196958', '51675');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('10', '德国', '1869306', '1500469', '38304');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('11', '哥伦比亚', '1737347', '1580285', '45067');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('12', '阿根廷', '1690006', '1484794', '44122');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('13', '墨西哥', '1479835', '1119968', '129987');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('14', '波兰', '1356882', '1095616', '30241');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('15', '伊朗', '1268263', '1050553', '55933');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('16', '南非', '1170590', '938216', '31809');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('17', '乌克兰', '1133802', '801293', '20334');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('18', '秘鲁', '1022018', '962566', '37925');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('19', '荷兰', '862786', '10369', '12182');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('20', '印度尼西亚', '797723', '659437', '23520');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('21', '捷克', '794740', '649394', '12621');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('22', '罗马尼亚', '658958', '591596', '16410');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('23', '比利时', '655732', '0', '19883');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('24', '加拿大', '639693', '544047', '16595');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('25', '智利', '629176', '593235', '16913');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('26', '伊拉克', '600755', '551127', '12869');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('27', '孟加拉', '519905', '464446', '7718');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('28', '巴基斯坦', '495075', '450515', '10511');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('29', '瑞典', '482284', '0', '9262');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('30', '菲律宾', '482083', '449052', '9356');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('31', '瑞士', '474764', '317600', '8178');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('32', '以色列', '471048', '402913', '3552');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('33', '葡萄牙', '456533', '355701', '7472');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('34', '摩洛哥', '448678', '420569', '7645');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('35', '奥地利', '374730', '346901', '6568');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('36', '沙特阿拉伯', '363485', '355037', '6278');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('37', '塞尔维亚', '353907', '0', '3479');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('38', '匈牙利', '334836', '179541', '10325');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('39', '约旦', '304071', '284343', '3968');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('40', '巴拿马', '269091', '212656', '4321');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('41', '日本', '267065', '210295', '3674');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('42', '尼泊尔', '263605', '256644', '1903');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('43', '格鲁吉亚', '235491', '223695', '2694');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('44', '阿塞拜疆', '222885', '203527', '2845');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('45', '阿联酋', '221754', '199178', '694');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('46', '厄瓜多尔', '218385', '190350', '14158');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('47', '克罗地亚', '216848', '206310', '4266');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('48', '保加利亚', '207259', '130191', '8017');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('49', '白俄罗斯', '206796', '188789', '1489');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('50', '哈萨克斯坦', '205933', '180364', '2781');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('51', '黎巴嫩', '204699', '137582', '1566');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('52', '斯洛伐克', '198184', '138383', '2717');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('53', '丹麦', '177507', '148476', '1488');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('54', '多米尼加', '177493', '135587', '2423');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('55', '哥斯达黎加', '176407', '135475', '2286');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('56', '玻利维亚', '166981', '135186', '9287');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('57', '亚美尼亚', '161054', '147388', '2901');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('58', '立陶宛', '154550', '86109', '2076');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('59', '科威特', '152978', '148239', '938');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('60', '突尼斯', '152254', '113415', '5052');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('61', '摩尔多瓦', '148294', '136800', '3106');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('62', '埃及', '146809', '116775', '8029');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('63', '卡塔尔', '145271', '142314', '245');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('64', '巴勒斯坦', '145252', '127495', '1536');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('65', '希腊', '142777', '93764', '5146');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('66', '危地马拉', '141074', '129542', '4928');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('67', '斯洛文尼亚', '134545', '109148', '2922');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('68', '阿曼', '130070', '122556', '1505');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('69', '缅甸', '128772', '112048', '2799');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('70', '马来西亚', '128465', '102723', '521');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('71', '爱尔兰', '127657', '23364', '2307');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('72', '埃塞俄比亚', '127227', '113021', '1966');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('73', '洪都拉斯', '124899', '57348', '3192');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('74', '委内瑞拉', '114908', '108966', '1047');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('75', '波黑', '113392', '79465', '4211');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('76', '巴拉圭', '112856', '88724', '2352');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('77', '利比亚', '103515', '78268', '1558');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('78', '阿尔及利亚', '101382', '68589', '2792');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('79', '肯尼亚', '97733', '80306', '1702');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('80', '尼日利亚', '95934', '77982', '1330');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('81', '巴林', '94633', '91630', '353');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('82', '北马其顿', '85494', '66209', '2581');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('83', '吉尔吉斯斯坦', '81826', '77376', '1363');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('84', '乌兹别克斯坦', '77412', '75759', '615');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('85', '韩国', '66686', '47649', '1046');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('86', '阿尔巴尼亚', '61705', '36535', '1223');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('87', '新加坡', '58813', '58562', '29');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('88', '加纳', '55461', '54164', '336');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('89', '挪威', '53792', '17998', '467');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('90', '阿富汗', '53207', '43291', '2253');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('91', '黑山', '51160', '41191', '712');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('92', '萨尔瓦多', '47948', '42668', '1390');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('93', '卢森堡', '47592', '44187', '521');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('94', '斯里兰卡', '46780', '39661', '219');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('95', '拉脱维亚', '46545', '34268', '790');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('96', '芬兰', '37772', '31000', '584');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('97', '乌干达', '37074', '12544', '297');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('98', '爱沙尼亚', '31751', '21567', '265');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('99', '澳大利亚', '28568', '25811', '909');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('100', '喀麦隆', '26848', '24892', '448');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('101', '纳米比亚', '26682', '22666', '240');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('102', '塞浦路斯', '26208', '2057', '140');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('103', '赞比亚', '24297', '19980', '423');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('104', '乌拉圭', '23807', '17098', '231');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('105', '苏丹', '23316', '13524', '1468');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('106', '科特迪瓦', '23173', '22301', '138');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('107', '塞内加尔', '20376', '17885', '438');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('108', '莫桑比克', '19961', '17455', '176');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('109', '刚果（金）', '18738', '14735', '610');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('110', '津巴布韦', '18675', '12083', '446');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('111', '安哥拉', '17974', '11955', '413');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('112', '马达加斯加', '17767', '17298', '262');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('113', '博茨瓦纳', '16050', '12927', '48');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('114', '毛里塔尼亚', '15214', '13037', '378');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('115', '马尔代夫', '13988', '13238', '49');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('116', '几内亚', '13862', '13215', '81');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('117', '马耳他', '13776', '11613', '228');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('118', '古巴', '13479', '11390', '148');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('119', '牙买加', '13368', '11253', '306');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('120', '塔吉克斯坦', '13305', '13153', '90');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('121', '佛得角', '12146', '11665', '113');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('122', '叙利亚', '12084', '5824', '755');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('123', '伯利兹', '11152', '10344', '267');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('124', '斯威士兰', '10773', '7377', '268');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('125', '海地', '10203', '8725', '236');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('126', '加蓬', '9641', '9453', '66');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('127', '泰国', '9636', '4521', '67');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('128', '卢旺达', '9225', '6940', '113');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('129', '安道尔', '8348', '7615', '84');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('130', '巴哈马', '7959', '6297', '175');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('131', '布基纳法索', '7713', '5533', '89');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('132', '马拉维', '7611', '5791', '203');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('133', '马里', '7427', '5161', '286');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('134', '特立尼达和多巴哥', '7210', '6774', '127');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('135', '刚果（布）', '7127', '5846', '108');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('136', '苏里南', '6750', '6080', '130');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('137', '圭亚那', '6469', '5990', '167');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('138', '尼加拉瓜', '6097', '4225', '166');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('139', '吉布提', '5857', '5766', '61');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('140', '冰岛', '5845', '5690', '29');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('141', '赤道几内亚', '5286', '5154', '86');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('142', '中非共和国', '4963', '1924', '63');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('143', '索马里', '4726', '3639', '130');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('144', '莱索托', '4351', '1549', '76');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('145', '多哥', '3845', '3560', '72');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('146', '冈比亚', '3833', '3677', '125');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('147', '尼日尔', '3706', '2253', '119');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('148', '贝宁', '3304', '3185', '44');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('149', '塞拉利昂', '2757', '1973', '77');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('150', '圣马力诺', '2583', '2179', '64');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('151', '几内亚比绍', '2455', '2398', '45');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('152', '乍得', '2358', '1918', '105');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('153', '列支敦士登公国', '2309', '2084', '48');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('154', '新西兰', '2188', '2101', '25');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('155', '也门', '2104', '1405', '610');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('156', '利比里亚', '1779', '1406', '83');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('157', '越南', '1509', '1353', '35');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('158', '蒙古', '1308', '884', '1');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('159', '厄立特里亚', '1252', '643', '1');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('160', '科摩罗', '1050', '802', '16');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('161', '摩纳哥', '1018', '793', '3');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('162', '布隆迪', '885', '773', '2');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('163', '巴布亚新几内亚', '799', '755', '9');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('164', '不丹', '767', '459', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('165', '巴巴多斯', '743', '327', '7');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('166', '钻石号邮轮', '712', '699', '13');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('167', '毛里求斯', '539', '514', '10');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('168', '坦桑尼亚', '509', '183', '21');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('169', '柬埔寨', '385', '362', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('170', '圣卢西亚', '382', '292', '5');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('171', '塞舌尔', '313', '214', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('172', '文莱', '173', '149', '3');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('173', '安提瓜和巴布达', '163', '149', '5');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('174', '圣文森特和格林纳丁斯', '149', '100', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('175', '格林纳达', '127', '107', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('176', '多米尼克', '105', '93', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('177', '斐济', '53', '44', '2');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('178', '东帝汶', '49', '40', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('179', '老挝', '41', '40', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('180', '马提尼克岛', '37', '0', '1');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('181', '圣基茨和尼维斯', '33', '31', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('182', '梵蒂冈', '27', '15', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('183', '所罗门群岛', '17', '5', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('184', '马绍尔群岛', '4', '4', '0');
INSERT INTO `global` (`id`, `location`, `dia`, `res`, `de`) VALUES ('185', '瓦努阿图', '1', '1', '0');
COMMIT;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` text,
  `dia` varchar(255) DEFAULT NULL,
  `sus` varchar(255) DEFAULT NULL,
  `cur` varchar(255) DEFAULT NULL,
  `de` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of history
-- ----------------------------
BEGIN;
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (1, '01.11', '41', '0', '2', '1');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (2, '01.12', '41', '0', '6', '1');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (3, '01.13', '41', '0', '7', '1');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (4, '01.14', '41', '0', '7', '1');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (5, '01.15', '41', '0', '12', '2');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (6, '01.16', '45', '0', '15', '2');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (7, '01.17', '62', '0', '19', '2');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (8, '01.18', '198', '0', '24', '3');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (9, '01.19', '198', '0', '25', '3');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (10, '01.20', '291', '54', '25', '5');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (11, '01.21', '440', '54', '27', '9');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (12, '01.22', '574', '311', '28', '17');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (13, '01.23', '835', '1072', '34', '25');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (14, '01.24', '1297', '1965', '38', '41');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (15, '01.25', '1975', '2684', '49', '56');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (16, '01.26', '2744', '5794', '51', '80');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (17, '01.27', '4515', '6973', '60', '106');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (18, '01.28', '5974', '9239', '103', '132');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (19, '01.29', '7711', '12167', '124', '170');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (20, '01.30', '9692', '15238', '171', '213');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (21, '01.31', '11791', '17988', '243', '259');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (22, '02.01', '14380', '19544', '328', '304');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (23, '02.02', '17205', '21558', '475', '361');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (27, '02.03', '20438', '23214', '632', '425');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (28, '02.04', '24324', '23260', '892', '490');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (401, '02.05', '28018', '24702', '1153', '563');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (402, '02.06', '28985', '26359', '1540', '636');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (403, '02.07', '31774', '27657', '2050', '722');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (404, '02.08', '33738', '28942', '2649', '811');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (405, '02.09', '35982', '23589', '3281', '908');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (406, '02.10', '37626', '21675', '3996', '1016');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (407, '02.11', '38800', '16067', '4740', '1113');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (408, '02.12', '52526', '13435', '5911', '1367');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (409, '02.13', '55748', '10109', '6723', '1380');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (410, '02.14', '56873', '8969', '8096', '1523');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (411, '02.15', '57416', '8228', '9419', '1665');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (412, '02.16', '57934', '7264', '10844', '1770');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (413, '02.17', '58016', '6242', '12552', '1868');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (414, '02.17', '57805', '5248', '14376', '2004');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (415, '02.19', '56303', '4922', '16155', '2118');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (416, '02.20', '54965', '5206', '18264', '2236');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (417, '02.21', '47647', '4490', '20659', '2250');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (418, '02.22', '51606', '4148', '22888', '2442');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (419, '02.23', '49824', '3434', '24734', '2592');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (420, '02.24', '47672', '2824', '27323', '2663');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (421, '02.25', '45604', '2491', '29745', '2715');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (422, '02.26', '43258', '2358', '32495', '2744');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (423, '02.27', '39919', '2308', '36117', '2788');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (424, '02.28', '37414', '1418', '39002', '2835');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (425, '02.29', '35329', '851', '41625', '2870');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (426, '03.01', '32652', '715', '44462', '2912');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (427, '03.02', '30004', '587', '47204', '2943');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (428, '03.03', '27433', '520', '49856', '2981');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (429, '03.04', '25352', '522', '52045', '3012');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (430, '03.05', '23784', '482', '53726', '3042');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (431, '03.06', '22177', '502', '55404', '3070');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (432, '03.07', '20533', '458', '57065', '3097');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (433, '03.08', '19016', '421', '58600', '3119');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (434, '03.09', '17721', '349', '59897', '3136');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (435, '03.10', '16145', '285', '61475', '3158');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (436, '03.11', '14831', '253', '62793', '3169');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (437, '03.12', '13526', '147', '64111', '3176');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (438, '03.13', '12094', '115', '65541', '3189');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (439, '03.14', '10734', '113', '66911', '3199');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (440, '03.15', '9898', '134', '67749', '3213');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (441, '03.16', '8976', '128', '68679', '3226');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (443, '03.18', '7263', '105', '70420', '3245');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (444, '03.19', '6569', '104', '71150', '3248');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (445, '03.20', '6013', '106', '71740', '3255');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (446, '03.21', '5549', '118', '72244', '3261');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (447, '03.22', '5120', '136', '72703', '3270');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (448, '03.23', '4735', '132', '73159', '3277');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (449, '03.24', '4287', '134', '73650', '3281');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (450, '03.25', '3947', '159', '74051', '3287');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (451, '03.26', '3460', '189', '74588', '3292');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (452, '03.27', '3128', '184', '74971', '3295');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (455, '03.28', '2691', '174', '75448', '3300');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (456, '03.29', '2396', '168', '75770', '3304');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (457, '03.30', '2161', '183', '76052', '3305');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (458, '04.01', '2004', '172', '76238', '3312');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (459, '04.02', '1727', '135', '76571', '3322');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (460, '04.02', '1562', '114', '76751', '3326');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (461, '04.03', '1562', '114', '76751', '3326');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (462, '04.04', '1376', '107', '76964', '3329');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (463, '04.05', '1299', '88', '77078', '3331');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (464, '04.06', '1242', '89', '77167', '3331');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (465, '04.07', '1190', '83', '77279', '3333');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (466, '04.08', '1160', '73', '77370', '3335');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (467, '04.09', '1116', '53', '77370', '3336');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (468, '04.10', '1089', '44', '77525', '3339');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (469, '04.11', '1089', '44', '77525', '3339');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (470, '04.11', '1138', '82', '77575', '3339');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (471, '04.12', '1156', '72', '77663', '3341');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (472, '04.13', '1170', '72', '77738', '3341');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (473, '04.14', '1137', '73', '77816', '3342');
INSERT INTO `history` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (474, '04.15', '1107', '63', '77892', '3342');
COMMIT;

-- ----------------------------
-- Table structure for huai
-- ----------------------------
DROP TABLE IF EXISTS `huai`;
CREATE TABLE `huai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lo` text,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of huai
-- ----------------------------
BEGIN;
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (1, '淮安区', '1.24淮安市新型冠状病毒感染的肺炎疫情通报', '52岁，男，已在武汉居住生活20年，2020年1月19日回淮安，1月20日发热咳嗽，1月23日入淮安市第四人民医院。患者有高血压史10年，有心脏支架史。1月24日采样检测新型冠状病毒核酸呈阳性，经过市级专家组会诊确定为新型冠状病毒感染的肺炎疑似病例，当晚将样本送省疾控中心复核，现被省卫健委确认为新型冠状病毒感染的肺炎确诊病例，这是我市第一例由武汉输入的确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (2, '淮安区', '1.27淮安市新型冠状病毒感染的肺炎疫情通报', '患者为男性，49岁，淮安区人，此前在武汉居住生活了3年。2020年1月15日独自驾车回淮安，1月19日起自觉不适、发热，1月25日前往淮安区淮城镇卫生院发热门诊就诊，胸部X线检查显示“肺部炎症性病变”，随即被120专车送至淮安市第四人民医院住院治疗。　　入院后采样检测新型冠状病毒核酸结果呈阳性，经复核，被省卫健委确认为新型冠状病毒感染的肺炎确诊病例。这是我市第二例由武汉输入的确诊病例，其密切接触者目前已排查清楚，并被隔离观察。据初步了解：该患者于2020年 ◎1月15日驾车从武汉回淮安。 ◎1月18日0时左右驾车进入浅深洗浴,8时驾车回红桥村老家。 ◎1月19日11时左右驾车至恒丰义乌城, 15时左右乘坐朋友车到新城, 19时驾车到浅深洗浴,21时进入浅深浴场至次日8时左右回家。 ◎1月21日14时至18时在御景城浴室。 ◎1月22日17时从法院东门乘坐60路苏H3333D公交车到大润发，19时乘坐苏HX518A快车。 ◎1月23日16时至18时在书香门第附近上海理发店理发。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (3, '清江浦区', '1.29淮安市新型冠状病毒感染的肺炎疫情通报', '患者为女性，55岁，清江浦区人，此前在武汉市居住工作10余年。2020年1月20日9点40分，患者与其儿子在武汉武昌站乘坐D3044次开往南京南站的高铁，13点21分抵达南京南站；在南京南站转乘15点25分到淮安汽车客运南站的大巴，18点30分左右抵达淮安汽车客运南站；后又乘坐1路公交车到达市区淮海广场站下车自行回家。\r\n\r\n　　1月22日，患者自觉发热，体温37.5℃，在家口服感冒药1次；1月23日前往淮安市第一人民医院就诊，胸部CT检查提示左上肺少许炎症，住院隔离观察；1月25日症状加重，转至淮安市第四人民医院，胸部CT检查提示左肺上叶片状影、左肺舌段见少许磨玻璃影，随即收治入院。患者新型冠状病毒检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是由武汉输入的确诊病例，其在淮密切接触者目前均已被隔离观察。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (4, '淮安区', '1.30淮安市新型冠状病毒感染的肺炎疫情通报', '患者一为女性，50岁，淮安区人，此前在武汉市从事肉类及蔬菜经营，2020年1月23日凌晨3点01分，患者乘坐D4696次列车从武汉汉口站出发前往南京南站，8点10分在南京南站乘坐大巴回淮，约11点左右抵达淮安，后乘坐出租车回家。1月26日，患者自觉不适，呼叫120专车前往淮安市淮安医院就诊，胸部CT检查提示两肺磨玻璃样改变，随即被120专车送至淮安市第四人民医院住院隔离治疗。患者新型冠状病毒检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (5, '淮安区', '1.30淮安市新型冠状病毒感染的肺炎疫情通报', '患者二为男性，59岁，淮安区人，此前在武汉市从事肉类及水产经营，2020年1月23日中午12时在武汉乘坐私人大巴返乡，1月24日凌晨4点到达淮安汽车客运北站，后乘私家车返回家中；1月26日，患者自觉不适，由120专车送至淮安市第四人民医院就诊，入院时体温检测达37.7℃，胸部CT显示两肺多发斑片状、磨玻璃样改变。患者新型冠状病毒检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (6, '淮安区', '1.30淮安市新型冠状病毒感染的肺炎疫情通报', '患者三为男性，33岁，淮安区人，2020年1月16日到武汉，1月18日乘坐东方航空MU2622从武汉飞往广州，1月20日搭乘深航ZH9855从广州飞往南京，早上9点30分在南京拼车回淮安，下午14点到家。1月22日，患者自觉不适，当晚前往淮安市淮安医院就诊，进行输液和口服药治疗；1月28日，患者胸部CT检查显示左上肺及两下肺炎症，被转至淮安市第四人民医院隔离治疗。患者新型冠状病毒检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (7, '淮安区', '1.30淮安市新型冠状病毒感染的肺炎疫情通报', '患者四为女性，49岁，淮安区人，此前在武汉市从事肉类及水产经营，2020年1月23日凌晨3点01分，患者与丈夫乘坐D4696次列车从武汉汉口站出发，5点40分抵达南京南站，6点50分在南京南站乘坐大巴回淮，约9点30分抵达淮安汽车客运东站，出站后与其丈夫乘坐电动三轮车回家；1月24日上午，患者因头痛前往淮安市淮安医院就诊，胸部CT检查显示右下肺炎症，被收治入院隔离治疗；1月28日晚，患者由120专车转至淮安市第四人民医院住院隔离治疗。患者新型冠状病毒检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (8, '淮安区', '1.31淮安市新型冠状病毒感染的肺炎疫情通报', '患者一为女性，32岁，淮安区人，无武汉居住史和旅行史，该患者与我市第六例确诊的新型冠状病毒感染的肺炎患者为夫妻关系，系密切接触者。2020年1月28日，患者出现发热、乏力、咳嗽等症状，自测体温37.5℃，当天下午前往淮安市淮安医院发热门诊就诊，当即入院隔离观察治疗。患者新型冠状病毒核酸检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是我市第八例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (9, '淮安区', '1.31淮安市新型冠状病毒感染的肺炎疫情通报', '患者二为男性，50岁，淮安区人，无武汉居住史和旅行史，该患者与我市第二例确诊的新型冠状病毒感染的肺炎患者为邻居关系，系密切接触者。2020年1月28日，患者出现发热、寒战、乏力等症状，最高体温39.4℃，随即前往淮安市淮安医院发热门诊就诊，当即入院隔离观察治疗。患者新型冠状病毒核酸检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是我市第九例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (10, '淮安区', '1.31淮安市新型冠状病毒感染的肺炎疫情通报', '患者三为女性，71岁，淮安区人，无武汉居住史和旅行史，该患者与我市第二例确诊的新型冠状病毒感染的肺炎患者为母子关系，系密切接触者。2020年1月26日，因自觉不适，前往淮安区淮城卫生院就诊，接诊医生高度怀疑其被感染，呼叫120专车送至淮安市第四人民医院，被收治入院隔离观察治疗。患者新型冠状病毒核酸检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是我市第十例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (11, '淮安区', '1.31淮安市新型冠状病毒感染的肺炎疫情通报', '病例1：男，76岁，现住淮安市淮安区，无武汉居住史和旅行史，是我市第二例确诊新型冠状病毒感染的肺炎患者的父亲，系密切接触者。2020年1月25日，患者因身体不适乘私家车前往淮安区淮城卫生院就诊，测量体温38.5℃，X线检查显示肺部正常，遵医嘱前往淮安市淮安医院发热门诊就诊。1月26日，其子被确诊为新型冠状病毒感染的肺炎，患者作为密切接触者，由淮安区卫健委安排120专车送至淮安市第四人民医院，接受隔离观察治疗。患者新型冠状病毒核酸检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是我市第11例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (12, '涟水县', '1.31淮安市新型冠状病毒感染的肺炎疫情通报', '病例2：女，54岁，现住淮安市涟水县，无武汉居住史和旅行史，是苏州市一例新型冠状病毒感染的肺炎患者的妻子，系密切接触者。2020年1月29日，患者出现发热、咳嗽、鼻塞、流涕等症状，由120专车送至涟水县人民医院发热门诊就诊，接受隔离观察治疗。患者新型冠状病毒核酸检测结果呈阳性，随即被转至淮安市第四人民医院，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是我市第12例确诊病例。务农在家。其丈夫在苏州打工，于2020年1月29日在苏州被确诊为新型冠状病毒感染的肺炎。患者活动轨迹如下：该患者自述除与其苏州回来的丈夫及其他家庭成员有密切接触外，一直在本地无外出，只是与村庄邻居有接触。 ◎该患者丈夫于2020年1月23日13时10分乘坐苏H6408C客车从苏州至涟水，20时10分左右到涟水汽车站，于20时20分左右在涟水汽车站乘出租车（车牌号苏HN575Z）回家。 ◎24日上午无外出，下午骑电瓶车到城东林场某超市购买香烟。 ◎25日、26日至王某、章某等亲戚朋友家拜年。 ◎26日11时30分左右到涟城街道工业集中区某饭店就餐。 ◎27日上午10时左右从涟城街道工业园区乘顺风车（越野车，车内驾驶员1人）于10点20左右到涟水汽车站，13点20分乘苏E6P568客车至苏州汽车南站。 ◎2020年1月29日8时左右，患者出现发热、咳嗽、鼻塞、流涕等症状，13时29分，由120救护车转运至定点医院发热门诊就诊。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (13, '淮安区', '2.1淮安市新型冠状病毒感染的肺炎疫情通报', '男，44岁，现住淮安市淮安区，无武汉居住史和旅行史。2020年1月26日晚，患者出现全身乏力、肌肉酸痛等症状，自行服用阿莫西林和奥司他韦；1月29日晚，自觉病情加重，胸部CT检查显示肺部感染，留淮安市淮安医院隔离观察；1月30日，患者新型冠状病毒核酸检测结果呈阳性，随即转至淮安市第四人民医院。经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎。该患者是我市第13例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (14, '清江浦区', '2.3淮安市新型冠状病毒感染的肺炎疫情通报', '男，60岁，现住淮安市清江浦区，无湖北居住史和旅行史，自述其妻曾接触过湖北来淮的发热患者。1月27日出现发热、头痛、畏寒等症状；2月1日至淮安市第一人民医院就诊，接受隔离观察治疗，后转至淮安市第四人民医院；2月3日被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第19例确诊病例。现住亿力未来城。1月27日出现发热等不适症状，2月3日被确诊为新型冠状病毒感染的肺炎。据初步了解，患者1月24日中午在淮阴区淮扬府大酒店参加家庭聚餐；25日10-13时到康城明珠，14-15时到都天商城看望长辈；26日9-11时陪女儿到市保健院计划生育科就诊，在乳腺中心候诊区等候；27日15-16时到亿力未来城三期对面广济、天颐药店购药；28日15时到同济医院内科就诊，取药后在输液大厅输液，17时离开；29-30日每天15-17时在同济医院输液大厅输液；2月1日8时20分到市中医院就诊，经预检分诊后离开，8时50分到市一院就诊，接受隔离观察治疗，于2月2日1时35分转至市四院。该患者出行均自驾。据初步了解，患者\r\n◎1月24日中午在淮阴区淮扬府大酒店参加家庭聚餐；\r\n◎25日10-13时到康城明珠，14-15时到都天商城看望长辈；\r\n◎26日9-11时陪女儿到市保健院计划生育科就诊，在乳腺中心候诊区等候；\r\n◎27日15-16时到亿力未来城三期对面广济、天颐药店购药；\r\n◎28日15时到同济医院内科就诊，取药后在输液大厅输液，17时离开；\r\n◎29-30日每天15-17时在同济医院输液大厅输液；\r\n◎2月1日8时20分到市中医院就诊，经预检分诊后离开，8时50分到市一院就诊，接受隔离观察治疗，\r\n◎2月2日1时35分转至市四院。该患者出行均自驾。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (15, '淮阴区', '2.3淮安市新型冠状病毒感染的肺炎疫情通报', '男，29岁，现住淮安市淮阴区，有武汉居住史。1月22日乘坐K1624次武昌开往连云港方向列车，1月23日7点40分换乘D5691次连云港开往涟水方向动车，于8点28分到达涟水站，出站后乘坐出租车回家。1月29日，因发热前往淮阴医院发热门诊就诊，接受隔离观察治疗；2月2日转至淮安市第四人民医院；2月3日被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第20例确诊病例。2020年1月22日自湖北省武汉市启程回淮，1月22日16点26分乘坐K1624次（6号车厢8号中铺）武昌开往连云港方向列车，\r\n◎1月23日7点40分换乘D5691次（3号车厢6F）连云港开往涟水方向动车，于8点28分到达涟水站，出站后乘坐出租车（已查清）于9点回到淮高镇家中。\r\n◎1月26日出现发热等不适症状，\r\n◎1月27日上午由120送往淮安市第四人民医院发热门诊就诊，11点从四院门口乘坐16路公交车（苏H17225）至香港路站下车，13点乘坐老张集专线（苏HC6027）回家，路途全程佩戴口罩；\r\n◎1月29日中午12点在医务人员陪同下，骑电动车至老张集卫生院发热门诊就诊，14点骑电动车回家；\r\n◎1月30日下午18点由120送至淮阴医院发热门诊就诊，接受隔离观察治疗，\r\n◎2月2日转至淮安市第四人民医院。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (16, '清江浦区', '2.3淮安市新型冠状病毒感染的肺炎疫情通报', '女，30岁，现住淮安市清江浦区，无湖北居住史和旅行史，是我市一名确诊患者的女儿，系密切接触者。1月27日隔离观察期间出现发热、恶心、呕吐等症状；1月29日退烧；2月2日，转至淮安市第四人民医院隔离观察治疗；2月3日被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第22例确诊病例。现住郦城国际。1月27日出现发热等不适症状，2月3日被确诊为新型冠状病毒感染的肺炎。         据初步了解，患者1月24日中午乘私家车到淮阴区淮扬府大酒店参加家庭聚餐，14时30分至17时30分，乘私家车到淮海西路浦发银行值班，其一人在岗，后骑自行车于18时到盛世名门公婆家中；26日9-11时乘私家车到市保健院计划生育科就诊，10时左右做B超；31日8时30分至11时30分，骑自行车到淮海西路浦发银行值班，其一人在岗；2月2日23时40分至市四院隔离观察治疗。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (17, '淮阴区', '2.3淮安市新型冠状病毒感染的肺炎疫情通报', '男，54岁，现住淮安市淮阴区，无湖北居住史和旅行史。1月26日，患者出现发热症状；2月1日，前往淮阴医院发热门诊就诊，接受隔离观察治疗；2月2日转至淮安市第四人民医院；2月3日被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第21例确诊病例。患者自诉1月12日至18日独自驾车至爱琴海小区和三树镇周集村，1月21日驾车到淮海菜场；1月22日中午驾车到周集酒席帮办；1月23日7点自驾车到淮海菜场买菜，8点左右回到爱琴海小区家中未再出门；1月25日白天在爱琴海小区西门活动，20点左右驱车前往清江浦区盐河镇杨庙村5组，停留2小时后又驱车前往楚州商贸城对面林庄新村，停留30分钟，22点30分住清江浦区中交香槟国际，1月26日上午独自开车回三树镇家中，下午16点发热；1月26-29日每天到三树周集村卫生室输液；1月30日8点独自驱车至三树卫生院门诊输液治疗；20点独自开车前往淮阴医院门诊输液治疗；1月31日前往三树周集村卫生室输液治疗；2月1日早自行驱车前往淮阴医院发热门诊就诊，接受隔离观察治疗；2月2日转至淮安市第四人民医院。◎1月12号至18号独自驾车爱琴海小区和三树镇周集村，\r\n◎1月21号驾车到淮海菜场，\r\n◎1月22号中午驾车到周集酒席帮办，\r\n◎1月23号7：00自驾车到淮海菜场买菜，8：00左右回到爱琴海小区家中未再出门。\r\n◎1月25日白天在爱琴海小区西门活动，20：00左右，驱车前往清江浦区盐河镇杨庙村5组，停留2小时后又驱车前往楚州商贸城对面林庄新村，停留30分钟，22:30住清江浦区中交香槟国际，\r\n◎1月26日上午独自开车回三树镇家中，下午16:00发热，\r\n◎1月26-29日每天到三树周集村卫生室输液，\r\n◎1月30日早8点独自驱车至三树卫生院门诊输液治疗。\r\n◎1月30晚20点独自开车前往淮阴医院门诊输液治疗。\r\n◎1月31日前往三树周集村卫生室输液治疗。\r\n◎2月1日早自行驱车前往淮阴医院发热门诊就诊，接受隔离观察治疗，\r\n◎2月2日转至淮安市第四人民医院。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (18, '淮安区', '2.2淮安市新型冠状病毒感染的肺炎疫情通报', '男，64岁，现住淮安市淮安区，无武汉居住史和旅行史，与我市第六例、第八例确诊患者有密切接触。患者于2020年1月29日在淮安市第四人民医院隔离观察治疗，自觉无不适症状；1月31日，患者新型冠状病毒核酸检测结果呈阳性，经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎，是我市第14例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (19, '淮安区', '2.2淮安市新型冠状病毒感染的肺炎疫情通报', '男，31岁，现住淮安市淮安区，无湖北居住史和旅行史，与我市第二例确诊患者有过接触。2020年1月30日，患者因畏寒、发热，到淮安市淮安医院发热门诊就诊，接受隔离观察治疗，新型冠状病毒核酸检测结果呈阳性，后转至淮安市第四人民医院隔离观察治疗。经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎，是我市第15例确诊病例。\r\n据初步了解：该患者于\r\n◎1月20日3时-13时在浅深浴场，后乘坐苏HD00536到镇淮楼附近园外苑。19时乘坐苏H16M83从总工会宿舍到亿源国际小区。21时乘坐苏H2U73从布丁酒店到如意里西门，22时许乘苏H1668K从如意里到河下布丁酒店打牌直至次日上午。\r\n◎1月21日10时乘苏H1Z500到希尔顿浴场，18时离开。\r\n◎1月22日9时左右乘苏H182L1到关天培路天竹宾馆，23时乘坐苏HDO9583从家中到河下布丁酒店周围打牌至23日上午8时许，乘坐苏H9693W从布丁酒店到镇淮楼西路交通局附近，9时又乘苏HZH605从交通局到希尔顿浴场\r\n◎1月24日15时乘苏H9017A从如意里到三堡乡盛庄村，16时乘苏H1338S回家。\r\n◎1月25日19时乘苏HSA653从如意里到镇淮楼园外苑，在兴旺大排档与亲友吃饭。\r\n◎1月30日10左右到淮安医院。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (20, '淮安区', '2.2淮安市新型冠状病毒感染的肺炎疫情通报', '男，50岁，现住淮安市淮安区，无湖北居住史和旅行史，与我市第二例确诊患者有过接触。2020年1月26日，患者出现畏寒、发热、咳嗽等症状，至淮安市淮安医院接受隔离观察治疗，新型冠状病毒核酸检测结果呈阳性，后转至淮安市第四人民医院隔离观察治疗。经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎，是我市第16例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (21, '淮安区', '2.2淮安市新型冠状病毒感染的肺炎疫情通报', '男，49岁，现住淮安市淮安区，无湖北居住史和旅行史。2020年1月29日出现头痛、乏力、发热等症状；2月1日，前往淮安市第一人民医院就诊，接受隔离观察治疗，新型冠状病毒核酸检测结果呈阳性，后转至淮安市第四人民医院隔离观察治疗。经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎，是我市第17例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (22, '淮安区', '2.2淮安市新型冠状病毒感染的肺炎疫情通报', '男，37岁，现住淮安市淮安区，无湖北居住史和旅行史。2020年1月30日因发热、咳嗽，前往淮安区施河镇卫生院就诊，后转至淮安市淮安医院隔离观察治疗，新型冠状病毒核酸检测结果呈阳性；2月1日，转至淮安市第四人民医院隔离观察治疗。经市级专家组会诊，省卫健委复核，确定为新型冠状病毒感染的肺炎，是我市第18例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (23, '金湖县', '2.4淮安市新型冠状病毒感染的肺炎疫情通报', '女，37岁，现住金湖县黎城街道桓裕广场，无湖北居住史和旅行史，与我市一例确诊病例的密切接触者有接触。1月28日出现发热症状，先后前往金湖县中医院、金湖县人民医院就诊；2月2日转至淮安市第四人民医院隔离观察治疗；2月4日被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第23例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (24, '淮安区', '2.4淮安市新型冠状病毒感染的肺炎疫情通报', '女，49岁，现住淮安区河下街道锦绣江南小区，无湖北居住史和旅行史，是我市一例确诊患者的妻子，系密切接触者。1月29日出现鼻塞症状，接受抗感染治疗；2月1日，出现发热、咳嗽、畏寒等症状，口服抗病毒药物；2月2日晚症状加重，至淮安市淮安医院发热门诊就诊，由120专车送往淮安市楚州中医院隔离观察治疗；2月3日转至淮安市第四人民医院；2月4日被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第24例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (25, '淮阴区', '2.4淮安市新型冠状病毒感染的肺炎疫情通报', '女，26岁，现住淮阴区富豪花园A区，无湖北居住史和旅行史。1月28日出现发热、乏力、肌肉酸痛等症状，至淮安区范集镇卫生院就诊；1月31日起输液治疗3天；2月2日，至淮安市第一人民医院发热门诊就诊；2月4日转至淮安市第四人民医院，被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第25例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (26, '清江浦区', '2.4淮安市新型冠状病毒感染的肺炎疫情通报', '男，44岁，现住清江浦区生态文旅区徐杨小区二期，无湖北居住史和旅行史。1月23日下午前往淮安区浅深休闲酒店；1月30日出现发热症状，1月30日-2月1日连续3天下午在开发区徐杨卫生院输液治疗；2月2日下午至淮安市第一人民医院就诊，接受隔离观察治疗；2月4日转至淮安市第四人民医院，被确诊为新型冠状病毒感染的肺炎，目前病情平稳，是我市第26例确诊病例。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (31, '清江浦区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '女，51岁，现住清江浦区洪福小区，无湖北居住史和旅行史，是我市确诊病例的密切接触者。2月2日出现头痛、发热等症状，服用消炎药和退烧药；2月3日仍感不适，由120专车送至淮安市第四人民医院隔离观察治疗；2月5日被确诊为新型冠状病毒感染的肺炎，目前病情平稳。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (32, '清江浦区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '男，32岁，现住清江浦区郦城国际小区，无湖北居住史和旅行史，是我市确诊病例的密切接触者。1月19日晚至1月20日凌晨在淮安区浅深浴室洗浴；1月25日出现头痛、咳嗽、发热等症状，服用感冒药后好转；因其岳父和妻子被确诊为新型冠状病毒感染的肺炎，2月2日起被集中隔离观察；2月3日转至淮安市第四人民医院；2月5日被确诊为新型冠状病毒感染的肺炎，目前病情平稳。据初步了解，患者1月19日19-21时在淮安区十月围炉饭店聚餐，21时至次日6时在淮安区浅深洗浴中心休息；20-22日在金湖县移动公司上班；22日18-22时在金湖县御沁园饭店聚餐；23日12-13时在开元路厚生香港小吃餐厅聚餐；24日11- 14时在淮阴区淮扬府大酒店聚餐，18-20时在开发区全福楼大酒店聚餐；26日14时30分至18时，在其父家中接待亲戚来访；27日9时左右到天颐药房郦城国际店、广济药房欧洲城店购药，外出购药时间约半小时；2月3日23:54转至市四院隔离治疗。该患者出行均自驾。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (33, '淮安区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '男，35岁，现住淮安区河下街道河北村，无湖北居住史和旅行史。1月24日下午在淮安区浅深浴室洗浴；1月30日出现畏寒、发热、干咳等症状，服药后症状未缓解；2月2日至淮安市第四人民医院，接受隔离观察治疗；2月5日被确诊为新型冠状病毒感染的肺炎，目前病情平稳。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (34, '清江浦区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '男，35岁，现住生态文旅区徐杨小区二期，无湖北居住史和旅行史，与我市确诊病例有密切接触。1月23日下午在淮安区浅深浴室洗浴；2月1日出现胸闷不适等症状；2月2日在开发区徐杨卫生院就诊，肺部CT检查显示两肺见散在斑片状磨玻璃影，遂转至淮安市第四人民医院，接受隔离观察治疗；2月5日被确诊为新型冠状病毒感染的肺炎，目前病情平稳。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (35, '清江浦区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '男，56岁，现住淮安市清江浦区盛世名门小区，无湖北居住史和旅行史，是我市确诊病例的密切接触者。1月31日出现咳嗽、咳痰等症状，服药后症状无明显好转；2月3日由120专车送至淮安市第四人民医院隔离观察治疗；2月5日被确诊为新型冠状病毒感染的肺炎（轻型），目前仅有轻微不适。据初步了解，患者1月24日18-20时在开发区全福楼大酒店聚餐；25日16时30分左右到天颐药房盛世名门店购药；26日14时30分至18时，在家接待亲戚来访；28日9-10时到上海世纪华联超市盛世名门店买菜，21时左右到天颐药房盛世名门店、百草堂药房欧洲城店购药，外出购药时间约半小时；29日9-10时到上海世纪华联超市盛世名门店、好又多超市欧洲城店买菜；29、30日每天16-17时运河边散步；2月3日23：48转至市四院隔离治疗。该患者出行均戴口罩。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (36, '金湖县', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '女，34岁，现住金湖县建设路2号，无湖北居住史和旅行史，是我市确诊病例的密切接触者。1月24日出现喉咙疼痛症状，自行服药后症状缓解；2月4日转至淮安市第四人民医院，接受隔离观察治疗；2月5日被确诊为新型冠状病毒感染的肺炎（轻型），目前仅有轻微不适。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (37, '淮安区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '女，51岁，现住生态文旅区中南世纪锦城，无湖北居住史和旅行史，是河南省郑州市一确诊病例的妻子，系密切接触者。其自述无不适症状，因担心被感染，于2月3日至淮安市第一人民医院就诊，被收治入院隔离观察治疗；2月4日转至淮安市第四人民医院；2月5日被确诊为新型冠状病毒感染的肺炎（轻型），目前仅有轻微不适。据初步了解，患者1月24日晚在全福楼酒店参加家庭聚餐；26日14时30分至18时，乘私家车到盛世名门亲戚家做客；27日8-10时，骑电动车前往市救助站（淮阴区黄河东路97号）工作；28日15时与家人在居住地西侧杭州路散步，户外活动时间约10分钟；2月2日8时，骑电动车前往市救助站工作，10时30分，前往好又多超市和达雅苑店买菜，于11时5分离开；2月3日23时58分至市四院隔离观察治疗。该患者上下班途中、工作期间、户外散步时均配戴口罩且未与他人接触。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (38, '淮安区', '2.5淮安市新型冠状病毒感染的肺炎疫情通报', '男，50岁，现住淮安区蓝惠首府小区，无湖北居住史和旅行史。患者为卡车司机，1月5日从南京市浦口区出发、途经上海、宝应、高邮、南京、阜宁，1月15日回淮；1月27日出现发热、四肢酸痛等症状；1月30日感冒症状未缓解但不再发热；1月31日-2月2日自行驾车前往淮安苏淮高新区范集镇张码卫生室输液治疗；2月3日至淮安市第一人民医院就诊，被收治入院隔离观察治疗，后转至淮安市第四人民医院；2月5日被确诊为新型冠状病毒感染的肺炎，目前病情平稳。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (39, '淮安区', '02.06淮安市新型冠状病毒感染的肺炎疫情通报', '男，74岁，现住淮安区香溢花园，无湖北居住史和旅行史，是我市一确诊患者的父亲，系密切接触者。1月20日出现畏寒、发热、全身乏力等症状；1月20日-22日在淮安人家镇海卫生室就诊，症状有所缓解；1月28日症状加重，再次前往上述诊所治疗，未见好转；1月31日-2月2日在家休息；2月3日下午至淮安市淮安医院就诊，随后被120专车送至淮安市楚州中医院隔离观察治疗；2月5日转至淮安市第四人民医院；2月6日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (40, '淮安区', '02.06淮安市新型冠状病毒感染的肺炎疫情通报', '男，40岁，现住淮安区锦绣山阳小区，无湖北居住史和旅行史。1月18日晚从黑龙江自驾回淮安，中途在服务区休息；1月26日出现打喷嚏、轻微干咳等症状，服药后自觉痊愈；2月3日出现发热、阵发性咳嗽等症状，至淮安市楚州中医院就诊，接受隔离观察治疗；2月5日转至淮安市第四人民医院；2月6日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (41, '淮安区', '02.06淮安市新型冠状病毒感染的肺炎疫情通报', '男，39岁，现住淮安区苏嘴镇大单村，无湖北居住史和旅行史，是淮安区浅深浴室员工，与我市多名确诊患者有密切接触。1月30日出现畏寒、发热、乏力等症状，自行服药后好转，但仍然发热，先后至淮安区苏嘴卫生院、淮安市淮安医院就诊；2月3日被淮安市淮安医院收治入院隔离观察治疗；2月5日转至淮安市第四人民医院;2月6日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (42, '淮安区', '02.07淮安市新型冠状病毒感染的肺炎疫情通报', '男，52岁，现住淮安区车桥镇泾口街上，无湖北居住史和旅行史，1月19日从山东返回淮安；1月28日出现发热、畏寒等症状；1月29日-30日在街上诊所输液治疗；1月31日自觉无症状，在家未出门；2月1日晚上再次发热，至淮安区泾口卫生院就诊，口服抗感冒药；2月3日自觉服药效果不佳，前往淮安市淮安医院就诊，入院隔离观察治疗；2月5日转至淮安市第四人民医院；2月7日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (43, '清江浦区', '02.07淮安市新型冠状病毒感染的肺炎疫情通报', '    男，49岁，现住淮安经济技术开发区大湖城邦小区，无湖北居住史和旅行史。1月20日在淮安区浅深浴室洗浴，下午与我市一名确诊患者有接触；1月27日自觉不适；1月29日晚出现发热、咳嗽症状；1月31日至2月3日驾车前往淮阴区一私人诊所输液治疗；2月4日下午驾车前往淮阴区营中社区卫生服务中心就诊，后转至淮安市淮阴医院，入院隔离观察治疗；2月5日转至淮安市第四人民医院；2月7日被确诊为新型冠状病毒感染的肺炎。患者1月20日0时左右在淮安区浅深休闲酒店洗浴，停留大概12小时，下午17时左右淮阴区三树镇周集村，19时左右回淮阴区新晨佳苑住所；1月21日，在淮阴区三树镇刘庵南路刘庵8组附近；1月22日0时左右回新晨佳苑住所，11时左右在三树镇周吉村二组附近；1月23日14时左右在淮海西路工商银行办理业务，全程戴口罩，14时40分左右离开；1月24日15时至17时左右在淮阴区淮阴医院附近，又分别开车到淮阴区光辉乾城、奥林国际星城附近；1月25日19时30左右打车回大湖城邦；1月26日下午14时左右在韩泰路边乘坐出租车到三树镇周集村，15时左右在路边拦了一辆回城的出租车回大湖城邦；1月27日15时左右到淮阴区锦绣家园附近汇源汗蒸打牌，18时左右离开；1月27下午19时左右前往开发区罗马假日小区附近一药店（康利/成康/维信）和九九大药房购买药品，全程均戴口罩；1月29日下午14时左右至新晨佳苑，17时左右在多瑙河国际公寓聚餐；1月30日10时左右戴口罩在火车北站附近加油站加油， 13时至16时左右在长征路与南昌路十字路口向东附近汽车修理店修理汽车；1月31日下午14时左右自驾前往淮阴医院，因医院就诊人数过多，单独开车前往私人诊所（淮阴区北京如意小区鑫联超市对面第三家）进行输液治疗；2月1日至2月3日均下午14时至16时自驾前往该诊所输液；2月4日下午14时左右在营中社区卫生服务中心发热门诊就诊，16时到淮阴医院发热门诊就诊。该患者发病前14天内未曾去过农贸市场，家中无宠物，否认野生动物接触史。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (44, '淮安区', '02.07淮安市新型冠状病毒感染的肺炎疫情通报', '男，31岁，现住淮安区富士花苑小区，无湖北居住史和旅行史。1月19日晚到淮安区浅深浴室洗浴，在休闲大厅休息至20日0时许；1月28日出现头痛等不适症状，下午自行开车前往淮安市淮安医院就诊，连续几天发烧；2月1日上午开车前往淮安市楚州中医院就诊，入院隔离观察治疗；2月5日转至淮安市第四人民医院；2月7日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (45, '淮安区', '02.08淮安市新型冠状病毒感染的肺炎疫情通报', '男，49岁，现住淮安区漕运镇盛庄村，无湖北居住史和旅行史，是我市一确诊患者的父亲，系密切接触者。1月29日出现全身酸痛、乏力、头痛、发热等症状，至淮安区三堡乡卫生院就诊；1月31日胸片检查、体温等无明显异常；2月3日，畏寒发热症状加重，当晚至淮安市淮安医院就诊，由120专车送至淮安市楚州中医院隔离观察治疗；2月5日转至淮安市第四人民医院；2月8日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (46, '淮安区', '02.08淮安市新型冠状病毒感染的肺炎疫情通报', '男，24岁，现住淮安区淮城街道城南新村，无湖北居住史和旅行史。1月19日、23日同一时段，与我市确诊患者在淮安区浅深浴室洗浴，系密切接触者。1月28日出现鼻塞、流涕、发热症状；2月1日晚至淮安市淮安医院就诊；2月3日咳嗽加重，全身乏力，肌肉酸痛，由120专车送至淮安市楚州中医院隔离观察治疗；2月5日转至淮安市第四人民医院；2月8日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (47, '淮安区', '02.08 淮安市新型冠状病毒感染的肺炎疫情通报', '女，58岁，现住白马湖农场二分场，无湖北居住史和旅行史。1月28日出现咳嗽、畏寒等症状，服药后症状减轻；2月4日症状加重，至淮安区林集中心卫生院就诊，后由120专车送至淮安市楚州中医院隔离观察治疗；2月7日转至淮安市第四人民医院；2月8日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (48, '淮安区', '02.08淮安市新型冠状病毒感染的肺炎疫情通报', '男，38岁，现住淮安区天恒王府小区，无湖北居住史和旅行史。1月19日从上海驾车回淮安；2月1日自觉发热；2月2号下午至淮安区淮城镇卫生院就诊；2月3日-5日在淮安市淮安医院就诊；2月6日自觉无明显好转，前往淮安市第一人民医院就诊，入院隔离观察治疗；2月7日转至淮安市第四人民医院；2月8日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (49, '清江浦区', '02.09淮安市新型冠状病毒感染的肺炎疫情通报', '男，52岁，现住淮安经济技术开发区东方凯旋城小区，无湖北居住史和旅行史，与我市一确诊患者打过牌，系密切接触者。1月29日出现头痛、咳嗽、发热等症状，至淮安市第二人民医院就诊，口服药物治疗；1月30日自觉症状未缓解，至淮安市第一人民医院就诊，1月31日晚接受输液治疗，至2月1日凌晨回家，在家休息一天；2月2日上午再次发烧，至清江浦区钵池山社区卫生服务中心就诊，服药治疗；2月3日至5日在淮安市第一人民医院输液治疗，2月7日入院隔离观察治疗，当晚转至淮安市第四人民医院；2月9日被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (50, '淮安区', '02.09淮安市新型冠状病毒感染的肺炎疫情通报', '男，57岁，现住淮安区石塘镇鹅钱村，无湖北居住史和旅行史，与我市2例确诊患者同村。1月30日出现咳嗽、气喘等不适症状，自行服药治疗；2月2日气喘症状加重，至淮安区石塘镇鹅钱村卫生室就诊，输液治疗3天后，症状无好转；2月5日至淮安区石塘镇卫生院就诊，接受输液治疗；2月6日出现发热症状，由120专车送至淮安市淮安医院发热门诊就诊，入院隔离观察治疗；2月9日转至淮安市第四人民医院，被确诊为新型冠状病毒感染的肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (51, '淮安区', '02.11淮安市新型冠状病毒感染的肺炎疫情通报', '男，85岁，现住淮安区银河公馆，无湖北居住史和旅行史，是我市一确诊患者的外公，系密切接触者。2月2日起在女儿家居住；2月7日，因外孙被确诊为新冠肺炎患者，全家进行隔离医学观察，当晚，患者因发热被120专车送至淮安市淮安医院就诊，后被收治入院隔离观察治疗；2月10日转至淮安市第四人民医院；2月11日，被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (57, '淮安区', '02.12淮安市新型冠状病毒感染的肺炎疫情通报', '男，91岁，现住淮安区漕运镇码头湾浴场附近，无湖北居住史和旅行史，是我市一疑似患者的父亲，系密切接触者。1月30日，出现咳嗽、发热症状，在家自行服药；2月4日至7日，先后在淮安区林集卫生院、淮安华东妇产医院输液治疗；2月8日至淮安市淮安医院就诊，入院隔离观察治疗；2月10日转至淮安市第四人民医院；2月12日被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (58, '淮安区', '02.12淮安市新型冠状病毒感染的肺炎疫情通报', '女，53岁，现住淮安区漕运镇林集派出所附近，无湖北居住史和旅行史。2月1日出现干咳、乏力等症状；2月2日晚不适症状加重，至淮安区林集卫生院就诊，接受输液治疗；2月7日上午至淮安市淮安医院就诊，入院隔离观察治疗；2月11日转至淮安市第四人民医院；2月12日被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (59, '淮安区', '02.12淮安市新型冠状病毒感染的肺炎疫情通报', '男，56岁，现住淮安生态文旅区绿地世纪城小区，无湖北居住史和旅行史。2月7日出现畏寒、发热、乏力、咽痛等症状，至淮安生态文旅区福地路社区卫生服务中心就诊，接受输液治疗；2月9日至淮安市第二人民医院厦门路院区隔离观察治疗；2月11日转至淮安市第四人民医院；2月12日被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (60, '淮安区', '02.12淮安市新型冠状病毒感染的肺炎疫情通报', '男，57岁，现住淮安生态文旅区板闸家苑小区，无湖北居住史和旅行史。2月5日出现畏寒、咳嗽、咳痰等症状；2月9日先后前往淮安区淮城镇卫生院、淮安市淮安医院就诊；2月10日至淮安市第四人民医院就诊，入院隔离观察治疗；2月12日被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (63, '淮安区', '02.13淮安市新型冠状病毒感染的肺炎疫情通报', '男，59岁，现住淮安区博里镇但城村，无湖北居住史和旅行史，与我市一例确诊患者有密切接触。2月2日出现发热症状；2月3日至苏州市南京医科大学附属苏州科技城医院就诊，住院接受抗感染和抗病毒治疗，病情好转；2月7日出院返回淮安，继续隔离观察治疗；2月11日，转至淮安市第四人民医院；2月13日被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (64, '淮安区', '02.13淮安市新型冠状病毒感染的肺炎疫情通报', '女，59岁，现住淮安区博里镇但城村，无湖北居住史和旅行史，是我市一例确诊病例的妻子，系密切接触者。2月7日出现咳嗽症状，至淮安市淮安医院就诊，入院隔离观察治疗；2月11日转至淮安市第四人民医院；2月13日被确诊为新冠肺炎。\r\n');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (65, '淮安区', '02.13淮安市新型冠状病毒感染的肺炎疫情通报', '女，50岁，现住淮安区荷湖新城小区，无湖北居住史和旅行史，其子与我市一例确诊患者有接触。2月3日，患者出现喉咙不适、咽痛等症状，自行服药后休息，症状有所缓解；2月5日出现发热、关节酸痛等症状；2月6日至淮安市淮安医院就诊，入院隔离观察治疗，后转至淮安市第四人民医院；2月13日被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (66, '淮安区', '02.13淮安市新型冠状病毒感染的肺炎疫情通报', '男，51岁，现住淮安区山阳大道43-1号，无湖北居住史和旅行史，疑似与我市一例确诊患者有接触；2月5日出现畏寒、发热、咳嗽等症状，先后前往淮安区淮城镇卫生院、淮安市淮安医院就诊；2月8日，入淮安市淮安医院隔离观察治疗；2月13日转至淮安市第四人民医院，被确诊为新冠肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (67, '淮安区', '02.13淮安市新型冠状病毒感染的肺炎疫情通报', '男，64岁，现住白马湖农场二分场，无湖北居住史和旅行史，是我市一例确诊患者的邻居，有密切接触。2月5日出现发热、干咳等症状，服用感冒药后无缓解；2月8日至淮安区林集中心卫生院就诊；2月10日，先后前往白马湖卫生院、淮安市淮安医院就诊，入淮安市淮安医院隔离观察治疗；2月13日转至淮安市第四人民医院，被确诊为新冠肺炎。 ');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (68, '淮安区', '02.14淮安市新型冠状病毒感染的肺炎疫情通报', '男，76岁，现住淮安区世纪佳苑小区，无湖北居住史和旅行史。2月4日，出现咳嗽、发热等不适症状，自行服药后症状有所缓解；2月9日症状加重，出现发热、流涕、畏寒等症状，入淮安市淮安医院隔离观察治疗；2月13日转至淮安市第四人民医院；2月14日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (69, '淮安区', '02.14淮安市新型冠状病毒感染的肺炎疫情通报', '女，34岁，现住淮安区车桥镇沈艞村，无湖北居住史和旅行史。1月22日与其丈夫乘坐网约车从上海回淮；1月31日出现咳嗽、咳痰等症状，自行在家服药；2月2日至村卫生室输液治疗；2月4日出现发热症状，自行服药；2月11日先后至淮安区车桥镇中心卫生院、淮安市淮安医院就诊；2月13日转至淮安市第四人民医院隔离治疗；2月14日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (70, '淮安区', '02.14淮安市新型冠状病毒感染的肺炎疫情通报', '女，77岁，现住淮安区世纪佳苑小区，无湖北居住史和旅行史，是我市一例确诊患者的妻子，系密切接触者。2月7日出现干咳症状，自行服药治疗；2月9日至淮安市淮安医院就诊，入院隔离观察治疗；2月13日转至淮安市第四人民医院；2月14日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (71, '淮安区', '02.14淮安市新型冠状病毒感染的肺炎疫情通报', '女，28岁，现住淮安区流均镇流均居委会，无湖北居住史和旅行史，1月27日与无锡市一例确诊患者聚餐，系密切接触者。2月7日出现乏力、发热、浑身酸痛等症状，自行服药治疗；2月10日症状未缓解，由120专车送至淮安市淮安医院就诊，入院隔离观察治疗；2月13日转至淮安市第四人民医院；2月14日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (72, '淮安区', '02.15淮安市新型冠状病毒感染的肺炎疫情通报', '男，68岁，现住淮安区山阳街道楚东村，无湖北居住史和旅行史。2月8日出现发热、盗汗、咳嗽等症状；2月11日前往淮安市淮安医院就诊，入院隔离观察治疗；2月13日转至淮安市第四人民医院；2月15日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (73, '淮安区', '02.15淮安市新型冠状病毒感染的肺炎疫情通报', '女，42岁，现住淮安区博里镇新民村，无湖北居住史和旅行史，与我市一例确诊患者有密切接触。2月6日出现咳嗽症状，至淮安区车桥镇中心卫生院就诊，后由120专车转至淮安市淮安医院，入院隔离观察治疗；2月13日转至淮安市第四人民医院；2月15日被确诊为新型冠状病毒肺炎');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (74, '淮安区', '02.15淮安市新型冠状病毒感染的肺炎疫情通报', '男，49岁，现住白马湖农场二分场，无湖北居住史和旅行史，与我市一例确诊患者有密切接触。2月4日自觉畏寒、发热；2月5日前往白马湖农场卫生院就诊，服药治疗，症状未缓解；2月10日前往淮安市楚州中医院就诊，入院隔离观察治疗；2月13日转至淮安市第四人民医院；2月15日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (75, '淮安区', '02.16淮安市新型冠状病毒感染的肺炎疫情通报', '男，65岁，现住淮安区石塘镇鹅钱村，无湖北居住史和旅行史，与我市多例确诊患者同村。2月2日出现发热症状；2月7日至淮安市淮安医院就诊；2月12日出现气喘、乏力等症状；2月13日前往淮安市第一人民医院就诊，入院隔离观察治疗；2月14日转至淮安市第四人民医院；2月16日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (76, '淮安区', '02.16淮安市新型冠状病毒感染的肺炎疫情通报', '男，46岁，现住淮安区南门大街484号，无湖北居住史和旅行史，与我市一病例有接触。2月4日出现咳嗽症状，自行服药未见好转；2月8日至淮安市楚州中医院就诊；2月15日转至淮安市第四人民医院隔离治疗；2月16日被确诊为新型冠状病毒肺炎。');
INSERT INTO `huai` (`id`, `lo`, `title`, `content`) VALUES (77, '淮安区', '02.17淮安市新型冠状病毒感染的肺炎疫情通报', '女，53岁，现住淮安区河下街道紫藤树居委会，无湖北居住和旅行史，是我市一疑似病例的妻子，系密切接触者。2月13日，患者出现干咳、胸闷、心悸等症状，在村干部陪同下前往淮安区淮城卫生院就诊，随后被120专车送至淮安市淮安医院，入院隔离观察治疗；2月15日转至淮安市第四人民医院；2月17日被确诊为新型冠状病毒肺炎。');
COMMIT;

-- ----------------------------
-- Table structure for huaian
-- ----------------------------
DROP TABLE IF EXISTS `huaian`;
CREATE TABLE `huaian` (
  `id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of huaian
-- ----------------------------
BEGIN;
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (1, '清江浦区', '0', '10', '0');
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (2, '淮阴区', '0', '3', '0');
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (3, '淮安区', '0', '50', '0');
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (4, '洪泽区', '0', '0', '0');
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (5, '盱眙县', '0', '0', '0');
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (6, '涟水县', '0', '1', '0');
INSERT INTO `huaian` (`id`, `location`, `dia`, `res`, `de`) VALUES (7, '金湖县', '0', '2', '0');
COMMIT;

-- ----------------------------
-- Table structure for jiangsu
-- ----------------------------
DROP TABLE IF EXISTS `jiangsu`;
CREATE TABLE `jiangsu` (
  `id` int(11) DEFAULT NULL,
  `loc` varchar(255) DEFAULT NULL,
  `dia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jiangsu
-- ----------------------------
BEGIN;
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (1, '南京', '93', '93', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (2, '苏州', '87', '87', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (3, '徐州', '79', '79', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (4, '淮安', '66', '66', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (5, '无锡', '55', '55', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (6, '境外输入', '53', '52', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (7, '常州', '51', '51', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (8, '连云港', '48', '48', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (9, '南通', '40', '40', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (10, '泰州', '37', '37', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (11, '盐城', '27', '27', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (12, '扬州', '23', '23', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (13, '宿迁', '13', '13', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (14, '镇江', '12', '12', ' ');
INSERT INTO `jiangsu` (`id`, `loc`, `dia`, `res`, `de`) VALUES (15, '未公布来源', '2', '1', ' ');
COMMIT;

-- ----------------------------
-- Table structure for js
-- ----------------------------
DROP TABLE IF EXISTS `js`;
CREATE TABLE `js` (
  `dia` varchar(255) DEFAULT NULL,
  `de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of js
-- ----------------------------
BEGIN;
INSERT INTO `js` (`dia`, `de`, `cur`) VALUES ('2', '3', '684');
COMMIT;

-- ----------------------------
-- Table structure for kr
-- ----------------------------
DROP TABLE IF EXISTS `kr`;
CREATE TABLE `kr` (
  `id` int(11) NOT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `sus` varchar(255) DEFAULT NULL,
  `cur` varchar(255) DEFAULT NULL,
  `de` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of kr
-- ----------------------------
BEGIN;
INSERT INTO `kr` (`id`, `dia`, `sus`, `cur`, `de`) VALUES (1, '67358', '190452', '48369', '1081');
COMMIT;

-- ----------------------------
-- Table structure for krc
-- ----------------------------
DROP TABLE IF EXISTS `krc`;
CREATE TABLE `krc` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `de` int(255) DEFAULT '0',
  `cu` int(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of krc
-- ----------------------------
BEGIN;
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (1, '大邱', 43, 102);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (2, '庆尚北道', 16, 69);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (3, '釜山', 0, 21);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (4, '京畿道', 1, 25);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (5, '首尔', 0, 37);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (6, '庆尚南道', 0, 10);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (7, '光州', 0, 3);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (8, '江原道', 1, 6);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (9, '忠清北道', 0, 1);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (10, '大田', 0, 2);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (11, '蔚山市', 0, 2);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (12, '全罗北道', 0, 2);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (13, '仁川', 0, 3);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (14, '全罗南道', 0, 1);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (15, '济州岛', 0, 1);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (16, '忠清南道', 0, 1);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (17, '世宗市', 0, 0);
INSERT INTO `krc` (`id`, `city`, `de`, `cu`) VALUES (18, '其他', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for krcity
-- ----------------------------
DROP TABLE IF EXISTS `krcity`;
CREATE TABLE `krcity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `dia` int(255) DEFAULT NULL,
  `de` varchar(255) DEFAULT '0',
  `cu` varchar(255) DEFAULT '0',
  `newdia` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of krcity
-- ----------------------------
BEGIN;
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (1, '首尔', 21088, '223', '12805', '191');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (2, '京畿道', 16508, '326', '11826', '258');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (3, '大邱', 8005, '203', '7469', '18');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (4, '仁川', 3284, '34', '2475', '30');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (5, '庆尚北道', 2625, '62', '2170', '30');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (6, '其他', 2522, '2', '1682', '6');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (7, '釜山', 2107, '68', '1557', '24');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (8, '忠清南道', 1790, '27', '1349', '21');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (9, '庆尚南道', 1534, '5', '1199', '22');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (10, '江原道', 1413, '18', '1046', '11');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (11, '忠清北道', 1348, '35', '767', '10');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (12, '光州', 1313, '9', '965', '21');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (13, '全罗北道', 911, '22', '724', '8');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (14, '大田', 908, '8', '772', '8');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (15, '蔚山市', 770, '32', '546', '10');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (16, '全罗南道', 598, '6', '514', '0');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (17, '济州岛', 476, '0', '366', '6');
INSERT INTO `krcity` (`id`, `city`, `dia`, `de`, `cu`, `newdia`) VALUES (18, '世宗市', 158, '1', '137', '0');
COMMIT;

-- ----------------------------
-- Table structure for krhistory
-- ----------------------------
DROP TABLE IF EXISTS `krhistory`;
CREATE TABLE `krhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` date NOT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `sus` varchar(255) DEFAULT NULL,
  `cur` varchar(255) DEFAULT NULL,
  `de` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of krhistory
-- ----------------------------
BEGIN;
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (1, '2020-01-21', '1', '1', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (2, '2020-01-22', '1', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (3, '2020-01-23', '1', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (4, '2020-01-24', '2', '1', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (5, '2020-01-25', '2', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (6, '2020-01-26', '2', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (7, '2020-01-27', '4', '2', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (8, '2020-01-28', '4', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (9, '2020-01-29', '4', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (10, '2020-01-30', '7', '3', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (11, '2020-01-31', '11', '4', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (12, '2020-02-01', '12', '1', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (13, '2020-02-02', '15', '3', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (14, '2020-02-03', '15', '0', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (15, '2020-02-04', '16', '1', '0', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (16, '2020-02-05', '21', '5', '1', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (17, '2020-02-06', '22', '3', '2', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (18, '2020-02-07', '22', '0', '2', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (19, '2020-02-08', '22', '0', '2', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (20, '2020-02-09', '24', '3', '3', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (21, '2020-02-10', '23', '0', '4', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (22, '2020-02-11', '24', '1', '4', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (23, '2020-02-12', '21', '0', '7', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (24, '2020-02-13', '21', '0', '7', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (25, '2020-02-14', '21', '0', '7', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (26, '2020-02-15', '19', '0', '9', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (27, '2020-02-16', '20', '1', '9', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (28, '2020-02-17', '20', '1', '10', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (29, '2020-02-18', '27', '9', '12', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (30, '2020-02-19', '30', '7', '16', '0');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (31, '2020-02-20', '87', '58', '16', '1');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (32, '2020-02-21', '185', '100', '17', '2');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (33, '2020-02-22', '413', '229', '18', '2');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (34, '2020-02-23', '584', '175', '18', '6');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (35, '2020-02-24', '813', '235', '22', '8');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (36, '2020-02-25', '944', '134', '22', '11');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (37, '2020-02-26', '1225', '284', '24', '12');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (38, '2020-02-27', '1727', '505', '26', '13');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (39, '2020-02-28', '2294', '571', '27', '16');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (40, '2020-02-29', '3105', '813', '28', '17');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (41, '2020-03-01', '3685', '586', '30', '21');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (42, '2020-03-02', '4153', '599', '31', '26');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (43, '2020-03-03', '4747', '974', '34', '31');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (44, '2020-03-04', '5253', '516', '41', '34');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (45, '2020-03-05', '5636', '760', '88', '42');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (47, '2020-03-06', '6132', '518', '108', '44');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (49, '2020-03-07', '6600', '791', '118', '49');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (50, '2020-03-08', '6954', '367', '130', '50');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (51, '2020-03-09', '7162', '248', '166', '54');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (52, '2020-03-10', '7208', '131', '247', '58');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (53, '2020-03-11', '7404', '242', '288', '63');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (54, '2020-03-12', '7469', '114', '333', '67');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (55, '2020-03-13', '7397', '110', '510', '72');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (56, '2020-03-14', '7297', '107', '714', '75');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (58, '2020-03-15', '7253', '76', '834', '75');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (65, '2020-03-16', '7018', '74', '1137', '81');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (77, '2020-03-17', '6836', '84', '1401', '83');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (78, '2020-03-18', '6782', '93', '1540', '91');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (79, '2020-03-19', '6525', '152', '1947', '93');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (80, '2020-03-20', '6319', '87', '2233', '100');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (82, '2020-03-21', '6083', '147', '2612', '104');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (85, '2020-03-22', '5882', '98', '2909', '106');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (87, '2020-03-23', '5678', '64', '3166', '117');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (89, '2020-03-24', '5405', '76', '3507', '125');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (90, '2020-03-25', '5276', '100', '3730', '131');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (91, '2020-03-26', '4961', '104', '4144', '136');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (92, '2020-03-27', '4663', '91', '4528', '141');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (93, '2020-03-28', '4515', '146', '4811', '152');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (94, '2020-03-29', '4392', '105', '5033', '158');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (95, '2020-03-30', '4272', '78', '5228', '161');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (96, '2020-03-31', '4213', '125', '5408', '165');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (97, '2020-04-01', '4155', '101', '5567', '165');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (98, '2020-04-02', '3979', '89', '5828', '169');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (99, '2020-04-03', '3867', '86', '6021', '174');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (100, '2020-04-04', '3654', '94', '6325', '177');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (101, '2020-04-05', '3591', '81', '6463', '183');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (102, '2020-04-06', '3500', '47', '6598', '186');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (103, '2020-04-07', '3445', '47', '6694', '192');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (104, '2020-04-08', '3408', '53', '6776', '200');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (105, '2020-04-09', '3246', '39', '6973', '204');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (106, '2020-04-10', '3125', '27', '7117', '208');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (107, '2020-04-11', '3026', '30', '7243', '211');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (108, '2020-04-12', '2930', '32', '7368', '214');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (109, '2020-04-13', '2873', '25', '7447', '217');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (110, '2020-04-14', '2808', '27', '7534', '222');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (111, '2020-04-15', '2750', '27', '7616', '225');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (112, '2020-04-16', '2627', '22', '7757', '229');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (113, '2020-04-17', '2576', '22', '7829', '230');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (117, '2020-04-18', '2484', '18', '7937', '232');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (118, '2020-04-19', '2385', '8', '8042', '234');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (119, '2020-04-20', '2324', '13', '8114', '236');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (120, '2020-04-21', '2233', '9', '8213', '237');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (121, '2020-04-22', '2179', '11', '8277', '238');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (122, '2020-04-23', '2051', '8', '8411', '240');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (123, '2020-04-24', '1967', '6', '8501', '240');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (125, '2020-04-25', '1843', '10', '8635', '240');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (126, '2020-04-26', '1769', '10', '8717', '242');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (127, '2020-04-27', '1731', '10', '8764', '243');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (128, '2020-04-28', '1654', '14', '8854', '244');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (129, '2020-04-29', '1593', '9', '8922', '246');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (130, '2020-04-30', '1459', '4', '9059', '247');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (131, '2020-05-01', '1454', '9', '9072', '248');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (132, '2020-05-02', '1407', '6', '9123', '250');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (134, '2020-05-03', '1360', '13', '9183', '250');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (135, '2020-05-04', '1332', '8', '9217', '252');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (136, '2020-05-05', '1267', '3', '9283', '254');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (137, '2020-05-06', '1218', '2', '9333', '255');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (138, '2020-05-07', '1135', '4', '9419', '256');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (140, '2020-05-08', '1082', '12', '9484', '256');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (141, '2020-05-09', '1016', '18', '9568', '256');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (142, '2020-05-10', '1008', '34', '9610', '256');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (143, '2020-05-11', '1021', '35', '9632', '256');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (144, '2020-05-12', '1008', '27', '9670', '258');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (145, '2020-05-13', '1008', '26', '9695', '259');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (146, '2020-05-14', '969', '29', '9762', '260');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (147, '2020-05-15', '937', '27', '9821', '260');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (148, '2020-05-16', '924', '19', '9851', '262');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (149, '2020-05-17', '900', '13', '9888', '262');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (150, '2020-05-18', '898', '15', '9904', '263');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (151, '2020-05-19', '877', '13', '9938', '263');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (152, '2020-05-20', '781', '32', '10066', '263');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (153, '2020-05-21', '723', '12', '10135', '264');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (154, '2020-05-22', '716', '20', '10162', '264');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (155, '2020-05-23', '705', '23', '10194', '266');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (156, '2020-05-24', '711', '25', '10213', '266');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (157, '2020-05-25', '713', '16', '10226', '267');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (159, '2020-05-26', '681', '19', '10275', '269');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (160, '2020-05-27', '701', '40', '10295', '269');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (161, '2020-05-28', '735', '79', '10340', '269');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (162, '2020-05-29', '770', '58', '10363', '269');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (163, '2020-05-30', '774', '39', '10398', '269');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (164, '2020-05-31', '793', '27', '10405', '270');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (165, '2020-06-01', '810', '35', '10422', '271');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (166, '2020-06-02', '823', '38', '10446', '272');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (167, '2020-06-03', '850', '49', '10467', '273');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (168, '2020-06-04', '857', '39', '10499', '273');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (169, '2020-06-05', '889', '39', '10506', '273');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (170, '2020-06-06', '915', '51', '10531', '273');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (171, '2020-06-07', '951', '57', '10552', '273');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (172, '2020-06-08', '978', '38', '10563', '273');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (173, '2020-06-09', '989', '38', '10589', '274');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (174, '2020-06-10', '1015', '50', '10611', '276');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (175, '2020-06-11', '1017', '45', '10654', '276');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (176, '2020-06-12', '1057', '56', '10669', '277');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (177, '2020-06-13', '1083', '48', '10691', '277');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (178, '2020-06-14', '1090', '34', '10718', '277');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (179, '2020-06-15', '1114', '36', '10730', '277');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (180, '2020-06-16', '1117', '34', '10760', '278');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (181, '2020-06-17', '1145', '43', '10774', '279');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (182, '2020-06-18', '1177', '59', '10800', '280');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (183, '2020-06-19', '1191', '49', '10835', '280');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (184, '2020-06-20', '1237', '67', '10856', '280');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (185, '2020-06-21', '1273', '48', '10868', '280');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (186, '2020-06-22', '1277', '17', '10881', '280');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (187, '2020-06-23', '1295', '46', '10908', '281');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (188, '2020-06-24', '1324', '51', '10930', '281');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (189, '2020-06-25', '1307', '28', '10974', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (190, '2020-06-26', '1148', '39', '11172', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (191, '2020-06-27', '1054', '51', '11317', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (192, '2020-06-28', '1069', '62', '11364', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (193, '2020-06-29', '1046', '42', '11429', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (194, '2020-06-30', '981', '43', '11537', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (195, '2020-07-01', '955', '50', '11613', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (196, '2020-07-02', '938', '54', '11684', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (197, '2020-07-03', '926', '63', '11759', '282');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (198, '2020-07-04', '936', '63', '11811', '283');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (199, '2020-07-05', '976', '61', '11832', '283');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (200, '2020-07-06', '1005', '46', '11848', '284');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (201, '2020-07-07', '982', '44', '11914', '285');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (202, '2020-07-08', '989', '63', '11970', '285');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (205, '2020-07-09', '987', '49', '12019', '287');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (206, '2020-07-10', '985', '45', '12065', '288');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (208, '2020-07-11', '941', '35', '12144', '288');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (209, '2020-07-12', '950', '44', '12178', '289');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (210, '2020-07-13', '986', '62', '12204', '289');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (211, '2020-07-14', '941', '33', '12282', '289');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (212, '2020-07-15', '914', '39', '12348', '289');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (213, '2020-07-16', '925', '61', '12396', '291');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (214, '2020-07-17', '919', '60', '12460', '293');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (215, '2020-07-18', '898', '39', '12519', '294');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (216, '2020-07-19', '894', '34', '12556', '295');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (217, '2020-07-20', '903', '26', '12572', '296');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (218, '2020-07-21', '877', '45', '12643', '296');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (219, '2020-07-22', '884', '63', '12698', '297');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (220, '2020-07-23', '883', '59', '12758', '297');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (221, '2020-07-24', '864', '41', '12817', '298');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (222, '2020-07-25', '928', '113', '12866', '298');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (223, '2020-07-26', '962', '58', '12890', '298');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (224, '2020-07-27', '971', '25', '12905', '299');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (225, '2020-07-28', '896', '28', '13007', '300');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (226, '2020-07-29', '882', '48', '13069', '300');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (227, '2020-07-30', '837', '18', '13132', '300');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (228, '2020-07-31', '821', '36', '13183', '301');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (229, '2020-08-01', '802', '31', '13233', '301');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (230, '2020-08-02', '806', '30', '13259', '301');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (231, '2020-08-03', '808', '23', '13280', '301');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (232, '2020-08-04', '770', '34', '13352', '301');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (233, '2020-08-05', '748', '33', '13406', '302');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (234, '2020-08-06', '696', '43', '13501', '302');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (235, '2020-08-07', '673', '20', '13543', '303');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (236, '2020-08-08', '629', '43', '13629', '304');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (237, '2020-08-09', '651', '36', '13642', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (238, '2020-08-10', '663', '28', '13658', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (239, '2020-08-11', '626', '34', '13729', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (240, '2020-08-12', '623', '54', '13786', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (241, '2020-08-13', '648', '56', '13817', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (242, '2020-08-14', '705', '103', '13863', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (243, '2020-08-15', '833', '166', '13901', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (244, '2020-08-16', '1103', '279', '13910', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (246, '2020-08-17', '1293', '197', '13917', '305');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (247, '2020-08-18', '1521', '246', '13934', '306');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (248, '2020-08-19', '1746', '297', '14006', '306');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (249, '2020-08-20', '1976', '288', '14063', '307');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (250, '2020-08-21', '2241', '324', '14120', '309');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (251, '2020-08-22', '2524', '332', '14169', '309');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (252, '2020-08-23', '2890', '397', '14200', '309');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (253, '2020-08-24', '3137', '266', '14219', '309');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (254, '2020-08-25', '3349', '280', '14286', '310');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (255, '2020-08-26', '3585', '320', '14368', '312');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (256, '2020-08-27', '3932', '441', '14461', '313');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (257, '2020-08-28', '4210', '371', '14551', '316');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (258, '2020-08-29', '4314', '323', '14765', '321');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (259, '2020-08-30', '4473', '299', '14903', '323');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (264, '2020-08-31', '4650', '248', '14973', '324');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (265, '2020-08-31', '4650', '248', '14973', '324');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (266, '2020-09-01', '4660', '235', '15198', '324');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (267, '2020-09-02', '4767', '267', '15356', '326');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (268, '2020-09-03', '4786', '195', '15529', '329');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (269, '2020-09-04', '4728', '198', '15783', '331');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (270, '2020-09-05', '4668', '168', '16009', '333');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (271, '2020-09-06', '4697', '167', '16146', '334');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (272, '2020-09-07', '4663', '119', '16297', '336');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (273, '2020-09-08', '4455', '136', '16636', '341');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (274, '2020-09-09', '4221', '156', '17023', '344');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (275, '2020-09-10', '4037', '155', '17360', '346');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (276, '2020-09-11', '3953', '176', '17616', '350');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (277, '2020-09-12', '3671', '136', '18029', '355');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (278, '2020-09-13', '3592', '121', '18226', '358');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (279, '2020-09-14', '3433', '109', '18489', '363');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (280, '2020-09-15', '3146', '106', '18878', '367');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (281, '2020-09-16', '2827', '113', '19310', '367');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (282, '2020-09-17', '2742', '153', '19543', '372');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (283, '2020-09-18', '2635', '126', '19771', '377');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (284, '2020-09-19', '2545', '110', '19970', '378');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (285, '2020-09-20', '2434', '82', '20158', '383');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (286, '2020-09-21', '2412', '70', '20248', '385');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (287, '2020-09-22', '2277', '61', '20441', '388');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (288, '2020-09-23', '2178', '110', '20650', '388');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (289, '2020-09-24', '2116', '125', '20832', '393');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (290, '2020-09-25', '2082', '114', '20978', '395');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (291, '2020-09-26', '1951', '61', '21166', '399');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (292, '2020-09-27', '1962', '95', '21248', '401');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (293, '2020-09-28', '1963', '50', '21292', '406');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (294, '2020-09-29', '1822', '38', '21470', '407');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (295, '2020-09-30', '1809', '113', '21590', '413');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (296, '2020-10-01', '1808', '77', '21666', '415');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (297, '2020-10-02', '1803', '63', '21733', '416');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (299, '2020-10-03', '1820', '75', '21787', '420');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (300, '2020-10-04', '1825', '64', '21845', '421');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (301, '2020-10-05', '1856', '73', '21886', '422');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (302, '2020-10-06', '1734', '75', '22083', '422');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (303, '2020-10-07', '1594', '114', '22334', '425');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (304, '2020-10-08', '1532', '69', '22463', '427');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (305, '2020-10-09', '1479', '54', '22569', '428');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (306, '2020-10-10', '1494', '72', '22624', '430');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (307, '2020-10-11', '1481', '58', '22693', '432');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (308, '2020-10-12', '1541', '97', '22729', '433');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (309, '2020-10-13', '1508', '102', '22863', '434');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (310, '2020-10-14', '1421', '84', '23030', '438');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (311, '2020-10-15', '1467', '99', '23082', '439');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (313, '2020-10-16', '1414', '47', '23180', '441');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (314, '2020-10-17', '1407', '73', '23258', '443');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (315, '2020-10-18', '1443', '91', '23312', '444');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (316, '2020-10-19', '1463', '76', '23368', '444');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (317, '2020-10-20', '1420', '58', '23466', '447');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (318, '2020-10-21', '1390', '91', '23584', '450');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (319, '2020-10-22', '1443', '119', '23647', '453');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (320, '2020-10-23', '1526', '155', '23717', '455');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (321, '2020-10-24', '1484', '77', '23834', '457');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (322, '2020-10-25', '1510', '61', '23869', '457');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (323, '2020-10-26', '1593', '119', '23905', '457');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (324, '2020-10-27', '1602', '88', '23981', '460');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (325, '2020-10-28', '1612', '103', '24073', '461');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (326, '2020-10-29', '1641', '125', '24168', '462');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (327, '2020-10-30', '1695', '114', '24227', '463');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (328, '2020-10-31', '1736', '126', '24311', '464');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (329, '2020-11-01', '1812', '124', '24357', '466');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (330, '2020-11-02', '1869', '97', '24395', '468');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (331, '2020-11-03', '1825', '75', '24510', '472');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (332, '2020-11-04', '1835', '118', '24616', '474');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (333, '2020-11-05', '1840', '125', '24735', '475');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (334, '2020-11-06', '1898', '145', '24821', '476');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (335, '2020-11-07', '1897', '89', '24910', '477');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (336, '2020-11-08', '1981', '143', '24968', '478');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (337, '2020-11-09', '2044', '126', '25029', '480');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (338, '2020-11-10', '2008', '100', '25160', '485');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (339, '2020-11-11', '2046', '146', '25266', '487');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (340, '2020-11-12', '2051', '143', '25404', '487');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (341, '2020-11-13', '2108', '191', '25537', '488');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (342, '2020-11-14', '2210', '205', '25636', '492');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (343, '2020-11-15', '2362', '208', '25691', '493');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (344, '2020-11-16', '2516', '223', '25759', '494');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (345, '2020-11-17', '2644', '229', '25860', '494');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (346, '2020-11-18', '2842', '313', '25973', '496');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (347, '2020-11-19', '3058', '343', '26098', '498');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (348, '2020-11-20', '3253', '363', '26263', '501');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (349, '2020-11-21', '3535', '386', '26365', '503');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (350, '2020-11-22', '3762', '330', '26466', '505');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (351, '2020-11-23', '3956', '271', '26539', '509');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (352, '2020-11-24', '4121', '349', '26722', '510');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (353, '2020-11-25', '4397', '382', '26825', '513');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (354, '2020-11-26', '4853', '583', '26950', '515');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (356, '2020-11-27', '5268', '569', '27103', '516');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (357, '2020-11-28', '5504', '488', '27349', '522');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (358, '2020-11-29', '5759', '449', '27542', '523');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (359, '2020-11-30', '6022', '377', '27653', '526');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (360, '2020-12-01', '6241', '451', '27885', '526');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (361, '2020-12-02', '6572', '511', '28065', '526');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (362, '2020-12-03', '6822', '540', '28352', '529');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (363, '2020-12-04', '7185', '629', '28611', '536');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (364, '2020-12-05', '7458', '583', '28917', '540');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (365, '2020-12-06', '7873', '631', '29128', '545');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (367, '2020-12-07', '8311', '615', '29301', '549');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (368, '2020-12-08', '8553', '594', '29650', '552');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (369, '2020-12-09', '8699', '677', '30177', '556');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (370, '2020-12-10', '8897', '666', '30637', '564');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (371, '2020-12-11', '9057', '688', '31157', '572');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (372, '2020-12-12', '9665', '950', '31493', '578');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (373, '2020-12-13', '10372', '1030', '31814', '580');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (375, '2020-12-14', '10795', '718', '32102', '587');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (376, '2020-12-15', '11205', '880', '32559', '600');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (377, '2020-12-16', '11883', '1078', '32947', '612');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (378, '2020-12-17', '12209', '1011', '33610', '634');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (379, '2020-12-18', '12888', '1062', '33982', '645');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (380, '2020-12-19', '13577', '1055', '34334', '659');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (381, '2020-12-20', '14269', '1095', '34722', '674');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (382, '2020-12-21', '14738', '926', '35155', '698');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (383, '2020-12-22', '14810', '869', '35928', '722');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (384, '2020-12-23', '15085', '1090', '36726', '739');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (385, '2020-12-24', '15352', '983', '37425', '756');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (386, '2020-12-25', '15949', '1237', '38048', '773');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (387, '2020-12-26', '16577', '1132', '38532', '793');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (388, '2020-12-27', '17024', '970', '39040', '808');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (389, '2020-12-28', '17593', '808', '39268', '819');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (390, '2020-12-29', '17163', '1045', '40703', '859');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (391, '2020-12-30', '17459', '1048', '41435', '879');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (392, '2020-12-31', '17569', '967', '42271', '900');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (393, '2021-01-01', '17899', '1029', '42953', '917');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (394, '2021-01-02', '18073', '824', '43578', '942');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (395, '2021-01-03', '17775', '651', '44507', '962');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (396, '2021-01-04', '18043', '1020', '45240', '981');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (397, '2021-01-05', '17800', '715', '46172', '1007');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (398, '2021-01-06', '17796', '839', '46995', '1027');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (399, '2021-01-07', '17991', '868', '47649', '1046');
INSERT INTO `krhistory` (`id`, `time`, `dia`, `sus`, `cur`, `de`) VALUES (400, '2021-01-08', '17908', '672', '48369', '1081');
COMMIT;

-- ----------------------------
-- Table structure for krnews
-- ----------------------------
DROP TABLE IF EXISTS `krnews`;
CREATE TABLE `krnews` (
  `id` int(11) NOT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of krnews
-- ----------------------------
BEGIN;
INSERT INTO `krnews` (`id`, `title`) VALUES (0, '韩国服刑场所升高防疫级别 李明博所在监狱确诊超900例');
INSERT INTO `krnews` (`id`, `title`) VALUES (1, '为防范疫情 韩国敲钟仪式改录播 新年日出景象“云”观赏');
INSERT INTO `krnews` (`id`, `title`) VALUES (2, '韩国一看守所相关确诊病例达819例 在押人员隔铁窗举纸牌“求救”');
INSERT INTO `krnews` (`id`, `title`) VALUES (3, '日本韩国接连出现变异新冠病毒');
INSERT INTO `krnews` (`id`, `title`) VALUES (4, '韩国看守所等地感染严重 防疫级别升至最高级');
COMMIT;

-- ----------------------------
-- Table structure for lo
-- ----------------------------
DROP TABLE IF EXISTS `lo`;
CREATE TABLE `lo` (
  `id` int(11) DEFAULT NULL,
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of lo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) DEFAULT NULL,
  `con` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for time
-- ----------------------------
DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
  `updatetime` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `catchtime` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of time
-- ----------------------------
BEGIN;
INSERT INTO `time` (`updatetime`, `catchtime`) VALUES ('截至1月8日10时02分数据统计', '2021-01-08 11:06:17');
COMMIT;

-- ----------------------------
-- Table structure for wc
-- ----------------------------
DROP TABLE IF EXISTS `wc`;
CREATE TABLE `wc` (
  `world` text,
  `times` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wc
-- ----------------------------
BEGIN;
INSERT INTO `wc` (`world`, `times`) VALUES ('治疗', 103);
INSERT INTO `wc` (`world`, `times`) VALUES ('就诊', 90);
INSERT INTO `wc` (`world`, `times`) VALUES ('新型冠状病毒', 85);
INSERT INTO `wc` (`world`, `times`) VALUES ('症状', 82);
INSERT INTO `wc` (`world`, `times`) VALUES ('楚州', 81);
INSERT INTO `wc` (`world`, `times`) VALUES ('隔离', 80);
INSERT INTO `wc` (`world`, `times`) VALUES ('发热', 75);
INSERT INTO `wc` (`world`, `times`) VALUES ('观察', 71);
INSERT INTO `wc` (`world`, `times`) VALUES ('居住', 63);
INSERT INTO `wc` (`world`, `times`) VALUES ('湖北', 52);
INSERT INTO `wc` (`world`, `times`) VALUES ('病例', 35);
INSERT INTO `wc` (`world`, `times`) VALUES ('密切接触', 34);
INSERT INTO `wc` (`world`, `times`) VALUES ('输液', 32);
INSERT INTO `wc` (`world`, `times`) VALUES ('入院', 28);
INSERT INTO `wc` (`world`, `times`) VALUES ('乘坐', 27);
INSERT INTO `wc` (`world`, `times`) VALUES ('卫生院', 26);
INSERT INTO `wc` (`world`, `times`) VALUES ('咳嗽', 24);
INSERT INTO `wc` (`world`, `times`) VALUES ('接受', 24);
INSERT INTO `wc` (`world`, `times`) VALUES ('门诊', 23);
INSERT INTO `wc` (`world`, `times`) VALUES ('不适', 22);
INSERT INTO `wc` (`world`, `times`) VALUES ('武汉', 20);
INSERT INTO `wc` (`world`, `times`) VALUES ('专车', 20);
INSERT INTO `wc` (`world`, `times`) VALUES ('卫健委', 19);
INSERT INTO `wc` (`world`, `times`) VALUES ('阳性', 18);
INSERT INTO `wc` (`world`, `times`) VALUES ('复核', 18);
INSERT INTO `wc` (`world`, `times`) VALUES ('专家组', 17);
INSERT INTO `wc` (`world`, `times`) VALUES ('会诊', 17);
INSERT INTO `wc` (`world`, `times`) VALUES ('确定', 17);
INSERT INTO `wc` (`world`, `times`) VALUES ('自行', 17);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮阴区', 17);
INSERT INTO `wc` (`world`, `times`) VALUES ('驾车', 16);
INSERT INTO `wc` (`world`, `times`) VALUES ('自觉', 16);
INSERT INTO `wc` (`world`, `times`) VALUES ('病情', 15);
INSERT INTO `wc` (`world`, `times`) VALUES ('畏寒', 15);
INSERT INTO `wc` (`world`, `times`) VALUES ('小区', 14);
INSERT INTO `wc` (`world`, `times`) VALUES ('乏力', 13);
INSERT INTO `wc` (`world`, `times`) VALUES ('平稳', 13);
INSERT INTO `wc` (`world`, `times`) VALUES ('清江浦区', 12);
INSERT INTO `wc` (`world`, `times`) VALUES ('聚餐', 12);
INSERT INTO `wc` (`world`, `times`) VALUES ('核酸检测', 11);
INSERT INTO `wc` (`world`, `times`) VALUES ('接触', 11);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮阴', 11);
INSERT INTO `wc` (`world`, `times`) VALUES ('洗浴', 10);
INSERT INTO `wc` (`world`, `times`) VALUES ('回家', 10);
INSERT INTO `wc` (`world`, `times`) VALUES ('南京', 10);
INSERT INTO `wc` (`world`, `times`) VALUES ('南站', 10);
INSERT INTO `wc` (`world`, `times`) VALUES ('加重', 10);
INSERT INTO `wc` (`world`, `times`) VALUES ('缓解', 10);
INSERT INTO `wc` (`world`, `times`) VALUES ('独自', 9);
INSERT INTO `wc` (`world`, `times`) VALUES ('检测', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('胸部', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('初步', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('了解', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('在家', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('头痛', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('涟水', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('三树镇', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('周集村', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('驱车', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('开车', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('卫生室', 8);
INSERT INTO `wc` (`world`, `times`) VALUES ('汽车', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('收治', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('中午', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('妻子', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('酸痛', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('盛世名门', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('酒店', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('浅深浴室', 7);
INSERT INTO `wc` (`world`, `times`) VALUES ('二例', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('上海', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('出租车', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('私家车', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('丈夫', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('苏州', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('口罩', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('爱琴海小区', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('金湖县', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('生态文旅区', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('休息', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('干咳', 6);
INSERT INTO `wc` (`world`, `times`) VALUES ('当晚', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('此前', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('浅深', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('浴场', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('女性', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('武汉市', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('开往', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('抵达', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('凌晨', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('街道', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('对面', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('购药', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('大厅', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('每天', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('自驾', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('买菜', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('停留', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('如意', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('开发区', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('诊所', 5);
INSERT INTO `wc` (`world`, `times`) VALUES ('入市', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('男性', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮城镇', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('肺部', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('工作', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('与其', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('客运', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('到达', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮海', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('体温', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('感冒药', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('住院', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('玻璃', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('列车', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('回到', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮城', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('父亲', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('鼻塞', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('流涕', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('外出', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('超市', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('全身', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('服用', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮扬府大酒店', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('参加', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('家庭', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('女儿', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('同济', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('出行', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('连云港', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('方向', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('电动车', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('西路', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('淮海菜场', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('三树', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('布丁', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('好转', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('轻微', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('车桥镇', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('白马湖农场', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('石塘', 4);
INSERT INTO `wc` (`world`, `times`) VALUES ('输入', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('公交车', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('口服', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('提示', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('从事', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('肉类', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('经营', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('出发', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('两肺', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('私人', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('返回', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('进行', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('邻居', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('活动', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('自述', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('汽车站', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('饭店', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('肌肉', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('保健院', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('计划生育', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('广济', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('药店', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('回淮', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('全程', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('郦城国际', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('出门', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('西门', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('镇淮楼', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('打牌', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('河下街道', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('休闲', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('集中', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('中心', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('全福', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('天颐药房', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('药房', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('欧洲', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('城店', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('咳痰', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('轻型', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('散步', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('有所', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('大湖城邦', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('漕运镇', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('二场', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('镇鹅钱', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('气喘', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('林集', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('博里镇', 3);
INSERT INTO `wc` (`world`, `times`) VALUES ('生活', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('采样', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('核酸', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('疑似病例', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('确认', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('该于', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('进入', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('大巴', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('广场', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('下车', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('左上', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('少许', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('左肺', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('汉口站', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('大巴回', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('呼叫', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('改变', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('水产', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('片状', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('飞往', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('广州', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('六例', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('当即', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('八例', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('关系', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('其子', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('涟水县', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('苏州市', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('四经', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('客车', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('购买', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('乘苏', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('康城明珠', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('都天商城', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('看望', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('长辈', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('乳腺中心', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('候诊', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('等候', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('亿力未来城三期', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('天颐', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('内科', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('取药', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('预检诊', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('一院', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('四该', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('武昌', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('换乘', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('动车', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('车厢', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('送往', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('老张集', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('陪同', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('一名', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('期间', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('浦发银行', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('值班', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('其一', 2);
INSERT INTO `wc` (`world`, `times`) VALUES ('自行车', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
