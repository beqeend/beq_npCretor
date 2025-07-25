RegisterNetEvent("beqeend1")
AddEventHandler("beqeend1", function()
    TriggerClientEvent("chat:addMessage", source, { args = { "NPC", "Shop açıldı!" } })
end)

RegisterNetEvent("beqeend2")
AddEventHandler("beqeend2", function()
    TriggerClientEvent("chat:addMessage", source, { args = { "NPC", "Görev başladı!" } })
end) 