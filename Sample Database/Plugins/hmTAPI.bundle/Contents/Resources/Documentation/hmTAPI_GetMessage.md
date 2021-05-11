## hmTAPI_GetMessage (deviceID ; msgno ; param1 ; param2 ; param3 ; countMsg) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|←|Devices ID
|msgno|Longint|←|Message number
|param1|Longint|←|Parameter 1
|param2|Longint|←|Parameter 2
|param3|Longint|←|Parameter 3
|countMsg|Longint|←|Count messages
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetMessage* returns one message from the hmTAPI stack. The hmTAPI-stack collects all messages from the TAPI device.

You may call this command in a callback method, that calls the command every one second to check, if there are new messages from the TAPI device.

If you call this command the oldest message will be returned. After you call this command the message will be removed automatically from the stack. The parameter *countMsg* indicates that there a further messages on the stack, so you have call this command again.

### Messages
- LINE_CALLSTATE (2): The state of the line has be changed. The new state is returned in the parameter *param1*. See chapter [Line states](LineStates.md).
- LINE_REPLY (12): The telephone replies on the call you made with [hmTAPI_MakeCall](hmTAPI_MakeCall.md). The parameter *param3* contains the callID. You need the callID to drop the call later with [hmTAPI_Drop](hmTAPI_Drop.md). You may call the command [hmTAPI_GetLastCallID](hmTAPI_GetLastCallID.md) to get the ID.
- LINE_APPNEWCALL (23): This message indicates an incoming call. To get information about the incoming call you can call the command [hmTAPI_GetCallInfo](hmTAPI_GetCallInfo.md). The parameter *param2* contains the callID.

To accept the incoming call you call the command [hmTAPI_Accept](hmTAPI_Accept.md).
