## hmTAPI_Drop (callID) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Drop* drops a current call. Only pass the callID in the parameter *callID*.

The command returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs.

Returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs. The param2 parameter of the corresponding LINE_REPLY message is zero if the function succeeds or it is a negative error number if an error occurs. Possible return values are:
LINEERR_INVALCALLHANDLE, LINEERR_OPERATIONUNAVAIL, LINEERR_NOMEM, LINEERR_OPERATIONFAILED, LINEERR_NOTOWNER, LINEERR_RESOURCEUNAVAIL, LINEERR_INVALPOINTER, LINEERR_USERUSERINFOTOOBIG, LINEERR_INVALCALLSTATE, LINEERR_UNINITIALIZED.
