function FastStop()
    -- Check if the player is pressing any of the WASD keys
    local w = KeyHeld(87)
    local a = KeyHeld(65)
    local s = KeyHeld(83)
    local d = KeyHeld(68)

    -- If none of the WASD keys are being pressed
    if not w and not a and not s and not d then
        -- Get the player's current velocity
        local a, b, c = LocalPlayer.getVelocity()

        -- Set the player's velocity to 0 in the x and z directions
        LocalPlayer.setVelocity(0, b, 0)
    end
end

while true do
    wait(0.05)

    -- If the local player exists
    if LocalPlayer.exists() then
        FastStop() -- Perform the fast stop
    end
end
