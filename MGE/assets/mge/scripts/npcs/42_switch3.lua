--npc 42 switch3 -- 
----start disabled--

if npc28:isenabled() == true and npc29:isenabled() == true npc30:isenabled() == true then
	npc42:setenabled(not npc42:isenabled())
	if npc42:isenabled() == true then
		luautils:togglelight(3, true)
		player:log("PowerSwitch 3 enabled")
	else
		luautils:togglelight(3, false)
		player:log("PowerSwitch 3 disabled")
	end
end

	
	