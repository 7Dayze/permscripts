ArmourCoolDown = false
RegisterNetEvent('custom:tpm')
AddEventHandler('custom:tpm', function()
	local WaypointHandle = GetFirstBlipInfoId(8)
	if DoesBlipExist(WaypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
		for height = 1, 1000 do
            SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
			local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)
			if foundGround then
				SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
				break
			end
			Citizen.Wait(5)
		end
		ESX.ShowNotification("Teleported.")
	else
		ESX.ShowNotification("Please place your waypoint.")
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