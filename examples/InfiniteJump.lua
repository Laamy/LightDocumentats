while true do
    wait(0.05)

    -- If the local player exists and can use keys
    if LocalPlayer.exists() and Game.canUseKeys() then
        -- Set the player's on ground state to true
        LocalPlayer.setOnGround(true)
    end
end
