Chat.Subscribe("PlayerSubmit", function(message, player)
    local cPlayerChar = player:GetControlledCharacter()
    if (message == "/aws" and cPlayerChar) then
        cPlayerChar:SetLocation(Vector(-15629.69, 16093.48, 198))
    end
    if (message == "/zombies" and cPlayerChar) then
        cPlayerChar:SetLocation(Vector(-15629.69, 16093.48, 198))
    end
end)

Client.Subscribe("SpawnLocalPlayer", function(player)
    player:Subscribe("Possess", function(player, character)
        character:Subscribe("Fire", function(character, weapon)
            NACT_GM_GUI:CallEvent("UpdateAmmo", weapon:GetAmmoClip(), weapon:GetAmmoBag())
        end)
        character:Subscribe("Reload", function(character, weapon)
            NACT_GM_GUI:CallEvent("UpdateAmmo", weapon:GetAmmoClip(), weapon:GetAmmoBag())
        end)
        character:Subscribe("PickUp", function(character, weapon)
            NACT_GM_GUI:CallEvent("UpdateAmmo", weapon:GetAmmoClip(), weapon:GetAmmoBag())
        end)
        
        character:Subscribe("TakeDamage", function(character, damage)
            NACT_GM_GUI:CallEvent("UpdateHealth", math.max(character:GetHealth() - damage, 0))
        end)
        NACT_GM_GUI:CallEvent("UpdateHealth", character:GetHealth(), 0)
    end)
end)