local ObjectList = {
    { name = "prop_chair_01a", slots = 20, weight = 50000 },   
    { name = "prop_box_wood02a", slots = 30, weight = 75000 }, 
    { name = "prop_elecbox_05a", slots = 40, weight = 100000 },
    { name = "prop_cleaning_trolly", slots = 25, weight = 60000 },
    { name = "prop_ld_dstplanter_02", slots = 15, weight = 30000 }
}

for _, obj in pairs(ObjectList) do
    exports.ox_target:addModel(obj.name, {
        name = obj.name,  
        label = "Stash Aç",  
        icon = 'fas fa-toolbox',
        distance = 4.0,  
        onSelect = function(entity)
            local objectModel = GetEntityModel(entity.entity)
            local coords = GetEntityCoords(entity.entity)
            TriggerServerEvent('FiveBazaar:server:createStash', objectModel, coords, obj.slots, obj.weight)
        end,
    })
end


RegisterNetEvent('FiveBazaar:client:openStash', function(stashId)
    exports.ox_inventory:openInventory('stash', { id = stashId })
end)
