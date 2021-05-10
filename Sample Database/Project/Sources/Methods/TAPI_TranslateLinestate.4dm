//%attributes = {}
//qqq;a;PM;TAPI_TranslateLinestate;C;0001

//Created: C 20.09.2006 14:59   projektis 2.0 a 06

var $vl_state : Integer
var $vt_text : Text

$vl_state:=$1

Case of 
	: ($vl_state=LINECALLSTATE_IDLE)
		$vt_text:="LINECALLSTATE_IDLE"
		
	: ($vl_state=LINECALLSTATE_OFFERING)
		$vt_text:="LINECALLSTATE_OFFERING"
		
	: ($vl_state=LINECALLSTATE_ACCEPTED)
		$vt_text:="LINECALLSTATE_ACCEPTED"
		
	: ($vl_state=LINECALLSTATE_DIALTONE)
		$vt_text:="LINECALLSTATE_DIALTONE"
		
	: ($vl_state=LINECALLSTATE_DIALING)
		$vt_text:="LINECALLSTATE_DIALING"
		
	: ($vl_state=LINECALLSTATE_RINGBACK)
		$vt_text:="LINECALLSTATE_RINGBACK"
		
	: ($vl_state=LINECALLSTATE_BUSY)
		$vt_text:="LINECALLSTATE_BUSY"
		
	: ($vl_state=LINECALLSTATE_SPECIALINFO)
		$vt_text:="LINECALLSTATE_SPECIALINFO"
		
	: ($vl_state=LINECALLSTATE_CONNECTED)
		$vt_text:="LINECALLSTATE_CONNECTED"
		
	: ($vl_state=LINECALLSTATE_PROCEEDING)
		$vt_text:="LINECALLSTATE_PROCEEDING"
		
	: ($vl_state=LINECALLSTATE_ONHOLD)
		$vt_text:="LINECALLSTATE_ONHOLD"
		
	: ($vl_state=LINECALLSTATE_CONFERENCED)
		$vt_text:="LINECALLSTATE_CONFERENCED"
		
	: ($vl_state=LINECALLSTATE_ONHOLDPENDCONF)
		$vt_text:="LINECALLSTATE_ONHOLDPENDCONF"
		
	: ($vl_state=LINECALLSTATE_ONHOLDPENDTRANSF)
		$vt_text:="LINECALLSTATE_ONHOLDPENDTRANSFER"
		
	: ($vl_state=LINECALLSTATE_DISCONNECTED)
		$vt_text:="LINECALLSTATE_DISCONNECTED"
		
	: ($vl_state=LINECALLSTATE_UNKNOWN)
		$vt_text:="LINECALLSTATE_UNKNOWN"
		
	Else 
		$vt_text:=""
		
End case 

$0:=$vt_text
