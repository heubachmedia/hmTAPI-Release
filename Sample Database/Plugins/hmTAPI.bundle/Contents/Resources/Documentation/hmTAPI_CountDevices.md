## hmTAPI_CountDevices → Count
###### Introduced in v1.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|Count|Longint|←|Count devices

### Description
The command *hmTAPI_CountDevices* returns the number of devices available on the computer. To get each device name you must call [hmTAPI_GetDeviceName](hmTAPI_GetDeviceName.md). The enumeration starts with 1.

### Example
The following example creates an array with all device names available on the computer:

```4d
var $i; $vl_devices; $vl_error : Integer
var $vt_text : Text

$vl_devices:=hmTAPI_CountDevices

ARRAY TEXT($tt_devices; $vl_devices)

For ($i; 1; $vl_devices)
	$vt_text:=""
	$vl_error:=hmTAPI_GetDeviceName($i; $vt_text)
	$tt_devices{$i}:=$vt_text
End for 
```
