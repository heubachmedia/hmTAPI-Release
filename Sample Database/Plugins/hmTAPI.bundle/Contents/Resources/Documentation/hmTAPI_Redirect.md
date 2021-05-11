## hmTAPI_Redirect (deviceID ; Number) → Error code
###### Introduced in v5.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device ID
|Number|Text|→|Phone number
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Redirect* redirects the specified offering call to the specified destination address.

Returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs. The param2 parameter of the corresponding LINE_REPLY message is zero if the function succeeds or it is a negative error number if an error occurs. Possible return values are:

LINEERR_INVALADDRESS, LINEERR_NOTOWNER, LINEERR_INVALCALLHANDLE, LINEERR_OPERATIONUNAVAIL, LINEERR_INVALCALLSTATE, LINEERR_OPERATIONFAILED, LINEERR_INVALCOUNTRYCODE, LINEERR_RESOURCEUNAVAIL, LINEERR_INVALPOINTER, LINEERR_UNINITIALIZED, LINEERR_NOMEM

Call redirect allows an application to deflect an offering call to another address without first answering the call. Call redirect differs from call forwarding in that call forwarding is performed by the switch without the involvement of the application; redirection can be done on a call-by-call basis by the application, for example, driven by caller ID information. It differs from call transfer in that transferring a call requires the call first be answered.
After a call has been successfully redirected, the call typically transitions to idle.
Besides redirecting an incoming call, an application may have the option to accept the call using [hmTAPI_Accept](hmTAPI_Accept.md), reject the call using [[hmTAPI_Drop]], or answer the call using [hmTAPI_Answer](hmTAPI_Answer.md). The availability of these operations is dependent on device capabilities.
