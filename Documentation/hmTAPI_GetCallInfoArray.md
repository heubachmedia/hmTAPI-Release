## hmTAPI_GetCallInfoArray (callID ; array) → Error code
###### Introduced in v4.0, Preemptive: no

|Parameter|Type|In/Out|Description
|---|---|:---:|---
|callID|Longint|→|Call ID
|CalledName|Text|←|Called Name
|CalledID|Text|←|Called ID
|ConnectedName|Text|←|Connected Name
|ConnectedID|Text|←|Connected ID
|Error code|Longint|←|Error code

### Description
The command *hmTAPI_GetCallInfoArray* returns all information about a call.
Currently you are getting 23 properties of a call:

|Arrray Number|Description
|---|---
|1|Caller id
|2|Caller id name
|3|Called id
|4|Called id name
|5|Connected id
|6|Connected id name
|7|Redirection id
|8|Redirection id name
|9|Redirecting id
|10|Redirecting name
|11|App name
|12|Displayable address
|13|Called party
|14|Comment
|15|Display
|16|User info
|17|high-level compatibility information
|18|low-level compatibility information
|19|charging information
|20|current terminal modes
|21|device-specific field
|22|quality of service information, sending
|23|quality of service information, receiving
