function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.JA.CorsairRoll)
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
		if Luzaf then
			equip(sets.JA.Luzaf)
		end
	elseif spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged.PreShot)
		if player.equipment.ammo == "Animikii Bullet" then
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
			cancel_spell()
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.type == "CorsairRoll" or spell.english == "Double-Up" then
		equip(sets.JA.CorsairRoll)
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
		if Luzaf then
			equip(sets.JA.Luzaf)
		end
	elseif spell.action_type == "Ranged Attack" then
		equip(sets.TP.Ranged)
		if buffactive["Triple Shot"] then
			equip(sets.TP.Ranged.TripleShot)
		end
	end
end

function job_aftercast(spell)
	check_cards()
	check_ammo()
end

function job_status_change(new, old)

end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

	if parts[1] == "luzaf" then
		Luzaf = not Luzaf
		windower.add_to_chat("Luzaf mode is now: " .. (Luzaf and "ON" or "OFF"))
	end
end
