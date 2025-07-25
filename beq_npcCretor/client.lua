Citizen.CreateThread(function()
    for i, npc in ipairs(Config.NPCs) do
        RequestModel(npc.model)
        while not HasModelLoaded(npc.model) do
            Wait(10)
        end
        local ped = CreatePed(4, npc.model, npc.coords.x, npc.coords.y, npc.coords.z - 1, npc.coords.w, false, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        TaskStartScenarioInPlace(ped, npc.scenario, 0, true)
        AddTargetToNPC(ped, npc, npc.event)
    end
end)

function AddTargetToNPC(ped, npc, eventName)
    local targetType = Config.DefaultTarget
    if targetType == "ox_target" and exports["ox_target"] then
        exports["ox_target"]:addLocalEntity(ped, {
            {
                label = "Etkileşim",
                icon = "fa-solid fa-user",
                onSelect = function()
                    TriggerEvent(eventName)
                end
            }
        })
    elseif targetType == "qb-target" and exports["qb-target"] then
        exports["qb-target"]:AddTargetEntity(ped, {
            options = {
                {
                    event = eventName,
                    icon = "fas fa-user",
                    label = "Etkileşim"
                }
            },
            distance = 2.0
        })
    elseif targetType == "pa-target" and exports["pa-target"] then
        exports["pa-target"]:AddEntity(ped, {
            options = {
                {
                    event = eventName,
                    icon = "fas fa-user",
                    label = "Etkileşim"
                }
            },
            distance = 2.0
        })
    elseif targetType == "bt-target" and exports["bt-target"] then
        exports["bt-target"]:AddTargetEntity(ped, {
            options = {
                {
                    event = eventName,
                    icon = "fas fa-user",
                    label = "Etkileşim"
                }
            },
            distance = 2.0
        })
    else
        Citizen.CreateThread(function()
            while true do
                local playerCoords = GetEntityCoords(PlayerPedId())
                local dist = #(playerCoords - vector3(npc.coords.x, npc.coords.y, npc.coords.z))
                if dist < 2.0 then
                    DrawText3D(npc.coords.x, npc.coords.y, npc.coords.z + 1.0, "[E] NPC ile Etkileş")
                    if IsControlJustReleased(0, 38) then
                        TriggerEvent(eventName)
                    end
                end
                Wait(0)
            end
        end)
    end
end

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end 