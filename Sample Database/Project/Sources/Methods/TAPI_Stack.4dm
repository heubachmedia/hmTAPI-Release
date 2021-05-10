//%attributes = {}
var $i : Integer

If (<>vl_tapi_anweisung#0)
	TAPI_execute(<>vl_tapi_anweisung; <>vt_tapi_parameter; <>vl_tapi_parameter)
	<>vl_tapi_anweisung:=0
	<>vt_tapi_parameter:=""
	<>vl_tapi_parameter:=0
End if 

For ($i; 1; Size of array:C274(<>tl_tapiCB_msg))
	TAPI_execute(<>tl_tapiCB_msg{$i}; <>tt_tapiCB_param1{$i}; <>tl_tapiCB_param1{$i})
End for 

ARR_Resize(-><>tl_tapiCB_msg; 0)
ARR_Resize(-><>tt_tapiCB_param1; 0)
ARR_Resize(-><>tl_tapiCB_param1; 0)
