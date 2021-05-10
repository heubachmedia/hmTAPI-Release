If (Form event code:C388=On Clicked:K2:4)
	
	Settings_Check
	ALL RECORDS:C47([Settings:2])
	[Settings:2]device:1:=tt_devices
	SAVE RECORD:C53([Settings:2])
	
End if 
