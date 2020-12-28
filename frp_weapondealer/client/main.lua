RSCore = nil
CurrentCops = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if RSCore == nil then
            TriggerEvent('RSCore:GetObject', function(obj) RSCore = obj end)
            Citizen.Wait(200)
        end
    end
end)

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

-- Code

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    GunBlip = AddBlipForCoord(Config.Locations["npc"]["x"], Config.Locations["npc"]["y"], Config.Locations["npc"]["z"])

    SetBlipSprite (GunBlip, 66)
    SetBlipDisplay(GunBlip, 4)
    SetBlipScale  (GunBlip, 0.6)
    SetBlipAsShortRange(GunBlip, true)
    SetBlipColour(GunBlip, 1)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Bogdan")
    EndTextCommandSetBlipName(GunBlip)
end)



Citizen.CreateThread(function()
    GunBlip = AddBlipForCoord(Config.Locations["npc2"]["x"], Config.Locations["npc2"]["y"], Config.Locations["npc2"]["z"])

    SetBlipSprite (GunBlip, 66)
    SetBlipDisplay(GunBlip, 4)
    SetBlipScale  (GunBlip, 0.6)
    SetBlipAsShortRange(GunBlip, true)
    SetBlipColour(GunBlip, 1)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Orov")
    EndTextCommandSetBlipName(GunBlip)
end)