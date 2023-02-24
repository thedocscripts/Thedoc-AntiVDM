

RegisterNetEvent("baseevents:onPlayerKilled")
AddEventHandler("baseevents:onPlayerKilled", function (killer, death)
    Wait(1000)
    local killersss = GetPedSourceOfDeath(PlayerPedId())
    local killerids = NetworkGetPlayerIndexFromPed(GetPedInVehicleSeat(killersss, -1))
    if(death.killerinveh)then
        RevivePlayer()
        PunishPlayer(killerids)
    end
end)

RegisterNetEvent('th-antivdm:notifyclient')
AddEventHandler('th-antivdm:notifyclient', function ()
    notify(config.killernotify, "info", 3000)
end)
