function init_gear_sets()
	sets.JA.Samba = {
		head = "Maxixi Tiara +2",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
	}
	sets.JA.Jig = {legs = "Horos Tights +1", feet = "Maxixi Toe Shoes +2"}
	sets.JA.Step = {head = "Maxixi Tiara +2", hands = "Maxixi Bangles +2"}
	sets.JA.Waltz = {head = "Horos Tiara +1", body = "Maxixi Casaque +2", feet = "Maxixi Toe Shoes +2"}
	sets.JA["Saber Dance"] = {legs = "Horos Tights +1"}
	sets.JA["Fan Dance"] = {hands = "Horos Bangles +1"}
	sets.JA["No Foot Rise"] = {body = "Horos Casaque +1"}
	sets.JA["Violent Flourish"] = {body = "Horos Casaque +1"}
	sets.JA.Trance = {head = "Horos Tiara +1"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "TPDagger", [2] = "Tauret"}
	Weapon_mode = 1

	sets.Weapon.TPDagger = {main = "Gleti's Knife", sub = "Centovente"}
	sets.Weapon.Tauret = {main = "Tauret", sub = "Gleti's Knife"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Etoile Gorget +1",
		left_ear = "Brutal Earring",
		right_ear = "Sherida Earring",
		body = "Malignance Tabard",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Malignance Boots",
	}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", head = "Wh. Rarab Cap +1"}

	sets.WS = {
		ammo = "Coiste Bodhar",
		head = "Nyame Helm", -- head="Maculele Tiara +3",
		neck = "Etoile Gorget +1",
		left_ear = "Moonshade Earring",
		right_ear = "Sherida Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets", -- hands="Maxixi Bangles +4",
		left_ring = "Cornelia's Ring",
		right_ring = "Epona's Ring",
		back = {name = "Senuna's Mantle", augments = {"DEX+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard", -- legs="Maculele Tights +3"
		feet = "Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {
		head = "Gleti's Mask", -- head="Blistering Sallet +1",
		left_ear = "Odr Earring",
		body = "Gleti's Cuirass",
		hands = "Gleti's Gauntlets",
		right_ring = "Mummu Ring",
		back = {name = "Senuna's Mantle", augments = {"DEX+20", "Accuracy+20 Attack+20", "Crit.hit rate+10"}},
		legs = "Gleti's Breeches",
		feet = "Gleti's Boots",
	}

	sets.WS["Rudra's Storm"] = {right_ring = "Ilabrat Ring"}

	sets.Idle = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Meg. Gloves +2",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Malignance Boots",
	}

	sets.DT = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Meg. Gloves +2",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Senuna's Mantle",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "\"Dbl.Atk.\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Malignance Boots",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if new == "NIN" then
		send_command("input /macro book 19;wait .1;input /macro set 1")
	elseif new == "SAM" then
		send_command("input /macro book 19;wait .1;input /macro set 2")
	elseif new == "DRG" then
		send_command("input /macro book 19;wait .1;input /macro set 3")
	elseif new == "WAR" then
		send_command("input /macro book 19;wait .1;input /macro set 4")
	else
		send_command("input /macro book 19;wait .1;input /macro set 1")
	end
	equip(sets.Weapon[Weapon_map[Weapon_mode]])
	send_command("@wait 5;input /lockstyleset 5")
end
