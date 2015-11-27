<?php

/***************************************************************
 *  Copyright notice
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *  A copy is found in the textfile GPL.txt and important notices to the license
 *  from the author is found in LICENSE.txt distributed with these scripts.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

class ext_update {
	var $contentElements;
	var $flexObj;

	/**
	 * Main function, returning the HTML content of the module
	 *
	 * @return	string		HTML
	 */
	function main() {
		$this->flexObj = t3lib_div::makeInstance('t3lib_flexformtools');

		$this->getContentElements();
		$this->flexform2array();


		// Change tlds configuration from field "tld" to "uid"
		foreach($this->contentElements as $id=>$row){
			$tlds=explode(',',$row['pi_flexform']['data']['sDEF']['lDEF']['tlds']['vDEF']);
			if(is_array($tlds)){
				$tlds_new=array();
				foreach($tlds as $tld){
					if(!is_numeric($tld)){
						$res=$GLOBALS['TYPO3_DB']->exec_SELECTquery('uid','tx_odsdomaincheck_tlds','tld='.$GLOBALS['TYPO3_DB']->fullQuoteStr(trim($tld),'tx_odsdomaincheck_tlds'));
						$new=$GLOBALS['TYPO3_DB']->sql_fetch_assoc($res);
						$tld=$new ? $new['uid'] : 0;
					}
					$tlds_new[]=$tld;
				}
				$this->contentElements[$id]['pi_flexform']['data']['sDEF']['lDEF']['tlds']['vDEF']=implode(',',$tlds_new);
			}
		}


		$this->array2flexform();
		$this->setContentElements();

		return 'Update finished.';
	}


	function getContentElements() {
		$this->contentElements=$GLOBALS['TYPO3_DB']->exec_SELECTgetRows('*','tt_content','CType="list" AND list_type="ods_domaincheck_pi1" AND deleted=0');
	}

	function setContentElements() {
		foreach($this->contentElements as $id=>$row) {
			$GLOBALS['TYPO3_DB']->exec_UPDATEquery('tt_content','uid='.$row['uid'],$row);
		}
	}

	function flexform2array() {
		foreach($this->contentElements as $id=>$row) {
			$this->contentElements[$id]['pi_flexform']=t3lib_div::xml2array($row['pi_flexform']);
		}
	}

	function array2flexform(){
		foreach($this->contentElements as $id=>$row) {
			$this->contentElements[$id]['pi_flexform']=$this->flexObj->flexArray2Xml($row['pi_flexform'],1);
		}
	}

	/**
	 * Checks how many rows are found and returns true if there are any
	 * (this function is called from the extension manager)
	 *
	 * @param	string		$what: what should be updated
	 * @return	boolean
	 */
	function access($what = 'all') {
		return true;
	}
}

if (defined('TYPO3_MODE') && $TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/ods_domaincheck/class.ext_update.php']) {
	include_once ($TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/ods_domaincheck/class.ext_update.php']);
}
?>