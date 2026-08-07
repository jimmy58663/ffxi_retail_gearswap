function init_gear_sets()
	Luzaf = true

	sets.JA.Fold = {hands = "Lanun Gants +1"}
	sets.JA["Snake Eye"] = {legs = "Lanun Trews +1"}
	sets.JA["Wild Card"] = {feet = "Lanun Bottes +2"}
	sets.JA["Random Deal"] = {body = "Lanun Frac +2"}
	sets.JA["Quick Draw"] = {
		ammo = "Animikii Bullet",
		head = "Nyame Helm", -- Ikenga's?
		neck = "Comm. Charm +1",
		left_ear = "Moonshade Earring",
		right_ear = "Friomisi Earring",
		body = "Lanun Frac +2",
		hands = "Nyame Gauntlets", -- hands="Carmine Fin. Ga. +1",
		-- left_ring="Fenrir Ring +1",
		right_ring = "Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Skymir Cord +1",
		legs = "Nyame Flanchard",
		feet = "Chass. Bottes +2", -- feet="Lanun Bottes +2", --More raw dmg, but no utility
	}

	sets.JA.CorsairRoll = {
		main = {name = "Rostam", augments = {"Path: C"}},
		range = "Compensator",
		head = "Lanun Tricorne +1",
		neck = "Regal Necklace",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Chasseur's Gants +2",
		right_ring = "Murky Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Plat. Mog. Belt",
		legs = "Chas. Culottes +2",
		feet = "Malignance Boots",
	}

	sets.JA["Caster's Roll"] = {legs = "Chas. Culottes +2"}
	sets.JA["Courser's Roll"] = {feet = "Chass. Bottes +2"}
	sets.JA["Blitzer's Roll"] = {head = "Chass. Tricorne +2"}
	sets.JA["Tactician's Roll"] = {body = "Chasseur's Frac +2"}
	sets.JA["Allies' Roll"] = {hands = "Chasseur's Gants +2"}
	sets.JA.Luzaf = {left_ring = "Luzaf's Ring"}

	TP_map = {[1] = "Hybrid", [2] = "Ranged"}
	TP_mode = 2

	Weapon_map = {[1] = "Earp", [2] = "Naegling", [3] = "Tauret", [4] = "NaeglingDW", [5] = "OnionDW"}
	Weapon_mode = 2

	sets.Weapon.Earp = {
		main = {name = "Lanun Knife", augments = {"Path: A"}},
		sub = "Nusku Shield",
		range = "Earp",
		ammo = "Eminent Bullet",
	}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Nusku Shield", range = "Ataktos", ammo = "Eminent Bullet"}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Nusku Shield", range = "Compensator", ammo = "Eminent Bullet"}
	sets.Weapon.NaeglingDW = {main = "Naegling", sub = "Gleti's Knife", range = "Ataktos", ammo = "Eminent Bullet"}
	sets.Weapon.OnionDW = {main = "Onion Sword III", sub = "Gleti's Knife", range = "Ataktos", ammo = "Eminent Bullet"}

	sets.TP.Hybrid = {
		head = "Malignance Chapeau",
		neck = "Iskur Gorget",
		left_ear = "Suppanomimi",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Malignance Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Petrov Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Malignance Boots",
	}

	sets.TP.Ranged = {
		head = "Ikenga's Hat",
		neck = "Iskur Gorget",
		left_ear = "Crep. Earring",
		right_ear = "Enervating Earring",
		body = "Ikenga's Vest", -- body="Nisroch Jerkin",
		hands = "Ikenga's Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Crepuscular Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "\"Store TP\"+10", "Mag. Evasion+15"},
		},
		waist = "Tellen Belt",
		legs = "Chas. Culottes +2",
		feet = "Ikenga's Clogs",
	}

	sets.TP.Ranged.PreShot = {
		head = "Ikenga's Hat", -- 6 --Chass. Tricorne +2 --(Rapid Shot +18)
		neck = "Comm. Charm +1", -- 3
		body = "Ikenga's Vest", -- 9
		hands = "Lanun Gants +1", -- 9
		right_ring = "Crepuscular Ring", -- 3
		back = {name = "Camulus's Mantle", augments = {"\"Snapshot\"+10"}},
		-- waist="Impulse Belt", --3
		legs = "Laksa. Trews +3", -- 15
		feet = "Meg. Jam. +2", -- 10
	}

	sets.TP.Ranged.TripleShot = {
		head = "Oshosi Mask",
		body = "Chasseur's Frac +2",
		back = {
			name = "Camulus's Mantle",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "\"Store TP\"+10", "Mag. Evasion+15"},
		},
		legs = "Oshosi Trousers",
		feet = "Oshosi Leggings",
	}

	sets.TH = {head = "Wh. Rarab Cap +1"}

	sets.WS = {
		head = "Nyame Helm", -- head="Lanun Tricorne +4",
		neck = "Iskur Gorget", -- neck="Fotia Gorget",
		left_ear = "Moonshade Earring",
		right_ear = "Brutal Earring", -- right_ear="Ishvara Earring",
		body = "Laksa Frac +3", -- body="Ikenga's Vest", --Augment tp +200
		hands = "Chasseur's Gants +2",
		left_ring = "Cornelia's Ring",
		right_ring = "Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1", -- waist="Fotia Belt",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets", -- feet="Lanun Bottes +2", --+3 and higher
	}

	sets.WS["Savage Blade"] = {
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		-- right_ear="Ishvara Earring",
		-- body="Nyame Mail", --R20+
		right_ring = "Regal Ring",
		back = {name = "Camulus's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		feet = "Nyame Sollerets",
	}

	sets.WS["Fast Blade II"] = {
		head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		right_ear = "Brutal Earring",
		-- body="Nyame Mail", --R20+
		hands = "Mummu Wrists +2",
		right_ring = "Regal Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		feet = "Nyame Sollerets",
	}

	sets.WS["Hot Shot"] = {
		head = "Nyame Helm",
		-- neck="Fotia Gorget",
		-- left_ear="Moonshade Earring",
		right_ear = "Friomisi Earring",
		-- body="Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Fotia Belt",
	}

	sets.WS["Leaden Salute"] = {
		head = "Pixie Haripin +1",
		neck = "Comm. Charm +1",
		-- left_ear="Moonshade Earring",
		right_ear = "Friomisi Earring",
		body = "Lanun Frac +2",
		hands = "Nyame Gauntlets",
		left_ring = "Archon Ring",
		right_ring = "Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Skymir Cord +1",
	}

	sets.WS["Wildfire"] = {
		head = "Nyame Helm",
		neck = "Comm. Charm +1",
		-- left_ear="Crematio Earring",
		right_ear = "Friomisi Earring",
		body = "Lanun Frac +2",
		hands = "Nyame Gauntlets",
		right_ring = "Dingir Ring",
		back = {name = "Camulus's Mantle", augments = {"AGI+20", "Mag. Acc+20 /Mag. Dmg.+20", "Weapon skill damage +10%"}},
		waist = "Eschan Stone", -- waist="Skymir Cord +1",
	}

	sets.WS["Evisceration"] = {
		head = "Mummu Bonnet +2",
		neck = "Elite Royal Collar",
		left_ear = "Alabaster Earring",
		right_ear = "Crep. Earring",
		body = "Meg. Cuirie +2",
		hands = "Chasseur's Gants +2",
		left_ring = "Mummu Ring",
		right_ring = "Regal Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +2",
	}

	sets.Idle = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Malignance Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Malignance Boots",
	}

	sets.DT = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Malignance Gloves",
		left_ring = "Mummu Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Camulus's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Chas. Culottes +2",
		feet = "Malignance Boots",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	Weapon_mode = 2
	if player.sub_job == "NIN" then
		send_command("input /macro book 17;wait .1;input /macro set 1")
		Weapon_mode = 4
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 17;wait .1;input /macro set 1")
		Weapon_mode = 4
	elseif player.sub_job == "WAR" then
		send_command("input /macro book 17;wait .1;input /macro set 2")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 17;wait .1;input /macro set 2")
	else
		send_command("input /macro book 17;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 1")
end

function check_cards()
	local cards = player.inventory["Trump Card"]
	local card_count = (cards and cards.count) or 0
	local case = player.inventory["Trump Card Case"]
	if card_count < 5 and case then
		add_to_chat(122, "Trump Card count low (" .. card_count .. "). Opening case...")
		send_command("input /item \"Trump Card Case\" <me>")
	end
end

function check_ammo()
	local ammo = player.inventory["Eminent Bullet"]
	local ammo_count = (ammo and ammo.count) or 0
	local pouch = player.inventory["Em. Bul. Pouch"]
	if ammo_count < 5 and pouch then
		add_to_chat(122, "Ammo count low (" .. ammo_count .. "). Opening pouch...")
		send_command("input /item \"Em. Bul. Pouch\" <me>")
	end
end
