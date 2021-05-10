## hmTAPI_GetCallInfo Ex (callID ; CalledName ; CalledID ; ConnectedName ; ConnectedID) → Error code
###### Introduced in v2.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|CalledName|Text|←|Called Name
|CalledID|Text|←|Called ID
|ConnectedName|Text|←|Connected Name
|ConnectedID|Text|←|Connected ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetCallInfo Ex* returns more information about the call defined by the parameter *callID*.
