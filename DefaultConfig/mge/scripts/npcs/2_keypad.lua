--npc button--
if npc2:isenabled() == true and npc2:distanceTo(player) < 3 and player:iscarrying(npc25) then
	npc4:open()
	local x,y,z = npc4:getposition()
	luautils:playsound("dooropen.wav", x, y, z, false, 1)
	npc2:setenabled(false)
	player:log("Keycard accepted!")
end