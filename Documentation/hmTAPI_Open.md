## hmTAPI_Open (deviceID) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Open* opens the TAPI device. You must call this command before you make a call or send other commands to the telephone.

After use, you have to close the device with the command [hmTAPI_Close](hmTAPI_Close.md).

An error number of zero indicates success. A negative error number indicates that an error occurred.

This command calls internally [hmTAPI_Open Ex](hmTAPI_OpenEx.md). First, it trys to open the device with the privilege *LINECALLPRIVILEGE_OWNER*. If it fails, it automatically tries *LINECALLPRIVILEGE_MONITOR*.
