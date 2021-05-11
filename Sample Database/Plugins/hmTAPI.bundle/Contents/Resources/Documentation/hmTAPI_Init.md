## hmTAPI_Init → Error code
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Init* initalizes the hmTAPI plugin and connects to the windows TAPI device. If no error occurs, error code is zero.

You have to call this command once on startup your application. After using you must call [hmTAPI_DeInit](hmTAPI_DeInit.md).
