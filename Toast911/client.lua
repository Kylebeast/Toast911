RegisterNetEvent("requestStreetName")
AddEventHandler("requestStreetName", function(msg, callType, color)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local streetHash = GetStreetNameAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    local streetName = GetStreetNameFromHashKey(streetHash)
    TriggerServerEvent("sendStreetName", msg, callType, color, streetName, playerCoords)
end)

RegisterNetEvent("add911Blip")
AddEventHandler("add911Blip", function(coords, callType)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, 161) -- Shield with a star icon
    SetBlipColour(blip, 1) -- Red color
    SetBlipScale(blip, 1.2)
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(callType .. " Call")
    EndTextCommandSetBlipName(blip)
    PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", true)
    Citizen.Wait(300000) -- 5 minutes
    RemoveBlip(blip)
end)
