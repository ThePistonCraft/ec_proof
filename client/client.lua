ESX = nil

Citizen.CreateThread(function()
    Config.ESXExport(function() end)
end)

function useVest(armourValue, bproof_1, bproof_2, itemName)
    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = Config.Anim
    
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(playerPed, lib, anim, 8.0, 2.0, 1200, 48, 10, 0, 0, 0)
        Citizen.Wait(1000)
        ClearPedTasks(playerPed)

        local currentArmour = GetPedArmour(playerPed)
        local newArmour = currentArmour + armourValue

        if newArmour > 100 then
            newArmour = 100
        end

        SetPedArmour(playerPed, newArmour)
        TriggerEvent('skinchanger:change', 'bproof_1', bproof_1, 'bproof_2', bproof_2)

        if currentArmour >= Config.RemoveItemThreshold then
            TriggerServerEvent('ec_pdproof:removeVest', itemName)
        end
    end)
end

RegisterNetEvent('ec_pdproof:useVest')
AddEventHandler('ec_pdproof:useVest', function(armourValue, bproof_1, bproof_2, itemName)
    useVest(armourValue, bproof_1, bproof_2, itemName)
end)
