Following constants are available:

|Constant|Value|Description
|---|---|
|LINECALLPRIVILEGE_NONE|0x00000001|The application has no privileges to the call. The application's handle is void and should not be used.
|LINECALLPRIVILEGE_MONITOR|0x00000002|The application has monitor privileges to the call. These privileges allow the application to monitor state changes and query information and status about the call.
|LINECALLPRIVILEGE_OWNER|0x00000004|The application has owner privileges to the call. These privileges allow the application to manipulate the call in ways that affect the state of the call.
