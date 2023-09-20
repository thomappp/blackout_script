local ShowNotification = function(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

RegisterNetEvent("blackout_script:toggle_mode")
AddEventHandler("blackout_script:toggle_mode", function(boolean)
    SetArtificialLightsState(boolean)
    SetArtificialLightsStateAffectsVehicles(false)

    if boolean then
        ShowNotification("~y~Blackout activé\n~s~Les lumières de la ville se sont éteintes.")
        PlaySoundFrontend(-1, "Power_Down", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
    else
        ShowNotification("~y~Blackout désactivé\n~s~Les lumières de la ville se sont allumées.")
        PlaySoundFrontend(-1, "police_notification", "DLC_AS_VNT_Sounds", 1)
    end
end)