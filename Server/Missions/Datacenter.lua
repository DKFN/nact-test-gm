
local datacenter = NACT.RegisterTerritory("Datacenter", {
    zoneBounds = {
        pos = Vector(-20461.71, 4215.02, 198.15),
        radius = 7000
    },
    team = 1, --NACT_NPC_TEAMS,
    patrolRoutes = {
        frontCamp = NACT_GENERATED.patrolRoutes.DCEntrance,
        frontDatacenter = NACT_GENERATED.patrolRoutes.FrontDC1,
        AroundDC = NACT_GENERATED.patrolRoutes.AroundDC
    }
})


function SpawnDatacenterNPCs()

    -- Front camp still

    createNpc(
        Vector(-19422.69, 732, 209.11),
        "Datacenter",
        StillNpc,
        32
    )

    createNpc(
        Vector(-19428.62, 1045.73, 198),
        "Datacenter",
        StillNpc,
        32
    )


    createNpc(
        Vector(-19150.44, 994.46, 198),
        "Datacenter",
        StillNpc,
        180
    )
    -- Front of the camp patrol 
    createNpc(
        Vector(-20572, 3381, 198.14),
        "Datacenter",
        PatrollingNpcFrontCamp)

    createNpc(
        Vector(-20782.60, 3271.27, 198.14),
        "Datacenter",
        PatrollingNpcFrontCamp)

    createNpc(
        Vector(-20828.22, 3450.78, 198.14),
        "Datacenter",
        PatrollingNpcFrontCamp)

    createNpc(
        Vector(-21068.89, 3353.80, 198.14),
        "Datacenter",
        PatrollingNpcFrontCamp)

        
    createNpc(
        Vector(-21034.03, 3497.95, 198.14),
        "Datacenter",
        PatrollingNpcFrontCamp)

    -- Front datacenter patrol

    createNpc(
        Vector(-22220, 5713.35, 198.14),
        "Datacenter",
        PatrollingNpcFrontDatacenter)

    createNpc(
        Vector(-22201, 5982.13, 198.14),
        "Datacenter",
        PatrollingNpcFrontDatacenter)

    createNpc(
        Vector(-22201, 6223.13, 198.14),
        "Datacenter",
        PatrollingNpcFrontDatacenter)

    createNpc(
        Vector(-22521.72, 5587.45, 201),
        "Datacenter",
        PatrollingNpcFrontDatacenter)
    createNpc(
        Vector(-22534.61, 5885.02, 208),
        "Datacenter",
        PatrollingNpcFrontDatacenter)

        
    createNpc(
        Vector(-18285.59, 5708.36, 201),
        "Datacenter",
        PatrollingNpcFrontDatacenter)
        
    createNpc(
        Vector(-18274.88, 6127.55, 198),
        "Datacenter",
        PatrollingNpcFrontDatacenter)

    createNpc(
        Vector(-21398.53, 6624.76, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)
        
    createNpc(
        Vector(-21836.05, 6792.04, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)

    createNpc(
        Vector(-21999.11, 6085.2, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)

    createNpc(
        Vector(-22040.2, 7969, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)

    createNpc(
        Vector(-22061.45, 8946.75, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)
        
    createNpc(
        Vector(-21306, 9036, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)

        
    createNpc(
        Vector(-20993, 9572.3, 198.2),
        "Datacenter",
        PatrollingNpcAroundDatacenter)
    -- Inside barracks

    createNpc(
        Vector(-20820.94, 2096, 262.15),
        "Datacenter",
        StillNpc,
        -51
    )


    createNpc(
        Vector(-20710.91, 2498.84, 262.15),
        "Datacenter",
        StillNpc,
        136
    )


    createNpc(
        Vector(-21147.08, 2524.08, 262.15),
        "Datacenter",
        StillNpc,
        -29
    )


    createNpc(
        Vector(-21891.32, 2173.25, 262.15),
        "Datacenter",
        StillNpc,
        122
    )

    createNpc(
        Vector(-22360.21, 2600.15, 198.12),
        "Datacenter",
        StillNpc,
        122
    )

    createNpc(
        Vector(-20137.31, 2500, 262.15),
        "Datacenter",
        StillNpc
    )

    createNpc(
        Vector(-19733.85, 2487, 262.15),
        "Datacenter",
        StillNpc,
        160
    )

    createNpc(
        Vector(-19401.52, 2093, 262.15),
        "Datacenter",
        StillNpc,
        100
    )

    createNpc(
        Vector(-19132.30, 2530.75, 262.15),
        "Datacenter",
        StillNpc
    )


    createNpc(
        Vector(-18635.43, 2500, 262.15),
        "Datacenter",
        StillNpc,
        160
    )

    createNpc(
        Vector(-18921.44, 4885.45, 262.15),
        "Datacenter",
        StillNpc,
        160
    )

    createNpc(
        Vector(-19184.24, 4624.71, 262.15),
        "Datacenter",
        StillNpc,
        100
    )

    createNpc(
        Vector(-19381.06, 4840.34, 262.15),
        "Datacenter",
        StillNpc
    )


    createNpc(
        Vector(-18417.34, 4867.61, 262.15),
        "Datacenter",
        StillNpc,
        180
    )

    createNpc(
        Vector(-18647.91, 4586, 262.15),
        "Datacenter",
        StillNpc,
        180
    )

    createNpc(
        Vector(-18646.53, 5070.16, 262.15),
        "Datacenter",
        StillNpc,
        180
    )

    createNpc(
        Vector(-21468.96, 5054.09, 262.15),
        "Datacenter",
        StillNpc,
        -100
    )
    createNpc(
        Vector(-21637.05, 5016.84, 262.15),
        "Datacenter",
        StillNpc,
        -100
    )
    createNpc(
        Vector(-21839.53, 5027.27, 262.15),
        "Datacenter",
        StillNpc,
        -100
    )

    createNpc(
        Vector(-21835.30, 4835.48, 262.15),
        "Datacenter",
        StillNpc,
        100
    )
    createNpc(
        Vector(-21516.70, 4799.38, 262.15),
        "Datacenter",
        StillNpc,
        100
    )

    local jeffBezos = createNpc(
        Vector(-20486.08, 7139.81, 763.14),
        "Datacenter",
        StillNpc,
        100
    )

    jeffBezos.character:SetHealth(4000)
    -- jeffBezos.character:SetScale(Vector(2,2, 2))
    jeffBezos.character:SetSpeedMultiplier(2)
    jeffBezos.character:SetFootstepVolumeMultiplier(20)
    jeffBezos.character:SetMesh("nanos-world::SK_PostApocalyptic")
    -- jeffBezos.character:SetTeam(3)
    -- jeffBezos.character:SetHighlightEnabled(true)
end
