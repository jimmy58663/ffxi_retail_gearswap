function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.action_type == "Magic" then
		if spell.skill == "Elemental Magic" then
			equip(sets.Precast.ElementalMagic)
		elseif spell.skill == "Enhancing Magic" then
			equip(sets.Precast.EnhancingMagic)
		elseif spell.english == "Impact" then
			equip(sets.Precast.Impact)
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.action_type == "Magic" then
		if string.find(spell.english, "Cur") then
			equip(sets.Midcast.Cure)
		elseif spell.skill == "Enfeebling Magic" then
			equip(sets.Midcast.Debuff)
		elseif spell.skill == "Elemental Magic" then
			if Common_Maps.Nuke[spell.english] == "LowNuke" then
				equip(sets.Midcast.LowNuke)
			elseif Common_Maps.Nuke[spell.english] == "HighNuke" then
				equip(sets.Midcast.HighNuke)
				if spell.english == "Impact" then
					equip(sets.Midcast.Impact)
				end
			end
			if magic_burst then
				equip(sets.Midcast.MagicBurst)
			end
			Common_Funcs.Affinity_Check(spell.element)
		end
	end
end

function job_aftercast(spell)

end

function job_status_change(new, old)

end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
