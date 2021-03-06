ark_ace_rearm_fnc_makeSource = {
    params ["_vehicle"];
    [_vehicle, 9999] call ace_rearm_fnc_makeSource;
};

ark_ace_rearm_module_enableRearm = {
    params ["_logic","_vehicles","_activated"];

    if !(_activated) exitWith {
        diag_log "[ARK] (ACE Rearm) - Module not activated";
        true;
    };

    if (count _vehicles == 0) exitWith {
        diag_log "[ARK] (ACE Rearm) - Module not syncd to any vehicle";
        true;
    };

    {
        _x call ark_ace_rearm_fnc_makeSource;
    } forEach _vehicles;

    true;
};