

RegisterNetEvent("syn:smokecigar")
AddEventHandler("syn:smokecigar", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_SMOKE_CIGAR'), 15000, true, false, false, false)
end)

RegisterNetEvent("syn:smokecig")
AddEventHandler("syn:smokecig", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_SMOKE_INTERACTION'), 15000, true, false, false, false)
end)

Citizen.CreateThread(function() -- cancel emote/animation
    while true do
        Wait(0)
        if IsControlJustPressed(0, 0xA65EBAB4) then -- left arrow key universtal cancel animations button
            ClearPedTasksImmediately(PlayerPedId())
        end
    end 
end)