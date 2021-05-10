## hmTAPI_Accept (callID) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|Error code|Longint|←|Error code

### Description
With this command *hmTAPI_Accept* you can accept an incoming call. See chapter [hmTAPI_GetMessage](hmTAPI_GetMessage.md).

### Return Value
Returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs. The param2 parameter of the corresponding LINE_REPLY message is zero if the function succeeds, or it is a negative error number if an error occurs. Possible return values are:
LINEERR_INVALCALLHANDLE, LINEERR_INVALCALLSTATE, LINEERR_INVALPOINTER, LINEERR_NOMEM, LINEERR_NOTOWNER, LINEERR_OPERATIONFAILED, LINEERR_OPERATIONUNAVAIL, LINEERR_RESOURCEUNAVAIL, LINEERR_UNINITIALIZED, LINEERR_USERUSERINFOTOOBIG.

### Remarks
The *hmTAPI_Accept* function is used in telephony environments like Integrated Services Digital Network (ISDN) that allow alerting associated with incoming calls to be separate from the initial offering of the call. When a call comes in, it is first offered. For some small amount of time, the application may have the option to reject the call using lineDrop, redirect the call to another station using [hmTAPI_Redirect](hmTAPI_Redirect.md), answer the call using [hmTAPI_Answer](hmTAPI_Anwer.md), or accept the call using *hmTAPI_Accept*. After a call has been successfully accepted by an application, alerting begins at both the called and calling device and the call state typically transitions to accepted.
Alerting is reported to the application by the LINE_LINEDEVSTATE message with the ringing indication.
The *hmTAPI_Accept* function may also be supported by non-ISDN service providers. The call state transition to accepted can be used by other applications as an indication that another application has claimed responsibility for the call and has presented the call to the user.
The application has the option to send user-user information at the time of the accept. Even if user-user information is sent, there is no guarantee that the network will deliver this information to the calling party. An application should consult a line's device capabilities to determine whether call accept is available.
