C_LONGINT:C283($vl_error)

If (Shift down:C543)
	TRACE:C157
End if 

<>VfQuit4D:=False:C215
<>Vf_TAPIConnection:=False:C215
<>vl_TAPI_device:=0

$vl_error:=hmTAPI_Register("")

Settings_Check

$vl_error:=hmTAPI_Init

<>vf_TAPI_active:=$vl_error=0
TAPI_Error($vl_error; "hmTAPI_Init")

Start_Dialog
