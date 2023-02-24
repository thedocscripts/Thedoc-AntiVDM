config = {}

config.framework = "ESX" -- These are the options: ESX / QBCORE / CUSTOM
config.kick = true   -- if true kick player else notify player
config.killernotify = "No vuelvas a atropellar a nadie" --Notify the killer if kick is disabled 
config.NotifykickedKiller = "Has sido kickeado por atropellar" -- The message shown to the killer when kicked
config.NotifyKilledPlayer = "Has sido atropellado por un calvo" -- The message shown to the player killed when killed
config.revive = true -- disable if you want the player to stay dead

--Add your custom notification if needed
function notify(msg, type, duration)
    if(config.framework == "ESX") then
        ESX.ShowNotification(msg, type, duration)
    elseif(config.framework == "QBCORE") then
        QBCore.Functions.Notify(msg, type, duration)
    elseif(config.framework == "CUSTOM") then
        --Add your custom notification
    end
end


--Modify if you know what you are doing
function RevivePlayer()
    if(config.revive) then
        if (config.framework == "ESX") then
            TriggerEvent('esx_ambulancejob:revive')
        elseif  (config.framework=="QBCORE")then
            TriggerEvent("hospital:client:Revive")
        elseif ( config.framework=="CUSTOM" ) then
            --Add your custom revive system
        end
    end
 
    notify(config.NotifyKilledPlayer, "info", 3000)
end


--Punish the player modify if needed
function PunishPlayer(id)
    if(config.kick) then
        TriggerServerEvent('th-antivdm:ban', GetPlayerServerId(id))
    else
        TriggerServerEvent("th-antivdm:notifykiller", GetPlayerServerId(id))
    end
end