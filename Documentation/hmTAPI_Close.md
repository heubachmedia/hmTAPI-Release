## hmTAPI_Close (deviceID) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Close* closes a device, defined by the parameter *deviceID* opened by [hmTAPI_Open](hmTAPI_Open.md) or [hmTAPI_Open Ex](hmTAPI_OpenEx.md).

An error number of zero indicates success. A negative error number indicates that an error occurred.
