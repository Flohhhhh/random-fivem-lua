RegisterCommand("dv", function()
    TriggerEvent("deletevehicle")
end)

TriggerEvent("chat:addSuggestion", "/dv", "Delete's the vehicle you are in")

RegisterNetEvent("deletevehicle")
AddEventHandler("deletevehicle", function()
    local ped = GetPlayerPed(-1)
    local pos = GetEntityCoords( ped )

    if (IsPedSittingInAnyVehicle(ped)) then 
        local vehicle = GetVehiclePedIsIn(ped, false)

        if (GetPedInVehicleSeat(vehicle, -1) == ped ) then 
            DeleteGivenVehicle(vehicle, numRetries)

        if (DoesEntityExist(vehicle)) then 
            DeleteGivenVehicle(vehicle, numRetries)
    end 
end 
end) 
