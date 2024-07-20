ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

for _, vest in ipairs(Config.Vests) do
    ESX.RegisterUsableItem(vest.itemName, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        TriggerClientEvent('ec_pdproof:useVest', source, vest.armourValue, vest.bproof_1, vest.bproof_2, vest.itemName)
    end)
end

RegisterNetEvent('ec_pdproof:removeVest')
AddEventHandler('ec_pdproof:removeVest', function(itemName)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(itemName, 1)
end)
