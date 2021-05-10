//%attributes = {}
var $vt_number : Text
var $vl_device; $vl_result : Integer

If (<>vf_TAPIConnection)
	
	$vt_number:=vt_number
	$vl_device:=tt_devices
	
	$vl_result:=hmTAPI_MakeCall($vl_device; $vt_number)
	
Else 
	ALERT:C41("Not connected")
End if 

