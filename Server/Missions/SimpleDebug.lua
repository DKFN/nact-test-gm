local simpleDebug = NACT.RegisterTerritory("SimpleDebug", {
    zoneBounds = {
        pos = Vector(-3000, 697, 200),
        radius = 3000
    },
    team = NACT_NPC_TEAMS
})

local wAk472 = AK47(Vector(3350.32, 9236.51, 188.45), Rotator())
wAk472:SetAutoReload(false)
local cDebugNPC2 = Character(Vector(-3000, 697, 200), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
cDebugNPC2:PickUp(wAk472)
cDebugNPC2:SetTeam(NACT_NPC_TEAMS)
NACT.RegisterNpc(cDebugNPC2, "SimpleDebug", NACT.Defaults.Millitary.Soldier)


