
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

ZombieNpc = {
    behaviors = {
    { class = NACT_Idle },
    { class = NACT_Detection, config = {
        heatIncrement = 99
    }},
    { class = NACT_Melee }
    },
    lookAroundThrottle = 100
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
    Console.Log("Behavi"..NanosTable.Dump(tNpcConfig))
    return NACT.RegisterNpc(cZombie, sNpcTerritory, tNpcConfig)
end

function createNpc(vInitialPosition, sNpcTerritory, tNpcConfig, tMaybeYaw)
    local wAk4715 = AK47(Vector(6931.17, 11625.8, 198.14), Rotator())
    wAk4715:SetAutoReload(false)
    local cDebugNPC15 = Character(vInitialPosition, Rotator(0, NACT.ValueOrDefault(tMaybeYaw, 0), 0), "nanos-world::SK_Mannequin")
    cDebugNPC15:PickUp(wAk4715)
    cDebugNPC15:SetTeam(NACT_NPC_TEAMS)
    Console.Log("Jeff bezos "..NanosTable.Dump(cDebugNPC15))
    return NACT.RegisterNpc(cDebugNPC15, sNpcTerritory, tNpcConfig)
end
