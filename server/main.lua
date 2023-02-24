
RegisterNetEvent('th-antivdm:ban')
AddEventHandler('th-antivdm:ban', function (params)
   DropPlayer(params, config.NotifykickedKiller)
end)

RegisterNetEvent("th-antivdm:notifykiller")
AddEventHandler("th-antivdm:notifykiller", function(params)
    TriggerClientEvent('th-antivdm:notifyclient', params)
end)