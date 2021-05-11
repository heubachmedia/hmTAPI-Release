# Command overview

## Plugin Main Commands
### Plugin Main Commands
- [hmTAPI_Register (Serial number) → Error code](hmTAPI_Register.md)
- [hmTAPI_Init → Error code](hmTAPI_Init.md)
- [hmTAPI_DeInit → Error code](hmTAPI_DeInit.md)

### Devices
- [hmTAPI_Open (deviceID) → Error code](hmTAPI_Open.md)
- [hmTAPI_Open Ex (deviceID ; Privileges ; MediaModes) → Error code](hmTAPI_OpenEx.md)
- [hmTAPI_Close (deviceID) → Error code](hmTAPI_Close.md)
- [hmTAPI_CountDevices → Count](hmTAPI_CountDevices.md)
- [hmTAPI_GetDeviceName (deviceID ; deviceName) → Error code](hmTAPI_GetDeviceName.md)
- [hmTAPI_GET ALL OPEN DEVICES (Array) → Error code](hmTAPI_GetAllOpenDevices.md)
- [hmTAPI_Count Device Addresses (deviceID) → Count](hmTAPI_CountDeviceAddresses.md)
- [hmTAPI_Get Address Info (deviceID ; AddressID ; Selector ; Info) → Error code](hmTAPI_GetAddressInfo.md)

### Lines and Calls
- [hmTAPI_MakeCall (deviceID ; Number) → Error code](hmTAPI_MakeCall.md)
- [hmTAPI_GetCallStatus (callID ; Status) → Error code](hmTAPI_GetCallStatus.md)
- [hmTAPI_Redirect (deviceID ; Number) → Error code](hmTAPI_Redirect.md)
- [hmTAPI_GetLastCallID (callID) → Error code](hmTAPI_GetLastCallID.md)
- [hmTAPI_Drop (callID) → Error code](hmTAPI_Drop.md)
- [hmTAPI_GetMessage (deviceID ; msgno ; param1 ; param2 ; param3 ; countMsg) → Error code](hmTAPI_GetMessage.md)
- [hmTAPI_ClearMessages → Error code](hmTAPI_ClearMessages.md)
- [hmTAPI_GetCallInfo (callID ; CallerID ; CallerIDName ; CalledIDName) → Error code](hmTAPI_GetCallInfo.md)
- [hmTAPI_GetCallInfo Ex (callID ; CalledName ; CalledID ; ConnectedName ; ConnectedID) → Error code](hmTAPI_GetCallInfoEx.md)
- [hmTAPI_GetCallInfoArray (callID ; array) → Error code](hmTAPI_GetCallInfoArray.md)
- [hmTAPI_Accept (callID) → Error code](hmTAPI_Accept.md)
- [hmTAPI_Answer (callID) → Error code](hmTAPI_Answer.md)
- [hmTAPI_GetCallOrigin (callID ; origin) → Error code](hmTAPI_GetCallOrigin.md)
- [hmTAPI_GetDeviceIDFromCallID (callID ; deviceID) → Error code](hmTAPI_GetDeviceIDFromCallID.md)
- [hmTAPI_DeallocateCall (callID) → Error code](hmTAPI_DeallocateCall.md)
- [hmTAPI_Get Line Status (deviceID) → Status](hmTAPI_GetLineStatus.md)
- [hmTAPI_Hold (callID) → Error code](hmTAPI_Hold.md)<span style="color:red;font-family:monospace">&nbsp;&nbsp;New in v19</span>
- [hmTAPI_Unhold (callID) → Error code](hmTAPI_Unhold.md)<span style="color:red;font-family:monospace">&nbsp;&nbsp;New in v19</span>

---

## Appendix
* [Line Messages](LineMessages.md)
* [Line States](LineStates.md)
* [Line Privileges](LinePrivileges.md)
* [Media Modes](LineMediaModes.md)
