<?php
/***************************************************************
*  Copyright notice
*
*  (c) 2008  <rheel@1drop.de>
*  All rights reserved
*
*  This script is part of the TYPO3 project. The TYPO3 project is
*  free software; you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation; either version 2 of the License, or
*  (at your option) any later version.
*
*  The GNU General Public License can be found at
*  http://www.gnu.org/copyleft/gpl.html.
*
*  This script is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  This copyright notice MUST APPEAR in all copies of the script!
***************************************************************/

require_once(t3lib_extMgm::extPath('ods_domaincheck').'class.tx_odsdomaincheck_whois.php');

/**
 * Plugin 'Domaincheck' for the 'ods_domaincheck' extension.
 *
 * @author	 <rheel@1drop.de>
 * @package	TYPO3
 * @subpackage	tx_odsdomaincheck
 */
class tx_odsdomaincheck_pi1 extends tslib_pibase {
	var $prefixId      = 'tx_odsdomaincheck_pi1';		// Same as class name
	var $scriptRelPath = 'pi1/class.tx_odsdomaincheck_pi1.php';	// Path to this script relative to the extension dir.
	var $extKey        = 'ods_domaincheck';	// The extension key.
	var $pi_checkCHash = true;

	var $config; // Configuration
	var $domain; // Requested domain
	var $domains; // Checked domains
	var $input; // Show input field (bool)
	var $error; // Errors
	var $status; // Status of requested domain
	var $template; // Temlates
	var $tlds; // Configured top level domains

	protected $hooks;

	function init($conf){
		$this->conf=$conf;
		$this->pi_setPiVarDefaults();
		$this->pi_loadLL();
		$this->pi_initPIflexForm(); // Init FlexForm configuration for plugin

		$this->hooks=array();
		if(is_array($GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['ods_domaincheck']['tx_odsdomaincheck_pi1'])){
			foreach($GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['ods_domaincheck']['tx_odsdomaincheck_pi1'] as $classRef){
				$this->hooks[]=&t3lib_div::getUserObj($classRef);
			}
		}

		/* --------------------------------------------------
			Configuration (order of priority)
			- FlexForm
			- TypoScript
		-------------------------------------------------- */

		$flex=array();
		$options=array('tlds','show_form','show_default','page_buy','buy_params','page_transfer','transfer_params','template');
		foreach($options as $option){
			$value=$this->pi_getFFvalue($this->cObj->data['pi_flexform'],$option,'sDEF');
			switch($option){
				case 'template':
					if($value) $flex[$option]='uploads/tx_odsdomaincheck/'.$value;
				break;
				case 'tlds':
					if($value){
						$tlds2=array();
						$tlds=$GLOBALS['TYPO3_DB']->exec_SELECTgetRows('uid,tld','tx_odsdomaincheck_tlds','uid IN ('.$GLOBALS['TYPO3_DB']->cleanIntList($value).')','','','','uid');
						foreach(explode(',',$value) as $tld){
							$tlds2[]=$tlds[$tld]['tld'];
						}
						$flex[$option]=implode(',',$tlds2);
					}
				break;
				default:
					if($value) $flex[$option]=$value;
				break;
			}
		}

		$this->config=array_merge($conf,$flex);

		$this->tlds=explode(',',$this->config['tlds']);

		// Hook to manipulate init
		foreach($this->hooks as $hook){
			if(method_exists($hook,'afterInit')){
				$hook->afterInit($this);
			}
		}
	}

	/**
	 * The main method of the PlugIn
	 *
	 * @param	string		$content: The PlugIn content
	 * @param	array		$conf: The PlugIn configuration
	 * @return	The content that is displayed on the website
	 */
	function main($content,$conf)	{
		$this->init($conf);

		$GLOBALS['TSFE']->getPageRenderer()->addJsFile($GLOBALS['TSFE']->tmpl->getFileName($this->config['javascript']));

		if($this->piVars){
			$GLOBALS['TSFE']->set_no_cache();
		}

		$this->processInput();
		$this->loadTemplate();

		$subpart['###INPUT###']='<div id="'.$this->prefixId.'_input">'.$this->getInput().'</div>';
		$subpart['###INDICATION###']='<div id="'.$this->prefixId.'_indication" style="display: none;">'.$this->getIndication().'</div>';
		$subpart['###SINGLE###']='<div id="'.$this->prefixId.'_single">'.$this->getSingle().'</div>';
		$subpart['###LIST###']='<div id="'.$this->prefixId.'_list">'.$this->getList().'</div>';
		$content.=$this->cObj->substituteMarkerArrayCached($this->template['total'],array(),$subpart);

		if($this->piVars['ajax']){
			echo $content;
			die();
		}

		return '<div id="'.$this->prefixId.'">'.$this->pi_wrapInBaseClass($content).'</div>';
	}

