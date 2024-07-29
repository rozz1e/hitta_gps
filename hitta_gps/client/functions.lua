ESX = exports["es_extended"]:getSharedObject()

hasItem = function(itemName)
    local inventory = ESX.GetPlayerData().inventory
    for i = 1, #inventory do
        if inventory[i].name == itemName and inventory[i].count > 0 then
            return true
        end
    end
    return false
end

enableGPS = function(gps)
    DisplayRadar(true)
end

disableGPS = function(gps)
    DisplayRadar(false)
end

aboveRadarNotf = function(notification)
    ThefeedHideThisFrame()
end