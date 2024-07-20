Config = {}

Config.Anim = 'try_tie_positive_a'
Config.RemoveItemThreshold = 75 -- Percentage threshold to remove item from inventory
Config.Vests = {
    {
        itemName = 'pd_vest',
        armourValue = 100,
        bproof_1 = 50,
        bproof_2 = 0
    },
    {
        itemName = 'kevlar_vest',
        armourValue = 100,
        bproof_1 = 4,
        bproof_2 = 0
    }
}

-- ESX Export
Config.ESXExport = function()
    ESX = exports["es_extended"]:getSharedObject()
end
