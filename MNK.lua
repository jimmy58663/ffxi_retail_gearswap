function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.type == "WeaponSkill" then
		if buffactive["Impetus"] then
			if sets.WS.Impetus[spell.english] then
				equip(sets.WS.Impetus[spell.english])
			end
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.type == "WeaponSkill" then
		if buffactive["Impetus"] then
			if sets.WS.Impetus[spell.english] then
				equip(sets.WS.Impetus[spell.english])
			end
		end
	end
end

function job_aftercast(spell)
	if buffactive["Footwork"] then
		equip(sets.TP.Footwork)
	end
end

function job_status_change(new, old)
	if buffactive["Footwork"] then
		equip(sets.TP.Footwork)
	end
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
