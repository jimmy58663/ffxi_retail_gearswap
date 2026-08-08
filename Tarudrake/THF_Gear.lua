function init_gear_sets()
	sets.JA.Flee = {feet = "Pill. Poulaines +3"}
	sets.JA.Steal = {
		head = "Plun. Bonnet",
		hands = "Pill. Armlets +3",
		legs = "Pill. Culottes +3",
		feet = "Pill. Poulaines +3",
	}
	sets.JA.Mug = {head = "Plun. Bonnet"}
	sets.JA.Hide = {body = "Pillager's Vest +3"}
	sets.JA["Perfect Dodge"] = {hands = "Plun. Armlets"}
	sets.JA.Feint = {legs = "Plun. Culottes"}
	sets.JA["Assassin's Charge"] = {feet = "Plun. Poulaines"}

	TP_map = {[1] = "Hybrid", [2] = "DT"}
	TP_mode = 1

	Weapon_map = {[1] = "Tauret", [2] = "Naegling"}
	Weapon_mode = 1

	sets.Weapon.Tauret = {main = "Tauret", sub = "Gleti's Knife"}
	sets.Weapon.Naegling = {main = "Naegling", sub = "Gleti's Knife"}

	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head = "Malignance Chapeau",
		neck = "Asn. Gorget +1",
		left_ear = "Sherida Earring",
		right_ear = "Skulk. Earring +1",
		body = "Malignance Tabard",
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring",
		right_ring = "Chirich Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Skulk. Poulaines +2",
	}

	sets.TP.HasteSamba = {left_ear = "Sherida Earring"}

	sets.TP.DT = sets.DT

	sets.TH = {ammo = "Per. Lucky Egg", feet = "Skulk. Poulaines +2"}

	sets.WS = {
		head = "Pill. Bonnet +3",
		neck = "Asn. Gorget +1",
		left_ear = "Moonshade Earring",
		right_ear = "Sherida Earring",
		body = "Nyame Mail", -- body="Skulker's Vest +3",
		hands = "Nyame Gauntlets",
		left_ring = "Cornelia's Ring",
		right_ring = "Epona's Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Nyame Flanchard", -- legs="Plun. Culottes +4",
		feet = "Nyame Sollerets",
	}

	sets.WS["Evisceration"] = {
		left_ear = "Odr Earring",
		hands = "Gleti's Gauntlets",
		right_ring = "Mummu Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
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
		hands = "Mummu Wrists +2",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Pill. Poulaines +3",
	}

	sets.DT = {
		head = "Malignance Chapeau",
		neck = "Elite Royal Collar",
		left_ear = "Etiolation Earring",
		right_ear = "Alabaster Earring",
		body = "Malignance Tabard",
		hands = "Nyame Gauntlets",
		left_ring = "Chirich Ring",
		right_ring = "Murky Ring",
		back = {
			name = "Toutatis's Cape",
			augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "\"Store TP\"+10", "Phys. dmg. taken-10%"},
		},
		waist = "Sailfi Belt +1",
		legs = "Mummu Kecks +2",
		feet = "Skulk. Poulaines +2",
	}

	sub_job_change(player.sub_job, "NON")
end

function sub_job_change(new, old)
	if player.sub_job == "WAR" then
		send_command("input /macro book 6;wait .1;input /macro set 1")
	elseif player.sub_job == "NIN" then
		send_command("input /macro book 6;wait .1;input /macro set 2")
	elseif player.sub_job == "DNC" then
		send_command("input /macro book 6;wait .1;input /macro set 3")
	elseif player.sub_job == "DRG" then
		send_command("input /macro book 6;wait .1;input /macro set 4")
	else
		send_command("input /macro book 6;wait .1;input /macro set 1")
	end
	send_command("@wait 5;input /lockstyleset 4")
end
