function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if midaction() or pet_midaction() then
		return
	end

	if (spell.type == "BloodPactRage" or spell.type == "BloodPactWard") and
					not (buffactive["Astral Conduit"] or buffactive["Apogee"]) then
		equip(sets.precast.BP)
	elseif spell.type == "SummonerPact" then
		equip(sets.precast.Summoning)
	end
end

function job_midcast(spell, magic_burst)
	if pet_midaction() then
		return
	end

	if spell.action_type == "Magic" then
		if string.find(spell.english, "Cur") then
			equip(sets.Midcast.Cure)
		end
	end
end

function job_aftercast(spell)
	if pet_midaction() then
		return
	end

	if pet.isvalid then
		equip(sets.Avatar.PerpCost)
	end

	if FavorMode then
		equip(sets.Avatar.Favor)
	end
end

function job_status_change(new, old)
	if new == "Idle" then
		if pet.isvalid then
			equip(sets.Avatar.PerpCost)
		end
	end
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

	if parts[1] == "favormode" then
		FavorMode = not FavorMode
		windower.add_to_chat("Favor mode is now: " .. FavorMode and "ON" or "OFF")
	elseif parts[1] == "autobp" then
		AutoBP = not AutoBP
		windower.add_to_chat("AutoBP mode is now: " .. AutoBP and "ON" or "OFF")
	end
end

function pet_change(pet, gain)
	if gain then
		equip(sets.Avatar.PerpCost)
	else
		equip(sets.Idle)
	end
end

function pet_midcast(spell)
	if (spell.type == "BloodPactRage" or spell.type == "BloodPactWard") then
		if Common_Maps.BloodPacts.Physical:contains(spell.english) then
			equip(sets.Avatar.BP.Phys)
		elseif Common_Maps.BloodPacts.Hybrid:contains(spell.english) then
			equip(sets.Avatar.BP.Hybrid)
		elseif Common_Maps.BloodPacts.Magic:contains(spell.english) then
			equip(sets.Avatar.BP.Magic)
		elseif Common_Maps.BloodPacts.Buff:contains(spell.english) then
			equip(sets.Avatar.BP.Buff)
		else
			equip(sets.Avatar.Skill)
		end
	end
end

function pet_aftercast(spell)
	if (buffactive["Apogee"] or buffactive["Astral Conduit"]) and AutoBP then
		if (player.mp < 229) then
			send_command("input /ja \"Convert\" <me>")
		end
		send_command(("input /pet \"%s\" <t>"):format(spell.english))
	end
	aftercast(spell)
end
