//%attributes = {}
var $vl_error : Integer
var $vt_command : Text

$vl_error:=$1
$vt_command:=$2

If ($vl_error#0)
	ALERT:C41("TAPI Error: "+String:C10($vl_error)+" ("+$vt_command+")")
End if 
