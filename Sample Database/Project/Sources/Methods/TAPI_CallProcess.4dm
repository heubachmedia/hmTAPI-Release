//%attributes = {}
//$1=Anweisung (1=Nummer wählen)
//$2=Parameter Text
//$3=Parameter Long

var $vl_process; $vl_anweisung; $vl_parameter : Integer
var $vt_parameter : Text

$vl_anweisung:=$1
$vt_parameter:=$2
$vl_parameter:=$3

<>vl_tapi_anweisung:=$vl_anweisung
<>vt_tapi_parameter:=$vt_parameter
<>vl_tapi_parameter:=$vl_parameter

$vl_process:=Process number:C372("TAPI")

If ($vl_process>0)
	POST OUTSIDE CALL:C329($vl_process)
End if 
