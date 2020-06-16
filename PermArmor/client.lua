ArmourCoolDown = false
RegisterNetEvent('custom:armor')
AddEventHandler('custom:armor', function()
	if ArmourCoolDown == false then
        notify("~b~60% neprebojni jopic uporabljen - Pocakaj 10min da ga uporabis spet")
        AddArmourToPed(GetPlayerPed(-1), 60)
        ArmourCoolDown = true
        Wait(600000)
        ArmourCoolDown = false

    end
    if ArmourCoolDown == true then
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