local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("map", function(source, item)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.GetItemByName(item.name) ~= nil then
		TriggerClientEvent("qb-map:client:useMap", src)
	end
end)