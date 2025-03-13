NACT_GM_GUI = WebUI(
    "NACT GM UI",
    "file://GUI/index.html",
    WebUIVisibility.Visible
)

Events.SubscribeRemote("NACT_GM:TERRITORY:POPULATION_CHANGED", function(tPopulation)
    NACT_GM_GUI:CallEvent("UpdateTerritory", tPopulation)
end)

local heatLevelsMap = {}


Events.SubscribeRemote("NACT_TEST_GM:HEAT_CHANGED", function(npcId, npcCharacter, heat)
    if (npcCharacter:IsValid()) then
        heatLevelsMap[npcId] = {
            id = npcId,
            character = npcCharacter,
            heat = heat,
            updatedAt = Client.GetTime()
        }
    end
end)

Timer.SetInterval(function()
    for k, v in pairs(heatLevelsMap) do
        if (v) then
            local projectedNpcPosition = Viewport.ProjectWorldToScreen(v.character:GetLocation() + Vector(0,0, 180))
            NACT_GM_GUI:CallEvent("UpdateHeat", ""..v.id, ""..v.heat, {
                x = projectedNpcPosition.X,
                y = projectedNpcPosition.Y
            })

            if (Client.GetTime() - v.updatedAt > 1000) then
                NACT_GM_GUI:CallEvent("UpdateHeat", k, 0, {
                    x = 0,
                    y = 0
                })
                heatLevelsMap[k] = nil
            end
        end
    end
end, 10)