RegisterCommand("911", function(source, args, rawCommand)
    local src = source
    local msg = table.concat(args, " ")
    TriggerClientEvent("requestStreetName", src, msg, "911", {255, 0, 0})
end, false)

RegisterCommand("911l", function(source, args, rawCommand)
    local src = source
    local msg = table.concat(args, " ")
    TriggerClientEvent("requestStreetName", src, msg, "911 Local Caller", {255, 165, 0})
end, false)

RegisterCommand("911p", function(source, args, rawCommand)
    local src = source
    local msg = table.concat(args, " ")
    TriggerClientEvent("requestStreetName", src, msg, "911 Priority", {139, 0, 0})
end, false)

RegisterCommand("311", function(source, args, rawCommand)
    local src = source
    local msg = table.concat(args, " ")
    TriggerClientEvent("requestStreetName", src, msg, "311", {0, 0, 255})
end, false)

RegisterNetEvent("sendStreetName")
AddEventHandler("sendStreetName", function(msg, callType, color, streetName, coords)
    TriggerClientEvent("chat:addMessage", -1, {
        color = color,
        multiline = true,
        args = {"[" .. callType .. "] (" .. streetName .. ")", msg}
    })
    TriggerClientEvent("add911Blip", -1, coords, callType)
end)