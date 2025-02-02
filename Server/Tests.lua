-- This is the test file used in developpement of features of N.A.C.T. do not incldue it in production
-- It is used with TestingMap from nanos-world


NACT_TEST_SCENARIO = 4
NACT_NPC_TEAMS = 1


-- ZombieNpc:AddBehavior(NACT_Idle, {timerTime = 1000})
-- npc:SetBehaviorConfig(NACT_Patrol, {maxIdleAtPoint = 5000})
-- npc:SetBehaviorValue(NACT_Patrol, "maxIdleAtPoint", 5000)

-- tBehaviorConfig = {
--    class = NACT_Patrol,
--    config = {
--        maxIdleAtPoint = 5000
--    }
--}

Package.Subscribe("Load", function()
    Console.Log("N.A.C.T. Debug tools enabled")

    -- This is a simple test scenario on nanos world default map
    if (NACT_TEST_SCENARIO == 1) then
        local sTestZoneName = "ShedByTheSea"

        NACT.RegisterTerritory(sTestZoneName, {
            zoneBounds = {
                pos = Vector(4930.06, -6576.22, 199.34),
                radius = 7000
            },
            team = NACT_NPC_TEAMS,
            coverPoints = {
                {
                    pos = Vector(9799.259, -2928.79, 123.70),
                    stance = StanceMode.Crouching,
                    -- TODO Move from NACT_Territory when it exists
                    secure = false,
                    takenBy = nil
                },
                {
                    pos = Vector(9659.35, -2664.49, 178.55),
                    stance = StanceMode.Crouching,
                    secure = false,
                    takenBy = nil
                },
                {
                    pos = Vector(6443.207, 9828.52, 232.66),
                    stance = StanceMode.Standing,
                    secure = false,
                    takenBy = nil
                },
                {
                    pos = Vector(6579.92, -10027.65, 201.87),
                    stance = StanceMode.Standing,
                    secure = false,
                    takenBy = nil
                },
                
                {
                    pos = Vector(6427.33, -9828.09, 225.01),
                    stance = StanceMode.Standing,
                    secure = false,
                    takenBy = nil
                }
            }
        })


        local wAk47 = AK47(Vector(1035, 154, 300), Rotator())
        wAk47:SetAutoReload(false)
        local cDebugNPC = Character(Vector(6552.520, -8691.16, 467), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
        cDebugNPC:SetTeam(1)
        cDebugNPC:PickUp(wAk47)

        NACT.RegisterNpc(cDebugNPC, sTestZoneName, StillNpc)


        local wAk472 = AK47(Vector(1035, 154, 300), Rotator())
        wAk472:SetAutoReload(false)
        local cDebugNPC2 = Character(Vector(8363.520, -4661.16, 467), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
        cDebugNPC2:SetTeam(1)
        cDebugNPC2:PickUp(wAk472)

        NACT.RegisterNpc(cDebugNPC2, sTestZoneName, StillNpc)
        Console.Log("Ok")
    end

    if (NACT_TEST_SCENARIO == 3) then
        local sTestZoneName = "SolideLaMap"
        NACT_RegisterTerritory(sTestZoneName, {
            zoneBounds = {},
            patrolRoutes = {}
        })
        

        
        local wAk47 = AK47(Vector(1035, 154, 300), Rotator())
        wAk47:SetAutoReload(false)
        local cDebugNPC = Character(Vector(-3982.9, -417.69, 198), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
        cDebugNPC:SetTeam(1)
        cDebugNPC:PickUp(wAk47)

        NACT_RegisterNpc(cDebugNPC, sTestZoneName, StillNpc)

        local wAk472 = AK47(Vector(1035, 154, 300), Rotator())
        wAk472:SetAutoReload(false)
        local cDebugNPC2 = Character(Vector(-3634.6, -714.73, 198), Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
        cDebugNPC2:SetTeam(1)
        cDebugNPC2:PickUp(wAk472)

        NACT_RegisterNpc(cDebugNPC2, sTestZoneName, StillNpc)

    end
end)

Player.Subscribe("Spawn", function(player)
    --player:GetCharacter():SetTeam(1)

end)


Events.SubscribeRemote("NACT:DEBUG:SPAWN_ALLY_NPC", function(player, vLocationToSpawn)
    local wAk473 = AK47(Vector(-5136, 15071.8, 188.45), Rotator())
    wAk473:SetAutoReload(false)
    local cDebugNPC3 = Character(vLocationToSpawn, Rotator(0, 0, 0), "nanos-world::SK_Mannequin")
    cDebugNPC3:PickUp(wAk473)
    NACT.RegisterNpc(cDebugNPC3, "TankBataillonSmall", StillNpc)
end)
