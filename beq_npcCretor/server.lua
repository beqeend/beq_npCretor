RegisterNetEvent("npccreator:openShop")
AddEventHandler("npccreator:openShop", function()
    TriggerClientEvent("chat:addMessage", source, { args = { "NPC", "Shop açıldı!" } })
end)

RegisterNetEvent("npccreator:startQuest")
AddEventHandler("npccreator:startQuest", function()
    TriggerClientEvent("chat:addMessage", source, { args = { "NPC", "Görev başladı!" } })
end) 