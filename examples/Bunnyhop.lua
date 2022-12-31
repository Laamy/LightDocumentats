function Bunnyhop()
    -- Get the player's current yaw
    local _, plrYaw = LocalPlayer.getRotation()

    -- Check if the player is pressing any of the WASD keys
    local w = KeyHeld(87)
    local a = KeyHeld(65)
    local s = KeyHeld(83)
    local d = KeyHeld(68)

    -- Adjust the yaw based on the keys being pressed
    if w then
        if not a and not d then
            plrYaw = plrYaw + 90
        elseif a then
            plrYaw = plrYaw + 45
        elseif d then
            plrYaw = plrYaw + 135
        end
    elseif s then
        if not a and not d then
            plrYaw = plrYaw - 90
        elseif a then
            plrYaw = plrYaw - 45
        elseif d then
            plrYaw = plrYaw - 135
        end
    elseif not w and not s then
        if not a and d then
            plrYaw = plrYaw + 180
        end
    end

    -- If any of the WASD keys are being pressed
    if w or a or s or d then
        -- Calculate the yaw in radians
        local calYaw = plrYaw * (3.1415927 / 180)

        -- Set the speed and jump height
        local speed = 0.7
        local height = 0.3

        -- Get the player's current velocity
        local a, b, c = LocalPlayer.getVelocity()

        -- If the player is on the ground and was previously on the ground
        if LocalPlayer.getOnGround2() and LocalPlayer.getPrevOnGround() then
            -- Set the vertical velocity to the jump height
            b = height
        end

        -- Set the player's velocity based on the calculated yaw and speed
        LocalPlayer.setVelocity(
            math.cos(calYaw) * speed,
            b,
            math.sin(calYaw) * speed
        )
    end
end

while true do
    wait(0.05)

    -- If the local player exists and can use keys
    if LocalPlayer.exists() and Game.canUseKeys() then
        Bunnyhop() -- Perform the bunny hop
    end
end
