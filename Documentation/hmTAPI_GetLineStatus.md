## hmTAPI_Get Line Status (deviceID) → Status
###### Introduced in v4.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|deviceID|Longint|→|Devices ID
|Status|Longint|←|Line Status

### Description
The command *hmTAPI_Get Line Status*' returns the line status of the device. It returns 1 if the line is connected. Otherwiese it returns -999 or an other error code.
