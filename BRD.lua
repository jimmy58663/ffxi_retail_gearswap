function get_sets()
	include("Common/Logic.lua")

	include(player.name .. "/" .. player.main_job .. "_Gear.lua")
	init_gear_sets()
end

function job_pretarget(spell)

end

function job_precast(spell)
	if spell.action_type == "Magic" then
		if spell.type == "BardSong" then
			equip(sets.Precast.Songs)
			if string.find(spell.english, "Horde Lullaby") then
				equip(sets.Precast.Songs.Harp)
			elseif string.find(spell.english, "Herculean Etude") or string.find(spell.english, "Fowl Aubade") or
							string.find(spell.english, "Herb Pastoral") then
				equip(sets.Precast.Songs.Dummy)
			elseif string.find(spell.english, "Honor March") then
				equip(sets.Precast.Songs.Honor)
			elseif string.find(spell.english, "Aria") then
				equip(sets.Precast.Songs.Aria)
			elseif string.find(spell.english, "Ballad") then
				equip(sets.Precast.Songs.Ballad)
			end
		elseif string.find(spell.english, "Cur") then
			equip(sets.Precast.Cure)
		elseif spell.skill == "Enhancing Magic" then
			equip(sets.Precast.EnhancingMagic)
		end
	end
end

function job_midcast(spell, magic_burst)
	if spell.type == "BardSong" then
		equip(sets.Midcast.Songs)
		if string.find(spell.english, "Requiem") or string.find(spell.english, "Lullaby") or
						string.find(spell.english, "Elegy") or string.find(spell.english, "Threnody") or
						string.find(spell.english, "Nocturne") then
			equip(sets.Midcast.Songs.Debuff)
			equip(sets.Weapon[Weapon_map[Weapon_mode]])
		end
		if sets.Midcast.Songs[spell.english] then
			equip(sets.Midcast.Songs[spell.english])
		elseif string.find(spell.english, "Herculean Etude") or string.find(spell.english, "Fowl Aubade") or
						string.find(spell.english, "Herb Pastoral") then
			equip(sets.Midcast.Songs.Dummy)
		elseif string.find(spell.english, "Paeon") then
			equip(sets.Midcast.Songs.Paeon)
		elseif string.find(spell.english, "Lullaby") then
			equip(sets.Midcast.Songs.Lullaby)
		elseif string.find(spell.english, "Minuet") then
			equip(sets.Midcast.Songs.Minuet)
		elseif string.find(spell.english, "March") then
			equip(sets.Midcast.Songs.March)
		elseif string.find(spell.english, "Madrigal") then
			equip(sets.Midcast.Songs.Madrigal)
		elseif string.find(spell.english, "Scherzo") then
			equip(sets.Midcast.Songs.Scherzo)
		elseif string.find(spell.english, "Ballad") then
			equip(sets.Midcast.Songs.Ballad)
		elseif string.find(spell.english, "Carol") then
			equip(sets.Midcast.Songs.Carol)
		elseif string.find(spell.english, "Etude") then
			equip(sets.Midcast.Songs.Etude)
		end
	elseif sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
	elseif string.find(spell.english, "Cur") then
		equip(sets.Midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Debuff)
	end
end

function job_aftercast(spell)
	if player.status == "Engaged" then
		if (player.sub_job == "NIN" and buffactive["Haste Samba"]) then
			equip(sets.TP.HasteSamba)
		end
	end
end

function job_status_change(new, old)
	if new == "Engaged" then
		if (player.sub_job == "NIN" and buffactive["Haste Samba"]) then
			equip(sets.TP.HasteSamba)
		end
	end
end

function job_buff_change(name, gain, buff_details)

end

function job_self_command(command)
	local parts = string.split(command, " ")

end
