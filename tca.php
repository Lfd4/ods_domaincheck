<?php
if (!defined ('TYPO3_MODE')) 	die ('Access denied.');

$TCA['tx_odsdomaincheck_log'] = array (
	'ctrl' => $TCA['tx_odsdomaincheck_log']['ctrl'],
	'interface' => array (
		'showRecordFieldList' => 'domain,response,status'
	),
	'feInterface' => $TCA['tx_odsdomaincheck_log']['feInterface'],
	'columns' => array (
		'domain' => array (        
			'exclude' => 0,        
			'label' => 'LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_log.domain',        
			'config' => array (
				'type' => 'none',
				'size' => 30,
			)
		),
		'response' => array (        
			'exclude' => 0,        
			'label' => 'LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_log.response',        
			'config' => array (
				'type' => 'none',
				'size' => 30,
				'rows' => 10,
			)
		),
		'status' => array (        
			'exclude' => 0,        
			'label' => 'LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_log.status',        
			'config' => array (
				'type' => 'none',
				'size' => 30,
			)
		),
	),
	'types' => array (
		'0' => array('showitem' => 'domain, response, status')
	),
	'palettes' => array (
		'1' => array('showitem' => '')
	)
);

$TCA["tx_odsdomaincheck_tlds"] = array (
	"ctrl" => $TCA["tx_odsdomaincheck_tlds"]["ctrl"],
	"interface" => array (
		"showRecordFieldList" => "hidden,tld,regex_check,whois"
	),
	"feInterface" => $TCA["tx_odsdomaincheck_tlds"]["feInterface"],
	"columns" => array (
		'hidden' => array (		
			'exclude' => 1,
			'label'   => 'LLL:EXT:lang/locallang_general.xml:LGL.hidden',
			'config'  => array (
				'type'    => 'check',
				'default' => '0'
			)
		),
		"tld" => Array (		
			"exclude" => 1,		
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_tlds.tld",		
			"config" => Array (
				"type" => "input",	
				"size" => "30",
			)
		),
		"regex_check" => Array (		
			"exclude" => 1,		
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_tlds.regex_check",		
			"config" => Array (
				"type" => "input",	
				"size" => "30",
			)
		),
		"whois" => Array (		
			"exclude" => 1,		
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_tlds.whois",		
			"config" => Array (
				"type" => "select",	
				"foreign_table" => "tx_odsdomaincheck_whois",	
				"foreign_table_where" => "ORDER BY tx_odsdomaincheck_whois.uid",	
				"size" => 1,	
				"minitems" => 0,
				"maxitems" => 1,
			)
		),
	),
	"types" => array (
		"0" => array("showitem" => "hidden;;1;;1-1-1, tld, regex_check, whois")
	),
	"palettes" => array (
		"1" => array("showitem" => "")
	)
);

$TCA["tx_odsdomaincheck_whois"] = array (
	"ctrl" => $TCA["tx_odsdomaincheck_whois"]["ctrl"],
	"interface" => array (
		"showRecordFieldList" => "hidden,server,idn,regex_error,regex_free,regex_invalid"
	),
	"feInterface" => $TCA["tx_odsdomaincheck_whois"]["feInterface"],
	"columns" => array (
		'hidden' => array (		
			'exclude' => 1,
			'label'   => 'LLL:EXT:lang/locallang_general.xml:LGL.hidden',
			'config'  => array (
				'type'    => 'check',
				'default' => '0'
			)
		),
		"server" => Array (
			"exclude" => 1,
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.server",		
			"config" => Array (
				"type" => "input",
				"size" => "30",
			)
		),
		"idn" => Array (
			"exclude" => 1,
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.idn.select",
			"config" => Array (
				"type" => "select",
				"items" => Array (
					Array("LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.idn.select.I.0", "0"),
					Array("LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.idn.select.I.1", "1"),
					Array("LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.idn.select.I.2", "2"),
				),
				"size" => 1,
				"maxitems" => 1,
			)
		),
		"regex_error" => Array (
			"exclude" => 1,
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.regex_error",		
			"config" => Array (
				"type" => "input",
				"size" => "30",
			)
		),
		"regex_free" => Array (
			"exclude" => 1,
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.regex_free",		
			"config" => Array (
				"type" => "input",
				"size" => "30",
			)
		),
		"regex_invalid" => Array (
			"exclude" => 1,
			"label" => "LLL:EXT:ods_domaincheck/locallang_db.xml:tx_odsdomaincheck_whois.regex_invalid",		
			"config" => Array (
				"type" => "input",
				"size" => "30",
			)
		),
	),
	"types" => array (
		"0" => array("showitem" => "hidden;;1;;1-1-1, domain, server, idn, regex_error, regex_free, regex_invalid")
	),
	"palettes" => array (
		"1" => array("showitem" => "")
	)
);
?>