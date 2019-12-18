RegisterServerEvent('bberry:buyweapon')
AddEventHandler('bberry:buyweapon', function(price, weapon)
	local _weapon = weapon
	local _source = source
	TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
		local identifier = user.getIdentifier()
		local charid = user.getSessionVar("charid")
		if user.getMoney() >= price then
			user.removeMoney(price)
			TriggerClientEvent('give:weapon', source, weapon)
		else
			TriggerClientEvent('Message:cancel', source)
		end
	end)
end)

RegisterServerEvent('bberry:buyammo')
AddEventHandler('bberry:buyammo', function(price)
local _source = source
	TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
		if user.getMoney() >= price then
			user.removeMoney(price)
			TriggerClientEvent('give:weaponammo', source)
		else
			TriggerClientEvent('Message:cancel', source)
		end
	end)
end)