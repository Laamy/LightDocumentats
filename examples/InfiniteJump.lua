while true do
	wait(0.05)
	
	if LocalPlayer.exists() then -- in a world
		if Game.canUseKeys() then
			LocalPlayer.setOnGround(true) -- airjump
		end
	end
end
