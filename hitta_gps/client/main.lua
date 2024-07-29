CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)
        local class = GetVehicleClass(vehicle)
        local IsLoaded = ESX.IsPlayerLoaded()
        local sleep = 1200

        if IsLoaded then
            if hasItem(Config.Item) then
                enableGPS()
            else
                disableGPS()
                aboveRadarNotf()
            end

            if Config.Vehicles.cars then
                if IsPedInAnyVehicle(ped, false) then
                    if (class >= 0 and class <= 7) or (class >= 9 and class <= 12) or (class >= 17 and class <= 20) then
                        enableGPS()
                    end
                end
            end

            if Config.Vehicles.bicycles then
                if IsPedInAnyVehicle(ped, false) then
                    if (class == 13) then
                        enableGPS()
                    end
                end
            end

            if Config.Vehicles.motorcycles then
                if IsPedInAnyVehicle(ped, false) then
                    if (class == 8) then
                        enableGPS()
                    end
                end
            end

        end

        Wait(sleep)
    end
end)

