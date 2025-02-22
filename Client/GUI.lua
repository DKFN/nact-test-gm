NACT_GM_GUI = WebUI(
    "NACT GM UI",
    "file://GUI/index.html",
    WebUIVisibility.Visible
)

Events.SubscribeRemote("NACT_GM:TERRITORY:POPULATION_CHANGED", function(tPopulation)
    NACT_GM_GUI:CallEvent("UpdateTerritory", tPopulation)
end)