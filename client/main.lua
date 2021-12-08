local QBCore = exports['qb-core']:GetCoreObject()
local isShown = false
local MapBlips = {}

RegisterNetEvent('qb-map:client:useMap', function()
    if isShown then        
        for k, v in pairs(Config.Blips) do
            RemoveBlip(MapBlips[k])    
        end
        isShown = false
        MapBlips = {}
        QBCore.Functions.Notify('Places disabled!', 'error')        
    else
        for k, v in pairs(Config.Blips) do
            MapBlips[k] = AddBlipForCoord(v.location)
            SetBlipSprite(MapBlips[k], v.sprite)
            SetBlipAsShortRange(MapBlips[k], v.ShortRange)
            SetBlipScale(MapBlips[k], v.scale)
            SetBlipColour(MapBlips[k], v.color)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.label)
            EndTextCommandSetBlipName(MapBlips[k])
        end
        isShown = true
        QBCore.Functions.Notify('Places enabled!', 'success')        
    end
end)