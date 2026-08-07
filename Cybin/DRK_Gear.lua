function init_gear_sets()
	sets.JA.Souleater = {head = "Ig. Burgeonet +2"}
	sets.JA["Weapon Bash"] = {hands = "Ig. Gauntelets +2"}
	sets.JA["Arcane Circle"] = {feet = "Ig. Sollerets +2"}
	sets.JA["Last Resort"] = {
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		feet = "Fall. Sollerets +2",
	}
	sets.JA["Diabolic Eye"] = {hands = "Fall. Fin. Gaunt. +2"}
	sets.JA["Dark Seal"] = {head = "Fall. Burgeonet +2"}
	sets.JA["Blood Weapon"] = {body = "Fall. Cuirass +2"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Apocalypse", [2] = "Nandaka", [3] = "Naegling", [4] = "Loxotic"}
	Weapon_mode = 1

	sets.Weapon.Apocalypse = {main = "Apocalypse", sub = "Utu Grip"}
	sets.Weapon.Nandaka = {main = "Kaja Claymore", sub = "Utu Grip"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Blurred Shield +1"}
	sets.Weapon.Loxotic = {main = "Loxotic Mace +1", sub = "Blurred Shield +1"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "Abyssal Beads +1",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.Midcast.Absorb = {
		head = "Ig. Burgeonet +2",
		neck = "Erra Pendant",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
	}

	sets.WS = {
		ammo = "Knobkierrie",
		head = "Ratri Sallet",
		neck = "Abyssal Beads +1",
		left_ear = "Moonshade Earring",
		right_ear = "Heath. Earring +1",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring = "Ephramad's Ring",
		right_ring = "Sroda Ring",
		back = {name = "Ankou's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard",
		feet = "Sulev. Leggings +2",
	}

	sets.WS["Torcleaver"] = {
		back = {name = "Ankou's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
	}

	sets.WS["Herculean Slash"] = {
		left_ear = "Friomisi Earring",
		right_ear = "Hecate's Earring",
		back = {name = "Ankou's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
	}

	sets.WS["Resolution"] = {
		left_ear = "Brutal Earring",
		right_ear = "Schere Earring",
		body = "Sakpata's Plate",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "STR+20"}},
		feet = "Flam. Gambieras +2",
	}

	sets.WS["Entropy"] = {
		left_ear = "Brutal Earring",
		right_ear = "Schere Earring",
		body = "Sakpata's Plate",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "STR+20"}},
		feet = "Flam. Gambieras +2",
	}

	sets.WS["Guillotine"] = {
		left_ear = "Brutal Earring",
		right_ear = "Schere Earring",
		body = "Sakpata's Plate",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "STR+20"}},
		feet = "Flam. Gambieras +2",
	}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Sakpata's Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sets.DT = {
		head = "Sakpata's Helm",
		neck = "Elite Royal Collar",
		left_ear = "Brutal Earring",
		right_ear = "Heath. Earring +1",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonlight Ring",
		back = {name = "Ankou's Mantle", augments = {"Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "DEX+20"}},
		waist = "Ioskeha Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's Leggings",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 8;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 8;wait .1;input /macro set 2")
	elseif new == "THF" then
		send_command("input /macro book 8;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 8;wait .1;input /macro set 4")
	else
		send_command("input /macro book 8;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 4")
end
