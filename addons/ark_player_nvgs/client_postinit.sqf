["visionMode", {
    params ["_unit", "_visionMode"];
    if (isNull objectParent _unit) then {
        if (_visionMode isEqualTo 1) then {
            playSound "ark_nvg_on";
        };

        if (_visionMode isEqualTo 0) then {
            playSound "ark_nvg_off";
        };
    };
}] call CBA_fnc_addPlayerEventHandler;