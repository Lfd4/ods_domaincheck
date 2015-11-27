<?php
class tx_odsdomaincheck_whois {
	public $config;
	public $sld;
	public $tld;

	public $domains;
	public $slds;
	public $tlds;

	protected $query;
	protected $response;

	public function __construct($ts_config=array()){
		$ext_config=(array)unserialize($GLOBALS['TYPO3_CONF_VARS']['EXT']['extConf']['ods_domaincheck']);
		$this->config=array_merge($ext_config,$ts_config);
	}

	public function setTlds($tlds){
		if(!is_array($tlds)){
			$tlds=explode(',',$tlds);
		}

		$this->tlds=array();
		foreach($tlds as $tld){
			$this->addTld($tld);
		}

		// Backward compatibilty
		$this->tld=$this->tlds[0];
	}

	public function addTld($tld,$top=false){
		// all lowercase
		$tld=trim(strtolower($tld));
		// save
		if($tld){
			if($top){
				array_unshift($this->tlds,$tld);
			}else{
				$this->tlds[]=$tld;
			}
		}
	}

	public function setSlds($slds){
		if(!is_array($slds)){
			$slds=explode(',',str_replace(array("\r\n","\r","\n"),',',$slds));
		}

		$this->slds=array();
		foreach($slds as $sld){
			// all lowercase
			$sld=trim(strtolower($sld));
			// remove www.
			if(strpos($sld,'www.')===0) $sld=substr($sld,4);
			// tld in sld?
			$pos=strpos($sld,'.');
			if($pos){
				$tld=substr($sld,$pos+1);
				$sld=substr($sld,0,$pos);
				$this->addTld($tld,true);
				$this->domains[]=array($sld,$tld);
			}else{
				foreach($this->tlds as $tld){
					$this->domains[]=array($sld,$tld);
				}
			}
			// save
			if($sld) $this->slds[]=$sld;
		}

		// Backward compatibilty
		$this->sld=$this->slds[0];
	}

	public function setDomain($sld,$tld=false){
		if($tld) $this->setTlds($tld);
		$this->setSlds($sld);
	}

	public function check_domain($sld=false,$tld=false) {
		$status=$this->check_domains($sld,$tld);
		return array_shift($status);
	}

	public function check_domains($slds=false,$tlds=false){
		if($slds) $this->setDomain($slds,$tlds);

		// Multiple sld check
		if($this->config['allow_multiple_slds']){
			array_unique($this->slds);
		}else{
			$this->slds=array(array_shift($this->slds));
		}

		// tld
		array_unique($this->tlds);

		// Evaluate domains
		$domains=array();
		if(count($this->domains)==1 || $this->config['check_all_combinations']){
			foreach($this->slds as $sld){
				foreach($this->tlds as $tld){
					$domains[]=array($sld,$tld);
				}
			}
		}else{
			$domains=$this->domains;
		}

		// Check domains
		$status=array();
		if(count($this->slds)>0 && count($this->tlds)>0 && $this->config['proxy.']['server'] && $this->config['proxy.']['multi']){
			$whois=$this->config['proxy.'];
			// IDN
			foreach($this->slds as $key=>$sld){
				$slds[$key]=$this->check_sld($sld,$whois);
			}
			// query
			$this->query='multi '.implode(',',$slds).' '.implode(',',$this->tlds);
			$response=$this->whois($whois['server'],$this->query);
			if($response){
				$this->response=$response;
				foreach($domains as $domain){
					$marker=array('###DOMAIN###'=>$domain[0].'.'.$domain[1]);
					$status[$domain[0].'.'.$domain[1]]=$this->check_response($response,$whois,$marker);
				}
// 				foreach($this->slds as $sld){
// 					foreach($this->tlds as $tld){
// 						$marker=array('###DOMAIN###'=>$sld.'.'.$tld);
// 						$status[$sld.'.'.$tld]=$this->check_response($response,$whois,$marker);
// 					}
// 				}
			}else{
				$this->response=($response===false ? 'No connection' : 'No response');
				$status[]="connection_error";
			}
			$this->writeLog(implode(',',$status));
		}else{
			foreach($domains as $domain){
				$status[$domain[0].'.'.$domain[1]]=$this->query_domain($domain[0],$domain[1]);
			}
// 			foreach($this->slds as $sld){
// 				foreach($this->tlds as $tld){
// 					$status[$sld.'.'.$tld]=$this->query_domain($sld,$tld);
// 				}
// 			}
		}
		return $status;
	}

