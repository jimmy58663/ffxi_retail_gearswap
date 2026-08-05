function init_gear_sets()

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 1;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 1;wait .1;input /macro set 2")
	elseif new == "THF" then
		send_command("input /macro book 1;wait .1;input /macro set 3")
	elseif new == "DRG" then
		send_command("input /macro book 1;wait .1;input /macro set 4")
		Weapon_mode = 2
	else
		send_command("input /macro book 1;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 2")
end
