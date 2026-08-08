function init_gear_sets()
	-- sets.JA.Berserk = {body="Pumm. Lorica +2", back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','DEX+20'}}}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Shining", [2] = "Naegling"}
	Weapon_mode = 1

	sets.Weapon = {}
	sets.Weapon.Shining = {main = "Shining One", sub = "Utu Grip"}
	sets.Weapon.Naegling = {main = "Naegling"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Asperity Necklace",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Flamma Korazin +2",
		hands = "Flam. Manopolas +2",
		left_ring = "Niqmaddu Ring",
		right_ring = "Moonlight Ring",
		back = "Aptitude Mantle +1",
		waist = "Ioskeha Belt +1",
		legs = "Flamma Dirs +2",
		feet = "Flam. Gambieras +2",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Knobkierrie",
		head = "Nyame Helm",
		neck = "Asperity Necklace",
		left_ear = "Moonshade Earring",
		right_ear = "Thrud Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Rajas Ring",
		back = "Aptitude Mantle +1",
		waist = "Ioskeha Belt +1",
		legs = "Nyame Flanchard",
		feet = "Sulev. Leggings +2",
	}

	sets.WS["Savage Blade"] = {
		-- legs="Boii Cuisses +1",
	}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Sulevia's Mask +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Sulevia's Plate. +2",
		hands = "Sulev. Gauntlets +2",
		left_ring = "Niqmaddu Ring",
		right_ring = "Moonlight Ring",
		back = "Aptitude Mantle +1",
		waist = "Ioskeha Belt +1",
		legs = "Sulev. Cuisses +2",
		feet = "Sulev. Leggings +2",
	}

	sets.DT = {
		head = "Sulevia's Mask +2",
		neck = "Elite Royal Collar",
		left_ear = "Bladeborn Earring",
		right_ear = "Steelflash Earring",
		body = "Sulevia's Plate. +2",
		hands = "Sulev. Gauntlets +2",
		left_ring = "Niqmaddu Ring",
		right_ring = "Moonlight Ring",
		back = "Aptitude Mantle +1",
		waist = "Ioskeha Belt +1",
		legs = "Sulev. Cuisses +2",
		feet = "Sulev. Leggings +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 14;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 14;wait .1;input /macro set 2")
	elseif new == "THF" then
		send_command("input /macro book 14;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 14;wait .1;input /macro set 4")
	else
		send_command("input /macro book 14;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end
