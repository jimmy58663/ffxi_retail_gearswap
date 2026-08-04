function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)

end

function job_midcast(spell, magic_burst)

end

function job_aftercast(spell)
	if Abyssea_Weapon then
		equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
	end
end

function job_status_change(new, old)
	if Abyssea_Weapon then
		equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
	end
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

	if parts[1] == "abyssea" then
		Abyssea_Weapon = not Abyssea_Weapon
		windower.add_to_chat("Abyssea Weapon is now: " .. (Abyssea_Weapon and "ON" or "OFF"))
	elseif parts[1] == "abysseaweapon" then
		if type(parts[2]) == "string" then
			for index, name in pairs(Abyssea_Weapon_map) do
				if name:lower() == parts[2] then
					Abyssea_Weapon_mode = index
				end
			end
		else
			Abyssea_Weapon_mode = Common_Funcs.Cycle_Index(Abyssea_Weapon_mode, #Abyssea_Weapon_map)
		end
	end

	if (Abyssea_Weapon) then
		equip(sets.Weapon.Abyssea[Abyssea_Weapon_map[Abyssea_Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Abyssea_Weapon_map[Abyssea_Weapon_mode])
	else
		equip(sets.Weapon[Weapon_map[Weapon_mode]])
		windower.add_to_chat("Weapon mode is now: " .. Weapon_map[Weapon_mode])
	end
end
