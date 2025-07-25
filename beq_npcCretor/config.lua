Config = {}

Config.DefaultTarget = "ox_target" -- "qb-target", "ox_target", "drawtext", "pa-target", "bt-target"

Config.NPCs = {
    {
        model = "a_m_m_business_01",
        coords = vector4(-267.0, -960.0, 31.2, 200.0),
        scenario = "WORLD_HUMAN_STAND_IMPATIENT",
        event = "npccreator:openShop"
    },
    {
        model = "a_m_y_beach_01",
        coords = vector4(-1204.0, -1560.0, 4.6, 120.0),
        scenario = "WORLD_HUMAN_SMOKING",
        event = "npccreator:startQuest"
    }
    -- İstediğin kadar ekleyebilirsin
} 