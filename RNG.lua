function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged.PreShot)
	end
end

function job_midcast(spell, magic_burst)
	if spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged)
		if (buffactive.barrage) then
			equip(sets.JA.Barrage)
		end
	end
end

function job_aftercast(spell)
	check_ammo()
end

function job_status_change(new, old)

end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
