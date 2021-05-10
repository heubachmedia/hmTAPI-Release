//%attributes = {}
var $vl_process; $vl_device; $vl_msgno; $vl_param1; $vl_param2; $vl_param3; $vl_countmsg; $vl_error; $vl_lastcall; $vl_callorigin; $vl_callstatus : Integer
var $vt_callerID; $vt_callerName; $vt_called; $vt_calledName; $vt_callerID; $vt_calledID; $vt_connectedName; $vt_connectedID : Text

$vl_process:=Current process:C322

ARRAY LONGINT:C221(<>tl_tapiCB_msg; 0)
ARRAY TEXT:C222(<>tt_tapiCB_param1; 0)
ARRAY LONGINT:C221(<>tl_tapiCB_param1; 0)

$vl_lastcall:=0

Repeat 
	
	If (Size of array:C274(<>tl_tapiCB_msg)=0) & (Size of array:C274(<>tt_tapiCB_param1)=0) & (Size of array:C274(<>tl_tapiCB_param1)=0)  //C 10.10.06
		
		//wenn kein Benutzer aktiv, dann reagiere nicht
		
		Repeat 
			$vl_device:=0
			$vl_msgno:=0
			$vl_param1:=0
			$vl_param2:=0
			$vl_param3:=0
			$vl_countmsg:=0
			
			$vl_error:=hmTAPI_GetMessage($vl_device; $vl_msgno; $vl_param1; $vl_param2; $vl_param3; $vl_countmsg)
			
			Case of 
				: ($vl_msgno=LINE_CALLSTATE)
					APPEND TO ARRAY:C911(<>tl_tapiCB_msg; 2)
					APPEND TO ARRAY:C911(<>tt_tapiCB_param1; "")
					APPEND TO ARRAY:C911(<>tl_tapiCB_param1; $vl_param1)
					
				: ($vl_msgno=LINE_REPLY)
					
					$vl_callstatus:=0
					
					If ($vl_lastcall#0)
						$vl_error:=hmTAPI_GetCallStatus($vl_lastcall; $vl_callstatus)
					End if 
					
					If ($vl_callstatus=LINECALLSTATE_OFFERING) | ($vl_callstatus=LINECALLSTATE_ACCEPTED) | ($vl_callstatus=LINECALLSTATE_CONNECTED)
						
						If ($vl_param3=0)
							$vl_param3:=$vl_lastcall
						End if 
						
					End if 
					
					APPEND TO ARRAY:C911(<>tl_tapiCB_msg; 12)
					APPEND TO ARRAY:C911(<>tt_tapiCB_param1; "")
					APPEND TO ARRAY:C911(<>tl_tapiCB_param1; $vl_param3)
					$vl_lastcall:=$vl_param3
					
				: ($vl_msgno=LINE_APPNEWCALL)
					
					$vt_callerID:=""
					$vt_callerName:=""
					$vt_called:=""
					
					$vl_error:=hmTAPI_GetCallInfo($vl_param2; $vt_callerID; $vt_callerName; $vt_called)
					
					APPEND TO ARRAY:C911(<>tl_tapiCB_msg; 23)
					APPEND TO ARRAY:C911(<>tt_tapiCB_param1; $vt_callerID+Char:C90(Carriage return:K15:38)+$vt_callerName)
					APPEND TO ARRAY:C911(<>tl_tapiCB_param1; $vl_param2)
					
					$vl_lastcall:=$vl_param2
					
					$vl_callorigin:=0
					$vl_error:=hmTAPI_GetCallOrigin($vl_lastcall; $vl_callorigin)
					
					$vt_callerID:=""
					$vt_callerName:=""
					$vt_called:=""
					
					$vt_calledName:=""
					$vt_calledID:=""
					$vt_connectedName:=""
					$vt_connectedID:=""
					$vl_error:=hmTAPI_GetCallInfo Ex($vl_param2; $vt_calledName; $vt_calledID; $vt_connectedName; $vt_connectedID)
					
					
				Else 
					//do nothing
					
			End case 
			
		Until ($vl_countmsg=0)
		
		If (Size of array:C274(<>tl_tapiCB_msg)>0)
			TAPI_CallProcess(0; ""; 0)
		End if 
		
	End if 
	
	DELAY PROCESS:C323($vl_process; 60)
	
Until (<>VfQuit4D) | (Process aborted:C672) | (Not:C34(<>vf_TAPI_active))
