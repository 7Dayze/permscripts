Healcooldown = false
RegisterNetEvent('custom:heal')
AddEventHandler('custom:heal', function()
	if Healcooldown == false then 
		notify("~g~Ozdravljen")
		SetEntityHealth(GetPlayerPed(-1), 200)
		Healcooldown = true
		Wait(600000)
		Healcooldown = false
    end

    if Healcooldown == true then
        notify("~r~ Pocakati moras 10min od takrat ko ste nazadnje uporabili ukaz")
    end
end)

RegisterNetEvent('custom:notAllowed')
AddEventHandler('custom:notAllowed', function()
	notification("~r~Nimas dovoljenja")
end)

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end