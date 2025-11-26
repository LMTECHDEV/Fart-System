local checkInterval = 30000 -- Check every 30 seconds (adjust as needed)
local proximityDistance = 5.0 -- Distance in meters to check for nearby players
local fartChance = 10 -- 10% chance to fart (1-100)

-- Function to get nearby players
function GetNearbyPlayers(radius)
    local players = {}
    local localPed = PlayerPedId()
    local localCoords = GetEntityCoords(localPed)
    
    for _, player in ipairs(GetActivePlayers()) do
        local targetPed = GetPlayerPed(player)
        if targetPed ~= localPed then
            local targetCoords = GetEntityCoords(targetPed)
            local distance = #(localCoords - targetCoords)
            
            if distance <= radius then
                table.insert(players, {
                    player = player,
                    ped = targetPed,
                    distance = distance
                })
            end
        end
    end
    
    return players
end

-- Function to play fart sound
function PlayFartSound()
    -- Pick a random fart sound (1-5, adjust based on how many sounds you add)
    local randomFart = math.random(1, 5)
    
    -- Send NUI message to play the random fart sound
    SendNUIMessage({
        type = "playSound",
        sound = "fart" .. randomFart
    })
    
    print("[Fart System] Playing fart sound #" .. randomFart)
end

-- Main check loop
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(checkInterval)
        
        -- Get nearby players
        local nearbyPlayers = GetNearbyPlayers(proximityDistance)
        
        -- If there are nearby players, roll the dice
        if #nearbyPlayers > 0 then
            local roll = math.random(1, 100)
            
            if roll <= fartChance then
                -- Player farted!
                PlayFartSound()
                
                -- Optional: Notify the player
                -- You can remove this if you want it to be subtle
                -- SetNotificationTextEntry("STRING")
                -- AddTextComponentString("~r~You farted!")
                -- DrawNotification(false, false)
                
                print("[Fart System] You farted! Nearby players: " .. #nearbyPlayers)
            end
        end
    end
end)

-- Optional: Command to test the fart sound
RegisterCommand("testfart", function()
    PlayFartSound()
    print("[Fart System] Testing fart sound")
end, false)
