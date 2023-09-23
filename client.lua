local ShowNotification = function(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

Config = {
    affectsVehicles = false,
    enterModeSound = { name = "Power_Down", ref = "DLC_HEIST_HACKING_SNAKE_SOUNDS" },
    exitModeSound = { name = "police_notification", ref = "DLC_AS_VNT_Sounds" }
}

RegisterNetEvent("blackout_script:toggle_mode")
AddEventHandler("blackout_script:toggle_mode", function(boolean)
    SetArtificialLightsState(boolean)
    SetArtificialLightsStateAffectsVehicles(Config.affectsVehicles)

    if boolean then
        ShowNotification("~y~Blackout activé\n~s~Les lumières de la ville se sont éteintes.")
        PlaySoundFrontend(-1, Config.enterModeSound.name, Config.enterModeSound.ref, 1)
    else
        ShowNotification("~y~Blackout désactivé\n~s~Les lumières de la ville se sont allumées.")
        PlaySoundFrontend(-1, Config.exitModeSound.name, Config.exitModeSound.ref, 1)
    end
end)