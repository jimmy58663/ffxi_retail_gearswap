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
	if spell.action_type == "Magic" then
		if string.find(spell.english, "Utsusemi") then
			equip(sets.Midcast.Utsusemi)
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
