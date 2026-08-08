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
	if player.status == "Engaged" then
		if buffactive["Haste Samba"] then
			equip(sets.TP.HasteSamba)
		end
	end
end

function job_status_change(new, old)
	if new == "Engaged" then
		if buffactive["Haste Samba"] then
			equip(sets.TP.HasteSamba)
		end
	end
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
