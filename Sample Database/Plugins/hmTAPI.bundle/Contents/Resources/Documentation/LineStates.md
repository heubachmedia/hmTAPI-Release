Following constants are available:

|Constant|Value|Description
|---|---|
|LINECALLSTATE_IDLE|0x00000001|The call exists but has not been connected. No activity exists on the call. This means that no call is currently active. A call can never transition out of the idle state.
|LINECALLSTATE_OFFERING|0x00000002|The call is being offered to the station, signaling the arrival of a new call. The offering state is not the same as causing a phone or computer to ring. In some environments, a call in the offering state does not ring the user until the switch instructs the line to ring. For example this state is in use when an incoming call appears on several station sets but only the primary address rings. The instruction to ring does not affect any call states.
|LINECALLSTATE_ACCEPTED|0x00000004|The call was in the offering state and has been accepted. This indicates to other, monitoring, applications that the current owner application has claimed responsibility for answering the call. In ISDN, the accepted state is entered when the called-party equipment sends a message to the switch indicating that it is willing to present the call to the called person. This has the side effect of alerting (ringing) the users at both ends of the call. An incoming call can always be immediately answered without first being separately accepted.
|LINECALLSTATE_DIALTONE|0x00000008|The call is receiving a dial tone from the switch. This means that the switch is ready to receive a dialed number.
|LINECALLSTATE_DIALING|0x00000010|The originator is dialing digits on the call. The dialed digits are collected by the switch. Note that neither lineGenerateDigits nor TSPI_lineGenerateDigits will place the line into the dialing state.
|LINECALLSTATE_RINGBACK|0x00000020|The station to be called has been reached, and the destination's switch is generating a ring tone back to the originator. A ringback means that the destination address is being alerted to the call.
|LINECALLSTATE_BUSY|0x00000040|The call is receiving a busy tone. A busy tone indicates that the call cannot be completed. This occurs if either a circuit (trunk) or the remote party's station are in use.
|LINECALLSTATE_SPECIALINFO|0x00000080|The call is receiving a special information signal that precedes a prerecorded announcement indicating why a call cannot be completed.
|LINECALLSTATE_CONNECTED|0x00000100|The call has been established and the connection is made. Information is able to flow over the call between the originating address and the destination address.
|LINECALLSTATE_PROCEEDING|0x00000200|Dialing has completed and the call is proceeding through the switch or telephone network. This occurs after dialing is complete and before the call reaches the dialed party, as indicated by ringback, busy, or answer.
|LINECALLSTATE_ONHOLD|0x00000400|The call is on hold by the switch. This frees the physical line. This allows another call to use the line.
|LINECALLSTATE_CONFERENCED|0x00000800|The call is a member of a conference call and is logically in the connected state.
|LINECALLSTATE_ONHOLDPENDCONF|0x00001000|The call is currently on hold while it is being added to a conference.
|LINECALLSTATE_ONHOLDPENDTRANSF|0x00002000|The call is currently on hold awaiting transfer to another number.
|LINECALLSTATE_DISCONNECTED|0x00004000|The remote party has disconnected from the call.
|LINECALLSTATE_UNKNOWN|0x00008000|The call exists, but its state is currently unknown. This may be the result of poor call progress detection by the service provider. A call state message with the call state set to unknown may also be generated to inform the TAPI DLL about a new call at a time when the actual call state of the call is not exactly known
