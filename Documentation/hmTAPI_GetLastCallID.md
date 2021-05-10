## hmTAPI_GetLastCallID (callID) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|←|Call ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetLastCallID* returns the callID of the current or last call. You may also receive the callID by the command [hmTAPI_GetMessage](hmTAPI_GetMessage.md) in the current context.
