Package.Require("./Map.lua")
Package.Require("./Npcs.lua")
Package.Require("./Tests.lua")
Package.Require("./Player.lua")

-- Missions
Package.Require("./Missions/TankBataillon.lua")
Package.Require("./Missions/Datacenter.lua")
Package.Require("./Missions/ZombieBunker.lua")
Package.Require("./Missions/SimpleDebug.lua")

-- Utilities
Package.Require("./SpawnZone.lua")

Console.Log("Nact Test Gamemode")

Console.RegisterCommand("noclip", function()
    local playerCharacter = Player.GetByIndex(1):GetControlledCharacter()
    if (playerCharacter) then
        playerCharacter:SetFlyingMode(not playerCharacter:GetFlyingMode())
        if (playerCharacter:GetCollision() == CollisionType.NoCollision) then
            playerCharacter:SetCollision(CollisionType.Normal)
        else
            playerCharacter:SetCollision(CollisionType.NoCollision)
        end
    end
    
end)


Package.Subscribe("Load", function()
    SpawnTankBataillonNPCs()
    SpawnDatacenterNPCs()
    SpawnZombieBunkerNPCs()
end)
