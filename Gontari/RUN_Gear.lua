function init_gear_sets()
	sets.JA.Valiance = {body = "Runeist Coat +3"}
	sets.JA.Vallation = {body = "Runeist Coat +3"}
	sets.JA.Gambit = {hands = "Runeist Mitons +3"}
	sets.JA.Pflug = {feet = "Runeist Bottes +3"}
	sets.JA.Battuta = {head = "Futhark Bandeau"}
	sets.JA.Liement = {body = "Futhark Coat"}
	sets.JA["Elemental Sforzo"] = {body = "Futhark Coat"}
	sets.JA.Swordplay = {hands = "Futhark Mitons"}
	sets.JA.Rayke = {feet = "Futhark Boots"}
	sets.JA["Vivacious Pulse"] = {head = "Erilaz Galea"}

	TP_map = {[1] = "Tank", [2] = "DPS", [3] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Nandaka", [2] = "Aettir", [3] = "Naegling"}
	Weapon_mode = 1

	sets.Weapon.Nandaka = {main = "Kaja Claymore", sub = "Utu Grip"}
	sets.Weapon.Aettir = {main = "Aettir", sub = "Utu Grip"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Blurred Shield +1"}

	sets.TP.Tank = {
		ammo = "Staunch Tathlum +1",
		head = "Nyame Helm",
		neck = "Futhark Torque +1",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Runeist Coat +3",
		hands = "Turms Mittens +1",
		left_ring = "Gurebu's Ring",
		right_ring = "Murky Ring",
		back = {name = "Ogma's Cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"}},
		waist = "Ioskeha Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.DPS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm",
		neck = "Futhark Torque +1",
		left_ear = "Etiolation Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {
			name = "Ogma's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Ioskeha Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.TP.Battuta = {}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Knobkierrie",
		head = "Nyame Helm",
		neck = "Futhark Torque +1",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Petrov Ring",
		right_ring = "Rajas Ring",
		back = {name = "Ogma's Cape", augments = {"STR+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.WS["Resolution"] = {
		back = {name = "Ogma's Cape", augments = {"STR+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10"}},
	}

	sets.WS["Dimidiation"] = {
		-- legs="Boii Cuisses +1",
	}

	sets.Precast.FC = {
		head = "Rune. Bandeau +3", -- 14%
		legs = "Futhark Trousers", -- 10%
	}

	sets.Midcast.Regen = {head = "Rune. Bandeau +3", hands = "Runeist Mitons +3", legs = "Futhark Trousers"}

	sets.Midcast.Enhancing = {head = "Erilaz Galea", hands = "Runeist Mitons +3", legs = "Futhark Trousers"}

	sets.Midcast.Phalanx = {head = "Futhark Bandeau", hands = "Runeist Mitons +3", legs = "Futhark Trousers"}

	sets.Midcast.Refresh = {head = "Erilaz Galea", hands = "Runeist Mitons +3", legs = "Futhark Trousers"}

	sets.Idle = {
		ammo = "Staunch Tathlum +1",
		head = "Nyame Helm",
		neck = "Futhark Torque +1",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Runeist Coat +3",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ogma's Cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"}},
		waist = "Ioskeha Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sets.DT = {
		ammo = "Staunch Tathlum +1",
		head = "Nyame Helm",
		neck = "Futhark Torque +1",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Gurebu's Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ogma's Cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Enmity+10", "Phys. dmg. taken-10%"}},
		waist = "Ioskeha Belt +1",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 22;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 22;wait .1;input /macro set 2")
	elseif new == "BLU" then
		send_command("input /macro book 22;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 22;wait .1;input /macro set 4")
	elseif new == "DRK" then
		send_command("input /macro book 22;wait .1;input /macro set 5")
	else
		send_command("input /macro book 22;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 3")
end
