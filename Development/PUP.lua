function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.type == "JobAbility" then
		if string.find(spell.english, "Maneuver") then
			equip(sets.JA.Maneuver)
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.type == "JobAbility" then
		if string.find(spell.english, "Maneuver") then
			equip(sets.JA.Maneuver)
		end
	end
end

function job_aftercast(spell)
	update_idle_set()
end

function job_status_change(new, old)
	update_idle_set()
end

function job_buff_change(name, gain, buff_details)
	if AutoManeuver and string.find(name, "maneuver") and not gain then
		send_command(name)
	end
end

function job_self_command(command)
	local parts = string.split(command, " ")
	if parts[1] == "automaneuver" then
		AutoManeuver = not AutoManeuver
		windower.add_to_chat("Auto Maneuvers are now: " .. (AutoManeuver and "ON" or "OFF"))
	elseif parts[1] == "petws" then
		AutoPetWS = not AutoPetWS
		windower.add_to_chat("Auto Pet WS detection is now: " .. (AutoPetWS and "ON" or "OFF"))
	elseif parts[1] == "pet" then
		if type(parts[2]) == "string" then
			for index, name in pairs(PetRole_map) do
				if name:lower() == parts[2] then
					PetRole = index
				end
			end
		else
			PetRole = Common_Funcs.Cycle_Index(PetRole, #PetRole_map)
		end

		update_idle_set()
		windower.add_to_chat("Pet Role is now: " .. PetRole_map[PetRole])
	end
end

function update_idle_set()
	if player.status == "Idle" then
		if pet.isvalid and pet.status == "Engaged" then
			equip(sets.Idle.Pet[PetRole_map[PetRole]])
			if buffactive["Overdrive"] then
				equip(sets.Overdrive[PetRole_map[PetRole]])
			end
		else
			equip(sets.Idle)
		end
	end
end

function pet_change(pet, gain)
	update_idle_set()
end

function pet_midcast(spell)

end

function pet_aftercast(spell)
	if AutoPetWS and pet.isvalid and pet.tp >= 900 then
		if T {2, 3}:contains(PetRole) then
			equip(sets.WS.PetDA)
		elseif T {1, 4}:contains(PetRole) then
			equip(sets.WS.PetTP)
		end
	else
		update_idle_set()
	end
end
