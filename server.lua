local BlackoutMode = false

RegisterCommand("blackout", function()
    BlackoutMode = not BlackoutMode
    TriggerClientEvent("blackout_script:toggle_mode", -1, BlackoutMode)
end)
