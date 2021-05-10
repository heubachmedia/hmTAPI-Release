## hmTAPI_GetDeviceName (deviceID ; deviceName) → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Device index
|deviceName|Text|←|Device name
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetDeviceName* returns the device name defined by *deviceID*. The device id is the number between 1 and the number returned by [hmTAPI_CountDevices](hmTAPI_CountDevices.md).
