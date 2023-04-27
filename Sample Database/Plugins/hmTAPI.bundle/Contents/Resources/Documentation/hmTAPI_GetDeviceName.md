## hmTAPI_GetDeviceName (deviceID ; deviceName) → Error code
###### Introduced in v1.0, Preemptive: no

<span style="color:gray;font-family:monospace">This command is deprecated in v19. It will be removed in future versions. Please use [hmTAPI_GetDevices](hmTAPI_GetDevices.md) instead.</span>

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device index
|deviceName|Text|←|Device name
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetDeviceName* returns the device name defined by *deviceID*. The device id is the number between 1 and the number returned by [hmTAPI_CountDevices](hmTAPI_CountDevices.md).
