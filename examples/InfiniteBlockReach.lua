while true do
	wait(0.05)
	
	if LocalPlayer.exists() then -- in a world
		GameMode.setBlockReach(256) -- blockreach
    break
	end
end
