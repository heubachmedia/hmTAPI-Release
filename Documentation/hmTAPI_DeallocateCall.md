## hmTAPI_DeallocateCall (callID) → Error code
###### Introduced in v2.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_DeallocateCall* deallocates the call, with *callID*. For many reasons it can be possible, to deallocate a call, if your application is not interested in this call.

An error number of zero indicates success. A negative error number indicates that an error occurred.

### Return value
Returns zero if the request succeeds or a negative error number if an error occurs. Possible return values include:
LINEERR_INVALCALLHANDLE, LINEERR_OPERATIONFAILED, LINEERR_INVALCALLSTATE, LINEERR_RESOURCEUNAVAIL, LINEERR_NOMEM, LINEERR_UNINITIALIZED.

### Remarks
The deallocation does not affect the call state of the physical call. It does, however, release internal resources related to the call.
In API versions, earlier than 2.0, if the application is the sole owner of a call and the call is not in the idle state, LINEERR_INVALCALLSTATE is returned. In this case, the application can first drop the call using lineDrop and deallocate its call handle afterward. An application that has monitor privilege for a call can always deallocate its handle for the call.
In API versions 2.0 or later, the sole owner of the call can deallocate its handle even though the call is not in the idle state. This enables distributed control of the call in a client/server environment.
