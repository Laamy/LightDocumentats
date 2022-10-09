function Bunnyhop()
	local w = KeyHeld(87) ; a = KeyHeld(65)
		; s = KeyHeld(83) ; d = KeyHeld(68)
	
	local _t, plrYaw = LocalPlayer.getRotation() -- yaw
	
	if w then
		if not a and not d then
			plrYaw = plrYaw + 90;
		elseif a then
			plrYaw = plrYaw + 45;
		elseif d then
			plrYaw = plrYaw + 135;
		end
	elseif s then
		if not a and not d then
			plrYaw = plrYaw - 90;
		elseif a then
			plrYaw = plrYaw - 45;
		elseif d then
			plrYaw = plrYaw - 135;
		end
	elseif not w and not s then
		if not a and d then
			plrYaw = plrYaw + 180;
		end
	end
	
	if w or a or s or d then
		local calYaw = plrYaw * (3.1415927 / 180);
		
		local speed = 0.7;
		local height = 0.3;
		
		local a,b,c = LocalPlayer.getVelocity()
		
		if LocalPlayer.getOnGround2() and LocalPlayer.getPrevOnGround() then
			b = height
		end

		LocalPlayer.setVelocity(
			math.cos(calYaw) * speed,
			b,
			math.sin(calYaw) * speed
		)
	end
end

while true do
	wait(0.05)
	
	if LocalPlayer.exists() then -- in a world
		if Game.canUseKeys() then
			Bunnyhop() -- bhop
		end
	end
end
