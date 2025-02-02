Player.Subscribe("Possess", function()
    Chat.AddMessage("NACT Test Gamemode.")
    Chat.AddMessage("Commands : ")
    Chat.AddMessage("/fly Flyyyy !!! :D")
    Chat.AddMessage("Missions : ")
    Chat.AddMessage("/tank  Tank Bataillon mission (easy)")
    Chat.AddMessage("/aws  Jeff Bezos datacenter mission (medium)")
    Chat.AddMessage("/zombies  Zombies mission")
end)

Chat.Subscribe("PlayerSubmit", function(message, player)
    local cPlayerChar = player:GetControlledCharacter()
    if (message == "/aws" and cPlayerChar) then
        cPlayerChar:SetLocation(Vector(-15629.69, 16093.48, 198))
    end
    if (message == "/zombies" and cPlayerChar) then
        cPlayerChar:SetLocation(Vector(-15629.69, 16093.48, 198))
    end
end)