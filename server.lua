RegisterNetEvent('FiveBazaar:server:createStash', function(objectModel, coords, slots, weight)
    local src = source
    local stashId = objectModel .. '_' .. math.floor(coords.x) .. '_' .. math.floor(coords.y) .. '_' .. math.floor(coords.z)


    local stash = {
        id = stashId,
        label = 'Custom Stash - ' .. stashId,
        slots = slots or 50,
        weight = weight or 100000,
        owner = nil
    }


    exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)

    TriggerClientEvent('FiveBazaar:client:openStash', src, stashId)
end)
