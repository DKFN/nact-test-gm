local bigEnemyCamp = NACT.RegisterTerritory("TankBataillonSmall", {
    zoneBounds = {
        pos = Vector(-4942.06, 15364.73, 338.15),
        radius = 7000
    },
    team = NACT_NPC_TEAMS,
    patrolRoutes = {
        gateFront = NACT_GENERATED.patrolRoutes.TankBataillonFront
    }
})

function SpawnTankBataillonNPCs()
    -- if (false) then 
    local wAk47 = AK47(Vector(3350.32, 9236.51, 188.45), Rotator())
    wAk47:SetAutoReload(false)
    local cDebugNPC = Character(Vector(-6246.35, 13107.7, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC:PickUp(wAk47)
    cDebugNPC:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC, "TankBataillonSmall", PatrollingNpcGatefront)
    -- end

    local wAk472 = AK47(Vector(3350.32, 9236.51, 188.45), Rotator())
    wAk472:SetAutoReload(false)
    local cDebugNPC2 = Character(Vector(-3890.89, 14194.73, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC2:PickUp(wAk472)
    cDebugNPC2:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC2, "TankBataillonSmall", StillNpc)

    -- if (false) then 
    local wAk473 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk473:SetAutoReload(false)
    local cDebugNPC3 = Character(Vector(-5136, 15071.8, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC3:PickUp(wAk473)
    cDebugNPC3:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC3, "TankBataillonSmall", StillNpc)

    local wAk474 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk474:SetAutoReload(false)
    local cDebugNPC4 = Character(Vector(-7563.89, 14397.17, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC4:PickUp(wAk474)
    cDebugNPC4:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC4, "TankBataillonSmall", StillNpc)



    local wAk475 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk475:SetAutoReload(false)
    local cDebugNPC5 = Character(Vector(-7040.63, 14560.22, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC5:PickUp(wAk475)
    cDebugNPC5:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC5, "TankBataillonSmall", StillNpc)


    local wAk476 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk476:SetAutoReload(false)
    local cDebugNPC6 = Character(Vector(-6894.24, 15736.28, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC6:PickUp(wAk476)
    cDebugNPC6:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC6, "TankBataillonSmall", StillNpc)


    local wAk477 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk477:SetAutoReload(false)
    local cDebugNPC7 = Character(Vector(-5777.03, 16448.89, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC7:PickUp(wAk477)
    cDebugNPC7:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC7, "TankBataillonSmall", StillNpc)


    local wAk478 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk478:SetAutoReload(false)
    local cDebugNPC8 = Character(Vector(-5099.22, 17197.28, 256.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC8:PickUp(wAk478)
    cDebugNPC8:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC8, "TankBataillonSmall", StillNpc)


    local wAk479 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk479:SetAutoReload(false)
    local cDebugNPC9 = Character(Vector(-4245.41, 17259.10, 288.1), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC9:PickUp(wAk479)
    cDebugNPC9:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC9, "TankBataillonSmall", StillNpc)

    local wAk4710 = AK47(Vector(-4703.67, 11625.8, 198.14), Rotator())
    wAk4710:SetAutoReload(false)
    local cDebugNPC10 = Character(Vector(-4703.67, 11625.8, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC10:PickUp(wAk4710)
    cDebugNPC10:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC10, "TankBataillonSmall", StillNpc)


    local wAk4711 = AK47(Vector(-4703.67, 11625.8, 198.14), Rotator())
    wAk4711:SetAutoReload(false)
    local cDebugNPC11 = Character(Vector(-6291.85, 11901.37, 198.15), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC11:PickUp(wAk4711)
    cDebugNPC11:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC11, "TankBataillonSmall", StillNpc)


    local wAk4712 = AK47(Vector(6931.17, 11625.8, 198.14), Rotator())
    wAk4712:SetAutoReload(false)
    local cDebugNPC12 = Character(Vector(-6931.17, 13029.47, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC12:PickUp(wAk4712)
    cDebugNPC12:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC12, "TankBataillonSmall", StillNpc)

    local wAk4713 = AK47(Vector(6931.17, 11625.8, 198.14), Rotator())
    wAk4713:SetAutoReload(false)
    local cDebugNPC13 = Character(Vector(-7257.26, 11606.09, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC13:PickUp(wAk4713)
    cDebugNPC13:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC13, "TankBataillonSmall", StillNpc)


    local wAk4714 = AK47(Vector(6931.17, 11625.8, 198.14), Rotator())
    wAk4714:SetAutoReload(false)
    local cDebugNPC14 = Character(Vector(-4309.89, 10443.71, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC14:PickUp(wAk4714)
    cDebugNPC14:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC14, "TankBataillonSmall", StillNpc)


    local wAk4715 = AK47(Vector(6931.17, 11625.8, 198.14), Rotator())
    wAk4715:SetAutoReload(false)
    local cDebugNPC15 = Character(Vector(-3097.35, 11408.16, 198.14), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC15:PickUp(wAk4715)
    cDebugNPC15:SetTeam(NACT_NPC_TEAMS)
    NACT.RegisterNpc(cDebugNPC15, "TankBataillonSmall", StillNpc)
    -- end
end



