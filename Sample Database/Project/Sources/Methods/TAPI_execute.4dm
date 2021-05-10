//%attributes = {}
var $vl_anweisung; $vl_error; $vl_parameter : Integer
var $vt_parameter; $vt_callerID; $vt_callerName; $vt_callstate; $vt_nummer; $vt_calledname; $vt_calledID; $vt_connectedName; $vt_connectedID : Text
var $vc_lines : Collection

$vl_anweisung:=$1
$vt_parameter:=$2
$vl_parameter:=$3

Case of 
	: ($vl_anweisung=-1)  //CALL
		
		If (Vl_TAPI_Call=0)
			
			$vt_nummer:=$vt_parameter
			
			$vl_error:=hmTAPI_MakeCall(<>vl_TAPI_device; $vt_nummer)  //returns a positive number
			APPEND TO ARRAY:C911(tt_protokoll; "Call: "+$vt_nummer)
			
		End if 
		
	: ($vl_anweisung=-2)  //drop
		$vl_error:=hmTAPI_Drop(Vl_TAPI_Call)
		APPEND TO ARRAY:C911(tt_protokoll; "Drop")
		
	: ($vl_anweisung=-3)  //answer
		$vl_error:=hmTAPI_Answer(Vl_TAPI_Call)
		APPEND TO ARRAY:C911(tt_protokoll; "Answer")
		
	: ($vl_anweisung=LINE_CALLSTATE)
		$vt_callstate:=TAPI_TranslateLinestate($vl_parameter)
		APPEND TO ARRAY:C911(tt_protokoll; "LINE_CALLSTATE: "+$vt_callstate)
		
		Case of 
			: ($vl_parameter=LINECALLSTATE_IDLE)
				Vl_TAPI_Call:=0
				
			: ($vl_parameter=LINECALLSTATE_CONNECTED)
				
			: ($vl_parameter=LINECALLSTATE_RINGBACK)
				
				If (Vl_TAPI_Call>0)
					$vt_calledname:=""
					$vt_calledID:=""
					$vt_connectedName:=""
					$vt_connectedID:=""
					
					$vl_error:=hmTAPI_GetCallInfo Ex(Vl_TAPI_Call; $vt_calledname; $vt_calledID; $vt_connectedName; $vt_connectedID)
					
					APPEND TO ARRAY:C911(tt_protokoll; "Call: "+$vt_calledname+"/"+$vt_calledID)
					
				End if 
				
		End case 
		
	: ($vl_anweisung=LINE_REPLY)
		APPEND TO ARRAY:C911(tt_protokoll; "LINE_REPLY: "+String:C10($vl_parameter))
		Vl_TAPI_Call:=$vl_parameter
		
	: ($vl_anweisung=LINE_APPNEWCALL)
		
		$vc_lines:=Split string:C1554($vt_parameter; "\r")
		
		Vl_TAPI_Call:=$vl_parameter
		
		If ($vc_lines.length>0)
			$vt_callerID:=$vc_lines[0]
		Else 
			$vt_callerID:=""
		End if 
		
		If ($vc_lines.length>1)
			$vt_callerName:=$vc_lines[1]
		Else 
			$vt_callerName:=""
		End if 
		
		APPEND TO ARRAY:C911(tt_protokoll; "LINE_APPNEWCALL: "+String:C10($vl_parameter))
		APPEND TO ARRAY:C911(tt_protokoll; "Incoming call:"+$vt_callerID+"/"+$vt_callerName)
		
	Else 
		//do nothing
		
End case 
