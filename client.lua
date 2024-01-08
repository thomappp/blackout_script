local ShowNotification = function(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

local Config = {
    affectsVehicles = false;
    textOn = "~y~Blackout activé\n~s~Les lumières de la ville se sont éteintes.",
    textOff = "~y~Blackout désactivé\n~s~Les lumières de la ville se sont allumées."
}

RegisterNetEvent("blackout_script:toggle_mode")
AddEventHandler("blackout_script:toggle_mode", function(boolean)
    SetArtificialLightsState(boolean)
    SetArtificialLightsStateAffectsVehicles(Config.affectsVehicles)

    if boolean then
        ShowNotification(Config.textOn)
    else
        ShowNotification(Config.textOff)
    end
end)
