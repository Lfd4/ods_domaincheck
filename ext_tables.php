<?php
if (!defined ('TYPO3_MODE')) 	die ('Access denied.');

t3lib_div::loadTCA('tt_content');
$TCA['tt_content']['types']['list']['subtypes_excludelist'][$_EXTKEY.'_pi1']='layout,select_key,pages,recursive';
t3lib_extMgm::addPlugin(array('LLL:EXT:ods_domaincheck/locallang_db.xml:tt_content.list_type_pi1', $_EXTKEY.'_pi1'),'list_type');

$TCA['tt_content']['types']['list']['subtypes_addlist'][$_EXTKEY.'_pi1'] ='pi_flexform';
t3lib_extMgm::addPiFlexFormValue($_EXTKEY.'_pi1', 'FILE:EXT:'.$_EXTKEY . '/pi1/flexform.xml');

$TCA["tx_odsdomaincheck_log"] = array (
	"ctrl" => array (
		'title'     => 'LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_log',
		'label'     => 'domain',
		'tstamp'    => 'tstamp',
		'default_sortby' => "ORDER BY uid DESC",
		'rootLevel' => 1,
		'dynamicConfigFile' => t3lib_extMgm::extPath($_EXTKEY).'tca.php',
		'iconfile'          => t3lib_extMgm::extRelPath($_EXTKEY).'icon_tx_odsdomaincheck_log.png',
	),
);

$TCA["tx_odsdomaincheck_tlds"] = array (
	"ctrl" => array (
		'title'     => 'LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_tlds',
		'label'     => 'tld',
		'tstamp'    => 'tstamp',
		'crdate'    => 'crdate',
		'cruser_id' => 'cruser_id',
		'default_sortby' => "ORDER BY tld",
		'delete' => 'deleted',
		'rootLevel' => 1,
		'enablecolumns' => array (
			'disabled' => 'hidden',
		),
		'dynamicConfigFile' => t3lib_extMgm::extPath($_EXTKEY).'tca.php',
		'iconfile'          => t3lib_extMgm::extRelPath($_EXTKEY).'icon_tx_odsdomaincheck_tlds.png',
	),
);

$TCA["tx_odsdomaincheck_whois"] = array (
	"ctrl" => array (
		'title'     => 'LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois',
		'label'     => 'server',
		'tstamp'    => 'tstamp',
		'crdate'    => 'crdate',
		'cruser_id' => 'cruser_id',
		'default_sortby' => "ORDER BY server",
		'delete' => 'deleted',
		'rootLevel' => 1,
		'enablecolumns' => array (
			'disabled' => 'hidden',
		),
		'dynamicConfigFile' => t3lib_extMgm::extPath($_EXTKEY).'tca.php',
		'iconfile'          => t3lib_extMgm::extRelPath($_EXTKEY).'icon_tx_odsdomaincheck_whois.png',
	),
);
?>