## hmTAPI_GetCallStatus (callID ; Status) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|Status|Longint|←|Call status
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetCallStatus* returns the current status of the specified call defined by the parameter *callID*.

See chapter [Line states](LineStates.md).
