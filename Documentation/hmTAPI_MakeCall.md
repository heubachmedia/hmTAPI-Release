## hmTAPI_MakeCall (deviceID ; Number) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device ID
|Number|Text|→|Phone number to call
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_MakeCall* calls a phone number defined by the parameter *Number* for the device, defined by *deviceID*.

The command returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs.

### Return value
Returns a positive request identifier if the function is completed asynchronously, or a negative error number if an error occurs. The param2 parameter of the corresponding LINE_REPLY message is zero if the function succeeds or it is a negative error number if an error occurs. Possible return values are:
LINEERR_ADDRESSBLOCKED, LINEERR_INVALLINEHANDLE, LINEERR_BEARERMODEUNAVAIL, LINEERR_INVALLINESTATE, LINEERR_CALLUNAVAIL, LINEERR_INVALMEDIAMODE, LINEERR_DIALBILLING, LINEERR_INVALPARAM, LINEERR_DIALDIALTONE, LINEERR_INVALPOINTER, LINEERR_DIALPROMPT, LINEERR_INVALRATE, LINEERR_DIALQUIET, LINEERR_NOMEM, LINEERR_INUSE, LINEERR_OPERATIONFAILED, LINEERR_INVALADDRESS, LINEERR_OPERATIONUNAVAIL, LINEERR_INVALADDRESSID, LINEERR_RATEUNAVAIL, LINEERR_INVALADDRESSMODE, LINEERR_RESOURCEUNAVAIL, LINEERR_INVALBEARERMODE, LINEERR_STRUCTURETOOSMALL, LINEERR_INVALCALLPARAMS, LINEERR_UNINITIALIZED, LINEERR_INVALCOUNTRYCODE, LINEERR_USERUSERINFOTOOBIG.

### Remarks
If LINEERR_INVALLINESTATE is returned, the line is currently not in a state in which this operation can be performed.

If LINEERR_DIALBILLING, LINEERR_DIALQUIET, LINEERR_DIALDIALTONE, or LINEERR_DIALPROMPT is returned, none of the actions otherwise performed by *hmTAPI_MakeCall* have occurred; for example, none of the dialable address prior to the offending character has been dialed, no hookswitch state has changed, and so on.
After dialing has completed, several LINE_CALLSTATE messages are usually sent to the application to notify it about the progress of the call. No generally valid sequence of call-state transitions is specified, as no single fixed sequence of transitions can be guaranteed in practice. A typical sequence can cause a call to transition from dialtone, dialing, proceeding, ringback, to connected. With non-dialed lines, the call can typically transition directly to connected state.
An application has the option to specify an originating address on the specified line device. A service provider that models all stations on a switch as addresses on a single line device allows the application to originate calls from any of these stations using *hmTAPI_MakeCall*.
The call parameters allow the application to make non-voice calls or request special call setup options that are not available by default.

After *hmTAPI_MakeCall* returns a success reply message to the application, a LINE_CALLSTATE message is sent to the application to indicate the current state of the call. This state is not necessarily LINECALLSTATE_DIALTONE.
This function may send data over the wire in unencrypted form; therefore, someone eavesdropping on the network may be able to read the data. The security risk of sending the data in clear text should be considered before using this method.
