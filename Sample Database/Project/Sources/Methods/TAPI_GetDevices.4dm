//%attributes = {}
var $i; $vl_error; $vl_devices : Integer
var $vp_array : Pointer
var $vt_text : Text

$vp_array:=$1

$vl_devices:=hmTAPI_CountDevices

ARR_Resize($vp_array; $vl_devices)

For ($i; 1; $vl_devices)
	$vt_text:=""
	$vl_error:=hmTAPI_GetDeviceName($i; $vt_text)
	$vp_array->{$i}:=$vt_text
End for 
