## hmTAPI_Get Address Info (deviceID ; AddressID ; Selector ; Info) → Error code
###### Introduced in v4.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Devices ID
|AddressID|Longint|→|Address ID
|Selector|Longint|→|Selector
|Info|Text|←|Text
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_Get Address Info* returns information about the address of a device.

Pass in *selector* 1, you should get the address name in the parameter *info*.
