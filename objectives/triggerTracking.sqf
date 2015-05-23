_target = _this select 0;

if (!isServer) exitWith {};

// CONQUER TIME
_timeout = 30;

// TRIGGER SIZE
_trig_size = 5;



// BLUFOR WINS WHEN TRIGGER FIRED
triggerFired = {
	BLUFOR_CAPTURED = TRUE; publicVariable "BLUFOR_CAPTURED";
};

// TRACKING
trig_tracking = createTrigger["EmptyDetector",getPos _target];
trig_tracking setTriggerArea[_trig_size,_trig_size,0,false];
trig_tracking setTriggerActivation["ANYBODY","PRESENT",true];
trig_tracking setTriggerTimeout [_timeout,_timeout,_timeout];

// CONDITION ON ACT ON DEACT
trig_tracking setTriggerStatements["WEST countSide thislist > 0 && EAST countSide thislist == 0","[] call triggerFired", ""];


mrk_tracking = createMarker ["trackingMarker",getPos _target];
mrk_tracking setMarkerShape "ICON";
mrk_tracking setMarkerType "Select"; // todo: find nice marker type
mrk_tracking setMarkerPos [0,0,0];
mrk_tracking setMarkerColor colorOPFOR;
//mrk_tracking setMarkerSize [1, 1];




// LOOP TO UPDATE BARREL POSITION
[_target] spawn {
	_targ = _this select 0;
	// if barrel exists
  	while {not isnull _targ} do {

  		mrk_tracking setmarkerpos (getpos _targ);
  		trig_tracking setPos (getPos _targ);
		sleep 1;		
		};
};