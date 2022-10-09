function FastStop()
	local w = KeyHeld(87) ; a = KeyHeld(65)
		; s = KeyHeld(83) ; d = KeyHeld(68)
	
	if not w and not a and not s and not d then
		local a,b,c = LocalPlayer.getVelocity()

		LocalPlayer.setVelocity(0, b, 0)
	end
end

while true do
	wait(0.05)
	
	if LocalPlayer.exists() then -- in a world
		FastStop() -- faststop
	end
end