	function processInput(){
		if($this->piVars['sld']){
			$check=new tx_odsdomaincheck_whois($this->config);
			$check->setDomain($this->piVars['sld'],$this->piVars['tld']);

			if(!$check->tld){
				// All
				$check->setTlds($this->tlds);
			}elseif($this->config['allow_all_tlds']!=1){
				$all_tlds=$check->tlds;
				$check->setTlds(array_intersect($all_tlds,$this->tlds));
			}
			$this->domains=$check->check_domains();

			// Show other as invalid 
			if($this->config['allow_all_tlds']==2){
				$removed_tlds=array_diff($all_tlds,$this->tlds);
				foreach($removed_tlds as $tld){
					foreach($check->slds as $sld){
						$this->domains[$sld.'.'.$tld]='tld_invalid';
					}
				}
			}

			// Prepare view
			if(count($this->domains)==0){
				// None
				$this->error=$this->pi_getLL('domain_tld_invalid');
			}elseif(count($this->domains)==1){
				// One
				foreach($this->domains as $this->domain=>$this->status);
				switch($this->status){
					case 'connection_error':
					case 'sld_invalid':
					case 'tld_invalid':
						$this->error=$this->pi_getLL('domain_'.$this->status);
					break;
					case 'registered':
						if($this->config['dont_check_other']){
							$this->error=$this->pi_getLL('domain_'.$this->status);
						}else{
							// All
							$check->setTlds($this->tlds);
							$this->domains=$check->check_domains();
						}
					break;
				}
			}else{
				// Many
				$this->status=(in_array('available',$this->domains)) ? 'available' : 'registered';
				if($this->status=='available' && count($check->slds)==1) $this->domain=$check->slds[0];
 			}
		}elseif($this->config['show_default']){
			$this->piVars['sld']=$this->pi_getLL('default_sld');
		}

		// Show input field
		// - at first time
		// - if an error occured
		// - if "show always"
		if(!$this->piVars['sld'] || $this->error || $this->config['show_form']) $this->input=true;
	}

	function loadTemplate(){
		/* ==================================================
			Template
		================================================== */
		$templateCode=$this->cObj->fileResource($this->config['template']);
		$this->template['total']=$this->cObj->getSubpart($templateCode,'###DOMAINCHECK###');
	}

	function getInput(){
		/* --------------------------------------------------
			Input
		-------------------------------------------------- */
		if($this->input){
			$template['input']=$this->cObj->getSubpart($this->template['total'],'###INPUT###');
			$options=array(''=>$this->pi_getLL('all'));
			foreach($this->tlds as $tld){
				$options[$tld]='.'.$tld;
			}
			
			$marker['###TLDS###']=$this->getSelectOptions($options,$this->piVars['tld']);

			$marker['###SLD_NAME###']=$this->prefixId.'[sld]';
			$marker['###SLD_VALUE###']=$this->piVars['sld'];
			$marker['###TLD_NAME###']=$this->prefixId.'[tld]';

			$marker['###FORM_ACTION###']=$this->pi_getPageLink($GLOBALS['TSFE']->id);
			$marker['###FORM_ID###']=$this->prefixId.'_form';
			$marker['###FORM_ONSUBMIT###']='';
			// submit should call xajax instead.
			$marker['###SUBMIT_ONCLICK###']='return ods_domaincheck(this);';
			$marker['###SUBMIT_NAME###']=$this->prefixId.'[submit]';
			$marker['###SUBMIT_VALUE###']=$this->pi_getLL('check_domain');

			// Message
			$marker['###MESSAGE###']=$this->error ? $this->cObj->stdWrap($this->error,$this->conf['error.']['stdWrap.']) : '';

			// Hook to manipulate input marker
			foreach($this->hooks as $hook){
				if(method_exists($hook,'modifyInputMarker')){
					$hook->modifyInputMarker($marker,$this);
				}
			}

			return($this->cObj->substituteMarkerArrayCached($template['input'],$marker));
		}
	}

