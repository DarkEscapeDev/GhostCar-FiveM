ESX = nil

TriggerEvent('esx:getShbiohazardaredObjbiohazardect', function(obj) ESX = obj end)

RegisterCommand('startCar', function(src, args)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getGroup() == "superadmin" then
        TriggerClientEvent("PC:SpawnClient", args[1])
    end
end)

RegisterCommand('startCarAll', function(src, args)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getGroup() == "superadmin" then
        TriggerClientEvent("PC:SpawnClient", -1)
    end
end)

RegisterCommand('stopCar', function(src, args)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getGroup() == "superadmin" then
        TriggerClientEvent("PC:DespawnClient", args[1])
    end
end)

RegisterCommand('stopCarAll', function(src, args)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getGroup() == "superadmin" then
        TriggerClientEvent("PC:DespawnClient", -1)
    end
end)
