## hmTAPI_Answer (callID) → Error code
###### Introduced in v2.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|Error code|Longint|←|Error code

### Description
When a new call arrives, you can call the command *hmTAPI_Answer* to inform the application, that you have an interest of this call.

You should only call this command if the current incoming call has the linestate LINECALLSTATE_OFFERING.

### Return Value
Returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs. The param2 parameter of the corresponding LINE_REPLY message is zero if the function succeeds or it is a negative error number if an error occurs. Possible return values are:
LINEERR_INUSE, LINEERR_OPERATIONUNAVAIL, LINEERR_INVALCALLHANDLE, LINEERR_OPERATIONFAILED, LINEERR_INVALCALLSTATE, LINEERR_RESOURCEUNAVAIL, LINEERR_INVALPOINTER, LINEERR_UNINITIALIZED, LINEERR_NOMEM, LINEERR_USERUSERINFOTOOBIG, LINEERR_NOTOWNER.

### Remarks
When a new call arrives, applications with an interest in the call are sent a LINE_CALLSTATE message to provide the new call handle and to inform the application about the call's state and the privileges to the new call (such as monitor or owner). The application with owner privilege for the call can answer this call using *hmTAPI_Answer*. After the call has been successfully answered, the call typically transitions to the connected state. Initially, only one application is given owner privilege to the incoming call.
In some telephony environments (like ISDN), where user alerting is separate from call offering, the application can have the option to accept a call prior to answering or to reject or redirect the offering call.
If a call comes in (is offered) at the time another call is already active, invoking *hmTAPI_Answer* connects to the new call. The effect this has on the existing active call depends on the line's device capabilities. The first call can be unaffected, it can automatically be dropped, or it can automatically be placed on hold. The appropriate LINE_CALLSTATE messages report state transitions to the application about both calls.
In a bridged situation, if a call is connected but in the LINECONNECTEDMODE_INACTIVE state, it can be joined using the *hmTAPI_Answer* function.
The application has the option to send user-user information at the time of the answer. Even if user-user information can be sent, there is no guarantee that the network will deliver this information to the calling party. An application should consult a line's device capabilities to determine whether sending user-user information upon answering the call is available.

### Example

```4d
var $vl_callstatus; $vl_error; $vl_lastcall : Integer

$vl_callstatus:=0
$vl_error:=hmTAPI_GetCallStatus($vl_lastcall; $vl_callstatus)

If ($vl_callstatus=LINECALLSTATE_OFFERING)
	$vl_error:=hmTAPI_Answer($vl_lastcall)
End if 
```
