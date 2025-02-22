local sTerritoryName = "ZombieBunker"

NACT.RegisterTerritory(sTerritoryName, {
    zoneBounds = {
        pos = Vector(-18200.91, 21914.78, 600),
        radius = 6000
    },
    team = NACT_NPC_TEAMS
})


function SpawnZombieBunkerNPCs()
    -- First Room

    createZombieNPC(
        Vector(-14990.70, 18716, 209),
        sTerritoryName,
        ZombieNpc,
        138
    )

    createZombieNPC(
        Vector(-14899.48, 19165.24, 209.60),
        sTerritoryName,
        ZombieNpc,
        -171
    )

    createZombieNPC(
        Vector(-15140.44, 19413, 209),
        sTerritoryName,
        ZombieNpc,
        -86
    )

    createZombieNPC(
        Vector(-15062.57, 18959.13, 209),
        sTerritoryName,
        ZombieNpc,
        160
    )

    createZombieNPC(
        Vector(-14989.81, 19438.36, 209),
        sTerritoryName,
        ZombieNpc,
        -93
    )

    -- Office room
    createZombieNPC(
        Vector(-14266.38, 21126.99, 229),
        sTerritoryName,
        ZombieNpc,
        160
    )

    createZombieNPC(
        Vector(-14263, 20973, 229),
        sTerritoryName,
        ZombieNpc,
        160
    )

    createZombieNPC(
        Vector(-14457, 21027.36, 229),
        sTerritoryName,
        ZombieNpc,
        160
    )

    createZombieNPC(
        Vector(-14596.7, 21117.55, 229),
        sTerritoryName,
        ZombieNpc,
        160
    )


    createZombieNPC(
        Vector(-14596.7, 21117.55, 229),
        sTerritoryName,
        ZombieNpc,
        160
    )

    createZombieNPC(
        Vector(-14636.77, 20985.44, 229),
        sTerritoryName,
        ZombieNpc,
        160
    )

    createZombieNPC(
        Vector(-14299.61, 21350.77, 229),
        sTerritoryName,
        ZombieNpc,
        -122
    )

    createZombieNPC(
        Vector(-14377.88, 21437, 229),
        sTerritoryName,
        ZombieNpc,
        -122
    )

    createZombieNPC(
        Vector(-14429.78, 21323, 229),
        sTerritoryName,
        ZombieNpc,
        -122
    )

    createZombieNPC(
        Vector(-14613.25, 21323, 229),
        sTerritoryName,
        ZombieNpc,
        -122
    )

    createZombieNPC(
        Vector(-14654.45, 21437, 229),
        sTerritoryName,
        ZombieNpc,
        -122
    )

    createZombieNPC(
        Vector(-15294.82, 21377.77, 237),
        sTerritoryName,
        ZombieNpc,
        0
    )

    -- Executive office NPCs

    local zombieFastBoi1 = createZombieNPC(
        Vector(-16430.83, 22163.95, 420),
        sTerritoryName,
        ZombieNpc,
        -90
    )

    zombieFastBoi1.character:SetSpeedMultiplier(2.0)
    zombieFastBoi1.character:SetHealth(400)
    zombieFastBoi1.character:SetMesh("nanos-world::SK_Male")


    local zombieFastBoi2 = createZombieNPC(
        Vector(-16920.40, 22094.35, 420),
        sTerritoryName,
        ZombieNpc,
        -20
    )

    zombieFastBoi2.character:SetSpeedMultiplier(2.0)
    zombieFastBoi2.character:SetHealth(400)
    zombieFastBoi2.character:SetMesh("nanos-world::SK_Male")

    createZombieNPC(
        Vector(-17081.1, 22128.28, 420),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-17081.1, 22128.28, 420),
        sTerritoryName,
        ZombieNpc,
        0
    )

    -- Breakroom mayhem

    createZombieNPC(
        Vector(-19153.75, 21216.34, 570),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-19186.11, 20810.9, 570),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-19152, 20411, 570),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-19106, 20046, 570),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-19093, 19765, 570),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-19186.11, 20810.9, 570),
        sTerritoryName,
        ZombieNpc,
        0
    )

    createZombieNPC(
        Vector(-18681, 19592.50, 540),
        sTerritoryName,
        ZombieNpc,
        0
    )
    -- Chiottes surprise

    local zombieFastBoi3 = createZombieNPC(
        Vector(-17207, 19584, 570),
        sTerritoryName,
        ZombieNpc,
        -130
    )

    zombieFastBoi3.character:SetSpeedMultiplier(2.0)
    zombieFastBoi3.character:SetHealth(400)
    zombieFastBoi3.character:SetMesh("nanos-world::SK_Male")


    local zombieFastBoi4 = createZombieNPC(
        Vector(-16912.40, 19562, 570),
        sTerritoryName,
        ZombieNpc,
        -20
    )

    zombieFastBoi4.character:SetSpeedMultiplier(2.0)
    zombieFastBoi4.character:SetHealth(400)
    zombieFastBoi4.character:SetMesh("nanos-world::SK_Male")

    --- Storage good luck! :)

    createZombieNPC(
        Vector(-20575.25, 21442, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20594.43, 21203.20, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20743, 21024, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20824.9, 21227, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20845.24, 21417, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-21090, 21243, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-21150, 21074, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-21347.30, 21409.5, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20562.77, 20585, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20565, 20281, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20593, 20103, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20814, 20129, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20823, 20387, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )


    createZombieNPC(
        Vector(-20790, 20644, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20996.43, 20664, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )

    createZombieNPC(
        Vector(-20995.3, 20389, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )


    createZombieNPC(
        Vector(-20985.12, 20164.08, 233),
        sTerritoryName,
        ZombieNpc,
        180
    )



    local zombieBigBoi = createZombieNPC(
        Vector(-21222, 19690, 233),
        sTerritoryName,
        ZombieNpc,
        -20
    )

    zombieBigBoi.character:SetSpeedMultiplier(2.0)
    zombieBigBoi.character:SetHealth(4000)
    zombieBigBoi.character:SetMesh("nanos-world::SK_PostApocalyptic")
    zombieBigBoi.character:SetSpeedMultiplier(0.8)

    local zombieBigBoiWpn = zombieBigBoi.character:GetPicked()
    if (zombieBigBoiWpn) then
        zombieBigBoiWpn:SetBaseDamage(40)
        zombieBigBoiWpn:SetCooldown(2.0)
    end
end