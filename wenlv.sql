/*
Navicat MySQL Data Transfer

Source Server         : zjgt
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : wenlv

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-01-04 10:53:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `r_admin`
-- ----------------------------
DROP TABLE IF EXISTS `r_admin`;
CREATE TABLE `r_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_admin
-- ----------------------------
INSERT INTO `r_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for `r_banner`
-- ----------------------------
DROP TABLE IF EXISTS `r_banner`;
CREATE TABLE `r_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `istop` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `timedate` int(11) DEFAULT NULL,
  `type` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `r_config`
-- ----------------------------
DROP TABLE IF EXISTS `r_config`;
CREATE TABLE `r_config` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_config
-- ----------------------------
INSERT INTO `r_config` VALUES ('WebSiteName', '中金国泰文旅集团');
INSERT INTO `r_config` VALUES ('WebSite_CopyRight', '中金国泰文旅集团');
INSERT INTO `r_config` VALUES ('WebSite_Email', '');
INSERT INTO `r_config` VALUES ('WebSite_EmailName', 'WebSite_EmailName');
INSERT INTO `r_config` VALUES ('WebSite_EmailPass', 'WebSite_EmailPass');
INSERT INTO `r_config` VALUES ('WebSite_Fax', 'WebSite_Fax');
INSERT INTO `r_config` VALUES ('WebSite_ICP', '');
INSERT INTO `r_config` VALUES ('WebSite_Keyword', '');
INSERT INTO `r_config` VALUES ('WebSite_Remark', '');
INSERT INTO `r_config` VALUES ('WebSite_SMTP', 'WebSite_SMTP');
INSERT INTO `r_config` VALUES ('WebSite_SMTPEmail', 'WebSite_SMTPEmail');
INSERT INTO `r_config` VALUES ('WebSite_Tel', '');
INSERT INTO `r_config` VALUES ('WebSite_Url', 'http://wh.chinazjgt.com/');

-- ----------------------------
-- Table structure for `r_menu`
-- ----------------------------
DROP TABLE IF EXISTS `r_menu`;
CREATE TABLE `r_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type` int(2) DEFAULT '0' COMMENT '属性',
  `pid` int(11) DEFAULT NULL COMMENT '父ID',
  `url` varchar(50) DEFAULT NULL COMMENT '跳转地址',
  `content` text COMMENT '内容',
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `symbol` varchar(20) DEFAULT NULL COMMENT '英文标志',
  `isshow` int(2) DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `r_news`
-- ----------------------------
DROP TABLE IF EXISTS `r_news`;
CREATE TABLE `r_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `image` text,
  `content` text,
  `img` int(11) DEFAULT NULL,
  `tuijian` int(11) DEFAULT NULL,
  `flv` varchar(255) DEFAULT NULL,
  `mp4` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `timedate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=315 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_news
-- ----------------------------
INSERT INTO `r_news` VALUES ('295', '中金国泰控股集团', '4', 'up/up/1513821041352.jpg', '<p align=\"center\">\r\n	<img src=\"/admin/editor/attached/image/20171228/20171228035510_96281.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	中金国泰控股集团有限公司初创于1994年，注册资本30亿元人民币，总部设于中国上海陆家嘴国际金融中心。经过二十多年的发展，中金国泰集团深度契合国家发展战略需要，秉持“创新、协调、绿色、开放、共享”的发展理念，以新兴产业和战略投资为方向，聚焦发展成为以新能源、文化旅游、金融及建设于一体的国际化大型投资集团，投资经营范围遍及全国，并已扩展至海外市场，实现了海内外业务并举、多元协调发展的战略格局。\r\n</p>\r\n<p>\r\n	中金国泰集团始终坚持以人为本，重视优秀人才的汇聚和培育，以“合伙人制”及“价值共享”机制吸引了大批高层次人才加盟，构建了一支专业资深、行业背景深厚、中青结合的国际化管理团队，共同创造价值、体现价值、贡献价值。\r\n</p>\r\n<p>\r\n	面向未来，中金国泰集团在产业结构调整和升级的大环境下，凭借强大的资源整合能力、全产业链运作能力、高度市场化的管理团队和完善的风控体系，积极践行产融结合的经营模式，致力于成为具有中国特色的国际化、品牌化大型投资集团。\r\n</p>', null, '0', '', '', '1', '0', '1513820130');
INSERT INTO `r_news` VALUES ('296', '中金国泰文旅集团', '4', '', '<p>\r\n	中金国泰文化旅游集团成立于2011年，注册资本金5亿元人民币。作为旅游行业内模式领先的全产业链整合者，中金文旅突破旅游行业现状，打通从规划到投资之间的联通瓶颈，创造文化旅游产业投资引导和驱动的创新模式，并以前瞻性的投资眼光率先提出“全方位、全领域、全时空”的文化旅游产业发展理念，发挥整体策划、规划、设计、投资、开发、运营的“六位一体”全产业链聚合能力，成为覆盖“吃、住、行、游、购、娱、商、养、学、闲、情、奇”等旅游产业要素的全新旅游产品综合投资与服务商，同时大力推广“1+N”模式，跨界融合新能源、文化、体育、康养、科教、观光农业等多要素产业，相互提升众多产业的发展水平与综合价值，最终打造高端品质、成熟完善的全年全景全要素式旅游项目。\r\n</p>\r\n<p>\r\n	目前，文旅集团已与云南省、海南省、四川省、贵州省、山东省、重庆市、辽宁省、山西省、福建省、安徽省、广东省、西藏自治区、新疆维吾尔自治区等资源型城市政府形成紧密的战略合作，并凭借强大的资源整合能力，联袂行业内国际顶尖企业共同打造休闲度假旅游目的地，成为“全球休闲产业引领者”。\r\n</p>\r\n<p>\r\n	2017年，中金国泰文化旅游集团荣获中国旅游资源整合联盟最佳投资机构奖、“智旅杯”最具影响力文旅跨界奖、杰出贡献奖等。\r\n</p>', null, '0', '', '', '1', '0', '1513820868');
INSERT INTO `r_news` VALUES ('297', '六位一体模式', '5', '', '<p>\r\n	中金国泰文化旅游集团率先提出整体策划、规划、设计、投资、开发、运营的“六位一体”全产业链服务模式。\r\n</p>\r\n<p>\r\n	1. 整体策划\r\n</p>\r\n<p>\r\n	通过识别旅游产品的发展条件、发展目标及竞争优势，挖掘旅游项目的精准定位，形成有价值的差异化竞争优势。\r\n</p>\r\n<p>\r\n	2. 整体规划\r\n</p>\r\n<p>\r\n	在旅游区域资源特点、社会经济技术条件、国家方针政策等基础上，对全区域的景区布局、业态布局、绿化、交通、水电、配套设施等进行统一规划，形成具备可操作性、系统性、多元性的深度规划。\r\n</p>\r\n<p>\r\n	3. 整体设计\r\n</p>\r\n<p>\r\n	旅游整体设计包括从吸引力设计打造到景观设计、建筑设计、游乐设施设备设计、商业模式设计、营销模式设计等一系列设计过程，使旅游目的地通过打造旅游吸引核形成游客聚集，从而进一步扩大经济效益及社会效益。\r\n</p>\r\n<p>\r\n	4. 整体投资\r\n</p>\r\n<p>\r\n	集团着眼于区域整体投资，通过旅游实体产业经济与金融投资的创新融合，力求整合旅游产业链，整合多元化产业要素，使投资规模不断壮大、投资布局迅速铺开，以寻求价值效益的最大化。\r\n</p>\r\n<p>\r\n	5. 整体开发\r\n</p>\r\n<p>\r\n	在投融资规划基础上，结合地区资源禀赋，建立高效的旅游产业孵化促进中心，开发、建设一大批体育、文化、VR、科技、农业、休闲、养生、会展、商务、餐饮、酒店等多元化旅游产品，同时实现旅游产品、旅游客源市场、旅游人力资源等统一开发。\r\n</p>\r\n<p>\r\n	6. 整体运营\r\n</p>\r\n<p>\r\n	通过建立一体化的智慧旅游管理系统，开展智能订票、智能停车、虚拟体验、行程规划、智能导览、游客游量监控、安防监控等运营服务，实现景区在管理、运营、服务、营销等方面的集约化管理。\r\n</p>', null, '0', '', '', '1', '0', '1513821322');
INSERT INTO `r_news` VALUES ('298', '320战略规划', '5', '', '<p>\r\n	展望未来，中金国泰文旅集团提出了“320计划”：\r\n</p>\r\n<p>\r\n	在2020年前，计划直接投资20个大型休闲旅游目的地，以及投资、改造、升级、托管、运营300个存量休闲旅游目的地，实现休闲旅游的全时空覆盖、旅游投资全方位服务及休闲旅游全要素全产业链打造。\r\n</p>\r\n<p>\r\n	通过“320计划”，集团实现5年内在全国范围年接待游客量1.5亿人次，形成万亿消费生态圈。\r\n</p>\r\n<p>\r\n	<img src=\"/admin/editor/attached/image/20171229/20171229055533_50284.jpg\" width=\"880\" height=\"708\" alt=\"\" /> \r\n</p>', null, '0', '', '', '1', '0', '1513821466');
INSERT INTO `r_news` VALUES ('299', '“1+N”模式', '5', '', '<p>\r\n	中金国泰文旅集团倡导多元创新、融合发展，提出了“1+N”模式，跨界融合新能源、文化、体育、康养、科教、观光农业等多要素产业，相互提升众多产业的发展水平与综合价值，最终打造高端品质、成熟完善的全年全景全要素式旅游项目。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:justify;\">\r\n	<img src=\"/admin/editor/attached/image/20171229/20171229060711_61893.jpg\" width=\"880\" height=\"950\" alt=\"\" /> \r\n</div>', null, '0', '', '', '1', '0', '1513821521');
INSERT INTO `r_news` VALUES ('300', '东方园林&腾冲全域旅游重点项目盛大开工', '6', 'up/up/1513823026748.jpg', '<p>\r\n	云南腾冲市人民政府牵手东方园林产业集团签署全域旅游框架协议后，仅6个月时间，东方团队就完成策划、设计、建设全面准备，充分展现了东方速度。\r\n</p>\r\n<p>\r\n	2016年2月，腾冲被国家旅游局确定为全国首批全域旅游示范区\r\n</p>\r\n<p>\r\n	腾冲资源富集，生态优越，特别是旅游资源得天独厚，发展全域旅游优势明显。2016年2月被国家旅游局确定为全国首批全域旅游示范区创建单位。为此，腾冲市委、市政府紧紧抓住这一重要机遇，对重点旅游资源实施整体开发打造，迅速启动了全域旅游示范区规划。\r\n</p>\r\n<p>\r\n	2016年6月21日，腾冲市人民政府与与东方园林产业集团签署全域旅游合作框架协议\r\n</p>\r\n<p>\r\n	2016年6月21日，腾冲市人民政府与东方园林产业集团签署全域旅游合作框架协议就“全域旅游投资”、“文化及城市品牌运营”、“景区投资建设”、“产业招商运作”、“重大体育赛事组织”等五方面内容展开合作。同时双方签订了腾冲市江东银杏村旅游区、绮罗古镇旅游区、高黎贡山国际旅游度假区三个投资开发项目，构建腾冲全域旅游核心产品。\r\n</p>\r\n<p>\r\n	2017年1月7日，腾冲全域旅游运营体系的正式全面开工\r\n</p>\r\n<p>\r\n	2017年1月7日，东方园林产业集团腾冲市全域旅游重点项目开工仪式盛大举行。中共保山市委常委、腾冲市委书记杨正晓、腾冲市人民政府市长庄宇、腾冲市人大常委会主任李艳、腾冲市政协主席张志芳、中共腾冲市委副书记希涛等有关政府领导，以及东方园林产业集团有限公司高级副总裁莫跃明、东方园林产业集团有限公司副总裁侯建东、东方园林产业集团有限公司副总裁冯君等共同出席了开工仪式。会议由腾冲市人民政府副市长高勇主持。\r\n</p>', null, '0', '', '', '1', '1', '1513823029');
INSERT INTO `r_news` VALUES ('301', '“中国旅游超级运营链”落地 中金国泰宣布中国旅游投资320工程', '6', 'up/up/1514258301663.jpg', '<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\">2017年12月18日，中金国泰集团大力支持的中国旅游投资盛典暨优质项目对接会在北京盛大开幕，中金国泰将联手巨如集团、德安杰环球顾问集团、正和岛文旅部落等机构为各类文旅项目提供全方位落地方案。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229063317_88156.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">本次大会汇聚来自河北、山西、山东、内蒙、河南、江苏、浙江、福建、青海、云南等城市的200名市长、旅游局长、150个大型旅游投资企业董事长及总裁、60家主流媒体主编等社会各界名流，齐聚北京，共襄盛举。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">作为本次会议的亮点，“中国旅游超级运营链”合作机构首度亮相。目标投资、改造、升级、托管、运营300个旅游景区、直接投资20个大型旅游综合体的中金国泰集团，联合巨如集团、私董会、袁家村、泸州老窖集团、携程网、华大基因、诺迪联盟、途远公司等机构，共同成为城市和景区旅游发展突破的重磅伙伴，成为各行业化解当下中国旅游主要矛盾的核心武器。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229063410_46741.jpg\" alt=\"\" /><img src=\"/admin/editor/attached/image/20171229/20171229063410_46741.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">此次盛典经专家评选，向十大旅游投资企业及十大旅游投资潜力项目颁发了“战马奖”。同时，中金国泰在活动现场与10家地方政府代表、10家相关领域企业签署文旅领域的合作协议，进一步加大集团“320”战略规划落地步伐。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229063440_53522.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229063456_47847.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">中金国泰集团总裁郑建龙在《中国旅游投资320工程》主题发言中，重点阐述了集团“全方位、全领域、全时空、全要素”文化旅游产业发展理念。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>全方位——六位一体</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">整体策划、规划、设计、投资、开发、运营的“六位一体”全产业链服务模式。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>全领域——1+N模式</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">大力推广“1+N”战略理念，跨界融合新能源、文化、体育、医疗、大健康、科技、观光农业等多要素，相互提升众多产业的发展水平与综合价值，最终打造高端品质、成熟完善的全年全景全要素式旅游项目。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>全时空——320战略规划</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">展望未来，中金国泰文旅集团提出了“320计划”，实现休闲旅游的全时空覆盖、旅游投资全方位服务及休闲旅游全要素全产业链打造。通过“320计划”，集团实现5年内在全国范围年接待游客量1.5亿人次，形成万亿消费生态圈。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>全要素</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">覆盖“吃、住、行、游、购、娱、商、养、学、闲、情、奇”等旅游产业要素。</span></span> \r\n</p>\r\n<p align=\"justify\">\r\n	<span style=\"font-family:SimSun;font-size:16px;\">目前，中金国泰已与云南省、海南省、山东省、四川省、山西省、辽宁省、浙江省、湖南省、江西省、新疆维吾尔自治区等资源型城市政府形成紧密的战略合作，并凭借强大的资源整合能力，联袂行业内国际顶尖企业共同打造休闲度假旅游目的地。中金国泰有能力、有信心打造自身成为具有独特DNA、有差异化优势、致力于旅游全产业链、全要素发展的投资整合商。</span> \r\n</p>', null, '0', '', '', '1', '0', '1513567289');
INSERT INTO `r_news` VALUES ('302', '中金国泰与山西省推进“黄河、长城、太行”旅游项目合作', '6', 'up/up/1513826642995.jpg', '<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\">12月2日，“山西省黄河、长城、太行三大旅游板块项目招商推介会”在上海举行，山西省副省长张复明出席并致辞，山西省旅游发展委员会主任盛佃清作主旨推介。中金国泰文化旅游集团常务副总裁徐国青代表集团受邀出席，并作《新时代催生新思想，中金国泰将运用创新思维携手山西省打造新时代背景下的文化旅游产业》主题发言。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229064527_39638.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229064534_13394.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">会上，盛佃清主任介绍了黄河、长城、太行三大旅游品牌。“黄河之魂在山西，长城博览在山西，大美太行在山西”，浑厚的文化底蕴和优质的旅游资源、不断提升的营商环境和专项政策支持赋予山西省旅游业最好的发展机遇。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229064612_70812.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">山西省委、省政府高度重视文化旅游产业的发展，正在将文化旅游业培育成为战略性支柱产业，打造富有特色和魅力的文化旅游强省。2017年9月国务院印发的《关于支持山西省进一步深化改革促进资源型经济转型发展的意见》重点提出，目标把山西省建设成为全国全域旅游示范区，标志着山西旅游发展进入了新时代。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229064633_27891.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">当天下午，盛佃清主任一行应邀回访中金国泰集团总部，集团总裁郑建龙携高管团队予以热情接待，双方在增进了解、赢得共识的基础上，就文旅领域达成合作计划。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">为贯彻落实十九大精神与旅游业改革发展的结合，中金国泰大力推动山西文化旅游业发展。郑建龙总裁向山西省旅发委一行介绍了集团深耕文化旅游产业方面积累的人才、资本、资源优势，详细阐述了集团文化旅游产业“320”发展战略规划的主旨，同时表示中金国泰将积极参与山西省文化旅游融合与创新发展之中，围绕太行、黄河、长城三大旅游品牌，运用中金国泰整体策划、规划、设计、投资、开发、运营的“六位一体”创新模式，助力山西省旅游资源开发及旅游品牌的建设。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229064701_32554.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">山西省旅游发展委员会副主任操学诚、山西文旅集团总经理高建光、省旅游发展委员会综合协调处副处长张晓、省旅游发展委员会主任科员张健、山西文旅集团秘书胡鹏；德安杰环球顾问集团董事长贾云峰、中金国泰建设集团常务副总裁兼PPP事业部总经理孙杰等共同出席了本次会议。</span><br />\r\n</span> \r\n</p>', null, '0', '', '', '1', '0', '1512185044');
INSERT INTO `r_news` VALUES ('303', '中金国泰文旅宣传片', '7', 'up/up/1513835321701.jpg', '', null, '0', '', 'public/video/1728~1.mp4', '1', '0', '1514535885');
INSERT INTO `r_news` VALUES ('304', '碧峰峡', '8', 'up/up/1513837361621.jpg', '东方碧峰峡景区是东方园林产业集团首个战略投资的文旅项目，由生态峡谷景区、大熊猫基地、野生动物园三部分组成，是四川省唯一入选的国家重点旅游投资项目。<br />\r\n景区方圆20平方公里，从成都到碧峰峡仅1个多小时车程。景区森林覆盖率达95%以上，素有“天府之肺”的美称', null, '0', '', '', '1', '1', '1513837363');
INSERT INTO `r_news` VALUES ('305', '中金国泰与云南省旅游委签订13个旅游项目开发协议 加快集团“320”计划布局', '6', 'up/up/1514252879608.jpg', '<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\">2017年11月17日，由国家旅游局、中国民航局、云南省政府共同举办的亚洲地区最大规模专业旅游盛会“2017年中国国际旅游交易会”在昆明滇池国际会展中心顺利举行。中金国泰建设集团总裁罗杰代表中金国泰集团与云南省旅游委成功签署合作框架协议，双方优势互补、整合资源、互利共赢，携手推动云南省旅游产业升级、经济发展及经济转型。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065038_56238.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065046_28457.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"> <strong>共创共赢 释放七彩云南魅力</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">云南省以美丽独特的自然景观、多彩多姿的民族风情著称，丰富的旅游资源遍布全省各地。近年来，云南省在实施“一带一路”战略和长江经济带建设的推动下，按照习总书记关于“努力把云南建成民族团结的示范区、生态建设的排头兵和南亚东南亚经济发展的辐射中心”的要求，积极构建全方位开放新格局。云南经济社会发展迅速、政策机遇宝贵、区位交通优越、资源禀赋优异、人居环境舒适，特别是旅游产业发展迎来了转型升级的发展机遇，发展前景美好，发展空间广阔。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065113_75722.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">据双方协议，中金国泰携手云南旅游委计划投资百亿，助力云南省旅游转型升级发展。中金国泰将对中国禄丰美锶小镇、西双版纳景洪市曼贺纳傣族古寨小镇项目、昆明太平镇龙溪沟康养小镇项目等13个文旅项目进行投资，并在云南省内重点区域建设特色旅游小镇、特色商品及装备产业园区、特色民族村、存量景区升级、特色精品酒店、国际主题乐园、通用航空运动、户外运动基地、健康养老中心等项目，从而助推云南旅游向“旅游+”方式转变，加大旅游与众多新兴产业的融合力度，形成新的经济增长点。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">此外，双方将共同发起设立规模为100亿元的云南省文化旅游产业引导基金，定向用于云南旅游存量项目升级改造及增量项目的投资开发。中金国泰文旅集团亦将重点响应国家“精准扶贫”的号召，优先投资、扶助及建设云南省扶贫项目。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>六位一体 “320计划”密集落地</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">作为旅游行业内模式领先的全产业链整合者，中金国泰文旅集团突破旅游行业现状，打通从规划到投资之间的联通瓶颈，形成了整体策划、规划、设计、投资、开发、运营的“六位一体”模式，在行业内独树一帜。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">此次中金国泰与云南省达成紧密合作关系，正是集团加快推进“320计划”蓝图落地的重要举措，从而早日实现在全国范围内直接投资20个休闲旅游目的地，以及投资、改造、升级、托管、运营300个存量休闲旅游目的地，实现国内休闲旅游的全时空覆盖、国内旅游投资全方位服务及国内休闲旅游全要素全产业链打造。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065201_98387.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">云南省旅游委副主任马迎春、副主任陈述云、中国旅游智库委员于冲、中金国泰控股集团总裁助理林晓华等共同列席本次会议。</span><br />\r\n</span> \r\n</p>', null, '0', '', '', '1', '0', '1510883282');
INSERT INTO `r_news` VALUES ('306', '中金国泰与沈阳旅游集团签订棋盘山联合开发协议', '6', 'up/up/1514252913304.jpg', '<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\">11月17日，2017年辽宁省旅游供给侧结构性改革产业项目招商大会在沈阳市友谊宾馆举行，辽宁省人民政府副省长王大伟、省旅游发展委员会主任石坚等领导参与了本次会议。中金国泰控股集团作为旅游行业内模式领先的全产业链整合者受邀参加此次大会，并与沈阳旅游集团成功签订棋盘山联合开发协议。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065327_73803.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">本次招商大会由辽宁省人民政府主办，辽宁省旅游发展委员会承办。会上，辽宁省共策划包装生态观光、休闲度假、养生养老、体育休闲运动以及特色小镇等各类旅游招商项目共212个，计划投资额达3200多亿元人民币，旅游行业呈现强劲的发展势头。棋盘山国际风景旅游开发区作为辽宁沈阳最大的自然风景区，全区规划占地面积203平方公里，是自然山水林木为主体，集森林生态旅游、冰雪旅游、风光旅游、度假旅游、商贸购物、文体娱乐为一体的旅游胜地。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065347_48757.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">在双方充分的合作交流下，中金国泰集团旗下中金华鼎旅游发展有限公司总经理宋朝阳代表集团与沈阳旅游集团进行现场签约。沈阳旅游集团由沈阳市委、市政府发起组建，初期以整合棋盘山地区的旅游景区为主，逐步立足创新发展战略，积极构建整合资源、扩大优势、盘活资产、开发建设、拓展业务的平台，形成旅游投资主体、整合旅游产业要素、支撑旅游产业发展的重要功能。此次签约，双方针对棋盘山旅游资源开发及设立文化旅游产业基金达成合作，共同优化旅游业资本、产品、市场结构，培育和完善旅游市场体系，提高城市旅游业综合竞争力，把沈阳建成旅游强市和东北亚国际旅游目的地。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065406_28577.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065428_72020.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"> </span> \r\n</p>\r\n<p align=\"justify\">\r\n	<span style=\"font-family:SimSun;font-size:16px;\">此次合作，中金国泰充分发挥整体策划、规划、设计、投资、开发、运营的“六位一体”全产业链聚合能力，为棋盘山景区整体升级和旅游资源开发献策献力，同时发挥中金国泰产融结合的优势，以金融活水引入到文旅产业的投资与开发中，推动旅游产业迅速发展、升级。</span> \r\n</p>', null, '0', '', '', '1', '0', '1510883316');
INSERT INTO `r_news` VALUES ('307', '中金国泰与海南旅游委签订合作协议 助力打造国际旅游岛', '6', 'up/up/1514252946994.jpg', '<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\">2017年11月16日，中金国泰集团总裁郑建龙应邀率领团队再赴海南省，海南省旅游发展委员会主任孙颖等领导予以热情接待。双方在前期深入沟通的基础上，成功签订合作协议，携手建立全方位深度合作的紧密型战略合作伙伴关系，共同推动海南省全域旅游开发，整体提升海南旅游品质，促进相关产业的发展繁荣。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229080627_97239.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229080638_65063.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>旅游资源，得天独厚，海南省大力推进国际旅游岛建设</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">海南省凭借得天独厚的旅游资源、地理优势和生态环境，一直是最受国内游客青睐的旅游首选目的地之一。“十三五”期间，海南计划投资488个旅游项目，总投资额将达8393亿元，海南旅游业正面临着前所未有的良好发展机遇，蕴藏着投资创业的无限发展商机，亦催生新的发展需求，急需推进旅游要素转型升级，进一步完善旅游基础设施和服务设施，开发特色旅游产品，规范旅游市场秩序，全面提升海南旅游管理和服务水平。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">孙颖主任在签约仪式上表示，此次签署战略合作框架协议，既是双方共同抓住海南旅游产业快速发展的有利时机，共同促进旅游产业发展的行动缩影，又是双方发挥各自优势、共谋发展、共获双赢的重要举措，更是双方携手共进，提升互利合作水平，扩大社会影响力做出的实际行动。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065759_80867.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065811_36880.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\"><strong>政府搭台，企业唱戏，中金国泰携手海南省共促全域旅游发展</strong></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">作为旅游行业内模式领先的全产业链整合者，中金国泰文旅板块突破旅游行业现状，打通从规划到投资之间的联通瓶颈，创造文化旅游产业投资引导和驱动的创新模式，并以前瞻性的投资眼光率先提出“全方位、全领域、全时空”的文化旅游产业发展理念。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">中金国泰总裁郑建龙表示，中金国泰文旅集团将积极发挥整体策划、规划、设计、投资、开发、运营的“六位一体”全产业链聚合能力，为海南省旅游业转型升级提供切实可行的解决方案；通过组建景区管理公司，以“文化发掘+非遗导入+硬件提升+游客导入+运营标准化+智慧旅游”模式开展旅㳺景区合作，大力提升海南省景区品质和运营水平，并引入新的文旅项目落地海南，打造高端品质、成熟完善的全年全景全要素式旅游项目。此外，中金国泰还将以国际化创新思维为海南省建立旅游新业态发展基金、组建海南旅游银行、打造旅游商品与装备产业园、开发“装配式建筑”为特色的乡村旅居项目等；引入“旅游+”战略理念，跨界叠加融合多种业态，相互提升众多产业的发展水平与综合价值，助力海南省经济协调发展。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065906_89694.jpg\" alt=\"\" /><img src=\"/admin/editor/attached/image/20171229/20171229065906_89694.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">中金国泰文旅集团计划在2020年前，在全国范围内直接投资20个休闲旅游目的地，以及投资、改造、升级、托管、运营300个存量休闲旅游目的地，实现休闲旅游的全时空覆盖、旅游投资全方位服务及休闲旅游全要素全产业链打造。目前，中金国泰文旅集团已与海南省、云南省、辽宁省、山东省、四川省、浙江省、湖南省、山西省、江西省、新疆维吾尔自治区等资源型城市政府形成紧密的战略合作，并凭借强大的资源整合能力，联袂行业内国际顶尖企业共同打造休闲度假旅游目的地。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">通过此次政企合作，强强联手，中金国泰创新的资本、资源、人才优势将极大丰富和提升海南旅游产业的品质及业态，弥补海南的旅游产品以观光休闲为主且无大型旅游综合体的缺失，将会为游客提供全方位、多元化的一站式旅游服务产品，推动海南旅游产业供给侧结构性改革，提升海南旅游的质量与水平，全面加速海南旅游产业的升级转型，有效推动海南国际旅游岛建设。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229065931_74890.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"> </span> \r\n</p>\r\n<p align=\"justify\">\r\n	<span style=\"font-family:SimSun;font-size:16px;\">海南省旅游委副主任陈铁军、办公室主任张丽敏、旅游产业处处长李红、旅游开发处处长李勇、国际与港澳台市场推广处处长王可；中润达财富控股有限公司董事长胡家达、华人南北集团董事局主席金勇、上海众鼎实业集团董事长张哲仁、昆吾九鼎投资管理有限公司副总裁马洪、华融证券有限公司副总裁施文姣、中金国泰控股集团总裁助理佘家雄、中金国泰文旅集团策规部总监曹洋等共同出席本次签约仪式。</span> \r\n</p>', null, '0', '', '', '1', '0', '1510796948');
INSERT INTO `r_news` VALUES ('308', '中金国泰受邀参加重庆市重大旅游招商项目签约活动', '6', 'up/up/1514256175192.jpg', '<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\">11月14日，重庆市举行全市重大旅游招商项目集中签约活动，共签约43个旅游项目，总投资达1704亿元。中金国泰文旅集团作为国家旅游投资企业代表，与重庆市万盛经济技术开发区管理委员会就万盛全域旅游投资合作项目进行现场签约，助力共建“山水之都，美丽重庆”。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229070030_41777.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">此次集中签约主要包括旅游特色小镇项目、市级旅游度假区项目、旅游景区项目、乡村旅游项目四大类。重庆市委副书记、市长张国清，市委常委、常务副市长吴存荣，副市长谭家玲出席签约活动。中金国泰文旅集团副总裁朱爱斌、中金国泰西南公司总经理张天杨等领导受邀出席。中金国泰文旅集团坚持全域旅游发展方向，以创新理念打造的特色旅游项目“万盛全域旅游投资合作项目”已被列入重庆市重点旅游项目之一。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229070051_39891.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><span style=\"font-family:SimSun;font-size:16px;\">2017年5月，中金国泰与重庆市人民政府签署战略合作协议，达成多项战略共识。中金国泰领导多次到万盛区进行实地考察，并与市级、区级领导一起商讨设计、运营及管理方案。目前已共同成立合资公司“重庆中金国泰旅游发展有限公司”，由该平台公司对”万盛全域旅游投资合作项目”进行全面开发及运作。</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"><img src=\"/admin/editor/attached/image/20171229/20171229070111_46562.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimSun;font-size:16px;\"> </span> \r\n</p>\r\n					<p align=\"justify\">\r\n						<span style=\"font-family:SimSun;font-size:16px;\">此次中金国泰倾力打造的万盛全域旅游投资合作项目作为重庆市重点旅游项目参与现场签约，意味着中金国泰在重庆市的旅游投资项目进入实质进展阶段。重庆市也是继海南、云南、辽宁、四川、山东、湖北、贵州、山西、浙江、福建、广东、新疆、西藏等之后，中金国泰文旅板块大力开拓的又一个重点区域市场，既是中金国泰多领域产业协同发展强有力的支撑，同时也预示着中金国泰文旅板块“320战略计划”已经全面进入投资开发阶段。</span> \r\n					</p>', null, '0', '', '', '1', '0', '1510627376');
INSERT INTO `r_news` VALUES ('309', '特色小镇', '12', '', '中金国泰倾力打造以特色产业为主导、文化旅游为支撑、具有独有定位的特色小镇。以“创新、协调、绿色、开放、发展”为理念，结合中金国泰“六位一体”开发模式，明确产业定位，精准IP引爆，深入挖掘小镇人文底蕴、有机结合生态禀赋；做到定位“独特”，投资“有效”，文化“契合”；打造以旅游功能为支撑，“产、城、人、文”四维构筑的产融结合为核心，“吃住行游娱购”旅游六要素业态兼顾的“中金品牌特色小镇”，并不断在探索中实践、在创新中完善。优先改革“试验性”，落实政策“个性化”，完善服务“定制化”的特色小镇建设之路，形成特色小镇策划、规划、设计、投资、建设、运营一条龙专业化打造模式，同时，专业化团队也将提供国家各类各级特色小镇申报的全流程专业标准化服务', null, '0', '', '', '1', '0', '1514268770');
INSERT INTO `r_news` VALUES ('310', '休闲旅游综合体', '12', '', '中金国泰围绕“休闲生活”品牌理念打造高端旅游综合体项目，涵盖休闲旅游、主题游乐、精品购物、文化创意、艺术展演、饕餮美食、高端酒店、生活配套、医疗康养等多业态、全方位的“休闲生活”产品。从前期策划、规划、设计到中期投资、开发、建设落地，到后期招商、运营、管理，提供一站式的全产业链打造模式。', null, '0', '', '', '1', '0', '1514268808');
INSERT INTO `r_news` VALUES ('311', '旅游商品装备产业园', '12', '', '中金国泰着力于打造国内首创的旅游商品装备产业园，以产融结合的模式引导投资开发，以旅游IP品牌的价值提升促进全域旅游体系的形成，以旅游商品及装备制造业推动区域制造产业结构升级、培育新经济增长点。中金国泰以“六位一体”开发模式为导向，文创产业孵化创新为驱动，金融资本运作为保障，打造旅游商品及装备全产业链覆盖的综合性全功能专业园区，功能涵盖文化、旅游、体育商品的研发、创意、生产、制造、加工、仓储、物流、O2O交易，旅游IP孵化、品牌营销，文化、旅游、体育装备开发与制造等。旅游商品装备产业园作为一座集文化旅游，文创衍生，展览展示，电子商务，生产加工，商业配套，生活配套，新能源，智慧物流等多业态，多产业整合为一体的绿色生态产业园，将为所在地的全域旅游发展提供全产业链服务保障，推动全域旅游建设的加快与完善。', null, '0', '', '', '1', '0', '1514268830');
INSERT INTO `r_news` VALUES ('312', '美丽乡村/田园综合体', '12', '', '<p>\r\n	中金国泰运用集团“六位一体”开发模式，整合资源，集中力量，推行产融结合、产业现行的发展思路，开创了美丽乡村建设实施的全新局面。通过培育“一村一品，一镇一特色”的旅游商品，在覆盖全国320个景区的智慧电商系统进行销售，从而实现文旅扶贫；通过打造光伏为主的村级电站，帮助美丽乡村实现新能源扶贫。\r\n</p>\r\n<p>\r\n	融合“科技农业+休闲田园+产业文旅”的综合性生态文旅休闲及新能源技术应用为一体的新型田园综合体旅游项目。以农业为主导，以科技为支撑，以文创为双翼，融合现代农业科技博览，特色农副产品加工、商贸物流、科普会展、教育培训、休闲观光、文化创意等多个相关产业，构建成为一个多功能、复合型、创新性的产业综合体。\r\n</p>', null, '0', '', '', '1', '0', '1514269027');
INSERT INTO `r_news` VALUES ('313', '全要素', '5', '', '<img src=\"/admin/editor/attached/image/20171229/20171229060926_28858.jpg\" width=\"880\" height=\"1071\" alt=\"\" />', null, '0', '', '', '1', '0', '1514518877');
INSERT INTO `r_news` VALUES ('314', '中金国泰与海南等省签订战略合作协议 加快“320计划”落地', '7', 'up/up/1514539021864.jpg', '', null, '0', '', 'public/video/320.mp4', '1', '0', '1514535169');

-- ----------------------------
-- Table structure for `r_news_img`
-- ----------------------------
DROP TABLE IF EXISTS `r_news_img`;
CREATE TABLE `r_news_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `typeid` int(11) DEFAULT NULL,
  `istop` int(11) DEFAULT NULL,
  `timedate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_news_img
-- ----------------------------
INSERT INTO `r_news_img` VALUES ('209', null, 'up/up/1513840565440.jpg', '304', '1', '1513840567');
INSERT INTO `r_news_img` VALUES ('210', null, 'up/up/1513840587538.jpg', '304', '1', '1513840589');
INSERT INTO `r_news_img` VALUES ('211', null, 'up/up/1513840764271.jpg', '304', '1', '1513840765');
INSERT INTO `r_news_img` VALUES ('212', null, 'up/up/1513840770290.jpg', '304', '1', '1513840771');
INSERT INTO `r_news_img` VALUES ('213', null, 'up/up/1513840777603.jpg', '304', '1', '1513840778');
INSERT INTO `r_news_img` VALUES ('214', null, 'up/up/1513840886757.jpg', '304', '1', '1513840887');
INSERT INTO `r_news_img` VALUES ('215', null, 'up/up/1513840892632.jpg', '304', '1', '1513840893');
INSERT INTO `r_news_img` VALUES ('216', null, 'up/up/1513840898358.jpg', '304', '1', '1513840899');

-- ----------------------------
-- Table structure for `r_news_type`
-- ----------------------------
DROP TABLE IF EXISTS `r_news_type`;
CREATE TABLE `r_news_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT NULL,
  `timedate` int(11) DEFAULT NULL,
  `des` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_news_type
-- ----------------------------
INSERT INTO `r_news_type` VALUES ('4', '了解我们', '1', '1513819992', null);
INSERT INTO `r_news_type` VALUES ('5', '核心模式', '1', '1513821262', null);
INSERT INTO `r_news_type` VALUES ('6', '新闻', '1', '1513822788', null);
INSERT INTO `r_news_type` VALUES ('7', '视频', '1', '1513822796', null);
INSERT INTO `r_news_type` VALUES ('12', '产品服务', '1', '1514268586', '');

-- ----------------------------
-- Table structure for `r_partner`
-- ----------------------------
DROP TABLE IF EXISTS `r_partner`;
CREATE TABLE `r_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `url` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT NULL,
  `isdel` int(11) DEFAULT NULL,
  `timedate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_partner
-- ----------------------------
