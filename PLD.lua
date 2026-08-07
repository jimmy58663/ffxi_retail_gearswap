function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)
	-- Check if you are casting Flash
	if spell.english == "Flash" then
		-- Get information on Divine Emblem's current cooldown
		local abil_recasts = windower.ffxi.get_ability_recasts()
		-- Divine Emblem's ability ID is 80
		if abil_recasts[80] == 0 and not buffactive["Divine Emblem"] then
			-- Stop the current Flash cast from going through yet
			cancel_spell()
			-- Force your character to use Divine Emblem
			send_command("input /ja \"Divine Emblem\" <me>; wait 1.2; input /ma \"Flash\" " .. spell.target.raw)
			return
		end
	end
end

function job_precast(spell)
	if sets.Precast[spell.english] then
		equip(sets.Precast[spell.english])
	elseif sets.JA[spell.english] then
		equip(sets.Midcast.Enmity)
		equip(sets.JA[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Precast.Cure)
	end
end

function job_midcast(spell, magic_burst)
	if sets.JA[spell.english] then
		equip(sets.Midcast.Enmity)
		equip(sets.JA[spell.english])
	elseif spell.action_type == "Magic" then
		equip(sets.Midcast.SIRD)
		if sets.Midcast[spell.english] then
			equip(sets.Midcast[spell.english])
		elseif string.find(spell.english, "Cur") then
			equip(sets.Midcast.Cure)
		elseif spell.skill == "Enhancing Magic" then
			equip(sets.Midcast.Enhancing)
		elseif EnmitySpells:contains(spell.english) then
			equip(sets.Midcast.Enmity)
		end
	end
end

function job_aftercast(spell)
	equip(sets.Shield[Shield_map[Shield_mode]])
end

function job_status_change(new, old)
	if new == "Resting" then
		equip(sets.Shield.Aegis)
	else
		equip(sets.Shield[Shield_map[Shield_mode]])
	end
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

	if parts[1] == "shield" then
		if type(parts[2]) == "string" then
			for index, name in pairs(Shield_map) do
				if name:lower() == parts[2] then
					Shield_mode = index
				end
			end
		else
			Shield_mode = Common_Funcs.Cycle_Index(Shield_mode, #Shield_map)
		end
		equip(sets.Shield[Shield_map[Shield_mode]])
		windower.add_to_chat("Shield mode is now: " .. Shield_map[Shield_mode])
	end
end
