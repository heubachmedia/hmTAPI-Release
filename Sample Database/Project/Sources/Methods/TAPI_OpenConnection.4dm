//%attributes = {}
var $vl_device; $vl_error; $vl_process : Integer

If (Not:C34(<>Vf_TAPIConnection))
	
	$vl_device:=tt_devices
	
	$vl_error:=hmTAPI_Open($vl_device)
	
	TAPI_Error($vl_error; "hmTAPI_Open")
	
	If ($vl_error=0)
		<>Vf_TAPIConnection:=True:C214
		<>vl_TAPI_device:=$vl_device
		
		If (Process number:C372("TAPI_Callback")=0)
			$vl_process:=New process:C317("TAPI_Callback"; 0; "$TAPI_Callback"; *)
		End if 
		
	End if 
	
Else 
	
	ALERT:C41("Already connected")
	
End if 
