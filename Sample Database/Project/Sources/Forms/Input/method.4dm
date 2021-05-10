Case of 
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(tt_devices; 0)
		TAPI_GetDevices(->tt_devices)
		
		ALL RECORDS:C47([Settings:2])
		
		If ([Settings:2]device:1>0) & ([Settings:2]device:1<=Size of array:C274(tt_devices))
			tt_devices:=[Settings:2]device:1
		Else 
			If (Size of array:C274(tt_devices)>0)
				tt_devices:=1
			Else 
				tt_devices:=0
			End if 
			
		End if 
		
		vt_number:=""
		Vl_TAPI_Call:=0
		
		ARRAY TEXT:C222(tt_protokoll; 0)
		
	: (Form event code:C388=On Outside Call:K2:11)
		If (<>VfQuit4D)
			CANCEL:C270
		Else 
			TAPI_Stack
		End if 
		
	: (Form event code:C388=On Close Box:K2:21)
		CANCEL:C270
		
End case 
