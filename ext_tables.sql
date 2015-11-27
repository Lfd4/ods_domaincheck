# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: typo3
#--------------------------------------------------------


#
# Table structure for table "tx_odsdomaincheck_log"
#
CREATE TABLE tx_odsdomaincheck_log (
  uid int(10) unsigned NOT NULL auto_increment,
  pid int(10) unsigned NOT NULL default '0',
  tstamp int(10) unsigned NOT NULL default '0',
  domain varchar(255) NOT NULL default '',
  response text NOT NULL,
  status varchar(255) NOT NULL default '',
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_odsdomaincheck_tlds"
#
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


#
# Table structure for table "tx_odsdomaincheck_whois"
#
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