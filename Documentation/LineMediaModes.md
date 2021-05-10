Following constants are available:

|Constant|Value|Description
|---|---|
|LINEMEDIAMODE_UNKNOWN|0x00000002|A media stream exists but its mode is not currently known and may become known later. This would correspond to a call with an unclassified media type. In typical analog telephony environments, an incoming call's media type may be unknown until after the call has been answered and the media stream has been filtered to make a determination. If the unknown media-mode flag is set, other media flags can also be set. This is used to signify that the media is unknown but that it is likely to be one of the other selected media types.
|LINEMEDIAMODE_INTERACTIVEVOICE|0x00000004|Voice energy was detected on the call, and the call is handled as an interactive voice call with humans on both ends.
|LINEMEDIAMODE_AUTOMATEDVOICE|0x00000008|Voice energy was detected on the call, and the voice is locally handled by an automated application such as with an answering machine application. When a service provider cannot distinguish between interactive and automated voice on an incoming call, it will report the call as interactive voice.
|LINEMEDIAMODE_DATAMODEM|0x00000010|A data modem session on the call. Current modem protocols require the called station to initiate the handshake. For an incoming data modem call, the application can typically make no positive detection. How the service provider makes this determination is its choice. For example, a period of silence just after answering an incoming call can be used as a heuristic to decide that this might be a data modem call.
|LINEMEDIAMODE_G3FAX|0x00000020|A group 3 fax is being sent or received over the call.
|LINEMEDIAMODE_TDD|0x00000040|A TDD (Telephony Devices for the Deaf) session on the call.
|LINEMEDIAMODE_G4FAX|0x00000080|A group 4 fax is being sent or received over the call.
|LINEMEDIAMODE_DIGITALDATA|0x00000100|A digital data stream of unspecified format.
|LINEMEDIAMODE_TELETEX|0x00000200|A teletex session on the call. Teletex is one of the telematic services.
|LINEMEDIAMODE_VIDEOTEX|0x00000400|A videotex session on the call. Videotex is one the telematic services.
|LINEMEDIAMODE_TELEX|0x00000800|A telex session on the call. Telex is one of the telematic services.
|LINEMEDIAMODE_MIXED|0x00001000|A mixed session on the call. Mixed is one of the ISDN telematic services.
|LINEMEDIAMODE_ADSI|0x00002000|An ADSI (Analog Display Services Interface) session on the call. ADSI enhances voice calls with alphanumeric information downloaded to the phone and the use of soft buttons on the phone.
|LINEMEDIAMODE_VOICEVIEW|0x00004000|The media type of the call is VoiceView. (TAPI versions 1.4 and later)
|LINEMEDIAMODE_VIDEO|0x00008000|The media type of the call is video. (TAPI versions 2.1 and later)
