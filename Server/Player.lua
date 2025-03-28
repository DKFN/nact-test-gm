local function SpawnPlayer(player)
    local spawnedCharacter = Character(
        Vector(-193.14, 512, -964),
        Rotator(0, 90, 0),
        "nanos-world::SK_ClassicMale"
    )

    local AK47 = AK47(Vector(1035, 154, 300), Rotator())

    spawnedCharacter:PickUp(AK47)

    if (player and player:IsValid()) then
        player:Possess(spawnedCharacter)
        spawnedCharacter:SetHealth(500)
        -- spawnedCharacter:SetHealth(500000)
    else
        AK47:Destroy()
        spawnedCharacter:Destroy()
    end
    
end

Player.Subscribe("Ready", SpawnPlayer)

Package.Subscribe("Load", function()
    for k, v in pairs(Player.GetAll()) do
        SpawnPlayer(v)
    end
end)

Character.Subscribe("Death", function(character)
    local maybePlayerCharacter = character:GetPlayer()
    Console.Log("Player death : "..NanosTable.Dump(maybePlayerCharacter))
    if (maybePlayerCharacter and maybePlayerCharacter:IsValid()) then
        Timer.SetTimeout(function()
            SpawnPlayer(maybePlayerCharacter)
        end, 2000)
    end
    local charWeapon = character:GetPicked()
    Timer.SetTimeout(function()
        if (charWeapon) then
            charWeapon:Destroy()
        end
        if (character:IsValid()) then
            character:Destroy()
        end
    end, 2000)
    
end)

Player.Subscribe("Destroy", function(player)
    local cPlayerChar = player:GetControlledCharacter()
    if (cPlayerChar) then
        cPlayerChar:Destroy()
    end
end)