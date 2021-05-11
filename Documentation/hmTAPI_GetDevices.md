## hmTAPI_GetDevices → Devices
###### Introduced in v19, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|Devices|Collection|←|Error code

### Description
The command *hmTAPI_GetDevices* returns information about any TAPI-device installed on the computer.

### Example
Here is a sample output from the command *hmTAPI_GetDevices*:

```json
[
	{
		"deviceID": 1,
		"mediaModes": 4,
		"maxRate": 9600,
		"answerMode": 1,
		"ringModes": 1,
		"lineStates": 5508608,
		"permanentLineID": 393216,
		"lineName": "100",
		"providerInfo": "Provider",
		"switchInfo": "Provider",
		"terminalCaps": "",
		"terminalText": ""
	},
	{
		"deviceID": 2,
		"mediaModes": 4,
		"maxRate": 9600,
		"answerMode": 1,
		"ringModes": 1,
		"lineStates": 5508608,
		"permanentLineID": 393217,
		"lineName": "101",
		"providerInfo": "Provider",
		"switchInfo": "Provider",
		"terminalCaps": "",
		"terminalText": ""
	}
]
```