	function getIndication(){
		/* --------------------------------------------------
			Loading indication
		-------------------------------------------------- */
		$template['indication']=$this->cObj->getSubpart($this->template['total'],'###INDICATION###');
		$ret=$template['indication'];
		return($ret);
	}

	function getSingle(){
		/* --------------------------------------------------
			Single
		-------------------------------------------------- */
		// - if the domain entered is available -> With buy button
		// - if the domain entered is registered -> Info text
		if(in_array($this->status,array('available','registered'))){
			$template['single']=$this->cObj->getSubpart($this->template['total'],'###SINGLE###');
			$marker['###HEADER###']=$this->pi_getLL($this->status.'_header');
			$marker['###BODY###']=sprintf($this->pi_getLL($this->status.'_body'),'<span>'.$this->domain.'</span>');
			$marker['###STATUS###']=$this->pi_getLL('domain_'.$this->status);
			$marker['###STATUS_CODE###']=$this->status;
			if(!count($this->domains)>1){
				switch($this->status){
					case 'available':
					case 'registered':
						$marker['###BODY###'].=' '.$this->getDomainLink($this->domain,$this->status);
					break;
				}
			}

			if($this->input){
				$marker['###CHECK_AGAIN###']='';
			}else{
				$marker['###CHECK_AGAIN###']='<a href="'.$this->pi_getPageLink($GLOBALS['TSFE']->id).'">'.$this->pi_getLL('check_again').'</a>';
			}

			$ret=$this->cObj->substituteMarkerArrayCached($template['single'],$marker);
		}else{
			$ret='';
		}
		return($ret);
	}

	function getList(){
		/* --------------------------------------------------
			List
		-------------------------------------------------- */
		// - if the domain entered is registered
		// - if "all" domains selected
		if(count($this->domains)>1){
			$template['list']=$this->cObj->getSubpart($this->template['total'],'###LIST###');
			$template['list_row']=$this->cObj->getSubpart($this->template['total'],'###LIST_ROW###');

			$marker['###DOMAIN_LABEL###']=$this->pi_getLL('domain_label');
			$marker['###STATUS_LABEL###']=$this->pi_getLL('status_label');
			$marker['###ACTION_LABEL###']=$this->pi_getLL('action_label');

			foreach($this->domains as $dom=>$sta){
				// Class for tr
				$i++;
				$marker['###TR_CLASS###']=($i % 2) ? 'even' : 'odd';
				if($i==count($this->domains)) $marker['###TR_CLASS###'].=' last';
				// Domain
				$marker['###DOMAIN###']=$dom;
				$marker['###STATUS###']=$this->pi_getLL('domain_'.$sta);
				$marker['###STATUS_CODE###']=$sta;
				switch($sta){
					case 'available':
					case 'registered':
						$marker['###ACTION###']=$this->getDomainLink($dom,$sta);
					break;
					default:
						$marker['###ACTION###']='';
					break;
				}

				// Hook to manipulate list item marker
				foreach($this->hooks as $hook){
					if(method_exists($hook,'modifyListItemMarker')){
						$hook->modifyListItemMarker($marker,$this);
					}
				}

				$subpart['###LIST_ROW###'].=$this->cObj->substituteMarkerArrayCached($template['list_row'],$marker);
			}
			$ret=$this->cObj->substituteMarkerArrayCached($template['list'],$marker,$subpart);
		}else{
			$ret='';
		}
		return($ret);
	}

	function getDomainLink($domain,$status){
		$actions=array('available'=>'buy','registered'=>'transfer');
		$action=$actions[$status];
		parse_str(strtr($this->config[$action.'_params'],array('###DOMAIN###'=>$domain)),$params);
		$params['domain']=$domain;
		if($this->config['page_'.$action]){
			$link=$this->pi_linkToPage(
				'<span class="'.$status.'">'.$this->pi_getLL($action).'</span>',
				$this->config['page_'.$action],
				NULL,
				$params
			);
		}
		return($link);
	}

	public function getSelectOptions($options,$default=false){
		$ret='';
		foreach($options as $key=>$value){
			$ret.='<option value="'.$key.'"';
			if($default && $default==$key) $ret.=' selected="selected"';
			$ret.='>'.$value.'</option>';
		}
		return $ret;
	}
}


if (defined('TYPO3_MODE') && $TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/ods_domaincheck/pi1/class.tx_odsdomaincheck_pi1.php'])	{
	include_once($TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/ods_domaincheck/pi1/class.tx_odsdomaincheck_pi1.php']);
}

?>