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
	update_idle_set()
end

function job_status_change(new, old)
	update_idle_set()
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end

function update_idle_set()
	if player.status == "Idle" then
		if pet.isvalid and pet.status == "Engaged" then
			equip(sets.Idle.Pet)
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
	if pet.isvalid and pet.tp >= 900 then
		equip(sets.WS.Pet)
	else
		update_idle_set()
	end
end
