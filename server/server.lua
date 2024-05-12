RegisterServerEvent('playerDied')
AddEventHandler('playerDied', function()
    local _source = source
    
    local identifier = GetPlayerIdentifier(_source)

    MySQL.Async.fetchAll('SELECT * FROM user WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        if result[1] then
            local user = result[1]

            TriggerClientEvent('restorePlayerData', _source, user)
        else
            print("Aucune donnée trouvée pour cet utilisateur.")
        end
    end)
end)
