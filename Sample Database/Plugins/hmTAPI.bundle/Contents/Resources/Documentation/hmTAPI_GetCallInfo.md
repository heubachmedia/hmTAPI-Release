## hmTAPI_GetCallInfo (callID ; CallerID ; CallerIDName ; CalledIDName) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|CallerID|Text|←|Caller ID
|CallerIDName|Text|←|Caller Name
|CalledIDName|Text|←|Called Name
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetCallInfo* returns information about the call defined by the parameter *callID*.
