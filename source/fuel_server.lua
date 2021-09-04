RegisterServerEvent('fuel:pay')
AddEventHandler('fuel:pay', function(price, source)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	local amount = math.floor(price + 0.5)

	if price > 0 then
		xPlayer.Functions.RemoveMoney('cash', amount)
	end
end)

QBCore.Functions.CreateCallback('fuel:server:hasJerryCans', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local cans = Player.Functions.GetItemsByName("weapon_petrolcan")
    local retVal = false
	local nonFull = {}

    if #cans > 0 then
        for k, v in pairs(cans) do
			if v.info ~= nil then
				if v.info.quality ~= nil and v.info.quality < 100 then
					table.insert(nonFull, v)
					retVal = true
				end
			end
		end
    end

    cb(retVal, nonFull)
end)

RegisterServerEvent('fuel:server:swapJerryCan')
AddEventHandler("fuel:server:swapJerryCan", function (slot)
    local Player = QBCore.Functions.GetPlayer(source)
    
    Player.Functions.RemoveItem("weapon_petrolcan", 1, slot)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["weapon_petrolcan"], "remove")
    Player.Functions.AddItem("weapon_petrolcan", 1, slot, {
        ["quality"] = 100
    })
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["weapon_petrolcan"], "add")
end)