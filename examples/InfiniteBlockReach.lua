while true do
    wait(0.05)

    -- If the local player exists
    if LocalPlayer.exists() then
        -- Set the block reach to 256
        GameMode.setBlockReach(256)

        -- Exit the loop
        break
    end
end
