<?php

/***************************************************************
 * Extension Manager/Repository config file for ext "ods_domaincheck".
 *
 * Auto generated 27-11-2015 12:36
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 ***************************************************************/

$EM_CONF[$_EXTKEY] = array (
	'title' => 'Domain check',
	'description' => 'A domain check frontend plugin. It uses ajax to prevent page reloads. The design is template based.',
	'category' => 'plugin',
	'shy' => 0,
	'version' => '2.0.2',
	'dependencies' => '',
	'conflicts' => '',
	'priority' => '',
	'loadOrder' => '',
	'module' => '',
	'state' => 'stable',
	'uploadfolder' => 1,
	'createDirs' => '',
	'modify_tables' => '',
	'clearcacheonload' => 0,
	'lockType' => '',
	'author' => 'Robert Heel',
	'author_email' => 'rheel@1drop.de',
	'author_company' => 'http://www.1drop.de/',
	'CGLcompliance' => NULL,
	'CGLcompliance_note' => NULL,
	'constraints' => 
	array (
		'depends' => 
		array (
			'typo3' => '4.3.0-0.0.0',
		),
		'conflicts' => 
		array (
		),
		'suggests' => 
		array (
		),
	),
	'_md5_values_when_last_written' => 'a:26:{s:9:"ChangeLog";s:4:"e57b";s:10:"README.txt";s:4:"ee2d";s:20:"class.ext_update.php";s:4:"6f6e";s:40:"class.tx_odsdomaincheck_idna_convert.php";s:4:"47fe";s:33:"class.tx_odsdomaincheck_whois.php";s:4:"e1a5";s:21:"ext_conf_template.txt";s:4:"3bb2";s:12:"ext_icon.gif";s:4:"7f51";s:17:"ext_localconf.php";s:4:"6dac";s:14:"ext_tables.php";s:4:"2f0e";s:14:"ext_tables.sql";s:4:"57a5";s:25:"ext_tables_static+adt.sql";s:4:"aa47";s:28:"ext_typoscript_constants.txt";s:4:"0f21";s:24:"ext_typoscript_setup.txt";s:4:"99d3";s:30:"icon_tx_odsdomaincheck_log.png";s:4:"7f80";s:31:"icon_tx_odsdomaincheck_tlds.png";s:4:"deba";s:32:"icon_tx_odsdomaincheck_whois.png";s:4:"6cd3";s:16:"locallang_db.xml";s:4:"ae20";s:7:"tca.php";s:4:"7601";s:14:"doc/manual.sxw";s:4:"12ca";s:35:"pi1/class.tx_odsdomaincheck_pi1.php";s:4:"d019";s:16:"pi1/flexform.xml";s:4:"24d4";s:17:"pi1/locallang.xml";s:4:"956d";s:24:"pi1/ods_domaincheck.html";s:4:"89c9";s:15:"res/loading.gif";s:4:"faa7";s:22:"res/ods_domaincheck.js";s:4:"3961";s:30:"res/jquery/jquery-1.4.4.min.js";s:4:"73a9";}',
);

?>