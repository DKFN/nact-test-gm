
local datacenter = NACT.RegisterTerritory("Datacenter", {
    zoneBounds = {
        pos = Vector(-20461.71, 4215.02, 198.15),
        radius = 7000
    },
    team = NACT_NPC_TEAMS,
    patrolRoutes = {
        frontCamp = {
            points = {
                Vector(-20417.73, 4071.38, 198.1),
                Vector(-18437.47, 3902.86, 198.1),
                Vector(-18685.67, 1708.65, 198.1),
                Vector(-20263.24, 1713.28, 198.3)
            },
            walkMethod = "circle"
        },
        frontDatacenter = {
            points = {
                Vector(-20470.18, 5574.34, 198.1),
                Vector(-18956.80, 5598.01, 198.15),
                Vector(-19032.64, 6649.92, 198.1),
                Vector(-21786.70, 6764.08, 198.15),
                Vector(-21990.64, 5685.85, 198.15)
            },
            walkMethod = "circle"
        }
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
            Vector(-17978.54, 6214.51, 228.52),
            "Datacenter",
            PatrollingNpcFrontDatacenter)

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
