local function checkWhitelist(id)
	for key, value in pairs(Whitelist) do
		if id == value then
			return true
		end
	end	
	return false
end

AddEventHandler('chatMessage', function(source, _, message)
	local msg = string.lower(message)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/armor" then
		CancelEvent()
		if EveryoneWhitelisted == true then
			TriggerClientEvent('custom:armor', source)
		else
			if checkWhitelist(identifier) then
				TriggerClientEvent('custom:armor', source)
			else
				TriggerClientEvent('custom:notAllowed', source)
			end
		end
	end
end)
