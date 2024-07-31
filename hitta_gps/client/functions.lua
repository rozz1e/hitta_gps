ESX = exports["es_extended"]:getSharedObject()

function checkItem(item)
    local hasItem = ESX.SearchInventory(item, 1)
    if hasItem >= 1 then
        return true
    else
        return false
    end
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
