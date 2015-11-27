# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: typo3
#--------------------------------------------------------


#
# Table structure for table "tx_odsdomaincheck_tlds"
#
DROP TABLE IF EXISTS tx_odsdomaincheck_tlds;
CREATE TABLE tx_odsdomaincheck_tlds (
  uid int(10) unsigned NOT NULL auto_increment,
  pid int(10) unsigned NOT NULL default '0',
  tstamp int(10) unsigned NOT NULL default '0',
  crdate int(10) unsigned NOT NULL default '0',
  cruser_id int(10) unsigned NOT NULL default '0',
  deleted tinyint(3) unsigned NOT NULL default '0',
  hidden tinyint(3) unsigned NOT NULL default '0',
  tld varchar(64) NOT NULL default '',
  regex_check varchar(1000) NOT NULL default '',
  whois int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (uid),
  KEY parent (pid)
);


INSERT INTO tx_odsdomaincheck_tlds VALUES ('1', '0', '0', '0', '0', '0', '0', 'ac', '', '33');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('2', '0', '0', '0', '0', '0', '0', 'af', '', '30');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('3', '0', '0', '0', '0', '0', '0', 'com.ag', '', '35');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('4', '0', '0', '0', '0', '0', '0', 'edu.ag', '', '35');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('5', '0', '0', '0', '0', '0', '0', 'gov.ag', '', '35');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('6', '0', '0', '0', '0', '0', '0', 'net.ag', '', '35');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('7', '0', '0', '0', '0', '0', '0', 'org.ag', '', '35');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('8', '0', '0', '0', '0', '0', '0', 'ag', '', '35');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('9', '0', '0', '0', '0', '0', '0', 'as', '', '36');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('10', '0', '0', '0', '0', '0', '0', 'ac.at', '[-äëöüàáâèéêìíîïòóôùúûýÿãåæçðñõøœšþža-z0-9]{3,63}', '1');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('11', '0', '0', '0', '0', '0', '0', 'co.at', '[-äëöüàáâèéêìíîïòóôùúûýÿãåæçðñõøœšþža-z0-9]{3,63}', '1');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('12', '0', '0', '0', '0', '0', '0', 'gv.at', '[-äëöüàáâèéêìíîïòóôùúûýÿãåæçðñõøœšþža-z0-9]{3,63}', '1');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('13', '0', '0', '0', '0', '0', '0', 'or.at', '[-äëöüàáâèéêìíîïòóôùúûýÿãåæçðñõøœšþža-z0-9]{3,63}', '1');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('14', '0', '0', '0', '0', '0', '0', 'at', '[-äëöüàáâèéêìíîïòóôùúûýÿãåæçðñõøœšþža-z0-9]{3,63}', '1');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('15', '0', '0', '0', '0', '0', '0', 'asn.au', '', '6');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('16', '0', '0', '0', '0', '0', '0', 'com.au', '', '6');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('17', '0', '0', '0', '0', '0', '0', 'edu.au', '', '5');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('18', '0', '0', '0', '0', '0', '0', 'id.au', '', '6');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('19', '0', '0', '0', '0', '0', '0', 'net.au', '', '6');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('20', '0', '0', '0', '0', '0', '0', 'org.au', '', '6');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('21', '0', '0', '0', '0', '0', '0', 'ac.be', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('22', '0', '0', '0', '0', '0', '0', 'be', '', '15');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('23', '0', '0', '0', '0', '0', '0', 'bg', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('24', '0', '0', '0', '0', '0', '0', 'agr.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('25', '0', '0', '0', '0', '0', '0', 'am.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('26', '0', '0', '0', '0', '0', '0', 'art.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('27', '0', '0', '0', '0', '0', '0', 'com.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('28', '0', '0', '0', '0', '0', '0', 'coop.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('29', '0', '0', '0', '0', '0', '0', 'esp.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('30', '0', '0', '0', '0', '0', '0', 'etc.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('31', '0', '0', '0', '0', '0', '0', 'far.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('32', '0', '0', '0', '0', '0', '0', 'fm.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('33', '0', '0', '0', '0', '0', '0', 'g12.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('34', '0', '0', '0', '0', '0', '0', 'gov.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('35', '0', '0', '0', '0', '0', '0', 'imb.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('36', '0', '0', '0', '0', '0', '0', 'ind.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('37', '0', '0', '0', '0', '0', '0', 'inf.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('38', '0', '0', '0', '0', '0', '0', 'mil.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('39', '0', '0', '0', '0', '0', '0', 'net.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('40', '0', '0', '0', '0', '0', '0', 'org.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('41', '0', '0', '0', '0', '0', '0', 'psi.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('42', '0', '0', '0', '0', '0', '0', 'rec.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('43', '0', '0', '0', '0', '0', '0', 'srv.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('44', '0', '0', '0', '0', '0', '0', 'tmp.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('45', '0', '0', '0', '0', '0', '0', 'tur.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('46', '0', '0', '0', '0', '0', '0', 'tv.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('47', '0', '0', '0', '0', '0', '0', 'edu.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('48', '0', '0', '0', '0', '0', '0', 'nom.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('49', '0', '0', '0', '0', '0', '0', 'adm.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('50', '0', '0', '0', '0', '0', '0', 'adv.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('51', '0', '0', '0', '0', '0', '0', 'arq.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('52', '0', '0', '0', '0', '0', '0', 'ato.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('53', '0', '0', '0', '0', '0', '0', 'bio.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('54', '0', '0', '0', '0', '0', '0', 'bmd.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('55', '0', '0', '0', '0', '0', '0', 'cim.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('56', '0', '0', '0', '0', '0', '0', 'cng.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('57', '0', '0', '0', '0', '0', '0', 'cnt.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('58', '0', '0', '0', '0', '0', '0', 'ecn.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('59', '0', '0', '0', '0', '0', '0', 'eng.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('60', '0', '0', '0', '0', '0', '0', 'eti.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('61', '0', '0', '0', '0', '0', '0', 'fnd.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('62', '0', '0', '0', '0', '0', '0', 'fot.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('63', '0', '0', '0', '0', '0', '0', 'fst.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('64', '0', '0', '0', '0', '0', '0', 'ggf.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('65', '0', '0', '0', '0', '0', '0', 'jor.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('66', '0', '0', '0', '0', '0', '0', 'lel.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('67', '0', '0', '0', '0', '0', '0', 'mat.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('68', '0', '0', '0', '0', '0', '0', 'med.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('69', '0', '0', '0', '0', '0', '0', 'mus.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('70', '0', '0', '0', '0', '0', '0', 'not.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('71', '0', '0', '0', '0', '0', '0', 'ntr.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('72', '0', '0', '0', '0', '0', '0', 'odo.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('73', '0', '0', '0', '0', '0', '0', 'ppg.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('74', '0', '0', '0', '0', '0', '0', 'pro.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('75', '0', '0', '0', '0', '0', '0', 'psc.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('76', '0', '0', '0', '0', '0', '0', 'qsl.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('77', '0', '0', '0', '0', '0', '0', 'trd.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('78', '0', '0', '0', '0', '0', '0', 'vet.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('79', '0', '0', '0', '0', '0', '0', 'zlg.br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('80', '0', '0', '0', '0', '0', '0', 'br', '', '37');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('81', '0', '0', '0', '0', '0', '0', 'com.bz', '', '7');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('82', '0', '0', '0', '0', '0', '0', 'net.bz', '', '7');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('83', '0', '0', '0', '0', '0', '0', 'org.bz', '', '7');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('84', '0', '0', '0', '0', '0', '0', 'bz', '', '7');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('85', '0', '0', '0', '0', '0', '0', 'bc.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('86', '0', '0', '0', '0', '0', '0', 'mb.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('87', '0', '0', '0', '0', '0', '0', 'nb.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('88', '0', '0', '0', '0', '0', '0', 'nf.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('89', '0', '0', '0', '0', '0', '0', 'ns.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('90', '0', '0', '0', '0', '0', '0', 'nt.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('91', '0', '0', '0', '0', '0', '0', 'on.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('92', '0', '0', '0', '0', '0', '0', 'pe.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('93', '0', '0', '0', '0', '0', '0', 'qc.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('94', '0', '0', '0', '0', '0', '0', 'sk.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('95', '0', '0', '0', '0', '0', '0', 'yk.ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('96', '0', '0', '0', '0', '0', '0', 'ca', '', '10');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('97', '0', '0', '0', '0', '0', '0', 'cd', '', '8');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('98', '0', '0', '0', '0', '0', '0', 'cl', '', '40');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('99', '0', '0', '0', '0', '0', '0', 'ch', '[-àáâãäåæçèéêëðìíîïñòóôõöøþùúûüýÿa-z0-9]{3,21}', '39');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('100', '0', '0', '0', '0', '0', '0', 'co.ck', '', '11');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('101', '0', '0', '0', '0', '0', '0', 'edu.ck', '', '11');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('102', '0', '0', '0', '0', '0', '0', 'gov.ck', '', '11');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('103', '0', '0', '0', '0', '0', '0', 'net.ck', '', '11');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('104', '0', '0', '0', '0', '0', '0', 'org.ck', '', '11');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('105', '0', '0', '0', '0', '0', '0', 'cm', '', '60');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('106', '0', '0', '0', '0', '0', '0', 'edu.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('107', '0', '0', '0', '0', '0', '0', 'ac.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('108', '0', '0', '0', '0', '0', '0', 'ah.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('109', '0', '0', '0', '0', '0', '0', 'bj.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('110', '0', '0', '0', '0', '0', '0', 'com.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('111', '0', '0', '0', '0', '0', '0', 'cq.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('112', '0', '0', '0', '0', '0', '0', 'gd.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('113', '0', '0', '0', '0', '0', '0', 'gov.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('114', '0', '0', '0', '0', '0', '0', 'gs.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('115', '0', '0', '0', '0', '0', '0', 'gx.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('116', '0', '0', '0', '0', '0', '0', 'gz.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('117', '0', '0', '0', '0', '0', '0', 'hb.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('118', '0', '0', '0', '0', '0', '0', 'he.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('119', '0', '0', '0', '0', '0', '0', 'hi.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('120', '0', '0', '0', '0', '0', '0', 'hk.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('121', '0', '0', '0', '0', '0', '0', 'hl.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('122', '0', '0', '0', '0', '0', '0', 'hn.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('123', '0', '0', '0', '0', '0', '0', 'jl.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('124', '0', '0', '0', '0', '0', '0', 'js.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('125', '0', '0', '0', '0', '0', '0', 'mo.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('126', '0', '0', '0', '0', '0', '0', 'net.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('127', '0', '0', '0', '0', '0', '0', 'nm.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('128', '0', '0', '0', '0', '0', '0', 'nx.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('129', '0', '0', '0', '0', '0', '0', 'ln.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('130', '0', '0', '0', '0', '0', '0', 'org.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('131', '0', '0', '0', '0', '0', '0', 'qh.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('132', '0', '0', '0', '0', '0', '0', 'sc.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('133', '0', '0', '0', '0', '0', '0', 'sh.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('134', '0', '0', '0', '0', '0', '0', 'sn.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('135', '0', '0', '0', '0', '0', '0', 'tj.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('136', '0', '0', '0', '0', '0', '0', 'tw.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('137', '0', '0', '0', '0', '0', '0', 'yn.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('138', '0', '0', '0', '0', '0', '0', 'xj.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('139', '0', '0', '0', '0', '0', '0', 'xz.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('140', '0', '0', '0', '0', '0', '0', 'zj.cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('141', '0', '0', '0', '0', '0', '0', 'cn', '', '12');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('142', '0', '0', '0', '0', '0', '0', 'cx', '', '42');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('143', '0', '0', '0', '0', '0', '0', 'cz', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('144', '0', '0', '0', '0', '0', '0', 'de', '[-áàăâåäãąāæćĉčċçďđéèĕêěëėęēğĝġģĥħíìĭîïĩįīıĵķĺľļłńňñņŋóòŏôöőõøōœĸŕřŗśŝšşßťţŧúùŭûůüűũųūŵýŷÿźža-z0-9]{1,63}', '14');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('145', '0', '0', '0', '0', '0', '0', 'ac.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('146', '0', '0', '0', '0', '0', '0', 'biz.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('147', '0', '0', '0', '0', '0', '0', 'com.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('148', '0', '0', '0', '0', '0', '0', 'gov.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('149', '0', '0', '0', '0', '0', '0', 'info.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('150', '0', '0', '0', '0', '0', '0', 'mil.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('151', '0', '0', '0', '0', '0', '0', 'name.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('152', '0', '0', '0', '0', '0', '0', 'net.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('153', '0', '0', '0', '0', '0', '0', 'org.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('154', '0', '0', '0', '0', '0', '0', 'pro.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('155', '0', '0', '0', '0', '0', '0', 'school.fj', '', '68');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('156', '0', '0', '0', '0', '0', '0', 'fo', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('157', '0', '0', '0', '0', '0', '0', 'asso.fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('158', '0', '0', '0', '0', '0', '0', 'com.fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('159', '0', '0', '0', '0', '0', '0', 'nom.fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('160', '0', '0', '0', '0', '0', '0', 'prd.fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('161', '0', '0', '0', '0', '0', '0', 'presse.fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('162', '0', '0', '0', '0', '0', '0', 'tm.fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('163', '0', '0', '0', '0', '0', '0', 'fr', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('164', '0', '0', '0', '0', '0', '0', 'co.gg', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('165', '0', '0', '0', '0', '0', '0', 'gov.gg', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('166', '0', '0', '0', '0', '0', '0', 'net.gg', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('167', '0', '0', '0', '0', '0', '0', 'org.gg', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('168', '0', '0', '0', '0', '0', '0', 'sch.gg', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('169', '0', '0', '0', '0', '0', '0', 'gg', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('170', '0', '0', '0', '0', '0', '0', 'gl', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('171', '0', '0', '0', '0', '0', '0', 'gm', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('172', '0', '0', '0', '0', '0', '0', 'gs', '', '2');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('173', '0', '0', '0', '0', '0', '0', 'com.hk', '', '23');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('174', '0', '0', '0', '0', '0', '0', 'edu.hk', '', '23');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('175', '0', '0', '0', '0', '0', '0', 'gov.hk', '', '23');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('176', '0', '0', '0', '0', '0', '0', 'net.hk', '', '23');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('177', '0', '0', '0', '0', '0', '0', 'org.hk', '', '23');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('178', '0', '0', '0', '0', '0', '0', 'hm', '', '59');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('179', '0', '0', '0', '0', '0', '0', 'co.hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('180', '0', '0', '0', '0', '0', '0', 'info.hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('181', '0', '0', '0', '0', '0', '0', 'org.hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('182', '0', '0', '0', '0', '0', '0', 'priv.hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('183', '0', '0', '0', '0', '0', '0', 'sport.hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('184', '0', '0', '0', '0', '0', '0', 'tm.hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('185', '0', '0', '0', '0', '0', '0', 'hu', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('186', '0', '0', '0', '0', '0', '0', 'ie', '', '19');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('187', '0', '0', '0', '0', '0', '0', 'ac.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('188', '0', '0', '0', '0', '0', '0', 'co.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('189', '0', '0', '0', '0', '0', '0', 'gov.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('190', '0', '0', '0', '0', '0', '0', 'idf.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('191', '0', '0', '0', '0', '0', '0', 'k12.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('192', '0', '0', '0', '0', '0', '0', 'muni.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('193', '0', '0', '0', '0', '0', '0', 'net.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('194', '0', '0', '0', '0', '0', '0', 'org.il', '', '27');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('195', '0', '0', '0', '0', '0', '0', 'ac.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('196', '0', '0', '0', '0', '0', '0', 'co.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('197', '0', '0', '0', '0', '0', '0', 'gov.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('198', '0', '0', '0', '0', '0', '0', 'id.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('199', '0', '0', '0', '0', '0', '0', 'net.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('200', '0', '0', '0', '0', '0', '0', 'org.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('201', '0', '0', '0', '0', '0', '0', 'sch.ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('202', '0', '0', '0', '0', '0', '0', 'ir', '', '44');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('203', '0', '0', '0', '0', '0', '0', 'is', '', '26');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('204', '0', '0', '0', '0', '0', '0', 'it', '', '45');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('205', '0', '0', '0', '0', '0', '0', 'je', '', '25');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('206', '0', '0', '0', '0', '0', '0', 'ac.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('207', '0', '0', '0', '0', '0', '0', 'ad.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('208', '0', '0', '0', '0', '0', '0', 'co.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('209', '0', '0', '0', '0', '0', '0', 'ed.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('210', '0', '0', '0', '0', '0', '0', 'go.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('211', '0', '0', '0', '0', '0', '0', 'ne.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('212', '0', '0', '0', '0', '0', '0', 'or.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('213', '0', '0', '0', '0', '0', '0', 'geo.jp', '', '34');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('214', '0', '0', '0', '0', '0', '0', 'ac.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('215', '0', '0', '0', '0', '0', '0', 'co.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('216', '0', '0', '0', '0', '0', '0', 'go.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('217', '0', '0', '0', '0', '0', '0', 'ne.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('218', '0', '0', '0', '0', '0', '0', 'or.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('219', '0', '0', '0', '0', '0', '0', 'pe.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('220', '0', '0', '0', '0', '0', '0', 're.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('221', '0', '0', '0', '0', '0', '0', 'seoul.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('222', '0', '0', '0', '0', '0', '0', 'kyonggi.kr', '', '29');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('223', '0', '0', '0', '0', '0', '0', 'la', '', '46');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('224', '0', '0', '0', '0', '0', '0', 'li', '[-àáâãäåæçèéêëðìíîïñòóôõöøþùúûüýÿa-z0-9]{3,21}', '47');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('225', '0', '0', '0', '0', '0', '0', 'lt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('226', '0', '0', '0', '0', '0', '0', 'lu', '', '16');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('227', '0', '0', '0', '0', '0', '0', 'asn.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('228', '0', '0', '0', '0', '0', '0', 'com.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('229', '0', '0', '0', '0', '0', '0', 'conf.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('230', '0', '0', '0', '0', '0', '0', 'edu.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('231', '0', '0', '0', '0', '0', '0', 'gov.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('232', '0', '0', '0', '0', '0', '0', 'id.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('233', '0', '0', '0', '0', '0', '0', 'mil.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('234', '0', '0', '0', '0', '0', '0', 'net.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('235', '0', '0', '0', '0', '0', '0', 'org.lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('236', '0', '0', '0', '0', '0', '0', 'lv', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('237', '0', '0', '0', '0', '0', '0', 'tm.mc', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('238', '0', '0', '0', '0', '0', '0', 'asso.mc', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('239', '0', '0', '0', '0', '0', '0', 'mc', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('240', '0', '0', '0', '0', '0', '0', 'ms', '', '2');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('241', '0', '0', '0', '0', '0', '0', 'com.mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('242', '0', '0', '0', '0', '0', '0', 'edu.mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('243', '0', '0', '0', '0', '0', '0', 'net.mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('244', '0', '0', '0', '0', '0', '0', 'org.mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('245', '0', '0', '0', '0', '0', '0', 'tm.mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('246', '0', '0', '0', '0', '0', '0', 'uu.mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('247', '0', '0', '0', '0', '0', '0', 'mt', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('248', '0', '0', '0', '0', '0', '0', 'com.mx', '', '49');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('249', '0', '0', '0', '0', '0', '0', 'edu.mx', '', '49');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('250', '0', '0', '0', '0', '0', '0', 'gob.mx', '', '49');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('251', '0', '0', '0', '0', '0', '0', 'net.mx', '', '49');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('252', '0', '0', '0', '0', '0', '0', 'org.mx', '', '49');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('253', '0', '0', '0', '0', '0', '0', 'mx', '', '49');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('254', '0', '0', '0', '0', '0', '0', 'nl', '', '18');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('255', '0', '0', '0', '0', '0', '0', 'no', '', '57');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('256', '0', '0', '0', '0', '0', '0', 'nu', '', '52');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('257', '0', '0', '0', '0', '0', '0', 'biz.pl', '', '17');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('258', '0', '0', '0', '0', '0', '0', 'com.pl', '', '17');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('259', '0', '0', '0', '0', '0', '0', 'net.pl', '', '17');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('260', '0', '0', '0', '0', '0', '0', 'org.pl', '', '17');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('261', '0', '0', '0', '0', '0', '0', 'pl', '', '17');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('262', '0', '0', '0', '0', '0', '0', 'ac.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('263', '0', '0', '0', '0', '0', '0', 'co.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('264', '0', '0', '0', '0', '0', '0', 'cri.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('265', '0', '0', '0', '0', '0', '0', 'gen.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('266', '0', '0', '0', '0', '0', '0', 'govt.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('267', '0', '0', '0', '0', '0', '0', 'iwi.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('268', '0', '0', '0', '0', '0', '0', 'net.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('269', '0', '0', '0', '0', '0', '0', 'org.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('270', '0', '0', '0', '0', '0', '0', 'mil.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('271', '0', '0', '0', '0', '0', '0', 'pm', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('272', '0', '0', '0', '0', '0', '0', 'school.nz', '', '20');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('273', '0', '0', '0', '0', '0', '0', 're', '', '43');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('274', '0', '0', '0', '0', '0', '0', 'arts.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('275', '0', '0', '0', '0', '0', '0', 'com.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('276', '0', '0', '0', '0', '0', '0', 'firm.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('277', '0', '0', '0', '0', '0', '0', 'info.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('278', '0', '0', '0', '0', '0', '0', 'nom.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('279', '0', '0', '0', '0', '0', '0', 'nt.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('280', '0', '0', '0', '0', '0', '0', 'org.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('281', '0', '0', '0', '0', '0', '0', 'rec.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('282', '0', '0', '0', '0', '0', '0', 'store.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('283', '0', '0', '0', '0', '0', '0', 'tm.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('284', '0', '0', '0', '0', '0', '0', 'www.ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('285', '0', '0', '0', '0', '0', '0', 'ro', '', '63');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('286', '0', '0', '0', '0', '0', '0', 'com.ru', '', '62');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('287', '0', '0', '0', '0', '0', '0', 'net.ru', '', '62');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('288', '0', '0', '0', '0', '0', '0', 'org.ru', '', '62');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('289', '0', '0', '0', '0', '0', '0', 'ru', '', '62');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('290', '0', '0', '0', '0', '0', '0', 'pp.se', '', '32');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('291', '0', '0', '0', '0', '0', '0', 'press.se', '', '32');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('292', '0', '0', '0', '0', '0', '0', 'org.se', '', '32');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('293', '0', '0', '0', '0', '0', '0', 'se', '', '32');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('294', '0', '0', '0', '0', '0', '0', 'com.sg', '', '51');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('295', '0', '0', '0', '0', '0', '0', 'edu.sg', '', '51');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('296', '0', '0', '0', '0', '0', '0', 'gov.sg', '', '51');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('297', '0', '0', '0', '0', '0', '0', 'not.sg', '', '51');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('298', '0', '0', '0', '0', '0', '0', 'org.sg', '', '51');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('299', '0', '0', '0', '0', '0', '0', 'per.sg', '', '51');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('300', '0', '0', '0', '0', '0', '0', 'si', '', '4');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('301', '0', '0', '0', '0', '0', '0', 'sk', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('302', '0', '0', '0', '0', '0', '0', 'sm', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('303', '0', '0', '0', '0', '0', '0', 'st', '', '53');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('304', '0', '0', '0', '0', '0', '0', 'tc', '', '2');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('305', '0', '0', '0', '0', '0', '0', 'tf', '', '2');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('306', '0', '0', '0', '0', '0', '0', 'ac.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('307', '0', '0', '0', '0', '0', '0', 'co.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('308', '0', '0', '0', '0', '0', '0', 'go.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('309', '0', '0', '0', '0', '0', '0', 'in.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('310', '0', '0', '0', '0', '0', '0', 'mi.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('311', '0', '0', '0', '0', '0', '0', 'net.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('312', '0', '0', '0', '0', '0', '0', 'or.th', '', '64');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('313', '0', '0', '0', '0', '0', '0', 'tj', '', '54');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('314', '0', '0', '0', '0', '0', '0', 'to', '', '65');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('315', '0', '0', '0', '0', '0', '0', 'bbs.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('316', '0', '0', '0', '0', '0', '0', 'com.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('317', '0', '0', '0', '0', '0', '0', 'edu.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('318', '0', '0', '0', '0', '0', '0', 'gen.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('319', '0', '0', '0', '0', '0', '0', 'gov.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('320', '0', '0', '0', '0', '0', '0', 'k12.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('321', '0', '0', '0', '0', '0', '0', 'mil.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('322', '0', '0', '0', '0', '0', '0', 'net.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('323', '0', '0', '0', '0', '0', '0', 'nom.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('324', '0', '0', '0', '0', '0', '0', 'org.tr', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('325', '0', '0', '0', '0', '0', '0', 'com.tw', '', '66');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('326', '0', '0', '0', '0', '0', '0', 'idv.tw', '', '66');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('327', '0', '0', '0', '0', '0', '0', 'net.tw', '', '66');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('328', '0', '0', '0', '0', '0', '0', 'org.tw', '', '66');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('329', '0', '0', '0', '0', '0', '0', 'com.ua', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('330', '0', '0', '0', '0', '0', '0', 'edu.ua', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('331', '0', '0', '0', '0', '0', '0', 'gov.ua', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('332', '0', '0', '0', '0', '0', '0', 'org.ua', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('333', '0', '0', '0', '0', '0', '0', 'net.ua', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('334', '0', '0', '0', '0', '0', '0', 'ac.uk', '', '28');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('335', '0', '0', '0', '0', '0', '0', 'co.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('336', '0', '0', '0', '0', '0', '0', 'gov.uk', '', '28');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('337', '0', '0', '0', '0', '0', '0', 'ltd.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('338', '0', '0', '0', '0', '0', '0', 'me.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('339', '0', '0', '0', '0', '0', '0', 'net.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('340', '0', '0', '0', '0', '0', '0', 'org.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('341', '0', '0', '0', '0', '0', '0', 'plc.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('342', '0', '0', '0', '0', '0', '0', 'sch.uk', '[a-z0-9-]{3,63}', '55');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('343', '0', '0', '0', '0', '0', '0', 'uk.co', '', '67');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('344', '0', '0', '0', '0', '0', '0', 'us', '', '56');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('345', '0', '0', '0', '0', '0', '0', 'va', '', '61');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('346', '0', '0', '0', '0', '0', '0', 'vg', '', '2');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('347', '0', '0', '0', '0', '0', '0', 'com.ws', '', '69');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('348', '0', '0', '0', '0', '0', '0', 'edu.ws', '', '69');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('349', '0', '0', '0', '0', '0', '0', 'gov.ws', '', '69');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('350', '0', '0', '0', '0', '0', '0', 'net.ws', '', '69');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('351', '0', '0', '0', '0', '0', '0', 'org.ws', '', '69');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('352', '0', '0', '0', '0', '0', '0', 'ws', '', '69');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('353', '0', '0', '0', '0', '0', '0', 'br.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('354', '0', '0', '0', '0', '0', '0', 'cn.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('355', '0', '0', '0', '0', '0', '0', 'de.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('356', '0', '0', '0', '0', '0', '0', 'eu.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('357', '0', '0', '0', '0', '0', '0', 'gb.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('358', '0', '0', '0', '0', '0', '0', 'gb.net', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('359', '0', '0', '0', '0', '0', '0', 'hu.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('360', '0', '0', '0', '0', '0', '0', 'no.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('361', '0', '0', '0', '0', '0', '0', 'qc.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('362', '0', '0', '0', '0', '0', '0', 'ru.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('363', '0', '0', '0', '0', '0', '0', 'sa.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('364', '0', '0', '0', '0', '0', '0', 'se.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('365', '0', '0', '0', '0', '0', '0', 'se.net', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('366', '0', '0', '0', '0', '0', '0', 'uk.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('367', '0', '0', '0', '0', '0', '0', 'uk.net', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('368', '0', '0', '0', '0', '0', '0', 'us.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('369', '0', '0', '0', '0', '0', '0', 'uy.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('370', '0', '0', '0', '0', '0', '0', 'za.com', '', '9');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('371', '0', '0', '0', '0', '0', '0', 'tk', '', '21');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('372', '0', '0', '0', '0', '0', '0', 'com', '[-àáâãäåāăąæçćĉċčďđèéêëēĕėęěŋðĝğġģĥħìíîïĩīĭįıĵķĸĺļľłñńņňòóôõöøōŏőœŕŗřśŝşšţťŧþùúûüũūŭůűųŵýÿŷźżža-z0-9]{3,63}', '13');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('373', '0', '0', '0', '0', '0', '0', 'net', '[-àáâãäåāăąæçćĉċčďđèéêëēĕėęěŋðĝğġģĥħìíîïĩīĭįıĵķĸĺļľłñńņňòóôõöøōŏőœŕŗřśŝşšţťŧþùúûüũūŭůűųŵýÿŷźżža-z0-9]{3,63}', '13');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('374', '0', '0', '0', '0', '0', '0', 'org', '[-äöüa-z0-9]{3,63}', '58');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('375', '0', '0', '0', '0', '0', '0', 'info', '[-äöüa-z0-9]{3,63}', '3');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('376', '0', '0', '0', '0', '0', '0', 'name', '', '50');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('377', '0', '0', '0', '0', '0', '0', 'biz', '[a-z0-9-]{3,63}', '31');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('378', '0', '0', '0', '0', '0', '0', 'cc', '', '38');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('379', '0', '0', '0', '0', '0', '0', 'edu', '', '22');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('380', '0', '0', '0', '0', '0', '0', 'mil', '', '48');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('381', '0', '0', '0', '0', '0', '0', 'int', '', '24');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('382', '0', '0', '0', '0', '0', '0', 'coop', '', '41');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('383', '0', '0', '0', '0', '0', '0', 'eu', '[-a-z0-9àáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩīĭįıĵķĺļľŀłńņňŉŋōŏőœŕŗřśŝšťŧũūŭůűųŵŷźżžșțΐάέήίΰαβγδεζηθικλμνξοπρςστυφχψωϊϋόύώабвгдежзийклмнопрстуфхцчшщъыьэюяἀἁἂἃἄἅἆἇἐἑἒἓἔἕἠἡἢἣἤἥἦἧἰἱἲἳἴἵἶἷὀὁὂὃὄὅὐὑὒὓὔὕὖὗὠὡὢὣὤὥὦὧὰάὲέὴήὶίὸόὺύὼώᾀᾁᾂᾃᾄᾅᾆᾇᾐᾑᾒᾓᾔᾕᾖᾗᾠᾡᾢᾣᾤᾥᾦᾧᾰᾱᾲᾳᾴᾶᾷῂῃῄῆῇῐῑῒΐῖῗῠῡῢΰῤῥῦῧῲῳῴῶῷ]{2,63}', '70');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('384', '0', '0', '0', '0', '0', '0', 'mobi', '[a-z0-9-]{3,63}', '71');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('385', '0', '0', '0', '0', '0', '0', 'dk', '', '72');
INSERT INTO tx_odsdomaincheck_tlds VALUES ('386', '0', '0', '0', '0', '0', '0', 'xxx', '.{3,63}', '73');


# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: typo3
#--------------------------------------------------------


#
# Table structure for table "tx_odsdomaincheck_whois"
#
DROP TABLE IF EXISTS tx_odsdomaincheck_whois;
CREATE TABLE tx_odsdomaincheck_whois (
  uid int(10) unsigned NOT NULL auto_increment,
  pid int(10) unsigned NOT NULL default '0',
  tstamp int(10) unsigned NOT NULL default '0',
  crdate int(10) unsigned NOT NULL default '0',
  cruser_id int(10) unsigned NOT NULL default '0',
  deleted tinyint(3) unsigned NOT NULL default '0',
  hidden tinyint(3) unsigned NOT NULL default '0',
  server varchar(64) NOT NULL default '',
  idn tinyint(3) unsigned NOT NULL default '0',
  regex_registered varchar(255) NOT NULL default '',
  regex_free varchar(255) NOT NULL default '',
  regex_invalid varchar(255) NOT NULL default '',
  PRIMARY KEY (uid),
  KEY parent (pid)
);


INSERT INTO tx_odsdomaincheck_whois VALUES ('1', '0', '0', '0', '0', '0', '0', 'whois.nic.at', '1', 'registrant:', 'nothing found', '%% ERROR');
INSERT INTO tx_odsdomaincheck_whois VALUES ('2', '0', '0', '0', '0', '0', '0', 'whois.adamsnames.tc', '0', '', 'not registered', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('3', '0', '0', '0', '0', '0', '0', 'whois.afilias.net', '1', 'Registrant ID:', 'NOT FOUND', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('4', '0', '0', '0', '0', '0', '0', 'whois.arnes.si', '0', '', 'no entries', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('5', '0', '0', '0', '0', '0', '0', 'whois.aunic.net', '0', '', 'no entries', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('6', '0', '0', '0', '0', '0', '0', 'whois.ausregistry.net.au', '0', '', 'no data found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('7', '0', '0', '0', '0', '0', '0', 'whois.belizenic.bz', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('8', '0', '0', '0', '0', '0', '0', 'whois.cd', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('9', '0', '0', '0', '0', '0', '0', 'whois.centralnic.com', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('10', '0', '0', '0', '0', '0', '0', 'whois.cira.ca', '0', '', 'status:         avail', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('11', '0', '0', '0', '0', '0', '0', 'whois.ck-nic.org.ck', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('12', '0', '0', '0', '0', '0', '0', 'whois.cnnic.net.cn', '0', '', 'no entries', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('13', '0', '0', '0', '0', '0', '0', 'whois.crsnic.net', '1', 'Registrar:', 'No match for', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('14', '0', '0', '0', '0', '0', '0', 'whois.denic.de', '2', 'Status:[ ]*connect', 'Status:[ ]*free', 'Status:[ ]*invalid');
INSERT INTO tx_odsdomaincheck_whois VALUES ('15', '0', '0', '0', '0', '0', '0', 'whois.dns.be', '0', '', 'free', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('16', '0', '0', '0', '0', '0', '0', 'whois.dns.lu', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('17', '0', '0', '0', '0', '0', '0', 'whois.dns.pl', '0', '', 'does not exist', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('18', '0', '0', '0', '0', '0', '0', 'whois.domain-registry.nl', '0', '', 'is free', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('19', '0', '0', '0', '0', '0', '0', 'whois.domainregistry.ie', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('20', '0', '0', '0', '0', '0', '0', 'whois.domainz.net.nz', '0', '', 'not listed', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('21', '0', '0', '0', '0', '0', '0', 'whois.dot.tk', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('22', '0', '0', '0', '0', '0', '0', 'whois.educause.net', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('23', '0', '0', '0', '0', '0', '0', 'whois.hkdnr.net.hk', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('24', '0', '0', '0', '0', '0', '0', 'whois.iana.org', '0', '', 'not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('25', '0', '0', '0', '0', '0', '0', 'whois.isles.net', '0', '', 'domain not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('26', '0', '0', '0', '0', '0', '0', 'whois.isnet.is', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('27', '0', '0', '0', '0', '0', '0', 'whois.isoc.org.il', '0', '', 'no data was found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('28', '0', '0', '0', '0', '0', '0', 'whois.ja.net', '0', '', 'no entries were found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('29', '0', '0', '0', '0', '0', '0', 'whois.krnic.net', '0', '', 'domain name is not', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('30', '0', '0', '0', '0', '0', '0', 'whois.netnames.net', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('31', '0', '0', '0', '0', '0', '0', 'whois.biz', '0', 'Registrant ID:', 'Not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('32', '0', '0', '0', '0', '0', '0', 'whois.iis.se', '0', '', 'not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('33', '0', '0', '0', '0', '0', '0', 'whois.nic.ac', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('34', '0', '0', '0', '0', '0', '0', 'whois.nic.ad.jp', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('35', '0', '0', '0', '0', '0', '0', 'whois.nic.ag', '0', '', 'does not exist', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('36', '0', '0', '0', '0', '0', '0', 'whois.nic.as', '0', '', 'not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('37', '0', '0', '0', '0', '0', '0', 'whois.nic.br', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('38', '0', '0', '0', '0', '0', '0', 'whois.nic.cc', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('39', '0', '0', '0', '0', '0', '0', 'whois.nic.ch', '1', 'Domain name:', 'We do not have an entry', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('40', '0', '0', '0', '0', '0', '0', 'whois.nic.cl', '0', '', 'no existe', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('41', '0', '0', '0', '0', '0', '0', 'whois.nic.coop', '0', '', 'no objects found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('42', '0', '0', '0', '0', '0', '0', 'whois.nic.cx', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('43', '0', '0', '0', '0', '0', '0', 'whois.nic.fr', '0', '', 'no entries', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('44', '0', '0', '0', '0', '0', '0', 'whois.nic.ir', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('45', '0', '0', '0', '0', '0', '0', 'whois.nic.it', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('46', '0', '0', '0', '0', '0', '0', 'whois.nic.la', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('47', '0', '0', '0', '0', '0', '0', 'whois.nic.li', '1', '', 'We do not have an entry', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('48', '0', '0', '0', '0', '0', '0', 'whois.nic.mil', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('49', '0', '0', '0', '0', '0', '0', 'whois.nic.mx', '0', '', 'referencia de dominio no encontrada', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('50', '0', '0', '0', '0', '0', '0', 'whois.nic.name', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('51', '0', '0', '0', '0', '0', '0', 'whois.nic.net.sg', '0', '', 'no entry found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('52', '0', '0', '0', '0', '0', '0', 'whois.nic.nu', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('53', '0', '0', '0', '0', '0', '0', 'whois.nic.st', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('54', '0', '0', '0', '0', '0', '0', 'whois.nic.tj', '0', '', 'no match for', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('55', '0', '0', '0', '0', '0', '0', 'whois.nic.uk', '0', 'Registrant:', 'No match for', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('56', '0', '0', '0', '0', '0', '0', 'whois.nic.us', '0', '', 'not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('57', '0', '0', '0', '0', '0', '0', 'whois.norid.no', '0', '', 'No match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('58', '0', '0', '0', '0', '0', '0', 'whois.pir.org', '1', 'Registrant ID:', 'NOT FOUND', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('59', '0', '0', '0', '0', '0', '0', 'whois.registry.hm', '0', '', '(null)', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('60', '0', '0', '0', '0', '0', '0', 'whois.ripe', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('61', '0', '0', '0', '0', '0', '0', 'whois.ripe.net', '0', '', 'no such domain', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('62', '0', '0', '0', '0', '0', '0', 'whois.ripn.ru', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('63', '0', '0', '0', '0', '0', '0', 'whois.rotld.ro', '0', '', 'no entries', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('64', '0', '0', '0', '0', '0', '0', 'whois.thnic.net', '0', '', 'no entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('65', '0', '0', '0', '0', '0', '0', 'whois.tonic.to', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('66', '0', '0', '0', '0', '0', '0', 'whois.twnic.net', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('67', '0', '0', '0', '0', '0', '0', 'whois.uk.co', '0', '', 'no matches', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('68', '0', '0', '0', '0', '0', '0', 'whois.usp.ac.fj', '0', '', 'was not found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('69', '0', '0', '0', '0', '0', '0', 'whois.worldsite.ws', '0', '', 'no match', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('70', '0', '0', '0', '0', '0', '0', 'whois.eu', '1', 'Registrant:', 'Status:[ 	]*AVAILABLE', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('71', '0', '0', '0', '0', '0', '0', 'whois.dotmobiregistry.net', '0', '', 'NOT FOUND', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('72', '0', '0', '0', '0', '0', '0', 'whois.dk-hostmaster.dk', '1', '', 'No entries found', '');
INSERT INTO tx_odsdomaincheck_whois VALUES ('73', '0', '0', '0', '0', '0', '0', 'whois.nic.xxx', '1', '(Registrant ID:)|Reserved', 'NOT FOUND', '');


