
StillNpc = {behaviors = {
    { class = NACT_Idle },
    { class = NACT_Detection},
    { class = NACT_Alert},
    { class = NACT_Combat},
    { class = NACT_Engage},
    { class = NACT_Seek},
    { class = NACT_Cover},
}}
PatrollingNpc = {behaviors = {
    { class = NACT_Idle },
    { class = NACT_Patrol},
    { class = NACT_Alert},
    { class = NACT_Combat},
    { class = NACT_Engage},
    { class = NACT_Seek},
    { class = NACT_Cover},
}}


PatrollingNpcGatefront = {behaviors = {
    { class = NACT_Idle },
    { class = NACT_Patrol, config = {
        patrolPath = "gateFront"
    }},
    { class = NACT_Alert},
    { class = NACT_Combat},
    { class = NACT_Engage},
    { class = NACT_Seek},
    { class = NACT_Cover},
}}


PatrollingNpcFrontCamp = {behaviors = {
    { class = NACT_Idle },
    { class = NACT_Patrol, config = {
        patrolPath = "frontCamp",
        waitForMin = 2000,
        waitForMax = 2000
    }},
    { class = NACT_Alert},
    { class = NACT_Combat},
    { class = NACT_Engage},
    { class = NACT_Seek},
    { class = NACT_Cover},
}}

PatrollingNpcFrontDatacenter = {behaviors = {
    { class = NACT_Idle },
    { class = NACT_Patrol, config = {
        patrolPath = "frontDatacenter",
        waitForMin = 2000,
        waitForMax = 2000
    }},
    { class = NACT_Alert},
    { class = NACT_Combat},
    { class = NACT_Engage},
    { class = NACT_Seek},
    { class = NACT_Cover},
}}

PatrollingNpcAroundDatacenter = {behaviors = {
    { class = NACT_Idle },
    { class = NACT_Patrol, config = {
        patrolPath = "AroundDC",
        waitForMin = 2000,
        waitForMax = 2000
    }},
    { class = NACT_Alert},
    { class = NACT_Combat},
    { class = NACT_Engage},
    { class = NACT_Seek},
    { class = NACT_Cover},
}}

ZombieNpc = {
    behaviors = {
        { class = NACT_Idle },
        { class = NACT_Detection, config = {
            heatIncrement = 99
        }},
        { class = NACT_ZombieMelee }
    },
    triggers = { melee = true, closeProximity = true, detection = true },
    lookAroundThrottle = 100,
    autoVision = false,
    visionAngle = 0 -- TODO: This is more a dead zone than a vision angle
}

function createZombieNPC(vInitialPosition, sNpcTerritory, tNpcConfig, tMaybeYaw)
    -- TODO: Creating the weapon is a bit hacky
    local fistLike = Melee(
        Vector(),
        Rotator(),
        "nanos-world::SM_Crowbar_01",
        CollisionType.Normal,
        true,
        HandlingMode.SingleHandedWeapon
    )

    fistLike:SetScale(Vector(1, 1, 1))
    fistLike:AddAnimationCharacterUse("nanos-world::AM_Mannequin_Melee_Slash_Attack")
    fistLike:SetCooldown(0.5)
    fistLike:SetBaseDamage(20)
    
    local cZombie = Character(vInitialPosition, Rotator(0, NACT.ValueOrDefault(tMaybeYaw, 0), 0), "nanos-world::SK_Mannequin")
    cZombie:PickUp(fistLike)
    cZombie:SetTeam(NACT_NPC_TEAMS)
    cZombie:SetSpeedMultiplier(1.1)
    cZombie:SetHealth(250)
    -- Console.Log("Behavi"..NanosTable.Dump(tNpcConfig))
    return NACT.RegisterNpc(cZombie, sNpcTerritory, tNpcConfig)
end

function createNpc(vInitialPosition, sNpcTerritory, tNpcConfig, tMaybeYaw)
    local wAk4715 = AK47(Vector(6931.17, 11625.8, 198.14), Rotator())
    wAk4715:SetAutoReload(false)
    local cDebugNPC15 = Character(vInitialPosition, Rotator(0, NACT.ValueOrDefault(tMaybeYaw, 0), 0), "nanos-world::SK_Mannequin")
    cDebugNPC15:PickUp(wAk4715)
    cDebugNPC15:SetTeam(NACT_NPC_TEAMS)
    return NACT.RegisterNpc(cDebugNPC15, sNpcTerritory, tNpcConfig)
end

Character.Subscribe("Death", function(character)
    local maybeNactNPC = NACT_NPC.GetFromCharacter(character)
    if (maybeNactNPC) then
        local territoryAllies = maybeNactNPC.territory:GetAlliesInZone()
        local territoryEnemies = maybeNactNPC.territory:GetEnemiesInZone()
        if (#territoryAllies == 0) then
            local territoryName = maybeNactNPC.territory.name
            Chat.BroadcastMessage("Well done, territory "..maybeNactNPC.territory.name.." is cleaned !!")
            Chat.BroadcastMessage("Reseting territory in 5s")
            Timer.SetTimeout(function()

                for k, v in ipairs(territoryEnemies) do
                    v:SetHealth(0)
                end

                if (territoryName == "TankBataillonSmall") then
                    SpawnTankBataillonNPCs()
                end

                if (territoryName == "ZombieBunker") then
                    SpawnZombieBunkerNPCs()
                end

                if (territoryName == "Datacenter") then
                    SpawnDatacenterNPCs()
                end
            end, 5000)
        end

        for k, enemy in ipairs(territoryEnemies) do
            local maybePlayerOfTerritory = enemy:GetPlayer()
            if (maybePlayerOfTerritory and maybePlayerOfTerritory:IsValid()) then
                Events.CallRemote("NACT_GM:TERRITORY:POPULATION_CHANGED", maybePlayerOfTerritory, {
                    allies = #territoryEnemies,
                    enemies = #territoryAllies
                })
            end
        end
    end
end)


Events.Subscribe("NACT_Detection:HEAT_CHANGED", function (npcID, heat, target)
    local maybeNpc = NACT_NPC.GetByID(npcID)
    if (maybeNpc) then
        Events.BroadcastRemote("NACT_TEST_GM:HEAT_CHANGED", npcID, maybeNpc.character, heat)
    end
end)
