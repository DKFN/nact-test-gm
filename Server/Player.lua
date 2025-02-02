local function SpawnPlayer(player)
    local spawnedCharacter = Character(
        Vector(-16029.39, 16260.68, 300),
        Rotator(),
        "nanos-world::SK_ClassicMale"
    )

    local AK47 = AK47(Vector(1035, 154, 300), Rotator())

    spawnedCharacter:PickUp(AK47)

    player:Possess(spawnedCharacter)
end

Player.Subscribe("Ready", SpawnPlayer)

Package.Subscribe("Load", function()
    for k, v in pairs(Player.GetAll()) do
        SpawnPlayer(v)
    end
end)