//%attributes = {}
If (<>Vf_TAPIConnection)
	TAPI_Error(hmTAPI_Close(<>vl_TAPI_device); "hmTAPI_Close")
	<>Vf_TAPIConnection:=False:C215
	<>vl_TAPI_device:=0
Else 
	ALERT:C41("Not connected")
End if 
