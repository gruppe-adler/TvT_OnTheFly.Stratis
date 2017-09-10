#include "component.hpp"

if (!hasInterface) exitWith {};

params ["_obj",["_create",true],["_offset",[0,0,0]]];

deleteVehicle (_obj getVariable ["otf_smokeSource",objNull]);
if (!_create) exitWith {};

private _smk = "#particlesource" createVehicleLocal (getpos _obj);
_smk setParticleCircle [0,[0,0,0]];
_smk setParticleRandom [0,[0.25,0.25,0],[0.2,0.2,0],0,0.25,[0,0,0,0.1],0,0];
_smk setParticleParams [
    [
        "\ca\Data\ParticleEffects\Universal\Universal",         //particle shape
        16,
        8,
        8
    ],
    "",                                                         //action name
    "Billboard",                                                //particle type
    1,                                                         //timer period
    10,                                                         //life time
    _offset,                                                    //position
    [0,0,1.5],                                                    //move velocity
    0,                                                          //rotation velocity
    10,                                                          //weight
    7.9,                                                       //volume
    0.066,                                                          //rubbing
    [0.2,3,6],                                                    //size
    [                                                           //color
        [0.00,0.30,0.60,1],
        [0.00,0.35,0.70,0.5],
        [0.10,0.25,0.50,0]
    ],
    [0.125],                                                      //animation speed
    1,                                                        //random direction period
    0,                                                        //random direction intensity
    "",                                                         //on timer script
    "",                                                         //before destroy script
    _obj                                                        //attached to object
];
_smk setDropInterval 0.10;

_obj setVariable ["otf_smokeSource",_smk];
