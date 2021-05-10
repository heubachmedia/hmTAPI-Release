## hmTAPI_Open Ex (deviceID ; Privileges ; MediaModes) → Error code
###### Introduced in v2.1, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device ID
|Privileges|Longint|→|Call privileges
|MediaModes|Longint|→|Media modes
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Open Ex* opens the TAPI device. You must call this command before you make a call or send other commands to the telephone.

The parameter *Privileges* defines the privilege the application wants when notified of a call. You can use the [Line privileges](LinePrivileges.md) constants.

The parameter *MediaModes* defines the media type or modes of interest to the application. This parameter is used to register the application as a potential target for incoming call and call handoff for the specified media type. This parameter is meaningful only if the bit LINECALLPRIVILEGE_OWNER in *Privileges* is set (and ignored otherwise). This parameter uses one or more of the [Media modes](LineMediaModes.md) constants.
After use, you have to close the device with the command [hmTAPI_Close](hmTAPI_Close.md).

An error number of zero indicates success. A negative error number indicates that an error occurred.
