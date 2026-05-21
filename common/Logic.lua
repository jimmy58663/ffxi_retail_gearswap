-- Reaction code for Phalanx
windower.register_event("action", function(act)
	local actor = windower.ffxi.get_mob_by_id(act.actor_id)
	local self = windower.ffxi.get_player()
	local category = act.category
	-- Category 8 is Casting Start: https://github.com/Windower/Lua/blob/dev/addons/libs/packets/fields.lua#L1800-L1813
	if category == 8 then
		local spellID = act.targets[1].actions[1].param
		local spell = res.spells[spellID]
		if spell and (spell.en == "Phalanx" or spell.en == "Phalanx II") then
			if Common_Funcs.Is_In_Party(act.targets[1].id) then
				if sets.Midcast.Phalanx then
					equip(sets.Midcast.Phalanx)
					disable("head", "body", "hands", "legs", "feet")
					coroutine.schedule(function()
						enable("head", "body", "hands", "legs", "feet")
						windower.send_command("gs c update")
					end, 3)
				end
			end
		end
	end
end)

-- function precast(spell)

-- function midcast(spell)

-- function aftercast(spell)

-- function self_command(command)

-- function status_change(new, old)

-- function buff_change(buff, gain)