	protected function query_domain($sld,$tld){
		$this->response='';

		$whois=$this->getWhois($tld);
		// validate $tld
		if($whois){
			// validate whois specific domain name
			$sld=$this->check_sld($sld,$whois);
			if($sld){
				// query
				$this->query=$sld.'.'.$tld;
				$response=$this->whois($whois['server'],$this->query);
				if($response){
					$this->response=$response;
					$marker=array('###DOMAIN###'=>$sld.'.'.$tld);
					$status=$this->check_response($response,$whois,$marker);
				}else{
					$this->response=($response===false ? 'No connection' : 'No response');
					$status="connection_error";
				}
			}else{
				$status='sld_invalid';
			}
		}else{
			$status='tld_invalid';
		}

		// Log
		$this->writeLog($status);

		return $status;
	}

	protected function check_response($response,$whois,$marker) {
		foreach($marker as &$mark){
			$mark=preg_quote($mark);
		}

		if(preg_match('/'.strtr($whois['regex_free'],$marker).'/i',$response)){
			$status="available";
		}elseif(!empty($whois['regex_invalid']) && preg_match('/'.strtr($whois['regex_invalid'],$marker).'/i',$response)){
			$status='sld_invalid';
		}elseif(empty($whois['regex_registered']) || (!empty($whois['regex_registered']) && preg_match('/'.strtr($whois['regex_registered'],$marker).'/i',$response))){
			$status="registered";
		}else{
			$status='tld_invalid';
		}
		return $status;
	}

	protected function check_sld($sld,$whois){
		$ret=false;
		if(empty($whois['regex_check']) || preg_match('/^'.$whois['regex_check'].'$/u',$sld)){
			if($whois['idn']=='1'){
				// IDN
				$sld=$this->idnEncode($sld);
			}
			// validate technical domain name
			if($whois['idn']=='2'){
				$regex='.{1,63}';
			}else{
				$regex='[a-z0-9]([a-z0-9-]{0,61}[a-z0-9]){0,1}';
			}
			if(preg_match('/^'.$regex.'$/u',$sld)){
				$ret=$sld;
			}
		}
		return $ret;
	}

	protected function whois($server,$query){
		$response=false;

		if($this->config['whois_command']){
			$cmd=$this->config['whois_command'].($this->config['proxy.']['server'] ? ' -h '.escapeshellarg($this->config['proxy.']['server']) : '').' '.escapeshellarg($query);
			$response=shell_exec($cmd);
		}else{
			$socket=@fsockopen($server,43,$errno,$errstr,5);
			if($socket){
				fputs($socket,$query."\r\n");
				$response='';
				while(!feof($socket)){
					$response.=fread($socket,512);
				}
				fclose($socket);
			}
		}

		return $response;
	}

	protected function getWhois($tld){
		if($this->config['proxy.']['server']){
			$whois=$this->config['proxy.'];
		}else{
			$res=$GLOBALS['TYPO3_DB']->exec_SELECTquery('*','tx_odsdomaincheck_tlds,tx_odsdomaincheck_whois','tx_odsdomaincheck_tlds.whois=tx_odsdomaincheck_whois.uid AND tld='.$GLOBALS['TYPO3_DB']->fullQuoteStr($tld,'tx_odsdomaincheck_tlds').' AND tx_odsdomaincheck_tlds.deleted=0 AND tx_odsdomaincheck_tlds.hidden=0 AND tx_odsdomaincheck_whois.deleted=0 AND tx_odsdomaincheck_whois.hidden=0');
			$whois=$GLOBALS['TYPO3_DB']->sql_fetch_assoc($res);
		}
		return $whois;
	}

	protected function writeLog($status){
		if($this->config['log']){
			$GLOBALS['TYPO3_DB']->exec_INSERTquery('tx_odsdomaincheck_log',array(
				'tstamp' => time(),
				'domain' => $this->query,
				'response' => $this->config['log']>1 ? $this->response : '',
				'status' => $status,
			));
		}
	}

	protected function idnEncode($sld){
		require_once('class.tx_odsdomaincheck_idna_convert.php');
		$IDN=new tx_odsdomaincheck_idna_convert();
		return($IDN->encode($sld));
	}
}

if (defined('TYPO3_MODE') && $TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/ods_domaincheck/class.tx_odsdomaincheck_whois.php']) {
	include_once($TYPO3_CONF_VARS[TYPO3_MODE]['XCLASS']['ext/ods_domaincheck/class.tx_odsdomaincheck_whois.php']);
}
?>