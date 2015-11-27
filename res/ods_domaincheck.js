function ods_domaincheck(obj){
	jQuery('#tx_odsdomaincheck_pi1_indication').css('display','block');
	jQuery.ajax({  
		type: 'POST',  
		url: obj.form.action,  
		data: jQuery.param(jQuery(obj.form).serializeArray())+'&'+obj.name+'=1&tx_odsdomaincheck_pi1[ajax]=jquery',  
		success: function(data) {
			jQuery('#tx_odsdomaincheck_pi1').html(data);
			jQuery('#tx_odsdomaincheck_pi1_indication').css('display','none');
		}  
	});  
	return false;
}
