local testNactIntro = TextRender(
    Vector(-10.98, 1050, -685.7),
    Rotator(0, 90, 0),
    "N.A.C.T. Demo",
    Vector(1, 1, 1),
    Color.GREEN
)

local testNactIntro = TextRender(
    Vector(-10.98, 1050, -720),
    Rotator(0, 90, 0),
    "v0.1.0 Alpha",
    Vector(0.4, 0.4, 0.4),
    Color.GREEN
)

local textTankBataillon = TextRender(
    Vector(220, 1071.61, -920),
    Rotator(0, 90, 0),
    "Tank Bataillon",
    Vector(0.4, 0.4, 0.4),
    Color.GREEN
)

local triggerTankBataillon = Trigger(
    Vector(140, 1071.96, -950),
    Rotator(0, 90, 0),
    Vector(50, 100, 200),
    TriggerType.Box,
    false,
    Color.GREEN
)
triggerTankBataillon:SetOverlapOnlyClasses({"Character"})

function sendTerritoryInfo(player, sTerritoryName)
    local maybeTerritory = NACT_Territory.FindByName(sTerritoryName)
    if (maybeTerritory) then
        local territoryEnemies = maybeTerritory:GetEnemiesInZone()
        local territoryAllies = maybeTerritory:GetAlliesInZone()
        Events.CallRemote("NACT_GM:TERRITORY:POPULATION_CHANGED", player, {
            allies = #territoryEnemies,
            enemies = #territoryAllies
        })
    end
end

triggerTankBataillon:Subscribe("BeginOverlap", function(_, entered)
    entered:SetLocation(Vector(-3699.55, 8502.82, 198.14))
    entered:SetRotation(Rotator(0, 90, 0))
    sendTerritoryInfo(entered:GetPlayer(), "TankBataillonSmall")
end)

local textDatacenter = TextRender(
    Vector(-135, 1072, -920),
    Rotator(0, 90, 0),
    "Datacenter",
    Vector(0.4, 0.4, 0.4),
    Color.ORANGE
)

local triggerDatacenter= Trigger(
    Vector(-205, 1071.96, -950),
    Rotator(0, 90, 0),
    Vector(50, 100, 200),
    TriggerType.Box,
    false,
    Color.GREEN
)
triggerDatacenter:SetOverlapOnlyClasses({"Character"})

triggerDatacenter:Subscribe("BeginOverlap", function(_, entered)
    entered:SetLocation(Vector(-21741.14, -1807, 198.14))
    entered:SetRotation(Rotator(0, 90, 0))
    sendTerritoryInfo(entered:GetPlayer(), "Datacenter")
end)

local textZombieCave = TextRender(
    Vector(-440, 1072, -920),
    Rotator(0, 90, 0),
    "Zombie Cave",
    Vector(0.4, 0.4, 0.4),
    Color.RED
)


local triggerZombieCave = Trigger(
    Vector(-516, 1071.96, -950),
    Rotator(0, 90, 0),
    Vector(50, 100, 200),
    TriggerType.Box,
    false,
    Color.GREEN
)
triggerZombieCave:SetOverlapOnlyClasses({"Character"})

triggerZombieCave:Subscribe("BeginOverlap", function(_, entered)
    entered:SetLocation(Vector(-15628, 17115, 242))
    entered:SetRotation(Rotator(0, 90, 0))
    sendTerritoryInfo(entered:GetPlayer(), "ZombieBunker")
end)
